What’s the difference between “hello” and :hello ?
>> "hello" is a string and :hello is a symbol

------------------------------------------------------------------

How do you inherit from a class ?
>> we inherit from class using '<' (without quotes)

for example :-
    class Mammal  
        def breathe  
          puts "inhale and exhale"  
        end  
      end  
        
      class Cat < Mammal  
        # here we are inheritinh mammal characters into cat
        def speak  
          puts "Meow"  
        end  
      end  


----------------------------------------------------------------
What is the difference between a method with and without ! ?
>> if the method contains ! then it will change original array.
if a method doesnot contains ! then it will not affect original array
---------------------------------------------------------------
What is the difference between 1..10 VS 1...10 ?
>> 1..10 (this means 1 to 10 ,this includes 10)
 1...10 (this means 1 to 9 ,this doesnot iinclude 10)
-----------------------------------------------------------------------
What do attr_reader, attr_writer mean in ruby and what's their equivalent ?
>> their equivalent is attr_accessor