class Genre < ActiveHash::Base
  self.data = [
    {id: 1, name:'happy'}, {id: 2, name:'impression'}, {id: 3, name: 'cheer up'},
    {id: 4, name:'other'}
]
end
