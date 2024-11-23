module H = Dream_html.HTML

module Config = struct
  let toggle_theme =
    H.div [H.class_ "flex justify-center"]
      [
        H.input
          [
            H.type_ "checkbox";
            H.value "valentine";
            H.class_ "toggle theme-controller";
          ];
      ]

  let element = H.div [ H.class_ "absolute bottom-0 left-0" ] [ toggle_theme ]
end
