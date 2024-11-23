open Dream_html
module H = HTML

module Utils = struct
  let to_class_str cl = String.concat " " cl
  let to_class_attr cs = [ H.class_ "%s" cs ]
end

let div class_list =
  let classes = Utils.to_class_str class_list |> Utils.to_class_attr in
  H.div classes
