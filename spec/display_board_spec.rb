require_relative"../lib/display_board.rb"

describe "#display_board in 'lib/display_board.rb" do
  context 'various game situations' do
    it 'prints a blank board when the board array is empty' do
      board = ["   ","   ","   ","   ","   ","   ","   ","   ","   "]

      output = capture_puts{ display_board(board) }
      rows = output.split("\n")

      expect(rows[0]).to eq("   |   |   ")
      expect(rows[1]).to eq("-----------")
      expect(rows[2]).to eq("   |   |   ")
      expect(rows[3]).to eq("-----------")
      expect(rows[4]).to eq("   |   |   ")
    end

    it 'prints a board with an X in the center position' do
      board = ["   ", "   ", "   ", "   ", " X ", "   ", "   ", "   ", "   "]

      output = capture_puts{ display_board(board) }
      rows = output.split("\n")

      expect(rows[0]).to eq("   |   |   ")
      expect(rows[1]).to eq("-----------")
      expect(rows[2]).to eq("   | X |   ")
      expect(rows[3]).to eq("-----------")
      expect(rows[4]).to eq("   |   |   ")

    end

    it 'prints a board with O in the top left' do
      board = [" O ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]
      # Leave hint for assigning the 0 index value of O
      board[0] = "O"

      output = capture_puts{ display_board(board) }
      rows = output.split("\n")

      expect(rows[0]).to eq("O|   |   ")
      expect(rows[1]).to eq("-----------")
      expect(rows[2]).to eq("   |   |   ")
      expect(rows[3]).to eq("-----------")
      expect(rows[4]).to eq("   |   |   ")
    end


  end
end
