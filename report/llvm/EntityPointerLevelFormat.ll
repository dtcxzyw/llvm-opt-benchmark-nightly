Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EntityPointerLevelFormat?download=true
inline.NumInlined: 798
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%class.anon.52 = type { ptr }
%"class.llvm::format_object" = type { ptr, %"class.std::tuple.48" }
%"class.std::tuple.48" = type { %"struct.std::_Tuple_impl.49" }
%"struct.std::_Tuple_impl.49" = type { %"struct.std::_Head_base.50" }

$_ZN5clang4ssaf23makeSawButExpectedErrorIN4llvm4json5ValueEJEEENS2_5ErrorERKT_NS2_9StringRefEDpRKT0_ = comdat any

$_ZN5clang4ssaf23makeSawButExpectedErrorIN4llvm4json5ArrayEJmEEENS2_5ErrorERKT_NS2_9StringRefEDpRKT0_ = comdat any

$_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEED2Ev = comdat any

$_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorES2_DpRKT_ = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_ = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcmEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS4_ = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [88 x i8] c"an array with exactly two elements representing EntityId and PointerLevel, respectively\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"an object representing EntityId\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"an integer representing PointerLevel\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"an even number of elements, got %lu\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"an array representing EntityPointerLevelSet\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"saw %s but expected \00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ssaf24entityPointerLevelToJSONERKNS0_18EntityPointerLevelEN4llvm12function_refIFNS4_4json6ObjectENS0_8EntityIdEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::json::Value") align 8 captures(none) initializes((0, 2), (8, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 {
_ZN4llvm4json5ArrayD2Ev.exit:
  %4 = alloca %"class.llvm::json::Array", align 16 ; 6 uses
  %5 = alloca [2 x %"class.llvm::json::Value"], align 8 ; 10 uses
  %6 = alloca %"class.llvm::json::Object", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !13
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.llvm::json::Object") align 8 %6, i64 noundef %3, i64 %.sroa.0.0.copyload.i) #15, !inline_history !0
  store i16 7, ptr %5, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load <2 x ptr>, ptr %6, align 16, !tbaa !19
  store ptr null, ptr %6, align 16, !tbaa !21
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !19
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.g = load <2 x i32>, ptr %i.e, align 16, !tbaa !24
  store i32 0, ptr %i.e, align 16, !tbaa !24
  store <2 x i32> %i.g, ptr %i.d, align 8, !tbaa !24
  store i32 0, ptr %i.f, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  store i16 3, ptr %i.h, align 8, !tbaa !17
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.k, ptr %i.l, align 8, !tbaa !13
  call void @_ZN4llvm4json5ArrayC1ESt16initializer_listINS0_5ValueEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %5, i64 2) #15
  store i16 8, ptr %0, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <2 x ptr>, ptr %4, align 16, !tbaa !29
  store <2 x ptr> %i.n, ptr %i.m, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !31
  store ptr %i.q, ptr %i.o, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #15
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #15
  call void @_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4llvm4json5ArrayC1ESt16initializer_listINS0_5ValueEE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ssaf26entityPointerLevelFromJSONERKN4llvm4json5ValueENS1_12function_refIFNS1_8ExpectedINS0_8EntityIdEEERKNS2_6ObjectEEEE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Expected.3", align 8  ; 8 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %i.a = load i16, ptr %1, align 8, !tbaa !17
  %.not = icmp eq i16 %i.a, 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !33   ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %.not12 = icmp eq i64 %i.h, 80
  br i1 %.not12, label %bb.c, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN5clang4ssaf23makeSawButExpectedErrorIN4llvm4json5ValueEJEEENS2_5ErrorERKT_NS2_9StringRefEDpRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nonnull @.str, i64 87)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = or i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.l = load ptr, ptr %4, align 8, !tbaa !36, !noalias !93
  store ptr %i.l, ptr %0, align 8, !tbaa !37, !alias.scope !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = load i16, ptr %i.e, align 8, !tbaa !17
  %.not48 = icmp eq i16 %i.m, 7
  br i1 %.not48, label %bb.d, label %_ZN4llvm5ErrorD2Ev.exit15

_ZN4llvm5ErrorD2Ev.exit15:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN5clang4ssaf23makeSawButExpectedErrorIN4llvm4json5ValueEJEEENS2_5ErrorERKT_NS2_9StringRefEDpRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr nonnull @.str.1, i64 31)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = or i8 %i.o, 1
  store i8 %i.p, ptr %i.n, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.q = load ptr, ptr %5, align 8, !tbaa !36, !noalias !94
  store ptr %i.q, ptr %0, align 8, !tbaa !37, !alias.scope !94
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.3") align 8 %6, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %i.r) #15, !inline_history !1
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.e

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.d
  %i.v = load i64, ptr %6, align 8, !tbaa !37, !noalias !95
  %i.w = inttoptr i64 %i.v to ptr
  store ptr null, ptr %6, align 8, !tbaa !37, !noalias !95
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8
  %i.z = or i8 %i.y, 1
  store i8 %i.z, ptr %i.x, align 8
  store ptr %i.w, ptr %0, align 8, !tbaa !37, !alias.scope !96
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !33  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !17
  switch i16 %i.ac, label %_ZN4llvm5ErrorD2Ev.exit17 [
    i16 3, label %_ZNK4llvm4json5Value12getAsIntegerEv.exit.thread
    i16 4, label %_ZNK4llvm4json5Value12getAsIntegerEv.exit
    i16 2, label %.split
  ], !prof !97

_ZNK4llvm4json5Value12getAsIntegerEv.exit.thread: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  br label %_ZNSt8optionalImEC2IlTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameImT_EESt16is_constructibleImJS5_EESt14is_convertibleIS5_mES3_ISt5__or_IJS8_ImJRKS_IS5_EEES8_ImJRSD_EES8_ImJOSE_EES8_ImJOSD_EESA_ISF_mESA_ISH_mESA_ISJ_mESA_ISL_mEEEEEEbE4typeELb1EEESL_.exit

.split:                                           ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ag = load double, ptr %i.af, align 8, !tbaa !99
  %i.ah = call { double, double } @llvm.modf.f64(double %i.ag) ; 2 uses
  %i.ai = extractvalue { double, double } %i.ah, 0
  %i.aj = extractvalue { double, double } %i.ah, 1 ; 2 uses
  %i.ak = fcmp oeq double %i.ai, 0.000000e+00
  %i.al = call double @llvm.fabs.f64(double %i.aj)
  %i.am = fcmp ole double %i.al, f0x43E0000000000000
  %or.cond9.i = select i1 %i.ak, i1 %i.am, i1 false, !prof !100
  %i.an = fptosi double %i.aj to i64
  br i1 %or.cond9.i, label %_ZNSt8optionalImEC2IlTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameImT_EESt16is_constructibleImJS5_EESt14is_convertibleIS5_mES3_ISt5__or_IJS8_ImJRKS_IS5_EEES8_ImJRSD_EES8_ImJOSE_EES8_ImJOSD_EESA_ISF_mESA_ISH_mESA_ISJ_mESA_ISL_mEEEEEEbE4typeELb1EEESL_.exit, label %_ZN4llvm5ErrorD2Ev.exit17

_ZNK4llvm4json5Value12getAsIntegerEv.exit:        ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp sgt i64 %i.ap, -1
  br i1 %.not.i, label %_ZNSt8optionalImEC2IlTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameImT_EESt16is_constructibleImJS5_EESt14is_convertibleIS5_mES3_ISt5__or_IJS8_ImJRKS_IS5_EEES8_ImJRSD_EES8_ImJOSE_EES8_ImJOSD_EESA_ISF_mESA_ISH_mESA_ISJ_mESA_ISL_mEEEEEEbE4typeELb1EEESL_.exit, label %_ZN4llvm5ErrorD2Ev.exit17

_ZN4llvm5ErrorD2Ev.exit17:                        ; preds = %bb.e, %.split, %_ZNK4llvm4json5Value12getAsIntegerEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN5clang4ssaf23makeSawButExpectedErrorIN4llvm4json5ValueEJEEENS2_5ErrorERKT_NS2_9StringRefEDpRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr nonnull @.str.2, i64 36)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = or i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.at = load ptr, ptr %7, align 8, !tbaa !36, !noalias !101
  store ptr %i.at, ptr %0, align 8, !tbaa !37, !alias.scope !101
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.f

_ZNSt8optionalImEC2IlTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameImT_EESt16is_constructibleImJS5_EESt14is_convertibleIS5_mES3_ISt5__or_IJS8_ImJRKS_IS5_EEES8_ImJRSD_EES8_ImJOSE_EES8_ImJOSD_EESA_ISF_mESA_ISH_mESA_ISJ_mESA_ISL_mEEEEEEbE4typeELb1EEESL_.exit: ; preds = %.split, %_ZNK4llvm4json5Value12getAsIntegerEv.exit.thread, %_ZNK4llvm4json5Value12getAsIntegerEv.exit
  %.sroa.0.4.i36 = phi i64 [ %i.ae, %_ZNK4llvm4json5Value12getAsIntegerEv.exit.thread ], [ %i.ap, %_ZNK4llvm4json5Value12getAsIntegerEv.exit ], [ %i.an, %.split ]
  %.sroa.01.0.copyload = load i64, ptr %6, align 8, !tbaa !13
  %i.au = trunc i64 %.sroa.0.4.i36 to i32
  %i.av = call { i64, i32 } @_ZN5clang4ssaf23buildEntityPointerLevelENS0_8EntityIdEj(i64 %.sroa.01.0.copyload, i32 noundef %i.au) #15 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.av, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.av, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = and i8 %i.ax, -2
  store i8 %i.ay, ptr %i.aw, align 8
  store i64 %.fca.0.extract, ptr %0, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit17, %_ZNSt8optionalImEC2IlTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameImT_EESt16is_constructibleImJS5_EESt14is_convertibleIS5_mES3_ISt5__or_IJS8_ImJRKS_IS5_EEES8_ImJRSD_EES8_ImJOSE_EES8_ImJOSD_EESA_ISF_mESA_ISH_mESA_ISJ_mESA_ISL_mEEEEEEbE4typeELb1EEESL_.exit, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.az = load i8, ptr %i.s, align 8
  %i.ba = trunc i8 %i.az to i1
  br i1 %i.ba, label %bb.g, label %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %6, align 8, !tbaa !37    ; 3 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.g
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #15, !inline_history !2
  br label %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit

_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit: ; preds = %bb.f, %bb.g, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit15, %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5clang4ssaf23makeSawButExpectedErrorIN4llvm4json5ValueEJEEENS2_5ErrorERKT_NS2_9StringRefEDpRKT0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 3, ptr %i.b, align 8, !tbaa !42, !alias.scope !104
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.c, align 1, !tbaa !43, !alias.scope !104
  store ptr @.str.6, ptr %5, align 8, !tbaa !44, !alias.scope !104
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !44, !alias.scope !104
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %3, ptr %i.e, align 8, !tbaa !44, !alias.scope !104
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(34) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN5clang4ssaf17describeJSONValueB5cxx11ERKN4llvm4json5ValueE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %1) #15
  %i.f = load ptr, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.g = load ptr, ptr %6, align 8, !tbaa !48
  store ptr %i.g, ptr %i.a, align 8, !tbaa !49
  call void @_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorES2_DpRKT_(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.h = load ptr, ptr %6, align 8, !tbaa !48     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !44
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.m = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !44
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

declare { i64, i32 } @_ZN5clang4ssaf23buildEntityPointerLevelENS0_8EntityIdEj(i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ssaf27entityPointerLevelSetToJSONEN4llvm14iterator_rangeISt23_Rb_tree_const_iteratorINS0_18EntityPointerLevelEEEENS1_12function_refIFNS1_4json6ObjectENS0_8EntityIdEEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::json::Array") align 8 initializes((0, 24)) %0, ptr nofree readonly %1, ptr nofree readnone captures(address) %2, ptr nofree readonly captures(none) %3, i64 %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::json::Array", align 16 ; 6 uses
  %6 = alloca [2 x %"class.llvm::json::Value"], align 8 ; 9 uses
  %7 = alloca %"class.llvm::json::Object", align 16 ; 9 uses
  %8 = alloca %"class.llvm::json::Value", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not11 = icmp eq ptr %1, %2
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit
  %.sroa.07.012 = phi ptr [ %1, %.lr.ph ], [ %i.y, %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !108
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !tbaa !13, !noalias !108
  call void %3(ptr dead_on_unwind nonnull writable sret(%"class.llvm::json::Object") align 8 %7, i64 noundef %4, i64 %.sroa.0.0.copyload.i.i) #15, !noalias !108, !inline_history !107
  store i16 7, ptr %6, align 8, !tbaa !17, !noalias !108
  %i.n = load <2 x ptr>, ptr %7, align 16, !tbaa !19, !noalias !108
  store ptr null, ptr %7, align 16, !tbaa !21, !noalias !108
  store <2 x ptr> %i.n, ptr %i.a, align 8, !tbaa !19, !noalias !108
  store ptr null, ptr %i.b, align 8, !tbaa !23, !noalias !108
  %i.o = load <2 x i32>, ptr %i.d, align 16, !tbaa !24, !noalias !108
  store i32 0, ptr %i.d, align 16, !tbaa !24, !noalias !108
  store <2 x i32> %i.o, ptr %i.c, align 8, !tbaa !24, !noalias !108
  store i32 0, ptr %i.e, align 4, !tbaa !24, !noalias !108
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27, !noalias !108
  store i16 3, ptr %i.f, align 8, !tbaa !17, !noalias !108
  %i.r = zext i32 %i.q to i64
  store i64 %i.r, ptr %i.g, align 8, !tbaa !13, !noalias !108
  call void @_ZN4llvm4json5ArrayC1ESt16initializer_listINS0_5ValueEE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %6, i64 2) #15, !noalias !108
  store i16 8, ptr %8, align 8, !tbaa !17, !alias.scope !108
  %i.s = load <2 x ptr>, ptr %5, align 16, !tbaa !29, !noalias !108
  store <2 x ptr> %i.s, ptr %i.h, align 8, !tbaa !29, !alias.scope !108
  %i.t = load ptr, ptr %i.j, align 16, !tbaa !31, !noalias !108
  store ptr %i.t, ptr %i.i, align 8, !tbaa !31, !alias.scope !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !108
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #15, !noalias !108
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #15, !noalias !108
  call void @_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #15, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !108
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !32   ; 3 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !31
  %.not.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr %i.x, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(40) %8)
  br label %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit

_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit:  ; preds = %bb.c, %bb.d
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.y = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.07.012) #17 ; 2 uses
  %.not = icmp eq ptr %i.y, %2
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ssaf29entityPointerLevelSetFromJSONERKN4llvm4json5ArrayENS1_12function_refIFNS1_8ExpectedINS0_8EntityIdEEERKNS2_6ObjectEEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.14") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.std::set", align 8          ; 9 uses
  %5 = alloca %"class.llvm::Expected", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !58
  %i.f = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not17 = icmp eq ptr %i.f, %i.h
  br i1 %.not17, label %.critedge.thread, label %.lr.ph

.critedge.thread:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = and i8 %i.j, -2
  store i8 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN4llvm8ExpectedIN5clang4ssaf18EntityPointerLevelEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.h
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.014.018 = phi ptr [ %i.f, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN5clang4ssaf26entityPointerLevelFromJSONERKN4llvm4json5ValueENS1_12function_refIFNS1_8ExpectedINS0_8EntityIdEEERKNS2_6ObjectEEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.014.018, ptr %2, i64 %3)
  %i.p = load i8, ptr %i.m, align 8               ; 2 uses
  %i.q = trunc i8 %i.p to i1                      ; 2 uses
  br i1 %i.q, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.d

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.c
  %i.r = load i64, ptr %5, align 8, !tbaa !37, !noalias !114
  %i.s = inttoptr i64 %i.r to ptr
  store ptr null, ptr %5, align 8, !tbaa !37, !noalias !114
  %i.t = load i8, ptr %i.n, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.n, align 8
  store ptr %i.s, ptr %0, align 8, !tbaa !37, !alias.scope !115
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = call { ptr, i8 } @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(12) %5) ; 0 uses
  %.pre = load i8, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.w = phi i8 [ %.pre, %bb.d ], [ %i.p, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ]
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_ZN4llvm8ExpectedIN5clang4ssaf18EntityPointerLevelEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %5, align 8, !tbaa !37     ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedIN5clang4ssaf18EntityPointerLevelEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #15, !inline_history !113
  br label %_ZN4llvm8ExpectedIN5clang4ssaf18EntityPointerLevelEED2Ev.exit

_ZN4llvm8ExpectedIN5clang4ssaf18EntityPointerLevelEED2Ev.exit: ; preds = %bb.e, %bb.f, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %i.q, label %.loopexit.loopexit, label %bb.b

.critedge:                                        ; preds = %bb.b
  %.pre21 = load ptr, ptr %i.b, align 8, !tbaa !55 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = and i8 %i.ad, -2
  store i8 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre21, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pre21, ptr %i.ah, align 8, !tbaa !55
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre21, i64 8
  store ptr %i.af, ptr %i.ak, align 8, !tbaa !59
  %i.al = load i64, ptr %i.e, align 8, !tbaa !58
  store ptr null, ptr %i.b, align 8, !tbaa !55
  store ptr %i.a, ptr %i.c, align 8, !tbaa !56
  store ptr %i.a, ptr %i.d, align 8, !tbaa !57
  store i64 0, ptr %i.e, align 8, !tbaa !58
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEEC2IS7_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISA_S7_EEvE4typeE.exit

bb.h:                                             ; preds = %.critedge.thread, %.critedge
  %i.am = phi ptr [ %i.l, %.critedge.thread ], [ %i.af, %.critedge ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.an, align 8, !tbaa !55
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEEC2IS7_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISA_S7_EEvE4typeE.exit

_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEEC2IS7_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISA_S7_EEvE4typeE.exit: ; preds = %bb.g, %bb.h
  %i.ao = phi ptr [ %i.am, %bb.h ], [ %i.af, %bb.g ]
  %.sink20 = phi ptr [ %i.am, %bb.h ], [ %i.ai, %bb.g ]
  %.sink19 = phi ptr [ %i.am, %bb.h ], [ %i.aj, %bb.g ]
  %.sink = phi i64 [ 0, %bb.h ], [ %i.al, %bb.g ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.h ], [ %i.ag, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink20, ptr %i.ap, align 8, !tbaa !56
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink19, ptr %i.aq, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink, ptr %i.ar, align 8, !tbaa !58
  store i32 %.sink.i.i.i.i.i, ptr %i.ao, align 8, !tbaa !54
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %_ZN4llvm8ExpectedIN5clang4ssaf18EntityPointerLevelEED2Ev.exit
  %.pre22 = load ptr, ptr %i.b, align 8, !tbaa !55
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEEC2IS7_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISA_S7_EEvE4typeE.exit
  %i.as = phi ptr [ %.pre22, %.loopexit.loopexit ], [ null, %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEEC2IS7_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISA_S7_EEvE4typeE.exit ]
  call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ssaf27entityPointerLevelMapToJSONERKSt3mapINS0_8EntityIdESt3setINS0_18EntityPointerLevelENS4_10ComparatorESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S7_EEEN4llvm12function_refIFNSH_4json6ObjectES2_EEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::json::Array") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::json::Value", align 8 ; 8 uses
  %5 = alloca %"class.llvm::json::Object", align 16 ; 9 uses
  %6 = alloca %"class.llvm::json::Value", align 8 ; 8 uses
  %7 = alloca %"class.llvm::json::Array", align 16 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not17 = icmp eq ptr %i.b, %i.c
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm4json5ArrayD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm4json5ArrayD2Ev.exit
  %.sroa.012.018 = phi ptr [ %i.b, %.lr.ph ], [ %i.am, %_ZN4llvm4json5ArrayD2Ev.exit ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.018, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %.sroa.01.0.copyload = load i64, ptr %i.o, align 8, !tbaa !13
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.llvm::json::Object") align 8 %5, i64 noundef %3, i64 %.sroa.01.0.copyload) #15, !inline_history !0
  store i16 7, ptr %4, align 8, !tbaa !17
  %i.p = load <2 x ptr>, ptr %5, align 16, !tbaa !19
  store ptr null, ptr %5, align 16, !tbaa !21
  store <2 x ptr> %i.p, ptr %i.d, align 8, !tbaa !19
  store ptr null, ptr %i.e, align 8, !tbaa !23
  %i.q = load <2 x i32>, ptr %i.g, align 16, !tbaa !24
  store i32 0, ptr %i.g, align 16, !tbaa !24
  store <2 x i32> %i.q, ptr %i.f, align 8, !tbaa !24
  store i32 0, ptr %i.h, align 4, !tbaa !24
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !32   ; 3 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !31
  %.not.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %4) #15
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.u, ptr %i.i, align 8, !tbaa !32
  br label %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit

_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit:  ; preds = %bb.c, %bb.d
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #15
  call void @_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.018, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.018, i64 48
  call void @_ZN5clang4ssaf27entityPointerLevelSetToJSONEN4llvm14iterator_rangeISt23_Rb_tree_const_iteratorINS0_18EntityPointerLevelEEEENS1_12function_refIFNS1_4json6ObjectENS0_8EntityIdEEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::json::Array") align 8 %7, ptr %i.w, ptr nonnull %i.x, ptr %2, i64 %3)
  store i16 8, ptr %6, align 8, !tbaa !17
  %i.y = load <2 x ptr>, ptr %7, align 16, !tbaa !29
  store <2 x ptr> %i.y, ptr %i.k, align 8, !tbaa !29
  %i.z = load ptr, ptr %i.n, align 16, !tbaa !31
  store ptr %i.z, ptr %i.m, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !32  ; 3 uses
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !31
  %.not.i.i.i9 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit
  call void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %6) #15
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !32
  br label %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit10

bb.f:                                             ; preds = %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit
  call void @_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %6)
  br label %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit10

_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit10: ; preds = %bb.e, %bb.f
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #15
  %i.ae = load ptr, ptr %7, align 16, !tbaa !33   ; 3 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !32  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit10, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.ae, %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit10 ] ; 2 uses
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %7, align 16, !tbaa !33
  br label %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit.i.i

_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exitthread-pre-split.i.i, %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit10
  %i.ah = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exitthread-pre-split.i.i ], [ %i.ae, %_ZN4llvm4json5Array9push_backEONS0_5ValueE.exit10 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm4json5ArrayD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit.i.i
  %i.ai = load ptr, ptr %i.n, align 16, !tbaa !31
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #16
  br label %_ZN4llvm4json5ArrayD2Ev.exit

_ZN4llvm4json5ArrayD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.am = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.012.018) #17 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ssaf29entityPointerLevelMapFromJSONERKN4llvm4json5ArrayENS1_12function_refIFNS1_8ExpectedINS0_8EntityIdEEERKNS2_6ObjectEEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.std::tuple.83", align 8     ; 4 uses
  %5 = alloca %"class.std::tuple.85", align 1     ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::map", align 8          ; 9 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %9 = alloca %"class.llvm::Expected.3", align 8  ; 11 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %11 = alloca %"class.llvm::Expected.14", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40                  ; 2 uses
  %i.i = and i64 %i.h, 1
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.h, ptr %i.a, align 8, !tbaa !13
  call void @_ZN5clang4ssaf23makeSawButExpectedErrorIN4llvm4json5ArrayEJmEEENS2_5ErrorERKT_NS2_9StringRefEDpRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull @.str.3, i64 35, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.m = load ptr, ptr %6, align 8, !tbaa !36, !noalias !133
  store ptr %i.m, ptr %0, align 8, !tbaa !37, !alias.scope !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  store i32 0, ptr %i.n, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i64 0, ptr %i.r, align 8, !tbaa !58
  %.not2567.not = icmp eq ptr %i.c, %i.d
  br i1 %.not2567.not, label %.critedge27.thread, label %.lr.ph

.critedge27.thread:                               ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = and i8 %i.t, -2
  store i8 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.q

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit
  %i.ae = add i64 %.068, 2                        ; 2 uses
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.ag = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 40
  %.not25 = icmp ult i64 %i.ae, %i.ak
  br i1 %.not25, label %bb.d, label %.critedge27, !llvm.loop !118

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.al = phi ptr [ %i.d, %.lr.ph ], [ %i.ag, %bb.c ]
  %.068 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.c ] ; 3 uses
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %.068 ; 3 uses
  %i.an = load i16, ptr %i.am, align 8, !tbaa !17
  %.not54 = icmp eq i16 %i.an, 7
  br i1 %.not54, label %bb.e, label %_ZN4llvm5ErrorD2Ev.exit30

_ZN4llvm5ErrorD2Ev.exit30:                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZN5clang4ssaf23makeSawButExpectedErrorIN4llvm4json5ValueEJEEENS2_5ErrorERKT_NS2_9StringRefEDpRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr nonnull @.str.1, i64 31)
  %i.ao = load i8, ptr %i.ad, align 8
  %i.ap = or i8 %i.ao, 1
  store i8 %i.ap, ptr %i.ad, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.aq = load ptr, ptr %8, align 8, !tbaa !36, !noalias !134
  store ptr %i.aq, ptr %0, align 8, !tbaa !37, !alias.scope !134
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.3") align 8 %9, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ar) #15, !inline_history !1
  %i.as = load i8, ptr %i.w, align 8              ; 2 uses
  %i.at = trunc i8 %i.as to i1
  br i1 %i.at, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.f

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.e
  %i.au = load i64, ptr %9, align 8, !tbaa !37, !noalias !135
  %i.av = inttoptr i64 %i.au to ptr
  store ptr null, ptr %9, align 8, !tbaa !37, !noalias !135
  %i.aw = load i8, ptr %i.ad, align 8
  %i.ax = or i8 %i.aw, 1
  store i8 %i.ax, ptr %i.ad, align 8
  store ptr %i.av, ptr %0, align 8, !tbaa !37, !alias.scope !136
  br label %.critedge29

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr %1, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %.068 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !17
  %.not55 = icmp eq i16 %i.bb, 8
  br i1 %.not55, label %bb.g, label %_ZN4llvm5ErrorD2Ev.exit33

_ZN4llvm5ErrorD2Ev.exit33:                        ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @_ZN5clang4ssaf23makeSawButExpectedErrorIN4llvm4json5ValueEJEEENS2_5ErrorERKT_NS2_9StringRefEDpRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %10, ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr nonnull @.str.4, i64 43)
  %i.bd = load i8, ptr %i.ad, align 8
  %i.be = or i8 %i.bd, 1
  store i8 %i.be, ptr %i.ad, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.bf = load ptr, ptr %10, align 8, !tbaa !36, !noalias !137
  store ptr %i.bf, ptr %0, align 8, !tbaa !37, !alias.scope !137
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %.pre = load i8, ptr %i.w, align 8
  br label %.critedge29

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @_ZN5clang4ssaf29entityPointerLevelSetFromJSONERKN4llvm4json5ArrayENS1_12function_refIFNS1_8ExpectedINS0_8EntityIdEEERKNS2_6ObjectEEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.14") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr %2, i64 %3)
  %i.bh = load i8, ptr %i.x, align 8
  %i.bi = trunc i8 %i.bh to i1                    ; 2 uses
  br i1 %i.bi, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i35, label %bb.h

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i35: ; preds = %bb.g
  %i.bj = load i64, ptr %11, align 8, !tbaa !37, !noalias !138
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr null, ptr %11, align 8, !tbaa !37, !noalias !138
  %i.bl = load i8, ptr %i.ad, align 8
  %i.bm = or i8 %i.bl, 1
  store i8 %i.bm, ptr %i.ad, align 8
  store ptr %i.bk, ptr %0, align 8, !tbaa !37, !alias.scope !139
  br label %_ZNSt3setIN5clang4ssaf18EntityPointerLevelENS2_10ComparatorESaIS2_EEaSEOS5_.exit

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.o, align 8, !tbaa !55  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h
  %i.bo = load i64, ptr %9, align 8, !tbaa !61    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !61
  %i.br = icmp ult i64 %i.bq, %i.bo               ; 3 uses
  %.19.i.i.i.i = select i1 %i.br, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.br, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN5clang4ssaf8EntityIdESt3setINS1_18EntityPointerLevelENS4_10ComparatorESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit.i, label %bb.i, !llvm.loop !131

_ZNSt3mapIN5clang4ssaf8EntityIdESt3setINS1_18EntityPointerLevelENS4_10ComparatorESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit.i: ; preds = %bb.i
  %i.bs = icmp eq ptr %.19.i.i.i.i, %i.n
  br i1 %i.bs, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIN5clang4ssaf8EntityIdESt3setINS1_18EntityPointerLevelENS4_10ComparatorESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.br, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bt = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !61
  %i.bu = icmp ult i64 %i.bo, %i.bt
  br i1 %i.bu, label %.critedge.i, label %_ZNSt3mapIN5clang4ssaf8EntityIdESt3setINS1_18EntityPointerLevelENS4_10ComparatorESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S7_EEEixERSB_.exit

.critedge.i:                                      ; preds = %bb.j, %_ZNSt3mapIN5clang4ssaf8EntityIdESt3setINS1_18EntityPointerLevelENS4_10ComparatorESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit.i, %bb.h
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.j ], [ %.19.i.i.i.i, %_ZNSt3mapIN5clang4ssaf8EntityIdESt3setINS1_18EntityPointerLevelENS4_10ComparatorESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S7_EEE11lower_boundERSB_.exit.i ], [ %i.n, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %9, ptr %4, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.bv = call ptr @_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt3mapIN5clang4ssaf8EntityIdESt3setINS1_18EntityPointerLevelENS4_10ComparatorESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S7_EEEixERSB_.exit

_ZNSt3mapIN5clang4ssaf8EntityIdESt3setINS1_18EntityPointerLevelENS4_10ComparatorESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S7_EEEixERSB_.exit: ; preds = %bb.j, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.bv, %.critedge.i ], [ %.19.i.i.i.i, %bb.j ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !55
  call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 4 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !55
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !56
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 72
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !57
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 80 ; 2 uses
  store i64 0, ptr %i.cc, align 8, !tbaa !58
  %i.cd = load ptr, ptr %i.y, align 8, !tbaa !62  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %_ZNSt3setIN5clang4ssaf18EntityPointerLevelENS2_10ComparatorESaIS2_EEaSEOS5_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIN5clang4ssaf8EntityIdESt3setINS1_18EntityPointerLevelENS4_10ComparatorESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S7_EEEixERSB_.exit
  %i.ce = load i32, ptr %i.z, align 8, !tbaa !54
  store i32 %i.ce, ptr %i.bz, align 8, !tbaa !54
  store ptr %i.cd, ptr %i.bx, align 8, !tbaa !55
  %i.cf = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !62
  store <2 x ptr> %i.cf, ptr %i.ca, align 8, !tbaa !62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.bz, ptr %i.cg, align 8, !tbaa !59
  %i.ch = load i64, ptr %i.ac, align 8, !tbaa !58
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !58
  store ptr null, ptr %i.y, align 8, !tbaa !55
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !56
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !57
  store i64 0, ptr %i.ac, align 8, !tbaa !58
  br label %_ZNSt3setIN5clang4ssaf18EntityPointerLevelENS2_10ComparatorESaIS2_EEaSEOS5_.exit

_ZNSt3setIN5clang4ssaf18EntityPointerLevelENS2_10ComparatorESaIS2_EEaSEOS5_.exit: ; preds = %bb.k, %_ZNSt3mapIN5clang4ssaf8EntityIdESt3setINS1_18EntityPointerLevelENS4_10ComparatorESaIS4_EESt4lessIS2_ESaISt4pairIKS2_S7_EEEixERSB_.exit, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i35
  %i.ci = load i8, ptr %i.x, align 8
  %i.cj = trunc i8 %i.ci to i1
  br i1 %i.cj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt3setIN5clang4ssaf18EntityPointerLevelENS2_10ComparatorESaIS2_EEaSEOS5_.exit
  %i.ck = load ptr, ptr %i.y, align 8, !tbaa !55
  call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(49) %11, ptr noundef %i.ck)
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit

bb.m:                                             ; preds = %_ZNSt3setIN5clang4ssaf18EntityPointerLevelENS2_10ComparatorESaIS2_EEaSEOS5_.exit
  %i.cl = load ptr, ptr %11, align 8, !tbaa !37   ; 3 uses
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.m
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cl) #15, !inline_history !132
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit

_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit: ; preds = %bb.l, %bb.m, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.cp = load i8, ptr %i.w, align 8
  %i.cq = trunc i8 %i.cp to i1
  br i1 %i.cq, label %bb.n, label %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit

bb.n:                                             ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit
  %i.cr = load ptr, ptr %9, align 8, !tbaa !37    ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i39, label %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i40

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i40: ; preds = %bb.n
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !39
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) #15, !inline_history !2
  br label %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit

_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit: ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit, %bb.n, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br i1 %i.bi, label %.loopexit, label %bb.c

.critedge29:                                      ; preds = %_ZN4llvm5ErrorD2Ev.exit33, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.cv = phi i8 [ %.pre, %_ZN4llvm5ErrorD2Ev.exit33 ], [ %i.as, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ]
  %i.cw = trunc i8 %i.cv to i1
  br i1 %i.cw, label %bb.o, label %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit44

bb.o:                                             ; preds = %.critedge29
  %i.cx = load ptr, ptr %9, align 8, !tbaa !37    ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i42, label %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit44, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i43

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i43: ; preds = %bb.o
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !39
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx) #15, !inline_history !2
  br label %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit44

_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit44: ; preds = %.critedge29, %bb.o, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.loopexit

.critedge27:                                      ; preds = %bb.c
  %.pre79 = load ptr, ptr %i.o, align 8, !tbaa !55 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8
  %i.dd = and i8 %i.dc, -2
  store i8 %i.dd, ptr %i.db, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre79, null
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge27
  %i.df = load i32, ptr %i.n, align 8, !tbaa !54
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pre79, ptr %i.dg, align 8, !tbaa !55
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.di = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.dj = getelementptr inbounds nuw i8, ptr %.pre79, i64 8
  store ptr %i.de, ptr %i.dj, align 8, !tbaa !59
  %i.dk = load i64, ptr %i.r, align 8, !tbaa !58
  store ptr null, ptr %i.o, align 8, !tbaa !55
  store ptr %i.n, ptr %i.p, align 8, !tbaa !56
  store ptr %i.n, ptr %i.q, align 8, !tbaa !57
  store i64 0, ptr %i.r, align 8, !tbaa !58
  br label %_ZN4llvm8ExpectedISt3mapIN5clang4ssaf8EntityIdESt3setINS3_18EntityPointerLevelENS6_10ComparatorESaIS6_EESt4lessIS4_ESaISt4pairIKS4_S9_EEEEC2ISG_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISJ_SG_EEvE4typeE.exit

bb.q:                                             ; preds = %.critedge27.thread, %.critedge27
  %i.dl = phi ptr [ %i.v, %.critedge27.thread ], [ %i.de, %.critedge27 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.dm, align 8, !tbaa !55
  br label %_ZN4llvm8ExpectedISt3mapIN5clang4ssaf8EntityIdESt3setINS3_18EntityPointerLevelENS6_10ComparatorESaIS6_EESt4lessIS4_ESaISt4pairIKS4_S9_EEEEC2ISG_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISJ_SG_EEvE4typeE.exit

_ZN4llvm8ExpectedISt3mapIN5clang4ssaf8EntityIdESt3setINS3_18EntityPointerLevelENS6_10ComparatorESaIS6_EESt4lessIS4_ESaISt4pairIKS4_S9_EEEEC2ISG_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISJ_SG_EEvE4typeE.exit: ; preds = %bb.p, %bb.q
  %i.dn = phi ptr [ %i.dl, %bb.q ], [ %i.de, %bb.p ]
  %.sink78 = phi ptr [ %i.dl, %bb.q ], [ %i.dh, %bb.p ]
  %.sink77 = phi ptr [ %i.dl, %bb.q ], [ %i.di, %bb.p ]
  %.sink = phi i64 [ 0, %bb.q ], [ %i.dk, %bb.p ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.q ], [ %i.df, %bb.p ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink78, ptr %i.do, align 8, !tbaa !56
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink77, ptr %i.dp, align 8, !tbaa !57
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink, ptr %i.dq, align 8, !tbaa !58
  store i32 %.sink.i.i.i.i.i, ptr %i.dn, align 8, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit30, %_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEED2Ev.exit44, %_ZN4llvm8ExpectedISt3mapIN5clang4ssaf8EntityIdESt3setINS3_18EntityPointerLevelENS6_10ComparatorESaIS6_EESt4lessIS4_ESaISt4pairIKS4_S9_EEEEC2ISG_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISJ_SG_EEvE4typeE.exit
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !55
  call void @_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5clang4ssaf23makeSawButExpectedErrorIN4llvm4json5ArrayEJmEEENS2_5ErrorERKT_NS2_9StringRefEDpRKT0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.80, align 8             ; 4 uses
  %6 = alloca %"class.llvm::format_object.75", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 3, ptr %i.a, align 8, !tbaa !42, !alias.scope !152
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 5, ptr %i.b, align 1, !tbaa !43, !alias.scope !152
  store ptr @.str.6, ptr %10, align 8, !tbaa !44, !alias.scope !152
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !44, !alias.scope !152
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %3, ptr %i.d, align 8, !tbaa !44, !alias.scope !152
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(34) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @_ZN5clang4ssaf17describeJSONValueB5cxx11ERKN4llvm4json5ArrayE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %i.e = load ptr, ptr %9, align 8, !tbaa !48
  %i.f = load ptr, ptr %11, align 8, !tbaa !48
  %i.g = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #15, !noalias !153 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0
  %i.i = extractvalue { i32, ptr } %i.g, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !154
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !65, !noalias !154
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !66, !noalias !154
  store i8 0, ptr %i.j, align 8, !tbaa !44, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !154
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !71, !noalias !154
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 0, ptr %i.m, align 8, !tbaa !72, !noalias !154
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 1, ptr %i.n, align 4, !tbaa !73, !noalias !154
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false), !noalias !154
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %8, align 8, !tbaa !39, !noalias !154
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %7, ptr %i.p, align 8, !tbaa !75, !noalias !154
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef null, i64 noundef 0, i32 noundef 0) #15, !noalias !154
  %i.q = load i64, ptr %4, align 8, !tbaa !13, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !154
  store ptr %i.e, ptr %6, align 8, !noalias !154
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !154
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !154
  store ptr %6, ptr %5, align 8, !tbaa !156, !noalias !154
  %i.r = ptrtoint ptr %5 to i64
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcmEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.r) #15, !noalias !154 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !154
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #15, !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !154
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.t = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18, !noalias !158 ; 2 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 %i.h, ptr %i.i, i1 noundef zeroext true) #15, !noalias !158
  store ptr %i.t, ptr %0, align 8, !tbaa !36, !alias.scope !159
  %i.u = load ptr, ptr %7, align 8, !tbaa !48, !noalias !154 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.j
  br i1 %i.v, label %_ZN4llvm17createStringErrorIJPKcmEEENS_5ErrorESt10error_codeS2_DpRKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.w = load i64, ptr %i.j, align 8, !tbaa !44, !noalias !154
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #16, !noalias !154
  br label %_ZN4llvm17createStringErrorIJPKcmEEENS_5ErrorESt10error_codeS2_DpRKT_.exit

_ZN4llvm17createStringErrorIJPKcmEEENS_5ErrorESt10error_codeS2_DpRKT_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !154
  %i.y = load ptr, ptr %11, align 8, !tbaa !48    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm17createStringErrorIJPKcmEEENS_5ErrorESt10error_codeS2_DpRKT_.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !44
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm17createStringErrorIJPKcmEEENS_5ErrorESt10error_codeS2_DpRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.ad = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !44
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !163  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24   ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.y, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  tail call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #15
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !75   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8, !tbaa !44
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 32) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i, %bb.b
  %i.x = add i32 %.0.i5.i, -1
  %i.y = and i32 %i.x, %.0.i5.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !160

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEv.exit, label %.lr.ph9.i, !llvm.loop !161

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !163  ; 2 uses
  %i.z = icmp eq i32 %.pr, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEv.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !164
  %i.ab = zext i32 %.pr to i64                    ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 6
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #15
  br label %_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm4json5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm4json5ValueESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

_ZNKSt6vectorIN4llvm4json5ValueESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2) #15
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm4json5ValueESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4llvm4json5ValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvm4json5ValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @_ZN4llvm4json5Value8copyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i) #15
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !166

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm4json5ValueESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4llvm4json5ValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i19
  %.011.i.i.i.i.i20 = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i19 ], [ %i.t, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i19 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  tail call void @_ZN4llvm4json5Value8copyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.011.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i21) #15
  %i.u = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 40 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !166

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.t, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.v, %.lr.ph.i.i.i.i.i19 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit24 ] ; 2 uses
  tail call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i) #15
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit:    ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvm4json5ValueES3_SaIS2_EET0_T_S6_S5_RT1_.exit24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN4llvm4json5ValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aa) #16
  br label %_ZNSt12_Vector_baseIN4llvm4json5ValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm4json5ValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvm4json5ValueEEvT_S4_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !33
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.a, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !31
  ret void
}

declare void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm4json5Value8copyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #16
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !167

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call void @_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  tail call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #16
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !168

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare void @_ZN5clang4ssaf17describeJSONValueB5cxx11ERKN4llvm4json5ValueE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorES2_DpRKT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat {
bb.a:
  %3 = alloca %class.anon.52, align 8             ; 4 uses
  %4 = alloca %"class.llvm::format_object", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %i.a = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #15 ; 2 uses
  %i.b = extractvalue { i32, ptr } %i.a, 0
  %i.c = extractvalue { i32, ptr } %i.a, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !177
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !65, !noalias !177
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !66, !noalias !177
  store i8 0, ptr %i.d, align 8, !tbaa !44, !noalias !177
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !177
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !71, !noalias !177
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.g, align 8, !tbaa !72, !noalias !177
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.h, align 4, !tbaa !73, !noalias !177
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !noalias !177
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !39, !noalias !177
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %5, ptr %i.j, align 8, !tbaa !75, !noalias !177
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #15, !noalias !177
  %i.k = load ptr, ptr %2, align 8, !tbaa !49, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !177
  store ptr %1, ptr %4, align 8, !noalias !177
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !177
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !177
  store ptr %4, ptr %3, align 8, !tbaa !179, !noalias !177
  %i.l = ptrtoint ptr %3 to i64
  %i.m = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.l) #15, !noalias !177 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !177
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #15, !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !177
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.n = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18, !noalias !181 ; 2 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 %i.b, ptr %i.c, i1 noundef zeroext true) #15, !noalias !181
  store ptr %i.n, ptr %0, align 8, !tbaa !36, !alias.scope !182
  %i.o = load ptr, ptr %5, align 8, !tbaa !48, !noalias !177 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorESt10error_codeS2_DpRKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.q = load i64, ptr %i.d, align 8, !tbaa !44, !noalias !177
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #16, !noalias !177
  br label %_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorESt10error_codeS2_DpRKT_.exit

_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorESt10error_codeS2_DpRKT_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !177
  ret void
}

declare { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184, !nonnull !80, !align !81 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, ptr noundef %i.f) #15
  ret i32 %i.g
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32), i32, ptr, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02124.i = load ptr, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  %.not25.i = icmp eq ptr %.02124.i, null
  br i1 %.not25.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %1, align 8, !tbaa !61     ; 3 uses
  %i.e = load i32, ptr %i.c, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02126.i = phi ptr [ %.02124.i, %.lr.ph.i ], [ %.02126.i.be, %.backedge.backedge ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02126.i, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %.02126.i, i64 40
  %i.h = load i64, ptr %i.f, align 8, !tbaa !61   ; 3 uses
  %i.i = icmp ult i64 %i.d, %i.h
  br i1 %i.i, label %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.j = icmp ult i64 %i.h, %i.d
  br i1 %i.j, label %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i.thread, label %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.i

_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.i: ; preds = %bb.b
  %i.k = load i32, ptr %i.g, align 8, !tbaa !24
  %i.l = icmp ult i32 %i.e, %i.k
  br i1 %i.l, label %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i, label %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i.thread

_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i: ; preds = %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.i, %.backedge
  %i.m = getelementptr inbounds nuw i8, ptr %.02126.i, i64 16
  %.021.i = load ptr, ptr %i.m, align 8, !tbaa !62 ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i.thread
  %.02126.i.be = phi ptr [ %.021.i, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i ], [ %.021.i13, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i.thread ]
  br label %.backedge, !llvm.loop !189

_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i.thread: ; preds = %bb.b, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.02126.i, i64 24
  %.021.i13 = load ptr, ptr %i.n, align 8, !tbaa !62 ; 2 uses
  %.not.i14 = icmp eq ptr %.021.i13, null
  br i1 %.not.i14, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i, %bb.a
  %.020.lcssa34.i = phi ptr [ %i.b, %bb.a ], [ %.02126.i, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.q = icmp eq ptr %.020.lcssa34.i, %i.p
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i) #17 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !61
  %.pre24 = load i64, ptr %1, align 8, !tbaa !61
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i.thread, %bb.c
  %i.s = phi i64 [ %.pre24, %bb.c ], [ %i.d, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i.thread ] ; 2 uses
  %i.t = phi i64 [ %.pre, %bb.c ], [ %i.h, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i.thread ] ; 2 uses
  %.020.lcssa33.i = phi ptr [ %.020.lcssa34.i, %bb.c ], [ %.02126.i, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i.thread ] ; 2 uses
  %.sroa.06.0.i = phi ptr [ %i.r, %bb.c ], [ %.02126.i, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit.thread.i.thread ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = icmp ult i64 %i.t, %i.s
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.thread
  %i.x = icmp ult i64 %i.s, %i.t
  br i1 %i.x, label %bb.i, label %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit5.i

_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit5.i: ; preds = %bb.d
  %i.y = load i32, ptr %i.u, align 4, !tbaa !24
  %i.z = load i32, ptr %i.v, align 8, !tbaa !24
  %i.aa = icmp ult i32 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %bb.i

bb.e:                                             ; preds = %._crit_edge.thread.i, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit5.i, %._crit_edge.i.thread
  %.sroa.4.0.i.ph = phi ptr [ %.020.lcssa33.i, %._crit_edge.i.thread ], [ %.020.lcssa33.i, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit5.i ], [ %.020.lcssa34.i, %._crit_edge.thread.i ] ; 4 uses
  %i.ab = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.ab, label %_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE10_M_insert_IRKS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.af = load i64, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !61 ; 2 uses
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE10_M_insert_IRKS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp ult i64 %i.ag, %i.af
  br i1 %i.ai, label %_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE10_M_insert_IRKS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !24
  %i.ak = load i32, ptr %i.ae, align 8, !tbaa !24
  %i.al = icmp ult i32 %i.aj, %i.ak
  br label %_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE10_M_insert_IRKS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit

_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE10_M_insert_IRKS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.am = phi i1 [ %i.al, %bb.h ], [ true, %bb.e ], [ true, %bb.f ], [ false, %bb.g ]
  %i.an = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !190
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.am, ptr noundef nonnull %i.an, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #15
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !58
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit5.i, %_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE10_M_insert_IRKS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit
  %.sroa.011.0 = phi ptr [ %i.an, %_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE10_M_insert_IRKS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit ], [ %.sroa.06.0.i, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit5.i ], [ %.sroa.06.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE10_M_insert_IRKS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit ], [ 0, %_ZNK5clang4ssaf18EntityPointerLevel10ComparatorclERKS1_S4_.exit5.i ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare void @_ZN5clang4ssaf17describeJSONValueB5cxx11ERKN4llvm4json5ArrayE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcmEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192, !nonnull !80, !align !81 ; 3 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = load i64, ptr %i.e, align 8, !tbaa !13
  %i.i = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, ptr noundef %i.g, i64 noundef %i.h) #15
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !64
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  store i64 %i.e, ptr %i.b, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.g, ptr %i.h, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.g, ptr %i.i, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.j, align 8, !tbaa !58
  %i.k = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.b, align 8, !tbaa !61
  %i.r = load i64, ptr %i.p, align 8, !tbaa !61
  %i.s = icmp ult i64 %i.q, %i.r
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %i.t = phi i1 [ %i.s, %bb.c ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !58
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !58
  br label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE10_Auto_nodeD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55
  tail call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.y)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #16
  br label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.d
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.l, %bb.d ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !61
  %i.i = load i64, ptr %2, align 8, !tbaa !61
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !62 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8, !tbaa !61     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !62 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !199

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #17 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !61
  %.pre82 = load i64, ptr %2, align 8, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i64 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %2, align 8, !tbaa !61     ; 8 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !61   ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #17 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !61
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !62 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !61 ; 2 uses
  %i.an = icmp ult i64 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !62 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !199

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #17 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #17 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !61
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !62 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !61 ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !62 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !199

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #17 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !61
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit

_ZNSt8_Rb_treeIN5clang4ssaf8EntityIdESt4pairIKS2_St3setINS1_18EntityPointerLevelENS6_10ComparatorESaIS6_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE24_M_get_insert_unique_posERS4_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, null, null}
!3 = distinct !{!3, !60}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSN4llvm4json5Value9ValueTypeE", !8, i64 0}
!15 = !{!"_ZTSN4llvm21AlignedCharArrayUnionIbJdlmNS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4json5ArrayENS8_6ObjectEEEE", !8, i64 0}
!16 = !{!"_ZTSN4llvm4json5ValueE", !14, i64 0, !15, i64 8}
!17 = !{!16, !14, i64 0}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_4json9ObjectKeyENS2_5ValueEEE", !18, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 int", !18, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!"_ZTSN5clang4ssaf8EntityIdE", !12, i64 0}
!26 = !{!"_ZTSN5clang4ssaf18EntityPointerLevelE", !25, i64 0, !9, i64 8}
!27 = !{!26, !9, i64 8}
!28 = !{!"p1 _ZTSN4llvm4json5ValueE", !18, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN4llvm4json5ValueESaIS2_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!31 = !{!30, !28, i64 16}
!32 = !{!30, !28, i64 8}
!33 = !{!30, !28, i64 0}
!34 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !18, i64 0}
!35 = !{!"_ZTSN4llvm5ErrorE", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!34, !34, i64 0}
!38 = !{!"vtable pointer", !7, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"_ZTSN4llvm5Twine8NodeKindE", !8, i64 0}
!41 = !{!"_ZTSN4llvm5TwineE", !8, i64 0, !8, i64 16, !40, i64 32, !40, i64 33}
!42 = !{!41, !40, i64 32}
!43 = !{!41, !40, i64 33}
!44 = !{!8, !8, i64 0}
!45 = !{!"p1 omnipotent char", !18, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !46, i64 0, !12, i64 8, !8, i64 16}
!48 = !{!47, !45, i64 0}
!49 = !{!45, !45, i64 0}
!50 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!51 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!52 = !{!"_ZTSSt18_Rb_tree_node_base", !50, i64 0, !51, i64 8, !51, i64 16, !51, i64 24}
!53 = !{!"_ZTSSt15_Rb_tree_header", !52, i64 0, !12, i64 32}
!54 = !{!53, !50, i64 0}
!55 = !{!53, !51, i64 8}
!56 = !{!53, !51, i64 16}
!57 = !{!53, !51, i64 24}
!58 = !{!53, !12, i64 32}
!59 = !{!52, !51, i64 8}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!25, !12, i64 0}
!62 = !{!51, !51, i64 0}
!63 = !{!"p1 _ZTSN5clang4ssaf8EntityIdE", !18, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!46, !45, i64 0}
!66 = !{!47, !12, i64 8}
!67 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !8, i64 0}
!68 = !{!"bool", !8, i64 0}
!69 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !8, i64 0}
!70 = !{!"_ZTSN4llvm11raw_ostreamE", !67, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !68, i64 40, !69, i64 44}
!71 = !{!70, !67, i64 8}
!72 = !{!70, !68, i64 40}
!73 = !{!70, !69, i64 44}
!74 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"p1 _ZTSN4llvm13format_objectIJPKcmEEE", !18, i64 0}
!77 = !{!52, !51, i64 24}
!78 = !{!52, !51, i64 16}
!79 = !{!"p1 _ZTSN4llvm13format_objectIJPKcEEE", !18, i64 0}
!80 = !{}
!81 = !{i64 8}
!82 = !{!"_ZTSSt10_Head_baseILm0EPKcLb0EE", !45, i64 0}
!83 = distinct !{!83, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!84 = distinct !{!84, !83, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!86 = distinct !{!86, !85, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEE9takeErrorEv"}
!88 = distinct !{!88, !87, !"_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEE9takeErrorEv: argument 0"}
!89 = distinct !{!89, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!90 = distinct !{!90, !89, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!91 = distinct !{!91, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!92 = distinct !{!92, !91, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!93 = !{!84}
!94 = !{!86}
!95 = !{!88}
!96 = !{!90}
!97 = !{!"branch_weights", i32 0, i32 -196919296, i32 2048000, i32 1024}
!98 = !{!"double", !8, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!"branch_weights", i32 4000000, i32 4001}
!101 = !{!92}
!102 = distinct !{!102, i1 true, !"_ZN4llvmplEPKcNS_9StringRefE"}
!103 = distinct !{!103, !102, !"_ZN4llvmplEPKcNS_9StringRefE: argument 0"}
!104 = !{!103}
!105 = distinct !{!105, i1 true, !"_ZN5clang4ssaf24entityPointerLevelToJSONERKNS0_18EntityPointerLevelEN4llvm12function_refIFNS4_4json6ObjectENS0_8EntityIdEEEE"}
!106 = distinct !{!106, !105, !"_ZN5clang4ssaf24entityPointerLevelToJSONERKNS0_18EntityPointerLevelEN4llvm12function_refIFNS4_4json6ObjectENS0_8EntityIdEEEE: argument 0"}
!107 = distinct !{ptr @_ZN5clang4ssaf24entityPointerLevelToJSONERKNS0_18EntityPointerLevelEN4llvm12function_refIFNS4_4json6ObjectENS0_8EntityIdEEEE, null}
!108 = !{!106}
!109 = distinct !{!109, i1 true, !"_ZN4llvm8ExpectedIN5clang4ssaf18EntityPointerLevelEE9takeErrorEv"}
!110 = distinct !{!110, !109, !"_ZN4llvm8ExpectedIN5clang4ssaf18EntityPointerLevelEE9takeErrorEv: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!112 = distinct !{!112, !111, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!113 = distinct !{null, null, null}
!114 = !{!110}
!115 = !{!112}
!116 = distinct !{!116, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!117 = distinct !{!117, !116, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!118 = distinct !{!118, !60}
!119 = distinct !{!119, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!120 = distinct !{!120, !119, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!121 = distinct !{!121, i1 true, !"_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEE9takeErrorEv"}
!122 = distinct !{!122, !121, !"_ZN4llvm8ExpectedIN5clang4ssaf8EntityIdEE9takeErrorEv: argument 0"}
!123 = distinct !{!123, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!124 = distinct !{!124, !123, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!125 = distinct !{!125, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!126 = distinct !{!126, !125, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEE9takeErrorEv"}
!128 = distinct !{!128, !127, !"_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEE9takeErrorEv: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!130 = distinct !{!130, !129, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!131 = distinct !{!131, !60}
!132 = distinct !{null, null, null}
!133 = !{!117}
!134 = !{!120}
!135 = !{!122}
!136 = !{!124}
!137 = !{!126}
!138 = !{!128}
!139 = !{!130}
!140 = distinct !{!140, i1 true, !"_ZN4llvmplEPKcNS_9StringRefE"}
!141 = distinct !{!141, !140, !"_ZN4llvmplEPKcNS_9StringRefE: argument 0"}
!142 = distinct !{!142, i1 true, !"_ZN4llvm17createStringErrorIJPKcmEEENS_5ErrorES2_DpRKT_"}
!143 = distinct !{!143, !142, !"_ZN4llvm17createStringErrorIJPKcmEEENS_5ErrorES2_DpRKT_: argument 0"}
!144 = distinct !{!144, i1 true, !"_ZN4llvm17createStringErrorIJPKcmEEENS_5ErrorESt10error_codeS2_DpRKT_"}
!145 = distinct !{!145, !144, !"_ZN4llvm17createStringErrorIJPKcmEEENS_5ErrorESt10error_codeS2_DpRKT_: argument 0"}
!146 = distinct !{!146, i1 true, !"_ZN4llvm6formatIJPKcmEEENS_13format_objectIJDpT_EEES2_DpRKS4_"}
!147 = distinct !{!147, !146, !"_ZN4llvm6formatIJPKcmEEENS_13format_objectIJDpT_EEES2_DpRKS4_: argument 0"}
!148 = distinct !{!148, i1 true, !"_ZN4llvm10make_errorINS_11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEEENS_5ErrorEDpOT0_"}
!149 = distinct !{!149, !148, !"_ZN4llvm10make_errorINS_11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEEENS_5ErrorEDpOT0_: argument 0"}
!150 = distinct !{!150, i1 true, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!151 = distinct !{!151, !150, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!152 = !{!141}
!153 = !{!143}
!154 = !{!145}
!155 = !{!147, !145}
!156 = !{!76, !76, i64 0}
!157 = !{!149}
!158 = !{!151, !149, !145}
!159 = !{!149, !145}
!160 = distinct !{!160, !60}
!161 = distinct !{!161, !60}
!162 = !{!"_ZTSN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEEE", !20, i64 0, !22, i64 8, !9, i64 16, !9, i64 20}
!163 = !{!162, !9, i64 20}
!164 = !{!162, !20, i64 0}
!165 = !{!162, !22, i64 8}
!166 = distinct !{!166, !60}
!167 = distinct !{!167, !60}
!168 = distinct !{!168, !60}
!169 = distinct !{!169, i1 true, !"_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorESt10error_codeS2_DpRKT_"}
!170 = distinct !{!170, !169, !"_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorESt10error_codeS2_DpRKT_: argument 0"}
!171 = distinct !{!171, i1 true, !"_ZN4llvm6formatIJPKcEEENS_13format_objectIJDpT_EEES2_DpRKS4_"}
!172 = distinct !{!172, !171, !"_ZN4llvm6formatIJPKcEEENS_13format_objectIJDpT_EEES2_DpRKS4_: argument 0"}
!173 = distinct !{!173, i1 true, !"_ZN4llvm10make_errorINS_11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEEENS_5ErrorEDpOT0_"}
!174 = distinct !{!174, !173, !"_ZN4llvm10make_errorINS_11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEEENS_5ErrorEDpOT0_: argument 0"}
!175 = distinct !{!175, i1 true, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!176 = distinct !{!176, !175, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!177 = !{!170}
!178 = !{!172, !170}
!179 = !{!79, !79, i64 0}
!180 = !{!174}
!181 = !{!176, !174, !170}
!182 = !{!174, !170}
!183 = !{!"_ZTSZN4llvmlsIJPKcEEERNS_11raw_ostreamES4_NS_13format_objectIJDpT_EEEEUlPcmE_", !79, i64 0}
!184 = !{!183, !79, i64 0}
!185 = !{!"_ZTSSt11_Tuple_implILm0EJPKcEE", !82, i64 0}
!186 = !{!"_ZTSSt5tupleIJPKcEE", !185, i64 0}
!187 = !{!"_ZTSN4llvm13format_objectIJPKcEEE", !45, i64 0, !186, i64 8}
!188 = !{!187, !45, i64 0}
!189 = distinct !{!189, !60}
!190 = !{i64 0, i64 8, !13, i64 8, i64 4, !24}
!191 = !{!"_ZTSZN4llvmlsIJPKcmEEERNS_11raw_ostreamES4_NS_13format_objectIJDpT_EEEEUlPcmE_", !76, i64 0}
!192 = !{!191, !76, i64 0}
!193 = !{!"_ZTSSt10_Head_baseILm1EmLb0EE", !12, i64 0}
!194 = !{!"_ZTSSt11_Tuple_implILm1EJmEE", !193, i64 0}
!195 = !{!"_ZTSSt11_Tuple_implILm0EJPKcmEE", !194, i64 0, !82, i64 8}
!196 = !{!"_ZTSSt5tupleIJPKcmEE", !195, i64 0}
!197 = !{!"_ZTSN4llvm13format_objectIJPKcmEEE", !45, i64 0, !196, i64 8}
!198 = !{!197, !45, i64 0}
!199 = distinct !{!199, !60}
end_hunk_0
