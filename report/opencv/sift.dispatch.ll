Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sift.dispatch?download=true
inline.NumInlined: 1019
inline.NumDeleted: 410
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv12cpu_baseline21findScaleSpaceExtremaEiiiiiiidddRKSt6vectorINS_3MatESaIS2_EES6_RS1_INS_8KeyPointESaIS7_EERKNS_5RangeE:bb.a
  %i.ta = fadd float %i.sz, %i.sy
  %i.tb = fmul float %i.ta, f0x3A808081           ; 2 uses
  %i.tc = fneg float %i.tb
  %i.td = fmul float %i.tb, %i.tc
  %i.te = call float @llvm.fmuladd.f32(float %i.sp, float %i.ss, float %i.td) ; 2 uses
  %i.tf = fcmp ugt float %i.te, 0.000000e+00
  br i1 %i.tf, label %bb.w, label %.critedge.i.i

bb.w:                                             ; preds = %bb.v
  %i.tg = fadd float %i.sp, %i.ss                 ; 2 uses
  %i.th = fmul float %i.tg, %i.tg
  %i.ti = fmul float %i.th, %i.bl
  %i.tj = fmul float %i.br, %i.te
  %i.tk = fcmp ult float %i.ti, %i.tj
  br i1 %i.tk, label %bb.x, label %.critedge.i.i

bb.x:                                             ; preds = %bb.w
  %i.tl = sitofp i32 %.0315.i to float
  %i.tm = fsub float %i.tl, %.fca.1.extract.i.i.i
  %i.tn = fdiv float %i.tm, %i.bp
  %exp2f.i221.i = invoke float @exp2f(float %i.tn)
          to label %exp2f.i.noexc.i unwind label %bb.ac

exp2f.i.noexc.i:                                  ; preds = %bb.x
  %i.to = shl i32 %.0315.i, 8
  %i.tp = add nsw i32 %i.to, %0
  %i.tq = fpext nnan ninf float %i.qn to double
  %i.tr = fadd nnan double %i.tq, 5.000000e-01
  %i.ts = fmul nnan double %i.tr, 2.550000e+02
  %i.tt = insertelement <2 x double> poison, double %i.ts, i64 0
  %i.tu = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.tt)
  %i.tv = shl i32 %i.tu, 16
  %i.tw = add nsw i32 %i.tp, %i.tv
  %i.tx = sitofp i32 %.0318.i to float
  %i.ty = uitofp nneg i32 %.0316.i to float
  %i.tz = insertelement <2 x float> poison, float %i.ty, i64 0
  %i.ua = insertelement <2 x float> %i.tz, float %i.tx, i64 1
  %i.ub = fsub nnan <2 x float> %i.ua, %.fca.0.extract.i.i.i
  %i.uc = fmul <2 x float> %i.ub, %i.cb
  %i.ud = fmul float %exp2f.i221.i, %i.bm
  %i.ue = fmul float %i.ud, %i.bt
  %i.uf = fmul float %i.ue, 2.000000e+00
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %exp2f.i.noexc.i, %bb.w, %bb.v, %bb.u
  %.sroa.16.0.i = phi float [ 0.000000e+00, %bb.u ], [ %i.sk, %exp2f.i.noexc.i ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.t ] ; 2 uses
  %.sroa.10.0.i = phi float [ 0.000000e+00, %bb.u ], [ %i.uf, %exp2f.i.noexc.i ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.t ] ; 3 uses
  %.1319.i = phi i32 [ %.0318.i, %bb.u ], [ %.0318.i, %exp2f.i.noexc.i ], [ %.0318.i, %bb.w ], [ %.0318.i, %bb.v ], [ %i.re, %bb.t ], [ %i.re, %bb.s ], [ %i.re, %bb.r ], [ %.0318.i, %bb.q ]
  %.1317.i = phi i32 [ %.0316.i, %bb.u ], [ %.0316.i, %exp2f.i.noexc.i ], [ %.0316.i, %bb.w ], [ %.0316.i, %bb.v ], [ %i.rb, %bb.t ], [ %i.rb, %bb.s ], [ %i.rb, %bb.r ], [ %.0316.i, %bb.q ]
  %.1.i = phi i32 [ %.0315.i, %bb.u ], [ %.0315.i, %exp2f.i.noexc.i ], [ %.0315.i, %bb.w ], [ %.0315.i, %bb.v ], [ %i.rh, %bb.t ], [ %i.rh, %bb.s ], [ %i.rh, %bb.r ], [ %.0315.i, %bb.q ]
  %.sroa.18.0.i = phi i32 [ 0, %bb.u ], [ %i.tw, %exp2f.i.noexc.i ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ] ; 2 uses
  %.5252.i.i = phi i1 [ false, %bb.u ], [ true, %exp2f.i.noexc.i ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.t ]
  %i.ug = phi <2 x float> [ zeroinitializer, %bb.u ], [ %i.uc, %exp2f.i.noexc.i ], [ zeroinitializer, %bb.w ], [ zeroinitializer, %bb.v ], [ zeroinitializer, %bb.q ], [ zeroinitializer, %bb.r ], [ zeroinitializer, %bb.s ], [ zeroinitializer, %bb.t ] ; 2 uses
  %i.uh = load i32, ptr %i.t, align 8, !tbaa !18
  %.not.i.i.i = icmp eq i32 %i.uh, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.critedge.i.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %16)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ui = landingpad { ptr, i32 }
          catch ptr null
  %i.uj = extractvalue { ptr, i32 } %i.ui, 0
  call void @__clang_call_terminate(ptr %i.uj) #25
  unreachable

bb.aa:                                            ; preds = %bb.y, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br i1 %.5252.i.i, label %bb.ad, label %.critedge176.i

bb.ab:                                            ; preds = %bb.l
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ac:                                            ; preds = %bb.x, %bb.m
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ad:                                            ; preds = %bb.aa
  %i.um = fmul float %.sroa.10.0.i, 5.000000e-01
  %i.un = fdiv float %i.um, %i.bt                 ; 2 uses
  %i.uo = add nsw i32 %.1.i, %i.bv
  %i.up = sext i32 %i.uo to i64
  %i.uq = load ptr, ptr %10, align 8, !tbaa !15
  %i.ur = getelementptr inbounds nuw [208 x i8], ptr %i.uq, i64 %i.up ; 5 uses
  %i.us = fmul float %i.un, 4.500000e+00
  %i.ut = insertelement <4 x float> poison, float %i.us, i64 0
  %i.uu = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ut) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baselineL19calcOrientationHistERKNS_3MatENS_6Point_IiEEifPfiE25__cv_trace_location_fn166)
          to label %.noexc227.i unwind label %bb.az

.noexc227.i:                                      ; preds = %bb.ad
  %i.uv = fmul float %i.un, 1.500000e+00          ; 2 uses
  %i.uw = fmul float %i.uv, 2.000000e+00
  %i.ux = fmul float %i.uv, %i.uw
  %i.uy = fdiv float -1.000000e+00, %i.ux
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  invoke void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %15, i1 noundef zeroext false)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %.noexc227.i
  %i.uz = shl nsw i32 %i.uu, 1
  %i.va = or disjoint i32 %i.uz, 1                ; 2 uses
  %i.vb = mul nsw i32 %i.va, %i.va
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store ptr null, ptr %i.e, align 8, !tbaa !36
  %i.vc = zext nneg i32 %i.vb to i64              ; 4 uses
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.vc, i16 noundef zeroext 16)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.vc, i16 noundef zeroext 16)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.vc, i16 noundef zeroext 16)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.vc, i16 noundef zeroext 16)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 40, i16 noundef zeroext 16)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %15)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.vd = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8 ; 2 uses
  store ptr %i.ve, ptr %i.e, align 8, !tbaa !36
  %i.vf = load ptr, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.ve, i8 0, i64 144, i1 false), !tbaa !30
  %i.vg = sub i32 0, %i.uu                        ; 2 uses
  %.not131.i.i = icmp slt i32 %i.uu, 0
  br i1 %.not131.i.i, label %._crit_edge.i.i, label %.lr.ph134.split.preheader.i.i

bb.al:                                            ; preds = %.noexc227.i
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.am:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.vi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %15) #24
  br label %bb.ax

.lr.ph134.split.preheader.i.i:                    ; preds = %bb.ak
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ur, i64 12
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ur, i64 24
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ur, i64 128
  %i.vo = add nuw i32 %i.uu, 1
  %i.vp = sext i32 %i.vg to i64
  %i.vq = sext i32 %.1319.i to i64
  br label %.lr.ph134.split.i.i

.lr.ph134.split.i.i:                              ; preds = %..loopexit_crit_edge.i.i, %.lr.ph134.split.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.vp, %.lr.ph134.split.preheader.i.i ], [ %indvars.iv.next.i.i, %..loopexit_crit_edge.i.i ] ; 4 uses
  %.099133.i.i = phi i32 [ 0, %.lr.ph134.split.preheader.i.i ], [ %.3.i.i, %..loopexit_crit_edge.i.i ] ; 3 uses
  %i.vr = add nsw i64 %indvars.iv.i.i, %i.vq      ; 5 uses
  %i.vs = icmp slt i64 %i.vr, 1
  br i1 %i.vs, label %..loopexit_crit_edge.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph134.split.i.i
  %i.vt = load i32, ptr %i.vj, align 8, !tbaa !33
  %i.vu = add nsw i32 %i.vt, -1
  %i.vv = sext i32 %i.vu to i64
  %.not113.i.i = icmp slt i64 %i.vr, %i.vv
  br i1 %.not113.i.i, label %.preheader126.i.i, label %..loopexit_crit_edge.i.i

.preheader126.i.i:                                ; preds = %bb.an
  %i.vw = add nsw i64 %i.vr, -1
  %i.vx = add nuw nsw i64 %i.vr, 1
  %i.vy = load ptr, ptr %i.b, align 8
  %i.vz = mul nsw i64 %indvars.iv.i.i, %indvars.iv.i.i
  %i.wa = load ptr, ptr %i.d, align 8
  %i.wb = trunc nuw nsw i64 %i.vz to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %.preheader126.i.i
  %.1100130.i.i = phi i32 [ %.099133.i.i, %.preheader126.i.i ], [ %.2101.i.i, %bb.ar ] ; 4 uses
  %.0102129.i.i = phi i32 [ %i.vg, %.preheader126.i.i ], [ %i.xi, %bb.ar ] ; 5 uses
  %i.wc = add nsw i32 %.0102129.i.i, %.1317.i     ; 3 uses
  %i.wd = icmp slt i32 %i.wc, 1
  br i1 %i.wd, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.we = load i32, ptr %i.vk, align 4, !tbaa !32
  %i.wf = add nsw i32 %i.we, -1
  %.not115.i.i = icmp slt i32 %i.wc, %i.wf
  br i1 %.not115.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.wg = load i32, ptr %i.vl, align 4, !tbaa !31
  %i.wh = icmp slt i32 %i.wg, 2                   ; 3 uses
  %i.wi = load ptr, ptr %i.vm, align 8, !tbaa !26 ; 3 uses
  %i.wj = load i64, ptr %i.vn, align 8            ; 3 uses
  %i.wk = mul i64 %i.wj, %i.vr
  %.sink.idx.i.i225.i = select i1 %i.wh, i64 0, i64 %i.wk
  %.sink.i.i226.i = getelementptr inbounds nuw i8, ptr %i.wi, i64 %.sink.idx.i.i225.i
  %i.wl = zext nneg i32 %i.wc to i64              ; 3 uses
  %i.wm = getelementptr [4 x i8], ptr %.sink.i.i226.i, i64 %i.wl ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !30
  %i.wp = getelementptr i8, ptr %i.wm, i64 -4
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !30
  %i.wr = fsub float %i.wo, %i.wq
  %i.ws = mul i64 %i.wj, %i.vw
  %.sink.idx.i121.i.i = select i1 %i.wh, i64 0, i64 %i.ws
  %.sink.i122.i.i = getelementptr inbounds nuw i8, ptr %i.wi, i64 %.sink.idx.i121.i.i
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %.sink.i122.i.i, i64 %i.wl
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !30
  %i.wv = mul i64 %i.wj, %i.vx
  %.sink.idx.i123.i.i = select i1 %i.wh, i64 0, i64 %i.wv
  %.sink.i124.i.i = getelementptr inbounds nuw i8, ptr %i.wi, i64 %.sink.idx.i123.i.i
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.sink.i124.i.i, i64 %i.wl
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !30
  %i.wy = fsub float %i.wu, %i.wx
  %i.wz = sext i32 %.1100130.i.i to i64           ; 3 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.wz
  store float %i.wr, ptr %i.xa, align 4, !tbaa !30
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.vy, i64 %i.wz
  store float %i.wy, ptr %i.xb, align 4, !tbaa !30
  %i.xc = mul nsw i32 %.0102129.i.i, %.0102129.i.i
  %i.xd = add nuw nsw i32 %i.xc, %i.wb
  %i.xe = uitofp nneg i32 %i.xd to float
  %i.xf = fmul float %i.uy, %i.xe
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %i.wz
  store float %i.xf, ptr %i.xg, align 4, !tbaa !30
  %i.xh = add nsw i32 %.1100130.i.i, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.2101.i.i = phi i32 [ %i.xh, %bb.aq ], [ %.1100130.i.i, %bb.ap ], [ %.1100130.i.i, %bb.ao ] ; 2 uses
  %i.xi = add i32 %.0102129.i.i, 1
  %exitcond.not.i224.i = icmp eq i32 %.0102129.i.i, %i.uu
  br i1 %exitcond.not.i224.i, label %..loopexit_crit_edge.i.i, label %bb.ao, !llvm.loop !128

..loopexit_crit_edge.i.i:                         ; preds = %bb.ar, %bb.an, %.lr.ph134.split.i.i
  %.3.i.i = phi i32 [ %.099133.i.i, %.lr.ph134.split.i.i ], [ %.099133.i.i, %bb.an ], [ %.2101.i.i, %bb.ar ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond144.not.i.i = icmp eq i32 %i.vo, %lftr.wideiv.i.i
  br i1 %exitcond144.not.i.i, label %._crit_edge.i.i, label %.lr.ph134.split.i.i, !llvm.loop !129

._crit_edge.i.i:                                  ; preds = %..loopexit_crit_edge.i.i, %bb.ak
  %.099.lcssa.i.i = phi i32 [ 0, %bb.ak ], [ %.3.i.i, %..loopexit_crit_edge.i.i ] ; 5 uses
  %i.xj = load ptr, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  invoke void @_ZN2cv3hal6exp32fEPKfPfi(ptr noundef %i.xj, ptr noundef %i.xj, i32 noundef %.099.lcssa.i.i)
          to label %bb.as unwind label %bb.am

bb.as:                                            ; preds = %._crit_edge.i.i
  %i.xk = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.xl = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.xm = load ptr, ptr %i.c, align 8, !tbaa !36
  invoke void @_ZN2cv3hal9fastAtan2EPKfS2_Pfib(ptr noundef %i.xk, ptr noundef %i.xl, ptr noundef %i.xm, i32 noundef %.099.lcssa.i.i, i1 noundef zeroext true)
          to label %bb.at unwind label %bb.am

bb.at:                                            ; preds = %bb.as
  %i.xn = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.xo = load ptr, ptr %i.b, align 8, !tbaa !36
  invoke void @_ZN2cv3hal12magnitude32fEPKfS2_Pfi(ptr noundef %i.xn, ptr noundef %i.xo, ptr noundef %i.vf, i32 noundef %.099.lcssa.i.i)
          to label %.preheader.i.i unwind label %bb.am

.preheader.i.i:                                   ; preds = %bb.at
  %i.xp = icmp sgt i32 %.099.lcssa.i.i, 0
  %.pre.i222.i = load ptr, ptr %i.e, align 8, !tbaa !36 ; 41 uses
  br i1 %i.xp, label %.lr.ph.i.i, label %._crit_edge137.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.xq = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.xr = load ptr, ptr %i.d, align 8, !tbaa !36
  %wide.trip.count.i.i = zext nneg i32 %.099.lcssa.i.i to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.i.i
  %indvars.iv145.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next146.i.i, %bb.au ] ; 4 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %indvars.iv145.i.i
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !30
  %i.xu = fmul float %i.xt, 1.000000e-01
  %i.xv = insertelement <4 x float> poison, float %i.xu, i64 0
  %i.xw = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.xv) ; 3 uses
  %i.xx = icmp sgt i32 %i.xw, 35
  %i.xy = add nsw i32 %i.xw, -36
  %spec.select.i.i = select i1 %i.xx, i32 %i.xy, i32 %i.xw ; 3 uses
  %i.xz = icmp slt i32 %spec.select.i.i, 0
  %i.ya = add nsw i32 %spec.select.i.i, 36
  %.1.i.i = select i1 %i.xz, i32 %i.ya, i32 %spec.select.i.i
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %indvars.iv145.i.i
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !30
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %indvars.iv145.i.i
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !30
  %i.yf = sext i32 %.1.i.i to i64
  %i.yg = getelementptr inbounds [4 x i8], ptr %.pre.i222.i, i64 %i.yf ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !30
  %i.yi = call float @llvm.fmuladd.f32(float %i.yc, float %i.ye, float %i.yh)
  store float %i.yi, ptr %i.yg, align 4, !tbaa !30
  %indvars.iv.next146.i.i = add nuw nsw i64 %indvars.iv145.i.i, 1 ; 2 uses
  %exitcond148.not.i.i = icmp eq i64 %indvars.iv.next146.i.i, %wide.trip.count.i.i
  br i1 %exitcond148.not.i.i, label %._crit_edge137.i.i, label %bb.au, !llvm.loop !130

._crit_edge137.i.i:                               ; preds = %bb.au, %.preheader.i.i
  %i.yj = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 136
  %i.yk = getelementptr inbounds i8, ptr %.pre.i222.i, i64 -8
  %i.yl = load <2 x float>, ptr %i.yj, align 4, !tbaa !30
  store <2 x float> %i.yl, ptr %i.yk, align 4, !tbaa !30
  %i.ym = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 144
  %i.yn = load <2 x float>, ptr %.pre.i222.i, align 4, !tbaa !30 ; 2 uses
  store <2 x float> %i.yn, ptr %i.ym, align 4, !tbaa !30
  %i.yo = shufflevector <2 x float> %i.yn, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.yp = getelementptr i8, ptr %.pre.i222.i, i64 -8
  %wide.load = load <4 x float>, ptr %i.yp, align 4, !tbaa !30
  %i.yq = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 8
  %wide.load161 = load <4 x float>, ptr %i.yq, align 4, !tbaa !30
  %i.yr = fadd <4 x float> %wide.load, %wide.load161
  %i.ys = getelementptr i8, ptr %.pre.i222.i, i64 -4
  %wide.load162 = load <4 x float>, ptr %i.ys, align 4, !tbaa !30
  %i.yt = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 4
  %wide.load163 = load <4 x float>, ptr %i.yt, align 4, !tbaa !30 ; 3 uses
  %i.yu = shufflevector <4 x float> %i.yo, <4 x float> %wide.load163, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.yv = fadd <4 x float> %wide.load162, %wide.load163
  %i.yw = fmul <4 x float> %i.yv, splat (float 2.500000e-01)
  %i.yx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yr, <4 x float> splat (float 6.250000e-02), <4 x float> %i.yw)
  %i.yy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yu, <4 x float> splat (float 3.750000e-01), <4 x float> %i.yx)
  store <4 x float> %i.yy, ptr %i.f, align 16, !tbaa !30
  %i.yz = getelementptr i8, ptr %.pre.i222.i, i64 8
  %wide.load.1 = load <4 x float>, ptr %i.yz, align 4, !tbaa !30
  %i.za = getelementptr i8, ptr %.pre.i222.i, i64 24
  %wide.load161.1 = load <4 x float>, ptr %i.za, align 4, !tbaa !30
  %i.zb = fadd <4 x float> %wide.load.1, %wide.load161.1
  %i.zc = getelementptr i8, ptr %.pre.i222.i, i64 12
  %wide.load162.1 = load <4 x float>, ptr %i.zc, align 4, !tbaa !30
  %i.zd = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 20
  %wide.load163.1 = load <4 x float>, ptr %i.zd, align 4, !tbaa !30 ; 3 uses
  %i.ze = shufflevector <4 x float> %wide.load163, <4 x float> %wide.load163.1, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.zf = fadd <4 x float> %wide.load162.1, %wide.load163.1
  %i.zg = fmul <4 x float> %i.zf, splat (float 2.500000e-01)
  %i.zh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zb, <4 x float> splat (float 6.250000e-02), <4 x float> %i.zg)
  %i.zi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ze, <4 x float> splat (float 3.750000e-01), <4 x float> %i.zh)
  store <4 x float> %i.zi, ptr %i.cc, align 16, !tbaa !30
  %i.zj = getelementptr i8, ptr %.pre.i222.i, i64 24
  %wide.load.2 = load <4 x float>, ptr %i.zj, align 4, !tbaa !30
  %i.zk = getelementptr i8, ptr %.pre.i222.i, i64 40
  %wide.load161.2 = load <4 x float>, ptr %i.zk, align 4, !tbaa !30
  %i.zl = fadd <4 x float> %wide.load.2, %wide.load161.2
  %i.zm = getelementptr i8, ptr %.pre.i222.i, i64 28
  %wide.load162.2 = load <4 x float>, ptr %i.zm, align 4, !tbaa !30
  %i.zn = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 36
  %wide.load163.2 = load <4 x float>, ptr %i.zn, align 4, !tbaa !30 ; 3 uses
  %i.zo = shufflevector <4 x float> %wide.load163.1, <4 x float> %wide.load163.2, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.zp = fadd <4 x float> %wide.load162.2, %wide.load163.2
  %i.zq = fmul <4 x float> %i.zp, splat (float 2.500000e-01)
  %i.zr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zl, <4 x float> splat (float 6.250000e-02), <4 x float> %i.zq)
  %i.zs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zo, <4 x float> splat (float 3.750000e-01), <4 x float> %i.zr)
  store <4 x float> %i.zs, ptr %i.cd, align 16, !tbaa !30
  %i.zt = getelementptr i8, ptr %.pre.i222.i, i64 40
  %wide.load.3 = load <4 x float>, ptr %i.zt, align 4, !tbaa !30
  %i.zu = getelementptr i8, ptr %.pre.i222.i, i64 56
  %wide.load161.3 = load <4 x float>, ptr %i.zu, align 4, !tbaa !30
  %i.zv = fadd <4 x float> %wide.load.3, %wide.load161.3
  %i.zw = getelementptr i8, ptr %.pre.i222.i, i64 44
  %wide.load162.3 = load <4 x float>, ptr %i.zw, align 4, !tbaa !30
  %i.zx = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 52
  %wide.load163.3 = load <4 x float>, ptr %i.zx, align 4, !tbaa !30 ; 3 uses
  %i.zy = shufflevector <4 x float> %wide.load163.2, <4 x float> %wide.load163.3, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.zz = fadd <4 x float> %wide.load162.3, %wide.load163.3
  %i.aaa = fmul <4 x float> %i.zz, splat (float 2.500000e-01)
  %i.aab = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zv, <4 x float> splat (float 6.250000e-02), <4 x float> %i.aaa)
  %i.aac = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zy, <4 x float> splat (float 3.750000e-01), <4 x float> %i.aab)
  store <4 x float> %i.aac, ptr %i.ce, align 16, !tbaa !30
  %i.aad = getelementptr i8, ptr %.pre.i222.i, i64 56
  %wide.load.4 = load <4 x float>, ptr %i.aad, align 4, !tbaa !30
  %i.aae = getelementptr i8, ptr %.pre.i222.i, i64 72
  %wide.load161.4 = load <4 x float>, ptr %i.aae, align 4, !tbaa !30
  %i.aaf = fadd <4 x float> %wide.load.4, %wide.load161.4
  %i.aag = getelementptr i8, ptr %.pre.i222.i, i64 60
  %wide.load162.4 = load <4 x float>, ptr %i.aag, align 4, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZNK2cv9SIFT_Impl15buildDoGPyramidERKSt6vectorINS_3MatESaIS2_EERS4_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.x = sub nuw nsw i64 %i.o, %i.v
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.x)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.y = icmp ugt i64 %i.v, %i.o
  br i1 %i.y, label %bb.d, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [208 x i8], ptr %i.r, i64 %i.o ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, %i.z
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.z, %bb.d ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.q
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.z, ptr %i.p, align 8, !tbaa !75
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ab = load i32, ptr %i.i, align 4, !tbaa !73  ; 2 uses
  %i.ac = add nsw i32 %i.ab, 2
  %i.ad = mul nsw i32 %i.ac, %i.l
  store i32 0, ptr %4, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv23buildDoGPyramidComputerE, i64 16), ptr %5, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ab, ptr %i.af, align 8, !tbaa !86
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.ag, align 8, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.ah, align 8, !tbaa !87
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef -1.000000e+00)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #25
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.h:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.am, %bb.h ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv9SIFT_Impl21findScaleSpaceExtremaERKSt6vectorINS_3MatESaIS2_EES6_RS1_INS_8KeyPointESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(45) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %5 = alloca %"class.cv::TLSDataAccumulator", align 8 ; 12 uses
  %6 = alloca %"class.cv::Range", align 4         ; 6 uses
  %7 = alloca %"class.cv::findScaleSpaceExtremaComputer", align 8 ; 19 uses
  %8 = alloca %"class.std::vector.23", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv9SIFT_Impl21findScaleSpaceExtremaERKSt6vectorINS_3MatESaIS2_EES6_RS1_INS_8KeyPointESaIS7_EEE25__cv_trace_location_fn371)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = load ptr, ptr %1, align 8, !tbaa !15
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 208
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73   ; 2 uses
  %i.k = add nsw i32 %i.j, 3
  %i.l = sdiv i32 %i.h, %i.k                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !88
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = sitofp i32 %i.j to double
  %i.q = fdiv double %i.o, %i.p
  %i.r = fmul double %i.q, 2.550000e+02
  %i.s = call double @llvm.floor.f64(double %i.r)
  %i.t = fptosi double %i.s to i32
  %i.u = load ptr, ptr %3, align 8, !tbaa !42     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.u, ptr %i.v, align 8, !tbaa !39
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZN2cv16TLSDataContainerC2Ev(ptr noundef nonnull align 8 dereferenceable(105) %5)
          to label %_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEEC2Ev.exit unwind label %bb.b

_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEEC2Ev.exit: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEEE, i64 16), ptr %5, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.y, align 8, !tbaa !192
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i8 0, i64 49, i1 false)
  %i.aa = icmp sgt i32 %i.l, 0
  br i1 %i.aa, label %.preheader49.lr.ph, label %._crit_edge56

.preheader49.lr.ph:                               ; preds = %_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEEC2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ap = load i32, ptr %i.i, align 4, !tbaa !73  ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %._crit_edge56, label %.preheader49

.preheader49:                                     ; preds = %.preheader49.lr.ph, %._crit_edge
  %i.ar = phi i32 [ %i.ax, %._crit_edge ], [ %i.ap, %.preheader49.lr.ph ] ; 3 uses
  %.03555 = phi i32 [ %i.ay, %._crit_edge ], [ 0, %.preheader49.lr.ph ] ; 3 uses
  %.not53 = icmp slt i32 %i.ar, 1
  br i1 %.not53, label %._crit_edge, label %.lr.ph

._crit_edge56:                                    ; preds = %._crit_edge, %.preheader49.lr.ph, %_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEEC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEE6gatherERS1_IPS4_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(105) %5, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.preheader unwind label %bb.j

.preheader:                                       ; preds = %._crit_edge56
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !92
  %i.au = load ptr, ptr %8, align 8, !tbaa !93    ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64
  %.not = icmp eq ptr %i.at, %i.au
  br i1 %.not, label %._crit_edge59, label %.lr.ph58

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge:                                      ; preds = %bb.d, %.preheader49
  %i.ax = phi i32 [ %i.ar, %.preheader49 ], [ %i.br, %bb.d ]
  %i.ay = add nuw nsw i32 %.03555, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %i.l
  br i1 %exitcond.not, label %._crit_edge56, label %.preheader49, !llvm.loop !185

.lr.ph:                                           ; preds = %.preheader49, %bb.d
  %i.az = phi i32 [ %i.br, %bb.d ], [ %i.ar, %.preheader49 ]
  %.03454 = phi i32 [ %i.bq, %bb.d ], [ 1, %.preheader49 ] ; 4 uses
  %i.ba = add nuw nsw i32 %i.az, 2
  %i.bb = mul nuw nsw i32 %i.ba, %.03555
  %i.bc = add nsw i32 %i.bb, %.03454              ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = load ptr, ptr %2, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw [208 x i8], ptr %i.be, i64 %i.bd ; 3 uses
  %i.bg = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %i.bf, i32 noundef 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bm = add nsw i32 %i.bj, -5
  store i32 5, ptr %6, align 4, !tbaa !10
  store i32 %i.bm, ptr %i.ab, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !73
  %i.bo = load double, ptr %i.ac, align 8, !tbaa !76
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29findScaleSpaceExtremaComputerE, i64 16), ptr %7, align 8, !tbaa !59
  store i32 %.03555, ptr %i.ad, align 8, !tbaa !96
  store i32 %.03454, ptr %i.ae, align 4, !tbaa !97
  store i32 %i.t, ptr %i.af, align 8, !tbaa !98
  store i32 %i.bc, ptr %i.ag, align 4, !tbaa !99
  store i32 %i.bh, ptr %i.ah, align 8, !tbaa !100
  store i32 %i.bl, ptr %i.ai, align 4, !tbaa !101
  store i32 %i.bn, ptr %i.aj, align 8, !tbaa !102
  %i.bp = load <2 x double>, ptr %i.m, align 8, !tbaa !74
  store <2 x double> %i.bp, ptr %i.ak, align 8, !tbaa !74
  store double %i.bo, ptr %i.al, align 8, !tbaa !103
  store ptr %1, ptr %i.am, align 8, !tbaa !87
  store ptr %2, ptr %i.an, align 8, !tbaa !87
  store ptr %5, ptr %i.ao, align 8, !tbaa !193
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef -1.000000e+00)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.bq = add nuw nsw i32 %.03454, 1
  %i.br = load i32, ptr %i.i, align 4, !tbaa !73  ; 3 uses
  %.not.not = icmp slt i32 %.03454, %i.br
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !186

bb.e:                                             ; preds = %.lr.ph
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.o

._crit_edge59:                                    ; preds = %bb.k, %.preheader
  %.lcssa51 = phi ptr [ %i.au, %.preheader ], [ %i.cr, %bb.k ] ; 2 uses
  %.lcssa = phi i64 [ %i.av, %.preheader ], [ %i.ct, %bb.k ]
  %.not.i.i.i = icmp eq ptr %.lcssa51, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge59
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !104
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %.lcssa
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa51, i64 noundef %i.bx) #28
  br label %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit: ; preds = %._crit_edge59, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #25
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.j:                                             ; preds = %._crit_edge56
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.lr.ph58:                                         ; preds = %.preheader, %bb.k
  %i.cd = phi ptr [ %i.cr, %bb.k ], [ %i.au, %.preheader ]
  %.03357 = phi i64 [ %i.cp, %bb.k ], [ 0, %.preheader ] ; 2 uses
  %i.ce = load ptr, ptr %i.v, align 8, !tbaa !194
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.03357
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !106 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !194
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !194
  %i.ck = load ptr, ptr %3, align 8, !tbaa !194   ; 2 uses
  %i.cl = ptrtoint ptr %i.ce to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.cn
  invoke void @_ZNSt6vectorIN2cv8KeyPointESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.co, ptr %i.ch, ptr %i.cj)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.lr.ph58
  %i.cp = add nuw i64 %.03357, 1                  ; 2 uses
  %i.cq = load ptr, ptr %i.as, align 8, !tbaa !92
  %i.cr = load ptr, ptr %8, align 8, !tbaa !93    ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  %i.cw = icmp ult i64 %i.cp, %i.cv
  br i1 %i.cw, label %.lr.ph58, label %._crit_edge59, !llvm.loop !187

bb.l:                                             ; preds = %.lr.ph58
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.l ], [ %i.cc, %bb.j ]
  %i.cy = load ptr, ptr %8, align 8, !tbaa !93    ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit47, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !104
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #28
  br label %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit47

_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit47: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.f, %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit47
  %.pn42.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIPS_IN2cv8KeyPointESaIS1_EESaIS4_EED2Ev.exit47 ], [ %i.bt, %bb.f ], [ %i.bs, %bb.e ]
  call void @_ZN2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %5) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.b
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %bb.o ], [ %i.aw, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn42.pn.pn
}

declare noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEE6gatherERS1_IPS4_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !115, !range !53, !noundef !54
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv18TLSDataAccumulatorISt6vectorINS_8KeyPointESaIS2_EEE6gatherERS1_IPS4_SaIS6_EE, ptr noundef nonnull @.str.49, i32 noundef 110) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_1
