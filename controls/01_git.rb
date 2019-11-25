# copyright: 2019, Ali Muhammad

title "Compliance git"

control "git-01" do
  impact 0.7
  title "Validate git is installed and ready to be used."
  desc "This compliance test will validate whether git is installed on the system."

  describe package("git") do
    it { should be_installed }
  end
#  describe command('which git') do
#    its('exit_status') { should eq 0 }
#    its('stdout') { should eq "/usr/bin/git\n" }
#  end
end

control "git-02" do
  impact 0.7
  title "Verify git is operational."
  desc "This control will also whether git is operational or not."

  describe command('git --version') do
    its('exit_status') { should eq 0 }
  end
end
