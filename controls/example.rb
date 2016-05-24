# encoding: utf-8
# copyright: 2015, The Authors
# license: All rights reserved

title 'sample section'

# you add controls here
control 'C:/windows' do                        # A unique ID for this control
  impact 0.7                                # The criticality, if this control fails.
  title 'Create C:/windows directory'             # A human-readable title
  desc 'An optional description...'
  describe file('C:/windows') do                  # The actual test
    it { should be_directory }
  end
end
