inline.NumInlined: 7403
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEC2ERKS4_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 40
  %i.h = icmp ugt i64 %i.g, 230584300921369395
  br i1 %i.h, label %.noexc.i, label %_ZNSt15__new_allocatorIN11OpenImageIO4v3_110ParamValueEE8allocateEmPKv.exit.i.i.i, !prof !288

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

_ZNSt15__new_allocatorIN11OpenImageIO4v3_110ParamValueEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN11OpenImageIO4v3_110ParamValueEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN11OpenImageIO4v3_110ParamValueEE8allocateEmPKv.exit.i.i.i ] ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !97
  %i.n = load ptr, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !408  ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.d ] ; 6 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.ap, %bb.d ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr null, ptr %.09.i.i.i.i, align 8, !tbaa !394
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.q, align 8, !tbaa !96
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.s, i8 0, i64 7, i1 false)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !411
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i7.i.i.i.i.i.i = load i64, ptr %i.t, align 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !412  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 36
  %i.x = load i8, ptr %i.w, align 4, !tbaa !414
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 38
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !415, !range !216, !noundef !217
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.ab, ptr %i.ad, ptr %i.ac
  %i.af = lshr i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %narrow.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 1)
  %i.ah = lshr i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, 8
  %i.ai = and i64 %i.ah, 255
  %i.aj = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.t) #32
  %i.ak = mul i64 %i.aj, %i.ai
  %i.al = trunc i64 %i.ak to i32
  %i.am = mul i32 %narrow.i.i.i.i.i.i.i.i.i, %i.v
  %i.an = mul i32 %i.am, %i.al
  %i.ao = sext i32 %i.an to i64
  store ptr %i.ae, ptr %2, align 8
  store i64 %i.ao, ptr %i.p, align 8
  tail call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %.09.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i7.i.i.i.i.i.i, i32 noundef %i.v, i32 noundef %i.y, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.50") align 8 %2, i8 1, i8 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %bb.d, !llvm.loop !417

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN11OpenImageIO4v3_110ParamValueESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.aq, %bb.d ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !86
  ret void
}

declare noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L5hfft_ERNS1_8ImageBufERKS4_bbS2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.kissfft, align 8             ; 17 uses
  %3 = alloca %"struct.kissfft_utils::traits", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211   ; 4 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !3 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !tbaa !3
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.43.0.copyload.i.i = load i32, ptr %.sroa.43.0..sroa_idx.i.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.54.0.copyload.i.i = load i32, ptr %.sroa.54.0..sroa_idx.i.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.65.0.copyload.i.i = load i32, ptr %.sroa.65.0..sroa_idx.i.i, align 4, !tbaa !3 ; 3 uses
  %i.a = sub nsw i32 %.sroa.2.0.copyload.i.i, %.sroa.02.0.copyload.i.i ; 5 uses
  %i.b = sitofp i32 %i.a to float
  %i.c = fdiv float 1.000000e+00, %i.b
  %i.d = tail call float @llvm.sqrt.f32(float %i.c) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.e = load ptr, ptr %.val, align 8, !tbaa !1039, !nonnull !217
  %i.f = load i8, ptr %i.e, align 1, !tbaa !196, !range !216, !noundef !217
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEEC2EibRKS2_(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %i.a, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !1041   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN13kissfft_utils6traitsIfED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1044
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #33
  br label %_ZN13kissfft_utils6traitsIfED2Ev.exit.i.i.i

_ZN13kissfft_utils6traitsIfED2Ev.exit.i.i.i:      ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.n = icmp slt i32 %.sroa.54.0.copyload.i.i, %.sroa.65.0.copyload.i.i
  br i1 %i.n, label %.lr.ph.i.i.i, label %._crit_edge34.split.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN13kissfft_utils6traitsIfED2Ev.exit.i.i.i
  %i.o = icmp slt i32 %.sroa.3.0.copyload.i.i, %.sroa.43.0.copyload.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 24
  br i1 %i.o, label %.lr.ph.split.i.i.i, label %._crit_edge34.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.s = icmp sgt i32 %i.a, 0
  br i1 %i.s, label %.lr.ph31.us.preheader.i.i.i, label %.lr.ph31.i.i.i

.lr.ph31.us.preheader.i.i.i:                      ; preds = %.lr.ph.split.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.a to i64 ; 3 uses
  %min.iters.check = icmp eq i32 %i.a, 1
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.d, i64 0
  %i.t = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %i.u = insertelement <2 x float> poison, float %i.d, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph31.us.i.i.i

.lr.ph31.us.i.i.i:                                ; preds = %._crit_edge.split.us.us.i.i.i, %.lr.ph31.us.preheader.i.i.i
  %.02332.us.i.i.i = phi i32 [ %i.ai, %._crit_edge.split.us.us.i.i.i ], [ %.sroa.54.0.copyload.i.i, %.lr.ph31.us.preheader.i.i.i ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %..loopexit_crit_edge.us.us.i.i.i, %.lr.ph31.us.i.i.i
  %.02230.us.us.i.i.i = phi i32 [ %.sroa.3.0.copyload.i.i, %.lr.ph31.us.i.i.i ], [ %4, %..loopexit_crit_edge.us.us.i.i.i ] ; 3 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !1045, !nonnull !217, !align !420
  %i.x = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf9pixeladdrEiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i32 noundef %.sroa.02.0.copyload.i.i, i32 noundef %.02230.us.us.i.i.i, i32 noundef %.02332.us.i.i.i, i32 noundef 0)
          to label %bb.e unwind label %.split.us.split.us.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !1046, !nonnull !217, !align !420
  %i.z = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf9pixeladdrEiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i32 noundef %.sroa.02.0.copyload.i.i, i32 noundef %.02230.us.us.i.i.i, i32 noundef %.02332.us.i.i.i, i32 noundef 0)
          to label %bb.f unwind label %.split.us.split.us.i.i.i ; 3 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE7kf_workEiPSt7complexIfEPKS5_mm(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 0, ptr noundef %i.z, ptr noundef %i.x, i64 noundef 1, i64 noundef 1)
          to label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE9transformEPKSt7complexIfEPS5_.exit.us.us.i.i.i unwind label %.split.us.split.us.i.i.i

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE9transformEPKSt7complexIfEPS5_.exit.us.us.i.i.i: ; preds = %bb.f
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !1047, !nonnull !217
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !196, !range !216, !noundef !217
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.preheader.us.us.i.i.i.preheader, label %..loopexit_crit_edge.us.us.i.i.i

.preheader.us.us.i.i.i.preheader:                 ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE9transformEPKSt7complexIfEPS5_.exit.us.us.i.i.i
  br i1 %min.iters.check, label %.preheader.us.us.i.i.i.preheader18, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.i.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.i.i.i.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.ad, align 4
  %interleaved.vec = fmul <4 x float> %i.t, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1048

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us.i.i.i, label %.preheader.us.us.i.i.i.preheader18

.preheader.us.us.i.i.i.preheader18:               ; preds = %.preheader.us.us.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.preheader.us.us.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.us.us.i.i.i

.preheader.us.us.i.i.i:                           ; preds = %.preheader.us.us.i.i.i.preheader18, %.preheader.us.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.preheader.us.us.i.i.i ], [ %indvars.iv.i.i.i.ph, %.preheader.us.us.i.i.i.preheader18 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ag = load <2 x float>, ptr %i.af, align 4
  %i.ah = fmul <2 x float> %i.v, %i.ag
  store <2 x float> %i.ah, ptr %i.af, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond41.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond41.not.i.i.i, label %..loopexit_crit_edge.us.us.i.i.i, label %.preheader.us.us.i.i.i, !llvm.loop !1049

..loopexit_crit_edge.us.us.i.i.i:                 ; preds = %.preheader.us.us.i.i.i, %middle.block, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE9transformEPKSt7complexIfEPS5_.exit.us.us.i.i.i
  %4 = add i32 %.02230.us.us.i.i.i, 1             ; 2 uses
  %exitcond42.not.i.i.i = icmp eq i32 %4, %.sroa.43.0.copyload.i.i
  br i1 %exitcond42.not.i.i.i, label %._crit_edge.split.us.us.i.i.i, label %bb.d, !llvm.loop !1050

._crit_edge.split.us.us.i.i.i:                    ; preds = %..loopexit_crit_edge.us.us.i.i.i
  %i.ai = add i32 %.02332.us.i.i.i, 1             ; 2 uses
  %exitcond43.not.i.i.i = icmp eq i32 %i.ai, %.sroa.65.0.copyload.i.i
  br i1 %exitcond43.not.i.i.i, label %._crit_edge34.split.i.i.i, label %.lr.ph31.us.i.i.i, !llvm.loop !1051

.split.us.split.us.i.i.i:                         ; preds = %bb.f, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

._crit_edge34.split.i.i.i:                        ; preds = %._crit_edge.split.i.i.i, %._crit_edge.split.us.us.i.i.i, %.lr.ph.i.i.i, %_ZN13kissfft_utils6traitsIfED2Ev.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1041 ; 3 uses
  %.not.i.i.i.i25.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i25.i.i.i, label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge34.split.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1044
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #33
  br label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.g, %._crit_edge34.split.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1041 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN13kissfft_utils6traitsIfED2Ev.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1044
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #33
  br label %_ZN13kissfft_utils6traitsIfED2Ev.exit.i.i.i.i

_ZN13kissfft_utils6traitsIfED2Ev.exit.i.i.i.i:    ; preds = %bb.h, %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1052 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN13kissfft_utils6traitsIfED2Ev.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1054
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i:            ; preds = %bb.i, %_ZN13kissfft_utils6traitsIfED2Ev.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1052 ; 3 uses
  %.not.i.i.i2.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i2.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit3.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1054
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3.i.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit3.i.i.i.i:           ; preds = %bb.j, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1041 ; 3 uses
  %.not.i.i.i4.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i4.i.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L5hfft_ERNS1_8ImageBufERKS2_bbNS1_3ROIEiE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1044
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #33
  br label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L5hfft_ERNS1_8ImageBufERKS2_bbNS1_3ROIEiE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.l:                                             ; preds = %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %3, align 8, !tbaa !1041  ; 3 uses
  %.not.i.i.i.i26.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i26.i.i.i, label %_ZN13kissfft_utils6traitsIfED2Ev.exit28.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1044
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #33
  br label %_ZN13kissfft_utils6traitsIfED2Ev.exit28.i.i.i

_ZN13kissfft_utils6traitsIfED2Ev.exit28.i.i.i:    ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.r

.lr.ph31.i.i.i:                                   ; preds = %.lr.ph.split.i.i.i, %._crit_edge.split.i.i.i
  %.02332.i.i.i = phi i32 [ %i.ca, %._crit_edge.split.i.i.i ], [ %.sroa.54.0.copyload.i.i, %.lr.ph.split.i.i.i ] ; 3 uses
  br label %bb.n

._crit_edge.split.i.i.i:                          ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE9transformEPKSt7complexIfEPS5_.exit.i.i.i
  %i.ca = add i32 %.02332.i.i.i, 1                ; 2 uses
  %exitcond39.not.i.i.i = icmp eq i32 %i.ca, %.sroa.65.0.copyload.i.i
  br i1 %exitcond39.not.i.i.i, label %._crit_edge34.split.i.i.i, label %.lr.ph31.i.i.i, !llvm.loop !1051

bb.n:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE9transformEPKSt7complexIfEPS5_.exit.i.i.i, %.lr.ph31.i.i.i
  %.02230.i.i.i = phi i32 [ %.sroa.3.0.copyload.i.i, %.lr.ph31.i.i.i ], [ %i.cf, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE9transformEPKSt7complexIfEPS5_.exit.i.i.i ] ; 3 uses
  %i.cb = load ptr, ptr %i.p, align 8, !tbaa !1045, !nonnull !217, !align !420
  %i.cc = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf9pixeladdrEiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i32 noundef %.sroa.02.0.copyload.i.i, i32 noundef %.02230.i.i.i, i32 noundef %.02332.i.i.i, i32 noundef 0)
          to label %bb.o unwind label %.split.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cd = load ptr, ptr %i.q, align 8, !tbaa !1046, !nonnull !217, !align !420
  %i.ce = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf9pixeladdrEiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i32 noundef %.sroa.02.0.copyload.i.i, i32 noundef %.02230.i.i.i, i32 noundef %.02332.i.i.i, i32 noundef 0)
          to label %bb.p unwind label %.split.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE7kf_workEiPSt7complexIfEPKS5_mm(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 0, ptr noundef %i.ce, ptr noundef %i.cc, i64 noundef 1, i64 noundef 1)
          to label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE9transformEPKSt7complexIfEPS5_.exit.i.i.i unwind label %.split.i.i.i

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE9transformEPKSt7complexIfEPS5_.exit.i.i.i: ; preds = %bb.p
  %i.cf = add i32 %.02230.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.cf, %.sroa.43.0.copyload.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.split.i.i.i, label %bb.n, !llvm.loop !1050

.split.i.i.i:                                     ; preds = %bb.p, %bb.o, %bb.n
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.split.i.i.i, %.split.us.split.us.i.i.i
  %.us-phi.i.i.i = phi { ptr, i32 } [ %i.cg, %.split.i.i.i ], [ %i.aj, %.split.us.split.us.i.i.i ]
  call void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN13kissfft_utils6traitsIfED2Ev.exit28.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %.us-phi.i.i.i, %bb.q ], [ %i.bt, %_ZN13kissfft_utils6traitsIfED2Ev.exit28.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.i.i.i

"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L5hfft_ERNS1_8ImageBufERKS2_bbNS1_3ROIEiE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L5hfft_ERNS1_8ImageBufERKS4_bbS2_iE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5hfft_ERNS2_8ImageBufERKS3_bbNS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11OpenImageIO4v3_1L5hfft_ERNS0_8ImageBufERKS1_bbNS0_3ROIEiE3$_0", ptr %0, align 8, !tbaa !424
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5hfft_ERNS2_8ImageBufERKS3_bbNS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %.val, ptr %0, align 8, !tbaa !211
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5hfft_ERNS2_8ImageBufERKS3_bbNS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !1055
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5hfft_ERNS2_8ImageBufERKS3_bbNS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5hfft_ERNS2_8ImageBufERKS3_bbNS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #33
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5hfft_ERNS2_8ImageBufERKS3_bbNS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5hfft_ERNS2_8ImageBufERKS3_bbNS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEEC2EibRKS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8
  store i32 %1, ptr %0, align 8, !tbaa !1056
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.a, ptr %i.b, align 4, !tbaa !1065
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1066 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !1041   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i, label %.noexc7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.m, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt7complexIfEE8allocateEmPKv.exit.i.i.i.i.i, !prof !288

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt7complexIfEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #34
          to label %.noexc7 unwind label %bb.d

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorISt7complexIfEE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.o = phi ptr [ null, %bb.a ], [ %i.n, %_ZNSt15__new_allocatorISt7complexIfEE8allocateEmPKv.exit.i.i.i.i.i ] ; 8 uses
  store ptr %i.o, ptr %i.f, align 8, !tbaa !1041
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1066
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1044
  %i.s = load ptr, ptr %3, align 8, !tbaa !1067   ; 5 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !1067 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc7
  %i.u = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %i.v = ptrtoaddr ptr %i.o to i64
  %i.w = ptrtoaddr ptr %i.t to i64
  %i.x = sub i64 %i.w, %i.u
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 72
  %i.ab = sub i64 %i.u, %i.v
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.o, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.af ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.s, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 4, !tbaa !96
  %wide.load21 = load <2 x i64>, ptr %i.ag, align 4, !tbaa !96
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !96
  store <2 x i64> %wide.load21, ptr %i.ah, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1068

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.i.preheader23:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader23 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader23 ] ; 2 uses
  %i.aj = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4, !tbaa !96
  store i64 %i.aj, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !96
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.t
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1069

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc7
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.o, %.noexc7 ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !1066
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  invoke void @_ZN13kissfft_utils6traitsIfE7prepareERSt6vectorISt7complexIfESaIS4_EEibRS2_IiSaIiEESA_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.loopexit
  ret void

bb.d:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIfEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13kissfft_utils6traitsIfED2Ev.exit

bb.e:                                             ; preds = %.loopexit
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !1041 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1044
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #33
  br label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN7kissfftIfN13kissfft_utils6traitsIfEEE15kf_bfly_genericEPSt7complexIfEmii:bb.a
  %i.ba = load float, ptr %i.ay, align 4          ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load float, ptr %i.bb, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i.us.us.us = extractelement <2 x float> %i.az, i64 0
  %.sroa.0.4.vec.extract.i.i.us.us.us = extractelement <2 x float> %i.az, i64 1
  %i.bd = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.be, %i.bf           ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.bi, %i.az           ; 2 uses
  %i.bk = fsub <2 x float> %i.bj, %i.bg           ; 2 uses
  %i.bl = fadd <2 x float> %i.bj, %i.bg           ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bn = extractelement <2 x float> %i.bk, i64 0
  %i.bo = fcmp uno float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.c, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, !prof !1086

bb.c:                                             ; preds = %bb.b
  %i.bp = extractelement <2 x float> %i.bl, i64 1
  %i.bq = fcmp uno float %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.d, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, !prof !1086

bb.d:                                             ; preds = %bb.c
  %i.br = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i.us.us.us, float noundef %.sroa.0.4.vec.extract.i.i.us.us.us, float noundef %i.ba, float noundef %i.bc) #32
  %i.bs = load <2 x float>, ptr %i.aj, align 4
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us: ; preds = %bb.d, %bb.c, %bb.b
  %i.bt = phi <2 x float> [ %i.bm, %bb.b ], [ %i.bm, %bb.c ], [ %i.br, %bb.d ]
  %i.bu = phi <2 x float> [ %i.as, %bb.b ], [ %i.as, %bb.c ], [ %i.bs, %bb.d ]
  %i.bv = fadd <2 x float> %i.bt, %i.bu           ; 2 uses
  store <2 x float> %i.bv, ptr %i.aj, align 4
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge.us.us.us, label %bb.b, !llvm.loop !1093

._crit_edge.us.us.us:                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, %i.i
  %i.bw = add nuw nsw i32 %.14358.us.us.us, 1     ; 2 uses
  %exitcond119.not = icmp eq i32 %i.bw, %4
  br i1 %exitcond119.not, label %._crit_edge61.split.us.us.us, label %.lr.ph57.us.us.us, !llvm.loop !1094

._crit_edge61.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next101, %i.i
  br i1 %exitcond122.not, label %._crit_edge, label %.lr.ph.us.us.preheader, !llvm.loop !1095

._crit_edge61.split.us66.us:                      ; preds = %._crit_edge61.split.us66.us, %._crit_edge61.split.us66.us.preheader.new
  %indvars.iv82 = phi i64 [ 0, %._crit_edge61.split.us66.us.preheader.new ], [ %indvars.iv.next83.1, %._crit_edge61.split.us66.us ] ; 4 uses
  %niter137 = phi i64 [ 0, %._crit_edge61.split.us66.us.preheader.new ], [ %niter137.next.1, %._crit_edge61.split.us66.us ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv82
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.bz = load i64, ptr %i.bx, align 4, !tbaa !96
  store i64 %i.bz, ptr %i.by, align 4, !tbaa !96
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv82
  %i.cc = load i64, ptr %i.ca, align 4, !tbaa !96
  store i64 %i.cc, ptr %i.cb, align 4, !tbaa !96
  %indvars.iv.next83 = or disjoint i64 %indvars.iv82, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next83
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.cf = load i64, ptr %i.cd, align 4, !tbaa !96
  store i64 %i.cf, ptr %i.ce, align 4, !tbaa !96
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next83
  %i.ci = load i64, ptr %i.cg, align 4, !tbaa !96
  store i64 %i.ci, ptr %i.ch, align 4, !tbaa !96
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %niter137.next.1 = add i64 %niter137, 2         ; 2 uses
  %niter137.ncmp.1 = icmp eq i64 %niter137.next.1, %unroll_iter136
  br i1 %niter137.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %._crit_edge61.split.us66.us, !llvm.loop !1095

._crit_edge.loopexit.unr-lcssa:                   ; preds = %._crit_edge61.split.us66.us
  %lcmp.mod134.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %._crit_edge61.split.us66.us.epil.preheader

._crit_edge61.split.us66.us.epil.preheader:       ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge61.split.us66.us.preheader
  %indvars.iv82.epil.init = phi i64 [ 0, %._crit_edge61.split.us66.us.preheader ], [ %indvars.iv.next83.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod135 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv82.epil.init
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.cl = load i64, ptr %i.cj, align 4, !tbaa !96
  store i64 %i.cl, ptr %i.ck, align 4, !tbaa !96
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv82.epil.init
  %i.co = load i64, ptr %i.cm, align 4, !tbaa !96
  store i64 %i.co, ptr %i.cn, align 4, !tbaa !96
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge61.split.us.us.us, %._crit_edge61.split.us66.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader52.lr.ph, %bb.a
  ret void
}

declare <2 x float> @__mulsc3(float, float, float, float) local_unnamed_addr

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39), ptr, i64, i32 noundef, ptr, i64, i8, i8) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15divide_by_alphaERNS1_8ImageBufES2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 51 uses
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !1096, !nonnull !217, !align !420
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27
  %.fr47.i.i.i = freeze i32 %i.d                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.g = load ptr, ptr %0, align 8, !tbaa !1096, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i1 noundef zeroext true)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  %i.p = sext i32 %i.f to i64
  %i.q = icmp sgt i32 %.fr47.i.i.i, 0
  br i1 %i.q, label %.split.us.preheader.i.i.i, label %.split.i.preheader.i.i

.split.i.preheader.i.i:                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %.split.i.i.i

.split.us.preheader.i.i.i:                        ; preds = %bb.a
  %wide.trip.count.i.i.i = zext nneg i32 %.fr47.i.i.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i.backedge, %.split.us.preheader.i.i.i
  %i.at = load i8, ptr %i.h, align 8, !tbaa !275, !range !216, !noundef !217
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.b:                                             ; preds = %.split.us.i.i.i
  %i.av = load i32, ptr %i.i, align 4, !tbaa !279
  %i.aw = load i32, ptr %i.j, align 4, !tbaa !281
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ay = load i32, ptr %i.k, align 8, !tbaa !280
  %i.az = load i32, ptr %i.l, align 4, !tbaa !300
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i: ; preds = %bb.c
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !282
  %i.bc = load i32, ptr %i.n, align 8, !tbaa !283
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %.split41.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i, %bb.c, %bb.b, %.split.us.i.i.i
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !289 ; 3 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.p
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !254 ; 2 uses
  %i.bh = fcmp une float %i.bg, 0.000000e+00
  br i1 %i.bh, label %.preheader.us.i.i.i, label %..loopexit_crit_edge.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %12
  %4 = phi ptr [ %13, %12 ], [ %i.be, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %12 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ] ; 3 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i.i.i
  %6 = load float, ptr %5, align 4, !tbaa !254
  %7 = fdiv float %6, %i.bg
  %8 = load ptr, ptr %2, align 8, !tbaa !287
  %9 = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc.us.i.i.i unwind label %.split43.us.i.i.i

.noexc.us.i.i.i:                                  ; preds = %.preheader.us.i.i.i
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %12, !prof !288

11:                                               ; preds = %.noexc.us.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %12 unwind label %.split43.us.i.i.i

12:                                               ; preds = %11, %.noexc.us.i.i.i
  %13 = load ptr, ptr %i.o, align 8, !tbaa !289   ; 3 uses
  %14 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv.i.i.i
  store float %7, ptr %14, align 4, !tbaa !254
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %..loopexit_crit_edge.us.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !1098

..loopexit_crit_edge.us.i.i.i:                    ; preds = %12, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i
  %i.bi = phi ptr [ %i.be, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ], [ %13, %12 ] ; 2 uses
  %i.bj = load i32, ptr %i.i, align 4, !tbaa !279
  %i.bk = add nsw i32 %i.bj, 1                    ; 7 uses
  store i32 %i.bk, ptr %i.i, align 4, !tbaa !279
  %i.bl = load i32, ptr %i.af, align 8, !tbaa !309
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.d, label %bb.k

bb.d:                                             ; preds = %..loopexit_crit_edge.us.i.i.i
  %i.bn = load i8, ptr %i.ah, align 1, !tbaa !310, !range !216, !noundef !217
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.e, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.d
  %.pre.i9.i.i = load i32, ptr %i.k, align 8, !tbaa !280
  %.pre21.i.i = load i32, ptr %i.m, align 4, !tbaa !282
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.bp = load i8, ptr %i.ai, align 1, !tbaa !311, !range !216, !noundef !217
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.br = load i64, ptr %i.ak, align 8, !tbaa !312
  %i.bs = getelementptr inbounds i8, ptr %i.bi, i64 %i.br
  store ptr %i.bs, ptr %i.o, align 8, !tbaa !289
  %i.bt = load i32, ptr %i.al, align 8, !tbaa !313
  %.not.i.i12.i.i = icmp slt i32 %i.bk, %i.bt
  br i1 %.not.i.i12.i.i, label %.split.us.i.i.i.backedge, label %bb.g, !prof !232

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %.split.us.i.i.i.backedge unwind label %.split45.us.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.bu = load i8, ptr %i.aj, align 2, !tbaa !314, !range !216, !noundef !217
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %.split.us.i.i.i.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = load i64, ptr %i.ak, align 8, !tbaa !312
  %i.bx = getelementptr inbounds i8, ptr %i.bi, i64 %i.bw
  store ptr %i.bx, ptr %i.o, align 8, !tbaa !289
  %i.by = load i32, ptr %i.al, align 8, !tbaa !313
  %i.bz = icmp slt i32 %i.bk, %i.by               ; 3 uses
  %i.ca = load i32, ptr %i.am, align 4
  %i.cb = icmp sge i32 %i.bk, %i.ca
  %not..i.i10.i.i = xor i1 %i.bz, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.cb, !prof !315
  %i.cc = load ptr, ptr %i.an, align 8
  %i.cd = icmp eq ptr %i.cc, null
  %i.ce = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.cd, !prof !315
  br i1 %i.ce, label %bb.j, label %.split.us.i.i.i.backedge, !prof !288

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %2, align 8, !tbaa !287
  %i.cg = load i32, ptr %i.k, align 8, !tbaa !280
  %i.ch = load i32, ptr %i.m, align 4, !tbaa !282
  %i.ci = load i32, ptr %i.as, align 8, !tbaa !316
  %i.cj = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i32 noundef %i.bk, i32 noundef %i.cg, i32 noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.bz, i32 noundef %i.ci)
          to label %.noexc14.i.i unwind label %.split45.us.i.i.i

.noexc14.i.i:                                     ; preds = %bb.j
  %i.ck = zext i1 %i.bz to i8
  store ptr %i.cj, ptr %i.o, align 8, !tbaa !289
  store i8 %i.ck, ptr %i.ah, align 1, !tbaa !310
  br label %.split.us.i.i.i.backedge

bb.k:                                             ; preds = %..loopexit_crit_edge.us.i.i.i
  %i.cl = load i32, ptr %i.j, align 4, !tbaa !281 ; 3 uses
  store i32 %i.cl, ptr %i.i, align 4, !tbaa !279
  %i.cm = load i32, ptr %i.k, align 8, !tbaa !280
  %i.cn = add nsw i32 %i.cm, 1                    ; 3 uses
  store i32 %i.cn, ptr %i.k, align 8, !tbaa !280
  %i.co = load i32, ptr %i.ag, align 8, !tbaa !317
  %.not.i5.i.i = icmp slt i32 %i.cn, %i.co
  %.pre22.i.i = load i32, ptr %i.m, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = load i32, ptr %i.l, align 4, !tbaa !300 ; 2 uses
  store i32 %i.cp, ptr %i.k, align 8, !tbaa !280
  %i.cq = add nsw i32 %.pre22.i.i, 1              ; 3 uses
  store i32 %i.cq, ptr %i.m, align 4, !tbaa !282
  %i.cr = load i32, ptr %i.n, align 8, !tbaa !283
  %.not1.i6.i.i = icmp slt i32 %i.cq, %i.cr
  br i1 %.not1.i6.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.h, align 8, !tbaa !275
  br label %.split.us.i.i.i.backedge

bb.n:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i7.i.i
  %i.cs = phi i32 [ %.pre22.i.i, %bb.k ], [ %i.cq, %bb.l ], [ %.pre21.i.i, %._crit_edge.i7.i.i ]
  %i.ct = phi i32 [ %i.cn, %bb.k ], [ %i.cp, %bb.l ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.cu = phi i32 [ %i.cl, %bb.k ], [ %i.cl, %bb.l ], [ %i.bk, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.cu, i32 noundef %i.ct, i32 noundef %i.cs)
          to label %.split.us.i.i.i.backedge unwind label %.split45.us.i.i.i

.split.us.i.i.i.backedge:                         ; preds = %bb.n, %bb.m, %.noexc14.i.i, %bb.i, %bb.h, %bb.g, %bb.f
  br label %.split.us.i.i.i

.split43.us.i.i.i:                                ; preds = %11, %.preheader.us.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.split45.us.i.i.i:                                ; preds = %bb.n, %bb.j, %bb.g
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.split.i.i.i:                                     ; preds = %.split.i.i.i.backedge, %.split.i.preheader.i.i
  %i.cx = load i8, ptr %i.h, align 8, !tbaa !275, !range !216, !noundef !217
  %i.cy = icmp eq i8 %i.cx, 0
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !279 ; 2 uses
  %i.cz = load i32, ptr %i.j, align 4             ; 4 uses
  %i.da = icmp eq i32 %.pre.i.i, %i.cz
  %or.cond.i.i = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %or.cond.i.i, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.o:                                             ; preds = %.split.i.i.i
  %i.db = load i32, ptr %i.k, align 8, !tbaa !280
  %i.dc = load i32, ptr %i.l, align 4, !tbaa !300
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.o
  %i.de = load i32, ptr %i.m, align 4, !tbaa !282
  %i.df = load i32, ptr %i.n, align 8, !tbaa !283
  %i.dg = icmp eq i32 %i.de, %i.df
  br i1 %i.dg, label %.split41.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

.split41.us.i.i.i:                                ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15divide_by_alphaERNS1_8ImageBufENS1_3ROIEiE3$_0JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %bb.p

bb.p:                                             ; preds = %.split41.us.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15divide_by_alphaERNS1_8ImageBufENS1_3ROIEiE3$_0JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit" unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #35
  unreachable

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.o, %.split.i.i.i
  %i.dl = add nsw i32 %.pre.i.i, 1                ; 7 uses
  store i32 %i.dl, ptr %i.i, align 4, !tbaa !279
  %i.dm = load i32, ptr %i.r, align 8, !tbaa !309
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.r, label %bb.y

bb.r:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.do = load i8, ptr %i.t, align 1, !tbaa !310, !range !216, !noundef !217
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.s, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.r
  %.pre.i.i.i = load i32, ptr %i.k, align 8, !tbaa !280
  %.pre19.i.i = load i32, ptr %i.m, align 4, !tbaa !282
  br label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.dq = load i8, ptr %i.u, align 1, !tbaa !311, !range !216, !noundef !217
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ds = load i64, ptr %i.w, align 8, !tbaa !312
  %i.dt = load ptr, ptr %i.o, align 8, !tbaa !289
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %i.ds
  store ptr %i.du, ptr %i.o, align 8, !tbaa !289
  %i.dv = load i32, ptr %i.x, align 8, !tbaa !313
  %.not.i.i2.i.i = icmp slt i32 %i.dl, %i.dv
  br i1 %.not.i.i2.i.i, label %.split.i.i.i.backedge, label %bb.u, !prof !232

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %.split.i.i.i.backedge unwind label %.split43.i.i.i

bb.v:                                             ; preds = %bb.s
  %i.dw = load i8, ptr %i.v, align 2, !tbaa !314, !range !216, !noundef !217
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %.split.i.i.i.backedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = load i64, ptr %i.w, align 8, !tbaa !312
  %i.dz = load ptr, ptr %i.o, align 8, !tbaa !289
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dy
  store ptr %i.ea, ptr %i.o, align 8, !tbaa !289
  %i.eb = load i32, ptr %i.x, align 8, !tbaa !313
  %i.ec = icmp slt i32 %i.dl, %i.eb               ; 3 uses
  %i.ed = load i32, ptr %i.y, align 4
  %i.ee = icmp sge i32 %i.dl, %i.ed
  %not..i.i.i.i = xor i1 %i.ec, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.ee, !prof !315
  %i.ef = load ptr, ptr %i.z, align 8
  %i.eg = icmp eq ptr %i.ef, null
  %i.eh = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.eg, !prof !315
  br i1 %i.eh, label %bb.x, label %.split.i.i.i.backedge, !prof !288

bb.x:                                             ; preds = %bb.w
  %i.ei = load ptr, ptr %2, align 8, !tbaa !287
  %i.ej = load i32, ptr %i.k, align 8, !tbaa !280
  %i.ek = load i32, ptr %i.m, align 4, !tbaa !282
  %i.el = load i32, ptr %i.ae, align 8, !tbaa !316
  %i.em = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i32 noundef %i.dl, i32 noundef %i.ej, i32 noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.y, ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i1 noundef zeroext %i.ec, i32 noundef %i.el)
          to label %.noexc3.i.i unwind label %.split43.i.i.i

.noexc3.i.i:                                      ; preds = %bb.x
  %i.en = zext i1 %i.ec to i8
  store ptr %i.em, ptr %i.o, align 8, !tbaa !289
  store i8 %i.en, ptr %i.t, align 1, !tbaa !310
  br label %.split.i.i.i.backedge

bb.y:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  store i32 %i.cz, ptr %i.i, align 4, !tbaa !279
  %i.eo = load i32, ptr %i.k, align 8, !tbaa !280
  %i.ep = add nsw i32 %i.eo, 1                    ; 3 uses
  store i32 %i.ep, ptr %i.k, align 8, !tbaa !280
  %i.eq = load i32, ptr %i.s, align 8, !tbaa !317
  %.not.i.i.i = icmp slt i32 %i.ep, %i.eq
  %.pre20.i.i = load i32, ptr %i.m, align 4, !tbaa !282 ; 2 uses
  br i1 %.not.i.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = load i32, ptr %i.l, align 4, !tbaa !300 ; 2 uses
  store i32 %i.er, ptr %i.k, align 8, !tbaa !280
  %i.es = add nsw i32 %.pre20.i.i, 1              ; 3 uses
  store i32 %i.es, ptr %i.m, align 4, !tbaa !282
  %i.et = load i32, ptr %i.n, align 8, !tbaa !283
  %.not1.i.i.i = icmp slt i32 %i.es, %i.et
  br i1 %.not1.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 0, ptr %i.h, align 8, !tbaa !275
  br label %.split.i.i.i.backedge

bb.ab:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i
  %i.eu = phi i32 [ %.pre20.i.i, %bb.y ], [ %i.es, %bb.z ], [ %.pre19.i.i, %._crit_edge.i.i.i ]
  %i.ev = phi i32 [ %i.ep, %bb.y ], [ %i.er, %bb.z ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.ew = phi i32 [ %i.cz, %bb.y ], [ %i.cz, %bb.z ], [ %i.dl, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ew, i32 noundef %i.ev, i32 noundef %i.eu)
          to label %.split.i.i.i.backedge unwind label %.split43.i.i.i

.split.i.i.i.backedge:                            ; preds = %bb.ab, %bb.aa, %.noexc3.i.i, %bb.w, %bb.v, %bb.u, %bb.t
  br label %.split.i.i.i

.split43.i.i.i:                                   ; preds = %bb.ab, %bb.x, %bb.u
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.split43.i.i.i, %.split45.us.i.i.i, %.split43.us.i.i.i
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.cv, %.split43.us.i.i.i ], [ %i.ex, %.split43.i.i.i ], [ %i.cw, %.split45.us.i.i.i ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn.pn.i.i.i

"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L15divide_by_alphaERNS1_8ImageBufENS1_3ROIEiE3$_0JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %.split41.us.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15divide_by_alphaERNS1_8ImageBufES2_iE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15divide_by_alphaERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11OpenImageIO4v3_1L15divide_by_alphaERNS0_8ImageBufENS0_3ROIEiE3$_0", ptr %0, align 8, !tbaa !424
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15divide_by_alphaERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !211
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15divide_by_alphaERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !137
  store i64 %.val.i, ptr %0, align 8, !tbaa !137
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15divide_by_alphaERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L15divide_by_alphaERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(32), i32 noundef, i1 noundef zeroext) unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo11perpixel_opERKNS1_8ImageBufENS1_13function_viewIFbNS1_4spanIfLm18446744073709551615EEENS9_IKfLm18446744073709551615EEEEEENS1_14ParamValueSpanEE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 31 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 31 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !211   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.e = load ptr, ptr %.val, align 8, !tbaa !1099, !nonnull !217, !align !420
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1101, !nonnull !217, !align !420
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.e

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.h = sub nsw i32 %i.b, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.r = sext i32 %i.h to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.bd = load i8, ptr %i.i, align 8, !tbaa !275, !range !216, !noundef !217
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bf = load i32, ptr %i.j, align 4, !tbaa !279
  %i.bg = load i32, ptr %i.k, align 4, !tbaa !281
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.bi = load i32, ptr %i.l, align 8, !tbaa !280
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !300
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bl = load i32, ptr %i.n, align 4, !tbaa !282
  %i.bm = load i32, ptr %i.o, align 8, !tbaa !283
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.ae, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !1102, !nonnull !217, !align !420 ; 2 uses
  %i.bp = load ptr, ptr %i.q, align 8, !tbaa !289
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !289
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !1103
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !1105
  %i.bu = invoke noundef zeroext i1 %i.br(i64 noundef %i.bt, ptr %i.bp, i64 %i.r, ptr %i.bq, i64 %i.r)
          to label %_ZNK11OpenImageIO4v3_113function_viewIFbNS0_4spanIfLm18446744073709551615EEENS2_IKfLm18446744073709551615EEEEEclES3_S5_.exit.i.i.i unwind label %bb.f, !inline_history !1106

_ZNK11OpenImageIO4v3_113function_viewIFbNS0_4spanIfLm18446744073709551615EEENS2_IKfLm18446744073709551615EEEEEclES3_S5_.exit.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  br i1 %i.bu, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_113function_viewIFbNS0_4spanIfLm18446744073709551615EEENS2_IKfLm18446744073709551615EEEEEclES3_S5_.exit.i.i.i
  %i.bv = load ptr, ptr %i.t, align 8, !tbaa !1107, !nonnull !217
  store i8 0, ptr %i.bv, align 1, !tbaa !196
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.g:                                             ; preds = %bb.d, %_ZNK11OpenImageIO4v3_113function_viewIFbNS0_4spanIfLm18446744073709551615EEENS2_IKfLm18446744073709551615EEEEEclES3_S5_.exit.i.i.i
  %i.by = load i32, ptr %i.j, align 4, !tbaa !279
  %i.bz = add nsw i32 %i.by, 1                    ; 7 uses
  store i32 %i.bz, ptr %i.j, align 4, !tbaa !279
  %i.ca = load i32, ptr %i.u, align 8, !tbaa !309
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.cc = load i8, ptr %i.w, align 1, !tbaa !310, !range !216, !noundef !217
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.i, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.h
  %.pre.i9.i.i = load i32, ptr %i.l, align 8, !tbaa !280
  %.pre.i.i = load i32, ptr %i.n, align 4, !tbaa !282
  br label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ce = load i8, ptr %i.x, align 1, !tbaa !311, !range !216, !noundef !217
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cg = load i64, ptr %i.z, align 8, !tbaa !312
  %i.ch = load ptr, ptr %i.s, align 8, !tbaa !289
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.cg
  store ptr %i.ci, ptr %i.s, align 8, !tbaa !289
  %i.cj = load i32, ptr %i.aa, align 8, !tbaa !313
  %.not.i.i12.i.i = icmp slt i32 %i.bz, %i.cj
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.k, !prof !232

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
end_hunk_1
begin_hunk_2_@llvm.ctlz.v4i32
!849 = distinct !{!849, !293}
!850 = distinct !{!850, !77, !332}
!851 = distinct !{null, null, null, null}
!852 = distinct !{null, null, null, null}
!853 = distinct !{!853, !77}
!854 = !{!496, !494, i64 0}
!855 = distinct !{!855, !77}
!856 = !{!857, !59, i64 8}
!857 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !858, i64 0, !59, i64 8}
!858 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !35, i64 0}
!859 = !{!857, !858, i64 0}
!860 = distinct !{!860, !77}
!861 = !{!862, !58, i64 0}
!862 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !58, i64 0, !4, i64 8}
!863 = !{!862, !4, i64 8}
!864 = !{!865, !867}
!865 = distinct !{!865, !866, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!866 = distinct !{!866, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!867 = distinct !{!867, !868, !"_ZNK3fmt3v127context3argEi: argument 0"}
!868 = distinct !{!868, !"_ZNK3fmt3v127context3argEi"}
!869 = distinct !{null}
!870 = !{!871}
!871 = distinct !{!871, !872, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!872 = distinct !{!872, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!873 = !{!874, !717, i64 0}
!874 = !{!"_ZTSN3fmt3v126detail13write_int_argIoEE", !717, i64 0, !4, i64 16}
!875 = !{!874, !4, i64 16}
!876 = !{!877}
!877 = distinct !{!877, !878, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!878 = distinct !{!878, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!879 = distinct !{!879, !77}
!880 = !{!881, !883}
!881 = distinct !{!881, !882, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!882 = distinct !{!882, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!883 = distinct !{!883, !884, !"_ZNK3fmt3v127context3argEi: argument 0"}
!884 = distinct !{!884, !"_ZNK3fmt3v127context3argEi"}
!885 = !{!886, !888}
!886 = distinct !{!886, !887, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!887 = distinct !{!887, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!888 = distinct !{!888, !889, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE: argument 0"}
!889 = distinct !{!889, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE"}
!890 = !{!891, !891, i64 0}
!891 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !5, i64 0}
!892 = !{!893, !893, i64 0}
!893 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !35, i64 0}
!894 = !{!895, !895, i64 0}
!895 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !35, i64 0}
!896 = !{!897, !895, i64 8}
!897 = !{!"_ZTSN3fmt3v126detail20dynamic_spec_handlerIcEE", !893, i64 0, !895, i64 8, !35, i64 16}
!898 = !{!897, !35, i64 16}
!899 = !{!897, !893, i64 0}
!900 = distinct !{!900, !77}
!901 = distinct !{!901, !77}
!902 = distinct !{null, null, null, null}
!903 = distinct !{null, null, null, null, null}
!904 = distinct !{null, null, null}
!905 = distinct !{null, null, null, null}
!906 = distinct !{!906, !77}
!907 = distinct !{!907, !77}
!908 = distinct !{null, null, null, null}
!909 = distinct !{null, null, null, null, null}
!910 = distinct !{null, null, null}
!911 = distinct !{null, null, null, null}
!912 = distinct !{!912, !77}
!913 = distinct !{!913, !77}
!914 = distinct !{!914, !77, !332, !333}
!915 = distinct !{!915, !77, !332, !333}
!916 = distinct !{!916, !293}
!917 = distinct !{!917, !77, !332}
!918 = distinct !{!918, !77}
!919 = !{!920, !920, i64 0}
!920 = !{!"char32_t", !5, i64 0}
!921 = distinct !{!921, !77}
!922 = distinct !{!922, !77}
!923 = distinct !{!923, !77}
!924 = !{!925, !624, i64 0}
!925 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !624, i64 0, !629, i64 4, !4, i64 12, !5, i64 16, !4, i64 20, !5, i64 24, !4, i64 28}
!926 = !{!925, !4, i64 12}
!927 = !{!925, !5, i64 16}
!928 = !{!925, !4, i64 20}
!929 = !{!925, !5, i64 24}
!930 = !{!925, !4, i64 28}
!931 = distinct !{null, null, null, null}
!932 = distinct !{null}
!933 = distinct !{null}
!934 = distinct !{null, null, null, null}
!935 = !{!925, !4, i64 4}
!936 = !{!937, !35, i64 0}
!937 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !35, i64 0, !631, i64 8, !337, i64 16, !337, i64 24, !58, i64 32, !568, i64 40, !337, i64 48}
!938 = distinct !{null, null, null, null}
!939 = !{!937, !631, i64 8}
!940 = !{!937, !337, i64 16}
!941 = !{!937, !337, i64 24}
!942 = !{!937, !58, i64 32}
!943 = !{!937, !568, i64 40}
!944 = !{!937, !337, i64 48}
!945 = distinct !{null, null, null, null, null}
!946 = !{!947, !35, i64 0}
!947 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !35, i64 0, !210, i64 8, !58, i64 16, !337, i64 24, !631, i64 32, !337, i64 40}
!948 = !{!947, !210, i64 8}
!949 = !{!947, !58, i64 16}
!950 = !{!947, !337, i64 24}
!951 = !{!947, !631, i64 32}
!952 = !{!947, !337, i64 40}
!953 = !{!954, !624, i64 0}
!954 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !624, i64 0, !672, i64 8, !4, i64 24, !5, i64 28, !4, i64 32, !5, i64 36, !4, i64 40}
!955 = !{i64 0, i64 8, !95, i64 8, i64 4, !3}
!956 = !{!954, !4, i64 24}
!957 = !{!954, !5, i64 28}
!958 = !{!954, !4, i64 32}
!959 = !{!954, !5, i64 36}
!960 = !{!954, !4, i64 40}
!961 = distinct !{null, null, null, null}
!962 = distinct !{null}
!963 = distinct !{null}
!964 = distinct !{null, null, null, null}
!965 = !{!954, !59, i64 8}
!966 = !{!967, !35, i64 0}
!967 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !35, i64 0, !674, i64 8, !337, i64 16, !337, i64 24, !58, i64 32, !568, i64 40, !337, i64 48}
!968 = distinct !{null, null, null, null}
!969 = !{!967, !674, i64 8}
!970 = !{!967, !337, i64 16}
!971 = !{!967, !337, i64 24}
!972 = !{!967, !58, i64 32}
!973 = !{!967, !568, i64 40}
!974 = !{!967, !337, i64 48}
!975 = distinct !{null, null, null, null, null}
!976 = !{!977, !35, i64 0}
!977 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !35, i64 0, !210, i64 8, !58, i64 16, !337, i64 24, !674, i64 32, !337, i64 40}
!978 = !{!977, !210, i64 8}
!979 = !{!977, !58, i64 16}
!980 = !{!977, !337, i64 24}
!981 = !{!977, !674, i64 32}
!982 = !{!977, !337, i64 40}
!983 = distinct !{null, null, null}
!984 = distinct !{!984, !77, !332, !333}
!985 = distinct !{!985, !77, !332, !333}
!986 = distinct !{!986, !293}
!987 = distinct !{!987, !77, !332}
!988 = !{!989, !989, i64 0}
!989 = !{!"p1 long", !35, i64 0}
!990 = !{!991, !991, i64 0}
!991 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !35, i64 0}
!992 = !{!993, !41, i64 0}
!993 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUlS4_E_", !41, i64 0, !59, i64 8, !451, i64 16}
!994 = !{!993, !59, i64 8}
!995 = !{i64 0, i64 8, !411, i64 8, i64 8, !95}
!996 = !{!997}
!997 = distinct !{!997, !998, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!998 = distinct !{!998, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!999 = distinct !{!999, !77, !332, !333}
!1000 = distinct !{!1000, !77, !332, !333}
!1001 = distinct !{!1001, !293}
!1002 = distinct !{!1002, !77, !332}
!1003 = distinct !{!1003, !77}
!1004 = !{i64 0, i64 8, !209, i64 8, i64 8, !988, i64 16, i64 8, !988, i64 24, i64 8, !988, i64 32, i64 8, !990}
!1005 = distinct !{!1005, !77}
!1006 = distinct !{!1006, !77, !332, !333}
!1007 = distinct !{!1007, !77, !332, !333}
!1008 = distinct !{!1008, !293}
!1009 = distinct !{!1009, !77, !332}
!1010 = distinct !{!1010, !77}
!1011 = distinct !{null, null, null}
!1012 = distinct !{!1012, !77, !332, !333}
!1013 = distinct !{!1013, !77, !332, !333}
!1014 = distinct !{!1014, !293}
!1015 = distinct !{!1015, !77, !332}
!1016 = distinct !{!1016, !77}
!1017 = distinct !{!1017, !77, !332, !333}
!1018 = distinct !{!1018, !77, !332, !333}
!1019 = distinct !{!1019, !293}
!1020 = distinct !{!1020, !77, !332}
!1021 = distinct !{!1021, !77}
!1022 = !{!1023, !210, i64 0}
!1023 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUljNSA_IcEEE_", !210, i64 0, !989, i64 8, !989, i64 16, !989, i64 24, !991, i64 32}
!1024 = !{!1025, !59, i64 288}
!1025 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !434, i64 0, !5, i64 32, !59, i64 288}
!1026 = !{!1023, !989, i64 8}
!1027 = !{!1023, !989, i64 16}
!1028 = !{!1023, !989, i64 24}
!1029 = !{!1023, !991, i64 32}
!1030 = distinct !{null, null, null, null}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!1033 = distinct !{!1033, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!1034 = distinct !{null, null, null, null, null}
!1035 = distinct !{!1035, !77}
!1036 = distinct !{!1036, !77}
!1037 = distinct !{null, null, null, null, null}
!1038 = distinct !{null}
!1039 = !{!1040, !210, i64 0}
!1040 = !{!"_ZTSZN11OpenImageIO4v3_1L5hfft_ERNS0_8ImageBufERKS1_bbNS0_3ROIEiE3$_0", !210, i64 0, !138, i64 8, !138, i64 16, !210, i64 24}
!1041 = !{!1042, !1043, i64 0}
!1042 = !{!"_ZTSNSt12_Vector_baseISt7complexIfESaIS1_EE17_Vector_impl_dataE", !1043, i64 0, !1043, i64 8, !1043, i64 16}
!1043 = !{!"p1 _ZTSSt7complexIfE", !35, i64 0}
!1044 = !{!1042, !1043, i64 16}
!1045 = !{!1040, !138, i64 8}
!1046 = !{!1040, !138, i64 16}
!1047 = !{!1040, !210, i64 24}
!1048 = distinct !{!1048, !77, !332, !333}
!1049 = distinct !{!1049, !77, !333, !332}
!1050 = distinct !{!1050, !77}
!1051 = distinct !{!1051, !77}
!1052 = !{!1053, !337, i64 0}
!1053 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !337, i64 0, !337, i64 8, !337, i64 16}
!1054 = !{!1053, !337, i64 16}
!1055 = !{i64 0, i64 8, !209, i64 8, i64 8, !137, i64 16, i64 8, !137, i64 24, i64 8, !209}
!1056 = !{!1057, !4, i64 0}
!1057 = !{!"_ZTS7kissfftIfN13kissfft_utils6traitsIfEEE", !4, i64 0, !41, i64 4, !1058, i64 8, !1061, i64 32, !1061, i64 56, !1064, i64 80, !1058, i64 104}
!1058 = !{!"_ZTSSt6vectorISt7complexIfESaIS1_EE", !1059, i64 0}
!1059 = !{!"_ZTSSt12_Vector_baseISt7complexIfESaIS1_EE", !1060, i64 0}
!1060 = !{!"_ZTSNSt12_Vector_baseISt7complexIfESaIS1_EE12_Vector_implE", !1042, i64 0}
!1061 = !{!"_ZTSSt6vectorIiSaIiEE", !1062, i64 0}
!1062 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !1063, i64 0}
!1063 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !1053, i64 0}
!1064 = !{!"_ZTSN13kissfft_utils6traitsIfEE", !1058, i64 0}
!1065 = !{!1057, !41, i64 4}
!1066 = !{!1042, !1043, i64 8}
!1067 = !{!1043, !1043, i64 0}
!1068 = distinct !{!1068, !77, !332, !333}
!1069 = distinct !{!1069, !77, !332}
!1070 = distinct !{!1070, !77}
!1071 = distinct !{!1071, !77}
!1072 = !{!1053, !337, i64 8}
!1073 = distinct !{!1073, !77}
!1074 = !{!1075}
!1075 = distinct !{!1075, !1076, !"_ZSt19__relocate_object_aISt7complexIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!1076 = distinct !{!1076, !"_ZSt19__relocate_object_aISt7complexIfES1_SaIS1_EEvPT_PT0_RT1_"}
!1077 = !{!1078}
!1078 = distinct !{!1078, !1076, !"_ZSt19__relocate_object_aISt7complexIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!1079 = distinct !{!1079, !77, !332, !333}
!1080 = distinct !{!1080, !77, !332}
!1081 = distinct !{!1081, !77, !332, !333}
!1082 = distinct !{!1082, !77, !332}
!1083 = distinct !{!1083, !293}
!1084 = distinct !{!1084, !77}
!1085 = distinct !{!1085, !77}
!1086 = !{!"branch_weights", i32 1, i32 1048575}
!1087 = distinct !{!1087, !77}
!1088 = distinct !{!1088, !77}
!1089 = distinct !{!1089, !77}
!1090 = distinct !{!1090, !77}
!1091 = distinct !{!1091, !77}
!1092 = distinct !{!1092, !293}
!1093 = distinct !{!1093, !77}
!1094 = distinct !{!1094, !77}
!1095 = distinct !{!1095, !77}
!1096 = !{!1097, !138, i64 0}
!1097 = !{!"_ZTSZN11OpenImageIO4v3_1L15divide_by_alphaERNS0_8ImageBufENS0_3ROIEiE3$_0", !138, i64 0}
!1098 = distinct !{!1098, !77}
!1099 = !{!1100, !138, i64 0}
!1100 = !{!"_ZTSZN11OpenImageIO4v3_112ImageBufAlgo11perpixel_opERKNS0_8ImageBufENS0_13function_viewIFbNS0_4spanIfLm18446744073709551615EEENS6_IKfLm18446744073709551615EEEEEENS0_14ParamValueSpanEE3$_0", !138, i64 0, !138, i64 8, !208, i64 16, !210, i64 24}
!1101 = !{!1100, !138, i64 8}
!1102 = !{!1100, !208, i64 16}
!1103 = !{!1104, !35, i64 0}
!1104 = !{!"_ZTSN11OpenImageIO4v3_113function_viewIFbNS0_4spanIfLm18446744073709551615EEENS2_IKfLm18446744073709551615EEEEEE", !35, i64 0, !59, i64 8}
!1105 = !{!1104, !59, i64 8}
!1106 = distinct !{null}
!1107 = !{!1100, !210, i64 24}
!1108 = !{i64 0, i64 8, !137, i64 8, i64 8, !137, i64 16, i64 8, !207, i64 24, i64 8, !209}
!1109 = !{!1110, !138, i64 0}
!1110 = !{!"_ZTSZN11OpenImageIO4v3_112ImageBufAlgo11perpixel_opERKNS0_8ImageBufENS0_13function_viewIFbNS0_4spanIfLm18446744073709551615EEENS6_IKfLm18446744073709551615EEEEEENS0_14ParamValueSpanEE3$_1", !138, i64 0, !138, i64 8, !208, i64 16, !210, i64 24}
!1111 = !{!1110, !138, i64 8}
!1112 = !{!276, !5, i64 125}
!1113 = !{!276, !4, i64 96}
!1114 = !{!1110, !208, i64 16}
!1115 = !{!1110, !210, i64 24}
!1116 = distinct !{!1116, !77}
!1117 = !{!1118, !138, i64 0}
!1118 = !{!"_ZTSZN11OpenImageIO4v3_112ImageBufAlgo11perpixel_opERKNS0_8ImageBufES4_NS0_13function_viewIFbNS0_4spanIfLm18446744073709551615EEENS6_IKfLm18446744073709551615EEES9_EEENS0_14ParamValueSpanEE3$_0", !138, i64 0, !138, i64 8, !138, i64 16, !231, i64 24, !210, i64 32}
!1119 = !{!1118, !138, i64 8}
!1120 = !{!1118, !138, i64 16}
!1121 = !{!1118, !231, i64 24}
!1122 = !{!1123, !35, i64 0}
!1123 = !{!"_ZTSN11OpenImageIO4v3_113function_viewIFbNS0_4spanIfLm18446744073709551615EEENS2_IKfLm18446744073709551615EEES5_EEE", !35, i64 0, !59, i64 8}
!1124 = !{!1123, !59, i64 8}
!1125 = distinct !{null}
!1126 = !{!1118, !210, i64 32}
!1127 = !{i64 0, i64 8, !137, i64 8, i64 8, !137, i64 16, i64 8, !137, i64 24, i64 8, !230, i64 32, i64 8, !209}
!1128 = !{!1129, !138, i64 0}
!1129 = !{!"_ZTSZN11OpenImageIO4v3_112ImageBufAlgo11perpixel_opERKNS0_8ImageBufES4_NS0_13function_viewIFbNS0_4spanIfLm18446744073709551615EEENS6_IKfLm18446744073709551615EEES9_EEENS0_14ParamValueSpanEE3$_1", !138, i64 0, !138, i64 8, !138, i64 16, !231, i64 24, !210, i64 32}
!1130 = !{!1129, !138, i64 8}
!1131 = !{!1129, !138, i64 16}
!1132 = !{!1129, !231, i64 24}
!1133 = !{!1129, !210, i64 32}
!1134 = distinct !{!1134, !77}
!1135 = !{i64 0, i64 8, !137, i64 8, i64 8, !209, i64 16, i64 8, !137, i64 24, i64 8, !137}
!1136 = !{!1137, !138, i64 0}
!1137 = !{!"_ZTSZN11OpenImageIO4v3_1L9convolve_IffEEbRNS0_8ImageBufERKS2_S5_bNS0_3ROIEiEUlS6_E_", !138, i64 0, !210, i64 8, !138, i64 16, !138, i64 24}
!1138 = !{!1137, !210, i64 8}
!1139 = distinct !{!1139, !77}
!1140 = !{!1137, !138, i64 16}
!1141 = !{!1137, !138, i64 24}
!1142 = distinct !{!1142, !77, !332, !333}
!1143 = distinct !{!1143, !77, !333, !332}
!1144 = distinct !{!1144, !77}
!1145 = distinct !{!1145, !77}
!1146 = distinct !{!1146, !77}
!1147 = !{!1148, !138, i64 0}
!1148 = !{!"_ZTSZN11OpenImageIO4v3_1L9convolve_IfhEEbRNS0_8ImageBufERKS2_S5_bNS0_3ROIEiEUlS6_E_", !138, i64 0, !210, i64 8, !138, i64 16, !138, i64 24}
!1149 = !{!1148, !210, i64 8}
!1150 = distinct !{!1150, !77}
!1151 = !{!1148, !138, i64 16}
!1152 = !{!1148, !138, i64 24}
!1153 = distinct !{!1153, !77, !332, !333}
!1154 = distinct !{!1154, !77, !333, !332}
!1155 = distinct !{!1155, !77}
!1156 = distinct !{!1156, !77}
!1157 = distinct !{!1157, !77}
!1158 = !{!1159, !138, i64 0}
!1159 = !{!"_ZTSZN11OpenImageIO4v3_1L9convolve_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_S7_bNS0_3ROIEiEUlS8_E_", !138, i64 0, !210, i64 8, !138, i64 16, !138, i64 24}
!1160 = !{!1159, !210, i64 8}
!1161 = distinct !{!1161, !77}
!1162 = !{!1159, !138, i64 16}
!1163 = !{!1159, !138, i64 24}
!1164 = !{!1165, !430, i64 0}
!1165 = !{!"_ZTSN9Imath_3_14halfE", !430, i64 0}
!1166 = distinct !{!1166, !77, !332, !333}
!1167 = distinct !{!1167, !77, !333, !332}
!1168 = distinct !{!1168, !77}
!1169 = distinct !{!1169, !77}
!1170 = distinct !{!1170, !77}
!1171 = !{!1172, !138, i64 0}
!1172 = !{!"_ZTSZN11OpenImageIO4v3_1L9convolve_IftEEbRNS0_8ImageBufERKS2_S5_bNS0_3ROIEiEUlS6_E_", !138, i64 0, !210, i64 8, !138, i64 16, !138, i64 24}
!1173 = !{!1172, !210, i64 8}
!1174 = distinct !{!1174, !77}
!1175 = !{!1172, !138, i64 16}
!1176 = !{!1172, !138, i64 24}
!1177 = !{!430, !430, i64 0}
!1178 = distinct !{!1178, !77, !332, !333}
!1179 = distinct !{!1179, !77, !333, !332}
!1180 = distinct !{!1180, !77}
!1181 = distinct !{!1181, !77}
!1182 = distinct !{!1182, !77}
!1183 = !{!1184, !138, i64 0}
!1184 = !{!"_ZTSZN11OpenImageIO4v3_1L9convolve_IhhEEbRNS0_8ImageBufERKS2_S5_bNS0_3ROIEiEUlS6_E_", !138, i64 0, !210, i64 8, !138, i64 16, !138, i64 24}
!1185 = !{!1184, !210, i64 8}
!1186 = distinct !{!1186, !77}
!1187 = !{!1184, !138, i64 16}
!1188 = !{!1184, !138, i64 24}
!1189 = distinct !{!1189, !77, !332, !333}
!1190 = distinct !{!1190, !77, !333, !332}
!1191 = distinct !{!1191, !77}
!1192 = distinct !{!1192, !77}
!1193 = distinct !{!1193, !77}
!1194 = !{!1195, !138, i64 0}
!1195 = !{!"_ZTSZN11OpenImageIO4v3_1L9convolve_IN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_S7_bNS0_3ROIEiEUlS8_E_", !138, i64 0, !210, i64 8, !138, i64 16, !138, i64 24}
!1196 = !{!1195, !210, i64 8}
!1197 = distinct !{!1197, !77}
!1198 = !{!1195, !138, i64 16}
!1199 = !{!1195, !138, i64 24}
!1200 = distinct !{!1200, !77, !332, !333}
!1201 = distinct !{!1201, !77, !333, !332}
!1202 = distinct !{!1202, !77}
!1203 = distinct !{!1203, !77}
!1204 = distinct !{!1204, !77}
!1205 = !{!1206, !138, i64 0}
!1206 = !{!"_ZTSZN11OpenImageIO4v3_1L9convolve_IttEEbRNS0_8ImageBufERKS2_S5_bNS0_3ROIEiEUlS6_E_", !138, i64 0, !210, i64 8, !138, i64 16, !138, i64 24}
!1207 = !{!1206, !210, i64 8}
!1208 = distinct !{!1208, !77}
!1209 = !{!1206, !138, i64 16}
!1210 = !{!1206, !138, i64 24}
!1211 = distinct !{!1211, !77, !332, !333}
!1212 = distinct !{!1212, !77, !333, !332}
!1213 = distinct !{!1213, !77}
!1214 = distinct !{!1214, !77}
!1215 = distinct !{!1215, !77}
!1216 = !{!1217, !138, i64 0}
!1217 = !{!"_ZTSZN11OpenImageIO4v3_1L12unsharp_implIfEEbRNS0_8ImageBufERKS2_S5_ffNS0_3ROIEiEUlS6_E_", !138, i64 0, !138, i64 8, !138, i64 16, !328, i64 24, !328, i64 32}
!1218 = !{!1217, !138, i64 8}
!1219 = !{!1217, !138, i64 16}
!1220 = !{!1217, !328, i64 24}
!1221 = !{!1217, !328, i64 32}
!1222 = distinct !{!1222, !77}
!1223 = !{i64 0, i64 8, !137, i64 8, i64 8, !137, i64 16, i64 8, !137, i64 24, i64 8, !327, i64 32, i64 8, !327}
!1224 = !{!1225, !138, i64 0}
!1225 = !{!"_ZTSZN11OpenImageIO4v3_1L12unsharp_implIhEEbRNS0_8ImageBufERKS2_S5_ffNS0_3ROIEiEUlS6_E_", !138, i64 0, !138, i64 8, !138, i64 16, !328, i64 24, !328, i64 32}
!1226 = !{!1225, !138, i64 8}
!1227 = !{!1225, !138, i64 16}
!1228 = !{!1225, !328, i64 24}
!1229 = !{!1225, !328, i64 32}
!1230 = distinct !{!1230, !77}
!1231 = !{!1232, !138, i64 0}
!1232 = !{!"_ZTSZN11OpenImageIO4v3_1L12unsharp_implIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_S7_ffNS0_3ROIEiEUlS8_E_", !138, i64 0, !138, i64 8, !138, i64 16, !328, i64 24, !328, i64 32}
!1233 = !{!1232, !138, i64 8}
!1234 = !{!1232, !138, i64 16}
!1235 = !{!1232, !328, i64 24}
!1236 = !{!1232, !328, i64 32}
!1237 = distinct !{!1237, !77}
!1238 = !{!1239, !138, i64 0}
!1239 = !{!"_ZTSZN11OpenImageIO4v3_1L12unsharp_implItEEbRNS0_8ImageBufERKS2_S5_ffNS0_3ROIEiEUlS6_E_", !138, i64 0, !138, i64 8, !138, i64 16, !328, i64 24, !328, i64 32}
!1240 = !{!1239, !138, i64 8}
!1241 = !{!1239, !138, i64 16}
!1242 = !{!1239, !328, i64 24}
!1243 = !{!1239, !328, i64 32}
!1244 = distinct !{!1244, !77}
!1245 = !{i64 0, i64 8, !336, i64 8, i64 8, !336, i64 16, i64 8, !137, i64 24, i64 8, !137}
!1246 = !{!1247, !337, i64 0}
!1247 = !{!"_ZTSZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiEUlS6_E_", !337, i64 0, !337, i64 8, !138, i64 16, !138, i64 24}
!1248 = !{!1247, !337, i64 8}
!1249 = !{!1247, !138, i64 16}
!1250 = distinct !{!1250, !77, !332, !333}
end_hunk_2
