inline.NumInlined: 1164
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0
%"struct.std::_Vector_base<Stockfish::shm::detail::SharedMemoryBase *, std::allocator<Stockfish::shm::detail::SharedMemoryBase *>>::_Vector_impl" = type { %"struct.std::_Vector_base<Stockfish::shm::detail::SharedMemoryBase *, std::allocator<Stockfish::shm::detail::SharedMemoryBase *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Stockfish::shm::detail::SharedMemoryBase *, std::allocator<Stockfish::shm::detail::SharedMemoryBase *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::array.62" = type { [64 x i64] }
%"struct.Stockfish::Magic" = type { i64, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.Stockfish::StateInfo" = type { i64, i64, i64, [2 x i64], [2 x i32], i32, i32, i32, i8, i64, i64, ptr, [2 x i64], [2 x i64], [8 x i64], i8, i32 }
%"class.Stockfish::Position" = type { %"struct.std::array", %"struct.std::array.13", %"struct.std::array.14", [16 x i32], [64 x i32], [16 x i8], [16 x i64], ptr, i32, i8, i8, %"struct.Stockfish::DirtyPiece", %"struct.Stockfish::DirtyThreats" }
%"struct.std::array" = type { [64 x i8] }
%"struct.std::array.13" = type { [8 x i64] }
%"struct.std::array.14" = type { [2 x i64] }
%"struct.Stockfish::DirtyPiece" = type { i8, i8, i8, i8, i8, i8, i8 }
%"struct.Stockfish::DirtyThreats" = type { %"class.Stockfish::ValueList", i8, i8, i8, i64, i64 }
%"class.Stockfish::ValueList" = type { [96 x %"struct.Stockfish::DirtyThreat"], i64 }
%"struct.Stockfish::DirtyThreat" = type { i32 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"struct.Stockfish::MoveList" = type { [256 x %"class.Stockfish::Move"], ptr }
%"struct.Stockfish::MoveList.20" = type { [256 x %"class.Stockfish::Move"], ptr }
%"struct.Stockfish::MoveList.38" = type { [256 x %"class.Stockfish::Move"], ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }

$_ZN9Stockfish17SYSTEM_THREADS_NBE = comdat any

$_ZN9Stockfish20get_process_affinityEv = comdat any

$_ZNSt3setImSt4lessImESaImEED2Ev = comdat any

$_ZN9Stockfish8Position11do_castlingILb1EEEvNS_5ColorENS_6SquareERS3_S4_S4_PNS_12DirtyThreatsEPNS_10DirtyPieceE = comdat any

$_ZN9Stockfish8Position11do_castlingILb0EEEvNS_5ColorENS_6SquareERS3_S4_S4_PNS_12DirtyThreatsEPNS_10DirtyPieceE = comdat any

$_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E = comdat any

$_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev = comdat any

$_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE = comdat any

$_ZNK9Stockfish8Position20update_piece_threatsILb1ELb1EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm = comdat any

$_ZNK9Stockfish8Position20update_piece_threatsILb0ELb1EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm = comdat any

$_ZNK9Stockfish8Position20update_piece_threatsILb0ELb0EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm = comdat any

$_ZNK9Stockfish8Position20update_piece_threatsILb1ELb0EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm = comdat any

$_ZN9Stockfish13PseudoAttacksE = comdat any

@_ZN9Stockfish17SYSTEM_THREADS_NBE = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZGVN9Stockfish17SYSTEM_THREADS_NBE = linkonce_odr dso_local global i64 0, comdat($_ZN9Stockfish17SYSTEM_THREADS_NBE), align 8
@_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE = internal global %"class.std::set" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN9Stockfish7Zobrist3psqE = dso_local local_unnamed_addr global [16 x [64 x i64]] zeroinitializer, align 16
@_ZN9Stockfish7Zobrist9enpassantE = dso_local local_unnamed_addr global [8 x i64] zeroinitializer, align 64
@_ZN9Stockfish7Zobrist8castlingE = dso_local local_unnamed_addr global [16 x i64] zeroinitializer, align 64
@_ZN9Stockfish7Zobrist4sideE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN9Stockfish7Zobrist7noPawnsE = dso_local local_unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"\0A +---+---+---+---+---+---+---+---+\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"   a   b   c   d   e   f   g   h\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\0AFen: \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\0AKey: \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\0ACheckers: \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZN9Stockfish10Tablebases14MaxCardinalityE = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"\0ATablebases WDL: \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0ATablebases DTZ: \00", align 1
@_ZN9Stockfish6cuckooE = dso_local local_unnamed_addr global %"struct.std::array.18" zeroinitializer, align 8
@_ZN9Stockfish10cuckooMoveE = dso_local local_unnamed_addr global %"struct.std::array.19" zeroinitializer, align 2
@_ZN9Stockfish12_GLOBAL__N_16PiecesE = internal unnamed_addr constant [12 x i8] c"\01\02\03\04\05\06\09\0A\0B\0C\0D\0E", align 1
@_ZN9StockfishL10PieceValueE = internal unnamed_addr constant [16 x i32] [i32 0, i32 208, i32 781, i32 825, i32 1276, i32 2538, i32 0, i32 0, i32 0, i32 208, i32 781, i32 825, i32 1276, i32 2538, i32 0, i32 0], align 16
@.str.12 = private unnamed_addr constant [3 x i8] c"8/\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"/8/8/8/8/\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"/8 w - - 0 10\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" w \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" b \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"B \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"W \00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E = linkonce_odr dso_local global %"class.std::vector.40" zeroinitializer, comdat, align 8
@_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E = linkonce_odr dso_local global i64 0, comdat($_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E), align 8
@.str.26 = private unnamed_addr constant [16 x i8] c" PNBRQK  pnbrqk\00", align 1
@_ZN9Stockfish13PseudoAttacksE = linkonce_odr dso_local local_unnamed_addr constant { <{ { <{ [56 x i64], [8 x i64] }> }, %"struct.std::array.62", %"struct.std::array.62", %"struct.std::array.62", %"struct.std::array.62", %"struct.std::array.62", %"struct.std::array.62", %"struct.std::array.62" }> } { <{ { <{ [56 x i64], [8 x i64] }> }, %"struct.std::array.62", %"struct.std::array.62", %"struct.std::array.62", %"struct.std::array.62", %"struct.std::array.62", %"struct.std::array.62", %"struct.std::array.62" }> <{ { <{ [56 x i64], [8 x i64] }> } { <{ [56 x i64], [8 x i64] }> <{ [56 x i64] [i64 512, i64 1280, i64 2560, i64 5120, i64 10240, i64 20480, i64 40960, i64 16384, i64 131072, i64 327680, i64 655360, i64 1310720, i64 2621440, i64 5242880, i64 10485760, i64 4194304, i64 33554432, i64 83886080, i64 167772160, i64 335544320, i64 671088640, i64 1342177280, i64 2684354560, i64 1073741824, i64 8589934592, i64 21474836480, i64 42949672960, i64 85899345920, i64 171798691840, i64 343597383680, i64 687194767360, i64 274877906944, i64 2199023255552, i64 5497558138880, i64 10995116277760, i64 21990232555520, i64 43980465111040, i64 87960930222080, i64 175921860444160, i64 70368744177664, i64 562949953421312, i64 1407374883553280, i64 2814749767106560, i64 5629499534213120, i64 11258999068426240, i64 22517998136852480, i64 45035996273704960, i64 18014398509481984, i64 144115188075855872, i64 360287970189639680, i64 720575940379279360, i64 1441151880758558720, i64 2882303761517117440, i64 5764607523034234880, i64 -6917529027641081856, i64 4611686018427387904], [8 x i64] zeroinitializer }> }, %"struct.std::array.62" { [64 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 2, i64 5, i64 10, i64 20, i64 40, i64 80, i64 160, i64 64, i64 512, i64 1280, i64 2560, i64 5120, i64 10240, i64 20480, i64 40960, i64 16384, i64 131072, i64 327680, i64 655360, i64 1310720, i64 2621440, i64 5242880, i64 10485760, i64 4194304, i64 33554432, i64 83886080, i64 167772160, i64 335544320, i64 671088640, i64 1342177280, i64 2684354560, i64 1073741824, i64 8589934592, i64 21474836480, i64 42949672960, i64 85899345920, i64 171798691840, i64 343597383680, i64 687194767360, i64 274877906944, i64 2199023255552, i64 5497558138880, i64 10995116277760, i64 21990232555520, i64 43980465111040, i64 87960930222080, i64 175921860444160, i64 70368744177664, i64 562949953421312, i64 1407374883553280, i64 2814749767106560, i64 5629499534213120, i64 11258999068426240, i64 22517998136852480, i64 45035996273704960, i64 18014398509481984] }, %"struct.std::array.62" { [64 x i64] [i64 132096, i64 329728, i64 659712, i64 1319424, i64 2638848, i64 5277696, i64 10489856, i64 4202496, i64 33816580, i64 84410376, i64 168886289, i64 337772578, i64 675545156, i64 1351090312, i64 2685403152, i64 1075839008, i64 8657044482, i64 21609056261, i64 43234889994, i64 86469779988, i64 172939559976, i64 345879119952, i64 687463207072, i64 275414786112, i64 2216203387392, i64 5531918402816, i64 11068131838464, i64 22136263676928, i64 44272527353856, i64 88545054707712, i64 175990581010432, i64 70506185244672, i64 567348067172352, i64 1416171111120896, i64 2833441750646784, i64 5666883501293568, i64 11333767002587136, i64 22667534005174272, i64 45053588738670592, i64 18049583422636032, i64 145241105196122112, i64 362539804446949376, i64 725361088165576704, i64 1450722176331153408, i64 2901444352662306816, i64 5802888705324613632, i64 -6913025356609880064, i64 4620693356194824192, i64 288234782788157440, i64 576469569871282176, i64 1224997833292120064, i64 2449995666584240128, i64 4899991333168480256, i64 -8646761407372591104, i64 1152939783987658752, i64 2305878468463689728, i64 1128098930098176, i64 2257297371824128, i64 4796069720358912, i64 9592139440717824, i64 19184278881435648, i64 38368557762871296, i64 4679521487814656, i64 9077567998918656] }, %"struct.std::array.62" { [64 x i64] [i64 -9205322385119247872, i64 36099303471056128, i64 141012904249856, i64 550848566272, i64 6480472064, i64 1108177604608, i64 283691315142656, i64 72624976668147712, i64 4620710844295151618, i64 -9205322385119182843, i64 36099303487963146, i64 141017232965652, i64 1659000848424, i64 283693466779728, i64 72624976676520096, i64 145249953336262720, i64 2310355422147510788, i64 4620710844311799048, i64 -9205322380790986223, i64 36100411639206946, i64 424704217196612, i64 72625527495610504, i64 145249955479592976, i64 290499906664153120, i64 1155177711057110024, i64 2310355426409252880, i64 4620711952330133792, i64 -9205038694072573375, i64 108724279602332802, i64 145390965166737412, i64 290500455356698632, i64 580999811184992272, i64 577588851267340304, i64 1155178802063085600, i64 2310639079102947392, i64 4693335752243822976, i64 -9060072569221905919, i64 326598935265674242, i64 581140276476643332, i64 1161999073681608712, i64 288793334762704928, i64 577868148797087808, i64 1227793891648880768, i64 2455587783297826816, i64 4911175566595588352, i64 -8624392940535152127, i64 1197958188344280066, i64 2323857683139004420, i64 144117404414255168, i64 360293502378066048, i64 720587009051099136, i64 1441174018118909952, i64 2882348036221108224, i64 5764696068147249408, i64 -6917353036926680575, i64 4611756524879479810, i64 567382630219904, i64 1416240237150208, i64 2833579985862656, i64 5667164249915392, i64 11334324221640704, i64 22667548931719168, i64 45053622886727936, i64 18049651735527937] }, %"struct.std::array.62" { [64 x i64] [i64 72340172838076926, i64 144680345676153597, i64 289360691352306939, i64 578721382704613623, i64 1157442765409226991, i64 2314885530818453727, i64 4629771061636907199, i64 -9187201950435737473, i64 72340172838141441, i64 144680345676217602, i64 289360691352369924, i64 578721382704674568, i64 1157442765409283856, i64 2314885530818502432, i64 4629771061636939584, i64 -9187201950435737728, i64 72340172854657281, i64 144680345692602882, i64 289360691368494084, i64 578721382720276488, i64 1157442765423841296, i64 2314885530830970912, i64 4629771061645230144, i64 -9187201950435803008, i64 72340177082712321, i64 144680349887234562, i64 289360695496279044, i64 578721386714368008, i64 1157442769150545936, i64 2314885534022901792, i64 4629771063767613504, i64 -9187201950452514688, i64 72341259464802561, i64 144681423712944642, i64 289361752209228804, i64 578722409201797128, i64 1157443723186933776, i64 2314886351157207072, i64 4629771607097753664, i64 -9187201954730704768, i64 72618349279904001, i64 144956323094725122, i64 289632270724367364, i64 578984165983651848, i64 1157687956502220816, i64 2315095537539358752, i64 4629910699613634624, i64 -9187203049947365248, i64 143553341945872641, i64 215330564830528002, i64 358885010599838724, i64 645993902138460168, i64 1220211685215703056, i64 2368647251370188832, i64 4665518383679160384, i64 -9187483425412448128, i64 -143832609275707135, i64 -215607624513486334, i64 -359157654989044732, i64 -646257715940161528, i64 -1220457837842395120, i64 -2368858081646862304, i64 -4665658569255796672, i64 9187484529235886208] }, %"struct.std::array.62" { [64 x i64] [i64 -9132982212281170946, i64 180779649147209725, i64 289501704256556795, i64 578721933553179895, i64 1157442771889699055, i64 2314886638996058335, i64 4630054752952049855, i64 -9114576973767589761, i64 4693051017133293059, i64 -9060642039442965241, i64 325459994840333070, i64 578862399937640220, i64 1157444424410132280, i64 2315169224285282160, i64 4702396038313459680, i64 -9041951997099475008, i64 2382695595002168069, i64 4765391190004401930, i64 -8915961689422492139, i64 614821794359483434, i64 1157867469641037908, i64 2387511058326581416, i64 4775021017124823120, i64 -8896702043771649888, i64 1227517888139822345, i64 2455035776296487442, i64 4910072647826412836, i64 -8626317307358205367, i64 1266167048752878738, i64 2460276499189639204, i64 4920271519124312136, i64 -8606202139267522416, i64 649930110732142865, i64 1299860225776030242, i64 2600000831312176196, i64 5272058161445620104, i64 -7902628846034972143, i64 2641485286422881314, i64 5210911883574396996, i64 -8025202881049096056, i64 361411684042608929, i64 722824471891812930, i64 1517426162373248132, i64 3034571949281478664, i64 6068863523097809168, i64 -6309297402995793375, i64 5827868887957914690, i64 -6863345366808360828, i64 287670746360127809, i64 575624067208594050, i64 1079472019650937860, i64 2087167920257370120, i64 4102559721436811280, i64 8133343319517438240, i64 -2251834653247520191, i64 -4575726900532968318, i64 -143265226645487231, i64 -214191384276336126, i64 -356324075003182076, i64 -640590551690246136, i64 -1209123513620754416, i64 -2346190532715143136, i64 -4620604946369068736, i64 9205534180971414145] }, %"struct.std::array.62" { [64 x i64] [i64 770, i64 1797, i64 3594, i64 7188, i64 14376, i64 28752, i64 57504, i64 49216, i64 197123, i64 460039, i64 920078, i64 1840156, i64 3680312, i64 7360624, i64 14721248, i64 12599488, i64 50463488, i64 117769984, i64 235539968, i64 471079936, i64 942159872, i64 1884319744, i64 3768639488, i64 3225468928, i64 12918652928, i64 30149115904, i64 60298231808, i64 120596463616, i64 241192927232, i64 482385854464, i64 964771708928, i64 825720045568, i64 3307175149568, i64 7718173671424, i64 15436347342848, i64 30872694685696, i64 61745389371392, i64 123490778742784, i64 246981557485568, i64 211384331665408, i64 846636838289408, i64 1975852459884544, i64 3951704919769088, i64 7903409839538176, i64 15806819679076352, i64 31613639358152704, i64 63227278716305408, i64 54114388906344448, i64 216739030602088448, i64 505818229730443264, i64 1011636459460886528, i64 2023272918921773056, i64 4046545837843546112, i64 8093091675687092224, i64 -2260560722335367168, i64 -4593460513685372928, i64 144959613005987840, i64 362258295026614272, i64 724516590053228544, i64 1449033180106457088, i64 2898066360212914176, i64 5796132720425828352, i64 -6854478632857894912, i64 4665729213955833856] }, %"struct.std::array.62" zeroinitializer }> }, comdat, align 8
@_ZN9Stockfish9RayPassBBE = external local_unnamed_addr global [64 x [64 x i64]], align 16
@_ZN9Stockfish9BetweenBBE = external local_unnamed_addr global [64 x [64 x i64]], align 16
@_ZN9Stockfish6LineBBE = external local_unnamed_addr global [64 x [64 x i64]], align 16
@_ZN9Stockfish6MagicsE = external local_unnamed_addr global [64 x [2 x %"struct.Stockfish::Magic"]], align 16
@.str.28 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.29 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@llvm.global_ctors = appending global [3 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.25, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_position.cpp, ptr null }]
@llvm.used = appending global [2 x ptr] [ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" comdat($_ZN9Stockfish17SYSTEM_THREADS_NBE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN9Stockfish17SYSTEM_THREADS_NBE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN9Stockfish17SYSTEM_THREADS_NBE) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #26
  %i.e = tail call i32 @llvm.umax.i32(i32 %i.d, i32 1)
  %.sroa.speculated = zext i32 %i.e to i64
  store i64 %.sroa.speculated, ptr @_ZN9Stockfish17SYSTEM_THREADS_NBE, align 8, !tbaa !11
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN9Stockfish17SYSTEM_THREADS_NBE) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN9Stockfish17SYSTEM_THREADS_NBE) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind noalias writable sret(%"class.std::set") align 8 %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !22
  %i.f = tail call ptr @__sched_cpualloc(i64 noundef 65536) #26 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.f, i8 0, i64 8192, i1 false)
  %i.h = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 8192, ptr noundef nonnull %i.f) #26
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__sched_cpufree(ptr noundef nonnull %i.f) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.e:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  tail call void @__sched_cpufree(ptr noundef nonnull %i.f) #26
  ret void

.preheader:                                       ; preds = %bb.c, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  %storemerge16 = phi i64 [ %i.ad, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ], [ 0, %bb.c ] ; 7 uses
  %i.i = and i64 %storemerge16, 63
  %i.j = lshr i64 %storemerge16, 6
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %1 = lshr i64 %i.l, %i.i
  %.not13 = trunc i64 %1 to i1
  br i1 %.not13, label %bb.f, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

bb.f:                                             ; preds = %.preheader
  %.02022.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.f ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = icmp ult i64 %storemerge16, %i.n         ; 2 uses
  %.in.v.i.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !24

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.o, label %._crit_edge.thread.i.i.i, label %bb.h

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.f
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.a, %bb.f ] ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.q = icmp eq ptr %.019.lcssa29.i.i.i, %i.p
  br i1 %i.q, label %select.unfold.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %i.s = phi i64 [ %.pre.i.i, %bb.g ], [ %i.n, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.g ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.t = icmp ult i64 %i.s, %storemerge16
  br i1 %i.t, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

select.unfold.i.i:                                ; preds = %bb.h, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.h ] ; 3 uses
  %i.u = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.a
  br i1 %i.u, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %select.unfold.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
  %i.x = icmp ult i64 %storemerge16, %i.w
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.i, %select.unfold.i.i
  %i.y = phi i1 [ %i.x, %bb.i ], [ true, %select.unfold.i.i ]
  %i.z = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %storemerge16, ptr %i.aa, align 8, !tbaa !11
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #26
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.e, align 8, !tbaa !22
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit:      ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.h, %.preheader
  %i.ad = add nuw nsw i64 %storemerge16, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, 65536
  br i1 %exitcond.not, label %bb.e, label %.preheader, !llvm.loop !26
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoRKNS_8PositionE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 32 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %5 = alloca %"class.Stockfish::Position", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 36) #26 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.7, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.7 ], [ 7, %bb.a ] ; 4 uses
  %i.e = shl nuw nsw i64 %indvars.iv, 3           ; 8 uses
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.h = load i8, ptr %i.g, align 8, !tbaa !27
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.k, ptr %i.a, align 1, !tbaa !29
  %i.l = load ptr, ptr %0, align 8, !tbaa !30
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !32
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.k) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !29    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.z, ptr %i.a, align 1, !tbaa !29
  %i.aa = load ptr, ptr %0, align 8, !tbaa !30
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !32
  %.not.i.1 = icmp eq i64 %i.af, 0
  br i1 %.not.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.1

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.z) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.1

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.1: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !27
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ao, ptr %i.a, align 1, !tbaa !29
  %i.ap = load ptr, ptr %0, align 8, !tbaa !30
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !32
  %.not.i.2 = icmp eq i64 %i.au, 0
  br i1 %.not.i.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.1
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.2

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.1
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.ao) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.2

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.2: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 3) #26 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !27
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bd, ptr %i.a, align 1, !tbaa !29
  %i.be = load ptr, ptr %0, align 8, !tbaa !30
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !32
  %.not.i.3 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.2
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.3

end_hunk_0
begin_hunk_1_@_ZN9StockfishlsERSoRKNS_8PositionE:bb.a
  %i.il = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.ac
  %i.io = load i64, ptr %i.im, align 8, !tbaa !29
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.ip) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.iq = call noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %5, ptr noundef nonnull %i.b) #26
  %i.ir = call noundef i32 @_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %5, ptr noundef nonnull %i.c) #26
  %i.is = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 17) #26 ; 0 uses
  %i.it = load ptr, ptr %0, align 8, !tbaa !30
  %i.iu = getelementptr i8, ptr %i.it, i64 -24
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds i8, ptr %0, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store i64 4, ptr %i.ix, align 8, !tbaa !32
  %i.iy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.iq) #26 ; 2 uses
  %i.iz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.9, i64 noundef 2) #26 ; 0 uses
  %i.ja = load i32, ptr %i.b, align 4, !tbaa !88
  %i.jb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, i32 noundef %i.ja) #26 ; 5 uses
  %i.jc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.10, i64 noundef 1) #26 ; 0 uses
  %i.jd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.11, i64 noundef 17) #26 ; 0 uses
  %i.je = load ptr, ptr %i.jb, align 8, !tbaa !30
  %i.jf = getelementptr i8, ptr %i.je, i64 -24
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds i8, ptr %i.jb, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store i64 4, ptr %i.ji, align 8, !tbaa !32
  %i.jj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, i32 noundef %i.ir) #26 ; 2 uses
  %i.jk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull @.str.9, i64 noundef 2) #26 ; 0 uses
  %i.jl = load i32, ptr %i.c, align 4, !tbaa !88
  %i.jm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, i32 noundef %i.jl) #26
  %i.jn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.10, i64 noundef 1) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.ab, %._crit_edge
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 58 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr null, ptr %i.i, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.j, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 337
  store i8 0, ptr %i.k, align 1, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !30
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p
  store ptr %i.n, ptr %i.q, align 8, !tbaa !30
  %i.r = load ptr, ptr %2, align 8, !tbaa !30
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.u, ptr noundef null) #26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.h, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.v, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 16, ptr %i.y, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 0, ptr %i.ab, align 8, !tbaa !46
  store i8 0, ptr %i.aa, align 8, !tbaa !29
  %i.ac = load ptr, ptr %2, align 8, !tbaa !30
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.af, ptr noundef nonnull %i.v) #26
  br label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27, %bb.a
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27 ], [ 7, %bb.a ] ; 3 uses
  %i.ag = shl nuw nsw i64 %indvars.iv73, 3        ; 2 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.i
  %.06169 = phi i8 [ 0, %bb.b ], [ %i.bc, %bb.i ]
  %i.ai = zext nneg i8 %.06169 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.i
  %i.aj = icmp eq i64 %indvars.iv73, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.d:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.ai, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %.01468 = phi i32 [ 0, %.preheader ], [ %i.al, %bb.e ] ; 3 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ak = load i8, ptr %gep, align 1, !tbaa !27
  %.not70 = icmp eq i8 %i.ak, 0
  br i1 %.not70, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.al = add nuw nsw i32 %.01468, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, 7
  br i1 %exitcond.not, label %.thread112, label %bb.d, !llvm.loop !96

.thread112:                                       ; preds = %bb.e
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.al) #26 ; 0 uses
  br label %bb.i

.critedge:                                        ; preds = %bb.d
  %i.an = trunc nuw i64 %indvars.iv to i8
  %.not15 = icmp eq i32 %.01468, 0
  br i1 %.not15, label %.thread, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.01468) #26 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @.str.26, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %i.at, ptr %i.g, align 1, !tbaa !29
  %i.au = load ptr, ptr %2, align 8, !tbaa !30
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.g, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.h:                                             ; preds = %.thread
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.at) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.i:                                             ; preds = %.thread112, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %.1.lcssa107111 = phi i8 [ 8, %.thread112 ], [ %i.an, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ] ; 2 uses
  %i.bc = add nuw nsw i8 %.1.lcssa107111, 1
  %i.bd = icmp ult i8 %.1.lcssa107111, 7
  br i1 %i.bd, label %.preheader, label %bb.c, !llvm.loop !97

bb.j:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !98
  %i.bg = icmp eq i8 %i.bf, 0
  %i.bh = select i1 %i.bg, ptr @.str.15, ptr @.str.16
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bh, i64 noundef 3) #26 ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 7 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !68
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !85
  %.not62 = trunc nuw i32 %i.bm to i1
  br i1 %.not62, label %bb.n, label %bb.ak

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 47, ptr %i.f, align 1, !tbaa !29
  %i.bn = load ptr, ptr %2, align 8, !tbaa !30
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %2, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !32
  %.not.i25 = icmp eq i64 %i.bs, 0
  br i1 %.not.i25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.f, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27

bb.m:                                             ; preds = %bb.k
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 47) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit27: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br label %bb.b, !llvm.loop !99

bb.n:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !87, !range !57, !noundef !58
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 465
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !100
  %i.ca = and i8 %i.bz, 7
  %i.cb = add nuw nsw i8 %i.ca, 65
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cc = phi i8 [ %i.cb, %bb.o ], [ 75, %bb.n ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.cc, ptr %i.e, align 1, !tbaa !29
  %i.cd = load ptr, ptr %2, align 8, !tbaa !30
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %2, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !32
  %.not.i28 = icmp eq i64 %i.ci, 0
  br i1 %.not.i28, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.e, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30

bb.r:                                             ; preds = %bb.p
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.cc) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre76 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !85 ; 2 uses
  %6 = and i32 %.pre76, 2
  %.not63 = icmp eq i32 %6, 0
  br i1 %.not63, label %bb.x, label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !87, !range !57, !noundef !58
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 466
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !100
  %i.cq = and i8 %i.cp, 7
  %i.cr = add nuw nsw i8 %i.cq, 65
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cs = phi i8 [ %i.cr, %bb.t ], [ 81, %bb.s ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.cs, ptr %i.d, align 1, !tbaa !29
  %i.ct = load ptr, ptr %2, align 8, !tbaa !30
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %2, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !32
  %.not.i31 = icmp eq i64 %i.cy, 0
  br i1 %.not.i31, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.d, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33

bb.w:                                             ; preds = %bb.u
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.cs) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre77 = load ptr, ptr %i.bj, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %.pre77, i64 48
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 8, !tbaa !85
  br label %bb.x

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30
  %i.db = phi i32 [ %.pre79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33 ], [ %.pre76, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30 ] ; 2 uses
  %i.dc = phi ptr [ %.pre77, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33 ], [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30 ]
  %i.dd = and i32 %i.db, 4
  %.not64 = icmp eq i32 %i.dd, 0
  br i1 %.not64, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.df = load i8, ptr %i.de, align 1, !tbaa !87, !range !57, !noundef !58
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !100
  %i.dj = and i8 %i.di, 7
  %i.dk = add nuw nsw i8 %i.dj, 97
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.dl = phi i8 [ %i.dk, %bb.z ], [ 107, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dl, ptr %i.c, align 1, !tbaa !29
  %i.dm = load ptr, ptr %2, align 8, !tbaa !30
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %2, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !32
  %.not.i34 = icmp eq i64 %i.dr, 0
  br i1 %.not.i34, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.c, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36

bb.ac:                                            ; preds = %bb.aa
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.dl) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre80 = load ptr, ptr %i.bj, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %.pre80, i64 48
  %.pre82 = load i32, ptr %.phi.trans.insert81, align 8, !tbaa !85
  br label %bb.ad

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36, %bb.x
  %i.du = phi i32 [ %.pre82, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36 ], [ %i.db, %bb.x ] ; 2 uses
  %i.dv = phi ptr [ %.pre80, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36 ], [ %i.dc, %bb.x ]
  %i.dw = and i32 %i.du, 8
  %.not65 = icmp eq i32 %i.dw, 0
  br i1 %.not65, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !87, !range !57, !noundef !58
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !100
  %i.ec = and i8 %i.eb, 7
  %i.ed = add nuw nsw i8 %i.ec, 97
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ee = phi i8 [ %i.ed, %bb.af ], [ 113, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ee, ptr %i.b, align 1, !tbaa !29
  %i.ef = load ptr, ptr %2, align 8, !tbaa !30
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr %2, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !32
  %.not.i37 = icmp eq i64 %i.ek, 0
  br i1 %.not.i37, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.b, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39

bb.ai:                                            ; preds = %bb.ag
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %i.ee) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre83 = load ptr, ptr %i.bj, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %.pre83, i64 48
  %.pre85 = load i32, ptr %.phi.trans.insert84, align 8, !tbaa !85
  br label %bb.aj

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39, %bb.ad
  %i.en = phi i32 [ %.pre85, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39 ], [ %i.du, %bb.ad ]
  %i.eo = phi ptr [ %.pre83, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39 ], [ %i.dv, %bb.ad ]
  %i.ep = and i32 %i.en, 15
  %.not66 = icmp eq i32 %i.ep, 0
  br i1 %.not66, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.j, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !29
  %i.eq = load ptr, ptr %2, align 8, !tbaa !30
  %i.er = getelementptr i8, ptr %i.eq, i64 -24
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr inbounds i8, ptr %2, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !32
  %.not.i40 = icmp eq i64 %i.ev, 0
  br i1 %.not.i40, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit42

bb.am:                                            ; preds = %bb.ak
  %i.ex = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 45) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit42

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit42: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre86 = load ptr, ptr %i.bj, align 8, !tbaa !68
  br label %bb.an

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit42, %bb.aj
  %i.ey = phi ptr [ %.pre86, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit42 ], [ %i.eo, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 60
  %i.fa = load i8, ptr %i.ez, align 4, !tbaa !101 ; 2 uses
  %.not = icmp eq i8 %i.fa, 64                    ; 2 uses
  br i1 %.not, label %._crit_edge.i.i, label %bb.ao

._crit_edge.i.i:                                  ; preds = %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.fb, ptr %3, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.fb, ptr noundef nonnull align 1 dereferenceable(3) @.str.17, i64 3, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.fc, align 8, !tbaa !46
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.fd, align 1, !tbaa !29
  br label %bb.ar

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN9Stockfish9UCIEngine6squareB5cxx11ENS_6SquareE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i8 noundef zeroext %i.fa) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.fe = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.7, i64 noundef 1) #26, !noalias !102 ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ff, ptr %4, align 8, !tbaa !95, !alias.scope !102
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !42 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 7 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.thread, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.thread: ; preds = %bb.ao
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !46 ; 3 uses
  %i.fl = icmp ult i64 %i.fk, 16
  call void @llvm.assume(i1 %i.fl)
  %i.fm = add nuw nsw i64 %i.fk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ff, ptr noundef nonnull align 8 dereferenceable(1) %i.fh, i64 %i.fm, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.fk, ptr %i.fo, align 8, !tbaa !46, !alias.scope !102
  store ptr %i.fh, ptr %i.fe, align 8, !tbaa !42
  store i64 0, ptr %i.fn, align 8, !tbaa !46
  store i8 0, ptr %i.fh, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.ao
  store ptr %i.fg, ptr %4, align 8, !tbaa !42, !alias.scope !102
  %i.fp = load i64, ptr %i.fh, align 8, !tbaa !29
  store i64 %i.fp, ptr %i.ff, align 8, !tbaa !29, !alias.scope !102
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !46 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.pre.i, ptr %i.fr, align 8, !tbaa !46, !alias.scope !102
  store ptr %i.fh, ptr %i.fe, align 8, !tbaa !42
  store i64 0, ptr %i.fq, align 8, !tbaa !46
  store i8 0, ptr %i.fh, align 8, !tbaa !29
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.fs = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.fs, label %bb.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ap:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #30, !noalias !105
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.thread, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.ft = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7, i64 noundef 1) #26, !noalias !105 ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.fu, ptr %3, align 8, !tbaa !95, !alias.scope !105
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !42 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 5 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !46 ; 3 uses
  %i.ga = icmp ult i64 %i.fz, 16
  call void @llvm.assume(i1 %i.ga)
  %i.gb = add nuw nsw i64 %i.fz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fu, ptr noundef nonnull align 8 dereferenceable(1) %i.fw, i64 %i.gb, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.fv, ptr %3, align 8, !tbaa !42, !alias.scope !105
  %i.gc = load i64, ptr %i.fw, align 8, !tbaa !29
  store i64 %i.gc, ptr %i.fu, align 8, !tbaa !29, !alias.scope !105
  %.phi.trans.insert.i44 = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.pre.i45 = load i64, ptr %.phi.trans.insert.i44, align 8, !tbaa !46
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  %i.gd = phi i64 [ %i.fz, %bb.aq ], [ %.pre.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.gd, ptr %i.gf, align 8, !tbaa !46, !alias.scope !105
  store ptr %i.fw, ptr %i.ft, align 8, !tbaa !42
  store i64 0, ptr %i.ge, align 8, !tbaa !46
  store i8 0, ptr %i.fw, align 8, !tbaa !29
  %.pre87 = load ptr, ptr %3, align 8, !tbaa !42
  %.pre89 = load i64, ptr %i.gf, align 8, !tbaa !46
  br label %bb.ar

bb.ar:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %._crit_edge.i.i
  %i.gg = phi i64 [ %.pre89, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit ], [ 3, %._crit_edge.i.i ]
  %i.gh = phi ptr [ %.pre87, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit ], [ %i.fb, %._crit_edge.i.i ]
  %i.gi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.gh, i64 noundef %i.gg) #26
  %i.gj = load ptr, ptr %i.bj, align 8, !tbaa !68
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 52
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !81
  %i.gm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, i32 noundef %i.gl) #26 ; 2 uses
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noundef nonnull @.str.7, i64 noundef 1) #26 ; 0 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !108
  %i.gq = load i8, ptr %i.be, align 4, !tbaa !98
  %i.gr = icmp eq i8 %i.gq, 1
  %.neg = sext i1 %i.gr to i32
  %i.gs = add i32 %i.gp, %.neg
  %i.gt = sdiv i32 %i.gs, 2
  %i.gu = add nsw i32 %i.gt, 1
  %i.gv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, i32 noundef %i.gu) #26 ; 0 uses
  %i.gw = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.ar
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !29
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  br i1 %.not, label %.critedge22, label %.critedge17

.critedge17:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hb = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %.critedge17
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !29
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %.critedge17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.hg = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !29
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.critedge22

.critedge22:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.hl, ptr %0, align 8, !tbaa !95, !alias.scope !115
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hm, align 8, !tbaa !46, !alias.scope !115
  store i8 0, ptr %i.hl, align 8, !tbaa !29, !alias.scope !115
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !116, !noalias !115 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN9Stockfish8Position4initEv:bb.a
  %i.aho = xor i64 %i.ahn, %i.ahm                 ; 2 uses
  %i.ahp = lshr i64 %i.aho, 27
  %i.ahq = xor i64 %i.ahp, %i.aho                 ; 3 uses
  %i.ahr = lshr i64 %i.ahq, 12
  %i.ahs = xor i64 %i.ahr, %i.ahq                 ; 2 uses
  %i.aht = shl i64 %i.ahs, 25
  %i.ahu = xor i64 %i.aht, %i.ahs                 ; 2 uses
  %i.ahv = lshr i64 %i.ahu, 27
  %i.ahw = xor i64 %i.ahv, %i.ahu                 ; 3 uses
  %i.ahx = lshr i64 %i.ahw, 12
  %i.ahy = xor i64 %i.ahx, %i.ahw                 ; 2 uses
  %i.ahz = shl i64 %i.ahy, 25
  %i.aia = xor i64 %i.ahz, %i.ahy                 ; 2 uses
  %i.aib = lshr i64 %i.aia, 27
  %i.aic = xor i64 %i.aib, %i.aia                 ; 3 uses
  %i.aid = lshr i64 %i.aic, 12
  %i.aie = xor i64 %i.aid, %i.aic                 ; 2 uses
  %i.aif = shl i64 %i.aie, 25
  %i.aig = xor i64 %i.aif, %i.aie                 ; 2 uses
  %i.aih = lshr i64 %i.aig, 27
  %i.aii = xor i64 %i.aih, %i.aig                 ; 3 uses
  %i.aij = lshr i64 %i.aii, 12
  %i.aik = xor i64 %i.aij, %i.aii                 ; 2 uses
  %i.ail = shl i64 %i.aik, 25
  %i.aim = xor i64 %i.ail, %i.aik                 ; 2 uses
  %i.ain = lshr i64 %i.aim, 27
  %i.aio = xor i64 %i.ain, %i.aim                 ; 3 uses
  %i.aip = lshr i64 %i.aio, 12
  %i.aiq = xor i64 %i.aip, %i.aio                 ; 2 uses
  %i.air = shl i64 %i.aiq, 25
  %i.ais = xor i64 %i.air, %i.aiq                 ; 2 uses
  %i.ait = lshr i64 %i.ais, 27
  %i.aiu = xor i64 %i.ait, %i.ais                 ; 3 uses
  %i.aiv = lshr i64 %i.aiu, 12
  %i.aiw = xor i64 %i.aiv, %i.aiu                 ; 2 uses
  %i.aix = shl i64 %i.aiw, 25
  %i.aiy = xor i64 %i.aix, %i.aiw                 ; 2 uses
  %i.aiz = lshr i64 %i.aiy, 27
  %i.aja = xor i64 %i.aiz, %i.aiy                 ; 3 uses
  %i.ajb = lshr i64 %i.aja, 12
  %i.ajc = xor i64 %i.ajb, %i.aja                 ; 2 uses
  %i.ajd = shl i64 %i.ajc, 25
  %i.aje = xor i64 %i.ajd, %i.ajc                 ; 2 uses
  %i.ajf = lshr i64 %i.aje, 27
  %i.ajg = xor i64 %i.ajf, %i.aje                 ; 3 uses
  %i.ajh = insertelement <8 x i64> poison, i64 %i.ahq, i64 0
  %i.aji = insertelement <8 x i64> %i.ajh, i64 %i.ahw, i64 1
  %i.ajj = insertelement <8 x i64> %i.aji, i64 %i.aic, i64 2
  %i.ajk = insertelement <8 x i64> %i.ajj, i64 %i.aii, i64 3
  %i.ajl = insertelement <8 x i64> %i.ajk, i64 %i.aio, i64 4
  %i.ajm = insertelement <8 x i64> %i.ajl, i64 %i.aiu, i64 5
  %i.ajn = insertelement <8 x i64> %i.ajm, i64 %i.aja, i64 6
  %i.ajo = insertelement <8 x i64> %i.ajn, i64 %i.ajg, i64 7
  %i.ajp = mul <8 x i64> %i.ajo, splat (i64 2685821657736338717)
  store <8 x i64> %i.ajp, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist8castlingE, i64 64), align 64, !tbaa !11
  %i.ajq = lshr i64 %i.ajg, 12
  %i.ajr = xor i64 %i.ajq, %i.ajg                 ; 2 uses
  %i.ajs = shl i64 %i.ajr, 25
  %i.ajt = xor i64 %i.ajs, %i.ajr                 ; 2 uses
  %i.aju = lshr i64 %i.ajt, 27
  %i.ajv = xor i64 %i.aju, %i.ajt                 ; 3 uses
  %i.ajw = mul i64 %i.ajv, 2685821657736338717    ; 4 uses
  store i64 %i.ajw, ptr @_ZN9Stockfish7Zobrist4sideE, align 8, !tbaa !11
  %i.ajx = lshr i64 %i.ajv, 12
  %i.ajy = xor i64 %i.ajx, %i.ajv                 ; 2 uses
  %i.ajz = shl i64 %i.ajy, 25
  %i.aka = xor i64 %i.ajz, %i.ajy                 ; 2 uses
  %i.akb = lshr i64 %i.aka, 27
  %i.akc = xor i64 %i.akb, %i.aka
  %i.akd = mul i64 %i.akc, 2685821657736338717
  store i64 %i.akd, ptr @_ZN9Stockfish7Zobrist7noPawnsE, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) @_ZN9Stockfish6cuckooE, i8 0, i64 65536, i1 false), !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16384) @_ZN9Stockfish10cuckooMoveE, i8 0, i64 16384, i1 false), !tbaa !126
  br label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.7171, %bb.b ] ; 9 uses
  %.sroa.060.172 = phi i64 [ 1070372, %bb.a ], [ %i.amt, %bb.b ] ; 2 uses
  %i.ake = lshr i64 %.sroa.060.172, 12
  %i.akf = xor i64 %i.ake, %.sroa.060.172         ; 2 uses
  %i.akg = shl i64 %i.akf, 25
  %i.akh = xor i64 %i.akg, %i.akf                 ; 2 uses
  %i.aki = lshr i64 %i.akh, 27
  %i.akj = xor i64 %i.aki, %i.akh                 ; 3 uses
  %i.akk = mul i64 %i.akj, 2685821657736338717
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  store i64 %i.akk, ptr %i.akl, align 16, !tbaa !11
  %i.akm = lshr i64 %i.akj, 12
  %i.akn = xor i64 %i.akm, %i.akj                 ; 2 uses
  %i.ako = shl i64 %i.akn, 25
  %i.akp = xor i64 %i.ako, %i.akn                 ; 2 uses
  %i.akq = lshr i64 %i.akp, 27
  %i.akr = xor i64 %i.akq, %i.akp                 ; 3 uses
  %i.aks = mul i64 %i.akr, 2685821657736338717
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 8
  store i64 %i.aks, ptr %i.aku, align 8, !tbaa !11
  %i.akv = lshr i64 %i.akr, 12
  %i.akw = xor i64 %i.akv, %i.akr                 ; 2 uses
  %i.akx = shl i64 %i.akw, 25
  %i.aky = xor i64 %i.akx, %i.akw                 ; 2 uses
  %i.akz = lshr i64 %i.aky, 27
  %i.ala = xor i64 %i.akz, %i.aky                 ; 3 uses
  %i.alb = mul i64 %i.ala, 2685821657736338717
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  store i64 %i.alb, ptr %i.ald, align 16, !tbaa !11
  %i.ale = lshr i64 %i.ala, 12
  %i.alf = xor i64 %i.ale, %i.ala                 ; 2 uses
  %i.alg = shl i64 %i.alf, 25
  %i.alh = xor i64 %i.alg, %i.alf                 ; 2 uses
  %i.ali = lshr i64 %i.alh, 27
  %i.alj = xor i64 %i.ali, %i.alh                 ; 3 uses
  %i.alk = mul i64 %i.alj, 2685821657736338717
  %i.all = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 24
  store i64 %i.alk, ptr %i.alm, align 8, !tbaa !11
  %i.aln = lshr i64 %i.alj, 12
  %i.alo = xor i64 %i.aln, %i.alj                 ; 2 uses
  %i.alp = shl i64 %i.alo, 25
  %i.alq = xor i64 %i.alp, %i.alo                 ; 2 uses
  %i.alr = lshr i64 %i.alq, 27
  %i.als = xor i64 %i.alr, %i.alq                 ; 3 uses
  %i.alt = mul i64 %i.als, 2685821657736338717
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  store i64 %i.alt, ptr %i.alv, align 16, !tbaa !11
  %i.alw = lshr i64 %i.als, 12
  %i.alx = xor i64 %i.alw, %i.als                 ; 2 uses
  %i.aly = shl i64 %i.alx, 25
  %i.alz = xor i64 %i.aly, %i.alx                 ; 2 uses
  %i.ama = lshr i64 %i.alz, 27
  %i.amb = xor i64 %i.ama, %i.alz                 ; 3 uses
  %i.amc = mul i64 %i.amb, 2685821657736338717
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 40
  store i64 %i.amc, ptr %i.ame, align 8, !tbaa !11
  %i.amf = lshr i64 %i.amb, 12
  %i.amg = xor i64 %i.amf, %i.amb                 ; 2 uses
  %i.amh = shl i64 %i.amg, 25
  %i.ami = xor i64 %i.amh, %i.amg                 ; 2 uses
  %i.amj = lshr i64 %i.ami, 27
  %i.amk = xor i64 %i.amj, %i.ami                 ; 3 uses
  %i.aml = mul i64 %i.amk, 2685821657736338717
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 48
  store i64 %i.aml, ptr %i.amn, align 16, !tbaa !11
  %i.amo = lshr i64 %i.amk, 12
  %i.amp = xor i64 %i.amo, %i.amk                 ; 2 uses
  %i.amq = shl i64 %i.amp, 25
  %i.amr = xor i64 %i.amq, %i.amp                 ; 2 uses
  %i.ams = lshr i64 %i.amr, 27
  %i.amt = xor i64 %i.ams, %i.amr                 ; 2 uses
  %i.amu = mul i64 %i.amt, 2685821657736338717
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish7Zobrist3psqE, i64 512), i64 %indvars.iv
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 56
  store i64 %i.amu, ptr %i.amw, align 8, !tbaa !11
  %indvars.iv.next.7171 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7171, 64
  br i1 %exitcond.not.7, label %.preheader130, label %bb.b, !llvm.loop !125

bb.c:                                             ; preds = %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit
  ret void

_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader: ; preds = %.preheader70, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit
  %.020.idx89 = phi i64 [ %.020.add, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit ], [ 0, %.preheader70 ] ; 2 uses
  %.020.ptr = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish12_GLOBAL__N_16PiecesE, i64 %.020.idx89
  %i.amx = load i8, ptr %.020.ptr, align 1, !tbaa !27 ; 2 uses
  %i.amy = and i8 %i.amx, 7                       ; 4 uses
  %i.amz = zext nneg i8 %i.amy to i64
  %i.ana = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.amz
  %i.anb = zext i8 %i.amx to i64
  %i.anc = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish7Zobrist3psqE, i64 %i.anb ; 4 uses
  br label %bb.d

.loopexit:                                        ; preds = %.prol.loopexit, %._crit_edge.1, %bb.d
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next108, 64
  br i1 %exitcond110.not, label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit, label %bb.d, !llvm.loop !128

_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit: ; preds = %.loopexit
  %.020.add = add nuw nsw i64 %.020.idx89, 1      ; 2 uses
  %.not23 = icmp eq i64 %.020.add, 12
  br i1 %.not23, label %bb.c, label %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader

bb.d:                                             ; preds = %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader, %.loopexit
  %indvars.iv107 = phi i64 [ 0, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader ], [ %indvars.iv.next108, %.loopexit ] ; 8 uses
  %indvars.iv101 = phi i64 [ 1, %_ZNSt5arrayIN9Stockfish4MoveELm8192EE4fillERKS1_.exit.preheader ], [ %indvars.iv.next102, %.loopexit ] ; 6 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.and = icmp samesign ult i64 %indvars.iv107, 63
  br i1 %i.and, label %.lr.ph85, label %.loopexit

.lr.ph85:                                         ; preds = %bb.d
  %i.ane = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv107 ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8 ; 6 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ane, i64 24 ; 6 uses
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %i.ana, i64 %indvars.iv107 ; 3 uses
  %i.ani = trunc nuw nsw i64 %indvars.iv107 to i16
  %i.anj = shl nuw nsw i16 %i.ani, 6              ; 3 uses
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv107 ; 3 uses
  %0 = trunc i64 %indvars.iv107 to i1
  br i1 %0, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph85
  switch i8 %i.amy, label %bb.h [
    i8 1, label %._crit_edge.prol
    i8 3, label %bb.g
    i8 4, label %bb.f
    i8 5, label %bb.e
  ]

bb.e:                                             ; preds = %.prol.preheader
  %i.anl = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.anm = load i64, ptr %i.anl, align 8, !tbaa !11
  %i.ann = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.ano = load i64, ptr %i.ann, align 8, !tbaa !11
  %i.anp = or i64 %i.ano, %i.anm
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.f:                                             ; preds = %.prol.preheader
  %i.anq = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.anr = load i64, ptr %i.anq, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.g:                                             ; preds = %.prol.preheader
  %i.ans = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

bb.h:                                             ; preds = %.prol.preheader
  %i.anu = load i64, ptr %i.anh, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.0.i.prol = phi i64 [ %i.anu, %bb.h ], [ %i.ant, %bb.g ], [ %i.anr, %bb.f ], [ %i.anp, %bb.e ]
  %i.anv = shl nuw i64 1, %indvars.iv101
  %i.anw = and i64 %.0.i.prol, %i.anv
  %.not25.prol = icmp eq i64 %i.anw, 0
  br i1 %.not25.prol, label %._crit_edge.prol, label %bb.i

bb.i:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol
  %i.anx = trunc nuw nsw i64 %indvars.iv101 to i16
  %i.any = add nuw nsw i16 %i.anj, %i.anx
  %i.anz = load i64, ptr %i.ank, align 8, !tbaa !11
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv101
  %i.aob = load i64, ptr %i.aoa, align 8, !tbaa !11
  %i.aoc = xor i64 %i.anz, %i.aob
  %i.aod = xor i64 %i.aoc, %i.ajw                 ; 3 uses
  %i.aoe = and i64 %i.aod, 8191                   ; 2 uses
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aoe ; 2 uses
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !11
  store i64 %i.aod, ptr %i.aof, align 8, !tbaa !11
  %i.aoh = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aoe ; 2 uses
  %.sroa.0.0.copyload.i79.prol = load i16, ptr %i.aoh, align 2, !tbaa !126 ; 2 uses
  store i16 %i.any, ptr %i.aoh, align 2, !tbaa !126
  %i.aoi = icmp eq i16 %.sroa.0.0.copyload.i79.prol, 0
  br i1 %i.aoi, label %._crit_edge.prol, label %.lr.ph.preheader.prol

.lr.ph.preheader.prol:                            ; preds = %bb.i
  %i.aoj = trunc i64 %i.aod to i32
  %i.aok = and i32 %i.aoj, 8191
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.preheader.prol
  %.sroa.0.0.copyload.i81.prol = phi i16 [ %.sroa.0.0.copyload.i.prol, %.lr.ph.prol ], [ %.sroa.0.0.copyload.i79.prol, %.lr.ph.preheader.prol ]
  %i.aol = phi i64 [ %i.aou, %.lr.ph.prol ], [ %i.aog, %.lr.ph.preheader.prol ] ; 2 uses
  %.080.prol = phi i32 [ %i.aor, %.lr.ph.prol ], [ %i.aok, %.lr.ph.preheader.prol ]
  %i.aom = trunc i64 %i.aol to i32                ; 2 uses
  %i.aon = and i32 %i.aom, 8191                   ; 2 uses
  %i.aoo = icmp eq i32 %.080.prol, %i.aon
  %i.aop = lshr i32 %i.aom, 16
  %i.aoq = and i32 %i.aop, 8191
  %i.aor = select i1 %i.aoo, i32 %i.aoq, i32 %i.aon ; 2 uses
  %i.aos = zext nneg i32 %i.aor to i64            ; 2 uses
  %i.aot = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aos ; 2 uses
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !11
  store i64 %i.aol, ptr %i.aot, align 8, !tbaa !11
  %i.aov = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aos ; 2 uses
  %.sroa.0.0.copyload.i.prol = load i16, ptr %i.aov, align 2, !tbaa !126 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81.prol, ptr %i.aov, align 2, !tbaa !126
  %i.aow = icmp eq i16 %.sroa.0.0.copyload.i.prol, 0
  br i1 %i.aow, label %._crit_edge.prol, label %.lr.ph.prol, !llvm.loop !132

._crit_edge.prol:                                 ; preds = %.lr.ph.prol, %bb.i, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.prol, %.prol.preheader
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv101, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %._crit_edge.prol, %.lr.ph85
  %indvars.iv103.unr = phi i64 [ %indvars.iv101, %.lr.ph85 ], [ %indvars.iv.next104.prol, %._crit_edge.prol ]
  %i.aox = icmp eq i64 %indvars.iv107, 62
  br i1 %i.aox, label %.loopexit, label %.lr.ph85.new

.lr.ph85.new:                                     ; preds = %.prol.loopexit, %._crit_edge.1
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %._crit_edge.1 ], [ %indvars.iv103.unr, %.prol.loopexit ] ; 6 uses
  switch i8 %i.amy, label %bb.m [
    i8 1, label %._crit_edge
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
  ]

bb.j:                                             ; preds = %.lr.ph85.new
  %i.aoy = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.k:                                             ; preds = %.lr.ph85.new
  %i.apa = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.l:                                             ; preds = %.lr.ph85.new
  %i.apc = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !11
  %i.ape = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.apf = load i64, ptr %i.ape, align 8, !tbaa !11
  %i.apg = or i64 %i.apf, %i.apd
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.m:                                             ; preds = %.lr.ph85.new
  %i.aph = load i64, ptr %i.anh, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i = phi i64 [ %i.aph, %bb.m ], [ %i.aoz, %bb.j ], [ %i.apb, %bb.k ], [ %i.apg, %bb.l ]
  %i.api = shl nuw i64 1, %indvars.iv103
  %i.apj = and i64 %.0.i, %i.api
  %.not25 = icmp eq i64 %i.apj, 0
  br i1 %.not25, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit
  %i.apk = trunc nuw nsw i64 %indvars.iv103 to i16
  %i.apl = add nuw nsw i16 %i.anj, %i.apk
  %i.apm = load i64, ptr %i.ank, align 8, !tbaa !11
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %indvars.iv103
  %i.apo = load i64, ptr %i.apn, align 8, !tbaa !11
  %i.app = xor i64 %i.apm, %i.apo
  %i.apq = xor i64 %i.app, %i.ajw                 ; 3 uses
  %i.apr = and i64 %i.apq, 8191                   ; 2 uses
  %i.aps = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.apr ; 2 uses
  %i.apt = load i64, ptr %i.aps, align 8, !tbaa !11
  store i64 %i.apq, ptr %i.aps, align 8, !tbaa !11
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.apr ; 2 uses
  %.sroa.0.0.copyload.i79 = load i16, ptr %i.apu, align 2, !tbaa !126 ; 2 uses
  store i16 %i.apl, ptr %i.apu, align 2, !tbaa !126
  %i.apv = icmp eq i16 %.sroa.0.0.copyload.i79, 0
  br i1 %i.apv, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.apw = trunc i64 %i.apq to i32
  %i.apx = and i32 %i.apw, 8191
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.0.copyload.i81 = phi i16 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %.sroa.0.0.copyload.i79, %.lr.ph.preheader ]
  %i.apy = phi i64 [ %i.aqh, %.lr.ph ], [ %i.apt, %.lr.ph.preheader ] ; 2 uses
  %.080 = phi i32 [ %i.aqe, %.lr.ph ], [ %i.apx, %.lr.ph.preheader ]
  %i.apz = trunc i64 %i.apy to i32                ; 2 uses
  %i.aqa = and i32 %i.apz, 8191                   ; 2 uses
  %i.aqb = icmp eq i32 %.080, %i.aqa
  %i.aqc = lshr i32 %i.apz, 16
  %i.aqd = and i32 %i.aqc, 8191
  %i.aqe = select i1 %i.aqb, i32 %i.aqd, i32 %i.aqa ; 2 uses
  %i.aqf = zext nneg i32 %i.aqe to i64            ; 2 uses
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.aqf ; 2 uses
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !11
  store i64 %i.apy, ptr %i.aqg, align 8, !tbaa !11
  %i.aqi = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.aqf ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.aqi, align 2, !tbaa !126 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81, ptr %i.aqi, align 2, !tbaa !126
  %i.aqj = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %i.aqj, label %._crit_edge, label %.lr.ph, !llvm.loop !132

._crit_edge:                                      ; preds = %.lr.ph, %bb.n, %.lr.ph85.new, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  switch i8 %i.amy, label %bb.r [
    i8 1, label %._crit_edge.1
    i8 3, label %bb.q
    i8 4, label %bb.p
    i8 5, label %bb.o
  ]

bb.o:                                             ; preds = %._crit_edge
  %i.aqk = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.aql = load i64, ptr %i.aqk, align 8, !tbaa !11
  %i.aqm = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.aqn = load i64, ptr %i.aqm, align 8, !tbaa !11
  %i.aqo = or i64 %i.aqn, %i.aql
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.p:                                             ; preds = %._crit_edge
  %i.aqp = load ptr, ptr %i.ang, align 8, !tbaa !129
  %i.aqq = load i64, ptr %i.aqp, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.q:                                             ; preds = %._crit_edge
  %i.aqr = load ptr, ptr %i.anf, align 8, !tbaa !129
  %i.aqs = load i64, ptr %i.aqr, align 8, !tbaa !11
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1

bb.r:                                             ; preds = %._crit_edge
  %i.aqt = load i64, ptr %i.anh, align 8, !tbaa !11
end_hunk_2
