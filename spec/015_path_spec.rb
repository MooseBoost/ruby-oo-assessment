require_relative "../lib/path.rb" # Code your solution here.

# Code some tests for path.rb.

# There are three methods on the Path class.

# The normalize_path method will return an absolute
# path to the file no matter what kind of path sent
# to it.

# The absolute_path? method will return true if the
# path passed to it is absolute.

# The relative_path? method will return true if the 
# path passed to it is relative.

# Write some tests that spec it out.

# Use the other tests in this suite as guides.

# You should should write at least three describe blocks, 
# one for each method.

# Test the negative and positive results, for example,
# when describing absolute_path? make sure to test
# the results when sent a relative and absolute path.

describe Path do
  let(:ab_path) {Path.new("/abs/o/lute/path.rb")}
  let(:rel_path) {Path.new("rel/a/tive/path.rb")}
  
  describe "#normalize_path" do
    it "should return an absolute file path if given an absolute path" do
      expect(ab_path.normalize_path).to eq("/abs/o/lute/path.rb")
    end
    
    it "should return an absolute file path if given a relative path" do
      expect(rel_path.normalize_path).to eq("#{Dir.pwd}/rel/a/tive/path.rb")
    end
  end
  
  describe "#absolute_path?" do
    it "should return true if given an absolute path" do
      expect(ab_path.absolute_path?).to eq(true)
    end
    
    it "should return false if given a relative path" do
      expect(rel_path.absolute_path?).to eq(false)
    end  
  end
  
  describe "#relative_path?" do
    it "should return false if given an absolute path" do
      expect(ab_path.relative_path?).to eq(false)
    end
    
    it "should return true if given a relative path" do
      expect(rel_path.relative_path?).to eq(true)
    end    
  end
end
