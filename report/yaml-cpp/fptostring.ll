Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/fptostring?download=true
inline.NumInlined: 309
inline.NumDeleted: 181
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.YAML::jkj::dragonbox::detail::array" = type { [78 x i64] }
%"struct.YAML::jkj::dragonbox::detail::array.8" = type { [619 x %"struct.YAML::jkj::dragonbox::detail::wuint::uint128"] }
%"struct.YAML::jkj::dragonbox::detail::wuint::uint128" = type { i64, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.std::array" = type { [20 x i8] }
%"struct.std::array.0" = type { [28 x i8] }

$_ZN4YAML6detail13fp_formatting10FpToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i = comdat any

$_ZN4YAML6detail13fp_formatting10FpToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i = comdat any

$_ZN4YAML3jkj9dragonbox6detail4implINS1_21ieee754_binary_traitsINS1_16ieee754_binary32EjiEEE15compute_nearestINS1_6policy4sign13return_sign_tENS9_13trailing_zero8remove_tENS9_26decimal_to_binary_rounding17nearest_to_even_tENS9_26binary_to_decimal_rounding9to_even_tENS9_5cache6full_tENS9_23preferred_integer_types7match_tEEENS1_10decimal_fpIjNT4_21decimal_exponent_typeIS6_XcviclL_ZNS7_3minEiiEngL_ZNS7_5max_kEEL_ZNS7_5min_kEEEEXcviclL_ZNS7_3maxEiiEL_ZNS7_5max_kEEplplngL_ZNS7_5min_kEEL_ZNS7_5kappaEELi1EEEEEXsrT_15return_has_signEXsrT0_21report_trailing_zerosEEENS1_23signed_significand_bitsIS6_EEi = comdat any

$_ZN4YAML3jkj9dragonbox6detail4implINS1_21ieee754_binary_traitsINS1_16ieee754_binary64EmiEEE15compute_nearestINS1_6policy4sign13return_sign_tENS9_13trailing_zero8remove_tENS9_26decimal_to_binary_rounding17nearest_to_even_tENS9_26binary_to_decimal_rounding9to_even_tENS9_5cache6full_tENS9_23preferred_integer_types7match_tEEENS1_10decimal_fpImNT4_21decimal_exponent_typeIS6_XcviclL_ZNS7_3minEiiEngL_ZNS7_5max_kEEL_ZNS7_5min_kEEEEXcviclL_ZNS7_3maxEiiEL_ZNS7_5max_kEEplplngL_ZNS7_5min_kEEL_ZNS7_5kappaEELi1EEEEEXsrT_15return_has_signEXsrT0_21report_trailing_zerosEEENS1_23signed_significand_bitsIS6_EEi = comdat any

$_ZN4YAML3jkj9dragonbox12cache_holderINS1_16ieee754_binary32EvE5cacheE = comdat any

$_ZN4YAML3jkj9dragonbox12cache_holderINS1_16ieee754_binary64EvE5cacheE = comdat any

@_ZN4YAML3jkj9dragonbox12cache_holderINS1_16ieee754_binary32EvE5cacheE = linkonce_odr local_unnamed_addr constant %"struct.YAML::jkj::dragonbox::detail::array" { [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841] }, comdat, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZN4YAML3jkj9dragonbox12cache_holderINS1_16ieee754_binary64EvE5cacheE = linkonce_odr local_unnamed_addr constant %"struct.YAML::jkj::dragonbox::detail::array.8" { [619 x %"struct.YAML::jkj::dragonbox::detail::wuint::uint128"] [%"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -38366372719436721, i64 2731688931043774331 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6941508010590729807, i64 8624834609543440813 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4065198994811024355, i64 -3054014793352862696 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -469812725086392539, i64 5405853545163697438 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7211161980820077193, i64 5684501474941004851 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4402266457597708587, i64 2493940825248868160 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -891147053569747830, i64 7729112049988473104 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7474495936122174250, i64 -9004363024039368022 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4731433901725329908, i64 2579604275232953684 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1302606358729274481, i64 3224505344041192105 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7731658001846878407, i64 8932844867666826922 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5052886483881210105, i64 -2669001970698630060 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1704422086424124727, i64 -3336252463373287575 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7982792831656159810, i64 2526528228819083170 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5366805021142811859, i64 -6065211750830921845 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2096820258001126919, i64 1641857348316123501 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8228041688891786181, i64 -5891368184943504668 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5673366092687344822, i64 -7364210231179380835 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2480021597431793123, i64 4629795266307937668 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8467542526035952558, i64 5199465050656154995 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5972742139117552794, i64 -2724040723534582064 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2854241655469553088, i64 -8016736922845615485 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8701430062309552536, i64 6518754469289960082 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6265101559459552766, i64 8148443086612450103 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3219690930897053053, i64 962181821410786820 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8929835859451740015, i64 -1704479370831952189 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6550608805887287114, i64 7092772823314835571 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3576574988931720989, i64 -357406007711231344 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9152888395723407474, i64 8999993282035256218 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6829424476226871438, i64 2026619565689294465 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3925094576856201394, i64 -6690097579743157727 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -294682202642863838, i64 5472436080603216553 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7101705404292871755, i64 8031958568804398250 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4265445736938701790, i64 -3795109844276665900 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -720121152745989333, i64 9091170749936331337 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7367604748107325189, i64 3376138709496513134 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4597819916706768583, i64 -391512631556746487 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1135588877456072824, i64 8733981247408842699 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7627272076051127371, i64 5458738279630526687 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4922404076636521310, i64 -7011635205744005353 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1541319077368263733, i64 5070514048102157021 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7880853450996246689, i64 863228270850154186 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5239380795317920458, i64 -3532650679864695172 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1937539975720012668, i64 -9027499368258256869 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8128491512466089774, i64 -3336344095947716591 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5548928372155224313, i64 -8782116138362033642 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2324474446766642487, i64 7469098900757009563 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8370325556870233411, i64 -2249342214667950879 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5851220927660403859, i64 6411694268519837209 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2702340141148116920, i64 -5820440219632367201 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8606491615858654931, i64 7891439908798240260 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6146428501395930760, i64 -3970758169284363388 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3071349608317525546, i64 -351761693178066331 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8837122532839535322, i64 6697677969404790400 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6434717147622031249, i64 -851274575098787809 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3431710416100151157, i64 -1064093218873484761 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9062348037703676329, i64 8558313775058847833 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6716249028702207507, i64 6086206200396171887 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3783625267450371480, i64 -6227300304786948854 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -117845565885576446, i64 -3172439362556298163 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6991182506319567135, i64 -4288617610811380304 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4127292114472071014, i64 3862600023340550428 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -547429124662700864, i64 -4395122007679087773 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7259672230555269896, i64 8782263791269039902 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4462904269766699466, i64 -7468914334623251739 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -966944318780986428, i64 4498915137003099038 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7521869226879198374, i64 -6411550076227838909 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4790650515171610063, i64 5820620459997365076 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1376627125537124675, i64 -6559282480285457367 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7777920981101784778, i64 -8711237568605798758 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5110715207949843068, i64 2946011094524915264 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1776707991509915931, i64 3682513868156144080 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8027971522334779313, i64 4607414176811284002 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5423278384491086237, i64 1147581702586717098 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2167411962186469893, i64 -3177208890193991531 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8272161504007625539, i64 7237616480483531101 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5728515861582144020, i64 -4788037454677749836 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2548958808550292121, i64 -1373360799919799391 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8510628282985014432, i64 -858350499949874619 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6026599335303880135, i64 3538747893490044630 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2921563150702462265, i64 9035120885289943692 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8743505996830120772, i64 -5882264492762254952 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6317696477610263061, i64 -2741144597525430787 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3285434578585440922, i64 -3426430746906788484 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8970925639256982432, i64 4776009810824339054 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6601971030643840136, i64 5970012263530423817 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3640777769877412266, i64 7462515329413029772 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9193015133814464522, i64 52386062455755703 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6879582898840692749, i64 -9157889458785081179 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3987792605123478032, i64 6999382250228200142 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -373054737976959636, i64 8749227812785250178 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7150688238876681629, i64 -3755104653863994447 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4326674280168464132, i64 -4693880817329993059 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -796656831783192261, i64 -1255665003235103419 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7415439547505577019, i64 8438581409832836171 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4657613415954583370, i64 -3286831292991118498 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1210330751515841308, i64 -8720225134666286027 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7673985747338482674, i64 -3144297699952734815 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4980796165745715438, i64 -8542058143368306422 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1614309188754756393, i64 3157485376071780684 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7926472270612804602, i64 8890957387685944784 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5296404319838617848, i64 1890324697752655171 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2008819381370884406, i64 2362905872190818964 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8173041140997884610, i64 6088502188546649757 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5604615407819967859, i64 -1612744301171463612 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2394083241347571919, i64 7207441660390446293 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8413831053483314306, i64 -2412877989897052923 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5905602798426754978, i64 -7627783505798704058 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2770317479606055818, i64 4300328673033783640 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8648977452394866743, i64 -1923980597781273129 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6199535797066195524, i64 6818396289628184397 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3137733727905356501, i64 8522995362035230496 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8878612607581929669, i64 3021029092058325108 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6486579741050024183, i64 -835399653354481519 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3496538657885142324, i64 8179122470161673909 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9102865688819295809, i64 -4111420493003729615 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6766896092596731857, i64 -5139275616254662019 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3846934097318526917, i64 -6424094520318327523 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -196981603220770742, i64 -8030118150397909404 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7040642529654063570, i64 -7324666853212387329 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4189117143640191558, i64 4679224488766679550 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -624710411122851544, i64 -3374341425896426371 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7307973034592864071, i64 -9026492418826348337 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4523280274813692185, i64 -2059743486678159614 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1042414325089727327, i64 -2574679358347699518 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7569037980822161435, i64 3002511419460075706 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4849611457600313890, i64 8364825292752482536 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1450328303573004458, i64 1232659579085827362 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7823984217374209643, i64 -3841273781498745803 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5168294253290374149, i64 4421779809981343555 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1848681798185579782, i64 915538744049291539 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8072955151507069220, i64 5183897733458195116 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5479507920956448621, i64 6479872166822743895 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2237698882768172872, i64 3488154190101041965 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8316090829371189901, i64 2180096368813151228 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5783427518286599473, i64 -1886565557410948869 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2617598379430861437, i64 -2358206946763686086 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8553528014785370254, i64 7749492695127472004 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6080224000054324913, i64 463493832054564197 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2988593981640518238, i64 -4032318728359182658 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8785400266166405755, i64 -4826042214438183113 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6370064314280619289, i64 3190819268807046917 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3350894374423386208, i64 -623161932418579258 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9011838011655698236, i64 -7307005235402693892 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6653111496142234891, i64 -4522070525825979461 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3704703351750405709, i64 3570783879572301481 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -19193171260619233, i64 -148206168962011053 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6929524759678968877, i64 -92628855601256908 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4050219931171323192, i64 -115786069501571135 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -451088895536766085, i64 4466953431550423985 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7199459587351560659, i64 486002885505321039 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4387638465762062920, i64 5219189625309039203 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -872862063775190746, i64 6523987031636299003 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7463067817500576073, i64 -534194123654701027 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4717148753448332187, i64 -667742654568376284 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1284749923383027329, i64 8388693718644305453 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7720497729755473937, i64 -6286281471915778851 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5038936143766954517, i64 -7857851839894723564 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1686984161281305242, i64 8624429273841147160 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7971894128441897632, i64 778582277723329071 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5353181642124984136, i64 973227847154161339 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2079791034228842266, i64 1216534808942701674 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8217398424034108273, i64 -3851351762838199358 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5660062011615247437, i64 -4814189703547749197 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2463391496091671392, i64 -6017737129434686497 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8457148712698376476, i64 7768129340171790700 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5959749872445582691, i64 -8736582398494813241 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2838001322129590460, i64 -1697355961263740744 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8691279853972075893, i64 1244995533423855987 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6252413799037706963, i64 -3055441601647567920 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3203831230369745799, i64 5404070034795315908 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8919923546622172981, i64 -3539985255894009413 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6538218414850328322, i64 -4424981569867511767 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3561087000135522498, i64 8303831092947774003 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9143208402725783417, i64 578208414664970848 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6817324484979841368, i64 -3888925500096174344 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3909969587797413806, i64 -249470856692830026 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -275775966319379353, i64 -4923524589293425437 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7089889006590693952, i64 -3077202868308390898 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4250675239810979535, i64 765182433041899282 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -701658031336336515, i64 5568164059729762006 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7356065297226292178, i64 5785945546544795206 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4583395603105477319, i64 -1990940103673781801 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1117558485454458744, i64 6734696907262548557 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7616003081050118571, i64 4209185567039092848 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4908317832885260310, i64 -8573576096483297652 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1523711272679187483, i64 3118087934678041647 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7869848573065574033, i64 4254647968387469982 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5225624697904579637, i64 706623942056949573 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1920344853953336643, i64 -3728406090856200938 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8117744561361917258, i64 -6941939825212513490 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5535494683275008668, i64 5157633273766521850 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2307682335666372931, i64 6447041592208152312 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8359830487432564938, i64 6335244004343789147 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5838102090863318269, i64 -1304317031425039374 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2685941595151759932, i64 -1630396289281299218 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8596242524610931813, i64 1286845328412881941 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6133617137336276863, i64 -3003129357911285478 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3055335403242958174, i64 5469460339465668960 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8827113654667930715, i64 8030098730593431004 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6422206049907525490, i64 -3797434642040374957 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3416071543957018958, i64 9088264752731695016 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9052573742614218705, i64 -8154892584824854327 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6704031159840385477, i64 8253128342678483707 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3768352931373093942, i64 5704724409920716730 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -98755145788979524, i64 -2092466524453879895 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6979250993759194058, i64 998051431430019018 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4112377723771604669, i64 -7975807747567252036 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -528786136287117932, i64 8476984389250486571 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7248020362820530564, i64 -3925256793573221701 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4448339435098275301, i64 -294884973539139223 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -948738275445456222, i64 -368606216923924028 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7510490449794491995, i64 -2536221894791146469 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4776427043815727089, i64 6053094668365842721 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1358847786342270957, i64 2954682317029915497 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7766808894105001205, i64 -459166561069996766 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5096825099203863602, i64 -573958201337495958 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1759345355577441598, i64 -5329133770099257851 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8017119874876982855, i64 -5636551615525730109 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5409713825168840664, i64 2177682517447613172 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2150456263033662926, i64 2722103146809516465 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8261564192037121185, i64 6313000485183335695 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5715269221619013577, i64 3279564588051781714 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2532400508596379068, i64 -512230283362660762 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8500279345513818773, i64 1985699082112030976 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6013663163464885563, i64 -2129562165787349184 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2905392935903719049, i64 6561419329620589328 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8733399612580906262, i64 -7428327965055601430 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6305063497298744923, i64 4549648098962661925 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3269643353196043250, i64 -8147997931578836306 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8961056123388608887, i64 1825030320404309165 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6589634135808373205, i64 6892973918932774360 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3625356651333078602, i64 4004531380238580046 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9183376934724255983, i64 -2108853905778275375 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6867535149977932074, i64 6587304654631931589 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3972732919045027189, i64 -989241218564861322 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -354230130378896082, i64 -1236551523206076653 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7138922859127891907, i64 6144684325637283948 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4311967555482476980, i64 -6154202648235558777 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -778273425925708321, i64 -3081067291867060567 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7403949918844649557, i64 -1925667057416912854 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4643251380128424042, i64 -2407083821771141068 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1192378206733142148, i64 -7620540795641314239 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7662765406849295699, i64 -2456994988062127447 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4966770740134231719, i64 6152128301777116499 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1596777406740401745, i64 -6144897678060768089 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7915514906853832947, i64 -3840561048787980055 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5282707615139903279, i64 4422670725869800739 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1991698500497491195, i64 -8306719647944912789 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8162340590452013853, i64 8643358275316593219 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5591239719637629412, i64 6192511825718353620 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2377363631119648861, i64 7740639782147942025 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8403381297090862394, i64 2532056854628769814 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5892540602936190089, i64 -6058300968568813541 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2753989735242849707, i64 -7572876210711016926 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8638772612167862923, i64 9102010423587778133 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6186779746782440750, i64 -2457545025797441046 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3121788665050663033, i64 -7683617300674189211 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8868646943297746252, i64 -4802260812921368257 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6474122660694794911, i64 -1391139997724322417 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3480967307441105734, i64 7484447039699372787 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9093133594791772940, i64 -9157278655470055720 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6754730975062328271, i64 -6834912300910181746 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3831727700400522434, i64 679731660717048625 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -177973607073265139, i64 -8373707460958465027 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7028762532061872568, i64 8601490892183123070 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4174267146649952806, i64 -7694880458480647778 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -606147914885053103, i64 4216457482181353989 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7296371474444240046, i64 -4282243101277735613 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4508778324627912153, i64 8482254178684994196 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1024286887357502287, i64 5991131704928854841 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7557708332239520786, i64 -3173071712060547580 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4835449396872013078, i64 -8578025658503072379 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1432625727662628443, i64 3112525982153323238 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7812920107430224633, i64 4251171748059520976 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5154464115860392887, i64 702278666647013315 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1831394126398103205, i64 5489534351736154548 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8062150356639896359, i64 1125115960621402641 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5466001927372482545, i64 6018080969204141205 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2220816390788215277, i64 2910915193077788602 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8305539271883716405, i64 -486521013540076076 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5770238071427257602, i64 -608151266925095095 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2601111570856684098, i64 -5371875102083756772 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8543223759426509417, i64 3560107088838733873 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6067343680855748868, i64 -161552157378970562 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2972493582642298180, i64 4409745821703674701 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8775337516792518219, i64 -6467280898289979120 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6357485877563259869, i64 1139270913992301908 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3335171328526686933, i64 -3187597375937010519 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9002011107970261189, i64 7231123676894144234 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6640827866535438582, i64 4427218577690292388 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3689348814741910324, i64 -3689348814741910323 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9223372036854775808, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6917529027641081856, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4035225266123964416, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -432345564227567616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7187745005283311616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4372995238176751616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -854558029293551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7451627795949551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4702848726509551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1266874889709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7709325833709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5024971273709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1669528073709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7960984073709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5339544073709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2062744073709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8206744073709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5646744073709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2446744073709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8446744073709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5946744073709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2821744073709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8681119073709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6239712823709551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3187955011209551616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8910000909647051616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6525815118631426616, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3545582879861895366, i64 0 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9133518327554766460, i64 4611686018427387904 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6805211891016070171, i64 5764607523034234880 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3894828845342699810, i64 -6629298651489370112 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -256850038250986858, i64 5548434740920451072 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7078060301547948643, i64 -1143914305352105984 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4235889358507547899, i64 7793479155164643328 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -683175679707046970, i64 -4093209111326359552 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7344513827457986212, i64 4359273333062107136 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4568956265895094861, i64 5449091666327633920 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1099509313941480672, i64 2199678564482154496 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7604722348854507276, i64 1374799102801346560 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4894216917640746191, i64 1718498878501683200 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1506085128623544835, i64 6759809616554491904 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7858832233030797378, i64 6530724019560251392 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5211854272861108819, i64 -1059967012404461568 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1903131822648998119, i64 7898413271349198848 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8106986416796705681, i64 -1981020733047832576 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5522047002568494197, i64 -2476275916309790720 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2290872734783229842, i64 -3095344895387238400 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8349324486880600507, i64 4982938468024057856 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5824969590173362730, i64 -7606384970252091392 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2669525969289315508, i64 4327076842467049472 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8585982758446904049, i64 -6518949010312869888 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6120792429631242157, i64 -8148686262891087360 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3039304518611664792, i64 8260886245095692416 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8817094351773372351, i64 5163053903184807760 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6409681921289327535, i64 -7381240676301154012 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3400416383184271515, i64 -3178808521666707 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9042789267131251553, i64 -4613672773753429595 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6691800565486676537, i64 -5767090967191786994 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3753064688430957767, i64 -7208863708989733743 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -79644842111309304, i64 212292400617608629 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6967307053960650171, i64 132682750386005393 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4097447799023424810, i64 4777539456409894646 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -510123730351893109, i64 -3251447716342407501 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7236356359111015049, i64 7191217214140771120 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4433759430461380907, i64 4377335499248575996 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -930513269649338230, i64 -8363388681221443717 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7499099821171918250, i64 -7532960934977096275 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4762188758037509908, i64 4418856886560793368 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1341049929119499481, i64 5523571108200991710 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7755685233340769032, i64 -8076983103442849941 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5082920523248573386, i64 -5484542860876174523 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1741964635633328828, i64 6979379479186945559 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8006256924911912374, i64 -4861259862362934834 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5396135137712502563, i64 7758483227328495170 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2133482903713240300, i64 -4136954021121544750 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8250955842461857044, i64 -279753253987271517 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5702008784649933400, i64 4261994450943298508 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2515824962385028846, i64 5327493063679123135 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8489919629131724885, i64 7941369183226839864 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6000713517987268202, i64 5315025460606161925 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2889205879056697349, i64 -2579590211097073401 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8723282702051517699, i64 7611128154919104932 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6292417359137009220, i64 -4321147861633282547 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3253835680493873621, i64 -789748808614215279 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8951176327949752869, i64 8729779031470891259 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6577284391509803182, i64 6300537770911226169 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3609919470959866074, i64 -1347699823215743097 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9173728696990998152, i64 6075216638131242421 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6855474852811359786, i64 7594020797664053026 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3957657547586811828, i64 269153960225290474 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -335385916056126881, i64 336442450281613092 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7127145225176161157, i64 7127805559067090039 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4297245513042813542, i64 4298070930406474645 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -759870872876129024, i64 -3850783373846682502 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7392448323188662496, i64 9122475437414293196 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4628874385558440216, i64 -7043649776941685121 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1174406963520662366, i64 -4192876202749718497 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7651533379841495835, i64 -4926390635932268013 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4952730706374481889, i64 3065383741939440792 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1579227364540714458, i64 -779956341003086914 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7904546130479028392, i64 6430056314514152535 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5268996644671397586, i64 8037570393142690669 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1974559787411859078, i64 823590954573587528 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8151628894773493780, i64 5126430365035880109 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5577850100039479321, i64 6408037956294850136 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2360626606621961247, i64 3398361426941174766 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8392920656779807636, i64 -4793553135802847627 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5879464802547371641, i64 -1380255401326171630 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2737644984756826647, i64 -1725319251657714538 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8628557143114098510, i64 3533361486141316318 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6174010410465235234, i64 -4806670179178130410 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3105826994654156138, i64 7826720331309500699 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8858670899299929442, i64 280014188641050033 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6461652605697523899, i64 -8873354301053463267 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3465379738694516970, i64 -1868320839462053276 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9083391364325154962, i64 5749828502977298559 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6742553186979055799, i64 -2036086408133152610 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3816505465296431844, i64 6678264026688335046 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -158945813193151901, i64 8347830033360418807 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7016870160886801794, i64 2911550761636567803 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4159401682681114339, i64 -5583933584809066055 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -587566084924005019, i64 2243455055843443239 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7284757830718584993, i64 3708002419115845977 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4494261269970843337, i64 23317005467419567 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1006140569036166268, i64 -4582539761593113445 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7546366883288685774, i64 -558244341782001951 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4821272585683469313, i64 -5309491445654890343 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1414904713676948737, i64 -6636864307068612929 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7801844473689174817, i64 -4148040191917883080 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5140619573684080617, i64 -5185050239897353851 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1814088448677712867, i64 -6481312799871692314 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8051334308064652398, i64 -8662506518347195600 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5452481866653427593, i64 3006924907348169212 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2203916314889396588, i64 -853029884242176389 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8294976724446954723, i64 1772699331562333709 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5757034887131305500, i64 6827560182880305040 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2584607590486743971, i64 8534450228600381300 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8532908771695296838, i64 7639874402088932265 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6054449946191733143, i64 326470965756389523 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2956376414312278525, i64 5019774725622874807 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8765264286586255934, i64 831516194300602803 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6344894339805432014, i64 -8183976793979022305 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3319431906329402113, i64 3605087062808385831 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8992173969096958177, i64 9170708441896323001 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6628531442943809817, i64 6851699533943015847 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3673978285252374367, i64 3952938399001381904 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9213765455923815836, i64 -4446942528265218166 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6905520801477381891, i64 -946992141904134803 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4020214983419339459, i64 8039631859474607304 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -413582710846786420, i64 -3785518230938904582 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7176018221920323369, i64 -60105885123121412 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4358336758973016307, i64 -75132356403901765 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -836234930288882479, i64 9129456591349898602 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7440175859071633406, i64 -1211618658047395230 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4688533805412153853, i64 -6126209340986631941 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1248981238337804412, i64 -7657761676233289927 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7698142301602209614, i64 -2480258038432112252 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5010991858575374113, i64 -7712008566467528219 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1652053804791829737, i64 8806733365625141342 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7950062655635975442, i64 -6025006692552756421 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5325892301117581398, i64 6303799689591218186 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2045679357969588844, i64 -1343622424865753076 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8196078626372074883, i64 1466078993672598280 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5633412264537705700, i64 6444284760518135753 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2430079312244744221, i64 8055355950647669692 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8436328597794046994, i64 2728754459941099605 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5933724728815170839, i64 -5812428961928401301 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2805469892591575644, i64 1957835834444274181 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8670947710510816634, i64 -7999724640327104445 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6226998619711132888, i64 3835402254873283156 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3172062256211528206, i64 4794252818591603945 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8900067937773286985, i64 7608094030047140370 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6513398903789220827, i64 4898431519131537558 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3530062611309138130, i64 -7712018656367741764 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9123818159709293187, i64 2097517367411243254 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6793086681209228580, i64 7233582727691441971 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3879672333084147821, i64 9041978409614302463 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -237904397927796872, i64 6690786993590490175 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7066219276345954901, i64 4181741870994056360 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4221088077005055722, i64 615491320315182545 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -664674077828931749, i64 -8454007886460797626 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7332950326284164199, i64 3939617107816777292 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4554501889427817345, i64 -8910536670511192098 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1081441343357383777, i64 7308573235570561494 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7593429867239446717, i64 -6961356773836868826 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4880101315621920492, i64 -8701695967296086033 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1488440626100012711, i64 -6265433940692719637 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7847804418953589800, i64 695789805494438131 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5198069505264599346, i64 869737256868047664 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1885900863153361279, i64 -8136200465769716229 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8096217067111932656, i64 -473439272678684739 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5508585315462527915, i64 4019886927579031981 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2274045625900771990, i64 -8810199395808373736 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8338807543829064350, i64 -7812217631593927537 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5811823411358942533, i64 4069786015789754291 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2653093245771290262, i64 475546501309804959 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8575712306248138270, i64 4908902581746016004 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6107954364382784934, i64 -3087243809672255804 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3023256937051093263, i64 -8470740780517707659 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8807064613298015146, i64 -682526969396179382 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6397144748195131028, i64 -5464844730172612132 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3384744916816525881, i64 -2219369894288377261 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9032994600651410532, i64 -1387106183930235788 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6679557232386875260, i64 2877803288514593169 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3737760522056206171, i64 3597254110643241461 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -60514634142869810, i64 9108253656731439730 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6955350673980375487, i64 1080972517029761927 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4082502324048081455, i64 5962901664714590313 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -491441886632713915, i64 -6381430974388925821 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7224680206786528053, i64 -8600080377420466542 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4419164240055772162, i64 7696643601933968438 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -912269281642327298, i64 397432465562684740 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7487697328667536418, i64 -4363290727450709941 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4747935642407032618, i64 8380944645968776285 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1323233534581402868, i64 1252808770606194548 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7744549986754458649, i64 -8440366555225904215 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5069001465015685407, i64 7896285879677171347 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1724565812842218855, i64 -3964700705685699528 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7995382660667468640, i64 2133748077373825699 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5382542307406947896, i64 2667185096717282124 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2116491865831296966, i64 3333981370896602654 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8240336443785642460, i64 6695424375237764563 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5688734536304665171, i64 8369280469047205704 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2499232151953443560, i64 -3373457468973156582 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8479549122611984081, i64 -9025939945749304720 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5987750384837592197, i64 7164319141522920716 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2873001962619602342, i64 4343712908476262991 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8713155254278333320, i64 7326506586225052274 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6279758049420528746, i64 9158133232781315342 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3238011543348273028, i64 2224294504121868369 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8941286242233752499, i64 -7833187971778608077 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6564921784364802720, i64 -568112927868484288 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3594466212028615495, i64 3901544858591782543 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9164070410158966541, i64 -4479063491021217766 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6843401994271320272, i64 -5598829363776522208 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3942566474411762436, i64 -2386850686293264856 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -316522074587315140, i64 1628122660560806834 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7115355324258153819, i64 -8205795374004271537 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4282508136895304370, i64 -1033872180650563613 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -741449152691742558, i64 -5904026244240592420 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7380934748073420955, i64 -5995859411864064214 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4614482416664388289, i64 1728547772024695540 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1156417002403097458, i64 -2451001303396518479 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7640289654143017767, i64 5385653213018257807 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4938676049251384305, i64 -7102991539009341454 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1561659043136842477, i64 -8878739423761676818 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7893565929601608404, i64 3674159897003727797 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5255271393574622601, i64 4592699871254659746 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1957403223540890347, i64 1129188820640936779 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8140906042354138323, i64 3011586022114279439 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5564446534515285000, i64 8376168546070237203 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2343872149716718346, i64 -7976533391121755113 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8382449121214030822, i64 1932195658189984911 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5866375383090150624, i64 -6808127464117294670 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2721283210435300376, i64 -3898473311719230433 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8618331034163144591, i64 9092669226243950739 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6161227774276542835, i64 -2469221522477225288 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3089848699418290639, i64 6136845133758244198 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8848684464777513506, i64 -3082000819042179232 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6449169562544503978, i64 -8464187042230111944 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3449775934753242068, i64 3254824252494523782 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9073638986861858149, i64 -7189106879045698444 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6730362715149934782, i64 -8986383598807123056 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3801267375510030573, i64 2602078556773259892 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -139898200960150313, i64 -1359087822460813039 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7004965403241175802, i64 -849429889038008149 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4144520735624081848, i64 -5673473379724898090 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -568964901102714406, i64 -2480155706228734709 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7273132090830278360, i64 -3855940325606653145 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4479729095110460046, i64 -208239388580928527 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -987975350460687153, i64 -4871985254153548563 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7535013621679011327, i64 -3044990783845967852 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4807081008671376254, i64 5417133557047315993 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1397165242411832414, i64 -2451955090545630817 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7790757304148477115, i64 -3838314940804713212 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5126760611758208489, i64 4425478360848884292 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1796764746270372707, i64 920161932633717461 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8040506994060064798, i64 2880944217109767366 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5438947724147693094, i64 -5622191765467566601 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2186998636757228463, i64 6807318348447705460 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8284403175614349646, i64 -2662955059861265943 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5743817951090549153, i64 -7940379843253970333 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2568086420435798537, i64 8521269269642088700 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8522583040413455942, i64 -6203421752542164322 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6041542782089432023, i64 6080780864604458309 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2940242459184402125, i64 -6234081974526590826 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8755180564631333184, i64 5327070802775656542 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6332289687361778576, i64 6658838503469570677 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3303676090774835316, i64 8323548129336963346 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8982326584375353929, i64 -4021154456019173716 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6616222212041804507, i64 -5026443070023967146 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3658591746624867729, i64 2940318199324816876 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9204148869281624187, i64 8755227902219092404 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6893500068174642330, i64 -2891023177508298208 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4005189066790915008, i64 -8225464990312760664 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -394800315061255856, i64 -5670145219463562926 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7164279224554366766, i64 7985374283903742932 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4343663012265570553, i64 758345818024902857 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -817892746904575288, i64 -3663753745896259333 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7428711994456441411, i64 -9207375118826243939 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4674203974643163860, i64 -2285846861678029116 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1231068949876566920, i64 1754377441329851509 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7686947121313936181, i64 1096485900831157193 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4996997883215032323, i64 -3241078642388441413 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -1634561335591402499, i64 5172023733869224042 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7939129862385708418, i64 5538357842881958978 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5312226309554747619, i64 -2300424733252327085 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2028596868516046619, i64 6347841120289366951 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8185402070463610993, i64 6273243709394548297 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5620066569652125837, i64 3229868618315797467 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2413397193637769393, i64 -574350245532641070 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8425902273664687727, i64 -358968903457900669 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -5920691823653471754, i64 8774660907532399972 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -2789178761139451788, i64 1744954097560724157 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8660765753353239224, i64 -8132775725879323210 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6214271173264161126, i64 -5554283638921766109 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3156152948152813503, i64 6892203506629956076 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -8890124620236590296, i64 -2609901835997359308 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6500969756868349965, i64 1349308723430688769 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3514526177658049553, i64 -2925050114139026943 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -9114107888677362827, i64 -1828156321336891839 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -6780948842419315629, i64 6938176635183661009 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -3864500034596756632, i64 4061034775552188357 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -218939024818557886, i64 5076293469440235446 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -7054365918152680535, i64 7784369436827535058 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -4206271379263462765, i64 -4104596259247744890 }, %"struct.YAML::jkj::dragonbox::detail::wuint::uint128" { i64 -646153205651940552, i64 -5130745324059681112 }] }, comdat, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 -1, -2147483648) i32 @_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %3, 1
  %i.b = icmp ult ptr %1, %0
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = zext nneg i32 %3 to i64                  ; 2 uses
  %i.g = icmp slt i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.e, 20
  %or.cond31 = or i1 %i.h, %i.g
  br i1 %or.cond31, label %bb.c, label %.preheader32

.preheader32:                                     ; preds = %bb.b
  %.not33 = icmp eq i64 %2, 0
  br i1 %.not33, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.i = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader32
  %.025.lcssa = phi i32 [ 0, %.preheader32 ], [ %i.i, %.preheader.loopexit ] ; 4 uses
  %i.j = icmp slt i32 %.025.lcssa, %3
  %i.k = zext nneg i32 %.025.lcssa to i64         ; 2 uses
  br i1 %i.j, label %.lr.ph37.preheader, label %._crit_edge

.lr.ph37.preheader:                               ; preds = %.preheader
  %i.l = xor i64 %i.k, -1
  %i.m = xor i32 %.025.lcssa, -1
  %i.n = add i32 %3, %i.m
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = sub nuw nsw i64 %i.l, %i.o
  %scevgep = getelementptr i8, ptr %1, i64 %i.p
  %i.q = add nuw nsw i64 %i.o, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 range(i64 0, 4294967297) %i.q, i1 false), !tbaa !10
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader32, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader32 ] ; 2 uses
  %.02634 = phi i64 [ %i.u, %.lr.ph ], [ %2, %.preheader32 ] ; 3 uses
  %i.r = urem i64 %.02634, 10
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = or disjoint i8 %i.s, 48
  %i.u = udiv i64 %.02634, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = xor i64 %indvars.iv, -1
  %i.w = getelementptr inbounds i8, ptr %1, i64 %i.v
  store i8 %i.t, ptr %i.w, align 1, !tbaa !10
  %.not = icmp ult i64 %.02634, 10
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph37.preheader, %.preheader
  %.pre-phi = phi i64 [ %i.k, %.preheader ], [ %i.f, %.lr.ph37.preheader ] ; 2 uses
  %.1.lcssa = phi i32 [ %.025.lcssa, %.preheader ], [ %3, %.lr.ph37.preheader ]
  %i.x = sub nsw i64 0, %.pre-phi
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.y, i64 %.pre-phi, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.0 = phi i32 [ %.1.lcssa, %._crit_edge ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML10FpToStringB5cxx11Efm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, float noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %2 to i32
  tail call void @_ZN4YAML6detail13fp_formatting10FpToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, float noundef %1, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML6detail13fp_formatting10FpToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, float noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %4 = alloca %"class.std::locale", align 8       ; 2 uses
  %5 = alloca %"struct.std::array", align 1       ; 19 uses
  %i.b = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %6 = alloca %"struct.std::array.0", align 1     ; 10 uses
  %7 = alloca %"struct.std::array", align 2       ; 9 uses
  %i.c = icmp eq i32 %2, 0
  %i.d = select i1 %i.c, i32 6, i32 %2            ; 9 uses
  %or.cond180 = tail call i1 @llvm.is.fpclass.f32(float %1, /* (nan inf zero) */ i32 615)
  br i1 %or.cond180, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.e = load ptr, ptr %3, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.g
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(264) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = fpext float %1 to double
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %i.k)
          to label %_ZNSolsEf.exit unwind label %bb.h ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !17, !alias.scope !43
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !20, !alias.scope !43
  store i8 0, ptr %i.m, align 8, !tbaa !10, !alias.scope !43
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24, !noalias !43 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !noalias !43 ; 2 uses
  %i.s = icmp ugt ptr %i.p, %i.r
  %.08.i.i.i = select i1 %i.s, ptr %i.p, ptr %i.r ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSolsEf.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25, !noalias !43 ; 2 uses
  %i.v = ptrtoint ptr %.08.i.i.i to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.u, i64 noundef %i.x)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !43 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.m
  br i1 %i.ab, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.aa) #12
  br label %.body

bb.g:                                             ; preds = %_ZNSolsEf.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !13
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !13
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.al) #12
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #11
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ap, ptr %3, align 8, !tbaa !13
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %3, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.y

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.z, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.z

bb.i:                                             ; preds = %bb.a
  %i.ax = bitcast float %1 to i32                 ; 2 uses
  %i.ay = lshr i32 %i.ax, 23
  %i.az = and i32 %i.ay, 255
  %i.ba = and i32 %i.ax, -2139095041
  %i.bb = tail call { i64, i8 } @_ZN4YAML3jkj9dragonbox6detail4implINS1_21ieee754_binary_traitsINS1_16ieee754_binary32EjiEEE15compute_nearestINS1_6policy4sign13return_sign_tENS9_13trailing_zero8remove_tENS9_26decimal_to_binary_rounding17nearest_to_even_tENS9_26binary_to_decimal_rounding9to_even_tENS9_5cache6full_tENS9_23preferred_integer_types7match_tEEENS1_10decimal_fpIjNT4_21decimal_exponent_typeIS6_XcviclL_ZNS7_3minEiiEngL_ZNS7_5max_kEEL_ZNS7_5min_kEEEEXcviclL_ZNS7_3maxEiiEL_ZNS7_5max_kEEplplngL_ZNS7_5min_kEEL_ZNS7_5kappaEELi1EEEEEXsrT_15return_has_signEXsrT0_21report_trailing_zerosEEENS1_23signed_significand_bitsIS6_EEi(i32 %i.ba, i32 noundef %i.az) #11 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.bb, 0 ; 3 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.bb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.bd = and i64 %.fca.0.extract, 4294967295     ; 3 uses
  %.not33.i = icmp eq i64 %i.bd, 0
  br i1 %.not33.i, label %.lr.ph37.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.be = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.loopexit185

.lr.ph37.preheader.i:                             ; preds = %bb.i
  %scevgep.i = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 48, ptr %scevgep.i, align 1
  br label %.loopexit185

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %.02634.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %i.bd, %bb.i ] ; 3 uses
  %i.bf = urem i64 %.02634.i, 10
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = udiv i64 %.02634.i, 10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bj = xor i64 %indvars.iv.i, -1
  %i.bk = getelementptr inbounds i8, ptr %i.bc, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !10
  %.not.i = icmp samesign ult i64 %.02634.i, 10
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !0

.loopexit185:                                     ; preds = %.lr.ph37.preheader.i, %.preheader.i
  %.pre-phi.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 1, %.lr.ph37.preheader.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.be, %.preheader.i ], [ 1, %.lr.ph37.preheader.i ] ; 3 uses
  %i.bl = sub nsw i64 0, %.pre-phi.i
  %i.bm = getelementptr inbounds i8, ptr %i.bc, i64 %i.bl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.bm, i64 %.pre-phi.i, i1 false)
  %i.bn = icmp sgt i32 %.1.lcssa.i, %i.d
  br i1 %i.bn, label %bb.j, label %.loopexit184

bb.j:                                             ; preds = %.loopexit185
  %.sroa.054.4.extract.shift = lshr i64 %.fca.0.extract, 32
  %.sroa.054.4.extract.trunc = trunc nuw i64 %.sroa.054.4.extract.shift to i32
  %i.bo = sub i32 %.sroa.054.4.extract.trunc, %i.d
  %i.bp = add i32 %i.bo, %.1.lcssa.i
  %.sroa.054.4.insert.ext = zext i32 %i.bp to i64
  %.sroa.054.4.insert.shift = shl nuw i64 %.sroa.054.4.insert.ext, 32 ; 2 uses
  %.sroa.054.4.insert.insert = or disjoint i64 %.sroa.054.4.insert.shift, %i.bd ; 2 uses
  %i.bq = sext i32 %i.d to i64
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !10
  %i.bt = icmp sgt i8 %i.bs, 52
  br i1 %i.bt, label %bb.k, label %.loopexit184

bb.k:                                             ; preds = %bb.j
  %i.bu = add nsw i32 %i.d, -1
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !10
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !10
  %i.bz = icmp eq i8 %i.by, 58
  br i1 %i.bz, label %.lr.ph.preheader, label %.loopexit184

.lr.ph.preheader:                                 ; preds = %bb.k
  %.sroa.054.4.insert.ext59262 = add i64 %.sroa.054.4.insert.shift, 4294967296 ; 2 uses
  %i.ca = icmp sgt i32 %i.d, 1
  br i1 %i.ca, label %.lr.ph266, label %.lr.ph._crit_edge

.lr.ph:                                           ; preds = %.lr.ph266
  %i.cb = and i64 %.sroa.054.4.insert.ext59265, -4294967296
  %.sroa.054.4.insert.ext59 = add i64 %i.cb, 4294967296 ; 2 uses
  %i.cc = icmp sgt i64 %indvars.iv263, 1
  br i1 %i.cc, label %.lr.ph266, label %.lr.ph._crit_edge, !llvm.loop !37

.lr.ph266:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.054.4.insert.ext59265 = phi i64 [ %.sroa.054.4.insert.ext59, %.lr.ph ], [ %.sroa.054.4.insert.ext59262, %.lr.ph.preheader ] ; 2 uses
  %.0173188264 = phi i32 [ %i.cd, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %indvars.iv263 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.bv, %.lr.ph.preheader ] ; 2 uses
  %i.cd = add nsw i32 %.0173188264, -1            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv263, -1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !10
  %i.cg = add i8 %i.cf, 1                         ; 2 uses
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !10
  %i.ch = icmp eq i8 %i.cg, 58
  br i1 %i.ch, label %.lr.ph, label %.loopexit184, !llvm.loop !37

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.054.4.insert.ext59.lcssa = phi i64 [ %.sroa.054.4.insert.ext59262, %.lr.ph.preheader ], [ %.sroa.054.4.insert.ext59, %.lr.ph ]
  store i8 49, ptr %5, align 1, !tbaa !10
  br label %.loopexit184

.loopexit184:                                     ; preds = %.lr.ph266, %bb.k, %bb.j, %.lr.ph._crit_edge, %.loopexit185
  %.1174 = phi i32 [ 1, %.lr.ph._crit_edge ], [ %.1.lcssa.i, %.loopexit185 ], [ %i.d, %bb.j ], [ %i.d, %bb.k ], [ %i.cd, %.lr.ph266 ] ; 7 uses
  %.sroa.054.3 = phi i64 [ %.sroa.054.4.insert.ext59.lcssa, %.lr.ph._crit_edge ], [ %.fca.0.extract, %.loopexit185 ], [ %.sroa.054.4.insert.insert, %bb.j ], [ %.sroa.054.4.insert.insert, %bb.k ], [ %.sroa.054.4.insert.ext59265, %.lr.ph266 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ci = trunc i8 %.fca.1.extract to i1
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit184
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 45, ptr %6, align 1, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit184
  %.096 = phi ptr [ %i.cj, %bb.l ], [ %6, %.loopexit184 ] ; 9 uses
  %.sroa.054.4.extract.shift64 = lshr i64 %.sroa.054.3, 32
  %.sroa.054.4.extract.trunc65 = trunc nuw i64 %.sroa.054.4.extract.shift64 to i32 ; 3 uses
  %i.ck = add nsw i32 %.1174, %.sroa.054.4.extract.trunc65 ; 9 uses
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, %i.d
  %i.cn = icmp slt i32 %i.ck, -3
  %or.cond = or i1 %i.cm, %i.cn
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.co = load i8, ptr %5, align 1, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %.096, i64 1 ; 2 uses
  store i8 %i.co, ptr %.096, align 1, !tbaa !10
  %i.cq = icmp sgt i32 %.1174, 1
  br i1 %i.cq, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.n
  %i.cr = getelementptr i8, ptr %.096, i64 2
  store i8 46, ptr %i.cp, align 1, !tbaa !10
  %scevgep235 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cs = add nsw i32 %.1174, -1
  %i.ct = zext nneg i32 %i.cs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr nonnull align 1 %scevgep235, i64 range(i64 0, 2147483647) %i.ct, i1 false), !tbaa !10
  %narrow252 = add nuw i32 %.1174, 1
  %i.cu = zext i32 %narrow252 to i64
  %scevgep238 = getelementptr i8, ptr %.096, i64 %i.cu
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %.298 = phi ptr [ %i.cp, %bb.n ], [ %scevgep238, %.loopexit.loopexit ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.298, i64 1
  store i8 101, ptr %.298, align 1, !tbaa !10
  %i.cw = icmp sgt i32 %i.ck, 0
  %i.cx = select i1 %i.cw, i8 43, i8 45
  %i.cy = getelementptr i8, ptr %.298, i64 2
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %.not33.i132 = icmp eq i32 %i.cl, 0
  br i1 %.not33.i132, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %.loopexit
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cl, i1 true)
  %i.db = zext nneg i32 %i.da to i64
  br label %.lr.ph.i133

.preheader.i139:                                  ; preds = %.lr.ph.i133
  %i.dc = icmp eq i64 %indvars.iv.i134, 0
  br i1 %i.dc, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread: ; preds = %.preheader.i139, %.loopexit
  %.neg = phi i64 [ 1, %.preheader.i139 ], [ 2, %.loopexit ]
  %scevgep.i144 = getelementptr inbounds nuw i8, ptr %7, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i144, i8 48, i64 range(i64 0, 4294967297) %.neg, i1 false), !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 18
  %i.de = load i16, ptr %i.dd, align 2
  store i16 %i.de, ptr %7, align 2
  br label %.lr.ph218.preheader

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.preheader, %.lr.ph.i133
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i136, %.lr.ph.i133 ], [ 0, %.lr.ph.i133.preheader ] ; 4 uses
  %.02634.i135 = phi i64 [ %i.di, %.lr.ph.i133 ], [ %i.db, %.lr.ph.i133.preheader ] ; 3 uses
  %i.df = urem i64 %.02634.i135, 10
  %i.dg = trunc nuw nsw i64 %i.df to i8
  %i.dh = or disjoint i8 %i.dg, 48
  %i.di = udiv i64 %.02634.i135, 10
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i134, 1 ; 3 uses
  %i.dj = xor i64 %indvars.iv.i134, -1
  %i.dk = getelementptr inbounds i8, ptr %i.cz, i64 %i.dj
  store i8 %i.dh, ptr %i.dk, align 1, !tbaa !10
  %.not.i137 = icmp samesign ult i64 %.02634.i135, 10
  br i1 %.not.i137, label %.preheader.i139, label %.lr.ph.i133, !llvm.loop !0

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149: ; preds = %.preheader.i139
  %i.dl = trunc nuw nsw i64 %indvars.iv.next.i136 to i32
  %i.dm = xor i64 %indvars.iv.i134, -1
  %i.dn = getelementptr inbounds i8, ptr %i.cz, i64 %i.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.dn, i64 %indvars.iv.next.i136, i1 false)
  br label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread
  %.1.lcssa.i142256 = phi i32 [ 2, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149.thread ], [ %i.dl, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit149 ] ; 2 uses
  %i.do = zext nneg i32 %.1.lcssa.i142256 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr nonnull align 2 %7, i64 range(i64 0, 2147483648) %i.do, i1 false), !tbaa !10
  %narrow253 = add nuw i32 %.1.lcssa.i142256, 2
  %i.dp = zext i32 %narrow253 to i64
  %scevgep242 = getelementptr i8, ptr %.298, i64 %i.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit182

bb.o:                                             ; preds = %bb.m
  %i.dq = sext i32 %.1174 to i64                  ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %5, i64 %i.dq ; 2 uses
  %i.ds = icmp sgt i32 %i.ck, 0
  br i1 %i.ds, label %.preheader183, label %bb.p

.preheader183:                                    ; preds = %bb.o
  %i.dt = icmp sgt i32 %.1174, 0
  br i1 %i.dt, label %.lr.ph195.preheader, label %._crit_edge

.lr.ph195.preheader:                              ; preds = %.preheader183
  %i.du = call i32 @llvm.umin.i32(i32 %.1174, i32 %i.ck)
  %i.dv = zext nneg i32 %i.du to i64              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.096, ptr nonnull align 1 %5, i64 range(i64 0, 2147483648) %i.dv, i1 false), !tbaa !10
  %scevgep = getelementptr i8, ptr %5, i64 %i.dv
  %scevgep230 = getelementptr i8, ptr %.096, i64 %i.dv
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph195.preheader, %.preheader183
  %.5.lcssa = phi ptr [ %.096, %.preheader183 ], [ %scevgep230, %.lr.ph195.preheader ] ; 4 uses
  %.091.lcssa = phi ptr [ %5, %.preheader183 ], [ %scevgep, %.lr.ph195.preheader ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %.5.lcssa to i64
  %i.dz = xor i64 %i.dy, -1
  %i.ea = add i64 %i.dz, %i.dx
  %i.eb = trunc i64 %i.ea to i32                  ; 2 uses
  %i.ec = sub nsw i32 %.sroa.054.4.extract.trunc65, %i.eb
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ec, i32 0)
  %i.ed = call i32 @llvm.smin.i32(i32 %.sroa.054.4.extract.trunc65, i32 %i.eb) ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph201.preheader, label %._crit_edge202

.lr.ph201.preheader:                              ; preds = %._crit_edge
  %i.ef = zext nneg i32 %i.ed to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.5.lcssa, i8 48, i64 range(i64 0, 2147483648) %i.ef, i1 false), !tbaa !10
  %i.eg = zext nneg i32 %i.ed to i64
  %scevgep231 = getelementptr i8, ptr %.5.lcssa, i64 %i.eg
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %.lr.ph201.preheader, %._crit_edge
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge ], [ %scevgep231, %.lr.ph201.preheader ]
  %i.eh = zext nneg i32 %.sroa.speculated to i64
  %.pre = ptrtoaddr ptr %.091.lcssa to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ei = getelementptr inbounds nuw i8, ptr %.096, i64 1
  store i8 48, ptr %.096, align 1, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge202
  %.1233.pre-phi = phi i64 [ %i.b, %bb.p ], [ %.pre, %._crit_edge202 ]
  %.7 = phi ptr [ %i.ei, %bb.p ], [ %.6.lcssa, %._crit_edge202 ] ; 4 uses
  %.094 = phi i64 [ 0, %bb.p ], [ %i.eh, %._crit_edge202 ] ; 5 uses
  %.1 = phi ptr [ %5, %bb.p ], [ %.091.lcssa, %._crit_edge202 ] ; 9 uses
  %.1268 = ptrtoaddr ptr %.1 to i64
  %.not = icmp eq ptr %.1, %i.dr
  br i1 %.not, label %.loopexit182, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 46, ptr %.7, align 1, !tbaa !10
  %.8204 = getelementptr i8, ptr %.7, i64 1       ; 2 uses
  %i.ej = icmp slt i32 %i.ck, 0
  br i1 %i.ej, label %.lr.ph208.preheader, label %.preheader

.lr.ph208.preheader:                              ; preds = %bb.r
  %i.ek = sub nsw i32 0, %i.ck
  %i.el = zext nneg i32 %i.ek to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.8204, i8 48, i64 range(i64 0, 2147483648) %i.el, i1 false), !tbaa !10
  %narrow = sub nsw i32 1, %i.ck
  %i.em = zext nneg i32 %narrow to i64
  %scevgep232 = getelementptr i8, ptr %.7, i64 %i.em
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph208.preheader, %bb.r
  %.8.lcssa = phi ptr [ %.8204, %bb.r ], [ %scevgep232, %.lr.ph208.preheader ] ; 7 uses
  %i.en = icmp ult ptr %.1, %i.dr
  br i1 %i.en, label %iter.check, label %.loopexit182

iter.check:                                       ; preds = %.preheader
  %.8.lcssa267 = ptrtoaddr ptr %.8.lcssa to i64
  %i.eo = add i64 %i.b, %i.dq
  %i.ep = sub i64 %i.eo, %.1233.pre-phi           ; 8 uses
  %scevgep234 = getelementptr i8, ptr %.1, i64 %i.ep
  %min.iters.check = icmp ult i64 %i.ep, 8
  %i.eq = sub i64 %.1268, %.8.lcssa267
  %diff.check = icmp ugt i64 %i.eq, -32
  %or.cond282 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond282, label %.lr.ph212.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check269 = icmp ult i64 %i.ep, 32
  br i1 %min.iters.check269, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.er = and i64 %i.ep, 24
  %n.vec = and i64 %i.ep, -32                     ; 5 uses
  %i.es = getelementptr i8, ptr %.1, i64 %n.vec
  %i.et = getelementptr i8, ptr %.8.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.1, i64 %index ; 2 uses
  %next.gep270 = getelementptr i8, ptr %.8.lcssa, i64 %index ; 2 uses
  %i.eu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !10
  %wide.load271 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !10
  %i.ev = getelementptr i8, ptr %next.gep270, i64 16
  store <16 x i8> %wide.load, ptr %next.gep270, align 1, !tbaa !10
  store <16 x i8> %wide.load271, ptr %i.ev, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  br i1 %cmp.n, label %.loopexit182, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.er, 0
  br i1 %min.epilog.iters.check, label %.lr.ph212.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec273 = and i64 %i.ep, -8                   ; 4 uses
  %i.ex = getelementptr i8, ptr %.1, i64 %n.vec273
  %i.ey = getelementptr i8, ptr %.8.lcssa, i64 %n.vec273 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index274 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next278, %vec.epilog.vector.body ] ; 3 uses
  %next.gep275 = getelementptr i8, ptr %.1, i64 %index274
  %next.gep276 = getelementptr i8, ptr %.8.lcssa, i64 %index274
  %wide.load277 = load <8 x i8>, ptr %next.gep275, align 1, !tbaa !10
  store <8 x i8> %wide.load277, ptr %next.gep276, align 1, !tbaa !10
  %index.next278 = add nuw i64 %index274, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next278, %n.vec273
  br i1 %i.ez, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n279 = icmp eq i64 %i.ep, %n.vec273
  br i1 %cmp.n279, label %.loopexit182, label %.lr.ph212.preheader

.lr.ph212.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2211.ph = phi ptr [ %.1, %iter.check ], [ %i.es, %vec.epilog.iter.check ], [ %i.ex, %vec.epilog.middle.block ]
  %.9210.ph = phi ptr [ %.8.lcssa, %iter.check ], [ %i.et, %vec.epilog.iter.check ], [ %i.ey, %vec.epilog.middle.block ]
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %.lr.ph212
  %.2211 = phi ptr [ %i.fc, %.lr.ph212 ], [ %.2211.ph, %.lr.ph212.preheader ] ; 2 uses
  %.9210 = phi ptr [ %i.fb, %.lr.ph212 ], [ %.9210.ph, %.lr.ph212.preheader ] ; 2 uses
  %i.fa = load i8, ptr %.2211, align 1, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %.9210, i64 1 ; 2 uses
  store i8 %i.fa, ptr %.9210, align 1, !tbaa !10
  %i.fc = getelementptr inbounds nuw i8, ptr %.2211, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.fc, %scevgep234
  br i1 %exitcond.not, label %.loopexit182, label %.lr.ph212, !llvm.loop !40

.loopexit182:                                     ; preds = %.lr.ph212, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.q, %.lr.ph218.preheader
  %.11 = phi ptr [ %scevgep242, %.lr.ph218.preheader ], [ %.7, %bb.q ], [ %.8.lcssa, %.preheader ], [ %i.ey, %vec.epilog.middle.block ], [ %i.et, %middle.block ], [ %i.fb, %.lr.ph212 ] ; 2 uses
  %.195 = phi i64 [ 0, %.lr.ph218.preheader ], [ %.094, %bb.q ], [ %.094, %.preheader ], [ %.094, %vec.epilog.middle.block ], [ %.094, %middle.block ], [ %.094, %.lr.ph212 ]
  store i8 0, ptr %.11, align 1, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.fd, ptr %0, align 8, !tbaa !17
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.fe, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ff = ptrtoint ptr %.11 to i64
  %i.fg = ptrtoint ptr %6 to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 4 uses
  store i64 %i.fh, ptr %i.a, align 8, !tbaa !32
  %i.fi = icmp ugt i64 %i.fh, 15
  br i1 %i.fi, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit182
  %i.fj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.fj, ptr %0, align 8, !tbaa !26
  %i.fk = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.fk, ptr %i.fd, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %.loopexit182
  %i.fl = phi ptr [ %i.fj, %.noexc ], [ %i.fd, %.loopexit182 ] ; 2 uses
  switch i64 %i.fh, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.fm = load i8, ptr %6, align 1, !tbaa !10
  store i8 %i.fm, ptr %i.fl, align 1, !tbaa !10
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fl, ptr nonnull align 1 %6, i64 %i.fh, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  store i64 %i.fn, ptr %i.fe, align 8, !tbaa !20
  %i.fo = load ptr, ptr %0, align 8, !tbaa !26
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fn
  store i8 0, ptr %i.fp, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.fq = load i64, ptr %i.fe, align 8, !tbaa !20
  %i.fr = add i64 %i.fq, %.195
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fr, i8 noundef signext 48)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %.noexc.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.w:                                             ; preds = %bb.u
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.fd
  br i1 %i.fv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.fu) #12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.w, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %i.fs, %bb.v ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ft, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.body
  %.pn116 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  resume { ptr, i32 } %.pn116
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML10FpToStringB5cxx11Edm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %2 to i32
  tail call void @_ZN4YAML6detail13fp_formatting10FpToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4YAML6detail13fp_formatting10FpToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %4 = alloca %"class.std::locale", align 8       ; 2 uses
  %5 = alloca %"struct.std::array", align 1       ; 19 uses
  %i.b = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %6 = alloca %"struct.std::array.0", align 1     ; 10 uses
  %7 = alloca %"struct.std::array", align 2       ; 9 uses
  %i.c = icmp eq i32 %2, 0
  %i.d = select i1 %i.c, i32 6, i32 %2            ; 9 uses
  %or.cond175 = tail call i1 @llvm.is.fpclass.f64(double %1, /* (nan inf zero) */ i32 615)
end_hunk_0
begin_hunk_1_@_ZN4YAML6detail13fp_formatting10FpToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_i:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.z) #12
  br label %.body

bb.g:                                             ; preds = %_ZNSolsEd.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !13
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !13
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.ak) #12
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #11
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !13
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.au) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.y

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.y, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.z

bb.i:                                             ; preds = %bb.a
  %i.aw = bitcast double %1 to i64                ; 2 uses
  %i.ax = lshr i64 %i.aw, 52
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 2047
  %i.ba = and i64 %i.aw, -9218868437227405313
  %i.bb = tail call { i64, i64 } @_ZN4YAML3jkj9dragonbox6detail4implINS1_21ieee754_binary_traitsINS1_16ieee754_binary64EmiEEE15compute_nearestINS1_6policy4sign13return_sign_tENS9_13trailing_zero8remove_tENS9_26decimal_to_binary_rounding17nearest_to_even_tENS9_26binary_to_decimal_rounding9to_even_tENS9_5cache6full_tENS9_23preferred_integer_types7match_tEEENS1_10decimal_fpImNT4_21decimal_exponent_typeIS6_XcviclL_ZNS7_3minEiiEngL_ZNS7_5max_kEEL_ZNS7_5min_kEEEEXcviclL_ZNS7_3maxEiiEL_ZNS7_5max_kEEplplngL_ZNS7_5min_kEEL_ZNS7_5kappaEELi1EEEEEXsrT_15return_has_signEXsrT0_21report_trailing_zerosEEENS1_23signed_significand_bitsIS6_EEi(i64 %i.ba, i32 noundef %i.az) #11 ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bb, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.not33.i = icmp eq i64 %i.bc, 0
  br i1 %.not33.i, label %.lr.ph37.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.bf = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.loopexit180

.lr.ph37.preheader.i:                             ; preds = %bb.i
  %scevgep.i = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 48, ptr %scevgep.i, align 1
  br label %.loopexit180

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %.02634.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %i.bc, %bb.i ] ; 3 uses
  %i.bg = urem i64 %.02634.i, 10
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  %i.bi = or disjoint i8 %i.bh, 48
  %i.bj = udiv i64 %.02634.i, 10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bk = xor i64 %indvars.iv.i, -1
  %i.bl = getelementptr inbounds i8, ptr %i.be, i64 %i.bk
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !10
  %.not.i = icmp ult i64 %.02634.i, 10
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !0

.loopexit180:                                     ; preds = %.lr.ph37.preheader.i, %.preheader.i
  %.pre-phi.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 1, %.lr.ph37.preheader.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %i.bf, %.preheader.i ], [ 1, %.lr.ph37.preheader.i ] ; 3 uses
  %i.bm = sub nsw i64 0, %.pre-phi.i
  %i.bn = getelementptr inbounds i8, ptr %i.be, i64 %i.bm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i64 %.pre-phi.i, i1 false)
  %i.bo = icmp sgt i32 %.1.lcssa.i, %i.d
  br i1 %i.bo, label %bb.j, label %.loopexit179

bb.j:                                             ; preds = %.loopexit180
  %.sroa.5.8.extract.trunc = trunc i64 %i.bd to i32
  %i.bp = sub i32 %.sroa.5.8.extract.trunc, %i.d
  %i.bq = add i32 %i.bp, %.1.lcssa.i
  %.sroa.5.8.insert.ext = zext i32 %i.bq to i64   ; 2 uses
  %.sroa.5.8.insert.mask = and i64 %i.bd, -4294967296 ; 2 uses
  %.sroa.5.8.insert.insert = or disjoint i64 %.sroa.5.8.insert.mask, %.sroa.5.8.insert.ext ; 2 uses
  %i.br = sext i32 %i.d to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !10
  %i.bu = icmp sgt i8 %i.bt, 52
  br i1 %i.bu, label %bb.k, label %.loopexit179

bb.k:                                             ; preds = %bb.j
  %i.bv = add nsw i32 %i.d, -1
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.bz = add i8 %i.by, 1                         ; 2 uses
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !10
  %i.ca = icmp eq i8 %i.bz, 58
  br i1 %i.ca, label %.lr.ph.preheader, label %.loopexit179

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.cb = add nuw nsw i64 %.sroa.5.8.insert.ext, 1
  %.sroa.5.8.insert.ext57257 = and i64 %i.cb, 4294967295
  %.sroa.5.8.insert.insert59259 = or disjoint i64 %.sroa.5.8.insert.ext57257, %.sroa.5.8.insert.mask ; 2 uses
  %i.cc = icmp sgt i32 %i.d, 1
  br i1 %i.cc, label %.lr.ph263, label %.lr.ph._crit_edge

.lr.ph:                                           ; preds = %.lr.ph263
  %i.cd = add i64 %.sroa.5.8.insert.insert59262, 1
  %.sroa.5.8.insert.ext57 = and i64 %i.cd, 4294967295
  %.sroa.5.8.insert.mask58 = and i64 %.sroa.5.8.insert.insert59262, -4294967296
  %.sroa.5.8.insert.insert59 = or disjoint i64 %.sroa.5.8.insert.ext57, %.sroa.5.8.insert.mask58 ; 2 uses
  %i.ce = icmp sgt i64 %indvars.iv260, 1
  br i1 %i.ce, label %.lr.ph263, label %.lr.ph._crit_edge, !llvm.loop !48

.lr.ph263:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.5.8.insert.insert59262 = phi i64 [ %.sroa.5.8.insert.insert59, %.lr.ph ], [ %.sroa.5.8.insert.insert59259, %.lr.ph.preheader ] ; 3 uses
  %.0168183261 = phi i32 [ %i.cf, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %indvars.iv260 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.bw, %.lr.ph.preheader ] ; 2 uses
  %i.cf = add nsw i32 %.0168183261, -1            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv260, -1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !10
  %i.ci = add i8 %i.ch, 1                         ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !10
  %i.cj = icmp eq i8 %i.ci, 58
  br i1 %i.cj, label %.lr.ph, label %.loopexit179, !llvm.loop !48

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.5.8.insert.insert59.lcssa = phi i64 [ %.sroa.5.8.insert.insert59259, %.lr.ph.preheader ], [ %.sroa.5.8.insert.insert59, %.lr.ph ]
  store i8 49, ptr %5, align 1, !tbaa !10
  br label %.loopexit179

.loopexit179:                                     ; preds = %.lr.ph263, %bb.k, %bb.j, %.lr.ph._crit_edge, %.loopexit180
  %.1169 = phi i32 [ 1, %.lr.ph._crit_edge ], [ %.1.lcssa.i, %.loopexit180 ], [ %i.d, %bb.j ], [ %i.d, %bb.k ], [ %i.cf, %.lr.ph263 ] ; 7 uses
  %.sroa.5.3 = phi i64 [ %.sroa.5.8.insert.insert59.lcssa, %.lr.ph._crit_edge ], [ %i.bd, %.loopexit180 ], [ %.sroa.5.8.insert.insert, %bb.j ], [ %.sroa.5.8.insert.insert, %bb.k ], [ %.sroa.5.8.insert.insert59262, %.lr.ph263 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.ck = and i64 %.sroa.5.3, 4294967296
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit179
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 45, ptr %6, align 1, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit179
  %.090 = phi ptr [ %i.cl, %bb.l ], [ %6, %.loopexit179 ] ; 9 uses
  %.sroa.5.8.extract.trunc61 = trunc i64 %.sroa.5.3 to i32 ; 3 uses
  %i.cm = add nsw i32 %.1169, %.sroa.5.8.extract.trunc61 ; 9 uses
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  %i.co = icmp sgt i32 %i.cm, %i.d
  %i.cp = icmp slt i32 %i.cm, -3
  %or.cond = or i1 %i.co, %i.cp
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = load i8, ptr %5, align 1, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.090, i64 1 ; 2 uses
  store i8 %i.cq, ptr %.090, align 1, !tbaa !10
  %i.cs = icmp sgt i32 %.1169, 1
  br i1 %i.cs, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.n
  %i.ct = getelementptr i8, ptr %.090, i64 2
  store i8 46, ptr %i.cr, align 1, !tbaa !10
  %scevgep230 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cu = add nsw i32 %.1169, -1
  %i.cv = zext nneg i32 %i.cu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr nonnull align 1 %scevgep230, i64 range(i64 0, 2147483647) %i.cv, i1 false), !tbaa !10
  %narrow247 = add nuw i32 %.1169, 1
  %i.cw = zext i32 %narrow247 to i64
  %scevgep233 = getelementptr i8, ptr %.090, i64 %i.cw
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %.292 = phi ptr [ %i.cr, %bb.n ], [ %scevgep233, %.loopexit.loopexit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.292, i64 1
  store i8 101, ptr %.292, align 1, !tbaa !10
  %i.cy = icmp sgt i32 %i.cm, 0
  %i.cz = select i1 %i.cy, i8 43, i8 45
  %i.da = getelementptr i8, ptr %.292, i64 2
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %.not33.i127 = icmp eq i32 %i.cn, 0
  br i1 %.not33.i127, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %.loopexit
  %i.dc = tail call i32 @llvm.abs.i32(i32 %i.cn, i1 true)
  %i.dd = zext nneg i32 %i.dc to i64
  br label %.lr.ph.i128

.preheader.i134:                                  ; preds = %.lr.ph.i128
  %i.de = icmp eq i64 %indvars.iv.i129, 0
  br i1 %i.de, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread, label %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread: ; preds = %.preheader.i134, %.loopexit
  %.neg = phi i64 [ 1, %.preheader.i134 ], [ 2, %.loopexit ]
  %scevgep.i139 = getelementptr inbounds nuw i8, ptr %7, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i139, i8 48, i64 range(i64 0, 4294967297) %.neg, i1 false), !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 18
  %i.dg = load i16, ptr %i.df, align 2
  store i16 %i.dg, ptr %7, align 2
  br label %.lr.ph213.preheader

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader, %.lr.ph.i128
  %indvars.iv.i129 = phi i64 [ %indvars.iv.next.i131, %.lr.ph.i128 ], [ 0, %.lr.ph.i128.preheader ] ; 4 uses
  %.02634.i130 = phi i64 [ %i.dk, %.lr.ph.i128 ], [ %i.dd, %.lr.ph.i128.preheader ] ; 3 uses
  %i.dh = urem i64 %.02634.i130, 10
  %i.di = trunc nuw nsw i64 %i.dh to i8
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = udiv i64 %.02634.i130, 10
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i129, 1 ; 3 uses
  %i.dl = xor i64 %indvars.iv.i129, -1
  %i.dm = getelementptr inbounds i8, ptr %i.db, i64 %i.dl
  store i8 %i.dj, ptr %i.dm, align 1, !tbaa !10
  %.not.i132 = icmp samesign ult i64 %.02634.i130, 10
  br i1 %.not.i132, label %.preheader.i134, label %.lr.ph.i128, !llvm.loop !0

_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144: ; preds = %.preheader.i134
  %i.dn = trunc nuw nsw i64 %indvars.iv.next.i131 to i32
  %i.do = xor i64 %indvars.iv.i129, -1
  %i.dp = getelementptr inbounds i8, ptr %i.db, i64 %i.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.dp, i64 %indvars.iv.next.i131, i1 false)
  br label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread
  %.1.lcssa.i137251 = phi i32 [ 2, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144.thread ], [ %i.dn, %_ZN4YAML6detail13fp_formatting14ConvertToCharsEPcS2_mi.exit144 ] ; 2 uses
  %i.dq = zext nneg i32 %.1.lcssa.i137251 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr nonnull align 2 %7, i64 range(i64 0, 2147483648) %i.dq, i1 false), !tbaa !10
  %narrow248 = add nuw i32 %.1.lcssa.i137251, 2
  %i.dr = zext i32 %narrow248 to i64
  %scevgep237 = getelementptr i8, ptr %.292, i64 %i.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit177

bb.o:                                             ; preds = %bb.m
  %i.ds = sext i32 %.1169 to i64                  ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %5, i64 %i.ds ; 2 uses
  %i.du = icmp sgt i32 %i.cm, 0
  br i1 %i.du, label %.preheader178, label %bb.p

.preheader178:                                    ; preds = %bb.o
  %i.dv = icmp sgt i32 %.1169, 0
  br i1 %i.dv, label %.lr.ph190.preheader, label %._crit_edge

.lr.ph190.preheader:                              ; preds = %.preheader178
  %i.dw = call i32 @llvm.umin.i32(i32 %.1169, i32 %i.cm)
  %i.dx = zext nneg i32 %i.dw to i64              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.090, ptr nonnull align 1 %5, i64 range(i64 0, 2147483648) %i.dx, i1 false), !tbaa !10
  %scevgep = getelementptr i8, ptr %5, i64 %i.dx
  %scevgep225 = getelementptr i8, ptr %.090, i64 %i.dx
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph190.preheader, %.preheader178
  %.5.lcssa = phi ptr [ %.090, %.preheader178 ], [ %scevgep225, %.lr.ph190.preheader ] ; 4 uses
  %.085.lcssa = phi ptr [ %5, %.preheader178 ], [ %scevgep, %.lr.ph190.preheader ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.5.lcssa to i64
  %i.eb = xor i64 %i.ea, -1
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = sub nsw i32 %.sroa.5.8.extract.trunc61, %i.ed
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.ef = call i32 @llvm.smin.i32(i32 %.sroa.5.8.extract.trunc61, i32 %i.ed) ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph196.preheader, label %._crit_edge197

.lr.ph196.preheader:                              ; preds = %._crit_edge
  %i.eh = zext nneg i32 %i.ef to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.5.lcssa, i8 48, i64 range(i64 0, 2147483648) %i.eh, i1 false), !tbaa !10
  %i.ei = zext nneg i32 %i.ef to i64
  %scevgep226 = getelementptr i8, ptr %.5.lcssa, i64 %i.ei
  br label %._crit_edge197

._crit_edge197:                                   ; preds = %.lr.ph196.preheader, %._crit_edge
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge ], [ %scevgep226, %.lr.ph196.preheader ]
  %i.ej = zext nneg i32 %.sroa.speculated to i64
  %.pre = ptrtoaddr ptr %.085.lcssa to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %.090, i64 1
  store i8 48, ptr %.090, align 1, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge197
  %.1228.pre-phi = phi i64 [ %i.b, %bb.p ], [ %.pre, %._crit_edge197 ]
  %.7 = phi ptr [ %i.ek, %bb.p ], [ %.6.lcssa, %._crit_edge197 ] ; 4 uses
  %.088 = phi i64 [ 0, %bb.p ], [ %i.ej, %._crit_edge197 ] ; 5 uses
  %.1 = phi ptr [ %5, %bb.p ], [ %.085.lcssa, %._crit_edge197 ] ; 9 uses
  %.1265 = ptrtoaddr ptr %.1 to i64
  %.not106 = icmp eq ptr %.1, %i.dt
  br i1 %.not106, label %.loopexit177, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 46, ptr %.7, align 1, !tbaa !10
  %.8199 = getelementptr i8, ptr %.7, i64 1       ; 2 uses
  %i.el = icmp slt i32 %i.cm, 0
  br i1 %i.el, label %.lr.ph203.preheader, label %.preheader

.lr.ph203.preheader:                              ; preds = %bb.r
  %i.em = sub nsw i32 0, %i.cm
  %i.en = zext nneg i32 %i.em to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.8199, i8 48, i64 range(i64 0, 2147483648) %i.en, i1 false), !tbaa !10
  %narrow = sub nsw i32 1, %i.cm
  %i.eo = zext nneg i32 %narrow to i64
  %scevgep227 = getelementptr i8, ptr %.7, i64 %i.eo
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph203.preheader, %bb.r
  %.8.lcssa = phi ptr [ %.8199, %bb.r ], [ %scevgep227, %.lr.ph203.preheader ] ; 7 uses
  %i.ep = icmp ult ptr %.1, %i.dt
  br i1 %i.ep, label %iter.check, label %.loopexit177

iter.check:                                       ; preds = %.preheader
  %.8.lcssa264 = ptrtoaddr ptr %.8.lcssa to i64
  %i.eq = add i64 %i.b, %i.ds
  %i.er = sub i64 %i.eq, %.1228.pre-phi           ; 8 uses
  %scevgep229 = getelementptr i8, ptr %.1, i64 %i.er
  %min.iters.check = icmp ult i64 %i.er, 8
  %i.es = sub i64 %.1265, %.8.lcssa264
  %diff.check = icmp ugt i64 %i.es, -32
  %or.cond279 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond279, label %.lr.ph207.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check266 = icmp ult i64 %i.er, 32
  br i1 %min.iters.check266, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.et = and i64 %i.er, 24
  %n.vec = and i64 %i.er, -32                     ; 5 uses
  %i.eu = getelementptr i8, ptr %.1, i64 %n.vec
  %i.ev = getelementptr i8, ptr %.8.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.1, i64 %index ; 2 uses
  %next.gep267 = getelementptr i8, ptr %.8.lcssa, i64 %index ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !10
  %wide.load268 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !10
  %i.ex = getelementptr i8, ptr %next.gep267, i64 16
  store <16 x i8> %wide.load, ptr %next.gep267, align 1, !tbaa !10
  store <16 x i8> %wide.load268, ptr %i.ex, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %.loopexit177, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check, label %.lr.ph207.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec270 = and i64 %i.er, -8                   ; 4 uses
  %i.ez = getelementptr i8, ptr %.1, i64 %n.vec270
  %i.fa = getelementptr i8, ptr %.8.lcssa, i64 %n.vec270 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index271 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next275, %vec.epilog.vector.body ] ; 3 uses
  %next.gep272 = getelementptr i8, ptr %.1, i64 %index271
  %next.gep273 = getelementptr i8, ptr %.8.lcssa, i64 %index271
  %wide.load274 = load <8 x i8>, ptr %next.gep272, align 1, !tbaa !10
  store <8 x i8> %wide.load274, ptr %next.gep273, align 1, !tbaa !10
  %index.next275 = add nuw i64 %index271, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next275, %n.vec270
  br i1 %i.fb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n276 = icmp eq i64 %i.er, %n.vec270
  br i1 %cmp.n276, label %.loopexit177, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2206.ph = phi ptr [ %.1, %iter.check ], [ %i.eu, %vec.epilog.iter.check ], [ %i.ez, %vec.epilog.middle.block ]
  %.9205.ph = phi ptr [ %.8.lcssa, %iter.check ], [ %i.ev, %vec.epilog.iter.check ], [ %i.fa, %vec.epilog.middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %.lr.ph207
  %.2206 = phi ptr [ %i.fe, %.lr.ph207 ], [ %.2206.ph, %.lr.ph207.preheader ] ; 2 uses
  %.9205 = phi ptr [ %i.fd, %.lr.ph207 ], [ %.9205.ph, %.lr.ph207.preheader ] ; 2 uses
  %i.fc = load i8, ptr %.2206, align 1, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %.9205, i64 1 ; 2 uses
  store i8 %i.fc, ptr %.9205, align 1, !tbaa !10
  %i.fe = getelementptr inbounds nuw i8, ptr %.2206, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.fe, %scevgep229
  br i1 %exitcond.not, label %.loopexit177, label %.lr.ph207, !llvm.loop !51

.loopexit177:                                     ; preds = %.lr.ph207, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.q, %.lr.ph213.preheader
  %.11 = phi ptr [ %scevgep237, %.lr.ph213.preheader ], [ %.7, %bb.q ], [ %.8.lcssa, %.preheader ], [ %i.fa, %vec.epilog.middle.block ], [ %i.ev, %middle.block ], [ %i.fd, %.lr.ph207 ] ; 2 uses
  %.189 = phi i64 [ 0, %.lr.ph213.preheader ], [ %.088, %bb.q ], [ %.088, %.preheader ], [ %.088, %vec.epilog.middle.block ], [ %.088, %middle.block ], [ %.088, %.lr.ph207 ]
  store i8 0, ptr %.11, align 1, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ff, ptr %0, align 8, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.fg, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.fh = ptrtoint ptr %.11 to i64
  %i.fi = ptrtoint ptr %6 to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 4 uses
  store i64 %i.fj, ptr %i.a, align 8, !tbaa !32
  %i.fk = icmp ugt i64 %i.fj, 15
  br i1 %i.fk, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit177
  %i.fl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.fl, ptr %0, align 8, !tbaa !26
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.fm, ptr %i.ff, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %.loopexit177
  %i.fn = phi ptr [ %i.fl, %.noexc ], [ %i.ff, %.loopexit177 ] ; 2 uses
  switch i64 %i.fj, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.fo = load i8, ptr %6, align 1, !tbaa !10
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !10
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr nonnull align 1 %6, i64 %i.fj, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.fp = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  store i64 %i.fp, ptr %i.fg, align 8, !tbaa !20
  %i.fq = load ptr, ptr %0, align 8, !tbaa !26
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fp
  store i8 0, ptr %i.fr, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.fs = load i64, ptr %i.fg, align 8, !tbaa !20
  %i.ft = add i64 %i.fs, %.189
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ft, i8 noundef signext 48)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %.noexc.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.w:                                             ; preds = %bb.u
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ff
  br i1 %i.fx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.fw) #12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.w, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %i.fu, %bb.v ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fv, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.body
  %.pn111 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  resume { ptr, i32 } %.pn111
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML10FpToStringB5cxx11Eem(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, x86_fp80 noundef %1, i64 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %4 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11
  %i.f = icmp eq i64 %2, 0
end_hunk_1
