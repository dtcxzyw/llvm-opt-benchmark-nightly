Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/softfloat?download=true
inline.NumInlined: 660
inline.NumDeleted: 103
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.cv::softdouble" = type { i64 }
%"struct.cv::softfloat" = type { i32 }

@_ZN2cvL14EXPPOLY_32F_A0E = internal constant %"struct.cv::softdouble" { i64 4576728211203224625 }, align 8
@_ZN2cvL12exp_prescaleE = internal constant %"struct.cv::softdouble" { i64 4636197737785426686 }, align 8
@_ZN2cvL13exp_postscaleE = internal constant %"struct.cv::softdouble" { i64 4580160821035794432 }, align 8
@_ZN2cvL4ln_2E = internal constant %"struct.cv::softdouble" { i64 4604418534313441775 }, align 8
@_ZN2cvL5piby4E = internal constant %"struct.cv::softdouble" { i64 4605249457297304856 }, align 8
@_ZN2cvL2S1E = internal constant %"struct.cv::softdouble" { i64 -4628199217061079735 }, align 8
@_ZN2cvL2S2E = internal constant %"struct.cv::softdouble" { i64 4575957461383575718 }, align 8
@_ZN2cvL2S3E = internal constant %"struct.cv::softdouble" { i64 -4671919876304969259 }, align 8
@_ZN2cvL2S4E = internal constant %"struct.cv::softdouble" { i64 4523617212983017085 }, align 8
@_ZN2cvL2S5E = internal constant %"struct.cv::softdouble" { i64 -4730215680275931925 }, align 8
@_ZN2cvL2S6E = internal constant %"struct.cv::softdouble" { i64 4460209850635244924 }, align 8
@_ZN2cvL2C1E = internal constant %"struct.cv::softdouble" { i64 4586165620538955084 }, align 8
@_ZN2cvL2C2E = internal constant %"struct.cv::softdouble" { i64 -4659324094485802633 }, align 8
@_ZN2cvL2C3E = internal constant %"struct.cv::softdouble" { i64 4537941361668330896 }, align 8
@_ZN2cvL2C4E = internal constant %"struct.cv::softdouble" { i64 -4714566979978243411 }, align 8
@_ZN2cvL2C5E = internal constant %"struct.cv::softdouble" { i64 4477121870137962948 }, align 8
@_ZN2cvL2C6E = internal constant %"struct.cv::softdouble" { i64 -4780295122622859052 }, align 8
@_ZN2cvL28softfloat_countLeadingZeros8E = internal unnamed_addr constant <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, align 16
@_ZN2cvL30softfloat_approxRecipSqrt_1k0sE = internal unnamed_addr constant [16 x i16] [i16 -19255, i16 -85, i16 -21891, i16 -3812, i16 -24123, i16 -6969, i16 -26045, i16 -9687, i16 -27723, i16 -12059, i16 -29203, i16 -14153, i16 -30522, i16 -16019, i16 -31708, i16 -17695], align 16
@_ZN2cvL30softfloat_approxRecipSqrt_1k1sE = internal unnamed_addr constant [16 x i16] [i16 -23131, i16 -5566, i16 -29663, i16 -14803, i16 30863, i16 -21889, i16 26920, i16 -27466, i16 23751, i16 -31947, i16 21158, i16 29922, i16 19006, i16 26878, i16 17195, i16 24317], align 16
@_ZZN2cvL7f32_expENS_9softfloatEE2A4 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f32_expENS_9softfloatEE2A4 = internal global i64 0, align 8
@_ZZN2cvL7f32_expENS_9softfloatEE2A3 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f32_expENS_9softfloatEE2A3 = internal global i64 0, align 8
@_ZZN2cvL7f32_expENS_9softfloatEE2A2 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f32_expENS_9softfloatEE2A2 = internal global i64 0, align 8
@_ZZN2cvL7f32_expENS_9softfloatEE2A1 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f32_expENS_9softfloatEE2A1 = internal global i64 0, align 8
@_ZN2cvL6expTabE = internal unnamed_addr constant [64 x i64] [i64 4607182418800017408, i64 4607231459784622177, i64 4607281034790536564, i64 4607331149632871368, i64 4607381810190059791, i64 4607433022404546978, i64 4607484792283487057, i64 4607537125899447776, i64 4607590029391122811, i64 4607643508964051829, i64 4607697570891348394, i64 4607752221514435798, i64 4607807467243790904, i64 4607863314559696093, i64 4607919770012999393, i64 4607976840225882891, i64 4608034531892639509, i64 4608092851780458239, i64 4608151806730217931, i64 4608211403657289719, i64 4608271649552348194, i64 4608332551482191402, i64 4608394116590569773, i64 4608456352099024080, i64 4608519265307732519, i64 4608582863596367015, i64 4608647154424958850, i64 4608712145334773722, i64 4608777843949196329, i64 4608844257974624584, i64 4608911395201373573, i64 4608979263504589349, i64 4609047870845172685, i64 4609117225270712879, i64 4609187334916431732, i64 4609258208006137801, i64 4609329852853191047, i64 4609402277861477986, i64 4609475491526397459, i64 4609549502435857133, i64 4609624319271280859, i64 4609699950808626998, i64 4609776405919417829, i64 4609853693571780176, i64 4609931822831497360, i64 4610010802863072613, i64 4610090642930804061, i64 4610171352399871423, i64 4610252940737434541, i64 4610335417513743867, i64 4610418792403263047, i64 4610503075185803730, i64 4610588275747672732, i64 4610674404082831691, i64 4610761470294069353, i64 4610849484594186620, i64 4610938457307194503, i64 4611028398869525125, i64 4611119319831255903, i64 4611211230857347062, i64 4611304142728892634, i64 4611398066344385063, i64 4611493012720993600, i64 4611588992995856600], align 16
@_ZZN2cvL7f64_expENS_10softdoubleEE2A5 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_expENS_10softdoubleEE2A5 = internal global i64 0, align 8
@_ZZN2cvL7f64_expENS_10softdoubleEE2A4 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_expENS_10softdoubleEE2A4 = internal global i64 0, align 8
@_ZZN2cvL7f64_expENS_10softdoubleEE2A3 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_expENS_10softdoubleEE2A3 = internal global i64 0, align 8
@_ZZN2cvL7f64_expENS_10softdoubleEE2A2 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_expENS_10softdoubleEE2A2 = internal global i64 0, align 8
@_ZZN2cvL7f64_expENS_10softdoubleEE2A1 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_expENS_10softdoubleEE2A1 = internal global i64 0, align 8
@_ZZN2cvL7f64_expENS_10softdoubleEE2A0 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_expENS_10softdoubleEE2A0 = internal global i64 0, align 8
@_ZN2cvL9icvLogTabE = internal unnamed_addr constant [512 x i64] [i64 0, i64 4607182418800017408, i64 4571136075274193856, i64 4607147371332100128, i64 4575622219221198728, i64 4607112595549980656, i64 4577869745348479606, i64 4607078088306719250, i64 4580091176815428579, i64 4607043846503790624, i64 4581232450864588148, i64 4607009867090156469, i64 4582334671619469594, i64 4606976147061359217, i64 4583432693427966359, i64 4606942683458636469, i64 4584526548160754432, i64 4606909473368055560, i64 4585140343995095423, i64 4606876513919667714, i64 4585683151371550047, i64 4606843802286681280, i64 4586223921942553812, i64 4606811335684653547, i64 4586762670936612092, i64 4606779111370700647, i64 4587299413412078571, i64 4606747126642725092, i64 4587834164259680702, i64 4606715378838660468, i64 4588366938204998482, i64 4606683865335732851, i64 4588897749810897574, i64 4606652583549738526, i64 4589297316885226609, i64 4606621530934337566, i64 4589560781873576672, i64 4606590704980362890, i64 4589823287060206614, i64 4606560103215144394, i64 4590084839412847056, i64 4606529723201847771, i64 4590345445823629040, i64 4606499562538827658, i64 4590605113110173759, i64 4606469618858994740, i64 4590863848016662723, i64 4606439889829196466, i64 4591121657214888779, i64 4606410373149611037, i64 4591378547305288396, i64 4606381066553154330, i64 4591634524817955616, i64 4606351967804899444, i64 4591889596213638060, i64 4606323074701508550, i64 4592143767884715363, i64 4606294385070676747, i64 4592397046156160417, i64 4606265896770587623, i64 4592649437286483779, i64 4606237607689380241, i64 4592900947468661597, i64 4606209515744627266, i64 4593151582831047397, i64 4606181618882823964, i64 4593401349438268070, i64 4606153915078887814, i64 4593650253292104378, i64 4606126402335668464, i64 4593784960125131118, i64 4606099078683467804, i64 4593908558177799769, i64 4606071942179569888, i64 4594031733672198828, i64 4606044990907780491, i64 4594154489487779744, i64 4606018222977976055, i64 4594276828474661579, i64 4605991636525661819, i64 4594398753454028067, i64 4605965229711538896, i64 4594520267218517970, i64 4605939000721080099, i64 4594641372532608884, i64 4605912947764114315, i64 4594762072132994601, i64 4605887069074419205, i64 4594882368728956190, i64 4605861362909322063, i64 4595002265002726885, i64 4605835827549308622, i64 4595121763609850935, i64 4605810461297639641, i64 4595240867179536517, i64 4605785262479975076, i64 4595359578315002835, i64 4605760229444005672, i64 4595477899593821520, i64 4605735360559091806, i64 4595595833568252444, i64 4605710654215909403, i64 4595713382765574052, i64 4605686108826102781, i64 4595830549688408329, i64 4605661722821944254, i64 4595947336815040490, i64 4605637494656000345, i64 4596063746599733520, i64 4605613422800804461, i64 4596179781473037632, i64 4605589505748535882, i64 4596295443842094772, i64 4605565742010704922, i64 4596410736090938243, i64 4605542130117844128, i64 4596525660580787555, i64 4605518668619205378, i64 4596640219650338584, i64 4605495356082462746, i64 4596754415616049138, i64 4605472191093421017, i64 4596868250772420004, i64 4605449172255729709, i64 4596981727392271574, i64 4605426298190602498, i64 4597094847727016128, i64 4605403567536541914, i64 4597207614006925857, i64 4605380978949069210, i64 4597320028441396700, i64 4605358531100459263, i64 4597432093219208081, i64 4605336222679480434, i64 4597543810508778621, i64 4605314052391139246, i64 4597655182458417893, i64 4605292018956429792, i64 4597766211196574303, i64 4605270121112087782, i64 4597876898832079158, i64 4605248357610349097, i64 4597987247454386999, i64 4605226727218712789, i64 4598097259133812266, i64 4605205228719708410, i64 4598191077733519388, i64 4605183860910667583, i64 4598245749698121792, i64 4605162622603499731, i64 4598300256240490765, i64 4605141512624471866, i64 4598354598358651107, i64 4605120529813992362, i64 4598408777041622859, i64 4605099673026398620, i64 4598462793269529301, i64 4605078941129748554, i64 4598516648013703344, i64 4605058333005615801, i64 4598570342236792334, i64 4605037847548888600, i64 4598623876892861295, i64 4605017483667572244, i64 4598677252927494650, i64 4604997240282595037, i64 4598730471277896434, i64 4604977116327617696, i64 4598783532872989029, i64 4604957110748846104, i64 4598836438633510457, i64 4604937222504847366, i64 4598889189472110243, i64 4604917450566369088, i64 4598941786293443876, i64 4604897793916161821, i64 4598994229994265904, i64 4604878251548804596, i64 4599046521463521668, i64 4604858822470533500, i64 4599098661582437716, i64 4604839505699073219, i64 4599150651224610906, i64 4604820300263471499, i64 4599202491256096233, i64 4604801205203936456, i64 4599254182535493391, i64 4604782219571676685, i64 4599305725914032099, i64 4604763342428744113, i64 4599357122235656211, i64 4604744572847879533, i64 4599408372337106626, i64 4604725909912360774, i64 4599459477048003024, i64 4604707352715853453, i64 4599510437190924448, i64 4604688900362264252, i64 4599561253581488745, i64 4604670551965596681, i64 4599611927028430893, i64 4604652306649809264, i64 4599662458333680226, i64 4604634163548676119, i64 4599712848292436588, i64 4604616121805649863, i64 4599763097693245409, i64 4604598180573726817, i64 4599813207318071754, i64 4604580339015314455, i64 4599863177942373331, i64 4604562596302101053, i64 4599913010335172501, i64 4604544951614927504, i64 4599962705259127282, i64 4604527404143661248, i64 4600012263470601390, i64 4604509953087072279, i64 4600061685719733309, i64 4604492597652711194, i64 4600110972750504419, i64 4604475337056789241, i64 4600160125300806197, i64 4604458170524060323, i64 4600209144102506502, i64 4604441097287704932, i64 4600258029881514958, i64 4604424116589215966, i64 4600306783357847458, i64 4604407227678286400, i64 4600355405245689791, i64 4604390429812698772, i64 4600403896253460419, i64 4604373722258216454, i64 4600452257083872405, i64 4604357104288476668, i64 4600500488433994519, i64 4604340575184885223, i64 4600548590995311520, i64 4604324134236512933, i64 4600596565453783642, i64 4604307780739993687, i64 4600644412489905290, i64 4604291513999424145, i64 4600692132778762951, i64 4604275333326265024, i64 4600739726990092349, i64 4604259238039243946, i64 4600787195788334842, i64 4604243227464259821, i64 4600834539832693080, i64 4604227300934288736, i64 4600881759777185930, i64 4604211457789291322, i64 4600928856270702690, i64 4604195697376121570, i64 4600975829957056587, i64 4604180019048437077, i64 4601022681475037589, i64 4604164422166610686, i64 4601069411458464522, i64 4604148906097643499, i64 4601116020536236522, i64 4604133470215079243, i64 4601162509332383817, i64 4604118113898919957, i64 4601208878466117860, i64 4604102836535542981, i64 4601255128551880811, i64 4604087637517619221, i64 4601301260199394395, i64 4604072516244032667, i64 4601347274013708130, i64 4604057472119801145, i64 4601393170595246941, i64 4604042504555998284, i64 4601438950539858171, i64 4604027612969676654, i64 4601484614438857994, i64 4604012796783792097, i64 4601530162879077243, i64 4603998055427129179, i64 4601575596442906662, i64 4603983388334227786, i64 4601620915708341581, i64 4603968794945310823, i64 4601666121249026039, i64 4603954274706212992, i64 4601711213634296353, i64 4603939827068310651, i64 4601756193429224137, i64 4603925451488452710, i64 4601801061194658795, i64 4603911147428892570, i64 4601845817487269476, i64 4603896914357221066, i64 4601890462859586517, i64 4603882751746300411, i64 4601934997860042371, i64 4603868659074199117, i64 4601979423033012030, i64 4603854635824127879, i64 4602023738918852948, i64 4603840681484376401, i64 4602067946053944480, i64 4603826795548251156, i64 4602112044970726837, i64 4603812977514014054, i64 4602156036197739558, i64 4603799226884822011, i64 4602199920259659524, i64 4603785543168667399, i64 4602243697677338503, i64 4603771925878319362, i64 4602287368967840245, i64 4603758374531265990, i64 4602330934644477120, i64 4603744888649657319, i64 4602374395216846324, i64 4603731467760249173, i64 4602417751190865644, i64 4603718111394347796, i64 4602461003068808795, i64 4603704819087755298, i64 4602504151349340332, i64 4603691590380715875, i64 4602547196527550146, i64 4603678424817862798, i64 4602590139094987550, i64 4603665321948166164, i64 4602632979539694961, i64 4603652281324881390, i64 4602675718346241176, i64 4603639302505498440, i64 4602698587584200586, i64 4603626385051691768, i64 4602719856069300478, i64 4603613528529270977, i64 4602741074451915579, i64 4603600732508132166, i64 4602762242967545554, i64 4603587996562209970, i64 4602783361850033564, i64 4603575320269430266, i64 4602804431331581760, i64 4603562703211663551, i64 4602825451642766606, i64 4603550144974678966, i64 4602846423012554016, i64 4603537645148098960, i64 4602867345668314321, i64 4603525203325354592, i64 4602888219835837058, i64 4603512819103641448, i64 4602909045739345591, i64 4603500492083876171, i64 4602929823601511563, i64 4603488221870653591, i64 4602950553643469181, i64 4603476008072204448, i64 4602971236084829334, i64 4603463850300353696, i64 4602991871143693560, i64 4603451748170479377, i64 4603012459036667836, i64 4603439701301472064, i64 4603032999978876228, i64 4603427709315694853, i64 4603053494183974377, i64 4603415771838943902, i64 4603073941864162830, i64 4603403888500409509, i64 4603094343230200224, i64 4603392058932637715, i64 4603114698491416326, i64 4603380282771492429, i64 4603135007855724910, i64 4603368559656118069, i64 4603155271529636510, i64 4603356889228902695, i64 4603175489718271012, i64 4603345271135441649, i64 4603195662625370115, i64 4603333705024501682, i64 4603215790453309648, i64 4603322190547985554, i64 4603235873403111756, i64 4603310727360897115, i64 4603255911674456941, i64 4603299315121306847, i64 4603275905465695979, i64 4603287953490317866, i64 4603295854973861698, i64 4603276642132032376, i64 4603315760394680627, i64 4603265380713518566, i64 4603335621922584523, i64 4603254168904777945, i64 4603355439750721759, i64 4603243006378713106, i64 4603375214070968602, i64 4603231892811095920, i64 4603394945073940354, i64 4603220827880536140, i64 4603414632949002378, i64 4603209811268450420, i64 4603434277884281005, i64 4603198842659031741, i64 4603453880066674315, i64 4603187921739219229, i64 4603473439681862813, i64 4603177048198668377, i64 4603492956914319976, i64 4603166221729721641, i64 4603512431947322694, i64 4603155442027379427, i64 4603531864962961598, i64 4603144708789271446, i64 4603551256142151274, i64 4603134021715628446, i64 4603570605664640369, i64 4603123380509254300, i64 4603589913709021588, i64 4603112784875498459, i64 4603609180452741587, i64 4603102234522228754, i64 4603628406072110752, i64 4603091729159804548, i64 4603647590742312885, i64 4603081268501050233, i64 4603666734637414782, i64 4603070852261229057, i64 4603685837930375705, i64 4603060480158017293, i64 4603704900793056761, i64 4603050151911478729, i64 4603723923396230178, i64 4603039867244039483, i64 4603742905909588485, i64 4603029625880463140, i64 4603761848501753594, i64 4603019427547826193, i64 4603780751340285787, i64 4603009271975493804, i64 4603799614591692610, i64 4602999158895095859, i64 4603818438421437673, i64 4602989088040503334, i64 4603837222993949358, i64 4602979059147804945, i64 4603855968472629439, i64 4602969071955284096, i64 4603874675019861607, i64 4602959126203396113, i64 4603893342797019914, i64 4602949221634745762, i64 4603911971964477122, i64 4602939357994065040, i64 4603930562681612973, i64 4602929535028191249, i64 4603949115106822367, i64 4602919752486045334, i64 4603967629397523463, i64 4602910010118610490, i64 4603986105710165691, i64 4602900307678911035, i64 4604004544200237683, i64 4602890644921991537, i64 4604022945022275129, i64 4602881021604896200, i64 4604041308329868544, i64 4602871437486648501, i64 4604059634275670960, i64 4602861892328231079, i64 4604077923011405544, i64 4602852385892565856, i64 4604096174687873131, i64 4602842917944494420, i64 4604114389454959686, i64 4602833488250758626, i64 4604132567461643690, i64 4602824096579981444, i64 4604150708856003452, i64 4602814742702648034, i64 4604168813785224343, i64 4602805426391087046, i64 4604186882395605965, i64 4602796147419452155, i64 4604204914832569241, i64 4602786905563703804, i64 4604222911240663440, i64 4602777700601591174, i64 4604240871763573129, i64 4602768532312634372, i64 4604258796544125053, i64 4602759400478106821, i64 4604276685724294956, i64 4602750304881017872, i64 4604294539445214323, i64 4602741245306095612, i64 4604312357847177060, i64 4602732221539769882, i64 4604330141069646115, i64 4602723233370155497, i64 4604347889251260021, i64 4602714280587035656, i64 4604365602529839384, i64 4602705362981845559, i64 4604383281042393304, i64 4602696480347656208, i64 4604418534313441775, i64 4602678819172646912], align 16
@_ZZN2cvL7f64_logENS_10softdoubleEE2A7 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A7 = internal global i64 0, align 8
@_ZZN2cvL7f64_logENS_10softdoubleEE2A6 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A6 = internal global i64 0, align 8
@_ZZN2cvL7f64_logENS_10softdoubleEE2A5 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A5 = internal global i64 0, align 8
@_ZZN2cvL7f64_logENS_10softdoubleEE2A4 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A4 = internal global i64 0, align 8
@_ZZN2cvL7f64_logENS_10softdoubleEE2A3 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A3 = internal global i64 0, align 8
@_ZZN2cvL7f64_logENS_10softdoubleEE2A2 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A2 = internal global i64 0, align 8
@_ZZN2cvL7f64_logENS_10softdoubleEE2A1 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A1 = internal global i64 0, align 8
@_ZZN2cvL7f64_logENS_10softdoubleEE2A0 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A0 = internal global i64 0, align 8
@_ZZN2cvL7f32_powENS_9softfloatES0_E4zero = internal global %"struct.cv::softfloat" zeroinitializer, align 4
@_ZGVZN2cvL7f32_powENS_9softfloatES0_E4zero = internal global i64 0, align 8
@_ZZN2cvL7f32_powENS_9softfloatES0_E3one = internal global %"struct.cv::softfloat" zeroinitializer, align 4
@_ZGVZN2cvL7f32_powENS_9softfloatES0_E3one = internal global i64 0, align 8
@_ZZN2cvL7f32_powENS_9softfloatES0_E3inf = internal global %"struct.cv::softfloat" zeroinitializer, align 4
@_ZGVZN2cvL7f32_powENS_9softfloatES0_E3inf = internal global i64 0, align 8
@_ZZN2cvL7f32_powENS_9softfloatES0_E3nan = internal global %"struct.cv::softfloat" zeroinitializer, align 4
@_ZGVZN2cvL7f32_powENS_9softfloatES0_E3nan = internal global i64 0, align 8
@_ZZN2cvL7f64_powENS_10softdoubleES0_E4zero = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_powENS_10softdoubleES0_E4zero = internal global i64 0, align 8
@_ZZN2cvL7f64_powENS_10softdoubleES0_E3one = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_powENS_10softdoubleES0_E3one = internal global i64 0, align 8
@_ZZN2cvL7f64_powENS_10softdoubleES0_E3inf = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_powENS_10softdoubleES0_E3inf = internal global i64 0, align 8
@_ZZN2cvL7f64_powENS_10softdoubleES0_E3nan = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_powENS_10softdoubleES0_E3nan = internal global i64 0, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN2cv9softfloatC1Ej = unnamed_addr alias void (ptr, i32), ptr @_ZN2cv9softfloatC2Ej
@_ZN2cv9softfloatC1Em = unnamed_addr alias void (ptr, i64), ptr @_ZN2cv9softfloatC2Em
@_ZN2cv9softfloatC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN2cv9softfloatC2Ei
@_ZN2cv9softfloatC1El = unnamed_addr alias void (ptr, i64), ptr @_ZN2cv9softfloatC2El
@_ZN2cv10softdoubleC1Ej = unnamed_addr alias void (ptr, i32), ptr @_ZN2cv10softdoubleC2Ej
@_ZN2cv10softdoubleC1Em = unnamed_addr alias void (ptr, i64), ptr @_ZN2cv10softdoubleC2Em
@_ZN2cv10softdoubleC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN2cv10softdoubleC2Ei
@_ZN2cv10softdoubleC1El = unnamed_addr alias void (ptr, i64), ptr @_ZN2cv10softdoubleC2El

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv9softfloatC2Ej(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN2cvL11ui32_to_f32Ej.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = lshr i32 %1, 1                           ; 2 uses
  %i.c = and i32 %1, 1
  %narrow.i = add nuw i32 %i.b, 64
  %i.d = lshr i32 %narrow.i, 7
  %.masked.i = and i32 %i.b, 127
  %.038.i5.i = or i32 %.masked.i, %i.c
  %.not48.i.i = icmp eq i32 %.038.i5.i, 64
  %i.e = zext i1 %.not48.i.i to i32
  %i.f = xor i32 %i.e, -1
  %i.g = and i32 %i.d, %i.f
  %i.h = add nuw nsw i32 %i.g, 1317011456
  br label %_ZN2cvL11ui32_to_f32Ej.exit

bb.d:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %1 to i64                  ; 2 uses
  %i.j = icmp samesign ult i32 %1, 65536          ; 2 uses
  %i.k = shl nuw i32 %1, 16
  %spec.select.i.i = select i1 %i.j, i32 %i.k, i32 %1 ; 3 uses
  %spec.select12.i.i = select i1 %i.j, i8 16, i8 0 ; 2 uses
  %i.l = icmp ult i32 %spec.select.i.i, 16777216  ; 2 uses
  %i.m = or disjoint i8 %spec.select12.i.i, 8
  %i.n = shl nuw i32 %spec.select.i.i, 8
  %.19.i.i = select i1 %i.l, i32 %i.n, i32 %spec.select.i.i
  %.1.i.i = select i1 %i.l, i8 %i.m, i8 %spec.select12.i.i
  %i.o = lshr i32 %.19.i.i, 24
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN2cvL28softfloat_countLeadingZeros8E, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8, !alias.scope !24, !noalias !25
  %i.s = add nsw i8 %.1.i.i, -1
  %i.t = add i8 %i.s, %i.r                        ; 4 uses
  %i.u = sext i8 %i.t to i64
  %i.v = sub nsw i64 156, %i.u                    ; 4 uses
  %i.w = sext i8 %i.t to i32                      ; 2 uses
  %i.x = icmp sgt i8 %i.t, 6
  %2 = icmp samesign ult i64 %i.v, 253
  %or.cond.i = select i1 %i.x, i1 %2, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = shl nuw nsw i64 %i.v, 23
  %i.z = add nsw i32 %i.w, -7
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl i64 %i.i, %i.aa
  %i.ac = add i64 %i.ab, %i.y
  br label %_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = zext nneg i32 %i.w to i64
  %i.ae = shl i64 %i.i, %i.ad                     ; 3 uses
  %i.af = icmp samesign ugt i64 %i.v, 252
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp ne i8 %i.t, -97
  %i.ah = add i64 %i.ae, -2147483584
  %i.ai = icmp ult i64 %i.ah, -2147483648
  %or.cond.i.i = or i1 %i.ag, %i.ai
  br i1 %or.cond.i.i, label %_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = add i64 %i.ae, 64
  %i.ak = lshr i64 %i.aj, 7
  %.038.i.i4 = and i64 %i.ae, 127
  %.not48.i.i2 = icmp eq i64 %.038.i.i4, 64
  %i.al = zext i1 %.not48.i.i2 to i64
  %i.am = xor i64 %i.al, -1
  %i.an = and i64 %i.ak, %i.am                    ; 2 uses
  %.not49.i.i = icmp eq i64 %i.an, 0
  %i.ao = shl nuw nsw i64 %i.v, 23
  %i.ap = select i1 %.not49.i.i, i64 0, i64 %i.ao
  %i.aq = add nuw nsw i64 %i.ap, %i.an
  br label %_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit

_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit:   ; preds = %bb.g, %bb.e, %bb.h
  %storemerge.in.i = phi i64 [ %i.ac, %bb.e ], [ %i.aq, %bb.h ], [ 2139095040, %bb.g ]
  %storemerge.i = trunc i64 %storemerge.in.i to i32
  br label %_ZN2cvL11ui32_to_f32Ej.exit

_ZN2cvL11ui32_to_f32Ej.exit:                      ; preds = %bb.a, %bb.c, %_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit
  %.sroa.0.0 = phi i32 [ %storemerge.i, %_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit ], [ %i.h, %bb.c ], [ 0, %bb.a ]
  store i32 %.sroa.0.0, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv9softfloatC2Em(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i64 %1, 32                          ; 2 uses
  %.not.i.i = icmp eq i64 %i.a, 0                 ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, i8 32, i8 0 ; 2 uses
  %spec.select16.i.i = select i1 %.not.i.i, i64 %1, i64 %i.a ; 2 uses
  %.0.i.i = trunc nuw i64 %spec.select16.i.i to i32 ; 2 uses
  %i.b = icmp samesign ult i64 %spec.select16.i.i, 65536 ; 2 uses
  %i.c = or disjoint i8 %spec.select.i.i, 16
  %i.d = shl nuw i32 %.0.i.i, 16
  %.113.i.i = select i1 %i.b, i8 %i.c, i8 %spec.select.i.i ; 2 uses
  %.1.i.i = select i1 %i.b, i32 %i.d, i32 %.0.i.i ; 3 uses
  %i.e = icmp ult i32 %.1.i.i, 16777216           ; 2 uses
  %i.f = or disjoint i8 %.113.i.i, 8
  %i.g = shl nuw i32 %.1.i.i, 8
  %.214.i.i = select i1 %i.e, i8 %i.f, i8 %.113.i.i
  %.2.i.i = select i1 %i.e, i32 %i.g, i32 %.1.i.i
  %i.h = lshr i32 %.2.i.i, 24
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN2cvL28softfloat_countLeadingZeros8E, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8, !noalias !28
  %i.l = add i8 %i.k, %.214.i.i                   ; 4 uses
  %i.m = add i8 %i.l, -40                         ; 3 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = zext nneg i8 %i.m to i32
  %.not.i = icmp eq i64 %1, 0
  %i.p = zext nneg i8 %i.m to i64
  %i.q = shl i64 %1, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = shl nuw nsw i32 %i.o, 23
  %reass.sub = sub i32 %i.r, %i.s
  %i.t = add i32 %reass.sub, 1249902592
  %i.u = select i1 %.not.i, i32 0, i32 %i.t
  br label %_ZN2cvL11ui64_to_f32Em.exit

bb.c:                                             ; preds = %bb.a
  %i.v = add nsw i8 %i.l, -33                     ; 2 uses
  %i.w = sext i8 %i.v to i32                      ; 2 uses
  %i.x = icmp slt i8 %i.l, 33
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i8 33, %i.l
  %i.z = zext nneg i8 %i.y to i64                 ; 2 uses
  %i.aa = lshr i64 %1, %i.z
  %notmask.i.i = shl nsw i64 -1, %i.z
  %i.ab = xor i64 %notmask.i.i, -1
  %i.ac = and i64 %1, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i64
  %i.af = or i64 %i.aa, %i.ae
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = zext nneg i32 %i.w to i64
  %i.ah = shl i64 %1, %i.ag
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = phi i64 [ %i.af, %bb.d ], [ %i.ah, %bb.e ] ; 3 uses
  %i.aj = sub nsw i32 156, %i.w                   ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = icmp samesign ugt i32 %i.aj, 252
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = icmp ne i8 %i.v, -97
  %i.an = add i64 %i.ai, -2147483584
  %i.ao = icmp ult i64 %i.an, -2147483648
  %or.cond.i.i = or i1 %i.am, %i.ao
  br i1 %or.cond.i.i, label %_ZN2cvL11ui64_to_f32Em.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.041.i.i = phi i64 [ %i.ak, %bb.f ], [ 253, %bb.g ]
  %i.ap = add i64 %i.ai, 64
  %i.aq = lshr i64 %i.ap, 7
  %.038.i18.i = and i64 %i.ai, 127
  %.not48.i.i = icmp eq i64 %.038.i18.i, 64
  %i.ar = zext i1 %.not48.i.i to i64
  %i.as = xor i64 %i.ar, -1
  %i.at = and i64 %i.aq, %i.as                    ; 2 uses
  %.not49.i.i = icmp eq i64 %i.at, 0
  %i.au = shl nuw nsw i64 %.041.i.i, 23
  %i.av = select i1 %.not49.i.i, i64 0, i64 %i.au
  %i.aw = add nuw nsw i64 %i.av, %i.at
  %i.ax = trunc i64 %i.aw to i32
  br label %_ZN2cvL11ui64_to_f32Em.exit

_ZN2cvL11ui64_to_f32Em.exit:                      ; preds = %bb.b, %bb.g, %bb.h
  %storemerge.i = phi i32 [ %i.u, %bb.b ], [ %i.ax, %bb.h ], [ 2139095040, %bb.g ]
  store i32 %storemerge.i, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv9softfloatC2Ei(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.cv::softfloat", align 4    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = icmp slt i32 %1, 0                       ; 2 uses
  %i.b = and i32 %1, 2147483647
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = select i1 %i.a, i32 -822083584, i32 0
  br label %_ZN2cvL10i32_to_f32Ei.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %i.e = zext i32 %i.d to i64
  call fastcc void @_ZN2cvL28softfloat_normRoundPackToF32Eblm(ptr dead_on_unwind noalias nonnull writable align 4 %2, i1 noundef zeroext %i.a, i64 noundef 156, i64 noundef %i.e), !alias.scope !31
  %.pre = load i32, ptr %2, align 4, !tbaa !10
  br label %_ZN2cvL10i32_to_f32Ei.exit

_ZN2cvL10i32_to_f32Ei.exit:                       ; preds = %bb.b, %bb.c
  %i.f = phi i32 [ %i.c, %bb.b ], [ %.pre, %bb.c ]
  store i32 %i.f, ptr %0, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv9softfloatC2El(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i64 %1, 0                       ; 2 uses
  %i.b = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 6 uses
  %i.c = lshr i64 %i.b, 32                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0                 ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, i8 32, i8 0 ; 2 uses
  %spec.select16.i.i = select i1 %.not.i.i, i64 %i.b, i64 %i.c ; 2 uses
  %.0.i.i = trunc nuw i64 %spec.select16.i.i to i32 ; 2 uses
  %i.d = icmp samesign ult i64 %spec.select16.i.i, 65536 ; 2 uses
  %i.e = or disjoint i8 %spec.select.i.i, 16
  %i.f = shl nuw i32 %.0.i.i, 16
  %.113.i.i = select i1 %i.d, i8 %i.e, i8 %spec.select.i.i ; 2 uses
  %.1.i.i = select i1 %i.d, i32 %i.f, i32 %.0.i.i ; 3 uses
  %i.g = icmp ult i32 %.1.i.i, 16777216           ; 2 uses
  %i.h = or disjoint i8 %.113.i.i, 8
  %i.i = shl nuw i32 %.1.i.i, 8
  %.214.i.i = select i1 %i.g, i8 %i.h, i8 %.113.i.i
  %.2.i.i = select i1 %i.g, i32 %i.i, i32 %.1.i.i
  %i.j = lshr i32 %.2.i.i, 24
end_hunk_0
