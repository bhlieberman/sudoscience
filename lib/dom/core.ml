module B = Bastet
module C = Components
module D = Dream_html
module H = Dream_html.HTML
module P = Pages.Tales

module Pages = struct
  module Config = Footer.Config
  module Header = Header.Title

  let main_template = H.div [] [ Header.element; P.Post.text; Config.element ]
end

module Navbar = struct
  let column_names =
    [ "Home"; "Round and Unvarnished Tales"; "Refactory Methods" ]

  let hamburger =
    D.SVG.(
      svg
        [
          xmlns;
          fill "none";
          viewbox ~min_x:0 ~min_y:0 ~width:24 ~height:24;
          H.class_ "inline-block h-5 w-6 stroke-current";
        ]
        [
          path
            [
              stroke_linecap `round;
              stroke_linejoin `round;
              stroke_width "2";
              d "M4 6h16M4 12h16M4 18h16";
            ]
            [];
        ])

  let dropdown choice =
    let singleton = B.List.Monad.pure in
    (* TODO: lift this state up *)
    let expanded = ref false in
    if !expanded then singleton choice
    else singleton choice @ List.filter (( <> ) choice) column_names

  let make_li data = List.map (fun item -> H.li [] [ D.txt "%s" item ]) data

  let dropdown_list =
    let classes =
      C.Utils.to_class_str
        [
          "menu";
          "dropdown-content";
          "bg-base-100";
          "rounded-box";
          "z-[1]";
          "w-64";
          "p-2";
          "shadow";
        ]
      |> C.Utils.to_class_attr
    in
    H.ul classes

  let dropdown_parent links =
    H.details
      [ H.class_ "dropdown" ]
      [ H.summary [ H.class_ "btn m-1" ] [ hamburger ]; links ]

  let dropdown_el =
    let hmb = dropdown_parent @@ dropdown_list (make_li (dropdown "Home")) in
    C.div [ "navbar"; "bg-base-100" ] [ hmb ]

  let html =
    H.html
      [ D.string_attr "data-theme" "cyberpunk" ]
      [
        H.head []
          [ H.link [ H.rel "stylesheet"; H.href "static/css/output.css" ] ];
        H.body [] [ dropdown_el; Pages.main_template ];
      ]
end
