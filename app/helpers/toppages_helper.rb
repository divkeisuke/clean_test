module ToppagesHelper
    
    def today_clean_test(thing,today)
        management_day(thing,today)
        if @elpsed_day == 0
          thing
        end
    end    
    
    def today_clean(thing,today)
        management_day(thing,today)
        if @remaining_day >= 0
        end
    end
    

    
    def hokori_parameters_red(thing,today)
        management_day(thing,today)
        if @elpsed_day <= @remaining_day / 3
        end
    end
    
    def hokori_parameters_yellow(thing,today)
        management_day(thing,today)
        if @elpsed_day >= @remaining_day / 3 && @elpsed_day <= @remaining_day * 2/3
        end
    end
    
    def hokori_parameters_blue(thing,today)
        management_day(thing,today)
        if @elpsed_day >= @remaining_day * 2/3
        end
    end

  private
    
    def management_day(thing,today)
        @elpsed_day = today - thing.clean_day
        @remaining_day = thing.clean_frequency - @elpsed_day
        @clean_scheduled_day = thing.clean_day + thing.clean_frequency
    end
end
