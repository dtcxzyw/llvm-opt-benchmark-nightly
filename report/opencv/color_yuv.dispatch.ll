Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/color_yuv.dispatch?download=true
inline.NumInlined: 608
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEclERKNS_5RangeE:bb.a
  %i.cu = phi i64 [ %.pre18, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEclEPKhPhi.exit.loopexit ], [ %i.aa, %.lr.ph.split ] ; 2 uses
  %i.cv = phi i64 [ %.pre, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEclEPKhPhi.exit.loopexit ], [ %i.ab, %.lr.ph.split ] ; 2 uses
  %i.cw = add nsw i32 %.01314, 1                  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.016, i64 %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %.01215, i64 %i.cu
  %i.cz = icmp slt i32 %i.cw, %i.ct
  br i1 %i.cz, label %.lr.ph.split, label %._crit_edge, !llvm.loop !514
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEclERKNS_5RangeEE25__cv_trace_location_fn146)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = load i32, ptr %1, align 4, !tbaa !39     ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = mul i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63   ; 2 uses
  %i.m = mul i64 %i.l, %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40   ; 2 uses
  %i.q = icmp slt i32 %i.c, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !518, !nonnull !236, !align !400 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !64   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !37
  %i.af = icmp sgt i32 %i.u, 0
  br i1 %i.af, label %.lr.ph.split, label %._crit_edge.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !57, !range !235, !noundef !236
  %i.aj = xor i8 %i.ai, 1                         ; 2 uses
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !56 ; 2 uses
  %i.al = load i32, ptr %i.s, align 4, !tbaa !55
  %i.am = xor i32 %i.ak, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = sext i32 %i.ak to i64
  %i.ap = zext nneg i8 %i.aj to i64
  %narrow.i = sub nuw nsw i8 2, %i.aj
  %i.aq = zext nneg i8 %narrow.i to i64
  %i.ar = sext i32 %i.al to i64
  br label %.lr.ph.i

._crit_edge.split:                                ; preds = %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEclEPKtPti.exit.loopexit, %.lr.ph, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !80
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.split
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #14
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge.split, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

.lr.ph.i:                                         ; preds = %.lr.ph.split, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEclEPKtPti.exit.loopexit
  %.016 = phi ptr [ %i.h, %.lr.ph.split ], [ %i.cp, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEclEPKtPti.exit.loopexit ] ; 2 uses
  %.01215 = phi ptr [ %i.n, %.lr.ph.split ], [ %i.cq, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEclEPKtPti.exit.loopexit ] ; 2 uses
  %.01314 = phi i32 [ %i.c, %.lr.ph.split ], [ %i.co, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEclEPKtPti.exit.loopexit ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.034.i = phi ptr [ %.016, %.lr.ph.i ], [ %i.cm, %bb.d ] ; 6 uses
  %.03033.i = phi ptr [ %.01215, %.lr.ph.i ], [ %i.cn, %bb.d ] ; 4 uses
  %.03132.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cl, %bb.d ]
  %i.aw = load i16, ptr %.034.i, align 2, !tbaa !403
  %i.ax = zext i16 %i.aw to i32
  %i.ay = mul nsw i32 %i.w, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.034.i, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !403
  %i.bb = zext i16 %i.ba to i32
  %i.bc = mul nsw i32 %i.y, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.034.i, i64 4
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !403
  %i.bf = zext i16 %i.be to i32
  %i.bg = mul nsw i32 %i.aa, %i.bf
  %i.bh = add i32 %i.ay, 8192
  %i.bi = add i32 %i.bh, %i.bc
  %i.bj = add i32 %i.bi, %i.bg
  %i.bk = ashr i32 %i.bj, 14                      ; 3 uses
  %i.bl = getelementptr inbounds [2 x i8], ptr %.034.i, i64 %i.an
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !403
  %i.bn = zext i16 %i.bm to i32
  %i.bo = sub nsw i32 %i.bn, %i.bk
  %i.bp = mul nsw i32 %i.bo, %i.ac
  %i.bq = add nsw i32 %i.bp, 536879104
  %i.br = ashr i32 %i.bq, 14
  %i.bs = getelementptr inbounds [2 x i8], ptr %.034.i, i64 %i.ao
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !403
  %i.bu = zext i16 %i.bt to i32
  %i.bv = sub nsw i32 %i.bu, %i.bk
  %i.bw = mul nsw i32 %i.bv, %i.ae
  %i.bx = add nsw i32 %i.bw, 536879104
  %i.by = ashr i32 %i.bx, 14
  %i.bz = call i32 @llvm.smax.i32(i32 range(i32 -131072, 196607) %i.bk, i32 0)
  %i.ca = call i32 @llvm.umin.i32(i32 %i.bz, i32 65535)
  %i.cb = trunc nuw i32 %i.ca to i16
  store i16 %i.cb, ptr %.03033.i, align 2, !tbaa !403
  %i.cc = call i32 @llvm.smax.i32(i32 range(i32 -131072, 196607) %i.br, i32 0)
  %i.cd = call i32 @llvm.umin.i32(i32 %i.cc, i32 65535)
  %i.ce = trunc nuw i32 %i.cd to i16
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.03033.i, i64 %i.ap
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i16 %i.ce, ptr %i.cg, align 2, !tbaa !403
  %i.ch = call i32 @llvm.smax.i32(i32 range(i32 -131072, 196607) %i.by, i32 0)
  %i.ci = call i32 @llvm.umin.i32(i32 %i.ch, i32 65535)
  %i.cj = trunc nuw i32 %i.ci to i16
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.03033.i, i64 %i.aq
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !403
  %i.cl = add nuw nsw i32 %.03132.i, 1            ; 2 uses
  %i.cm = getelementptr inbounds [2 x i8], ptr %.034.i, i64 %i.ar
  %i.cn = getelementptr inbounds nuw i8, ptr %.03033.i, i64 6
  %exitcond.not.i = icmp eq i32 %i.cl, %i.u
  br i1 %exitcond.not.i, label %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEclEPKtPti.exit.loopexit, label %bb.d, !llvm.loop !516

_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEclEPKtPti.exit.loopexit: ; preds = %bb.d
  %i.co = add nsw i32 %.01314, 1                  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.016, i64 %i.f
  %i.cq = getelementptr inbounds nuw i8, ptr %.01215, i64 %i.l
  %exitcond.not = icmp eq i32 %i.co, %i.p
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.i, !llvm.loop !517
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEclERKNS_5RangeEE25__cv_trace_location_fn146)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = load i32, ptr %1, align 4, !tbaa !39     ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !74   ; 2 uses
  %i.g = mul i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !76   ; 2 uses
  %i.m = mul i64 %i.l, %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40   ; 2 uses
  %i.q = icmp slt i32 %i.c, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !521, !nonnull !236, !align !400 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !77   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = icmp sgt i32 %i.u, 0
  br i1 %i.z, label %.lr.ph.split, label %._crit_edge.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !68, !range !235, !noundef !236
  %i.ad = xor i8 %i.ac, 1                         ; 2 uses
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !67 ; 2 uses
  %i.af = load i32, ptr %i.s, align 4, !tbaa !66
  %i.ag = xor i32 %i.ae, 2
  %i.ah = sext i32 %i.ag to i64
  %i.ai = sext i32 %i.ae to i64
  %i.aj = zext nneg i8 %i.ad to i64
  %narrow.i = sub nuw nsw i8 2, %i.ad
  %i.ak = zext nneg i8 %narrow.i to i64
  %i.al = sext i32 %i.af to i64
  br label %.lr.ph.i

._crit_edge.split:                                ; preds = %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEclEPKfPfi.exit.loopexit, %.lr.ph, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !80
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.split
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #14
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge.split, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

.lr.ph.i:                                         ; preds = %.lr.ph.split, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEclEPKfPfi.exit.loopexit
  %.016 = phi ptr [ %i.h, %.lr.ph.split ], [ %i.bk, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEclEPKfPfi.exit.loopexit ] ; 2 uses
  %.01215 = phi ptr [ %i.n, %.lr.ph.split ], [ %i.bl, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEclEPKfPfi.exit.loopexit ] ; 2 uses
  %.01314 = phi i32 [ %i.c, %.lr.ph.split ], [ %i.bj, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEclEPKfPfi.exit.loopexit ]
  %i.aq = load float, ptr %i.v, align 4, !tbaa !70
  %i.ar = load float, ptr %i.w, align 4, !tbaa !70
  %i.as = load float, ptr %i.x, align 4, !tbaa !70
  %3 = load <2 x float>, ptr %i.y, align 4, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.034.i = phi ptr [ %.016, %.lr.ph.i ], [ %i.bh, %bb.d ] ; 6 uses
  %.03033.i = phi ptr [ %.01215, %.lr.ph.i ], [ %i.bi, %bb.d ] ; 4 uses
  %.03132.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bg, %bb.d ]
  %i.at = load float, ptr %.034.i, align 4, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %.034.i, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !70
  %i.aw = fmul float %i.ar, %i.av
  %i.ax = call float @llvm.fmuladd.f32(float %i.at, float %i.aq, float %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %.034.i, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !70
  %i.ba = call float @llvm.fmuladd.f32(float %i.az, float %i.as, float %i.ax) ; 2 uses
  %4 = getelementptr inbounds [4 x i8], ptr %.034.i, i64 %i.ah
  %5 = load float, ptr %4, align 4, !tbaa !70
  %i.bb = getelementptr inbounds [4 x i8], ptr %.034.i, i64 %i.ai
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !70
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %7 = insertelement <2 x float> %6, float %i.bc, i64 1
  %8 = insertelement <2 x float> poison, float %i.ba, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fsub <2 x float> %7, %9
  %11 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %3, <2 x float> splat (float 5.000000e-01)) ; 2 uses
  store float %i.ba, ptr %.03033.i, align 4, !tbaa !70
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.03033.i, i64 %i.aj
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %12 = extractelement <2 x float> %11, i64 0
  store float %12, ptr %i.be, align 4, !tbaa !70
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.03033.i, i64 %i.ak
  %13 = extractelement <2 x float> %11, i64 1
  store float %13, ptr %i.bf, align 4, !tbaa !70
  %i.bg = add nuw nsw i32 %.03132.i, 1            ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %.034.i, i64 %i.al
  %i.bi = getelementptr inbounds nuw i8, ptr %.03033.i, i64 12
  %exitcond.not.i = icmp eq i32 %i.bg, %i.u
  br i1 %exitcond.not.i, label %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEclEPKfPfi.exit.loopexit, label %bb.d, !llvm.loop !519

_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEclEPKfPfi.exit.loopexit: ; preds = %bb.d
  %i.bj = add nsw i32 %.01314, 1                  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.016, i64 %i.f
  %i.bl = getelementptr inbounds nuw i8, ptr %.01215, i64 %i.l
  %exitcond.not = icmp eq i32 %i.bj, %i.p
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.i, !llvm.loop !520
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEclERKNS_5RangeEE25__cv_trace_location_fn146)
  %i.a = load i32, ptr %1, align 4, !tbaa !39     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  %i.f = icmp slt i32 %i.a, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !91
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = load i64, ptr %i.b, align 8, !tbaa !88
  %i.n = sext i32 %i.a to i64                     ; 2 uses
  %i.o = mul i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89
  %i.s = load i64, ptr %i.c, align 8, !tbaa !90
  %i.t = mul i64 %i.s, %i.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEclEPKhPhi.exit, %.lr.ph, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !80
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #14
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEclEPKhPhi.exit
  %.017 = phi ptr [ %i.ec, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEclEPKhPhi.exit ], [ %i.p, %.lr.ph.split.preheader ] ; 3 uses
  %.01216 = phi ptr [ %i.ee, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEclEPKhPhi.exit ], [ %i.u, %.lr.ph.split.preheader ] ; 3 uses
  %.01315 = phi i32 [ %i.ea, %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEclEPKhPhi.exit ], [ %i.a, %.lr.ph.split.preheader ]
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !524, !nonnull !236, !align !400 ; 7 uses
  %i.aa = load i32, ptr %i.h, align 8, !tbaa !91  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !37 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37 ; 2 uses
  %i.aj = icmp sgt i32 %i.aa, 0
  br i1 %i.aj, label %.lr.ph.i, label %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEclEPKhPhi.exit

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !84, !range !235, !noundef !236
  %i.am = xor i8 %i.al, 1                         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !83 ; 2 uses
  %i.ap = load i32, ptr %i.z, align 4, !tbaa !82  ; 2 uses
  %i.aq = zext nneg i8 %i.am to i64               ; 2 uses
  %narrow.i = sub nuw nsw i8 2, %i.am
  %i.ar = zext nneg i8 %narrow.i to i64           ; 2 uses
  %i.as = sext i32 %i.ao to i64                   ; 2 uses
  %i.at = xor i32 %i.ao, 2
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = icmp eq i32 %i.ap, 4
  %i.aw = sext i32 %i.ap to i64                   ; 2 uses
  br i1 %i.av, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.041.us.i = phi i32 [ %i.cj, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i ]
  %.03740.us.i = phi ptr [ %i.ck, %.lr.ph.split.us.i ], [ %.017, %.lr.ph.i ] ; 4 uses
  %.03839.us.i = phi ptr [ %i.cl, %.lr.ph.split.us.i ], [ %.01216, %.lr.ph.i ] ; 5 uses
  %i.ax = load i8, ptr %.03740.us.i, align 1, !tbaa !117
  %i.ay = getelementptr inbounds nuw i8, ptr %.03740.us.i, i64 %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !117
  %i.bb = getelementptr inbounds nuw i8, ptr %.03740.us.i, i64 %i.ar
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !117
  %i.bd = zext i8 %i.ax to i32                    ; 3 uses
  %i.be = zext i8 %i.bc to i32
  %i.bf = add nsw i32 %i.be, -128                 ; 2 uses
  %i.bg = mul nsw i32 %i.bf, %i.ai
  %i.bh = add nsw i32 %i.bg, 8192
  %i.bi = ashr i32 %i.bh, 14
  %i.bj = add nsw i32 %i.bi, %i.bd
  %i.bk = mul nsw i32 %i.bf, %i.ag
  %i.bl = zext i8 %i.ba to i32
  %i.bm = add nsw i32 %i.bl, -128                 ; 2 uses
  %i.bn = mul nsw i32 %i.bm, %i.ae
  %i.bo = add i32 %i.bn, 8192
  %i.bp = add i32 %i.bo, %i.bk
  %i.bq = ashr i32 %i.bp, 14
  %i.br = add nsw i32 %i.bq, %i.bd
  %i.bs = mul nsw i32 %i.bm, %i.ac
  %i.bt = add nsw i32 %i.bs, 8192
  %i.bu = ashr i32 %i.bt, 14
  %i.bv = add nsw i32 %i.bu, %i.bd
  %i.bw = call i32 @llvm.smax.i32(i32 range(i32 -131072, 131327) %i.bj, i32 0)
  %i.bx = call i32 @llvm.umin.i32(i32 %i.bw, i32 255)
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = getelementptr inbounds i8, ptr %.03839.us.i, i64 %i.as
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !117
  %i.ca = call i32 @llvm.smax.i32(i32 range(i32 -131072, 131327) %i.br, i32 0)
  %i.cb = call i32 @llvm.umin.i32(i32 %i.ca, i32 255)
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.03839.us.i, i64 1
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !117
  %i.ce = call i32 @llvm.smax.i32(i32 range(i32 -131072, 131327) %i.bv, i32 0)
  %i.cf = call i32 @llvm.umin.i32(i32 %i.ce, i32 255)
  %i.cg = trunc nuw i32 %i.cf to i8
  %i.ch = getelementptr inbounds i8, ptr %.03839.us.i, i64 %i.au
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !117
  %i.ci = getelementptr inbounds nuw i8, ptr %.03839.us.i, i64 3
  store i8 -1, ptr %i.ci, align 1, !tbaa !117
  %i.cj = add nuw nsw i32 %.041.us.i, 1           ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.03740.us.i, i64 3
  %i.cl = getelementptr inbounds nuw i8, ptr %.03839.us.i, i64 %i.aw
  %exitcond43.not.i = icmp eq i32 %i.cj, %i.aa
  br i1 %exitcond43.not.i, label %_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEclEPKhPhi.exit, label %.lr.ph.split.us.i, !llvm.loop !522

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.041.i = phi i32 [ %i.dx, %.lr.ph.split.i ], [ 0, %.lr.ph.i ]
  %.03740.i = phi ptr [ %i.dy, %.lr.ph.split.i ], [ %.017, %.lr.ph.i ] ; 4 uses
  %.03839.i = phi ptr [ %i.dz, %.lr.ph.split.i ], [ %.01216, %.lr.ph.i ] ; 4 uses
  %i.cm = load i8, ptr %.03740.i, align 1, !tbaa !117
  %i.cn = getelementptr inbounds nuw i8, ptr %.03740.i, i64 %i.aq
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !117
  %i.cq = getelementptr inbounds nuw i8, ptr %.03740.i, i64 %i.ar
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !117
  %i.cs = zext i8 %i.cm to i32                    ; 3 uses
  %i.ct = zext i8 %i.cr to i32
  %i.cu = add nsw i32 %i.ct, -128                 ; 2 uses
  %i.cv = mul nsw i32 %i.cu, %i.ai
  %i.cw = add nsw i32 %i.cv, 8192
  %i.cx = ashr i32 %i.cw, 14
  %i.cy = add nsw i32 %i.cx, %i.cs
  %i.cz = mul nsw i32 %i.cu, %i.ag
  %i.da = zext i8 %i.cp to i32
  %i.db = add nsw i32 %i.da, -128                 ; 2 uses
  %i.dc = mul nsw i32 %i.db, %i.ae
  %i.dd = add i32 %i.dc, 8192
  %i.de = add i32 %i.dd, %i.cz
  %i.df = ashr i32 %i.de, 14
  %i.dg = add nsw i32 %i.df, %i.cs
  %i.dh = mul nsw i32 %i.db, %i.ac
  %i.di = add nsw i32 %i.dh, 8192
  %i.dj = ashr i32 %i.di, 14
  %i.dk = add nsw i32 %i.dj, %i.cs
  %i.dl = call i32 @llvm.smax.i32(i32 range(i32 -131072, 131327) %i.cy, i32 0)
  %i.dm = call i32 @llvm.umin.i32(i32 %i.dl, i32 255)
  %i.dn = trunc nuw i32 %i.dm to i8
  %i.do = getelementptr inbounds i8, ptr %.03839.i, i64 %i.as
end_hunk_0
begin_hunk_1_@_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi4EEclERKNS_5RangeE:bb.a
  %i.bw = add nuw nsw i32 %i.bt, 2105344
  %i.bx = add nuw nsw i32 %i.bw, %i.bu
  %i.by = add nuw i32 %i.bx, %i.bv
  %i.bz = lshr i32 %i.by, 14
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %i.aj, align 1, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.03437, i64 4
  %i.cc = load i32, ptr %i.n, align 8, !tbaa !375 ; 2 uses
  %i.cd = shl nsw i32 %i.cc, 2
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre50 = load i64, ptr %i.d, align 8, !tbaa !374
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.cg = phi i64 [ %.pre50, %._crit_edge.loopexit ], [ %i.o, %bb.b ] ; 2 uses
  %i.ch = phi i32 [ %i.cc, %._crit_edge.loopexit ], [ %i.p, %bb.b ]
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.041, i64 %i.cg
  %exitcond.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge45, label %bb.b, !llvm.loop !21
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi0ELi1ELi4EED0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi4EEclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !39     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !40   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = icmp slt i32 %i.a, %i.c
  br i1 %i.e, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !379
  %i.h = load i64, ptr %i.d, align 8, !tbaa !380  ; 2 uses
  %i.i = sext i32 %i.a to i64                     ; 2 uses
  %i.j = mul i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %wide.trip.count = sext i32 %i.c to i64
  %.pre = load i32, ptr %i.n, align 8, !tbaa !381
  br label %bb.b

._crit_edge45:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph44, %._crit_edge
  %i.o = phi i64 [ %i.h, %.lr.ph44 ], [ %i.cg, %._crit_edge ]
  %i.p = phi i32 [ %.pre, %.lr.ph44 ], [ %i.ch, %._crit_edge ] ; 2 uses
  %indvars.iv47 = phi i64 [ %i.i, %.lr.ph44 ], [ %indvars.iv.next48, %._crit_edge ] ; 2 uses
  %.041 = phi ptr [ %i.k, %.lr.ph44 ], [ %i.ci, %._crit_edge ] ; 5 uses
  %.03642 = getelementptr inbounds nuw i8, ptr %.041, i64 4 ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !377
  %i.s = load i64, ptr %i.m, align 8, !tbaa !378
  %i.t = mul i64 %i.s, %indvars.iv47
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %.03437 = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.cb, %.lr.ph ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.041, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !117
  %i.x = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.041, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !117
  %i.aa = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.041, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !117
  %i.ad = getelementptr inbounds nuw i8, ptr %.03642, i64 %indvars.iv
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !117
  %i.af = getelementptr inbounds nuw i8, ptr %.03642, i64 %i.x
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !117
  %i.ah = getelementptr inbounds nuw i8, ptr %.03642, i64 %i.aa
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !117
  %i.aj = getelementptr inbounds nuw i8, ptr %.03437, i64 3
  %i.ak = getelementptr inbounds nuw i8, ptr %.03437, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %.03437, i64 2
  %i.am = zext i8 %i.w to i32                     ; 2 uses
  %i.an = mul nuw nsw i32 %i.am, 4211
  %i.ao = zext i8 %i.z to i32                     ; 2 uses
  %i.ap = mul nuw nsw i32 %i.ao, 8258
  %i.aq = zext i8 %i.ac to i32                    ; 2 uses
  %i.ar = mul nuw nsw i32 %i.aq, 1606
  %i.as = add nuw nsw i32 %i.an, 270336
  %i.at = add nuw nsw i32 %i.as, %i.ap
  %i.au = add nuw nsw i32 %i.at, %i.ar
  %i.av = lshr i32 %i.au, 14
  %i.aw = trunc nuw i32 %i.av to i8
  store i8 %i.aw, ptr %.03437, align 1, !tbaa !117
  %i.ax = zext i8 %i.ae to i32                    ; 2 uses
  %i.ay = mul nuw nsw i32 %i.ax, 4211
  %i.az = zext i8 %i.ag to i32                    ; 2 uses
  %i.ba = mul nuw nsw i32 %i.az, 8258
  %i.bb = zext i8 %i.ai to i32                    ; 2 uses
  %i.bc = mul nuw nsw i32 %i.bb, 1606
  %i.bd = add nuw nsw i32 %i.ay, 270336
  %i.be = add nuw nsw i32 %i.bd, %i.ba
  %i.bf = add nuw nsw i32 %i.be, %i.bc
  %i.bg = lshr i32 %i.bf, 14
  %i.bh = trunc nuw i32 %i.bg to i8
  store i8 %i.bh, ptr %i.al, align 1, !tbaa !117
  %i.bi = add nuw nsw i32 %i.ax, %i.am            ; 2 uses
  %i.bj = add nuw nsw i32 %i.az, %i.ao            ; 2 uses
  %i.bk = add nuw nsw i32 %i.bb, %i.aq            ; 2 uses
  %i.bl = mul nuw nsw i32 %i.bi, 4193092
  %i.bm = mul nuw nsw i32 %i.bj, 4191920
  %i.bn = mul nuw nsw i32 %i.bk, 3596
  %i.bo = add nuw nsw i32 %i.bl, 2105344
  %i.bp = add nuw i32 %i.bo, %i.bm
  %i.bq = add nuw i32 %i.bp, %i.bn
  %i.br = lshr i32 %i.bq, 14
  %i.bs = trunc i32 %i.br to i8
  store i8 %i.bs, ptr %i.aj, align 1, !tbaa !117
  %i.bt = mul nuw nsw i32 %i.bi, 3596
  %i.bu = mul nuw nsw i32 %i.bj, 4191289
  %i.bv = mul nuw nsw i32 %i.bk, 4193722
  %i.bw = add nuw nsw i32 %i.bt, 2105344
  %i.bx = add nuw nsw i32 %i.bw, %i.bu
  %i.by = add nuw i32 %i.bx, %i.bv
  %i.bz = lshr i32 %i.by, 14
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %i.ak, align 1, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.03437, i64 4
  %i.cc = load i32, ptr %i.n, align 8, !tbaa !381 ; 2 uses
  %i.cd = shl nsw i32 %i.cc, 2
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre50 = load i64, ptr %i.d, align 8, !tbaa !380
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.cg = phi i64 [ %.pre50, %._crit_edge.loopexit ], [ %i.o, %bb.b ] ; 2 uses
  %i.ch = phi i32 [ %i.cc, %._crit_edge.loopexit ], [ %i.p, %bb.b ]
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.041, i64 %i.cg
  %exitcond.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge45, label %bb.b, !llvm.loop !23
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv3hal12cpu_baseline12_GLOBAL__N_119RGB8toYUV422InvokerILi2ELi1ELi0ELi4EED0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN2cv6detail24check_failed_MatChannelsEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN2cv6detail21check_failed_MatDepthEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZNK2cv11_InputArray6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}
!llvm.errno.tbaa = !{!31}

!0 = distinct !{!0, !237}
!1 = distinct !{!1, !237}
!2 = distinct !{!2, !237}
!3 = distinct !{!3, !237}
!4 = distinct !{!4, !237}
!5 = distinct !{!5, !237}
!6 = distinct !{!6, !237}
!7 = distinct !{!7, !237}
!8 = distinct !{!8, !237}
!9 = distinct !{!9, !237}
!10 = distinct !{!10, !237}
!11 = distinct !{!11, !237}
!12 = distinct !{!12, !237}
!13 = distinct !{!13, !237}
!14 = distinct !{!14, !237}
!15 = distinct !{!15, !237}
!16 = distinct !{!16, !237}
!17 = distinct !{!17, !237}
!18 = distinct !{!18, !237}
!19 = distinct !{!19, !237}
!20 = distinct !{!20, !237}
!21 = distinct !{!21, !237}
!22 = distinct !{!22, !237}
!23 = distinct !{!23, !237}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!27 = !{!"Simple C++ TBAA"}
!28 = !{!"omnipotent char", !27, i64 0}
!29 = !{!"int", !28, i64 0}
!30 = !{!"__libc_errno", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"bool", !28, i64 0}
!33 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEE", !29, i64 0, !29, i64 4, !28, i64 8, !32, i64 28}
!34 = !{!33, !29, i64 0}
!35 = !{!33, !29, i64 4}
!36 = !{!33, !32, i64 28}
!37 = !{!29, !29, i64 0}
!38 = !{!"_ZTSN2cv5RangeE", !29, i64 0, !29, i64 4}
!39 = !{!38, !29, i64 0}
!40 = !{!38, !29, i64 4}
!41 = !{!"vtable pointer", !27, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!44 = !{!"any pointer", !28, i64 0}
!45 = !{!"p1 omnipotent char", !44, i64 0}
!46 = !{!"long", !28, i64 0}
!47 = !{!"p1 _ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEE", !44, i64 0}
!48 = !{!"_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iIhEEEE", !43, i64 0, !45, i64 8, !46, i64 16, !45, i64 24, !46, i64 32, !29, i64 40, !47, i64 48}
!49 = !{!48, !45, i64 8}
!50 = !{!48, !46, i64 16}
!51 = !{!48, !45, i64 24}
!52 = !{!48, !46, i64 32}
!53 = !{!48, !29, i64 40}
!54 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEE", !29, i64 0, !29, i64 4, !32, i64 8, !28, i64 12}
!55 = !{!54, !29, i64 0}
!56 = !{!54, !29, i64 4}
!57 = !{!54, !32, i64 8}
!58 = !{!"p1 _ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEE", !44, i64 0}
!59 = !{!"_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_iItEEEE", !43, i64 0, !45, i64 8, !46, i64 16, !45, i64 24, !46, i64 32, !29, i64 40, !58, i64 48}
!60 = !{!59, !45, i64 8}
!61 = !{!59, !46, i64 16}
!62 = !{!59, !45, i64 24}
!63 = !{!59, !46, i64 32}
!64 = !{!59, !29, i64 40}
!65 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEE", !29, i64 0, !29, i64 4, !32, i64 8, !28, i64 12}
!66 = !{!65, !29, i64 0}
!67 = !{!65, !29, i64 4}
!68 = !{!65, !32, i64 8}
!69 = !{!"float", !28, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"p1 _ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEE", !44, i64 0}
!72 = !{!"_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111RGB2YCrCb_fIfEEEE", !43, i64 0, !45, i64 8, !46, i64 16, !45, i64 24, !46, i64 32, !29, i64 40, !71, i64 48}
!73 = !{!72, !45, i64 8}
!74 = !{!72, !46, i64 16}
!75 = !{!72, !45, i64 24}
!76 = !{!72, !46, i64 32}
!77 = !{!72, !29, i64 40}
!78 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !44, i64 0}
!79 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !78, i64 0, !29, i64 8}
!80 = !{!79, !29, i64 8}
!81 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEE", !29, i64 0, !29, i64 4, !32, i64 8, !28, i64 12}
!82 = !{!81, !29, i64 0}
!83 = !{!81, !29, i64 4}
!84 = !{!81, !32, i64 8}
!85 = !{!"p1 _ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEE", !44, i64 0}
!86 = !{!"_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iIhEEEE", !43, i64 0, !45, i64 8, !46, i64 16, !45, i64 24, !46, i64 32, !29, i64 40, !85, i64 48}
!87 = !{!86, !45, i64 8}
!88 = !{!86, !46, i64 16}
!89 = !{!86, !45, i64 24}
!90 = !{!86, !46, i64 32}
!91 = !{!86, !29, i64 40}
!92 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEE", !29, i64 0, !29, i64 4, !32, i64 8, !28, i64 12}
!93 = !{!92, !29, i64 0}
!94 = !{!92, !29, i64 4}
!95 = !{!92, !32, i64 8}
!96 = !{!"p1 _ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEE", !44, i64 0}
!97 = !{!"_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_iItEEEE", !43, i64 0, !45, i64 8, !46, i64 16, !45, i64 24, !46, i64 32, !29, i64 40, !96, i64 48}
!98 = !{!97, !45, i64 8}
!99 = !{!97, !46, i64 16}
!100 = !{!97, !45, i64 24}
!101 = !{!97, !46, i64 32}
!102 = !{!97, !29, i64 40}
!103 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEE", !29, i64 0, !29, i64 4, !32, i64 8, !28, i64 12}
!104 = !{!103, !29, i64 0}
!105 = !{!103, !29, i64 4}
!106 = !{!103, !32, i64 8}
!107 = !{!"p1 _ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEE", !44, i64 0}
!108 = !{!"_ZTSN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_111YCrCb2RGB_fIfEEEE", !43, i64 0, !45, i64 8, !46, i64 16, !45, i64 24, !46, i64 32, !29, i64 40, !107, i64 48}
!109 = !{!108, !45, i64 8}
!110 = !{!108, !46, i64 16}
!111 = !{!108, !45, i64 24}
!112 = !{!108, !46, i64 32}
!113 = !{!108, !29, i64 40}
!114 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!115 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !114, i64 0, !46, i64 8, !28, i64 16}
!116 = !{!115, !45, i64 0}
!117 = !{!28, !28, i64 0}
!118 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi3EEE", !43, i64 0, !45, i64 8, !46, i64 16, !29, i64 24, !45, i64 32, !46, i64 40, !45, i64 48, !46, i64 56}
!119 = !{!118, !45, i64 8}
!120 = !{!118, !46, i64 16}
!121 = !{!118, !29, i64 24}
!122 = !{!118, !45, i64 32}
!123 = !{!118, !46, i64 40}
!124 = !{!118, !45, i64 48}
!125 = !{!118, !46, i64 56}
!126 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi3EEE", !43, i64 0, !45, i64 8, !46, i64 16, !29, i64 24, !45, i64 32, !46, i64 40, !45, i64 48, !46, i64 56}
!127 = !{!126, !45, i64 8}
!128 = !{!126, !46, i64 16}
!129 = !{!126, !29, i64 24}
!130 = !{!126, !45, i64 32}
!131 = !{!126, !46, i64 40}
!132 = !{!126, !45, i64 48}
!133 = !{!126, !46, i64 56}
!134 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi0ELi3EEE", !43, i64 0, !45, i64 8, !46, i64 16, !29, i64 24, !45, i64 32, !46, i64 40, !45, i64 48, !46, i64 56}
!135 = !{!134, !45, i64 8}
!136 = !{!134, !46, i64 16}
!137 = !{!134, !29, i64 24}
!138 = !{!134, !45, i64 32}
!139 = !{!134, !46, i64 40}
!140 = !{!134, !45, i64 48}
!141 = !{!134, !46, i64 56}
!142 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi2ELi1ELi3EEE", !43, i64 0, !45, i64 8, !46, i64 16, !29, i64 24, !45, i64 32, !46, i64 40, !45, i64 48, !46, i64 56}
!143 = !{!142, !45, i64 8}
!144 = !{!142, !46, i64 16}
!145 = !{!142, !29, i64 24}
!146 = !{!142, !45, i64 32}
!147 = !{!142, !46, i64 40}
!148 = !{!142, !45, i64 48}
!149 = !{!142, !46, i64 56}
!150 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi0ELi4EEE", !43, i64 0, !45, i64 8, !46, i64 16, !29, i64 24, !45, i64 32, !46, i64 40, !45, i64 48, !46, i64 56}
!151 = !{!150, !45, i64 8}
!152 = !{!150, !46, i64 16}
!153 = !{!150, !29, i64 24}
!154 = !{!150, !45, i64 32}
!155 = !{!150, !46, i64 40}
!156 = !{!150, !45, i64 48}
!157 = !{!150, !46, i64 56}
!158 = !{!"_ZTSN2cv3hal12cpu_baseline12_GLOBAL__N_120YUV420sp2RGB8InvokerILi0ELi1ELi4EEE", !43, i64 0, !45, i64 8, !46, i64 16, !29, i64 24, !45, i64 32, !46, i64 40, !45, i64 48, !46, i64 56}
!159 = !{!158, !45, i64 8}
!160 = !{!158, !46, i64 16}
!161 = !{!158, !29, i64 24}
!162 = !{!158, !45, i64 32}
!163 = !{!158, !46, i64 40}
end_hunk_1
