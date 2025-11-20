#!/usr/bin/env python3

# Tuple containing all valid baseball positions
POSITIONS = ("C", "1B", "2B", "3B", "SS", "LF", "CF", "RF", "P")

# Function to display separator
def display_separator():
    print("=" * 60)

def display_title():
    display_separator()
    print(" " * 25 + "Baseball Team Manager")

# Function to display the main menu options
def display_menu():
    print("MENU OPTIONS")
    print("1 - Display lineup")
    print("2 - Add player")
    print("3 - Remove player")
    print("4 - Move player")
    print("5 - Edit player position")
    print("6 - Edit player stats")
    print("7 - Exit program")
    print()
    print("POSITIONS")
    print(", ".join(POSITIONS))
    display_separator()

# Function to get a valid player position
def get_player_position():
    while True:
        position = input("Position: ").upper()
        if position in POSITIONS:
            return position
        print("Invalid position.")

# Function to get a valid number of at bats
def get_at_bats():
    while True:
        try:
            at_bats = int(input("At bats: "))
            if at_bats >= 0:
                return at_bats
        except ValueError:
            pass
        print("Invalid input. Please enter a non-negative integer.")

# Function to get a valid number of hits (must be <= at_bats)
def get_hits(at_bats):
    while True:
        try:
            hits = int(input("Hits: "))
            if 0 <= hits <= at_bats:
                return hits
        except ValueError:
            pass
        print("Invalid input. Please enter a number between 0 and the number of at bats.")

# Function to calculate the batting average
def calculate_batting_avg(at_bats, hits):
    return round(hits / at_bats, 3) if at_bats > 0 else 0.0

# Function to display the lineup
def display_lineup(players):
    print(" " * 8 + "Player    POS     AB    H     AVG")
    print("-------------------------------------------------")
    for idx, player in enumerate(players, 1):
            name, position, at_bats, hits = player
            avg = calculate_batting_avg(at_bats, hits)
            print(f"Batting average: {avg:.3f}")
            print(f"{idx:<8}{name:<10}{position:<8}{at_bats:<7}{hits:<6}{avg:.3f}")
            print()
# Function to add a player to the lineup
def add_player(players):
    name = input("Name: ")
    position = get_player_position()
    at_bats = get_at_bats()
    hits = get_hits(at_bats)
    players.append([name, position, at_bats, hits])
    print(f"{name} was added.")
    print()

# Function to remove a player from the lineup
def remove_player(players):
    display_lineup(players)
    try:
        player_num = int(input("Enter the player number to remove: "))
        if 1 <= player_num <= len(players):
            removed_player = players.pop(player_num - 1)
            print(f"{removed_player[0]} was removed.")
    except ValueError:
        print("Invalid number.")

# Main function to run the program
def main():
    players = []  # list of lists to store player data
    display_title()
    display_menu()

    while True:
        choice = input("Menu option: ")
        if choice == "1":
            display_lineup(players)
        elif choice == "2":
            add_player(players)
        elif choice == "3":
            delete_player(players)
        elif choice == "4":
            move_player(players)
        elif choice == "5":
            edit_player_position(players)
        elif choice == "6":
            edit_player_stats(players)
        elif choice == "7":
            print("Bye!")
            break
        else:
            print("Invalid option.")

# Call the main function to start the program
if __name__ == "__main__":
    main()
