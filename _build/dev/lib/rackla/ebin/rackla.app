{application,rackla,
             [{description,"Rackla is library for building API-gateways."},
              {modules,['Elixir.Inspect.Rackla','Elixir.Rackla',
                        'Elixir.Rackla.Proxy','Elixir.Rackla.Request',
                        'Elixir.Rackla.Response']},
              {registered,[]},
              {vsn,"1.2.1"},
              {applications,[kernel,stdlib,elixir,logger,plug,hackney,
                             poison]}]}.
