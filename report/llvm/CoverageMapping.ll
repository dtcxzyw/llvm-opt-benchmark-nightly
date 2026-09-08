Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CoverageMapping?download=true
inline.NumInlined: 7378
inline.NumDeleted: 3735
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0
@_ZN4llvm14InstrProfError2IDE = external global i8, align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVN4llvm9FileErrorE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZZN4llvm8hexdigitEjbE3LUT = linkonce_odr local_unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", comdat, align 16
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"end of File\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"no coverage data found\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"unsupported coverage format version\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"truncated coverage data\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"malformed coverage data\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"failed to decompress coverage data (zlib)\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"`-arch` specifier is invalid or missing for universal binary\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZTVN4llvm14InstrProfErrorE = external unnamed_addr constant { [10 x ptr] }, align 8
@.str.25 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"llvm.coveragemap\00", align 1

@_ZN4llvm8coverage4mcdc12TVIdxBuilderC1ERKNS_15SmallVectorImplISt5arrayIsLm2EEEEi = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm8coverage4mcdc12TVIdxBuilderC2ERKNS_15SmallVectorImplISt5arrayIsLm2EEEEi
@_ZN4llvm8coverage17LineCoverageStatsC1ENS_8ArrayRefIPKNS0_15CoverageSegmentEEES5_j = unnamed_addr alias void (ptr, ptr, i64, ptr, i32), ptr @_ZN4llvm8coverage17LineCoverageStatsC2ENS_8ArrayRefIPKNS0_15CoverageSegmentEEES5_j

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 2, -4294967293) i64 @_ZN4llvm8coverage24CounterExpressionBuilder3getERKNS0_17CounterExpressionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 20
  store i64 %i.i, ptr %i.a, align 8, !tbaa !49
  %i.j = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8coverage17CounterExpressionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JmEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !463 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.j, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.k = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.k, label %bb.b, label %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE9push_backERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !46   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !56
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store ptr %i.p, ptr %i.c, align 8, !tbaa !46
  br label %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !47     ; 5 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.e, label %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #32
  unreachable

_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.v = sdiv exact i64 %i.t, 20                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = call i64 @llvm.umin.i64(i64 %i.w, i64 461168601842738790)
  %i.z = select i1 %i.x, i64 461168601842738790, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = mul nuw nsw i64 %i.z, 20
  %i.ab = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #33 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ac, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !56
  %.not10.i.i.i.i.i = icmp eq ptr %i.q, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.q, %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !56, !alias.scope !464
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 20 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 20
  %.not.i23.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ai) #34
  br label %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !47
  store ptr %i.af, ptr %i.c, align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw [20 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.aj, ptr %i.m, align 8, !tbaa !50
  br label %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.j, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !61
  %.sroa.2.0.insert.ext.i = zext i32 %i.al to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, 2
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8coverage24CounterExpressionBuilder12extractTermsENS0_7CounterEiRNS_15SmallVectorImplINS1_4TermEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.e, %bb.a
  %.tr9 = phi i64 [ %1, %bb.a ], [ %.sroa.0.0.copyload, %bb.e ] ; 2 uses
  %.tr10 = phi i32 [ %2, %bb.a ], [ %i.t, %bb.e ] ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.tr9 to i32
  %.sroa.2.0.extract.shift = lshr i64 %.tr9, 32   ; 2 uses
  switch i32 %.sroa.0.0.extract.trunc, label %.loopexit [
    i32 2, label %bb.e
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %tailrecurse
  store i32 %.tr10, ptr %i.a, align 4, !tbaa !55
  %.sroa.2.0.extract.trunc.le = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i32 %.sroa.2.0.extract.trunc.le, ptr %i.b, align 4, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  %i.g = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8coverage24CounterExpressionBuilder4TermELb1EE18growAndEmplaceBackIJjRiEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8coverage24CounterExpressionBuilder4TermEE12emplace_backIJjRiEEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %i.d to i64
  %i.i = load ptr, ptr %3, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h ; 2 uses
  store i32 %.sroa.2.0.extract.trunc.le, ptr %i.j, align 4, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %.tr10, ptr %i.k, align 4, !tbaa !69
  %i.l = add nuw i32 %i.d, 1
  store i32 %i.l, ptr %i.c, align 8, !tbaa !63
  br label %_ZN4llvm15SmallVectorImplINS_8coverage24CounterExpressionBuilder4TermEE12emplace_backIJjRiEEERS3_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8coverage24CounterExpressionBuilder4TermEE12emplace_backIJjRiEEERS3_DpOT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %.loopexit

bb.e:                                             ; preds = %tailrecurse
  %i.m = load ptr, ptr %0, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %.sroa.2.0.extract.shift ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.01.0.copyload = load i64, ptr %i.o, align 4
  tail call void @_ZN4llvm8coverage24CounterExpressionBuilder12extractTermsENS0_7CounterEiRNS_15SmallVectorImplINS1_4TermEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %.sroa.01.0.copyload, i32 noundef %.tr10, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.0.0.copyload = load i64, ptr %i.p, align 4
  %i.q = load i32, ptr %i.n, align 4, !tbaa !70
  %i.r = icmp eq i32 %i.q, 0
  %i.s = sub nsw i32 0, %.tr10
  %i.t = select i1 %i.r, i32 %i.s, i32 %.tr10
  br label %tailrecurse

.loopexit:                                        ; preds = %tailrecurse, %_ZN4llvm15SmallVectorImplINS_8coverage24CounterExpressionBuilder4TermEE12emplace_backIJjRiEEERS3_DpOT_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, -4294967293) i64 @_ZN4llvm8coverage24CounterExpressionBuilder8simplifyENS0_7CounterE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.703", align 4   ; 8 uses
  %3 = alloca %"struct.std::array.703", align 4   ; 8 uses
  %4 = alloca %"struct.std::array.703", align 4   ; 8 uses
  %5 = alloca %"struct.std::array.703", align 4   ; 8 uses
  %6 = alloca %"class.llvm::SmallVector", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 32, ptr %i.c, align 4, !tbaa !64
  call void @_ZN4llvm8coverage24CounterExpressionBuilder12extractTermsENS0_7CounterEiRNS_15SmallVectorImplINS1_4TermEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.d = load i32, ptr %i.b, align 8, !tbaa !63   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  %.pre308 = load ptr, ptr %6, align 8, !tbaa !66 ; 22 uses
  br i1 %i.e, label %.loopexit245, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.d to i64                     ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.f, 3               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pre308, i64 %.idx.i ; 3 uses
  %i.h = ptrtoint ptr %.pre308 to i64
  %i.i = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  call fastcc void @"_ZSt16__introsort_loopIPN4llvm8coverage24CounterExpressionBuilder4TermElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_SB_T0_T1_"(ptr noundef %.pre308, ptr noundef nonnull %i.g, i64 noundef %i.k)
  %i.l = icmp ugt i32 %i.d, 16
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.pre308, i64 8 ; 2 uses
  br i1 %i.l, label %.preheader.i.i.i, label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.b, %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i
  %.019.i.idx.i.i.i.i.i = phi i64 [ %.019.i.add.i.i.i.i.i, %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i ], [ 8, %bb.b ] ; 4 uses
  %.pn18.i.i.i.i.i.i = phi ptr [ %.019.i.ptr.i.i.i.i.i, %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i ], [ %.pre308, %bb.b ] ; 3 uses
  %.019.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre308, i64 %.019.i.idx.i.i.i.i.i ; 5 uses
  %.0.val.i.i.i.i.i.i = load i32, ptr %.019.i.ptr.i.i.i.i.i, align 4, !tbaa !68
  %.val.i.i.i.i.i.i = load i32, ptr %.pre308, align 4, !tbaa !68
  %i.m = icmp ult i32 %.0.val.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.n = load i64, ptr %.019.i.ptr.i.i.i.i.i, align 4 ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.o = icmp samesign ugt i64 %.019.i.idx.i.i.i.i.i, 8
  br i1 %i.o, label %bb.d, label %bb.e, !prof !65

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.pre308, i64 %.019.i.idx.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i, i64 8
  %i.q = load i64, ptr %.pre308, align 4
  store i64 %i.q, ptr %i.p, align 4
  br label %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.preheader.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %i.n to i32 ; 2 uses
  %.0.val11.i.i.i.i.i.i.i = load i32, ptr %.pn18.i.i.i.i.i.i, align 4, !tbaa !68
  %i.r = icmp ugt i32 %.0.val11.i.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.pn18.i.i.i.i.i.i, %bb.f ] ; 4 uses
  %.0912.i.i.i.i.i.i.i = phi ptr [ %.013.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.019.i.ptr.i.i.i.i.i, %bb.f ]
  %i.s = load i64, ptr %.013.i.i.i.i.i.i.i, align 4
  store i64 %i.s, ptr %.0912.i.i.i.i.i.i.i, align 4
  %.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.013.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.i.i, align 4, !tbaa !68
  %i.t = icmp ugt i32 %.0.val.i.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i, !llvm.loop !465

_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i.i.i.i.i.i = phi ptr [ %.pre308, %bb.e ], [ %.pre308, %bb.d ], [ %.019.i.ptr.i.i.i.i.i, %bb.f ], [ %.013.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  store i64 %i.n, ptr %.sink.i.i.i.i.i.i, align 4
  %.019.i.add.i.i.i.i.i = add nuw nsw i64 %.019.i.idx.i.i.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.019.i.add.i.i.i.i.i, 128
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt16__insertion_sortIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_SB_T0_.exit.i.i.i.i.i", label %.preheader.i.i.i, !llvm.loop !466

"_ZSt16__insertion_sortIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_SB_T0_.exit.i.i.i.i.i": ; preds = %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.pre308, i64 128 ; 4 uses
  %i.v = add nsw i64 %.idx.i, -136                ; 2 uses
  %i.w = and i64 %i.v, 8
  %lcmp.mod.not.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %"_ZSt16__insertion_sortIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_SB_T0_.exit.i.i.i.i.i"
  %i.x = load i64, ptr %i.u, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc.i.i13.i.i.i.i.i.prol = trunc i64 %i.x to i32 ; 2 uses
  %.010.i.i.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.pre308, i64 120 ; 2 uses
  %.0.val11.i.i14.i.i.i.i.i.prol = load i32, ptr %.010.i.i.i.i.i.i.i.prol, align 4, !tbaa !68
  %i.y = icmp ugt i32 %.0.val11.i.i14.i.i.i.i.i.prol, %.sroa.0.0.extract.trunc.i.i13.i.i.i.i.i.prol
  br i1 %i.y, label %.lr.ph.i.i16.i.i.i.i.i.prol, label %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.prol"

.lr.ph.i.i16.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i16.i.i.i.i.i.prol
  %.013.i.i17.i.i.i.i.i.prol = phi ptr [ %.0.i.i19.i.i.i.i.i.prol, %.lr.ph.i.i16.i.i.i.i.i.prol ], [ %.010.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ] ; 4 uses
  %.0912.i.i18.i.i.i.i.i.prol = phi ptr [ %.013.i.i17.i.i.i.i.i.prol, %.lr.ph.i.i16.i.i.i.i.i.prol ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.z = load i64, ptr %.013.i.i17.i.i.i.i.i.prol, align 4
  store i64 %i.z, ptr %.0912.i.i18.i.i.i.i.i.prol, align 4
  %.0.i.i19.i.i.i.i.i.prol = getelementptr inbounds i8, ptr %.013.i.i17.i.i.i.i.i.prol, i64 -8 ; 2 uses
  %.0.val.i.i20.i.i.i.i.i.prol = load i32, ptr %.0.i.i19.i.i.i.i.i.prol, align 4, !tbaa !68
  %i.aa = icmp ugt i32 %.0.val.i.i20.i.i.i.i.i.prol, %.sroa.0.0.extract.trunc.i.i13.i.i.i.i.i.prol
  br i1 %i.aa, label %.lr.ph.i.i16.i.i.i.i.i.prol, label %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.prol", !llvm.loop !465

"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.prol": ; preds = %.lr.ph.i.i16.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol
  %.09.lcssa.i.i.i.i.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ], [ %.013.i.i17.i.i.i.i.i.prol, %.lr.ph.i.i16.i.i.i.i.i.prol ]
  store i64 %i.x, ptr %.09.lcssa.i.i.i.i.i.i.i.prol, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre308, i64 136
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.prol", %"_ZSt16__insertion_sortIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_SB_T0_.exit.i.i.i.i.i"
  %.07.i.i.i.i.i.i.unr = phi ptr [ %i.u, %"_ZSt16__insertion_sortIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_SB_T0_.exit.i.i.i.i.i" ], [ %i.ab, %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.prol" ]
  %i.ac = icmp eq i64 %i.v, 0
  br i1 %i.ac, label %"_ZN4llvm4sortIRNS_11SmallVectorINS_8coverage24CounterExpressionBuilder4TermELj32EEEZNS3_8simplifyENS2_7CounterEE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.1"
  %.07.i.i.i.i.i.i = phi ptr [ %i.am, %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.1" ], [ %.07.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ad = load i64, ptr %.07.i.i.i.i.i.i, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i13.i.i.i.i.i = trunc i64 %i.ad to i32 ; 2 uses
  %.010.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val11.i.i14.i.i.i.i.i = load i32, ptr %.010.i.i.i.i.i.i.i, align 4, !tbaa !68
  %i.ae = icmp ugt i32 %.0.val11.i.i14.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i13.i.i.i.i.i
  br i1 %i.ae, label %.lr.ph.i.i16.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i16.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i16.i.i.i.i.i
  %.013.i.i17.i.i.i.i.i = phi ptr [ %.0.i.i19.i.i.i.i.i, %.lr.ph.i.i16.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %.0912.i.i18.i.i.i.i.i = phi ptr [ %.013.i.i17.i.i.i.i.i, %.lr.ph.i.i16.i.i.i.i.i ], [ %.07.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.af = load i64, ptr %.013.i.i17.i.i.i.i.i, align 4
  store i64 %i.af, ptr %.0912.i.i18.i.i.i.i.i, align 4
  %.0.i.i19.i.i.i.i.i = getelementptr inbounds i8, ptr %.013.i.i17.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.i20.i.i.i.i.i = load i32, ptr %.0.i.i19.i.i.i.i.i, align 4, !tbaa !68
  %i.ag = icmp ugt i32 %.0.val.i.i20.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i13.i.i.i.i.i
  br i1 %i.ag, label %.lr.ph.i.i16.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !465

"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i16.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.lcssa.i.i.i.i.i.i.i = phi ptr [ %.07.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i17.i.i.i.i.i, %.lr.ph.i.i16.i.i.i.i.i ]
  store i64 %i.ad, ptr %.09.lcssa.i.i.i.i.i.i.i, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 8 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i.i13.i.i.i.i.i.1 = trunc i64 %i.ai to i32 ; 2 uses
  %.0.val11.i.i14.i.i.i.i.i.1 = load i32, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !68
  %i.aj = icmp ugt i32 %.0.val11.i.i14.i.i.i.i.i.1, %.sroa.0.0.extract.trunc.i.i13.i.i.i.i.i.1
  br i1 %i.aj, label %.lr.ph.i.i16.i.i.i.i.i.1, label %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.1"

.lr.ph.i.i16.i.i.i.i.i.1:                         ; preds = %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %.lr.ph.i.i16.i.i.i.i.i.1
  %.013.i.i17.i.i.i.i.i.1 = phi ptr [ %.0.i.i19.i.i.i.i.i.1, %.lr.ph.i.i16.i.i.i.i.i.1 ], [ %.07.i.i.i.i.i.i, %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i" ] ; 4 uses
  %.0912.i.i18.i.i.i.i.i.1 = phi ptr [ %.013.i.i17.i.i.i.i.i.1, %.lr.ph.i.i16.i.i.i.i.i.1 ], [ %i.ah, %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i" ]
  %i.ak = load i64, ptr %.013.i.i17.i.i.i.i.i.1, align 4
  store i64 %i.ak, ptr %.0912.i.i18.i.i.i.i.i.1, align 4
  %.0.i.i19.i.i.i.i.i.1 = getelementptr inbounds i8, ptr %.013.i.i17.i.i.i.i.i.1, i64 -8 ; 2 uses
  %.0.val.i.i20.i.i.i.i.i.1 = load i32, ptr %.0.i.i19.i.i.i.i.i.1, align 4, !tbaa !68
  %i.al = icmp ugt i32 %.0.val.i.i20.i.i.i.i.i.1, %.sroa.0.0.extract.trunc.i.i13.i.i.i.i.i.1
  br i1 %i.al, label %.lr.ph.i.i16.i.i.i.i.i.1, label %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.1", !llvm.loop !465

"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i.1": ; preds = %.lr.ph.i.i16.i.i.i.i.i.1, %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"
  %.09.lcssa.i.i.i.i.i.i.i.1 = phi ptr [ %i.ah, %"_ZSt25__unguarded_linear_insertIPN4llvm8coverage24CounterExpressionBuilder4TermEN9__gnu_cxx5__ops14_Val_comp_iterIZNS2_8simplifyENS1_7CounterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i" ], [ %.013.i.i17.i.i.i.i.i.1, %.lr.ph.i.i16.i.i.i.i.i.1 ]
  store i64 %i.ai, ptr %.09.lcssa.i.i.i.i.i.i.i.1, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i15.i.i.i.i.i.1 = icmp eq ptr %i.am, %i.g
  br i1 %.not.i15.i.i.i.i.i.1, label %"_ZN4llvm4sortIRNS_11SmallVectorINS_8coverage24CounterExpressionBuilder4TermELj32EEEZNS3_8simplifyENS2_7CounterEE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !467

bb.g:                                             ; preds = %bb.b
  %.not17.i.i.i.i.i.i = icmp eq i32 %i.d, 1
  br i1 %.not17.i.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorINS_8coverage24CounterExpressionBuilder4TermELj32EEEZNS3_8simplifyENS2_7CounterEE3$_0EEvOT_T0_.exit", label %.lr.ph.i22.i.i.i.i.i

.lr.ph.i22.i.i.i.i.i:                             ; preds = %bb.g, %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i29.i.i.i.i.i
  %.019.i23.i.i.i.i.i = phi ptr [ %.0.i31.i.i.i.i.i, %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i29.i.i.i.i.i ], [ %scevgep.i.i.i.i.i, %bb.g ] ; 7 uses
  %.pn18.i24.i.i.i.i.i = phi ptr [ %.019.i23.i.i.i.i.i, %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i29.i.i.i.i.i ], [ %.pre308, %bb.g ] ; 4 uses
  %.0.val.i25.i.i.i.i.i = load i32, ptr %.019.i23.i.i.i.i.i, align 4, !tbaa !68
  %.val.i26.i.i.i.i.i = load i32, ptr %.pre308, align 4, !tbaa !68
  %i.an = icmp ult i32 %.0.val.i25.i.i.i.i.i, %.val.i26.i.i.i.i.i
  %i.ao = load i64, ptr %.019.i23.i.i.i.i.i, align 4 ; 2 uses
  br i1 %i.an, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i22.i.i.i.i.i
  %i.ap = ptrtoint ptr %.019.i23.i.i.i.i.i to i64
  %i.aq = sub i64 %i.ap, %i.h                     ; 3 uses
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.i, label %bb.j, !prof !65

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.pn18.i24.i.i.i.i.i, i64 16
  %i.au = sub nsw i64 0, %i.ar
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.av, ptr noundef nonnull align 4 dereferenceable(1) %.pre308, i64 %i.aq, i1 false)
  br label %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i29.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aw = icmp eq i64 %i.aq, 8
  br i1 %i.aw, label %bb.k, label %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i29.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn18.i24.i.i.i.i.i, i64 8
  %i.ay = load i64, ptr %.pre308, align 4
  store i64 %i.ay, ptr %i.ax, align 4
  br label %_ZSt13move_backwardIPN4llvm8coverage24CounterExpressionBuilder4TermES4_ET0_T_S6_S5_.exit.i29.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i22.i.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i27.i.i.i.i.i = trunc i64 %i.ao to i32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm8coverage24CounterExpressionBuilder8simplifyENS0_7CounterE:bb.a
  %i.mc = xor i32 %i.mb, -313160499
  %.024.i92 = and i32 %i.mc, %i.lz                ; 3 uses
  %i.md = zext i32 %.024.i92 to i64               ; 2 uses
  %i.me = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %i.md ; 2 uses
  %i.mf = lshr i64 %i.md, 5
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !55, !noalias !508
  %i.mi = and i32 %.024.i92, 31
  %i.mj = lshr i32 %i.mh, %i.mi
  %i.mk = trunc i32 %i.mj to i1
  br i1 %i.mk, label %.lr.ph.i95, label %.loopexit, !prof !77

_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101.thread: ; preds = %.lr.ph.i95, %bb.ak, %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101
  %i.ml = add nuw i32 %.025.i96, 1
  %.0.i97 = and i32 %i.ml, %i.lz                  ; 3 uses
  %i.mm = zext i32 %.0.i97 to i64                 ; 2 uses
  %i.mn = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %i.mm ; 2 uses
  %i.mo = lshr i64 %i.mm, 5
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !55, !noalias !508
  %i.mr = and i32 %.0.i97, 31
  %i.ms = lshr i32 %i.mq, %i.mr
  %i.mt = trunc i32 %i.ms to i1
  br i1 %i.mt, label %.lr.ph.i95, label %.loopexit, !prof !78, !llvm.loop !1

.lr.ph.i95:                                       ; preds = %bb.aj, %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101.thread
  %i.mu = phi ptr [ %i.mn, %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101.thread ], [ %i.me, %bb.aj ] ; 6 uses
  %.025.i96 = phi i32 [ %.0.i97, %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101.thread ], [ %.024.i92, %bb.aj ]
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !70, !noalias !508
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %bb.ak, label %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101.thread, !prof !503

bb.ak:                                            ; preds = %.lr.ph.i95
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !79, !noalias !508
  %i.mz = icmp eq i32 %.sroa.0209.5282, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.nb = load i32, ptr %i.na, align 4, !noalias !508
  %i.nc = icmp eq i32 %.sroa.9.5281, %i.nb
  %i.nd = select i1 %i.mz, i1 %i.nc, i1 false
  br i1 %i.nd, label %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101, label %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101.thread, !prof !503

_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101: ; preds = %bb.ak
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mu, i64 12
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !79, !noalias !508
  %i.ng = icmp eq i32 %i.nf, 1
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.ni = load i32, ptr %i.nh, align 4, !noalias !508
  %i.nj = icmp eq i32 %.sroa.04.0.copyload, %i.ni
  %i.nk = select i1 %i.ng, i1 %i.nj, i1 false
  br i1 %i.nk, label %.loopexit, label %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101.thread, !prof !504

.loopexit:                                        ; preds = %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101.thread, %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101, %.loopexit.i79, %bb.aj
  %i.nl = phi ptr [ %.lcssa30.sink.i.ph.i80, %.loopexit.i79 ], [ %i.me, %bb.aj ], [ %i.mu, %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101 ], [ %i.mn, %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit101.thread ] ; 7 uses
  %i.nm = load ptr, ptr %i.dr, align 8, !tbaa !75, !noalias !508
  %i.nn = load ptr, ptr %i.dp, align 8, !tbaa !74, !noalias !508
  %i.no = ptrtoint ptr %i.nl to i64
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = sdiv exact i64 %i.nq, 24                ; 2 uses
  %i.ns = trunc i64 %i.nr to i32
  %i.nt = and i32 %i.ns, 31
  %i.nu = shl nuw i32 1, %i.nt
  %i.nv = lshr i64 %i.nr, 5
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.nv ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !55, !noalias !508
  %i.ny = or i32 %i.nu, %i.nx
  store i32 %i.ny, ptr %i.nw, align 4, !tbaa !55, !noalias !508
  %i.nz = load i32, ptr %i.dx, align 8, !tbaa !80, !noalias !508
  %i.oa = add i32 %i.nz, 1
  store i32 %i.oa, ptr %i.dx, align 8, !tbaa !80, !noalias !508
  store i32 0, ptr %i.nl, align 4, !tbaa !52, !noalias !508
  %.sroa.10.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %.sroa.10.sroa.10.0.insert.ext149 = zext i32 %.sroa.9.5281 to i64
  %.sroa.10.sroa.10.0.insert.shift150 = shl nuw i64 %.sroa.10.sroa.10.0.insert.ext149, 32
  %.sroa.10.sroa.0.0.insert.ext142 = zext nneg i32 %.sroa.0209.5282 to i64
  %.sroa.10.sroa.0.0.insert.insert144 = or disjoint i64 %.sroa.10.sroa.10.0.insert.shift150, %.sroa.10.sroa.0.0.insert.ext142 ; 3 uses
  store i64 %.sroa.10.sroa.0.0.insert.insert144, ptr %.sroa.10.0..sroa_idx109, align 4, !noalias !508
  %.sroa.19.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  store i64 %.sroa.0.0.insert.insert.i57, ptr %.sroa.19.0..sroa_idx122, align 4, !noalias !508
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nl, i64 20
  %i.oc = trunc i64 %i.jy to i32
  store i32 %i.oc, ptr %i.ob, align 4, !tbaa !55, !noalias !508
  %i.od = load ptr, ptr %i.dq, align 8, !tbaa !46 ; 7 uses
  %i.oe = load ptr, ptr %i.ec, align 8, !tbaa !50
  %.not.i.i63 = icmp eq ptr %i.od, %i.oe
  br i1 %.not.i.i63, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.loopexit
  store i32 0, ptr %i.od, align 4, !tbaa !52
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  store i64 %.sroa.10.sroa.0.0.insert.insert144, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.od, i64 12
  store i64 %.sroa.0.0.insert.insert.i57, ptr %.sroa.19.0..sroa_idx, align 4
  %i.of = load ptr, ptr %i.dq, align 8, !tbaa !46
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 20
  store ptr %i.og, ptr %i.dq, align 8, !tbaa !46
  br label %_ZN4llvm8coverage24CounterExpressionBuilder3getERKNS0_17CounterExpressionE.exit76

bb.am:                                            ; preds = %.loopexit
  %i.oh = load ptr, ptr %0, align 8, !tbaa !47    ; 5 uses
  %i.oi = ptrtoint ptr %i.od to i64
  %i.oj = ptrtoint ptr %i.oh to i64               ; 2 uses
  %i.ok = sub i64 %i.oi, %i.oj                    ; 3 uses
  %i.ol = icmp eq i64 %i.ok, 9223372036854775800
  br i1 %i.ol, label %bb.an, label %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i64

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #32
  unreachable

_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i64: ; preds = %bb.am
  %i.om = sdiv exact i64 %i.ok, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i65 = call i64 @llvm.umax.i64(i64 %i.om, i64 1)
  %i.on = add nsw i64 %.sroa.speculated.i.i.i.i65, %i.om ; 2 uses
  %i.oo = icmp ult i64 %i.on, %i.om
  %i.op = call i64 @llvm.umin.i64(i64 %i.on, i64 461168601842738790)
  %i.oq = select i1 %i.oo, i64 461168601842738790, i64 %i.op ; 3 uses
  %.not.i.i.i.i66 = icmp ne i64 %i.oq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i66)
  %i.or = mul nuw nsw i64 %i.oq, 20
  %i.os = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.or) #33 ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ok ; 3 uses
  store i32 0, ptr %i.ot, align 4, !tbaa !52
  %.sroa.10.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  store i64 %.sroa.10.sroa.0.0.insert.insert144, ptr %.sroa.10.0..sroa_idx107, align 4
  %.sroa.19.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.ot, i64 12
  store i64 %.sroa.0.0.insert.insert.i57, ptr %.sroa.19.0..sroa_idx120, align 4
  %.not10.i.i.i.i.i.i67 = icmp eq ptr %i.oh, %i.od
  br i1 %.not10.i.i.i.i.i.i67, label %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i72, label %.lr.ph.i.i.i.i.i.i68

.lr.ph.i.i.i.i.i.i68:                             ; preds = %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i64, %.lr.ph.i.i.i.i.i.i68
  %.012.i.i.i.i.i.i69 = phi ptr [ %i.ov, %.lr.ph.i.i.i.i.i.i68 ], [ %i.os, %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i64 ] ; 2 uses
  %.0911.i.i.i.i.i.i70 = phi ptr [ %i.ou, %.lr.ph.i.i.i.i.i.i68 ], [ %i.oh, %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i64 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i69, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i70, i64 20, i1 false), !tbaa.struct !56, !alias.scope !510
  %i.ou = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i70, i64 20 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i69, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i71 = icmp eq ptr %i.ou, %i.od
  br i1 %.not.i.i.i.i.i.i71, label %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i72, label %.lr.ph.i.i.i.i.i.i68, !llvm.loop !0

_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i72: ; preds = %.lr.ph.i.i.i.i.i.i68, %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i64
  %.0.lcssa.i.i.i.i.i.i73 = phi ptr [ %i.os, %_ZNKSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i64 ], [ %i.ov, %.lr.ph.i.i.i.i.i.i68 ]
  %i.ow = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i73, i64 20
  %.not.i23.i.i.i74 = icmp eq ptr %i.oh, null
  br i1 %.not.i23.i.i.i74, label %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i75, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i72
  %i.ox = load ptr, ptr %i.ec, align 8, !tbaa !50
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = sub i64 %i.oy, %i.oj
  call void @_ZdlPvm(ptr noundef nonnull %i.oh, i64 noundef %i.oz) #34
  br label %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i75

_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i75: ; preds = %bb.ao, %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i72
  store ptr %i.os, ptr %0, align 8, !tbaa !47
  store ptr %i.ow, ptr %i.dq, align 8, !tbaa !46
  %i.pa = getelementptr inbounds nuw [20 x i8], ptr %i.os, i64 %i.oq
  store ptr %i.pa, ptr %i.ec, align 8, !tbaa !50
  br label %_ZN4llvm8coverage24CounterExpressionBuilder3getERKNS0_17CounterExpressionE.exit76

_ZN4llvm8coverage24CounterExpressionBuilder3getERKNS0_17CounterExpressionE.exit76: ; preds = %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit99, %bb.al, %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i75
  %.sroa.0.0.i84242 = phi ptr [ %i.nl, %_ZNSt6vectorIN4llvm8coverage17CounterExpressionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i75 ], [ %i.nl, %bb.al ], [ %i.ky, %_ZN4llvm12DenseMapInfoINS_8coverage17CounterExpressionEvE7isEqualERKS2_S5_.exit99 ]
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i84242, i64 20
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !61 ; 2 uses
  %i.pd = add nuw nsw i32 %.042283, 1             ; 2 uses
  %exitcond304.not = icmp eq i32 %i.pd, %smax
  br i1 %exitcond304.not, label %.loopexit244, label %bb.ag, !llvm.loop !500

.loopexit244:                                     ; preds = %_ZN4llvm8coverage24CounterExpressionBuilder3getERKNS0_17CounterExpressionE.exit76, %bb.af
  %.sroa.9.6 = phi i32 [ %.sroa.9.4285, %bb.af ], [ %i.pc, %_ZN4llvm8coverage24CounterExpressionBuilder3getERKNS0_17CounterExpressionE.exit76 ] ; 2 uses
  %.sroa.0209.6 = phi i32 [ %.sroa.0209.4286, %bb.af ], [ 2, %_ZN4llvm8coverage24CounterExpressionBuilder3getERKNS0_17CounterExpressionE.exit76 ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.043287, i64 8 ; 2 uses
  %.not47 = icmp eq ptr %i.pe, %i.do
  br i1 %.not47, label %.loopexit245.loopexit, label %bb.af

.loopexit245.loopexit:                            ; preds = %.loopexit244
  %.pre307 = load ptr, ptr %6, align 8, !tbaa !66
  br label %.loopexit245

.loopexit245:                                     ; preds = %.loopexit245.loopexit, %._crit_edge, %bb.a
  %i.pf = phi ptr [ %.pre308, %bb.a ], [ %i.dm, %._crit_edge ], [ %.pre307, %.loopexit245.loopexit ] ; 2 uses
  %.sroa.9.7 = phi i32 [ 0, %bb.a ], [ %.sroa.9.0.lcssa, %._crit_edge ], [ %.sroa.9.6, %.loopexit245.loopexit ]
  %.sroa.0209.7 = phi i32 [ 0, %bb.a ], [ %.sroa.0209.0.lcssa, %._crit_edge ], [ %.sroa.0209.6, %.loopexit245.loopexit ]
  %i.pg = icmp eq ptr %i.pf, %i.a
  br i1 %i.pg, label %_ZN4llvm11SmallVectorINS_8coverage24CounterExpressionBuilder4TermELj32EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %.loopexit245
  call void @free(ptr noundef %i.pf) #31
  br label %_ZN4llvm11SmallVectorINS_8coverage24CounterExpressionBuilder4TermELj32EED2Ev.exit

_ZN4llvm11SmallVectorINS_8coverage24CounterExpressionBuilder4TermELj32EED2Ev.exit: ; preds = %.loopexit245, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %.sroa.9.0.insert.ext = zext i32 %.sroa.9.7 to i64
  %.sroa.9.0.insert.shift = shl nuw i64 %.sroa.9.0.insert.ext, 32
  %.sroa.0209.0.insert.ext = zext nneg i32 %.sroa.0209.7 to i64
  %.sroa.0209.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, %.sroa.0209.0.insert.ext
  ret i64 %.sroa.0209.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, -4294967293) i64 @_ZN4llvm8coverage24CounterExpressionBuilder3addENS0_7CounterES2_b(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::coverage::CounterExpression", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i32 1, ptr %4, align 4, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i64 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i64 %2, ptr %i.b, align 4
  %i.c = call i64 @_ZN4llvm8coverage24CounterExpressionBuilder3getERKNS0_17CounterExpressionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(20) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call i64 @_ZN4llvm8coverage24CounterExpressionBuilder8simplifyENS0_7CounterE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.06.0 = phi i64 [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  ret i64 %.sroa.06.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, -4294967293) i64 @_ZN4llvm8coverage24CounterExpressionBuilder8subtractENS0_7CounterES2_b(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::coverage::CounterExpression", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i32 0, ptr %4, align 4, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i64 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i64 %2, ptr %i.b, align 4
  %i.c = call i64 @_ZN4llvm8coverage24CounterExpressionBuilder3getERKNS0_17CounterExpressionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(20) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call i64 @_ZN4llvm8coverage24CounterExpressionBuilder8simplifyENS0_7CounterE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.06.0 = phi i64 [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  ret i64 %.sroa.06.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN4llvm8coverage24CounterExpressionBuilder5substENS0_7CounterERKSt3mapIS2_S2_St4lessIS2_ESaISt4pairIKS2_S2_EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::coverage::CounterExpression", align 4 ; 6 uses
  %4 = alloca %"struct.llvm::coverage::CounterExpression", align 4 ; 6 uses
  %.sroa.022.0.extract.trunc = trunc i64 %1 to i32 ; 5 uses
  %.sroa.7.0.extract.shift = lshr i64 %1, 32      ; 3 uses
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not11.i.i.i, label %_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread10.i.i.i
  %.013.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread10.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread10.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 36
  %i.f = load i32, ptr %i.d, align 4, !tbaa !54   ; 2 uses
  %i.g = icmp slt i32 %i.f, %.sroa.022.0.extract.trunc
  br i1 %i.g, label %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = icmp sgt i32 %i.f, %.sroa.022.0.extract.trunc
  br i1 %i.h, label %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread10.i.i.i, label %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.i.i.i

_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 4, !tbaa !55
  %i.j = icmp ult i32 %i.i, %.sroa.7.0.extract.trunc
  br i1 %i.j, label %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread10.i.i.i

_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread10.i.i.i

_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.i.i.i, %bb.b
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread.i.i.i ], [ %.013.i.i.i, %bb.b ], [ %.013.i.i.i, %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.i.i.i ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN4llvm8coverage7CounterESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !511

_ZNKSt8_Rb_treeIN4llvm8coverage7CounterESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.thread10.i.i.i
  %i.l = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.l, label %_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeIN4llvm8coverage7CounterESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.o = load i32, ptr %i.m, align 4, !tbaa !54   ; 2 uses
  %i.p = icmp sgt i32 %i.o, %.sroa.022.0.extract.trunc
  br i1 %i.p, label %_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp slt i32 %i.o, %.sroa.022.0.extract.trunc
  br i1 %i.q, label %_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit, label %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.i.i

_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.i.i: ; preds = %bb.d
  %i.r = load i32, ptr %i.n, align 4, !tbaa !55
  %.not = icmp ugt i32 %i.r, %.sroa.7.0.extract.trunc
  br i1 %.not, label %_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread, label %_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit

_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit: ; preds = %bb.d, %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %.sroa.017.0.copyload = load i64, ptr %i.s, align 4
  br label %bb.i

_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread: ; preds = %bb.c, %_ZNKSt4lessIN4llvm8coverage7CounterEEclERKS2_S5_.exit.i.i, %_ZNKSt8_Rb_treeIN4llvm8coverage7CounterESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.a
  %i.t = icmp eq i32 %.sroa.022.0.extract.trunc, 2
  br i1 %i.t, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread
  %i.u = load ptr, ptr %0, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %.sroa.7.0.extract.shift ; 3 uses
  %.sroa.012.0.copyload = load i32, ptr %i.v, align 4, !tbaa !52
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 4
  %i.w = tail call i64 @_ZN4llvm8coverage24CounterExpressionBuilder5substENS0_7CounterERKSt3mapIS2_S2_St4lessIS2_ESaISt4pairIKS2_S2_EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %.sroa.4.0.copyload, ptr noundef nonnull align 8 dereferenceable(48) %2) ; 2 uses
  %i.x = tail call i64 @_ZN4llvm8coverage24CounterExpressionBuilder5substENS0_7CounterERKSt3mapIS2_S2_St4lessIS2_ESaISt4pairIKS2_S2_EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(48) %2) ; 2 uses
  switch i32 %.sroa.012.0.copyload, label %bb.h [
    i32 1, label %bb.f
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i32 1, ptr %4, align 4, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i64 %i.w, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i64 %i.x, ptr %i.z, align 4
  %i.aa = call i64 @_ZN4llvm8coverage24CounterExpressionBuilder3getERKNS0_17CounterExpressionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(20) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i32 0, ptr %3, align 4, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i64 %i.w, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i64 %i.x, ptr %i.ac, align 4
  %i.ad = call i64 @_ZN4llvm8coverage24CounterExpressionBuilder3getERKNS0_17CounterExpressionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(20) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g
  %.sink42 = phi i64 [ %i.ad, %bb.g ], [ %i.aa, %bb.f ]
  %i.ae = call i64 @_ZN4llvm8coverage24CounterExpressionBuilder8simplifyENS0_7CounterE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %.sink42) ; 2 uses
  %.sroa.7.0.extract.shift29 = lshr i64 %i.ae, 32
  %i.af = and i64 %i.ae, 4294967295
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.e
  %.sroa.022.0 = phi i64 [ 2, %bb.e ], [ %i.af, %.sink.split ]
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.extract.shift, %bb.e ], [ %.sroa.7.0.extract.shift29, %.sink.split ]
  %.sroa.7.0.insert.shift34 = shl nuw i64 %.sroa.7.0, 32
  %.sroa.022.0.insert.insert28 = or disjoint i64 %.sroa.7.0.insert.shift34, %.sroa.022.0
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread, %_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit, %bb.h
  %.sroa.017.1 = phi i64 [ %.sroa.022.0.insert.insert28, %bb.h ], [ %.sroa.017.0.copyload, %_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ], [ %1, %_ZNKSt3mapIN4llvm8coverage7CounterES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread ]
  ret i64 %.sroa.017.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm8coverage21CounterMappingContext4dumpERKNS0_7CounterERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.481, align 1            ; 3 uses
  %6 = alloca %"class.llvm::Expected", align 8    ; 7 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !79
  switch i32 %i.a, label %_ZN4llvm11raw_ostreamlsEc.exit25 [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %.not.i = icmp ult ptr %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext 48) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.g, ptr %i.b, align 8, !tbaa !92
  store i8 48, ptr %i.c, align 1, !tbaa !94
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %.not.i17 = icmp ult ptr %i.i, %i.k
  br i1 %.not.i17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 noundef zeroext 35) #31
  br label %_ZN4llvm11raw_ostreamlsEc.exit19

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.m, ptr %i.h, align 8, !tbaa !92
  store i8 35, ptr %i.i, align 1, !tbaa !94
  br label %_ZN4llvm11raw_ostreamlsEc.exit19

_ZN4llvm11raw_ostreamlsEc.exit19:                 ; preds = %bb.f, %bb.g
end_hunk_1
