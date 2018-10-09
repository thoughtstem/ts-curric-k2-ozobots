#lang racket

;Provide all your quests from main.
(provide quests)

(require pict/code)
(require ts-curric-common)
(require 2htdp/image)

(require racket/runtime-path)
(define-runtime-path images "images")

(define (local-bitmap s)
  (bitmap/file (~a (path->string images) "/" s)))

(define ozobot-img
  (local-bitmap "ozobot.png"))

(define draw-a-circle-to-calibrate
  (local-bitmap "draw-a-circle-to-calibrate.png"))

(define space
  (square 10 'solid 'transparent))

(define (go-bot-go)
  (auto-layout
   (titled-image-panel "1. Get to Know Ozobot"
                       (beside
                        ozobot-img
                        space
                        (above/align "left"
                                     (text "Work TOGETHER to find:" 20 'black)
                                     space
                                     (bullets
                                      "How Ozobot SEES"
                                      "How Ozobot MOVES"
                                      "The BUTTON"
                                      "The LIGHT"))))

   (titled-image-panel "2. Calibrate"
                       (beside
                        (text "Use this sheet \nto CALIBRATE \n(get your bot \nready to see!)" 20 'black)
                        space
                        (frame
                         (scale .3
                                (local-bitmap "calibrate.png")))))


   (titled-image-panel "3. Try it!"
                       (above
                        space
                        (text "Try on THIS SHEET.  Then fill in the lines on THIS PLAY SHEET." 20 'black)
                        space
                        (beside
                         (frame (scale .3 (local-bitmap "light-show.png")))
                         space space space space
                         (frame (scale .3 (local-bitmap "make-the-connection.png"))))))


   (titled-image-panel "4. Draw your own!"
                       (beside
                        (above/align "left"
                                     draw-a-circle-to-calibrate
                                     space space space 
                                     (text "Draw your own colorful\nlines for Ozobot to\nfollow.\n\nUse this sheet for tips!" 20 'black))
                        
                        space space space space space
                        
                        (scale 0.6
                               (local-bitmap "drawing-lines.png"))))
   ))

(define (color-coding-speed-and-tricks)
  (auto-layout
   (titled-image-panel "1. Calibrate"
                       (beside
                        (text "Use this sheet \nto CALIBRATE \n(get your bot \nready to see!)" 20 'black)
                        space
                        (frame
                         (scale .3
                                (local-bitmap "calibrate.png")))))


   (titled-image-panel "2. Try it!"
                       (above
                        space
                        (text "Try on THIS SHEET.  Then fill in the lines on THIS PLAY SHEET." 20 'black)
                        space
                        (beside
                         (frame (scale .3 (local-bitmap "ozobot-color-codes.png")))
                         space space space space
                         (frame (scale .3 (local-bitmap "code-by-numbers.png"))))))


   (titled-image-panel "3. Draw your own!"
                       (above/align "left"
                                    (beside
                                     draw-a-circle-to-calibrate
                                     space space space 
                                     (text "Use these color codes in a brand new Ozobot Maze!" 20 'black))
                                    space space
                                    (local-bitmap "speed-cool-moves.png")))))


(define (get-ready-to-code title file-name )
  (titled-image-panel "1. Get Ready to Code"
                      (beside
                       (local-bitmap "get-ready-to-code-bookmark.png")

                       (above
                        (text title 20 'black)
                        (local-bitmap file-name)))
                      1000 300))

(define (computer-coding)
  (auto-layout
   (get-ready-to-code "Click Level 1:"
                      "click-level-1.png")


   (titled-image-panel "2. Code"
                       (local-bitmap "first-code.png"))


   (titled-image-panel "3. Download and Run!"
                       (above
                        (local-bitmap "download-and-run.png")
                        (text "Now add some 'Light Effect' blocks to your code!" 20 'black)))))




(define (continuing-with-ozoblockly)
  (auto-layout
   (get-ready-to-code "Click Level 1 OR 2:"
                      "click-level-1-or-2.png")

   (titled-image-panel "2. Code"
                       (local-bitmap "level-1-and-2-code.png"))


   (titled-image-panel "3. Download and Run!"
                       (above
                        (local-bitmap "download-and-run.png")
                        (text "Now customize your code! Add different movements or light effects!" 20 'black)))
   ))


(define (i-challenge-you)
  (auto-layout
   (get-ready-to-code "Click Level 1, 2, and 3:"
                      "click-level-1-2-and-3.png")
   
   (titled-image-panel "2. Pick One"
                       (beside/align "top"
                                     (above/align "left"
                                                  (text "Program your bot to:" 20 'black)
                                                  space
                                                  (bullets
                                                   "Turn your favorite color."
                                                   "Move forward 5 steps."
                                                   "Zig-zag or skate."
                                                   "Turn around."
                                                   "Zig-zag or skate again."
                                                   "End with a spin!"))
                                     space space space space
                                     (above/align "left"
                                                  (text "Program your bot to do this forever:" 20 'black)
                                                  space
                                                  (bullets
                                                   "Turn your favorite color."
                                                   "Move forward 5 steps at medium speed."
                                                   "Move backwards 10 steps at fast speed."
                                                   "Spin 5 times."
                                                   "Turn to the left."
                                                   "End with a zig-zag!"))))

   (titled-image-panel "3. Download and Run!"
                       (above
                        (local-bitmap "download-and-run-with-hints.png")
                        (text "Now try the other challenge!" 30 'black)))))


(define (challenges-2)
  (auto-layout
   (get-ready-to-code "Click Level 1, 2, and 3:"
                      "click-level-1-2-and-3.png")
   
   (titled-image-panel "2. I Challenge You!"
                       (scale 1.3
                              (beside/align "top"
                                            (above/align "left"
                                                         (text "Dizzy Bot" 25 'black)
                                                         space
                                                         (text "Code Ozo to\ngo in a circle\nforever!" 20 'black))
                                            space space space space
                                            (above/align "left"
                                                         (text "Bot on Patrol" 25 'black)
                                                         space
                                                         (text "Code Ozo to go back and\nforth 3+ times. Ozo should\nturn 1 color when going\nforward, and a different color\nwhen going back!" 20 'black))
                                            space space space space
                                            (above/align "left"
                                                         (text "Walk Around the Block" 25 'black)
                                                         space
                                                         (text "Code Ozo to go in a square.\nOnce Ozo completes the\nsquare, Ozo should celebrate\nwith colors or a special move!" 20 'black)))))


   (titled-image-panel "3. Download and Run!"
                       (above
                        (local-bitmap "download-and-run-with-hints.png")
                        (text "Now, customize this code OR try the next challenge!" 30 'black)))))



(define (ozobot-celebration)
  (auto-layout
   (get-ready-to-code "Click Level 1, 2, and 3:"
                      "click-level-1-2-and-3.png")

(titled-image-panel "2. I Challenge You!"
                       (scale 1.3
                              (beside/align "top"
                                            (above/align "left"
                                                         (text "Silly Walk" 25 'black)
                                                         space
                                                         (text "Code Ozo to go\nin a zig-zag or a\nskate forever." 20 'black))
                                            space space space space
                                            (above/align "left"
                                                         (text "Walk Around the Block" 25 'black)
                                                         space
                                                         (text "Code Ozo to go in a square.\nOnce Ozo completes the\nsquare, Ozo should celebrate\nwith colors or a special move!" 20 'black))
                                            space space space space
                                            (above/align "left"
                                                         (text "Ozo Olympics" 25 'black)
                                                         space
                                                         (text "Code Ozo to do an ice skating\nroutine for a maximum of 8\nblocks. BEFORE you load it,\ntell your teacher what the\nroutine will look like!" 20 'black)))))


   (titled-image-panel "3. Download and Run!"
                       (above
                        (local-bitmap "download-and-run-with-hints.png")
                        space
                        (text "Now, try the next challenge OR" 25 'black)
                        (text "Ask your teacher for markers and paper to draw a color-code adventure for Ozo" 25 'black)))))



(define (quest1)
  (list
   (local-bitmap "calibrate.png")
   (local-bitmap "light-show.png")
   (local-bitmap "make-the-connection.png")
   (local-bitmap "drawing-lines.png")
   (go-bot-go)))

(define (quest2)
  (list
   (local-bitmap "calibrate.png")
   (local-bitmap "ozobot-color-codes.png")
   (local-bitmap "code-by-numbers.png")
   (color-coding-speed-and-tricks)))

(define (quest3)
  (list
   (local-bitmap "wrong-way.png")
   (local-bitmap "color-to-control.png")
   (local-bitmap "name-game.png")
   (local-bitmap "jump-monster.png")
   (local-bitmap "stepdown-loop.png")
   (local-bitmap "speed-cool-moves.png")
   ))

(define (quest4)
  (list
   (computer-coding)))

(define (quest5)
  (list
   (continuing-with-ozoblockly)))

(define (quest6)
  (list
   (i-challenge-you)))

(define (quest7)
  (list
   (challenges-2)))

(define (quest8)
  (list
   (ozobot-celebration)))

(define (quests)
  (list (quest1)
        (quest2)
        (quest3)
        (quest4)
        (quest5)
        (quest6)
        (quest7)
        (quest8)))
