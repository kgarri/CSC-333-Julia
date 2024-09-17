function asynsleep()
    t = @task begin;println("Begining Sleep Procudure");sleep(5);println("done");end
    schedule(t)
end
function countdown()
    for i = 1:5
        println(i)
        sleep(1)
    end
end
function main()
    asynsleep()
    sleep(.1)
    countdown()
end
main()