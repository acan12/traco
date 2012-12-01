Doorkeeper.configure do
  default_scopes :public
  optional_scopes :admin, :write
end