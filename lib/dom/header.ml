module Title = struct
  module H = Dream_html.HTML
  module D = Dream_html

  let element =
    H.div [H.class_ "flex justify-center"] [H.h1 [] [D.txt "SudoScience <dot> LOL"]]
end