require 'birthday_list'

describe BirthdayList do
  #let(:list) { described_class.new }

  # subject { described_class.new }

  # it { is_expected.to_not raise_error }
  it "stores birthdays" do
    expect { subject }.to_not raise_error
  end

  it "lists birthdays in a tidy format" do
    expect { subject.list }.to output(String).to_stdout
  end

  it "adds a birthday to a list" do
    x = subject.add("Me", (202058))
    expect(subject.list).to include x
  end

end