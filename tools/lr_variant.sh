#!/bin/bash
# Build type chooser for the LegendROM
. $ANDROID_BUILD_TOP/vendor/cm/tools/colors
echo -e ${ylw}"\n\n ▼ Which build-type do you want to choose?\n"${txtrst}
echo -e "";
echo -e ${blu}" 〉 1- Official "${txtrst}${red}"    ︱ Only for the official builds by the maintainers"${txtrst}
echo -e "";
echo -e ${blu}" 〉 2- Unofficial "${txtrst}${red}"  ︱ For the unofficial builds"${txtrst}
echo -e "";
echo -e ${blu}" 〉 3- Nightly "${txtrst}${red}"     ︱ Only for the official daily builds by the maintainers"${txtrst}
echo -e "";
echo -e ${blu}" 〉 4- Weekly "${txtrst}${red}"      ︱ Only for the official weekly builds by the maintainers"${txtrst}
echo -e "";
echo -e ${blu}" 〉 5- Release "${txtrst}${red}"     ︱ Only for the official releases by the RR-team"${txtrst}
echo -e "";
echo -e ${blu}" 〉 6- Milestone "${txtrst}${red}"   ︱ Only for the milestone releases by the RR-team"${txtrst}
echo -e "";
echo -e ${blu}" 〉 7- Final "${txtrst}${red}"       ︱ Only for the final releases by the RR-team"${xtrst}
echo -e "";
echo -e ${blu}" 🕑  30/sec Time-out "${txtrst}${red}"︱ Default option"${txtrst}
echo -e "";
echo -e ${cya}" ▼ Pick a number"${txtrst}
echo -e "";
$normal
read -t 30 askvariant
sleep 1
if [ "$askvariant" == "1" ]
then
echo -e "";
echo -e ${blu}" ▪ Building official variant "${txtrst}
export LR_BUILDTYPE=Official
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "2" ]
then
echo -e "";
echo -e ${blu}" ▪ Building unofficial variant "${txtrst}
export LR_BUILDTYPE=Unofficial
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "3" ]
then
echo -e "";
echo -e ${blu}" ▪ Building nightly variant "${txtrst}
export LR_BUILDTYPE=Nightly
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "4" ]
then
echo -e "";
echo -e ${blu}" ▪ Building weekly variant "${txtrst}
export LR_BUILDTYPE=Weekly
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "5" ]
then
echo -e "";
echo -e ${blu}" ▪ Building release variant "${txtrst}
export RR_BUILDTYPE=release
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "6" ]
then
echo -e "";
echo -e ${blu}" ▪ Building milestone variant "${txtrst}
export RR_BUILDTYPE=milestone
echo -e "";
echo -e "";
$normal
sleep 1
fi
if [ "$askvariant" == "7" ]
then
echo -e "";
echo -e ${blu}" ▪ Building final variant "${txtrst}
export RR_BUILDTYPE=final
echo -e "";
echo -e "";
$normal
sleep 1
fi
