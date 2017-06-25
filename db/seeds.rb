# db/seeds.rb

Department.create([{ name: 'Sales' },
                   { name: 'Human Resources' },
                   { name: 'Engineering' },
                   { name: 'Marketing' },
                   { name: 'Finance' },
                   { name: 'Administrative' },
                   { name: 'Production' }])

Product.create([{ name: 'Word' },
                { name: 'Excel' },
                { name: 'PowerPoint' },
                { name: 'Access' },
                { name: 'Outlook' },
                { name: 'Exchange' }])

Region.create([{ name: 'North' },
               { name: 'South' },
               { name: 'East' },
               { name: 'West' }])

Representative.create([{ company: 'Microsoft' },
                       { company: 'Oracle' },
                       { company: 'Apple' },
                       { company: 'Facebook' },
                       { company: 'Twitter' }])

User.create([{ name: 'John Doe', email: 'john.doe@microsoft.com', department: Department.find_by({ name: 'Marketing' }), representative: Representative.find_by({ company: 'Microsoft' }), password: 'foobar' },
             { name: 'Jane Doe', email: 'jane.doe@apple.com', department: Department.find_by({ name: 'Sales' }), representative: Representative.find_by({ company: 'Apple' }), password: 'foobar' },
             { name: 'Joe Bloggs', email: 'joe.bloggs@oracle.com', department: Department.find_by({ name: 'Engineering' }), representative: Representative.find_by({ company: 'Oracle' }), password: 'foobar' }])

ProposalStatus.create([{ name: 'Analysis' },
                       { name: 'Writing' },
                       { name: 'Declined', finish: true },
                       { name: 'Accepted', finish: true }])

Customer.create([{ name: 'Walmart', company: 'Wal-Mart Stores, Inc.', cnpj: '00.000.000/0000-00' },
                 { name: 'Toys "R" Us', company: 'Toys "R" Us, Inc.', cnpj: '11.111.111/1111-11' },
                 { name: 'Kmart', company: 'Kmart Corporation', cnpj: '22.222.222/2222-22' }])
