# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mobilities = Mobility.create(descripcion: 'Sedan', maxAsiento: 4)
mobilities = Mobility.create(descripcion: 'Mini van', maxAsiento: 12)
mobilities = Mobility.create(descripcion: 'Van', maxAsiento: 14)
mobilities = Mobility.create(descripcion: 'Custer', maxAsiento: 33)
paymentmethods = Paymentmethod.create(descripcion: 'Efectivo')
paymentmethods = Paymentmethod.create(descripcion: 'Tarjeta Credito/Debito')
status = Statu.create(descripcion: 'Registrado')
status = Statu.create(descripcion: 'En Espera')
status = Statu.create(descripcion: 'En Proceso')
status = Statu.create(descripcion: 'Finalizado')
rates= Rate.create(origenRuta: 'Monterrico - Santiago de Surco',destinoRuta:  'Camacho - Santiago de Surco',precio: 15)
rates= Rate.create(origenRuta: 'Monterrico - Santiago de Surco',destinoRuta:  'Monterrico - Santiago de Surco',precio: 10)
rates= Rate.create(origenRuta: 'Camacho - Santiago de Surco',destinoRuta:  'Monterrico - Santiago de Surco',precio: 15)
rates= Rate.create(origenRuta: 'Camacho - Santiago de Surco',destinoRuta:  'Camacho - Santiago de Surco',precio: 10)
rates= Rate.create(origenRuta: 'Monterrico - Santiago de Surco',destinoRuta:  'Parq. Kenedy Miraflores',precio: 18)
rates= Rate.create(origenRuta: 'Parq. Kenedy Miraflores',destinoRuta:  'Monterrico - Santiago de Surco',precio: 18)
rates= Rate.create(origenRuta: 'Parq. Kenedy Miraflores',destinoRuta:  'Parq. Kenedy Miraflores',precio: 10)
rates= Rate.create(origenRuta: 'Parq. Kenedy Miraflores',destinoRuta:  'Monterrico - Santiago de Surco',precio: 20)
rates= Rate.create(origenRuta: 'Monterrico - Santiago de Surco',destinoRuta:  'Parq. Kenedy Miraflores',precio: 20)
rates= Rate.create(origenRuta: 'Ov. Higuereta - Santiago de Surco',destinoRuta:  'Monterrico - Santiago de Surco',precio: 18)
rates= Rate.create(origenRuta: 'Monterrico - Santiago de Surco',destinoRuta:  'Ov. Higuereta - Santiago de Surco',precio: 18)
rates= Rate.create(origenRuta: 'Ov. Higuereta - Santiago de Surco',destinoRuta:  'Ov. Higuereta - Santiago de Surco',precio: 10)



