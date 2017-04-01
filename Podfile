#Podfile

use_frameworks!

def app_bundle_commands
    pod 'IGListKit', '~> 2.0.0'
end

def test_bundle_commands
    pod 'Quick'
    pod 'Nimble'
end

target 'Algorithm-VisualizationTests' do
    test_bundle_commands
    app_bundle_commands
end