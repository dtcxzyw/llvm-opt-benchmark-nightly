inline.NumInlined: 199
inline.NumDeleted: 97
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i8 }
%"struct.google::protobuf::compiler::ZipWriter::FileInfo" = type <{ %"class.std::__cxx11::basic_string", i32, i32, i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.google::protobuf::io::CodedOutputStream" = type { %"class.google::protobuf::io::EpsCopyOutputStream", ptr, i64 }
%"class.google::protobuf::io::EpsCopyOutputStream" = type <{ ptr, ptr, [32 x i8], ptr, i8, i8, i8, i8, [4 x i8] }>

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

@_ZN6google8protobuf8compilerL11kCRC32TableE = internal unnamed_addr constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E = external local_unnamed_addr global %"struct.std::atomic", align 1

@_ZN6google8protobuf8compiler9ZipWriterC1EPNS0_2io20ZeroCopyOutputStreamE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6google8protobuf8compiler9ZipWriterC2EPNS0_2io20ZeroCopyOutputStreamE
@_ZN6google8protobuf8compiler9ZipWriterD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6google8protobuf8compiler9ZipWriterD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf8compiler9ZipWriterC2EPNS0_2io20ZeroCopyOutputStreamE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf8compiler9ZipWriterD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf8compiler9ZipWriter8FileInfoES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6google8protobuf8compiler9ZipWriter8FileInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6google8protobuf8compiler9ZipWriter8FileInfoEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6google8protobuf8compiler9ZipWriter8FileInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #15
  br label %_ZSt8_DestroyIN6google8protobuf8compiler9ZipWriter8FileInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6google8protobuf8compiler9ZipWriter8FileInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf8compiler9ZipWriter8FileInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN6google8protobuf8compiler9ZipWriter8FileInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler9ZipWriter8FileInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPN6google8protobuf8compiler9ZipWriter8FileInfoES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6google8protobuf8compiler9ZipWriter8FileInfoES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler9ZipWriter8FileInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6google8protobuf8compiler9ZipWriter8FileInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler9ZipWriter8FileInfoES4_EvT_S6_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #15
  br label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler9ZipWriter8FileInfoES4_EvT_S6_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler9ZipWriter5WriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [2 x i8], align 2                 ; 4 uses
  %i.f = alloca [2 x i8], align 2                 ; 4 uses
  %i.g = alloca [2 x i8], align 2                 ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.google::protobuf::compiler::ZipWriter::FileInfo", align 8 ; 14 uses
  %4 = alloca %"class.google::protobuf::io::CodedOutputStream", align 8 ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !28
  store i8 0, ptr %i.k, align 8, !tbaa !23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  %i.o = trunc i64 %i.n to i16                    ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.b unwind label %bb.at

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 %i.u, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28   ; 6 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 3 uses
  store i32 %i.y, ptr %i.z, align 4, !tbaa !33
  %.val = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %_ZN6google8protobuf8compilerL12ComputeCRC32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.x, 1
  %i.aa = icmp eq i64 %i.x, 1
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.x, -2
  br label %.lr.ph.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02.i.epil.init = phi i32 [ -1, %.lr.ph.i.preheader ], [ %i.ax, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i64 %i.x to i1
  call void @llvm.assume(i1 %lcmp.mod83)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv.i.epil.init
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !23
  %.0.tr.i.epil = trunc i32 %.02.i.epil.init to i8
  %.narrow.i.epil = xor i8 %i.ac, %.0.tr.i.epil
  %i.ad = zext i8 %.narrow.i.epil to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8compilerL11kCRC32TableE, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = lshr i32 %.02.i.epil.init, 8
  %i.ah = xor i32 %i.af, %i.ag
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ax, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ah, %.lr.ph.i.epil.preheader ]
  %i.ai = xor i32 %.lcssa, -1
  br label %_ZN6google8protobuf8compilerL12ComputeCRC32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.02.i = phi i32 [ -1, %.lr.ph.i.preheader.new ], [ %i.ax, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23
  %.0.tr.i = trunc i32 %.02.i to i8
  %.narrow.i = xor i8 %i.ak, %.0.tr.i
  %i.al = zext i8 %.narrow.i to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8compilerL11kCRC32TableE, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = lshr i32 %.02.i, 8
  %i.ap = xor i32 %i.an, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !23
  %.0.tr.i.1 = trunc i32 %i.ap to i8
  %.narrow.i.1 = xor i8 %i.as, %.0.tr.i.1
  %i.at = zext i8 %.narrow.i.1 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8compilerL11kCRC32TableE, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = lshr i32 %i.ap, 8
  %i.ax = xor i32 %i.av, %i.aw                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !34

_ZN6google8protobuf8compilerL12ComputeCRC32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.ai, %._crit_edge.loopexit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i32 %.0.lcssa.i, ptr %i.ay, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26
  %.not.i18 = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i18, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8compilerL12ComputeCRC32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !27
  %i.be = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.bf = load i64, ptr %i.l, align 8, !tbaa !28  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  store i64 %i.bf, ptr %i.j, align 8, !tbaa !36
  %i.bg = icmp ugt i64 %i.bf, 15
  br i1 %i.bg, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(44) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc unwind label %bb.at    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !18
  %i.bi = load i64, ptr %i.j, align 8, !tbaa !36
  store i64 %i.bi, ptr %i.bd, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.c
  %i.bj = phi ptr [ %i.bh, %.noexc ], [ %i.bd, %bb.c ] ; 2 uses
  switch i64 %i.bf, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN6google8protobuf8compiler9ZipWriter8FileInfoC2ERKS3_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load i8, ptr %i.be, align 1, !tbaa !23
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !23
  br label %_ZN6google8protobuf8compiler9ZipWriter8FileInfoC2ERKS3_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.be, i64 %i.bf, i1 false)
  br label %_ZN6google8protobuf8compiler9ZipWriter8FileInfoC2ERKS3_.exit.i

_ZN6google8protobuf8compiler9ZipWriter8FileInfoC2ERKS3_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !36  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !28
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bp, ptr noundef nonnull align 8 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store ptr %i.br, ptr %i.az, align 8, !tbaa !17
  br label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE9push_backERKS4_.exit

bb.f:                                             ; preds = %_ZN6google8protobuf8compilerL12ComputeCRC32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr %i.ba, ptr noundef nonnull align 8 dereferenceable(44) %3)
          to label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE9push_backERKS4_.exit unwind label %bb.at

_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZN6google8protobuf8compiler9ZipWriter8FileInfoC2ERKS3_.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bt = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %i.bu = load atomic i8, ptr @_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E monotonic, align 1, !range !37, !noundef !38
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 17 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.bw, ptr %4, align 8, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !42
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.bt, ptr %i.by, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store i8 0, ptr %i.bz, align 8, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 57
  store i8 0, ptr %i.ca, align 1, !tbaa !45
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 58
  store i8 %i.bu, ptr %i.cb, align 2, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 59
  store i8 0, ptr %i.cc, align 1, !tbaa !47
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !48
  %i.cd = load ptr, ptr %i.bt, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef i64 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %.noexc20 unwind label %bb.au, !inline_history !49
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler9ZipWriter5WriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_:bb.a
  %i.en = load ptr, ptr %4, align 8, !tbaa !39
  %.not.i.i41 = icmp ult ptr %i.el, %i.en
  br i1 %.not.i.i41, label %bb.ac, label %bb.ab, !prof !52

bb.ab:                                            ; preds = %bb.aa
  %i.eo = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.el)
          to label %bb.ac unwind label %bb.av

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.0.i.i42 = phi ptr [ %i.el, %bb.aa ], [ %i.eo, %bb.ab ] ; 2 uses
  store i32 %i.em, ptr %.0.i.i42, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 4 ; 4 uses
  store ptr %i.ep, ptr %i.bv, align 8, !tbaa !53
  %i.eq = load i32, ptr %i.z, align 4, !tbaa !33
  %i.er = load ptr, ptr %4, align 8, !tbaa !39
  %.not.i.i45 = icmp ult ptr %i.ep, %i.er
  br i1 %.not.i.i45, label %bb.ae, label %bb.ad, !prof !52

bb.ad:                                            ; preds = %bb.ac
  %i.es = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.ep)
          to label %bb.ae unwind label %bb.av

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.0.i.i46 = phi ptr [ %i.ep, %bb.ac ], [ %i.es, %bb.ad ] ; 3 uses
  store i32 %i.eq, ptr %.0.i.i46, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 4 ; 4 uses
  store ptr %i.et, ptr %i.bv, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i16 %i.o, ptr %i.b, align 2
  %i.eu = load ptr, ptr %4, align 8, !tbaa !39
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp slt i64 %i.ex, 2
  br i1 %i.ey, label %bb.af, label %bb.ag, !prof !55

bb.af:                                            ; preds = %bb.ae
  %i.ez = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.b, i32 noundef 2, ptr noundef nonnull %i.et)
          to label %bb.ah unwind label %bb.av

bb.ag:                                            ; preds = %bb.ae
  store i16 %i.o, ptr %i.et, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i.i.i49 = phi ptr [ %i.fa, %bb.ag ], [ %i.ez, %bb.af ] ; 5 uses
  store ptr %.0.i.i.i49, ptr %i.bv, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i16 0, ptr %i.a, align 2
  %i.fb = load ptr, ptr %4, align 8, !tbaa !39
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %.0.i.i.i49 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = icmp slt i64 %i.fe, 2
  br i1 %i.ff, label %bb.ai, label %bb.aj, !prof !55

bb.ai:                                            ; preds = %bb.ah
  %i.fg = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef %.0.i.i.i49)
          to label %bb.ak unwind label %bb.av

bb.aj:                                            ; preds = %bb.ah
  store i16 0, ptr %.0.i.i.i49, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i.i49, i64 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0.i.i.i52 = phi ptr [ %i.fh, %bb.aj ], [ %i.fg, %bb.ai ] ; 5 uses
  store ptr %.0.i.i.i52, ptr %i.bv, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.fi = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.fj = load i64, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.fk = load ptr, ptr %4, align 8, !tbaa !39
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %.0.i.i.i52 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %sext.i = shl i64 %i.fj, 32
  %i.fo = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.fp = icmp slt i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.al, label %bb.am, !prof !55

bb.al:                                            ; preds = %bb.ak
  %i.fq = trunc i64 %i.fj to i32
  %i.fr = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %i.fi, i32 noundef %i.fq, ptr noundef %.0.i.i.i52)
          to label %bb.an unwind label %bb.av

bb.am:                                            ; preds = %bb.ak
  %i.fs = and i64 %i.fj, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i52, ptr align 1 %i.fi, i64 %i.fs, i1 false)
  %i.ft = getelementptr inbounds i8, ptr %.0.i.i.i52, i64 %i.fo
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i.i.i55 = phi ptr [ %i.ft, %bb.am ], [ %i.fr, %bb.al ] ; 5 uses
  store ptr %.0.i.i.i55, ptr %i.bv, align 8, !tbaa !53
  %i.fu = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.fv = load i64, ptr %i.w, align 8, !tbaa !28  ; 3 uses
  %i.fw = load ptr, ptr %4, align 8, !tbaa !39
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %.0.i.i.i55 to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %sext.i59 = shl i64 %i.fv, 32
  %i.ga = ashr exact i64 %sext.i59, 32            ; 2 uses
  %i.gb = icmp slt i64 %i.fz, %i.ga
  br i1 %i.gb, label %bb.ao, label %bb.ap, !prof !55

bb.ao:                                            ; preds = %bb.an
  %i.gc = trunc i64 %i.fv to i32
  %i.gd = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %i.fu, i32 noundef %i.gc, ptr noundef %.0.i.i.i55)
          to label %bb.aq unwind label %bb.av

bb.ap:                                            ; preds = %bb.an
  %i.ge = and i64 %i.fv, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i55, ptr align 1 %i.fu, i64 %i.ge, i1 false)
  %i.gf = getelementptr inbounds i8, ptr %.0.i.i.i55, i64 %i.ga
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0.i.i.i60 = phi ptr [ %i.gf, %bb.ap ], [ %i.gd, %bb.ao ] ; 2 uses
  store ptr %.0.i.i.i60, ptr %i.bv, align 8, !tbaa !53
  %i.gg = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19FlushAndResetBufferEPh(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %.0.i.i.i60)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.gg, ptr %i.bv, align 8, !tbaa !53
  %i.gh = load i8, ptr %i.bz, align 8, !tbaa !44, !range !37, !noundef !38
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.gi = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.k
  br i1 %i.gj, label %_ZN6google8protobuf8compiler9ZipWriter8FileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ar
  %i.gk = load i64, ptr %i.k, align 8, !tbaa !23
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #15
  br label %_ZN6google8protobuf8compiler9ZipWriter8FileInfoD2Ev.exit

_ZN6google8protobuf8compiler9ZipWriter8FileInfoD2Ev.exit: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.gm = trunc nuw i8 %i.gh to i1
  %i.gn = xor i1 %i.gm, true
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i1 %i.gn

bb.as:                                            ; preds = %bb.a
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.at:                                            ; preds = %bb.f, %.noexc.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.au:                                            ; preds = %.noexc20, %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE9push_backERKS4_.exit
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.aq, %bb.ao, %bb.al, %bb.ai, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn = phi { ptr, i32 } [ %i.gr, %bb.av ], [ %i.gq, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.aw, %bb.as
  %.pn.pn.pn = phi { ptr, i32 } [ %i.go, %bb.as ], [ %.pn, %bb.aw ], [ %i.gp, %bb.at ]
  %i.gs = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.k
  br i1 %i.gt, label %_ZN6google8protobuf8compiler9ZipWriter8FileInfoD2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.ax
  %i.gu = load i64, ptr %i.k, align 8, !tbaa !23
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #15
  br label %_ZN6google8protobuf8compiler9ZipWriter8FileInfoD2Ev.exit66

_ZN6google8protobuf8compiler9ZipWriter8FileInfoD2Ev.exit66: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler9ZipWriter14WriteDirectoryEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [2 x i8], align 2                 ; 4 uses
  %i.f = alloca [2 x i8], align 2                 ; 4 uses
  %i.g = alloca [2 x i8], align 2                 ; 4 uses
  %i.h = alloca [2 x i8], align 2                 ; 4 uses
  %i.i = alloca [2 x i8], align 2                 ; 4 uses
  %i.j = alloca [2 x i8], align 2                 ; 4 uses
  %i.k = alloca [2 x i8], align 2                 ; 4 uses
  %i.l = alloca [2 x i8], align 2                 ; 4 uses
  %i.m = alloca [2 x i8], align 2                 ; 4 uses
  %i.n = alloca [2 x i8], align 2                 ; 4 uses
  %i.o = alloca [2 x i8], align 2                 ; 4 uses
  %i.p = alloca [2 x i8], align 2                 ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.google::protobuf::io::CodedOutputStream", align 8 ; 70 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 48                  ; 3 uses
  %i.aa = trunc i64 %i.z to i16                   ; 4 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.ag = trunc i64 %i.af to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.ah = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %i.ai = load atomic i8, ptr @_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E monotonic, align 1, !range !37, !noundef !38
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 31 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.ak, ptr %1, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store i8 0, ptr %i.an, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 0, ptr %i.ao, align 1, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 58
  store i8 %i.ai, ptr %i.ap, align 2, !tbaa !46
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 59
  store i8 0, ptr %i.aq, align 1, !tbaa !47
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ah), !inline_history !49
  store i64 %i.av, ptr %i.ar, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #16
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r), !inline_history !56
  %i.ba = load i32, ptr %i.r, align 4             ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = select i1 %i.az, i1 %i.bb, i1 false, !prof !52
  br i1 %i.bc, label %bb.b, label %._ZN6google8protobuf2io17CodedOutputStreamC2INS1_20ZeroCopyOutputStreamEvEEPT_.exit_crit_edge, !prof !52

._ZN6google8protobuf2io17CodedOutputStreamC2INS1_20ZeroCopyOutputStreamEvEEPT_.exit_crit_edge: ; preds = %bb.a
  %.pre107.pre = load ptr, ptr %i.aj, align 8, !tbaa !53
  br label %_ZN6google8protobuf2io17CodedOutputStreamC2INS1_20ZeroCopyOutputStreamEvEEPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !54  ; 3 uses
  %i.be = icmp samesign ugt i32 %i.ba, 16         ; 3 uses
  %i.bf = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bf
  %.sink9.i.i.i = select i1 %i.be, ptr %i.bh, ptr %i.bi
  %.sink.i.i.i = select i1 %i.be, ptr null, ptr %i.bd
  %.0.i.i.i = select i1 %i.be, ptr %i.bd, ptr %i.ak ; 2 uses
  store ptr %.sink9.i.i.i, ptr %1, align 8, !tbaa !39
  store ptr %.sink.i.i.i, ptr %i.al, align 8, !tbaa !42
  store ptr %.0.i.i.i, ptr %i.aj, align 8, !tbaa !53
  br label %_ZN6google8protobuf2io17CodedOutputStreamC2INS1_20ZeroCopyOutputStreamEvEEPT_.exit

_ZN6google8protobuf2io17CodedOutputStreamC2INS1_20ZeroCopyOutputStreamEvEEPT_.exit: ; preds = %._ZN6google8protobuf2io17CodedOutputStreamC2INS1_20ZeroCopyOutputStreamEvEEPT_.exit_crit_edge, %bb.b
  %.pre107 = phi ptr [ %.pre107.pre, %._ZN6google8protobuf2io17CodedOutputStreamC2INS1_20ZeroCopyOutputStreamEvEEPT_.exit_crit_edge ], [ %.0.i.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  %i.bj = and i64 %i.z, 65535
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf2io17CodedOutputStreamC2INS1_20ZeroCopyOutputStreamEvEEPT_.exit
  %wide.trip.count = and i64 %i.z, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ax, %_ZN6google8protobuf2io17CodedOutputStreamC2INS1_20ZeroCopyOutputStreamEvEEPT_.exit
  %i.bk = phi ptr [ %.pre107, %_ZN6google8protobuf2io17CodedOutputStreamC2INS1_20ZeroCopyOutputStreamEvEEPT_.exit ], [ %.0.i.i.i75, %bb.ax ]
  %i.bl = invoke noundef i64 @_ZNK6google8protobuf2io19EpsCopyOutputStream9ByteCountEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.bk)
          to label %bb.az unwind label %bb.bw

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ax
  %i.bm = phi ptr [ %.pre107, %.lr.ph.preheader ], [ %.0.i.i.i75, %bb.ax ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ax ] ; 2 uses
  %i.bn = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw [48 x i8], ptr %i.bn, i64 %indvars.iv ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !28
  %i.br = trunc i64 %i.bq to i16                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !33 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !31
  %i.by = load ptr, ptr %1, align 8, !tbaa !39
  %.not.i.i = icmp ult ptr %i.bm, %i.by
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !52

bb.c:                                             ; preds = %.lr.ph
  %i.bz = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.bm)
          to label %bb.d unwind label %bb.ay

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.0.i.i = phi ptr [ %i.bm, %.lr.ph ], [ %i.bz, %bb.c ] ; 3 uses
  store i32 33639248, ptr %.0.i.i, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 4 uses
  store ptr %i.ca, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  store i16 10, ptr %i.p, align 2
  %i.cb = load ptr, ptr %1, align 8, !tbaa !39
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp slt i64 %i.ce, 2
  br i1 %i.cf, label %bb.e, label %bb.f, !prof !55

bb.e:                                             ; preds = %bb.d
  %i.cg = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.p, i32 noundef 2, ptr noundef nonnull %i.ca)
          to label %bb.g unwind label %bb.ay

bb.f:                                             ; preds = %bb.d
  store i16 10, ptr %i.ca, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i23 = phi ptr [ %i.ch, %bb.f ], [ %i.cg, %bb.e ] ; 5 uses
  store ptr %.0.i.i.i23, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  store i16 10, ptr %i.o, align 2
  %i.ci = load ptr, ptr %1, align 8, !tbaa !39
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %.0.i.i.i23 to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = icmp slt i64 %i.cl, 2
  br i1 %i.cm, label %bb.h, label %bb.i, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.cn = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.o, i32 noundef 2, ptr noundef %.0.i.i.i23)
          to label %bb.j unwind label %bb.ay

bb.i:                                             ; preds = %bb.g
  store i16 10, ptr %.0.i.i.i23, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i25 = phi ptr [ %i.co, %bb.i ], [ %i.cn, %bb.h ] ; 5 uses
  store ptr %.0.i.i.i25, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i16 0, ptr %i.n, align 2
  %i.cp = load ptr, ptr %1, align 8, !tbaa !39
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %.0.i.i.i25 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp slt i64 %i.cs, 2
  br i1 %i.ct, label %bb.k, label %bb.l, !prof !55

bb.k:                                             ; preds = %bb.j
  %i.cu = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.n, i32 noundef 2, ptr noundef %.0.i.i.i25)
          to label %bb.m unwind label %bb.ay

bb.l:                                             ; preds = %bb.j
  store i16 0, ptr %.0.i.i.i25, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i25, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i28 = phi ptr [ %i.cv, %bb.l ], [ %i.cu, %bb.k ] ; 5 uses
  store ptr %.0.i.i.i28, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler9ZipWriter14WriteDirectoryEv:bb.a
  store ptr %i.gi, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i16 0, ptr %i.e, align 2
  %i.gj = load ptr, ptr %1, align 8, !tbaa !39
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = icmp slt i64 %i.gm, 2
  br i1 %i.gn, label %bb.bc, label %bb.bd, !prof !55

bb.bc:                                            ; preds = %bb.bb
  %i.go = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.e, i32 noundef 2, ptr noundef nonnull %i.gi)
          to label %bb.be unwind label %bb.bw

bb.bd:                                            ; preds = %bb.bb
  store i16 0, ptr %i.gi, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i.i78, i64 6
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0.i.i.i81 = phi ptr [ %i.gp, %bb.bd ], [ %i.go, %bb.bc ] ; 5 uses
  store ptr %.0.i.i.i81, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i16 0, ptr %i.d, align 2
  %i.gq = load ptr, ptr %1, align 8, !tbaa !39
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %.0.i.i.i81 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = icmp slt i64 %i.gt, 2
  br i1 %i.gu, label %bb.bf, label %bb.bg, !prof !55

bb.bf:                                            ; preds = %bb.be
  %i.gv = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.d, i32 noundef 2, ptr noundef %.0.i.i.i81)
          to label %bb.bh unwind label %bb.bw

bb.bg:                                            ; preds = %bb.be
  store i16 0, ptr %.0.i.i.i81, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i.i.i81, i64 2
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0.i.i.i84 = phi ptr [ %i.gw, %bb.bg ], [ %i.gv, %bb.bf ] ; 5 uses
  store ptr %.0.i.i.i84, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i16 %i.aa, ptr %i.c, align 2
  %i.gx = load ptr, ptr %1, align 8, !tbaa !39
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %.0.i.i.i84 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = icmp slt i64 %i.ha, 2
  br i1 %i.hb, label %bb.bi, label %bb.bj, !prof !55

bb.bi:                                            ; preds = %bb.bh
  %i.hc = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.c, i32 noundef 2, ptr noundef %.0.i.i.i84)
          to label %bb.bk unwind label %bb.bw

bb.bj:                                            ; preds = %bb.bh
  store i16 %i.aa, ptr %.0.i.i.i84, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i.i.i84, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0.i.i.i87 = phi ptr [ %i.hd, %bb.bj ], [ %i.hc, %bb.bi ] ; 5 uses
  store ptr %.0.i.i.i87, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i16 %i.aa, ptr %i.b, align 2
  %i.he = load ptr, ptr %1, align 8, !tbaa !39
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %.0.i.i.i87 to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = icmp slt i64 %i.hh, 2
  br i1 %i.hi, label %bb.bl, label %bb.bm, !prof !55

bb.bl:                                            ; preds = %bb.bk
  %i.hj = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.b, i32 noundef 2, ptr noundef %.0.i.i.i87)
          to label %bb.bn unwind label %bb.bw

bb.bm:                                            ; preds = %bb.bk
  store i16 %i.aa, ptr %.0.i.i.i87, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i.i.i87, i64 2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.0.i.i.i90 = phi ptr [ %i.hk, %bb.bm ], [ %i.hj, %bb.bl ] ; 4 uses
  store ptr %.0.i.i.i90, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.hl = load ptr, ptr %1, align 8, !tbaa !39
  %.not.i.i93 = icmp ult ptr %.0.i.i.i90, %i.hl
  br i1 %.not.i.i93, label %bb.bp, label %bb.bo, !prof !52

bb.bo:                                            ; preds = %bb.bn
  %i.hm = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %.0.i.i.i90)
          to label %bb.bp unwind label %bb.bw

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.0.i.i94 = phi ptr [ %.0.i.i.i90, %bb.bn ], [ %i.hm, %bb.bo ] ; 2 uses
  store i32 %i.ge, ptr %.0.i.i94, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i.i94, i64 4 ; 4 uses
  store ptr %i.hn, ptr %i.aj, align 8, !tbaa !53
  %i.ho = load ptr, ptr %1, align 8, !tbaa !39
  %.not.i.i97 = icmp ult ptr %i.hn, %i.ho
  br i1 %.not.i.i97, label %bb.br, label %bb.bq, !prof !52

bb.bq:                                            ; preds = %bb.bp
  %i.hp = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.hn)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.0.i.i98 = phi ptr [ %i.hn, %bb.bp ], [ %i.hp, %bb.bq ] ; 3 uses
  store i32 %i.ag, ptr %.0.i.i98, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 4 ; 4 uses
  store ptr %i.hq, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i16 0, ptr %i.a, align 2
  %i.hr = load ptr, ptr %1, align 8, !tbaa !39
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = icmp slt i64 %i.hu, 2
  br i1 %i.hv, label %bb.bs, label %bb.bt, !prof !55

bb.bs:                                            ; preds = %bb.br
  %i.hw = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull %i.hq)
          to label %bb.bu unwind label %bb.bw

bb.bt:                                            ; preds = %bb.br
  store i16 0, ptr %i.hq, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 6
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.0.i.i.i101 = phi ptr [ %i.hx, %bb.bt ], [ %i.hw, %bb.bs ] ; 2 uses
  store ptr %.0.i.i.i101, ptr %i.aj, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.hy = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19FlushAndResetBufferEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %.0.i.i.i101)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.hy, ptr %i.aj, align 8, !tbaa !53
  %i.hz = load i8, ptr %i.an, align 8, !tbaa !44, !range !37, !noundef !38
  %i.ia = trunc nuw i8 %i.hz to i1
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i1 %i.ia

bb.bw:                                            ; preds = %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.ba, %._crit_edge
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.gb, %bb.ay ], [ %i.ib, %bb.bw ]
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19FlushAndResetBufferEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef i64 @_ZNK6google8protobuf2io19EpsCopyOutputStream9ByteCountEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(44) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = sdiv exact i64 %i.g, 48                    ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 192153584101141162)
  %7 = select i1 %5, i64 192153584101141162, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = mul nuw nsw i64 %7, 48                    ; 2 uses
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #19 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !27
  %i.k = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !28   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.m, ptr %i.a, align 8, !tbaa !36
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(44) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !18
  %i.p = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.p, ptr %i.j, align 8, !tbaa !23
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !23
  store i8 %i.r, ptr %i.q, align 1, !tbaa !23
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !28
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(12) %i.x, i64 12, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %11, %bb.e ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.y, ptr %.012.i.i.i, align 8, !tbaa !27, !alias.scope !58, !noalias !61
  %i.z = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !61, !noalias !58 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !28, !alias.scope !61, !noalias !58 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false), !alias.scope !63
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.z, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !58, !noalias !61
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !23, !alias.scope !61, !noalias !58
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !23, !alias.scope !58, !noalias !61
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !28, !alias.scope !61, !noalias !58
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.ah = phi i64 [ %i.ad, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !28, !alias.scope !58, !noalias !61
  store ptr %i.aa, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !61, !noalias !58
  store i64 0, ptr %i.ai, align 8, !tbaa !28, !alias.scope !61, !noalias !58
  store i8 0, ptr %i.aa, align 8, !tbaa !23, !alias.scope !61, !noalias !58
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, ptr noundef nonnull align 8 dereferenceable(12) %i.al, i64 12, i1 false), !alias.scope !63
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !64

_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %11, %bb.e ], [ %i.an, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.be, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ao, %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.0911.i.i.i29 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.ap, ptr %.012.i.i.i28, align 8, !tbaa !27, !alias.scope !65, !noalias !68
  %i.aq = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !18, !alias.scope !68, !noalias !65 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28, !alias.scope !68, !noalias !65 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false), !alias.scope !70
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.aq, ptr %.012.i.i.i28, align 8, !tbaa !18, !alias.scope !65, !noalias !68
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !23, !alias.scope !68, !noalias !65
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !23, !alias.scope !65, !noalias !68
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !28, !alias.scope !68, !noalias !65
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !28, !alias.scope !65, !noalias !68
  store ptr %i.ar, ptr %.0911.i.i.i29, align 8, !tbaa !18, !alias.scope !68, !noalias !65
  store i64 0, ptr %i.az, align 8, !tbaa !28, !alias.scope !68, !noalias !65
  store i8 0, ptr %i.ar, align 8, !tbaa !23, !alias.scope !68, !noalias !65
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bb, ptr noundef nonnull align 8 dereferenceable(12) %i.bc, i64 12, i1 false), !alias.scope !70
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !64

_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36: ; preds = %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ao, %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.be, %_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #15
  br label %_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, %bb.h
  store ptr %11, ptr %0, align 8, !tbaa !16
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %11, i64 %7
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !26
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %i.bm) #16 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %10) #15
  invoke void @__cxa_rethrow() #18
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #17
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6google8protobuf8compiler9ZipWriterE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSSt6vectorIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE", !12, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE12_Vector_implE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf8compiler9ZipWriter8FileInfoESaIS4_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 _ZTSN6google8protobuf8compiler9ZipWriter8FileInfoE", !10, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{!14, !15, i64 8}
!18 = !{!19, !21, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !22, i64 8, !5, i64 16}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!21 = !{!"p1 omnipotent char", !10, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!5, !5, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!14, !15, i64 16}
!27 = !{!20, !21, i64 0}
!28 = !{!19, !22, i64 8}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !6, i64 0}
!31 = !{!32, !4, i64 32}
!32 = !{!"_ZTSN6google8protobuf8compiler9ZipWriter8FileInfoE", !19, i64 0, !4, i64 32, !4, i64 36, !4, i64 40}
!33 = !{!32, !4, i64 36}
!34 = distinct !{!34, !25}
!35 = !{!32, !4, i64 40}
!36 = !{!22, !22, i64 0}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!40, !21, i64 0}
!40 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !21, i64 0, !21, i64 8, !5, i64 16, !9, i64 48, !41, i64 56, !41, i64 57, !41, i64 58, !41, i64 59}
!41 = !{!"bool", !5, i64 0}
!42 = !{!40, !21, i64 8}
!43 = !{!40, !9, i64 48}
!44 = !{!40, !41, i64 56}
!45 = !{!40, !41, i64 57}
!46 = !{!40, !41, i64 58}
!47 = !{!40, !41, i64 59}
!48 = !{!21, !21, i64 0}
!49 = distinct !{null}
!50 = !{!51, !22, i64 72}
!51 = !{!"_ZTSN6google8protobuf2io17CodedOutputStreamE", !40, i64 0, !21, i64 64, !22, i64 72}
!52 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!53 = !{!51, !21, i64 64}
!54 = !{!10, !10, i64 0}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = distinct !{null, null}
!57 = distinct !{!57, !25}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!60 = distinct !{!60, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!63 = !{!59, !62}
!64 = distinct !{!64, !25}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!67 = distinct !{!67, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"_ZSt19__relocate_object_aIN6google8protobuf8compiler9ZipWriter8FileInfoES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!70 = !{!66, !69}
end_hunk_2
