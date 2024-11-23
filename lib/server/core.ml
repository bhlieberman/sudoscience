open Dream
open Dream_html

module Impl = struct
  let doc = to_string Dom.Core.Navbar.html

  let routes =
    router [ get "/" (fun _ -> html doc); get "/static/**" @@ static "assets/public" ]
end
