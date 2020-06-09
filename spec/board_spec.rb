require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  let(:full_board) {
    Board.new({
      top: {left: :fake, middle: :fake, right: :fake},
      middle: {left: :fake, middle: :fake, right: :fake},
      bottom: {left: :fake, middle: :fake, right: :fake}
    })
  }
  
  it "exists" do
    Board.new
  end

  it "places a token" do
    board = Board.new
    board.place(:x, :top, :right)
    expect(board.token_at(:top,:right)).to eq(:x)
  end
  
end
