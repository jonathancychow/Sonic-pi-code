key = :bf3
use_synth :hollow
with_fx :reverb, mix: 0.9 do
  with_fx :echo, mix: 0.9 do
    live_loop :note1 do
      play  key, attack: 2, release: 2
      sleep 4
    end
    
    live_loop :note2 do
      play  key, attack: 6, release: 6
      sleep 8
    end
    
    live_loop :note3 do
      play  key, attack: 10, release: 10
      sleep 10
    end
    
  end
end