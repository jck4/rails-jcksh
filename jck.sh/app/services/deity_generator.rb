# app/services/deity_generator.rb

class DeityGenerator
    ALIGNMENTS = [
      "Lawful Good", "Neutral Good", "Chaotic Good",
      "Lawful Neutral", "True Neutral", "Chaotic Neutral",
      "Lawful Evil", "Neutral Evil", "Chaotic Evil"
    ]
  
    DOMAINS = [
      "War", "Life", "Nature", "Trickery", "Knowledge",
      "Tempest", "Light", "Death", "Forge", "Grave"
    ]
  
    SYMBOLS = [
      "A flaming sword", 
      "An open book", 
      "A phoenix feather",
      "A crescent moon", 
      "A serpent biting its tail"
    ]
  
    def self.generate
      deity_name = Faker::Games::DnD.name # e.g. "Callyna Irongrip"
      deity_alignment = Faker::Games::DnD.alignment # e.g. "Chaotic Evil"
      
      {
        name:      deity_name,
        alignment: deity_alignment,
        domain:    DOMAINS.sample,
        symbol:    SYMBOLS.sample,
        lore:      generate_lore(deity_name)
      }
    end
  
    private
  
    # Generate a short "lore" paragraph using the name to make it feel unique.
    def self.generate_lore(name)
      <<~LORE
        Legends say that #{name} once channeled cosmic energy 
        to empower their faithful. Those who pray to #{name} 
        often recite passages like: "#{Faker::Lorem.sentence}". 
        Rumor has it that their presence lingers where #{DOMAINS.sample.downcase} 
        has been deeply revered.
      LORE
    end
  end
  