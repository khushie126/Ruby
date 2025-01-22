# date : 21/01/2025
# Khushi Shah 
#Program 1
module TransactionLogger
    def print_transactions()
        print "Transaction log: \nDeposited: $#{@ammount_deposited} \nWithdrew: $#{@ammount_withdrew}"
    end 
end
class BankAccount
    include TransactionLogger
    
    def initialize (balance = 0)
        @balance = balance
        @ammount_deposited = 0
        @ammount_withdrew = 0
    end 

    def deposit 
         puts "Enter the ammount you want to deposit: "
         ammount = gets.to_f
      
         if ammount > 0
            @balance += ammount
            @ammount_deposited = ammount
            puts "Deposited: $#{@ammount_deposited} . New balance: $#{@balance}"
         else
            puts "Enter positive value"
         end
    end 

    def withdraw
         puts "Enter the ammount you want to withdraw: "
         ammount = gets.to_f
         if @balance >= ammount
            @balance -= ammount
            @ammount_withdrew = ammount
            puts "Withdrew: $#{@ammount_withdrew} . New balance: $#{@balance}"
         else
            puts "Insufficient funds. Current balance: $#{@balance}"
         end
    end

    def check_balance()
         puts "Current balance is: $#{@balance}"
    end
end

obj = BankAccount.new
loop do
    puts "\nEnter Your choice: "
    print "1.Deposit ammount \n2.Withdraw \n3.Check balance \n4.Print transaction \n5.Exit\n"
    choice = gets.to_i

    case choice
    when 1
        obj.deposit
    when 2
        obj.withdraw
    when 3
        obj.check_balance
    when 4
        obj.print_transactions
    when 5
        puts "Exiting program..."
        break  
    else
        puts "Invalid choice. Please try again."
    end
end

