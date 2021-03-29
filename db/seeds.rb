Pack.create([
    { name: 'Mikes PNT pack'}
])

Catagory.create([
    { name: 'sleep & shelter', pack_id: 1}, 
    { name: 'navagation & electric', pack_id: 1},
    { name: 'clothing', pack_id: 1},
    { name: 'kitchen & water', pack_id: 1},
    { name: 'repair', pack_id: 1},
])

Item.create([
    { name: 'Feathered Friends Hummingbird 20', des: 'down sleeping bags', weight: 24, catagory_id: 1, pack_id: 1},
    { name: 'Tarptent Protrail', des: 'single wall 1P tent, not free standing', weight: 26, catagory_id: 1, pack_id: 1},
    { name: 'z-lite', des: 'foam sleeping pad cut down, six panels', weight: 6, catagory_id: 1, pack_id: 1},
    { name: 'garmin in-reach', des: 'gps & emergeny communication', weight: 10, catagory_id: 2, pack_id: 1},
    { name: 'zipka head lamp', des: 'petzl zip string head band', weight: 2, catagory_id: 2, pack_id: 1},
    { name: 'compass', des: 'suunto-MC-2G sight compass with mirror', weight: 2, catagory_id: 2, pack_id: 1},
    { name: 'long sleeve nylon sun button up shirt', des: 'keep the sun off your arms still be breathy', weight: 8, catagory_id: 3, pack_id: 1},
    { name: 'lPatagonia Baggy shorts 5"', des: 'shorter shorts weigh less...', weight: 6, catagory_id: 3, pack_id: 1},


])