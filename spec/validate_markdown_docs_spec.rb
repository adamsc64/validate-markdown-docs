# frozen_string_literal: true

require 'English'

RSpec.describe 'validate-markdown-docs' do
  context 'when run with valid Markdown files' do
    it 'exits with a success status' do
      stdout = `ruby validate-markdown-docs ./spec/fixtures/valid`
      expect($CHILD_STATUS.exitstatus).to eq(0)
      expect(stdout).to be_empty
    end
  end

  context 'when run with invalid Markdown files' do
    it 'exits with a non-zero status' do
      stdout = `ruby validate-markdown-docs ./spec/fixtures/invalid`
      expect($CHILD_STATUS.exitstatus).not_to eq(0)
      expect(stdout).to include('Found 1 broken links')
    end
  end
end
