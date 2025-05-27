Config = {}

Config.Framework = "esx" -- esx or qb. oxcore coming soon.

Config.Messages = true -- Set to true to send a message to the player after using a drug.

-- Duration = How long it takes to use said drug, every 1000 = 1 second.
-- Dict = https://forge.plebmasters.de/animations or https://wiki.rage.mp/index.php?title=Scenarios 1 List = Animations, 2 = Scenarios
-- Models = https://forge.plebmasters.de/objects
-- Pos and Rot your on your own, that is posistion for the animations and props, have fun!
-- Effect Names = https://docs.altv.mp/gta/articles/references/animpost-fx.html
-- Effect Last = The amount of time drugs last for, goes by minutes.
-- Healh and Armour, if you want drugs to give health and armour set it to your desired amount, if not turn it to 0
-- Message if you have Config.Messages = true, thats the message players get when using drugs

-- I would use props if I were you, heres some good choices...
-- Free Props: https://store.dccustomz.com/product/6379840
-- Paid Props: https://mpworx.tebex.io/package/5669668

Config.Drugs = {
    ['percocet'] = {
        duration = 6000,
        anim = {
            dict = 'mp_player_intdrink',
            clip = 'loop_bottle'
        },
        prop = {
            model = `prop_cs_pills`,
            pos = vec3(0.03, 0.03, 0.02),
            rot = vec3(0.0, 0.0, -1.5)
        },
        effect = {
            name = "DrugsMichaelAliensFight", 
            EffectLast = 3,
            health = 2,  
            armour = 3  
        },
        message = "As you take the medication, the world feels a little softer. The tension in your body subsides, replaced by a pleasant warmth. Remember to roleplay these effects." 
    },

    ['vicodin'] = {
        duration = 6000,
        anim = {
            dict = 'mp_player_intdrink',
            clip = 'loop_bottle'
        },
        prop = {
            model = `prop_cs_pills`,
            pos = vec3(0.03, 0.03, 0.02),
            rot = vec3(0.0, 0.0, -1.5)
        },
        effect = {
            name = "DrugsMichaelAliensFight", 
            EffectLast = 3,
            health = 2,  
            armour = 3  
        },
        message = "As you take the Vicodin, a gentle wave of relief washes over you. The tightness in your muscles loosens, and a calming warmth spreads through your limbs. Remember to roleplay these effects." 
    },

    ['adderall'] = {
        duration = 6000,
        anim = {
            dict = 'mp_player_intdrink',
            clip = 'loop_bottle'
        },
        prop = {
            model = `prop_cs_pills`,
            pos = vec3(0.03, 0.03, 0.02),
            rot = vec3(0.0, 0.0, -1.5)
        },
        effect = {
            name = "DrugsMichaelAliensFight", 
            EffectLast = 3,
            health = 2,  
            armour = 3  
        },
        message = "As you take the Adderall, a sharp clarity begins to settle in. Your thoughts become more focused, and energy surges through you, sharpening your senses. Remember to roleplay these effects." 
    },

    ['xanax'] = {
        duration = 6000,
        anim = {
            dict = 'mp_player_intdrink',
            clip = 'loop_bottle'
        },
        prop = {
            model = `prop_cs_pills`,
            pos = vec3(0.03, 0.03, 0.02),
            rot = vec3(0.0, 0.0, -1.5)
        },
        effect = {
            name = "DrugsMichaelAliensFight", 
            EffectLast = 3,
            health = 2,  
            armour = 3  
        },
        message = "As you take the Xanax, a deep sense of calm begins to spread through your body. The tension in your mind fades, and everything feels quieter, softer. Remember to roleplay these effects." 
    },

    ['marijuana'] = {
        duration = 6000,
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a',
            clip = 'idle_b'
        },
        prop = {
            model = `prop_cigar_02`,
            pos = vec3(0.03, 0.03, 0.02),
            rot = vec3(0.0, 0.0, -1.5)
        },
        effect = {
            name = "DrugsMichaelAliensFight", 
            EffectLast = 3,
            health = 2,  
            armour = 3  
        },
        message = "As you take the marijuana, a gentle wave of relaxation washes over you. The world slows down, colors become more vivid, and your thoughts drift with a sense of ease. Remember to roleplay these effects." 
    },

    ['cocaine'] = {
        duration = 6000,
        anim = {
            dict = 'move_p_m_two_idles@generic',
            clip = 'fidget_sniff_fingers'
        },
        prop = {
            model = `prop_cs_coke_line`,
            pos = vec3(0.03, 0.03, 0.02),
            rot = vec3(0.0, 0.0, -1.5)
        },
        effect = {
            name = "DrugsMichaelAliensFight", 
            EffectLast = 3,
            health = 2,  
            armour = 3  
        },
        message = "As you take the cocaine, a surge of energy pulses through you, sharpening your focus and heightening your senses. Your confidence spikes, and everything around you feels amplified. Remember to roleplay these effects." 
    },
}
