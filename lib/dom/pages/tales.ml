module D = Dream_html
module H = Dream_html.HTML

module Post = struct 
  let text = H.article [H.class_ "prose"] [
    H.h2 [] [D.txt "Testing 1 2 3"]
  ]
end
