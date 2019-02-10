key = :bf4
key2 = :bf3
in_thread do
  use_synth :tri
  with_fx :reverb, mix: 1, amp: 0.2 do
    with_fx :echo, mix: 1, amp: 0.2 do
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
        sleep 12
      end
      
    end
  end
end

#potential syn pretty_bell, fm,sine, sub_pulse, tri
#potenetail fx slicer, rbpf
in_thread do
  use_synth :sine
  with_fx :reverb, mix: 1, amp: 0.2 do
    with_fx :echo, mix: 1, amp: 0.2 do
      live_loop :note1_prophet do
        play  key2, attack: 2, release: 2
        sleep 4
      end
      
      live_loop :note2_prophet do
        play  key2, attack: 6, release: 6
        sleep 8
      end
      
      live_loop :note3_prophet do
        play  key2, attack: 10, release: 10
        sleep 10
      end
      
    end
  end
end

use_synth :hollow
with_fx :reverb, mix: 0.7, amp: 0.7 do
  with_fx :echo, mix: 0.7, amp: 0.7 do
    live_loop :note1_hollow do
      play  key2, attack: 2, release: 2
      sleep 4
    end
    
    live_loop :note2_holow do
      play  key2, attack: 6, release: 6
      sleep 8
    end
    
    live_loop :note3_hollow do
      play  key2, attack: 10, release: 10
      sleep 10
    end
    
  end
end