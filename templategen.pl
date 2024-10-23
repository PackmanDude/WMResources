use strict;
use warnings;
use JSON::PP;

my $model = {
	parent => "builtin/generated",
	ambientocclusion => JSON::PP::true,
	display => {
		fixed => {
			rotation => [
				1, 2, 3
			],
			translation => [
				4, 5, 6
			],
			scale => [
				7, 8, 9
			]
		}
	},
	textures => {
		particle => "particle.json",
		variable1 => "variable1.json"
	},
	elements => [
		{
			from => [
				0, 0, 0
			],
			to => [
				1, 1, 1
			],
			rotation => {
				origin => [
					.5, .5, .5
				],
				axis => "x",
				angle => 45.
			},
			shade => JSON::PP::true,
			light_emission => 0,
			faces => {
				down => {
					texture => "#down"
				},
				up => {
					texture => "#up"
				},
				north => {
					texture => "#north"
				},
				south => {
					texture => "#south"
				},
				west => {
					texture => "#west"
				},
				east => {
					texture => "#east"
				}
			}
		}
	]
};
open my $json, "<", "WMResources/assets/whomine/models/decor/bar_stool.json"
or die "$!";
my $model2;
{
	local $/;
	$model2 = decode_json <$json>;
}
# find duplicates

# create templates

# edit original files
