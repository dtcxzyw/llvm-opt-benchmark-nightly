inline.NumInlined: 781
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<std::pair<aiMesh *, const aiBone *>, std::allocator<std::pair<aiMesh *, const aiBone *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<aiMesh *, const aiBone *>, std::allocator<std::pair<aiMesh *, const aiBone *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<aiMesh *, const aiBone *>, std::allocator<std::pair<aiMesh *, const aiBone *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<aiMesh *, const aiBone *>, std::allocator<std::pair<aiMesh *, const aiBone *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
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
%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.std::unordered_set" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%class.aiMatrix4x4t = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

$_ZN6Assimp6Logger4infoIJRA31_KcjRA17_S2_RjEEEvDpOT_ = comdat any

$_ZN6aiMeshD2Ev = comdat any

$_ZNK12aiMatrix4x4tIfE10IsIdentityEf = comdat any

$_ZN12aiMatrix4x4tIfE7InverseEv = comdat any

$_ZN6Assimp13DeboneProcessD2Ev = comdat any

$_ZN6Assimp13DeboneProcessD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN10aiAnimMeshD2Ev = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_ = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm = comdat any

$_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE17_M_default_appendEm = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA17_KcRjEjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN6Assimp6Logger13formatMessageIJRjERA17_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS6_S7_EEOT0_DpOT_ = comdat any

@_ZTVN6Assimp13DeboneProcessE = hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp13DeboneProcessE, ptr @_ZN6Assimp13DeboneProcessD2Ev, ptr @_ZN6Assimp13DeboneProcessD0Ev, ptr @_ZNK6Assimp13DeboneProcess8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp13DeboneProcess15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene] }, align 8
@.str = private unnamed_addr constant [18 x i8] c"PP_DB_ALL_OR_NONE\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"PP_DB_THRESHOLD\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"DeboneProcess begin\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Removed %u bones. Input bones:\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c". Output bones: \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"DeboneProcess end\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Encountered double entry in bone weights\00", align 1
@_ZTIN6Assimp13DeboneProcessE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp13DeboneProcessE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp13DeboneProcessE = hidden constant [25 x i8] c"N6Assimp13DeboneProcessE\00", align 1
@_ZTIN6Assimp11BaseProcessE = external constant ptr
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8

@_ZN6Assimp13DeboneProcessC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp13DeboneProcessC2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp13DeboneProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp13DeboneProcessE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp13DeboneProcess8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = and i32 %1, 67108864
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13DeboneProcess15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((32, 37)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i32 noundef 0)
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = zext i1 %i.b to i8
  store i8 %i.d, ptr %i.c, align 4
  %i.e = tail call noundef float @_ZNK6Assimp8Importer16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, float noundef 1.000000e+00)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.e, ptr %i.f, align 8
  ret void
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef float @_ZNK6Assimp8Importer16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.12", align 8    ; 11 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull @.str.2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.bi, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 63                 ; 2 uses
  %i.h = lshr i64 %i.g, 3
  %i.i = and i64 %i.h, 1073741816
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #20 ; 8 uses
  %i.k = lshr i64 %i.g, 3
  %.idx.i.i = and i64 %i.k, 1073741816            ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %.idx.i.i, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %.not62 = icmp eq i32 %i.n, 0
  br i1 %.not62, label %.critedge, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %_ZNSt14_Bit_referenceaSEb.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt14_Bit_referenceaSEb.exit ] ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef zeroext i1 @_ZN6Assimp13DeboneProcess12ConsiderMeshEPK6aiMesh(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.q)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = lshr i64 %indvars.iv, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.s ; 3 uses
  %i.u = and i64 %indvars.iv, 63
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.t, align 8
  %i.x = or i64 %i.w, %i.v
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.e:                                             ; preds = %bb.c
  %i.y = xor i64 %i.v, -1
  %i.z = load i64, ptr %i.t, align 8
  %i.aa = and i64 %i.z, %i.y
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.d, %bb.e
  %storemerge = phi i64 [ %i.aa, %bb.e ], [ %i.x, %bb.d ]
  store i64 %storemerge, ptr %i.t, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.d, align 8             ; 7 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.b, label %._crit_edge, !llvm.loop !3

bb.f:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit126

bb.g:                                             ; preds = %._crit_edge
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %4 = load i8, ptr %3, align 4, !range !5, !noundef !6
  %5 = trunc nuw i8 %4 to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp ne i32 %i.n, %i.ag
  %or.cond.not = select i1 %5, i1 %i.ah, i1 false
  %.not280 = icmp eq i32 %i.ab, 0
  %or.cond = or i1 %or.cond.not, %.not280
  br i1 %or.cond, label %.critedge, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %bb.g
  %min.iters.check = icmp ult i32 %i.ab, 4
  br i1 %min.iters.check, label %.lr.ph257.preheader546, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph257.preheader
  %n.vec = and i32 %i.ab, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi484 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i32> %vec.ind, splat (i32 2)
  %i.ai = lshr i32 %index, 6
  %i.aj = lshr i32 %index, 6
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ak
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.al
  %i.ao = and <2 x i32> %vec.ind, splat (i32 63)
  %i.ap = and <2 x i32> %step.add, splat (i32 63)
  %i.aq = zext nneg <2 x i32> %i.ao to <2 x i64>
  %i.ar = zext nneg <2 x i32> %i.ap to <2 x i64>
  %i.as = load i64, ptr %i.am, align 8
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.at = load i64, ptr %i.an, align 8
  %broadcast.splatinsert485 = insertelement <2 x i64> poison, i64 %i.at, i64 0
  %broadcast.splat486 = shufflevector <2 x i64> %broadcast.splatinsert485, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.au = lshr <2 x i64> %broadcast.splat, %i.aq
  %i.av = lshr <2 x i64> %broadcast.splat486, %i.ar
  %i.aw = trunc <2 x i64> %i.au to <2 x i32>
  %i.ax = and <2 x i32> %i.aw, splat (i32 1)
  %i.ay = trunc <2 x i64> %i.av to <2 x i32>
  %i.az = and <2 x i32> %i.ay, splat (i32 1)
  %i.ba = add <2 x i32> %i.ax, %vec.phi           ; 2 uses
  %i.bb = add <2 x i32> %i.az, %vec.phi484        ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i32> %vec.ind, splat (i32 4)
  %i.bc = icmp eq i32 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge258, label %.lr.ph257.preheader546

.lr.ph257.preheader546:                           ; preds = %.lr.ph257.preheader, %middle.block
  %.052256.ph = phi i32 [ 0, %.lr.ph257.preheader ], [ %i.bd, %middle.block ]
  %.056255.ph = phi i32 [ 0, %.lr.ph257.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph257

._crit_edge258:                                   ; preds = %.lr.ph257, %middle.block
  %spec.select.lcssa = phi i32 [ %i.bd, %middle.block ], [ %spec.select, %.lr.ph257 ]
  %i.be = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.be, label %.critedge, label %bb.h

.lr.ph257:                                        ; preds = %.lr.ph257.preheader546, %.lr.ph257
  %.052256 = phi i32 [ %spec.select, %.lr.ph257 ], [ %.052256.ph, %.lr.ph257.preheader546 ]
  %.056255 = phi i32 [ %i.bn, %.lr.ph257 ], [ %.056255.ph, %.lr.ph257.preheader546 ] ; 3 uses
  %i.bf = lshr i32 %.056255, 6
  %.zext180 = zext nneg i32 %i.bf to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.zext180
  %i.bh = and i32 %.056255, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = load i64, ptr %i.bg, align 8
  %i.bk = lshr i64 %i.bj, %i.bi
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 1
  %spec.select = add nuw nsw i32 %i.bm, %.052256  ; 2 uses
  %i.bn = add nuw i32 %.056255, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %i.ab
  br i1 %exitcond.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !10

bb.h:                                             ; preds = %._crit_edge258
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bp = zext i32 %i.ab to i64                   ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 3 uses
  %i.bs = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 24                ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %i.bp
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.by = sub nuw nsw i64 %i.bp, %i.bw
  invoke void @_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %i.by)
          to label %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit unwind label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.bz = icmp ugt i64 %i.bw, %i.bp
  br i1 %i.bz, label %bb.k, label %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.bp ; 3 uses
  %.not.i.i = icmp eq ptr %i.br, %i.ca
  br i1 %.not.i.i, label %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %_ZSt8_DestroyISt6vectorISt4pairIjP6aiNodeESaIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ch, %_ZSt8_DestroyISt6vectorISt4pairIjP6aiNodeESaIS4_EEEvPT_.exit.i.i.i.i ], [ %i.ca, %bb.k ] ; 3 uses
  %i.cb = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt4pairIjP6aiNodeESaIS4_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #21
  br label %_ZSt8_DestroyISt6vectorISt4pairIjP6aiNodeESaIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorISt4pairIjP6aiNodeESaIS4_EEEvPT_.exit.i.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, %i.br
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt4pairIjP6aiNodeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt6vectorISt4pairIjP6aiNodeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt4pairIjP6aiNodeESaIS4_EEEvPT_.exit.i.i.i.i
  store ptr %i.ca, ptr %i.bq, align 8
  br label %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit

_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt4pairIjP6aiNodeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.k, %bb.j, %bb.i
  %i.ci = load i32, ptr %i.d, align 8
  %.not281 = icmp eq i32 %i.ci, 0
  br i1 %.not281, label %._crit_edge275, label %.lr.ph274

.lr.ph274:                                        ; preds = %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.n

._crit_edge275.loopexit:                          ; preds = %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit
  %i.cn = ptrtoint ptr %.sroa.14.2 to i64
  br label %._crit_edge275

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit, %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit
  %.sroa.26.0.lcssa = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit ], [ %.sroa.26.2, %._crit_edge275.loopexit ] ; 2 uses
  %.sroa.14.0.lcssa = phi i64 [ 0, %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit ], [ %i.cn, %._crit_edge275.loopexit ]
  %.sroa.0143.0.lcssa = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit ], [ %.sroa.0143.2, %._crit_edge275.loopexit ] ; 6 uses
  %i.co = ptrtoint ptr %.sroa.0143.0.lcssa to i64 ; 2 uses
  %i.cp = sub i64 %.sroa.14.0.lcssa, %i.co        ; 4 uses
  %i.cq = lshr exact i64 %i.cp, 3
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  store i32 %i.cr, ptr %i.d, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ax, label %bb.aw

bb.m:                                             ; preds = %bb.i, %bb.bh, %.critedge
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit126

bb.n:                                             ; preds = %.lr.ph274, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit
  %indvars.iv318 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next319, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit ] ; 6 uses
  %.sroa.0143.0272 = phi ptr [ null, %.lr.ph274 ], [ %.sroa.0143.2, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit ] ; 8 uses
  %.sroa.14.0271 = phi ptr [ null, %.lr.ph274 ], [ %.sroa.14.2, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit ] ; 7 uses
  %.sroa.26.0270 = phi ptr [ null, %.lr.ph274 ], [ %.sroa.26.2, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit ] ; 6 uses
  %i.cw = load ptr, ptr %i.cj, align 8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv318
  %i.cy = load ptr, ptr %i.cx, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.cz = lshr i64 %indvars.iv318, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cz
  %i.db = and i64 %indvars.iv318, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = load i64, ptr %i.da, align 8
  %i.de = and i64 %i.dd, %i.dc
  %.not184 = icmp eq i64 %i.de, 0
  br i1 %.not184, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK6Assimp13DeboneProcess9SplitMeshEPK6aiMeshRSt6vectorISt4pairIPS1_PK6aiBoneESaISA_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.p unwind label %.loopexit187

.loopexit187:                                     ; preds = %bb.o, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i111
  %.sroa.26.0270.lcssa = phi ptr [ %.sroa.26.0270, %bb.o ], [ %.sroa.14.0271, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i111 ]
  %lpad.loopexit189 = landingpad { ptr, i32 }
          cleanup
  %.pre323 = load ptr, ptr %2, align 8
  br label %bb.au

.loopexit.split-lp188:                            ; preds = %bb.aq
  %lpad.loopexit.split-lp190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.p:                                             ; preds = %bb.o
  %.pre = load ptr, ptr %2, align 8               ; 3 uses
  %.pre322 = load ptr, ptr %i.ck, align 8
  %i.df = icmp eq ptr %.pre, %.pre322
end_hunk_0
begin_hunk_1_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  %.not.i.i.i.i.i106 = icmp eq ptr %i.hi, %i.go
  br i1 %.not.i.i.i.i.i106, label %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i103, !llvm.loop !16

_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i103, %.noexc109
  %.0.lcssa.i.i.i.i.i107 = phi ptr [ %i.hf, %.noexc109 ], [ %i.hj, %.lr.ph.i.i.i.i.i103 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i107, i64 16
  %.not.i34.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE17_M_realloc_insertIJjS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.gx) #21
  br label %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE17_M_realloc_insertIJjS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE17_M_realloc_insertIJjS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.an, %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.hf, ptr %i.gh, align 8
  store ptr %i.hk, ptr %i.gn, align 8
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %i.hd
  store ptr %i.hl, ptr %i.gp, align 8
  br label %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE12emplace_backIJjS2_EEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE12emplace_backIJjS2_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE17_M_realloc_insertIJjS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ak
  %.not.i110 = icmp eq ptr %.sroa.14.0271, %.sroa.26.0270
  br i1 %.not.i110, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE12emplace_backIJjS2_EEERS3_DpOT_.exit
  store ptr %i.cy, ptr %.sroa.14.0271, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.14.0271, i64 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.ap:                                            ; preds = %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE12emplace_backIJjS2_EEERS3_DpOT_.exit
  %i.hn = icmp eq i64 %i.gk, 9223372036854775800
  br i1 %i.hn, label %bb.aq, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i111

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #22
          to label %.noexc116 unwind label %.loopexit.split-lp188

.noexc116:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i111: ; preds = %bb.ap
  %.sroa.speculated.i.i.i112 = call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.ho = add nsw i64 %.sroa.speculated.i.i.i112, %i.gl ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.gl
  %i.hq = call i64 @llvm.umin.i64(i64 %i.ho, i64 1152921504606846975)
  %i.hr = select i1 %i.hp, i64 1152921504606846975, i64 %i.hq ; 3 uses
  %.not.i.i.i113 = icmp ne i64 %i.hr, 0
  call void @llvm.assume(i1 %.not.i.i.i113)
  %i.hs = shl nuw nsw i64 %i.hr, 3
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #20
          to label %.noexc117 unwind label %.loopexit187 ; 4 uses

.noexc117:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i111
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 %i.gk ; 2 uses
  store ptr %i.cy, ptr %i.hu, align 8
  %i.hv = icmp sgt i64 %i.gk, 0
  br i1 %i.hv, label %bb.ar, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i114

bb.ar:                                            ; preds = %.noexc117
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ht, ptr align 8 %.sroa.0143.0272, i64 %i.gk, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i114

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i114: ; preds = %bb.ar, %.noexc117
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %.not.i17.i.i115 = icmp eq ptr %.sroa.0143.0272, null
  br i1 %.not.i17.i.i115, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i114
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.0272, i64 noundef %i.gk) #21
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.as, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i114
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hr
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

.loopexit192:                                     ; preds = %_ZNKSt6vectorISt4pairIjP6aiNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i99
  %lpad.loopexit194 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp193:                            ; preds = %bb.am
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ao, %bb.aj
  %.sroa.26.2 = phi ptr [ %.sroa.26.5, %bb.aj ], [ %i.hx, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.26.0270, %bb.ao ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.3, %bb.aj ], [ %i.hw, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.hm, %bb.ao ] ; 2 uses
  %.sroa.0143.2 = phi ptr [ %.sroa.0143.5, %bb.aj ], [ %i.ht, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0143.0272, %bb.ao ] ; 2 uses
  %i.hy = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i118.a = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i118.a, label %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  %i.hz = load ptr, ptr %i.cm, align 8
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hy to i64
  %i.ic = sub i64 %i.ia, %i.ib
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.ic) #21
  br label %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %i.id = load i32, ptr %i.d, align 8
  %i.ie = zext i32 %i.id to i64
  %i.if = icmp samesign ult i64 %indvars.iv.next319, %i.ie
  br i1 %i.if, label %bb.n, label %._crit_edge275.loopexit, !llvm.loop !22

bb.au:                                            ; preds = %.loopexit192, %.loopexit.split-lp193, %.loopexit187, %.loopexit.split-lp188
  %i.ig = phi ptr [ %i.gf, %.loopexit.split-lp188 ], [ %i.gf, %.loopexit.split-lp193 ], [ %.pre323, %.loopexit187 ], [ %i.gf, %.loopexit192 ] ; 2 uses
  %.sroa.26.3 = phi ptr [ %.sroa.14.0271, %.loopexit.split-lp188 ], [ %.sroa.26.0270, %.loopexit.split-lp193 ], [ %.sroa.26.0270.lcssa, %.loopexit187 ], [ %.sroa.26.0270, %.loopexit192 ] ; 2 uses
  %.pn68 = phi { ptr, i32 } [ %lpad.loopexit.split-lp190, %.loopexit.split-lp188 ], [ %lpad.loopexit.split-lp195, %.loopexit.split-lp193 ], [ %lpad.loopexit189, %.loopexit187 ], [ %lpad.loopexit194, %.loopexit192 ] ; 2 uses
  %.not.i.i.i119.a = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i119.a, label %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120, label %bb.av

bb.av:                                            ; preds = %.thread355, %bb.au
  %.pn68364 = phi { ptr, i32 } [ %.pn.pn, %.thread355 ], [ %.pn68, %bb.au ]
  %.sroa.0143.3362 = phi ptr [ %.sroa.0143.1201, %.thread355 ], [ %.sroa.0143.0272, %bb.au ]
  %.sroa.26.3360 = phi ptr [ %.sroa.26.1213, %.thread355 ], [ %.sroa.26.3, %bb.au ]
  %i.ih = phi ptr [ %i.ge, %.thread355 ], [ %i.ig, %bb.au ] ; 2 uses
  %i.ii = load ptr, ptr %i.cm, align 8
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ih to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.il) #21
  br label %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120

_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120: ; preds = %bb.au, %bb.av
  %.pn68365 = phi { ptr, i32 } [ %.pn68, %bb.au ], [ %.pn68364, %bb.av ]
  %.sroa.0143.3363 = phi ptr [ %.sroa.0143.0272, %bb.au ], [ %.sroa.0143.3362, %bb.av ]
  %.sroa.26.3361 = phi ptr [ %.sroa.26.3, %bb.au ], [ %.sroa.26.3360, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.bf

bb.aw:                                            ; preds = %._crit_edge275
  call void @_ZdaPv(ptr noundef nonnull %i.ct) #21
  %.pre324 = load i32, ptr %i.d, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge275
  %i.im = phi i32 [ %.pre324, %bb.aw ], [ %i.cr, %._crit_edge275 ]
  %i.in = zext i32 %i.im to i64
  %i.io = shl nuw nsw i64 %i.in, 3
  %i.ip = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.io) #20
          to label %bb.ay unwind label %bb.be     ; 3 uses

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.ip, ptr %i.cs, align 8
  %i.iq = icmp sgt i64 %i.cp, 8
  br i1 %i.iq, label %bb.az, label %bb.ba, !prof !23

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ip, ptr align 8 %.sroa.0143.0.lcssa, i64 %i.cp, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.ba:                                            ; preds = %bb.ay
  %i.ir = icmp eq i64 %i.cp, 8
  br i1 %i.ir, label %bb.bb, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.bb:                                            ; preds = %bb.ba
  %i.is = load ptr, ptr %.sroa.0143.0.lcssa, align 8
  store ptr %i.is, ptr %i.ip, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  invoke void @_ZNK6Assimp13DeboneProcess10UpdateNodeEP6aiNode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.iu)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %.not.i.i.i121 = icmp eq ptr %.sroa.0143.0.lcssa, null
  br i1 %.not.i.i.i121, label %.critedge, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iv = ptrtoint ptr %.sroa.26.0.lcssa to i64
  %i.iw = sub i64 %i.iv, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.0.lcssa, i64 noundef %i.iw) #21
  br label %.critedge

bb.be:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %bb.ax
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120
  %.sroa.26.4 = phi ptr [ %.sroa.26.3361, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120 ], [ %.sroa.26.0.lcssa, %bb.be ]
  %.sroa.0143.4 = phi ptr [ %.sroa.0143.3363, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120 ], [ %.sroa.0143.0.lcssa, %bb.be ] ; 3 uses
  %.pn68.pn = phi { ptr, i32 } [ %.pn68365, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120 ], [ %i.ix, %bb.be ] ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %.sroa.0143.4, null
  br i1 %.not.i.i.i122, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit126, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iy = ptrtoint ptr %.sroa.26.4 to i64
  %i.iz = ptrtoint ptr %.sroa.0143.4 to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.4, i64 noundef %i.ja) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit126

.critedge:                                        ; preds = %bb.bd, %bb.bc, %bb.g, %._crit_edge, %._crit_edge258
  %i.jb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bh unwind label %bb.m

bb.bh:                                            ; preds = %.critedge
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.jb, ptr noundef nonnull @.str.5)
          to label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit unwind label %bb.m

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx.i.i) #21
  br label %bb.bi

bb.bi:                                            ; preds = %bb.a, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  ret void

_ZNSt13_Bvector_baseISaIbEED2Ev.exit126:          ; preds = %bb.bg, %bb.bf, %bb.m, %bb.f
  %.pn73.pn = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %.pn68.pn, %bb.bg ], [ %.pn68.pn, %bb.bf ], [ %i.cv, %bb.m ]
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx.i.i) #21
  resume { ptr, i32 } %.pn73.pn
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp13DeboneProcess12ConsiderMeshEPK6aiMesh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ne i32 %i.d, 0
  %i.f = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %i.f, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = add nuw nsw i64 %i.g, 63                 ; 2 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741816
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #20 ; 8 uses
  %i.l = lshr i64 %i.h, 3
  %.idx.i = and i64 %i.l, 1073741816              ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %.idx.i, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %.preheader164.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #20
          to label %.noexc84 unwind label %bb.d   ; 3 uses

.noexc84:                                         ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 -1, i64 %i.p, i1 false)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  %i.s = ptrtoint ptr %i.r to i64
  br label %.preheader164.lr.ph

.preheader164.lr.ph:                              ; preds = %bb.b, %.noexc84
  %.sroa.17.0 = phi i64 [ 0, %bb.b ], [ %i.s, %.noexc84 ] ; 2 uses
  %.sroa.0123.0 = phi ptr [ null, %bb.b ], [ %i.q, %.noexc84 ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.lr.ph, %._crit_edge
  %i.u = phi i32 [ %i.d, %.preheader164.lr.ph ], [ %i.br, %._crit_edge ]
  %i.v = phi ptr [ %i.b, %.preheader164.lr.ph ], [ %i.bs, %._crit_edge ] ; 2 uses
  %indvars.iv188 = phi i64 [ 0, %.preheader164.lr.ph ], [ %indvars.iv.next189, %._crit_edge ] ; 9 uses
  %.061169 = phi i1 [ false, %.preheader164.lr.ph ], [ %spec.select, %._crit_edge ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv188
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1028
  %i.z = load i32, ptr %i.y, align 4
  %.not184 = icmp eq i32 %i.z, 0
  br i1 %.not184, label %.preheader164.._crit_edge_crit_edge, label %.lr.ph

.preheader164.._crit_edge_crit_edge:              ; preds = %.preheader164
  %.pre197 = lshr i64 %indvars.iv188, 6
  %.pre200 = and i64 %indvars.iv188, 63
  %.pre202 = shl nuw i64 1, %.pre200
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader164
  %i.aa = trunc nuw i64 %indvars.iv188 to i32
  %i.ab = lshr i64 %indvars.iv188, 6              ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ab ; 2 uses
  %i.ad = and i64 %indvars.iv188, 63
  %i.ae = shl nuw i64 1, %i.ad                    ; 4 uses
  %i.af = xor i64 %i.ae, -1
  br label %bb.e

._crit_edge170:                                   ; preds = %._crit_edge
  br i1 %spec.select, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge170
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %.not185 = icmp eq i32 %i.ah, 0
  br i1 %.not185, label %.loopexit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.aj = load ptr, ptr %i.ai, align 8
  %wide.trip.count = zext i32 %i.ah to i64
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit111

bb.e:                                             ; preds = %.lr.ph, %_ZNSt14_Bit_referenceaSEb.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt14_Bit_referenceaSEb.exit ] ; 2 uses
  %i.al = phi ptr [ %i.x, %.lr.ph ], [ %i.bm, %_ZNSt14_Bit_referenceaSEb.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1048
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load float, ptr %i.ap, align 4          ; 3 uses
  %i.ar = fcmp oeq float %i.aq, 0.000000e+00
  br i1 %i.ar, label %_ZNSt14_Bit_referenceaSEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load float, ptr %i.t, align 8
  %i.at = fcmp ult float %i.aq, %i.as
  br i1 %i.at, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load i32, ptr %i.ao, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0123.0, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %.not77 = icmp eq i32 %i.ax, -1
  br i1 %.not77, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp eq i64 %indvars.iv188, %i.ay
  br i1 %i.az, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.ba = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.j unwind label %.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = ptrtoint ptr %.sroa.0123.0 to i64
  %i.bd = sub i64 %.sroa.17.0, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.0, i64 noundef %i.bd) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit111

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.sink = phi i32 [ -2, %bb.h ], [ %i.aa, %bb.g ]
  store i32 %.sink, ptr %i.aw, align 4
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.f, %bb.j
  %i.be = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.bf = and i64 %i.be, %i.ae
  %.not163 = icmp eq i64 %i.bf, 0
  br i1 %.not163, label %_ZNSt14_Bit_referenceaSEb.exit.sink.split, label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit.sink.split:        ; preds = %bb.k
  %i.bg = load float, ptr %i.t, align 8
  %i.bh = fcmp olt float %i.aq, %i.bg
  %i.bi = and i64 %i.be, %i.af
  %i.bj = or i64 %i.be, %i.ae
  %.sink212 = select i1 %i.bh, i64 %i.bj, i64 %i.bi
  store i64 %.sink212, ptr %i.ac, align 8
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %_ZNSt14_Bit_referenceaSEb.exit.sink.split, %bb.k, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv188
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1028
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
end_hunk_1
