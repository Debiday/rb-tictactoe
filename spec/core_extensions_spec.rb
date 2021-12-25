require 'spec_helper'

describe Array do
  context '#all_empty?' do
    it 'returns true if all elements of the Array are empty' do
      expect(['', '', ''].all_empty?).to be true
    end
    it 'returns false if some of the Array elements are not empty' do
      expect(['1', '', '', Object.new, :a].all_empty?).to be false
    end
    it 'returns true for an empty Array' do
      expect([].all_empty?).to be true
    end
  end

  context '#all_same?' do
    it 'returns true if all elements of the Array are the same' do
      expect(%w[A A A].all_same?).to be true
    end
    it 'returns false if some of the Array elements are not the same' do
      expect(%w[A B A].all_same?).to be false
    end
    it 'returns true if the Array is empty' do
      expect([].all_same?).to be true
    end
  end

  context '#any_empty?' do
    it 'returns true if there are any elements of the Array that are empty' do
      expect(['A', '', 'A'].any_empty?).to be true
    end
    it 'returns false if none of the elements of the Array are empty' do
      expect(%w[A A A].any_empty?).to be false
    end
    it 'returns true if the Array is empty' do
      expect([].any_empty?).to be false
    end
  end

  context 'none_empty?' do
    it 'returns true if none of the elements of the Array are empty' do
      expect(%w[A A A].none_empty?).to be true
    end
    it 'returns false if some of the elements of the Array are empty' do
      expect(['A', 'A', ''].none_empty?).to be false
    end
    it 'returns true if the Array is empty' do
        expect([].none_empty?).to be true
    end
  end
end
