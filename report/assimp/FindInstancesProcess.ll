inline.NumInlined: 330
inline.NumDeleted: 230
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.std::unordered_set" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZN6aiMeshD2Ev = comdat any

$_ZN6Assimp6Logger4infoIJRA38_KcjRA11_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp11BaseProcessD2Ev = comdat any

$_ZN6Assimp20FindInstancesProcessD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN10aiAnimMeshD2Ev = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_ = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA11_KcEjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA11_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

@_ZTVN6Assimp20FindInstancesProcessE = hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp20FindInstancesProcessE, ptr @_ZN6Assimp11BaseProcessD2Ev, ptr @_ZN6Assimp20FindInstancesProcessD0Ev, ptr @_ZNK6Assimp20FindInstancesProcess8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp20FindInstancesProcess15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp20FindInstancesProcess7ExecuteEP7aiScene] }, align 8
@.str = private unnamed_addr constant [13 x i8] c"FAVOUR_SPEED\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"FindInstancesProcess begin\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"FindInstancesProcess finished. Found \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" instances\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"FindInstancesProcess finished. No instanced meshes found\00", align 1
@_ZTIN6Assimp20FindInstancesProcessE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp20FindInstancesProcessE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp20FindInstancesProcessE = hidden constant [32 x i8] c"N6Assimp20FindInstancesProcessE\00", align 1
@_ZTIN6Assimp11BaseProcessE = external constant ptr
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8

@_ZN6Assimp20FindInstancesProcessC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp20FindInstancesProcessC2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp20FindInstancesProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp20FindInstancesProcessE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp20FindInstancesProcess8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = and i32 %1, 1048832
  %i.b = icmp eq i32 %i.a, 1048576
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp20FindInstancesProcess15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(25) initializes((24, 25)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i32 noundef 0)
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = zext i1 %i.b to i8
  store i8 %i.d, ptr %i.c, align 8
  ret void
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_Z12CompareBonesPK6aiMeshS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph41, %._crit_edge
  %.02739 = phi i32 [ 0, %.lr.ph41 ], [ %3, %._crit_edge ] ; 2 uses
  %2 = zext i32 %.02739 to i64                    ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %2
  %i.i = load ptr, ptr %i.h, align 8              ; 18 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2
  %i.k = load ptr, ptr %i.j, align 8              ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1028
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1028
  %i.o = load i32, ptr %i.n, align 4
  %.not = icmp eq i32 %i.m, %i.o
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1056
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1056
  %i.r = load float, ptr %i.p, align 4
  %i.s = load float, ptr %i.q, align 4
  %i.t = fcmp oeq float %i.r, %i.s
  br i1 %i.t, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 1060
  %i.v = load float, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 1060
  %i.x = load float, ptr %i.w, align 4
  %i.y = fcmp oeq float %i.v, %i.x
  br i1 %i.y, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 1064
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 1064
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fcmp oeq float %i.aa, %i.ac
  br i1 %i.ad, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1068
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 1068
  %i.ah = load float, ptr %i.ag, align 4
  %i.ai = fcmp oeq float %i.af, %i.ah
  br i1 %i.ai, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 1072
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 1072
  %i.am = load float, ptr %i.al, align 4
  %i.an = fcmp oeq float %i.ak, %i.am
  br i1 %i.an, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 1076
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 1076
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = fcmp oeq float %i.ap, %i.ar
  br i1 %i.as, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 1080
  %i.au = load float, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 1080
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fcmp oeq float %i.au, %i.aw
  br i1 %i.ax, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 1084
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 1084
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = fcmp oeq float %i.az, %i.bb
  br i1 %i.bc, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 1088
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 1088
  %i.bg = load float, ptr %i.bf, align 4
  %i.bh = fcmp oeq float %i.be, %i.bg
  br i1 %i.bh, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 1092
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 1092
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = fcmp oeq float %i.bj, %i.bl
  br i1 %i.bm, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 1096
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 1096
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = fcmp oeq float %i.bo, %i.bq
  br i1 %i.br, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 1100
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 1100
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = fcmp oeq float %i.bt, %i.bv
  br i1 %i.bw, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 1104
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 1104
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = fcmp oeq float %i.by, %i.ca
  br i1 %i.cb, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 1108
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 1108
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = fcmp oeq float %i.cd, %i.cf
  br i1 %i.cg, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 1112
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 1112
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = fcmp oeq float %i.ci, %i.ck
  br i1 %i.cl, label %_ZNK12aiMatrix4x4tIfEneERKS0_.exit, label %.thread

_ZNK12aiMatrix4x4tIfEneERKS0_.exit:               ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 1116
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 1116
  %i.cp = load float, ptr %i.co, align 4
  %i.cq = fcmp une float %i.cn, %i.cp
  br i1 %i.cq, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK12aiMatrix4x4tIfEneERKS0_.exit
  %.not3237.not = icmp eq i32 %i.m, 0
  br i1 %.not3237.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 1048
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 1048
  %i.cu = load ptr, ptr %i.ct, align 8
  %wide.trip.count = zext i32 %i.m to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.s, !llvm.loop !3

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %.not31 = icmp eq i32 %i.cw, %i.cy
  br i1 %.not31, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.da = load float, ptr %i.cz, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = fsub float %i.da, %i.dc
  %i.de = fcmp olt float %i.dd, f0x3C23D70A
  br i1 %i.de, label %.thread, label %bb.r

._crit_edge:                                      ; preds = %bb.r, %.preheader
  %3 = add nuw i32 %.02739, 1                     ; 2 uses
  %exitcond78.not = icmp eq i32 %3, %i.b
  br i1 %exitcond78.not, label %.thread, label %bb.b, !llvm.loop !5

.thread:                                          ; preds = %._crit_edge, %bb.b, %_ZNK12aiMatrix4x4tIfEneERKS0_.exit, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.s, %bb.t, %bb.a
  %i.df = phi i1 [ true, %bb.a ], [ false, %bb.s ], [ false, %bb.t ], [ true, %._crit_edge ], [ false, %bb.b ], [ false, %_ZNK12aiMatrix4x4tIfEneERKS0_.exit ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %i.df
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Z17UpdateMeshIndicesP6aiNodePj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph16

.lr.ph16:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  store i32 %i.l, ptr %i.h, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.a, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %.preheader, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void

bb.c:                                             ; preds = %.lr.ph16, %bb.c
  %indvars.iv19 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next20, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.f, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv19
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @_Z17UpdateMeshIndicesP6aiNodePj(ptr noundef %i.r, ptr noundef %1)
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %i.s = load i32, ptr %i.d, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next20, %i.t
  br i1 %i.u, label %bb.c, label %._crit_edge, !llvm.loop !7
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp20FindInstancesProcess7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef captures(none) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull @.str.1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.cb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #21 ; 4 uses
  %i.h = shl nuw nsw i64 %i.e, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #21
          to label %.lr.ph322 unwind label %bb.c  ; 6 uses

.lr.ph322:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.d

._crit_edge323:                                   ; preds = %bb.bo
  %.not161 = icmp eq i32 %.1147, %i.rl
  br i1 %.not161, label %bb.bz, label %.preheader

.preheader:                                       ; preds = %._crit_edge323
  %.not336 = icmp eq i32 %.1147, 0
  br i1 %.not336, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.bp

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit249

bb.d:                                             ; preds = %.lr.ph322, %bb.bo
  %i.n = phi ptr [ %.pre, %.lr.ph322 ], [ %i.rg, %bb.bo ]
  %indvars.iv369 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next370, %bb.bo ] ; 8 uses
  %indvars.iv364 = phi i32 [ -1, %.lr.ph322 ], [ %indvars.iv.next365, %bb.bo ] ; 2 uses
  %.0146321 = phi i32 [ 0, %.lr.ph322 ], [ %.1147, %bb.bo ] ; 3 uses
  %i.o = zext i32 %indvars.iv364 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv369
  %i.q = load ptr, ptr %i.p, align 8              ; 25 uses
  %i.r = invoke noundef i32 @_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh(ptr noundef %i.q)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 216 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = shl i32 %i.v, 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = xor i32 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = shl i32 %i.ab, 4
  %i.ad = xor i32 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 232 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = shl i32 %i.af, 15
  %i.ah = xor i32 %i.ad, %i.ag
  %i.ai = load i32, ptr %i.q, align 8
  %i.aj = shl i32 %i.ai, 28
  %i.ak = xor i32 %i.ah, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = or disjoint i64 %i.t, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv369 ; 2 uses
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = invoke noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef nonnull %i.q)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ap = fmul float %i.ao, %i.ao                 ; 4 uses
  %i.aq = trunc nuw i64 %indvars.iv369 to i32
  %.0155316 = add i32 %i.aq, -1
  %i.ar = icmp sgt i32 %.0155316, -1
  br i1 %i.ar, label %.lr.ph319, label %.loopexit

.lr.ph319:                                        ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

bb.h:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

bb.i:                                             ; preds = %.lr.ph319, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273
  %indvars.iv366 = phi i64 [ %i.o, %.lr.ph319 ], [ %indvars.iv.next367, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273 ] ; 5 uses
  %i.bi = load i64, ptr %i.an, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv366
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.j, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %i.j, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv366
  %i.bo = load ptr, ptr %i.bn, align 8            ; 28 uses
  %.not163 = icmp eq ptr %i.bo, null
  br i1 %.not163, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = load i32, ptr %i.u, align 8
  %.not164 = icmp eq i32 %i.bq, %i.br
end_hunk_0
