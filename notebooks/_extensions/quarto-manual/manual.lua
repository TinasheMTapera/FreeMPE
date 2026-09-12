local titles = {
  ["manual-prereq"] = "Prerequisite",
  ["manual-procedure"] = "Procedure",
  ["manual-check"] = "Check",
  ["manual-explain"] = "Why this step exists",
}

local callouts = {
  ["manual-prereq"] = "callout-important",
  ["manual-procedure"] = "callout-tip",
  ["manual-check"] = "callout-warning",
  ["manual-explain"] = "callout-note",
}

local counts = nil

local function manual_page()
  local page = quarto.metadata.get("manual.page")
  return page ~= nil and pandoc.utils.stringify(page) ~= ""
end

function Div(el)
  for class, callout in pairs(callouts) do
    if el.classes:includes(class) then
      if counts ~= nil then
        counts[class] = counts[class] + 1
      end
      if not el.classes:includes("callout") then
        el.classes:insert("callout")
      end
      if not el.classes:includes(callout) then
        el.classes:insert(callout)
      end
      if el.attributes["title"] == nil then
        el.attributes["title"] = titles[class]
      end
      return el
    end
  end
  return el
end

function Pandoc(doc)
  counts = {
    ["manual-prereq"] = 0,
    ["manual-procedure"] = 0,
    ["manual-check"] = 0,
    ["manual-explain"] = 0,
  }
  doc = doc:walk({ Div = Div })
  if manual_page() then
    local input = quarto.doc.input_file or "this page"
    if counts["manual-prereq"] ~= 1 then
      quarto.log.warning(input .. " needs exactly one .manual-prereq block.")
    end
    if counts["manual-procedure"] < 1 then
      quarto.log.warning(input .. " needs at least one .manual-procedure block.")
    end
    if counts["manual-check"] ~= 1 then
      quarto.log.warning(input .. " needs exactly one .manual-check block.")
    end
  end
  counts = nil
  return doc
end
