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
    { name: 'Feathered Friends Hummingbird 20', dis: 'down sleeping bags', weight: 24, catagory_id: 1, pack_id: 1},
    { name: 'Tarptent Protrail', dis: 'single wall 1P tent, not free standing', weight: 26, catagory_id: 1, pack_id: 1},
    { name: 'z-lite', dis: 'foam sleeping pad cut down, six panels', weight: 6, catagory_id: 1, pack_id: 1},
    { name: 'garmin in-reach', dis: 'gps & emergeny communication', weight: 10, catagory_id: 2, pack_id: 1},
    { name: 'zipka head lamp', dis: 'petzl zip string head band', weight: 2, catagory_id: 2, pack_id: 1},
    { name: 'compass', dis: 'suunto-MC-2G sight compass with mirror', weight: 2, catagory_id: 2, pack_id: 1},
    { name: 'long sleeve nylon sun button up shirt', dis: 'keep the sun off your arms still be breathy', weight: 8, catagory_id: 3, pack_id: 1},
    { name: 'lPatagonia Baggy shorts 5"', dis: 'shorter shorts weigh less...', weight: 6, catagory_id: 3, pack_id: 1},


])