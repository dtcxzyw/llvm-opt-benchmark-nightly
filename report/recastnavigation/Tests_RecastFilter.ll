Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tests_RecastFilter?download=true
inline.NumInlined: 278
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL22CATCH2_INTERNAL_TEST_0v:bb.a

bb.y:                                             ; preds = %bb.x
  store ptr %.0178189, ptr %.sroa.7.0186, align 8, !tbaa !64
  br label %_ZNSt6vectorIP6rcSpanSaIS1_EE9push_backERKS1_.exit

bb.z:                                             ; preds = %bb.x
  %i.nw = ptrtoint ptr %.sroa.10.0187 to i64
  %i.nx = ptrtoint ptr %.sroa.0.0185 to i64
  %i.ny = sub i64 %i.nw, %i.nx                    ; 6 uses
  %i.nz = icmp eq i64 %i.ny, 9223372036854775800
  br i1 %i.nz, label %bb.aa, label %_ZNKSt6vectorIP6rcSpanSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #13
  unreachable

_ZNKSt6vectorIP6rcSpanSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.oa = ashr exact i64 %i.ny, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.oa, i64 1)
  %i.ob = add nsw i64 %.sroa.speculated.i.i.i, %i.oa ; 2 uses
  %i.oc = icmp ult i64 %i.ob, %i.oa
  %i.od = call i64 @llvm.umin.i64(i64 %i.ob, i64 1152921504606846975)
  %i.oe = select i1 %i.oc, i64 1152921504606846975, i64 %i.od ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.oe, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.of = shl nuw nsw i64 %i.oe, 3
  %i.og = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.of) #14 ; 4 uses
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 %i.ny ; 2 uses
  store ptr %.0178189, ptr %i.oh, align 8, !tbaa !64
  %i.oi = icmp sgt i64 %i.ny, 0
  br i1 %i.oi, label %bb.ab, label %_ZNSt6vectorIP6rcSpanSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ab:                                            ; preds = %_ZNKSt6vectorIP6rcSpanSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.og, ptr align 8 %.sroa.0.0185, i64 %i.ny, i1 false)
  br label %_ZNSt6vectorIP6rcSpanSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6rcSpanSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ab, %_ZNKSt6vectorIP6rcSpanSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0.0185, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6rcSpanSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIP6rcSpanSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0185, i64 noundef %i.ny) #15
  br label %_ZNSt6vectorIP6rcSpanSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6rcSpanSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIP6rcSpanSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.oe
  br label %_ZNSt6vectorIP6rcSpanSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6rcSpanSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.y, %_ZNSt6vectorIP6rcSpanSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.0.1 = phi ptr [ %i.og, %_ZNSt6vectorIP6rcSpanSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0.0185, %bb.y ] ; 13 uses
  %.pn = phi ptr [ %i.oh, %_ZNSt6vectorIP6rcSpanSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.7.0186, %bb.y ]
  %.sroa.10.1 = phi ptr [ %i.oj, %_ZNSt6vectorIP6rcSpanSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.10.0187, %bb.y ] ; 2 uses
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.ok = getelementptr inbounds nuw i8, ptr %.0178189, i64 8
  %i.ol = add nuw nsw i32 %.0122188, 1            ; 2 uses
  %exitcond191.not = icmp eq i32 %i.ol, 10
  br i1 %exitcond191.not, label %_ZNSt6vectorIP6rcSpanSaIS1_EED2Ev.exit, label %bb.x, !llvm.loop !1106

_ZNSt6vectorIP6rcSpanSaIS1_EED2Ev.exit:           ; preds = %_ZNSt6vectorIP6rcSpanSaIS1_EE9push_backERKS1_.exit
  %i.om = load ptr, ptr %.sroa.0.1, align 8, !tbaa !64
  call void @_Z6rcFreePv(ptr noundef %i.om) #12
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !64
  call void @_Z6rcFreePv(ptr noundef %i.oo) #12
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !64
  call void @_Z6rcFreePv(ptr noundef %i.oq) #12
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 24
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !64
  call void @_Z6rcFreePv(ptr noundef %i.os) #12
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 32
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !64
  call void @_Z6rcFreePv(ptr noundef %i.ou) #12
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 40
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !64
  call void @_Z6rcFreePv(ptr noundef %i.ow) #12
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 48
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !64
  call void @_Z6rcFreePv(ptr noundef %i.oy) #12
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 56
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !64
  call void @_Z6rcFreePv(ptr noundef %i.pa) #12
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 64
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !64
  call void @_Z6rcFreePv(ptr noundef %i.pc) #12
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 72
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !64
  call void @_Z6rcFreePv(ptr noundef %i.pe) #12
  %i.pf = ptrtoint ptr %.sroa.10.1 to i64
  %i.pg = ptrtoint ptr %.sroa.0.1 to i64
  %i.ph = sub i64 %i.pf, %i.pg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ph) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIP6rcSpanSaIS1_EED2Ev.exit, %bb.r
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %41) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #12
  call void @_ZN13rcHeightfieldD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN5Catch7AutoRegC1ENS_6Detail10unique_ptrINS_12ITestInvokerEEERKNS_14SourceLineInfoENS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 1 dereferenceable(1), ptr nofreeobj noundef align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL22CATCH2_INTERNAL_TEST_7v() #1 {
bb.a:
  %0 = alloca %class.rcContext, align 8           ; 6 uses
  %1 = alloca %struct.rcHeightfield, align 8      ; 18 uses
  %2 = alloca %"class.Catch::Section", align 8    ; 5 uses
  %3 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %4 = alloca %"class.Catch::StringRef", align 8  ; 3 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %5 = alloca %"class.Catch::AssertionHandler", align 8 ; 8 uses
  %6 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %7 = alloca %"class.Catch::BinaryExpr.2", align 8 ; 10 uses
  %8 = alloca %"class.Catch::AssertionHandler", align 8 ; 8 uses
  %9 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %10 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 10 uses
  %11 = alloca %"class.Catch::AssertionHandler", align 8 ; 8 uses
  %12 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %13 = alloca %"class.Catch::BinaryExpr", align 8 ; 10 uses
  %14 = alloca %"class.Catch::AssertionHandler", align 8 ; 8 uses
  %15 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %16 = alloca %"class.Catch::BinaryExpr.2", align 8 ; 10 uses
  %17 = alloca %"class.Catch::AssertionHandler", align 8 ; 8 uses
  %18 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %19 = alloca %"class.Catch::BinaryExpr", align 8 ; 10 uses
  %20 = alloca %"class.Catch::AssertionHandler", align 8 ; 8 uses
  %21 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %22 = alloca %"class.Catch::BinaryExpr", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV9rcContext, i64 16), ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.c, align 1, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @_ZN13rcHeightfieldC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #12
  store i32 10, ptr %1, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  store i32 10, ptr %i.d, align 4, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+01>, ptr %i.e, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <4 x float> <float 1.000000e+00, float 1.000000e+01, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !55
  %i.g = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 800, i32 noundef 0) #12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr @.str, ptr %3, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 205, ptr %i.j, align 8, !tbaa !61
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.25) #12
  %i.k = load ptr, ptr %4, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8
  call void @_ZN5Catch7SectionC1ERKNS_14SourceLineInfoENS_9StringRefEPKc(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.k, i64 %i.m, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.n = call noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(96) %2) #12
  br i1 %i.n, label %.preheader85, label %.loopexit

.preheader85:                                     ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = load i32, ptr %i.d, align 4              ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  %or.cond = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond, label %.preheader84, label %._crit_edge88

.preheader84:                                     ; preds = %.preheader85, %._crit_edge
  %i.s = phi i32 [ %i.bv, %._crit_edge ], [ %i.o, %.preheader85 ]
  %i.t = phi i32 [ %i.bw, %._crit_edge ], [ %i.q, %.preheader85 ] ; 2 uses
  %.05787 = phi i32 [ %i.bx, %._crit_edge ], [ 0, %.preheader85 ] ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge88:                                    ; preds = %._crit_edge, %.preheader85
  call void @_Z18rcFilterLedgeSpansP9rcContextiiR13rcHeightfield(ptr noundef nonnull %0, i32 noundef 10, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(64) %1) #12
  %i.v = load i32, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader83.lr.ph, label %.loopexit

.preheader83.lr.ph:                               ; preds = %._crit_edge88
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 9
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 59
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 9
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.2.0..sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 59
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 9
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.2.0..sroa_idx.i.i61 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 59
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 9
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 24
  %.sroa.2.0..sroa_idx.i.i65 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 59
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 9
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.sroa.2.0..sroa_idx.i.i67 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 59
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 9
  %i.bo = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.sroa.2.0..sroa_idx.i.i69 = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 59
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.bt = load i32, ptr %i.d, align 4, !tbaa !54  ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.preheader83, label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph, %.preheader84
  %i.bv = phi i32 [ %i.s, %.preheader84 ], [ %i.cc, %.lr.ph ] ; 2 uses
  %i.bw = phi i32 [ %i.t, %.preheader84 ], [ %i.ci, %.lr.ph ]
  %i.bx = add nuw nsw i32 %.05787, 1              ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.bv
  br i1 %i.by, label %.preheader84, label %._crit_edge88, !llvm.loop !1118

.lr.ph:                                           ; preds = %.preheader84, %.lr.ph
  %.05886 = phi i32 [ %i.ch, %.lr.ph ], [ 0, %.preheader84 ] ; 2 uses
  %i.bz = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 16, i32 noundef 0) #12 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !63
  store i32 67117056, ptr %i.bz, align 8
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.cc = load i32, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.cd = mul nsw i32 %i.cc, %.05886
  %i.ce = add nsw i32 %i.cd, %.05787
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cf
  store ptr %i.bz, ptr %i.cg, align 8, !tbaa !64
  %i.ch = add nuw nsw i32 %.05886, 1              ; 2 uses
  %i.ci = load i32, ptr %i.d, align 4, !tbaa !54  ; 2 uses
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge, !llvm.loop !1119

.preheader83:                                     ; preds = %.preheader83.lr.ph, %._crit_edge91
  %i.ck = phi i32 [ %i.cr, %._crit_edge91 ], [ %i.v, %.preheader83.lr.ph ]
  %i.cl = phi i32 [ %i.cs, %._crit_edge91 ], [ %i.bt, %.preheader83.lr.ph ] ; 2 uses
  %.05992 = phi i32 [ %i.ct, %._crit_edge91 ], [ 0, %.preheader83.lr.ph ] ; 4 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %.preheader83
  %i.cn = icmp eq i32 %.05992, 0
  %i.co = icmp eq i32 %.05992, 9
  %invariant.op = or i1 %i.cn, %i.co
  br label %bb.b

.preheader82:                                     ; preds = %._crit_edge91
  %i.cp = icmp sgt i32 %i.cr, 0
  %.pr = load i32, ptr %i.d, align 4              ; 2 uses
  %i.cq = icmp sgt i32 %.pr, 0
  %or.cond126 = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond126, label %.preheader, label %.loopexit

._crit_edge91.loopexit:                           ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit70
  %.pre = load i32, ptr %1, align 8, !tbaa !53
  br label %._crit_edge91

._crit_edge91:                                    ; preds = %._crit_edge91.loopexit, %.preheader83
  %i.cr = phi i32 [ %.pre, %._crit_edge91.loopexit ], [ %i.ck, %.preheader83 ] ; 4 uses
  %i.cs = phi i32 [ %i.fs, %._crit_edge91.loopexit ], [ %i.cl, %.preheader83 ]
  %i.ct = add nuw nsw i32 %.05992, 1              ; 2 uses
  %i.cu = icmp slt i32 %i.ct, %i.cr
  br i1 %i.cu, label %.preheader83, label %.preheader82, !llvm.loop !1120

bb.b:                                             ; preds = %.lr.ph90, %_ZN5Catch16AssertionHandlerD2Ev.exit70
  %.06089 = phi i32 [ 0, %.lr.ph90 ], [ %i.fr, %_ZN5Catch16AssertionHandlerD2Ev.exit70 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.cv = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.cw = load i32, ptr %1, align 8, !tbaa !53
  %i.cx = mul nsw i32 %i.cw, %.06089
  %i.cy = add nsw i32 %i.cx, %.05992
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !64
  store ptr %i.db, ptr %i.a, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr @.str, ptr %6, align 8, !tbaa !60
  store i64 228, ptr %i.x, align 8, !tbaa !61
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr nonnull @.str.9, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull @.str.26, i64 14, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !64, !noalias !1137
  %i.dd = icmp ne ptr %i.dc, null
  %i.de = zext i1 %i.dd to i8
  store i8 1, ptr %i.y, align 8, !tbaa !66, !alias.scope !1137
  store i8 %i.de, ptr %i.z, align 1, !tbaa !67, !alias.scope !1137
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIRP6rcSpanlEE, i64 16), ptr %7, align 8, !tbaa !41, !alias.scope !1137
  store ptr %i.a, ptr %i.aa, align 8, !tbaa !1074, !alias.scope !1137
  store ptr @.str.20, ptr %i.ab, align 8, !tbaa !71, !alias.scope !1137
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !72, !alias.scope !1137
  store i64 0, ptr %i.ac, align 8, !tbaa !1076, !alias.scope !1137
  call void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(10) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %5) #12
  %i.df = load i8, ptr %i.ad, align 1, !tbaa !79, !range !80, !noundef !81
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dh = load ptr, ptr %i.ae, align 8, !tbaa !82, !nonnull !81, !align !83 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 136
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull align 8 dereferenceable(72) %5) #12, !call_target !90, !inline_history !27
  br label %_ZN5Catch16AssertionHandlerD2Ev.exit

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.dl = icmp eq i32 %.06089, 0
  %or.cond3.reass = or i1 %i.dl, %invariant.op
  %i.dm = icmp eq i32 %.06089, 9
  %or.cond5 = or i1 %i.dm, %or.cond3.reass
  br i1 %or.cond5, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  store ptr @.str, ptr %9, align 8, !tbaa !60
  store i64 232, ptr %i.an, align 8, !tbaa !61
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr nonnull @.str.9, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull @.str.27, i64 26, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = lshr i32 %i.do, 26                      ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = zext i1 %i.dq to i8
  store i8 1, ptr %i.ao, align 8, !tbaa !66, !alias.scope !1138
  store i8 %i.dr, ptr %i.ap, align 1, !tbaa !67, !alias.scope !1138
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIjhEE, i64 16), ptr %10, align 8, !tbaa !41, !alias.scope !1138
  store i32 %i.dp, ptr %i.aq, align 4, !tbaa !1072, !alias.scope !1138
  store ptr @.str.19, ptr %i.ar, align 8, !tbaa !71, !alias.scope !1138
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i61, align 8, !tbaa !72, !alias.scope !1138
  store i8 0, ptr %i.as, align 8, !tbaa !1073, !alias.scope !1138
  call void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(10) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %8) #12
  %i.ds = load i8, ptr %i.at, align 1, !tbaa !79, !range !80, !noundef !81
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_ZN5Catch16AssertionHandlerD2Ev.exit62, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.du = load ptr, ptr %i.au, align 8, !tbaa !82, !nonnull !81, !align !83 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 136
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull align 8 dereferenceable(72) %8) #12, !call_target !90, !inline_history !27
  br label %_ZN5Catch16AssertionHandlerD2Ev.exit62

_ZN5Catch16AssertionHandlerD2Ev.exit62:           ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.h

bb.f:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  store ptr @.str, ptr %12, align 8, !tbaa !60
  store i64 236, ptr %i.af, align 8, !tbaa !61
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr nonnull @.str.9, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr nonnull @.str.28, i64 15, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = lshr i32 %i.dz, 26                      ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 1
  %i.ec = zext i1 %i.eb to i8
  store i8 1, ptr %i.ag, align 8, !tbaa !66, !alias.scope !1139
  store i8 %i.ec, ptr %i.ah, align 1, !tbaa !67, !alias.scope !1139
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIjiEE, i64 16), ptr %13, align 8, !tbaa !41, !alias.scope !1139
  store i32 %i.ea, ptr %i.ai, align 4, !tbaa !70, !alias.scope !1139
  store ptr @.str.19, ptr %i.aj, align 8, !tbaa !71, !alias.scope !1139
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i63, align 8, !tbaa !72, !alias.scope !1139
  store i32 1, ptr %i.ak, align 8, !tbaa !73, !alias.scope !1139
  call void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(10) %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %11) #12
  %i.ed = load i8, ptr %i.al, align 1, !tbaa !79, !range !80, !noundef !81
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN5Catch16AssertionHandlerD2Ev.exit64, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ef = load ptr, ptr %i.am, align 8, !tbaa !82, !nonnull !81, !align !83 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !41
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 136
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 8 dereferenceable(72) %11) #12, !call_target !90, !inline_history !27
  br label %_ZN5Catch16AssertionHandlerD2Ev.exit64

_ZN5Catch16AssertionHandlerD2Ev.exit64:           ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.h

bb.h:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit62, %_ZN5Catch16AssertionHandlerD2Ev.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  store ptr @.str, ptr %15, align 8, !tbaa !60
  store i64 239, ptr %i.av, align 8, !tbaa !61
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr nonnull @.str.9, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr nonnull @.str.29, i64 20, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !64, !noalias !1140
  %i.em = icmp eq ptr %i.el, null
  %i.en = zext i1 %i.em to i8
  store i8 1, ptr %i.aw, align 8, !tbaa !66, !alias.scope !1140
  store i8 %i.en, ptr %i.ax, align 1, !tbaa !67, !alias.scope !1140
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIRP6rcSpanlEE, i64 16), ptr %16, align 8, !tbaa !41, !alias.scope !1140
  store ptr %i.ek, ptr %i.ay, align 8, !tbaa !1074, !alias.scope !1140
  store ptr @.str.19, ptr %i.az, align 8, !tbaa !71, !alias.scope !1140
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i65, align 8, !tbaa !72, !alias.scope !1140
  store i64 0, ptr %i.ba, align 8, !tbaa !1076, !alias.scope !1140
  call void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(10) %16) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %14) #12
  %i.eo = load i8, ptr %i.bb, align 1, !tbaa !79, !range !80, !noundef !81
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %_ZN5Catch16AssertionHandlerD2Ev.exit66, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eq = load ptr, ptr %i.bc, align 8, !tbaa !82, !nonnull !81, !align !83 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !41
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 136
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull align 8 dereferenceable(72) %14) #12, !call_target !90, !inline_history !27
  br label %_ZN5Catch16AssertionHandlerD2Ev.exit66

_ZN5Catch16AssertionHandlerD2Ev.exit66:           ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  store ptr @.str, ptr %18, align 8, !tbaa !60
  store i64 240, ptr %i.bd, align 8, !tbaa !61
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr nonnull @.str.9, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr nonnull @.str.30, i64 15, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = and i32 %i.ev, 8191                     ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = zext i1 %i.ex to i8
  store i8 1, ptr %i.be, align 8, !tbaa !66, !alias.scope !1141
  store i8 %i.ey, ptr %i.bf, align 1, !tbaa !67, !alias.scope !1141
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIjiEE, i64 16), ptr %19, align 8, !tbaa !41, !alias.scope !1141
  store i32 %i.ew, ptr %i.bg, align 4, !tbaa !70, !alias.scope !1141
  store ptr @.str.19, ptr %i.bh, align 8, !tbaa !71, !alias.scope !1141
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i67, align 8, !tbaa !72, !alias.scope !1141
  store i32 0, ptr %i.bi, align 8, !tbaa !73, !alias.scope !1141
  call void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(10) %19) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  call void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %17) #12
  %i.ez = load i8, ptr %i.bj, align 1, !tbaa !79, !range !80, !noundef !81
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %_ZN5Catch16AssertionHandlerD2Ev.exit68, label %bb.j

bb.j:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit66
  %i.fb = load ptr, ptr %i.bk, align 8, !tbaa !82, !nonnull !81, !align !83 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !41
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 136
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef nonnull align 8 dereferenceable(72) %17) #12, !call_target !90, !inline_history !27
  br label %_ZN5Catch16AssertionHandlerD2Ev.exit68

_ZN5Catch16AssertionHandlerD2Ev.exit68:           ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit66, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #12
  store ptr @.str, ptr %21, align 8, !tbaa !60
  store i64 241, ptr %i.bl, align 8, !tbaa !61
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr nonnull @.str.9, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr nonnull @.str.31, i64 15, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #12
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = lshr i32 %i.fg, 13
  %i.fi = and i32 %i.fh, 8191                     ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 1
  %i.fk = zext i1 %i.fj to i8
  store i8 1, ptr %i.bm, align 8, !tbaa !66, !alias.scope !1142
  store i8 %i.fk, ptr %i.bn, align 1, !tbaa !67, !alias.scope !1142
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIjiEE, i64 16), ptr %22, align 8, !tbaa !41, !alias.scope !1142
  store i32 %i.fi, ptr %i.bo, align 4, !tbaa !70, !alias.scope !1142
  store ptr @.str.19, ptr %i.bp, align 8, !tbaa !71, !alias.scope !1142
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i69, align 8, !tbaa !72, !alias.scope !1142
  store i32 1, ptr %i.bq, align 8, !tbaa !73, !alias.scope !1142
  call void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull align 8 dereferenceable(10) %22) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  call void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %20) #12
  %i.fl = load i8, ptr %i.br, align 1, !tbaa !79, !range !80, !noundef !81
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %_ZN5Catch16AssertionHandlerD2Ev.exit70, label %bb.k

bb.k:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit68
  %i.fn = load ptr, ptr %i.bs, align 8, !tbaa !82, !nonnull !81, !align !83 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !41
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 136
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull align 8 dereferenceable(72) %20) #12, !call_target !90, !inline_history !27
  br label %_ZN5Catch16AssertionHandlerD2Ev.exit70

_ZN5Catch16AssertionHandlerD2Ev.exit70:           ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit68, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.fr = add nuw nsw i32 %.06089, 1              ; 2 uses
  %i.fs = load i32, ptr %i.d, align 4, !tbaa !54  ; 2 uses
  %i.ft = icmp slt i32 %i.fr, %i.fs
  br i1 %i.ft, label %bb.b, label %._crit_edge91.loopexit, !llvm.loop !1133

.preheader:                                       ; preds = %.preheader82, %._crit_edge95
  %i.fu = phi i32 [ %i.fx, %._crit_edge95 ], [ %i.cr, %.preheader82 ]
  %i.fv = phi i32 [ %i.fy, %._crit_edge95 ], [ %.pr, %.preheader82 ] ; 2 uses
  %.05696 = phi i32 [ %i.fz, %._crit_edge95 ], [ 0, %.preheader82 ] ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph94, label %._crit_edge95

._crit_edge95.loopexit:                           ; preds = %.lr.ph94
  %.pre100 = load i32, ptr %1, align 8, !tbaa !53
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge95.loopexit, %.preheader
  %i.fx = phi i32 [ %.pre100, %._crit_edge95.loopexit ], [ %i.fu, %.preheader ] ; 2 uses
  %i.fy = phi i32 [ %i.gj, %._crit_edge95.loopexit ], [ %i.fv, %.preheader ]
  %i.fz = add nuw nsw i32 %.05696, 1              ; 2 uses
  %i.ga = icmp slt i32 %i.fz, %i.fx
  br i1 %i.ga, label %.preheader, label %.loopexit, !llvm.loop !1134

.lr.ph94:                                         ; preds = %.preheader, %.lr.ph94
  %.093 = phi i32 [ %i.gi, %.lr.ph94 ], [ 0, %.preheader ] ; 2 uses
  %i.gb = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.gc = load i32, ptr %1, align 8, !tbaa !53
  %i.gd = mul nsw i32 %i.gc, %.093
  %i.ge = add nsw i32 %i.gd, %.05696
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !64
  call void @_Z6rcFreePv(ptr noundef %i.gh) #12
  %i.gi = add nuw nsw i32 %.093, 1                ; 2 uses
  %i.gj = load i32, ptr %i.d, align 4, !tbaa !54  ; 2 uses
  %i.gk = icmp slt i32 %i.gi, %i.gj
  br i1 %i.gk, label %.lr.ph94, label %._crit_edge95.loopexit, !llvm.loop !1135

.loopexit:                                        ; preds = %._crit_edge95, %.preheader83.lr.ph, %._crit_edge88, %.preheader82, %bb.a
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @_ZN13rcHeightfieldD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL23CATCH2_INTERNAL_TEST_10v() #1 {
bb.a:
  %0 = alloca %class.rcContext, align 8           ; 8 uses
  %1 = alloca %struct.rcHeightfield, align 8      ; 13 uses
  %2 = alloca %"class.Catch::Section", align 8    ; 5 uses
  %3 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %4 = alloca %"class.Catch::StringRef", align 8  ; 3 uses
  %5 = alloca %"class.Catch::AssertionHandler", align 8 ; 8 uses
  %6 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %7 = alloca %"class.Catch::BinaryExpr", align 8 ; 10 uses
  %8 = alloca %"class.Catch::Section", align 8    ; 5 uses
  %9 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %10 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %11 = alloca %"class.Catch::AssertionHandler", align 8 ; 8 uses
  %12 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %13 = alloca %"class.Catch::BinaryExpr", align 8 ; 10 uses
  %14 = alloca %"class.Catch::AssertionHandler", align 8 ; 8 uses
  %15 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %16 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 10 uses
  %17 = alloca %"class.Catch::Section", align 8   ; 5 uses
  %18 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %19 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %20 = alloca %"class.Catch::AssertionHandler", align 8 ; 8 uses
  %21 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %22 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 10 uses
  %23 = alloca %"class.Catch::AssertionHandler", align 8 ; 8 uses
  %24 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %25 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV9rcContext, i64 16), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.b, align 1, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @_ZN13rcHeightfieldC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #12
  store i32 1, ptr %1, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.d, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <4 x float> splat (float 1.000000e+00), ptr %i.e, align 8, !tbaa !55
  %i.f = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 8, i32 noundef 0) #12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr @.str, ptr %3, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 276, ptr %i.i, align 8, !tbaa !61
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.32) #12
  %i.j = load ptr, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8
  call void @_ZN5Catch7SectionC1ERKNS_14SourceLineInfoENS_9StringRefEPKc(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.j, i64 %i.l, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.m = call noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(96) %2) #12
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 16, i32 noundef 0) #12 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !63
  store i32 67117056, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr %i.n, ptr %i.p, align 8, !tbaa !64
  call void @_Z30rcFilterWalkableLowHeightSpansP9rcContextiR13rcHeightfield(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(64) %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr @.str, ptr %6, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 287, ptr %i.q, align 8, !tbaa !61
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr nonnull @.str.9, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull @.str.10, i64 31, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = load i32, ptr %i.s, align 8
  %i.u = lshr i32 %i.t, 26                        ; 2 uses
  %i.v = icmp eq i32 %i.u, 1
  %i.w = zext i1 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 1, ptr %i.x, align 8, !tbaa !66, !alias.scope !1153
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 %i.w, ptr %i.y, align 1, !tbaa !67, !alias.scope !1153
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIjiEE, i64 16), ptr %7, align 8, !tbaa !41, !alias.scope !1153
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.u, ptr %i.z, align 4, !tbaa !70, !alias.scope !1153
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.19, ptr %i.aa, align 8, !tbaa !71, !alias.scope !1153
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !72, !alias.scope !1153
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 1, ptr %i.ab, align 8, !tbaa !73, !alias.scope !1153
  call void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(10) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %5) #12
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 59
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !79, !range !80, !noundef !81
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !82, !nonnull !81, !align !83 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %5) #12, !call_target !90, !inline_history !27
  br label %_ZN5Catch16AssertionHandlerD2Ev.exit

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @_Z6rcFreePv(ptr noundef nonnull %i.n) #12
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit, %bb.a
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  store ptr @.str, ptr %9, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 292, ptr %i.ak, align 8, !tbaa !61
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.33) #12
  %i.al = load ptr, ptr %10, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.an = load i64, ptr %i.am, align 8
  call void @_ZN5Catch7SectionC1ERKNS_14SourceLineInfoENS_9StringRefEPKc(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.al, i64 %i.an, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.ao = call noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(96) %8) #12
  br i1 %i.ao, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ap = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 16, i32 noundef 0) #12 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !63
  store i32 90122, ptr %i.ap, align 8
  %i.ar = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 16, i32 noundef 0) #12 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !63
  store i32 67117056, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !64
  call void @_Z30rcFilterWalkableLowHeightSpansP9rcContextiR13rcHeightfield(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(64) %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  store ptr @.str, ptr %12, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 309, ptr %i.au, align 8, !tbaa !61
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr nonnull @.str.9, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr nonnull @.str.10, i64 31, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = lshr i32 %i.ax, 26                      ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1
  %i.ba = zext i1 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 1, ptr %i.bb, align 8, !tbaa !66, !alias.scope !1154
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 9
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !67, !alias.scope !1154
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIjiEE, i64 16), ptr %13, align 8, !tbaa !41, !alias.scope !1154
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %i.ay, ptr %i.bd, align 4, !tbaa !70, !alias.scope !1154
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.19, ptr %i.be, align 8, !tbaa !71, !alias.scope !1154
  %.sroa.2.0..sroa_idx.i.i53 = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i53, align 8, !tbaa !72, !alias.scope !1154
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.bf, align 8, !tbaa !73, !alias.scope !1154
  call void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(10) %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %11) #12
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 59
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !79, !range !80, !noundef !81
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZN5Catch16AssertionHandlerD2Ev.exit54, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !82, !nonnull !81, !align !83 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull align 8 dereferenceable(72) %11) #12, !call_target !90, !inline_history !27
  br label %_ZN5Catch16AssertionHandlerD2Ev.exit54
end_hunk_0
