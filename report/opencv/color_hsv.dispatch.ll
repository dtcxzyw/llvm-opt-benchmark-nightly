Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/color_hsv.dispatch?download=true
inline.NumInlined: 196
inline.NumDeleted: 91
begin_hunk_0_@_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19RGB2HSV_fEEclERKNS_5RangeE:bb.a
  %.1.i = select i1 %i.aw, float %i.ao, float %.0.i
  %i.ax = fsub float %.155.i, %.1.i               ; 2 uses
  %i.ay = call noundef float @llvm.fabs.f32(float %.155.i)
  %i.az = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.ax, i64 1
  %i.bb = fadd <2 x float> %i.ba, splat (float f0x34000000)
  %i.bc = insertelement <2 x float> <float poison, float 6.000000e+01>, float %i.ax, i64 0
  %i.bd = fdiv <2 x float> %i.bc, %i.bb           ; 4 uses
  %i.be = fcmp oeq float %.155.i, %i.as
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = fsub float %i.aq, %i.ao
  %i.bg = extractelement <2 x float> %i.bd, i64 1
  %i.bh = fmul float %i.bf, %i.bg
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.bi = fcmp oeq float %.155.i, %i.aq
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = fsub float %i.ao, %i.as
  %i.bk = extractelement <2 x float> %i.bd, i64 1
  %i.bl = call float @llvm.fmuladd.f32(float %i.bj, float %i.bk, float 1.200000e+02)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bm = fsub float %i.as, %i.aq
  %i.bn = extractelement <2 x float> %i.bd, i64 1
  %i.bo = call float @llvm.fmuladd.f32(float %i.bm, float %i.bn, float 2.400000e+02)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.056.i = phi float [ %i.bh, %bb.f ], [ %i.bl, %bb.h ], [ %i.bo, %bb.i ] ; 3 uses
  %i.bp = fcmp olt float %.056.i, 0.000000e+00
  %i.bq = fadd nnan float %.056.i, 3.600000e+02
  %.157.i = select i1 %i.bp, float %i.bq, float %.056.i
  %i.br = fmul float %i.ac, %.157.i
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.01215, i64 %indvars.iv.i ; 3 uses
  store float %i.br, ptr %i.bs, align 4, !tbaa !173
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = extractelement <2 x float> %i.bd, i64 0
  store float %i.bu, ptr %i.bt, align 4, !tbaa !173
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %.155.i, ptr %i.bv, align 4, !tbaa !173
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %.05967.i, i64 %i.al
  %i.bx = icmp samesign ult i64 %indvars.iv.next.i, %i.am
  br i1 %i.bx, label %bb.e, label %._crit_edge.i, !llvm.loop !174

._crit_edge.i:                                    ; preds = %bb.j, %.noexc
  %i.by = load i32, ptr %i.t, align 8, !tbaa !68
  %.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #16
  unreachable

bb.m:                                             ; preds = %bb.k, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.cb = add nsw i32 %.01314, 1                  ; 2 uses
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %.016, i64 %i.cc
  %i.ce = load i64, ptr %i.c, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %.01215, i64 %i.ce
  %i.cg = load i32, ptr %i.d, align 4, !tbaa !19
  %i.ch = icmp slt i32 %i.cb, %i.cg
  br i1 %i.ch, label %bb.d, label %._crit_edge, !llvm.loop !175

bb.n:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.ci
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19RGB2HLS_bEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19RGB2HLS_bEEclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %i.a = alloca [768 x float], align 16           ; 8 uses
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19RGB2HLS_bEEclERKNS_5RangeEE25__cv_trace_location_fn146)
  %i.b = load i32, ptr %1, align 4, !tbaa !17     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = icmp slt i32 %i.b, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.j = load i64, ptr %i.d, align 8, !tbaa !57
  %i.k = sext i32 %i.b to i64                     ; 2 uses
  %i.l = mul i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = load i64, ptr %i.c, align 8, !tbaa !55
  %i.q = mul i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !68
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #16
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.020 = phi ptr [ %i.r, %.lr.ph ], [ %i.ed, %bb.s ] ; 2 uses
  %.01219 = phi ptr [ %i.m, %.lr.ph ], [ %i.ef, %bb.s ] ; 2 uses
  %.01318 = phi i32 [ %i.b, %.lr.ph ], [ %i.eb, %bb.s ]
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !176, !nonnull !167, !align !172 ; 4 uses
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !58  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv3hal12cpu_baseline12_GLOBAL__N_19RGB2HLS_bclEPKhPhiE25__cv_trace_location_fn801)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ad = icmp sgt i32 %i.ab, 0
  br i1 %i.ad, label %.lr.ph54.i, label %._crit_edge55.i

.lr.ph54.i:                                       ; preds = %.noexc
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  br label %.lr.ph.preheader.i

._crit_edge55.i:                                  ; preds = %._crit_edge49.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ai = load i32, ptr %i.v, align 8, !tbaa !68
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %bb.s, label %bb.e

bb.e:                                             ; preds = %._crit_edge55.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.s unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #16
  unreachable

.lr.ph.preheader.i:                               ; preds = %._crit_edge49.i, %.lr.ph54.i
  %.03552.i = phi i32 [ 0, %.lr.ph54.i ], [ %i.dy, %._crit_edge49.i ] ; 2 uses
  %.03651.i = phi ptr [ %.020, %.lr.ph54.i ], [ %i.cv, %._crit_edge49.i ]
  %.03750.i = phi ptr [ %.01219, %.lr.ph54.i ], [ %i.dz, %._crit_edge49.i ] ; 4 uses
  %i.al = sub nuw nsw i32 %i.ab, %.03552.i
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.al, i32 256) ; 2 uses
  %i.am = mul nuw nsw i32 %.sroa.speculated.i, 3
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv3hal12cpu_baseline12_GLOBAL__N_19RGB2HLS_fclEPKfPfiE25__cv_trace_location_fn717)
          to label %.lr.ph.i16 unwind label %bb.r

.lr.ph.i16:                                       ; preds = %._crit_edge.i
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !49
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !50 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = xor i32 %i.ap, 2
  %i.as = sext i32 %i.ar to i64
  %i.at = sext i32 %i.ao to i64
  %i.au = load float, ptr %i.ah, align 4, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph.i16
  %.06376.i = phi i32 [ 0, %.lr.ph.i16 ], [ %i.cb, %bb.o ]
  %.06475.i = phi ptr [ %i.a, %.lr.ph.i16 ], [ %i.cc, %bb.o ] ; 4 uses
  %.06574.i = phi ptr [ %i.a, %.lr.ph.i16 ], [ %i.cd, %bb.o ] ; 4 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %.06475.i, i64 %i.aq
  %i.aw = load float, ptr %i.av, align 4, !tbaa !173 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.06475.i, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !173 ; 7 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.06475.i, i64 %i.as
  %i.ba = load float, ptr %i.az, align 4, !tbaa !173 ; 7 uses
  %i.bb = fcmp olt float %i.ba, %i.ay
  %.0.i = select i1 %i.bb, float %i.ay, float %i.ba ; 2 uses
  %i.bc = fcmp olt float %.0.i, %i.aw
  %.1.i = select i1 %i.bc, float %i.aw, float %.0.i ; 5 uses
  %i.bd = fcmp ogt float %i.ba, %i.ay
  %.058.i = select i1 %i.bd, float %i.ay, float %i.ba ; 2 uses
  %i.be = fcmp ogt float %.058.i, %i.aw
  %.159.i = select i1 %i.be, float %i.aw, float %.058.i ; 3 uses
  %i.bf = fsub float %.1.i, %.159.i               ; 3 uses
  %i.bg = fadd float %.1.i, %.159.i               ; 2 uses
  %i.bh = fmul float %i.bg, 5.000000e-01          ; 2 uses
  %i.bi = fcmp ogt float %i.bf, f0x34000000
  br i1 %i.bi, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.bj = fcmp olt float %i.bh, 5.000000e-01
  %i.bk = fsub float 2.000000e+00, %.1.i
  %i.bl = fsub float %i.bk, %.159.i
  %.pn.i = select i1 %i.bj, float %i.bg, float %i.bl
  %i.bm = fdiv float %i.bf, %.pn.i                ; 2 uses
  %i.bn = fdiv float 6.000000e+01, %i.bf          ; 3 uses
  %i.bo = fcmp oeq float %.1.i, %i.ba
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = fsub float %i.ay, %i.aw
  %i.bq = fmul float %i.bp, %i.bn
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.br = fcmp oeq float %.1.i, %i.ay
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = fsub float %i.aw, %i.ba
  %i.bt = call float @llvm.fmuladd.f32(float %i.bs, float %i.bn, float 1.200000e+02)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bu = fsub float %i.ba, %i.ay
  %i.bv = call float @llvm.fmuladd.f32(float %i.bu, float %i.bn, float 2.400000e+02)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.061.i = phi float [ %i.bq, %bb.i ], [ %i.bt, %bb.k ], [ %i.bv, %bb.l ] ; 3 uses
  %i.bw = fcmp olt float %.061.i, 0.000000e+00
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = fadd nnan float %.061.i, 3.600000e+02
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.g
  %.162.i = phi float [ %i.bx, %bb.n ], [ %.061.i, %bb.m ], [ 0.000000e+00, %bb.g ]
  %.060.i = phi float [ %i.bm, %bb.n ], [ %i.bm, %bb.m ], [ 0.000000e+00, %bb.g ]
  %i.by = fmul float %.162.i, %i.au
  store float %i.by, ptr %.06574.i, align 4, !tbaa !173
  %i.bz = getelementptr inbounds nuw i8, ptr %.06574.i, i64 4
  store float %i.bh, ptr %i.bz, align 4, !tbaa !173
  %i.ca = getelementptr inbounds nuw i8, ptr %.06574.i, i64 8
  store float %.060.i, ptr %i.ca, align 4, !tbaa !173
  %i.cb = add nuw nsw i32 %.06376.i, 1            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %.06475.i, i64 %i.at
  %i.cd = getelementptr inbounds nuw i8, ptr %.06574.i, i64 12
  %exitcond.not.i = icmp eq i32 %i.cb, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %._crit_edge.i14, label %bb.g, !llvm.loop !177

._crit_edge.i14:                                  ; preds = %bb.o
  %i.ce = load i32, ptr %i.u, align 8, !tbaa !68
  %.not.i.i15 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i15, label %.lr.ph48.preheader.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i14
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %.lr.ph48.preheader.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #16
  unreachable

.lr.ph48.preheader.i:                             ; preds = %bb.p, %._crit_edge.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.lr.ph48.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.144.i = phi ptr [ %.03651.i, %.lr.ph.preheader.i ], [ %i.cv, %.lr.ph.i ] ; 4 uses
  %i.ch = load i8, ptr %.144.i, align 1, !tbaa !137
  %i.ci = uitofp i8 %i.ch to float
  %i.cj = fmul nnan float %i.ci, f0x3B808081
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 3 uses
  store float %i.cj, ptr %i.ck, align 4, !tbaa !173
  %i.cl = getelementptr inbounds nuw i8, ptr %.144.i, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !137
  %i.cn = uitofp i8 %i.cm to float
  %i.co = fmul nnan float %i.cn, f0x3B808081
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store float %i.co, ptr %i.cp, align 4, !tbaa !173
  %i.cq = getelementptr inbounds nuw i8, ptr %.144.i, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !137
  %i.cs = uitofp i8 %i.cr to float
  %i.ct = fmul nnan float %i.cs, f0x3B808081
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %i.ct, ptr %i.cu, align 4, !tbaa !173
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.144.i, i64 %i.ae ; 2 uses
  %i.cw = icmp samesign ult i64 %indvars.iv.next.i, %i.an
  br i1 %i.cw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !178

.lr.ph48.i:                                       ; preds = %.lr.ph48.i, %.lr.ph48.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph48.preheader.i ], [ %indvars.iv.next59.i, %.lr.ph48.i ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv58.i
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !173
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.cz)
  %i.db = call i32 @llvm.smax.i32(i32 %i.da, i32 0)
  %i.dc = call i32 @llvm.umin.i32(i32 %i.db, i32 255)
  %i.dd = trunc nuw i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %.03750.i, i64 %indvars.iv58.i
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !137
  %i.df = add nuw nsw i64 %indvars.iv58.i, 1      ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.03750.i, i64 %i.df
  %i.di = load <2 x float>, ptr %i.dg, align 4, !tbaa !173
  %i.dj = fmul <2 x float> %i.di, splat (float 2.550000e+02) ; 2 uses
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dl = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dk)
  %i.dm = call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %i.dn = call i32 @llvm.umin.i32(i32 %i.dm, i32 255)
  %i.do = trunc nuw i32 %i.dn to i8
  store i8 %i.do, ptr %i.dh, align 1, !tbaa !137
  %i.dp = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dp)
  %i.dr = call i32 @llvm.smax.i32(i32 %i.dq, i32 0)
  %i.ds = call i32 @llvm.umin.i32(i32 %i.dr, i32 255)
  %i.dt = trunc nuw i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %.03750.i, i64 %indvars.iv58.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !137
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 3 ; 2 uses
  %i.dw = icmp samesign ult i64 %indvars.iv.next59.i, %i.an
  br i1 %i.dw, label %.lr.ph48.i, label %._crit_edge49.i, !llvm.loop !179

bb.r:                                             ; preds = %._crit_edge.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.body

._crit_edge49.i:                                  ; preds = %.lr.ph48.i
  %i.dy = add nuw nsw i32 %.03552.i, 256          ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.03750.i, i64 768
  %i.ea = icmp slt i32 %i.dy, %i.ab
  br i1 %i.ea, label %.lr.ph.preheader.i, label %._crit_edge55.i, !llvm.loop !180

bb.s:                                             ; preds = %bb.e, %._crit_edge55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.eb = add nsw i32 %.01318, 1                  ; 2 uses
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !55
  %i.ed = getelementptr inbounds nuw i8, ptr %.020, i64 %i.ec
  %i.ee = load i64, ptr %i.d, align 8, !tbaa !57
  %i.ef = getelementptr inbounds nuw i8, ptr %.01219, i64 %i.ee
  %i.eg = load i32, ptr %i.e, align 4, !tbaa !19
  %i.eh = icmp slt i32 %i.eb, %i.eg
  br i1 %i.eh, label %bb.d, label %._crit_edge, !llvm.loop !181

bb.t:                                             ; preds = %bb.d
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ei, %bb.t ], [ %i.dx, %bb.r ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19RGB2HLS_fEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19RGB2HLS_fEEclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19RGB2HLS_fEEclERKNS_5RangeEE25__cv_trace_location_fn146)
  %i.a = load i32, ptr %1, align 4, !tbaa !17     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = icmp slt i32 %i.a, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = load i64, ptr %i.c, align 8, !tbaa !65
  %i.j = sext i32 %i.a to i64                     ; 2 uses
  %i.k = mul i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.o = load i64, ptr %i.b, align 8, !tbaa !63
  %i.p = mul i64 %i.o, %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !68
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #16
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %.016 = phi ptr [ %i.q, %.lr.ph ], [ %i.by, %bb.p ] ; 2 uses
  %.01215 = phi ptr [ %i.l, %.lr.ph ], [ %i.ca, %bb.p ] ; 2 uses
  %.01314 = phi i32 [ %i.a, %.lr.ph ], [ %i.bw, %bb.p ]
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !182, !nonnull !167, !align !172 ; 3 uses
  %i.z = load i32, ptr %i.s, align 8, !tbaa !66   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv3hal12cpu_baseline12_GLOBAL__N_19RGB2HLS_fclEPKfPfiE25__cv_trace_location_fn717)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.d
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !50 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = xor i32 %i.ad, 2
  %i.ag = sext i32 %i.af to i64
end_hunk_0
begin_hunk_1_@_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19HSV2RGB_fEEclERKNS_5RangeE:bb.a

bb.f:                                             ; preds = %bb.e
  %i.aw = load float, ptr %i.aq, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ax = fmul float %i.ae, %i.aw                 ; 2 uses
  %i.ay = call float @llvm.floor.f32(float %i.ax)
  %i.az = fptosi float %i.ay to i32               ; 2 uses
  %i.ba = sitofp i32 %i.az to float
  %i.bb = fsub float %i.ax, %i.ba                 ; 2 uses
  %i.bc = srem i32 %i.az, 6                       ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  %i.be = select i1 %i.bd, i32 6, i32 0
  %i.bf = add nsw i32 %i.be, %i.bc
  store float %i.au, ptr %i.a, align 16, !tbaa !173
  %i.bg = fsub float 1.000000e+00, %i.as
  %i.bh = fmul float %i.au, %i.bg
  store float %i.bh, ptr %i.u, align 4, !tbaa !173
  %i.bi = fneg float %i.as
  %i.bj = fsub float 1.000000e+00, %i.bb
  %i.bk = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bj, i64 1
  %i.bo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bn, <2 x float> splat (float 1.000000e+00))
  %i.bp = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bq, %i.bo
  store <2 x float> %i.br, ptr %i.v, align 8, !tbaa !173
  %i.bs = sext i32 %i.bf to i64
  %i.bt = getelementptr inbounds [12 x i8], ptr @_ZZNK2cv3hal12cpu_baseline12_GLOBAL__N_19HLS2RGB_fclEPKfPfiE11sector_data, i64 %i.bs ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !145
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !173
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !145
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !173
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !145
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_114HSV2RGB_nativeEfffRfS3_S3_f.exit.i

_ZN2cv3hal12cpu_baseline12_GLOBAL__N_114HSV2RGB_nativeEfffRfS3_S3_f.exit.i: ; preds = %bb.f, %bb.e
  %.031.i = phi float [ %i.bx, %bb.f ], [ %i.au, %bb.e ]
  %.030.i = phi float [ %i.cc, %bb.f ], [ %i.au, %bb.e ]
  %.029.i = phi float [ %i.ch, %bb.f ], [ %i.au, %bb.e ]
  %i.ci = getelementptr inbounds [4 x i8], ptr %.033.i, i64 %i.ak
  store float %.031.i, ptr %i.ci, align 4, !tbaa !173
  %i.cj = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  store float %.030.i, ptr %i.cj, align 4, !tbaa !173
  %i.ck = getelementptr inbounds [4 x i8], ptr %.033.i, i64 %i.am
  store float %.029.i, ptr %i.ck, align 4, !tbaa !173
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_114HSV2RGB_nativeEfffRfS3_S3_f.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.033.i, i64 12
  store float 1.000000e+00, ptr %i.cl, align 4, !tbaa !173
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_114HSV2RGB_nativeEfffRfS3_S3_f.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %.033.i, i64 %i.ao
  %i.cn = icmp samesign ult i64 %indvars.iv.next.i, %i.ap
  br i1 %i.cn, label %bb.e, label %._crit_edge.i, !llvm.loop !188

._crit_edge.i:                                    ; preds = %bb.h, %.noexc
  %i.co = load i32, ptr %i.w, align 8, !tbaa !68
  %.not.i.i = icmp eq i32 %i.co, 0
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #16
  unreachable

bb.k:                                             ; preds = %bb.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.cr = add nsw i32 %.01314, 1                  ; 2 uses
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !90
  %i.ct = getelementptr inbounds nuw i8, ptr %.016, i64 %i.cs
  %i.cu = load i64, ptr %i.d, align 8, !tbaa !92
  %i.cv = getelementptr inbounds nuw i8, ptr %.01215, i64 %i.cu
  %i.cw = load i32, ptr %i.e, align 4, !tbaa !19
  %i.cx = icmp slt i32 %i.cr, %i.cw
  br i1 %i.cx, label %bb.d, label %._crit_edge, !llvm.loop !189

bb.l:                                             ; preds = %bb.d
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.cy
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19HLS2RGB_bEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19HLS2RGB_bEEclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %i.b = alloca [768 x float], align 16           ; 9 uses
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19HLS2RGB_bEEclERKNS_5RangeEE25__cv_trace_location_fn146)
  %i.c = load i32, ptr %1, align 4, !tbaa !17     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19
  %i.h = icmp slt i32 %i.c, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.k = load i64, ptr %i.e, align 8, !tbaa !106
  %i.l = sext i32 %i.c to i64                     ; 2 uses
  %i.m = mul i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = load i64, ptr %i.d, align 8, !tbaa !104
  %i.r = mul i64 %i.q, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !68
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #16
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %.020 = phi ptr [ %i.s, %.lr.ph ], [ %i.hm, %bb.t ] ; 2 uses
  %.01219 = phi ptr [ %i.n, %.lr.ph ], [ %i.ho, %bb.t ] ; 2 uses
  %.01318 = phi i32 [ %i.c, %.lr.ph ], [ %i.hk, %bb.t ]
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !190, !nonnull !167, !align !172 ; 4 uses
  %i.ae = load i32, ptr %i.u, align 8, !tbaa !107 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv3hal12cpu_baseline12_GLOBAL__N_19HLS2RGB_bclEPKhPhiE26__cv_trace_location_fn1097)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.d
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !95 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph57.i, label %._crit_edge58.i

.lr.ph57.i:                                       ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ai = icmp eq i32 %i.af, 4
  %i.aj = sext i32 %i.af to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.i, %.lr.ph57.i
  %.03855.i = phi i32 [ 0, %.lr.ph57.i ], [ %i.ga, %._crit_edge51.i ] ; 2 uses
  %.03954.i = phi ptr [ %.020, %.lr.ph57.i ], [ %i.gb, %._crit_edge51.i ] ; 15 uses
  %.04053.i = phi ptr [ %.01219, %.lr.ph57.i ], [ %i.hf, %._crit_edge51.i ]
  %i.am = sub nuw nsw i32 %i.ae, %.03855.i        ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.am, i32 256) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.speculated.i, 3
  %i.ao = zext nneg i32 %i.an to i64              ; 3 uses
  %i.ap = call i64 @llvm.umax.i64(i64 %i.ao, i64 3)
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = udiv i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp slt i32 %i.am, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.as, 9223372036854775804     ; 3 uses
  %i.at = mul i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = mul nuw i64 %index, 3                   ; 13 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.03954.i, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.03954.i, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  %i.ay = getelementptr i8, ptr %.03954.i, i64 %i.au
  %i.az = getelementptr i8, ptr %i.ay, i64 6
  %i.ba = getelementptr i8, ptr %.03954.i, i64 %i.au
  %i.bb = getelementptr i8, ptr %i.ba, i64 9
  %i.bc = load i8, ptr %i.av, align 1, !tbaa !137
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !137
  %i.be = load i8, ptr %i.az, align 1, !tbaa !137
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !137
  %i.bg = insertelement <4 x i8> poison, i8 %i.bc, i64 0
  %i.bh = insertelement <4 x i8> %i.bg, i8 %i.bd, i64 1
  %i.bi = insertelement <4 x i8> %i.bh, i8 %i.be, i64 2
  %i.bj = insertelement <4 x i8> %i.bi, i8 %i.bf, i64 3
  %i.bk = uitofp <4 x i8> %i.bj to <4 x float>
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.au
  %i.bm = getelementptr inbounds nuw i8, ptr %.03954.i, i64 %i.au
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.03954.i, i64 %i.au
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = getelementptr i8, ptr %.03954.i, i64 %i.au
  %i.br = getelementptr i8, ptr %i.bq, i64 7
  %i.bs = getelementptr i8, ptr %.03954.i, i64 %i.au
  %i.bt = getelementptr i8, ptr %i.bs, i64 10
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !137
  %i.bv = load i8, ptr %i.bp, align 1, !tbaa !137
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !137
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !137
  %i.by = insertelement <4 x i8> poison, i8 %i.bu, i64 0
  %i.bz = insertelement <4 x i8> %i.by, i8 %i.bv, i64 1
  %i.ca = insertelement <4 x i8> %i.bz, i8 %i.bw, i64 2
  %i.cb = insertelement <4 x i8> %i.ca, i8 %i.bx, i64 3
  %i.cc = uitofp <4 x i8> %i.cb to <4 x float>
  %i.cd = fmul nnan <4 x float> %i.cc, splat (float f0x3B808081)
  %i.ce = getelementptr inbounds nuw i8, ptr %.03954.i, i64 %i.au
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.03954.i, i64 %i.au
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 5
  %i.ci = getelementptr i8, ptr %.03954.i, i64 %i.au
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = getelementptr i8, ptr %.03954.i, i64 %i.au
  %i.cl = getelementptr i8, ptr %i.ck, i64 11
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !137
  %i.cn = load i8, ptr %i.ch, align 1, !tbaa !137
  %i.co = load i8, ptr %i.cj, align 1, !tbaa !137
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !137
  %i.cq = insertelement <4 x i8> poison, i8 %i.cm, i64 0
  %i.cr = insertelement <4 x i8> %i.cq, i8 %i.cn, i64 1
  %i.cs = insertelement <4 x i8> %i.cr, i8 %i.co, i64 2
  %i.ct = insertelement <4 x i8> %i.cs, i8 %i.cp, i64 3
  %i.cu = uitofp <4 x i8> %i.ct to <4 x float>
  %i.cv = fmul nnan <4 x float> %i.cu, splat (float f0x3B808081)
  %i.cw = shufflevector <4 x float> %i.bk, <4 x float> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cx = shufflevector <4 x float> %i.cv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.cw, <8 x float> %i.cx, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.bl, align 16, !tbaa !173
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.at, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.03954.i, i64 %indvars.iv.i
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.db = load <2 x i8>, ptr %i.cz, align 1, !tbaa !137
  %i.dc = uitofp <2 x i8> %i.db to <2 x float>
  %i.dd = fmul nnan <2 x float> %i.dc, <float 1.000000e+00, float f0x3B808081>
  store <2 x float> %i.dd, ptr %i.da, align 4, !tbaa !173
  %i.de = add nuw nsw i64 %indvars.iv.i, 2        ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.03954.i, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !137
  %i.dh = uitofp i8 %i.dg to float
  %i.di = fmul nnan float %i.dh, f0x3B808081
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.de
  store float %i.di, ptr %i.dj, align 4, !tbaa !173
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dk = icmp samesign ult i64 %indvars.iv.next.i, %i.ao
  br i1 %i.dk, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !194

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv3hal12cpu_baseline12_GLOBAL__N_19HLS2RGB_fclEPKfPfiE26__cv_trace_location_fn1014)
          to label %.lr.ph.i16 unwind label %bb.o

.lr.ph.i16:                                       ; preds = %._crit_edge.i
  %i.dl = load i32, ptr %i.ah, align 4, !tbaa !98 ; 2 uses
  %i.dm = load i32, ptr %i.ak, align 4, !tbaa !99 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = xor i32 %i.dm, 2
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp eq i32 %i.dl, 4
  %i.dr = sext i32 %i.dl to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %.lr.ph.i16
  %.052.i = phi ptr [ %i.b, %.lr.ph.i16 ], [ %i.fv, %bb.l ] ; 4 uses
  %.04151.i = phi ptr [ %i.b, %.lr.ph.i16 ], [ %i.fw, %bb.l ] ; 5 uses
  %.04550.i = phi i32 [ 0, %.lr.ph.i16 ], [ %i.fu, %bb.l ]
  %i.ds = load float, ptr %.052.i, align 4, !tbaa !173
  %i.dt = getelementptr inbounds nuw i8, ptr %.052.i, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !173 ; 8 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.052.i, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !173 ; 4 uses
  %i.dx = fcmp oeq float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.dy = fcmp ugt float %i.du, 5.000000e-01
  br i1 %i.dy, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dz = fadd float %i.dw, 1.000000e+00
  %i.ea = fmul float %i.du, %i.dz
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.eb = fadd float %i.du, %i.dw
  %i.ec = fneg float %i.du
  %i.ed = call float @llvm.fmuladd.f32(float %i.ec, float %i.dw, float %i.eb)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ee = phi float [ %i.ea, %bb.g ], [ %i.ed, %bb.h ] ; 3 uses
  %i.ef = load float, ptr %i.al, align 4, !tbaa !100
  %i.eg = fmul float %i.ds, %i.ef                 ; 2 uses
  %i.eh = call float @llvm.floor.f32(float %i.eg)
  %i.ei = fptosi float %i.eh to i32               ; 2 uses
  %i.ej = sitofp i32 %i.ei to float
  %i.ek = fsub float %i.eg, %i.ej                 ; 2 uses
  %i.el = srem i32 %i.ei, 6                       ; 2 uses
  %i.em = icmp slt i32 %i.el, 0
  %i.en = select i1 %i.em, i32 6, i32 0
  %i.eo = add nsw i32 %i.en, %i.el
  %i.ep = fneg float %i.ee
  %i.eq = call float @llvm.fmuladd.f32(float %i.du, float 2.000000e+00, float %i.ep) ; 3 uses
  store float %i.ee, ptr %i.a, align 16, !tbaa !173
  store float %i.eq, ptr %i.v, align 4, !tbaa !173
  %i.er = fsub float %i.ee, %i.eq
  %i.es = fsub float 1.000000e+00, %i.ek
  %i.et = insertelement <2 x float> poison, float %i.er, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.ek, i64 1
  %i.ex = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ew, <2 x float> %i.ey)
  store <2 x float> %i.ez, ptr %i.w, align 8, !tbaa !173
  %i.fa = sext i32 %i.eo to i64
  %i.fb = getelementptr inbounds [12 x i8], ptr @_ZZNK2cv3hal12cpu_baseline12_GLOBAL__N_19HLS2RGB_fclEPKfPfiE11sector_data, i64 %i.fa ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !145
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !173
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !145
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !173
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !145
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fn
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.044.i = phi float [ %i.ff, %bb.i ], [ %i.du, %bb.e ]
  %.043.i = phi float [ %i.fk, %bb.i ], [ %i.du, %bb.e ]
  %.042.i = phi float [ %i.fp, %bb.i ], [ %i.du, %bb.e ]
  %i.fq = getelementptr inbounds [4 x i8], ptr %.04151.i, i64 %i.dn
  store float %.044.i, ptr %i.fq, align 4, !tbaa !173
  %i.fr = getelementptr inbounds nuw i8, ptr %.04151.i, i64 4
  store float %.043.i, ptr %i.fr, align 4, !tbaa !173
  %i.fs = getelementptr inbounds [4 x i8], ptr %.04151.i, i64 %i.dp
  store float %.042.i, ptr %i.fs, align 4, !tbaa !173
  br i1 %i.dq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ft = getelementptr inbounds nuw i8, ptr %.04151.i, i64 12
  store float 1.000000e+00, ptr %i.ft, align 4, !tbaa !173
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fu = add nuw nsw i32 %.04550.i, 1            ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.052.i, i64 12
  %i.fw = getelementptr inbounds [4 x i8], ptr %.04151.i, i64 %i.dr
  %exitcond.not.i = icmp eq i32 %i.fu, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %._crit_edge.i14, label %bb.e, !llvm.loop !195

._crit_edge.i14:                                  ; preds = %bb.l
  %i.fx = load i32, ptr %i.x, align 8, !tbaa !68
  %.not.i.i15 = icmp eq i32 %i.fx, 0
  br i1 %.not.i.i15, label %.lr.ph50.preheader.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i14
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %.lr.ph50.preheader.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #16
  unreachable

.lr.ph50.preheader.i:                             ; preds = %bb.m, %._crit_edge.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.lr.ph50.i

._crit_edge51.i:                                  ; preds = %bb.q
  %i.ga = add nuw nsw i32 %.03855.i, 256          ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.03954.i, i64 768
  %i.gc = icmp slt i32 %i.ga, %i.ae
  br i1 %i.gc, label %.lr.ph.preheader.i, label %._crit_edge58.i, !llvm.loop !196

bb.o:                                             ; preds = %._crit_edge.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.body

.lr.ph50.i:                                       ; preds = %bb.q, %.lr.ph50.preheader.i
  %indvars.iv61.i = phi i64 [ 0, %.lr.ph50.preheader.i ], [ %indvars.iv.next62.i, %bb.q ] ; 2 uses
  %.148.i = phi ptr [ %.04053.i, %.lr.ph50.preheader.i ], [ %i.hf, %bb.q ] ; 5 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv61.i ; 3 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !173
  %i.gg = fmul float %i.gf, 2.550000e+02
  %i.gh = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.gi = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gh)
  %i.gj = call i32 @llvm.smax.i32(i32 %i.gi, i32 0)
  %i.gk = call i32 @llvm.umin.i32(i32 %i.gj, i32 255)
  %i.gl = trunc nuw i32 %i.gk to i8
  store i8 %i.gl, ptr %.148.i, align 1, !tbaa !137
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !173
  %i.go = fmul float %i.gn, 2.550000e+02
  %i.gp = insertelement <4 x float> poison, float %i.go, i64 0
  %i.gq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gp)
  %i.gr = call i32 @llvm.smax.i32(i32 %i.gq, i32 0)
  %i.gs = call i32 @llvm.umin.i32(i32 %i.gr, i32 255)
  %i.gt = trunc nuw i32 %i.gs to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %.148.i, i64 1
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !137
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !173
  %i.gx = fmul float %i.gw, 2.550000e+02
  %i.gy = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.gz = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gy)
  %i.ha = call i32 @llvm.smax.i32(i32 %i.gz, i32 0)
  %i.hb = call i32 @llvm.umin.i32(i32 %i.ha, i32 255)
  %i.hc = trunc nuw i32 %i.hb to i8
  %i.hd = getelementptr inbounds nuw i8, ptr %.148.i, i64 2
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !137
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph50.i
  %i.he = getelementptr inbounds nuw i8, ptr %.148.i, i64 3
  store i8 -1, ptr %i.he, align 1, !tbaa !137
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph50.i
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 3 ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %.148.i, i64 %i.aj ; 2 uses
  %i.hg = icmp samesign ult i64 %indvars.iv.next62.i, %i.ao
  br i1 %i.hg, label %.lr.ph50.i, label %._crit_edge51.i, !llvm.loop !197

._crit_edge58.i:                                  ; preds = %._crit_edge51.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.hh = load i32, ptr %i.y, align 8, !tbaa !68
  %.not.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge58.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #16
  unreachable

bb.t:                                             ; preds = %bb.r, %._crit_edge58.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.hk = add nsw i32 %.01318, 1                  ; 2 uses
  %i.hl = load i64, ptr %i.d, align 8, !tbaa !104
  %i.hm = getelementptr inbounds nuw i8, ptr %.020, i64 %i.hl
  %i.hn = load i64, ptr %i.e, align 8, !tbaa !106
  %i.ho = getelementptr inbounds nuw i8, ptr %.01219, i64 %i.hn
  %i.hp = load i32, ptr %i.f, align 4, !tbaa !19
  %i.hq = icmp slt i32 %i.hk, %i.hp
  br i1 %i.hq, label %bb.d, label %._crit_edge, !llvm.loop !198

bb.u:                                             ; preds = %bb.d
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.hr, %bb.u ], [ %i.gd, %bb.o ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19HLS2RGB_fEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19HLS2RGB_fEEclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv4impl12_GLOBAL__N_120CvtColorLoop_InvokerINS_3hal12cpu_baseline12_GLOBAL__N_19HLS2RGB_fEEclERKNS_5RangeEE25__cv_trace_location_fn146)
  %i.b = load i32, ptr %1, align 4, !tbaa !17     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = icmp slt i32 %i.b, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113
  %i.j = load i64, ptr %i.d, align 8, !tbaa !114
  %i.k = sext i32 %i.b to i64                     ; 2 uses
  %i.l = mul i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  %i.p = load i64, ptr %i.c, align 8, !tbaa !112
  %i.q = mul i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !68
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #16
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %.016 = phi ptr [ %i.r, %.lr.ph ], [ %i.cx, %bb.o ] ; 2 uses
  %.01215 = phi ptr [ %i.m, %.lr.ph ], [ %i.cz, %bb.o ] ; 2 uses
  %.01314 = phi i32 [ %i.b, %.lr.ph ], [ %i.cv, %bb.o ]
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !199, !nonnull !167, !align !172 ; 3 uses
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !115 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv3hal12cpu_baseline12_GLOBAL__N_19HLS2RGB_fclEPKfPfiE26__cv_trace_location_fn1014)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.noexc
end_hunk_1
