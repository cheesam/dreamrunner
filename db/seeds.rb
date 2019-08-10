# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning dreams...'
Dream.destroy_all

puts 'Creating dreams...'
dreams_attributes = [
  {
    name: 'Life as a Rails Console',
    category: 'Indulgent Ego-Death',
    price:  '125',
    description: "The dreaded human condition... Don't get us started. Don't despair - there is a solution (albeit, rather temporary). Turn into a rails console just for one night and experience the thrill of losing yor humanity. Escapism at its finest" ,
    user_id: 2
  },
  {
  name: 'The Charge of the Light Brigade',
  category: 'Transcendental Death',
  price:  '345',
  description: '"The Balance of Powers has to be maintained", declares Queen Victoria. You are the man she is looking for. Lead a historic, yet completely unnecessary cavalry charge into a glorious death.',
  user_id: 1
  },
  {
    name: 'Psyche and the Winds of Zephyros',
    category: 'Erotic Reverie',
    price:  '250',
    description: "The life of a maiden was never meant for you. Luckily, Eros fell under the spell of his own arrow and now wishes to see you in his castle on the cloud. You'll be swept away by Zephyros, the Western Wind and be taken to a palace of sensual pleasure.",
    user_id: 2
  },
  {
    name: 'The Oedipus Complex',
    category: 'Freudian delight',
    price:  '170',
    description: 'Liberation can sometime take strangely disgusting forms.',
    user_id: 2
  },
  {
    name: 'Get adopted by Mick Jagger',
    category: 'Nostalgia',
    price:  '',
    description: 'And stop giving a shit about ordinary things',
    user_id: 1
  },
  {
    name: 'Quirky Ways of a Chinese Merchant of the 11th Century',
    category: 'Adventure',
    price:  '50',
    description: 'Lay the ideological foundations for the global banking system',
    user_id: 2
  },
  {
    name: 'Speaking in Tongues - the Holy Salvation',
    category: 'Religious Experience',
    price:  '500',
    description: 'Live through the ecstatic days of early Christian fanaticism',
    user_id: 1
  }
]
Dream.create!(dreams_attributes)
puts 'Finished dreams!'


puts 'Cleaning dreams...'
Review.destroy_all

puts 'Creating reviews...'
reviews_attributes = [
  {
    accuracy: '10',
    value: '10',
    design: '10',
    dream_id: '1'
    user_id: '1'
  },
  {
    accuracy: '10',
    value: '10',
    design: '10',
    dream_id: '1'
    user_id: '2'
  },
  {
    accuracy: '10',
    value: '10',
    design: '10',
    dream_id: '1'
    user_id: '3'
  },
  {
    accuracy: '9',
    value: '9',
    design: '9',
    dream_id: '2'
    user_id: '1'
  },
  {
    accuracy: '9',
    value: '9',
    design: '9',
    dream_id: '2'
    user_id: '2'
  },
  {
    accuracy: '9',
    value: '9',
    design: '9',
    dream_id: '2'
    user_id: '3'
  },
  {
    accuracy: '8',
    value: '8',
    design: '8',
    dream_id: '3'
    user_id: '1'
  },
  {
    accuracy: '8',
    value: '8',
    design: '8',
    dream_id: '3'
    user_id: '2'
  },
  {
    accuracy: '8',
    value: '8',
    design: '8',
    dream_id: '3'
    user_id: '3'
  },
  {
    accuracy: '7',
    value: '7',
    design: '7',
    dream_id: '4'
    user_id: '1'
  },
  {
    accuracy: '7',
    value: '7',
    design: '7',
    dream_id: '4'
    user_id: '2'
  },
  {
    accuracy: '7',
    value: '7',
    design: '7',
    dream_id: '4'
    user_id: '3'
  }
]

Review.create!(reviews_attributes)
puts 'Finished reviews!'
