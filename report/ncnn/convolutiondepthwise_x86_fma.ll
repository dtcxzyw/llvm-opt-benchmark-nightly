Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_fma?download=true
inline.NumInlined: 225
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4ncnnL15convdw3x3s2_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.us.us
  %.071115.us.us.ph = phi i32 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.us.us ], [ %i.aw, %vector.body ]
  %.1114.us.us.ph = phi ptr [ %.073122.us.us, %vector.memcheck ], [ %.073122.us.us, %.lr.ph.us.us ], [ %i.br, %vector.body ]
  %.175113.us.us.ph = phi ptr [ %.074121.us.us, %vector.memcheck ], [ %.074121.us.us, %.lr.ph.us.us ], [ %i.bs, %vector.body ]
  %.177112.us.us.ph = phi ptr [ %.076120.us.us, %vector.memcheck ], [ %.076120.us.us, %.lr.ph.us.us ], [ %i.bt, %vector.body ]
  %.179111.us.us.ph = phi ptr [ %.078119.us.us, %vector.memcheck ], [ %.078119.us.us, %.lr.ph.us.us ], [ %i.bu, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.071115.us.us = phi i32 [ %i.dz, %scalar.ph ], [ %.071115.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1114.us.us = phi ptr [ %i.du, %scalar.ph ], [ %.1114.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.175113.us.us = phi ptr [ %i.dg, %scalar.ph ], [ %.175113.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.177112.us.us = phi ptr [ %i.dc, %scalar.ph ], [ %.177112.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.179111.us.us = phi ptr [ %i.dy, %scalar.ph ], [ %.179111.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.177112.us.us, i64 8 ; 3 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !45
  %i.de = load float, ptr %.175113.us.us, align 4, !tbaa !45
  %i.df = getelementptr inbounds nuw i8, ptr %.175113.us.us, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.175113.us.us, i64 8 ; 2 uses
  %i.dh = load <2 x float>, ptr %.177112.us.us, align 4, !tbaa !45
  %i.di = load <2 x float>, ptr %i.df, align 4, !tbaa !45
  %i.dj = load <2 x float>, ptr %.1114.us.us, align 4, !tbaa !45
  %i.dk = load <8 x float>, ptr %i.be, align 4, !tbaa !45
  %i.dl = insertelement <8 x float> poison, float %i.dd, i64 2
  %i.dm = insertelement <8 x float> %i.dl, float %i.de, i64 3
  %i.dn = shufflevector <2 x float> %i.dh, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <8 x float> %i.dn, <8 x float> %i.dm, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <2 x float> %i.di, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <8 x float> %i.do, <8 x float> %i.dp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.dr = shufflevector <2 x float> %i.dj, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <8 x float> %i.dq, <8 x float> %i.dr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.dt = fmul fast <8 x float> %i.dk, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.1114.us.us, i64 8 ; 3 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !45
  %i.dw = load float, ptr %i.bp, align 4, !tbaa !45
  %i.dx = fmul fast float %i.dw, %i.dv
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.dx, <8 x float> %i.dt)
  %op.rdx202 = fadd fast float %op.rdx, %i.bd
  store float %op.rdx202, ptr %.179111.us.us, align 4, !tbaa !45
  %i.dy = getelementptr inbounds nuw i8, ptr %.179111.us.us, i64 4 ; 2 uses
  %i.dz = add nsw i32 %.071115.us.us, -1
  %i.ea = icmp sgt i32 %.071115.us.us, 1
  br i1 %i.ea, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !328

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.ag
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.ag
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ag
  %i.ee = add nuw nsw i32 %.072123.us.us, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.ee, %i.ab
  br i1 %exitcond.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us, label %.lr.ph.us.us, !llvm.loop !329

._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us:           ; preds = %._crit_edge.us.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond136.not = icmp eq i32 %i.ai, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond136.not, label %._crit_edge127, label %_ZN4ncnn3Mat7channelEi.exit.us.us

._crit_edge127:                                   ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us, %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge127, %bb.a
  ret void
}

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn28ConvolutionDepthWise_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %10) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not421 = icmp sgt i32 %i.k, %i.j
  br i1 %.not421, label %._crit_edge423, label %_ZN4ncnn3MatD2Ev.exit91.lr.ph

_ZN4ncnn3MatD2Ev.exit91.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 752
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 576
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 648
  %i.aa = load i32, ptr %7, align 4, !tbaa !69    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4ncnn3MatD2Ev.exit91.preheader, label %._crit_edge423

_ZN4ncnn3MatD2Ev.exit91.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit91.lr.ph
  %i.ac = sext i32 %i.k to i64
  %i.ad = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit91

_ZN4ncnn3MatD2Ev.exit91:                          ; preds = %_ZN4ncnn3MatD2Ev.exit91.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.ae = phi i32 [ %i.aa, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.af = phi i32 [ %i.aa, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv429 = phi i64 [ %i.ac, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %indvars.iv.next430, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.ah = load i32, ptr %5, align 4, !tbaa !69
  %i.ai = trunc nsw i64 %indvars.iv429 to i32
  %i.aj = shl i32 %i.ai, 3
  %i.ak = mul i32 %i.aj, %i.ah
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ag, i64 %i.al
  %i.an = load ptr, ptr %6, align 8, !tbaa !21, !noalias !348
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !22, !noalias !348
  %i.ap = mul i64 %i.ao, %indvars.iv429
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !67, !noalias !348 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %i.at = icmp sgt i32 %i.af, 0
  br i1 %i.at, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit91
  %i.au = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !348
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %i.aq, %i.av
  %i.ax = shl nsw i64 %indvars.iv429, 3           ; 4 uses
  %i.ay = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !21, !noalias !349
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !350
  %i.bc = mul i64 %i.bb, %indvars.iv429
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !349
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge415
  %i.bg = phi i32 [ %i.bl, %._crit_edge415 ], [ %i.ae, %.preheader.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge415 ], [ %i.ay, %.preheader.preheader ] ; 2 uses
  %.080420 = phi ptr [ %.1.lcssa, %._crit_edge415 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.081419 = phi ptr [ %.182.lcssa, %._crit_edge415 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.084418 = phi i32 [ %i.bn, %._crit_edge415 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph414, label %._crit_edge415

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge415, %.preheader.lr.ph, %_ZN4ncnn3MatD2Ev.exit91
  %i.bj = phi i32 [ %i.ae, %_ZN4ncnn3MatD2Ev.exit91 ], [ %i.ae, %.preheader.lr.ph ], [ %i.bl, %._crit_edge415 ]
  %i.bk = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit91 ], [ %i.af, %.preheader.lr.ph ], [ %i.bl, %._crit_edge415 ]
  %indvars.iv.next430 = add nsw i64 %indvars.iv429, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next430 to i32
  %exitcond432.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond432.not, label %._crit_edge423, label %_ZN4ncnn3MatD2Ev.exit91, !llvm.loop !344

._crit_edge415.loopexit:                          ; preds = %bb.h
  %.pre = load i32, ptr %7, align 4, !tbaa !69
  br label %._crit_edge415

._crit_edge415:                                   ; preds = %._crit_edge415.loopexit, %.preheader
  %i.bl = phi i32 [ %i.bg, %.preheader ], [ %.pre, %._crit_edge415.loopexit ] ; 4 uses
  %i.bm = phi i32 [ %i.bh, %.preheader ], [ %i.po, %._crit_edge415.loopexit ]
  %.182.lcssa = phi ptr [ %.081419, %.preheader ], [ %.283, %._crit_edge415.loopexit ]
  %.1.lcssa = phi ptr [ %.080420, %.preheader ], [ %.2, %._crit_edge415.loopexit ]
  %i.bn = add nuw nsw i32 %.084418, 1             ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.bl
  br i1 %i.bo, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !345

.lr.ph414:                                        ; preds = %.preheader, %bb.h
  %.1413 = phi ptr [ %.2, %bb.h ], [ %.080420, %.preheader ] ; 3 uses
  %.182412 = phi ptr [ %.283, %bb.h ], [ %.081419, %.preheader ] ; 3 uses
  %.085411 = phi i32 [ %i.pn, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.bp = load i32, ptr %i.r, align 8, !tbaa !65
  %i.bq = mul nsw i32 %i.bp, %.084418
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul i64 %i.aw, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bs
  %i.bu = load i32, ptr %i.s, align 4, !tbaa !64
  %i.bv = shl i32 %.085411, 3
  %i.bw = mul i32 %i.bv, %i.bu
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx
  %i.bz = load i32, ptr %5, align 4, !tbaa !69    ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph414
  %i.cb = load ptr, ptr %9, align 8, !tbaa !81
  %wide.trip.count = zext nneg i32 %i.bz to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.cc = sitofp fast <4 x i32> %i.dr to <4 x float>
  %i.cd = sitofp fast <4 x i32> %i.dt to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph414
  %.lcssa408 = phi <4 x float> [ zeroinitializer, %.lr.ph414 ], [ %i.cd, %._crit_edge.loopexit ]
  %.lcssa = phi <4 x float> [ zeroinitializer, %.lr.ph414 ], [ %i.cc, %._crit_edge.loopexit ]
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ax ; 2 uses
  %i.cg = load <4 x float>, ptr %i.cf, align 1, !tbaa !87
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = load <4 x float>, ptr %i.ch, align 1, !tbaa !87
  %i.cj = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ax ; 2 uses
  %i.cl = load <4 x float>, ptr %i.ck, align 1, !tbaa !87 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cn = load <4 x float>, ptr %i.cm, align 1, !tbaa !87 ; 2 uses
  %i.co = fmul fast <4 x float> %i.cl, %i.cg
  %i.cp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.co)
  %i.cq = fmul fast <4 x float> %i.cn, %i.ci
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.cq)
  %i.cs = fcmp fast une <4 x float> %i.cl, zeroinitializer
  %i.ct = fcmp fast une <4 x float> %i.cn, zeroinitializer
  %i.cu = select <4 x i1> %i.cs, <4 x float> %i.cp, <4 x float> zeroinitializer
  %i.cv = select <4 x i1> %i.ct, <4 x float> %i.cr, <4 x float> zeroinitializer
  %i.cw = fmul fast <4 x float> %i.cu, %.lcssa    ; 2 uses
  %i.cx = fmul fast <4 x float> %i.cv, %.lcssa408 ; 2 uses
  %i.cy = load i32, ptr %i.v, align 8, !tbaa !77
  %.not89 = icmp eq i32 %i.cy, 0
  br i1 %.not89, label %bb.e, label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.cz = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.dr, %bb.c ]
  %i.da = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.dt, %bb.c ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !69
  %i.dd = shl nsw i32 %i.dc, 3
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.by, i64 %i.de
  %i.dg = load <8 x i8>, ptr %i.df, align 1, !tbaa !87
  %i.dh = sext <8 x i8> %i.dg to <8 x i16>        ; 2 uses
  %i.di = shl nuw nsw i64 %indvars.iv, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.di
  %i.dk = load <8 x i8>, ptr %i.dj, align 1, !tbaa !87
  %i.dl = sext <8 x i8> %i.dk to <8 x i16>        ; 2 uses
  %i.dm = mul nsw <8 x i16> %i.dl, %i.dh          ; 2 uses
  %i.dn = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.dh, <8 x i16> %i.dl) ; 2 uses
  %i.do = shufflevector <8 x i16> %i.dm, <8 x i16> %i.dn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dp = shufflevector <8 x i16> %i.dm, <8 x i16> %i.dn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dq = bitcast <8 x i16> %i.do to <4 x i32>
  %i.dr = add <4 x i32> %i.cz, %i.dq              ; 2 uses
  %i.ds = bitcast <8 x i16> %i.dp to <4 x i32>
  %i.dt = add <4 x i32> %i.da, %i.ds              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !346

bb.d:                                             ; preds = %._crit_edge
  %i.du = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ax ; 2 uses
  %i.dw = load <4 x float>, ptr %i.dv, align 1, !tbaa !87
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dy = load <4 x float>, ptr %i.dx, align 1, !tbaa !87
  %i.dz = fadd fast <4 x float> %i.dw, %i.cw
  %i.ea = fadd fast <4 x float> %i.dy, %i.cx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.0388 = phi nsz <4 x float> [ %i.cw, %._crit_edge ], [ %i.dz, %bb.d ] ; 10 uses
  %.0387 = phi nsz <4 x float> [ %i.cx, %._crit_edge ], [ %i.ea, %bb.d ] ; 10 uses
  %i.eb = load i32, ptr %i.x, align 8, !tbaa !44
  switch i32 %i.eb, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread: ; preds = %bb.e
  %i.ec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0388, <4 x float> zeroinitializer)
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0387, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392: ; preds = %bb.e
  %i.ee = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !45
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0388)
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0388)
  %i.ei = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ek = fmul fast <4 x float> %i.ej, %i.eh
  %i.el = fadd fast <4 x float> %i.ek, %i.eg
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0387)
  %i.en = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0387)
  %i.eo = fmul fast <4 x float> %i.ej, %i.en
  %i.ep = fadd fast <4 x float> %i.eo, %i.em
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395: ; preds = %bb.e
  %i.eq = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !45
  %i.es = insertelement <4 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !45
  %i.ew = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0388, <4 x float> nofpclass(nan inf) %i.et)
  %i.ez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ey, <4 x float> nofpclass(nan inf) %i.ex)
  %i.fa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0387, <4 x float> nofpclass(nan inf) %i.et)
  %i.fb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fa, <4 x float> nofpclass(nan inf) %i.ex)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398: ; preds = %bb.e
  %i.fc = fneg fast <4 x float> %.0388
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fc, <4 x float> splat (float f0x42B0C0A5))
  %i.fe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ff = fmul fast <4 x float> %i.fe, splat (float f0x3FB8AA3B)
  %i.fg = fadd fast <4 x float> %i.ff, splat (float 5.000000e-01) ; 2 uses
  %i.fh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fg)
  %i.fi = sitofp fast <4 x i32> %i.fh to <4 x float> ; 2 uses
  %i.fj = fcmp fast olt <4 x float> %i.fg, %i.fi
  %i.fk = select <4 x i1> %i.fj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fl = fsub fast <4 x float> %i.fi, %i.fk      ; 2 uses
  %i.fm = fneg fast <4 x float> %i.fl             ; 2 uses
  %i.fn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fm, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fe)
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fm, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fn) ; 8 uses
  %i.fp = fmul fast <4 x float> %i.fo, %i.fo
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fo, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fq, <4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0x3C088908))
  %i.fs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fr, <4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0x3D2AA9C1))
  %i.ft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fs, <4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0x3E2AAAAA))
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ft, <4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float 5.000000e-01))
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fu, <4 x float> nofpclass(nan inf) %i.fp, <4 x float> nofpclass(nan inf) %i.fo)
  %i.fw = fadd fast <4 x float> %i.fv, splat (float 1.000000e+00)
  %i.fx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fl)
  %i.fy = shl <4 x i32> %i.fx, splat (i32 23)
  %i.fz = add <4 x i32> %i.fy, splat (i32 1065353216)
  %i.ga = bitcast <4 x i32> %i.fz to <4 x float>
  %i.gb = fmul fast <4 x float> %i.fw, %i.ga
  %i.gc = fadd fast <4 x float> %i.gb, splat (float 1.000000e+00)
  %i.gd = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gc
  %i.ge = fneg fast <4 x float> %.0387
  %i.gf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ge, <4 x float> splat (float f0x42B0C0A5))
  %i.gg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gh = fmul fast <4 x float> %i.gg, splat (float f0x3FB8AA3B)
  %i.gi = fadd fast <4 x float> %i.gh, splat (float 5.000000e-01) ; 2 uses
  %i.gj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gi)
  %i.gk = sitofp fast <4 x i32> %i.gj to <4 x float> ; 2 uses
  %i.gl = fcmp fast olt <4 x float> %i.gi, %i.gk
  %i.gm = select <4 x i1> %i.gl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gn = fsub fast <4 x float> %i.gk, %i.gm      ; 2 uses
  %i.go = fneg fast <4 x float> %i.gn             ; 2 uses
  %i.gp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.go, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gg)
  %i.gq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.go, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gp) ; 8 uses
  %i.gr = fmul fast <4 x float> %i.gq, %i.gq
  %i.gs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gq, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.gt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gs, <4 x float> nofpclass(nan inf) %i.gq, <4 x float> splat (float f0x3C088908))
  %i.gu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gt, <4 x float> nofpclass(nan inf) %i.gq, <4 x float> splat (float f0x3D2AA9C1))
  %i.gv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gu, <4 x float> nofpclass(nan inf) %i.gq, <4 x float> splat (float f0x3E2AAAAA))
  %i.gw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gv, <4 x float> nofpclass(nan inf) %i.gq, <4 x float> splat (float 5.000000e-01))
  %i.gx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gw, <4 x float> nofpclass(nan inf) %i.gr, <4 x float> nofpclass(nan inf) %i.gq)
  %i.gy = fadd fast <4 x float> %i.gx, splat (float 1.000000e+00)
  %i.gz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gn)
  %i.ha = shl <4 x i32> %i.gz, splat (i32 23)
  %i.hb = add <4 x i32> %i.ha, splat (i32 1065353216)
  %i.hc = bitcast <4 x i32> %i.hb to <4 x float>
  %i.hd = fmul fast <4 x float> %i.gy, %i.hc
  %i.he = fadd fast <4 x float> %i.hd, splat (float 1.000000e+00)
  %i.hf = fdiv fast <4 x float> splat (float 1.000000e+00), %i.he
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401: ; preds = %bb.e
  %i.hg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0388, <4 x float> splat (float f0x42B0C0A5))
  %i.hh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hi = fmul fast <4 x float> %i.hh, splat (float f0x3FB8AA3B)
end_hunk_0
begin_hunk_1_@_ZNK4ncnn28ConvolutionDepthWise_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.il = or disjoint <4 x i32> %i.ik, splat (i32 1056964608)
  %i.im = bitcast <4 x i32> %i.il to <4 x float>  ; 3 uses
  %i.in = add nsw <4 x i32> %i.ij, splat (i32 -127)
  %i.io = sitofp fast <4 x i32> %i.in to <4 x float> ; 2 uses
  %i.ip = fadd fast <4 x float> %i.io, splat (float 1.000000e+00)
  %i.iq = fcmp fast olt <4 x float> %i.im, splat (float f0x3F3504F3) ; 2 uses
  %i.ir = select <4 x i1> %i.iq, <4 x float> %i.im, <4 x float> zeroinitializer
  %i.is = fadd fast <4 x float> %i.im, splat (float -1.000000e+00)
  %i.it = select fast <4 x i1> %i.iq, <4 x float> %i.io, <4 x float> %i.ip ; 2 uses
  %i.iu = fadd fast <4 x float> %i.is, %i.ir      ; 12 uses
  %i.iv = fmul fast <4 x float> %i.iu, %i.iu      ; 2 uses
  %i.iw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iu, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ix = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iw, <4 x float> nofpclass(nan inf) %i.iu, <4 x float> splat (float f0x3DEF251A))
  %i.iy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ix, <4 x float> nofpclass(nan inf) %i.iu, <4 x float> splat (float f0xBDFE5D4F))
  %i.iz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iy, <4 x float> nofpclass(nan inf) %i.iu, <4 x float> splat (float f0x3E11E9BF))
  %i.ja = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iz, <4 x float> nofpclass(nan inf) %i.iu, <4 x float> splat (float f0xBE2AAE50))
  %i.jb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ja, <4 x float> nofpclass(nan inf) %i.iu, <4 x float> splat (float f0x3E4CCEAC))
  %i.jc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jb, <4 x float> nofpclass(nan inf) %i.iu, <4 x float> splat (float f0xBE7FFFFC))
  %i.jd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jc, <4 x float> nofpclass(nan inf) %i.iu, <4 x float> splat (float f0x3EAAAAAA))
  %i.je = fmul fast <4 x float> %i.iv, %i.iu
  %i.jf = fmul fast <4 x float> %i.je, %i.jd
  %i.jg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.it, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jf)
  %i.jh = fneg fast <4 x float> %i.iv
  %i.ji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jh, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.jg)
  %i.jj = fadd fast <4 x float> %i.ji, %i.iu
  %i.jk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.it, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.jj)
  %.neg = fmul fast <4 x float> %i.jk, splat (float -2.000000e+00)
  %i.jl = select fast <4 x i1> %i.ig, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.jm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jl, <4 x float> splat (float f0x42B0C0A5))
  %i.jn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jo = fmul fast <4 x float> %i.jn, splat (float f0x3FB8AA3B)
  %i.jp = fadd fast <4 x float> %i.jo, splat (float 5.000000e-01) ; 2 uses
  %i.jq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jp)
  %i.jr = sitofp fast <4 x i32> %i.jq to <4 x float> ; 2 uses
  %i.js = fcmp fast olt <4 x float> %i.jp, %i.jr
  %i.jt = select <4 x i1> %i.js, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ju = fsub fast <4 x float> %i.jr, %i.jt      ; 2 uses
  %i.jv = fneg fast <4 x float> %i.ju             ; 2 uses
  %i.jw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jv, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.jn)
  %i.jx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jv, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jw) ; 8 uses
  %i.jy = fmul fast <4 x float> %i.jx, %i.jx
  %i.jz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jx, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jz, <4 x float> nofpclass(nan inf) %i.jx, <4 x float> splat (float f0x3C088908))
  %i.kb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ka, <4 x float> nofpclass(nan inf) %i.jx, <4 x float> splat (float f0x3D2AA9C1))
  %i.kc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kb, <4 x float> nofpclass(nan inf) %i.jx, <4 x float> splat (float f0x3E2AAAAA))
  %i.kd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kc, <4 x float> nofpclass(nan inf) %i.jx, <4 x float> splat (float 5.000000e-01))
  %i.ke = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kd, <4 x float> nofpclass(nan inf) %i.jy, <4 x float> nofpclass(nan inf) %i.jx)
  %i.kf = fadd fast <4 x float> %i.ke, splat (float 1.000000e+00)
  %i.kg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ju)
  %i.kh = shl <4 x i32> %i.kg, splat (i32 23)
  %i.ki = add <4 x i32> %i.kh, splat (i32 1065353216)
  %i.kj = bitcast <4 x i32> %i.ki to <4 x float>
  %i.kk = fmul fast <4 x float> %i.kf, %i.kj
  %i.kl = fadd fast <4 x float> %i.kk, splat (float 1.000000e+00)
  %i.km = fdiv fast <4 x float> splat (float 2.000000e+00), %i.kl
  %i.kn = fadd fast <4 x float> %i.km, splat (float -1.000000e+00)
  %i.ko = fmul fast <4 x float> %i.kn, %.0388
  %i.kp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0387, <4 x float> splat (float f0x42B0C0A5))
  %i.kq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kr = fmul fast <4 x float> %i.kq, splat (float f0x3FB8AA3B)
  %i.ks = fadd fast <4 x float> %i.kr, splat (float 5.000000e-01) ; 2 uses
  %i.kt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ks)
  %i.ku = sitofp fast <4 x i32> %i.kt to <4 x float> ; 2 uses
  %i.kv = fcmp fast olt <4 x float> %i.ks, %i.ku
  %i.kw = select <4 x i1> %i.kv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kx = fsub fast <4 x float> %i.ku, %i.kw      ; 2 uses
  %i.ky = fneg fast <4 x float> %i.kx             ; 2 uses
  %i.kz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ky, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.kq)
  %i.la = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ky, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.kz) ; 8 uses
  %i.lb = fmul fast <4 x float> %i.la, %i.la
  %i.lc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.la, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ld = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lc, <4 x float> nofpclass(nan inf) %i.la, <4 x float> splat (float f0x3C088908))
  %i.le = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ld, <4 x float> nofpclass(nan inf) %i.la, <4 x float> splat (float f0x3D2AA9C1))
  %i.lf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.le, <4 x float> nofpclass(nan inf) %i.la, <4 x float> splat (float f0x3E2AAAAA))
  %i.lg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lf, <4 x float> nofpclass(nan inf) %i.la, <4 x float> splat (float 5.000000e-01))
  %i.lh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lg, <4 x float> nofpclass(nan inf) %i.lb, <4 x float> nofpclass(nan inf) %i.la)
  %i.li = fadd fast <4 x float> %i.lh, splat (float 1.000000e+00)
  %i.lj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kx)
  %i.lk = shl <4 x i32> %i.lj, splat (i32 23)
  %i.ll = add <4 x i32> %i.lk, splat (i32 1065353216)
  %i.lm = bitcast <4 x i32> %i.ll to <4 x float>
  %i.ln = fmul fast <4 x float> %i.li, %i.lm
  %i.lo = fadd fast <4 x float> %i.ln, splat (float 1.000000e+00) ; 2 uses
  %i.lp = fcmp fast ole <4 x float> %i.lo, zeroinitializer
  %i.lq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lo, <4 x float> splat (float f0x00800000))
  %i.lr = bitcast <4 x float> %i.lq to <4 x i32>  ; 2 uses
  %i.ls = lshr <4 x i32> %i.lr, splat (i32 23)
  %i.lt = and <4 x i32> %i.lr, splat (i32 -2139095041)
  %i.lu = or disjoint <4 x i32> %i.lt, splat (i32 1056964608)
  %i.lv = bitcast <4 x i32> %i.lu to <4 x float>  ; 3 uses
  %i.lw = add nsw <4 x i32> %i.ls, splat (i32 -127)
  %i.lx = sitofp fast <4 x i32> %i.lw to <4 x float> ; 2 uses
  %i.ly = fadd fast <4 x float> %i.lx, splat (float 1.000000e+00)
  %i.lz = fcmp fast olt <4 x float> %i.lv, splat (float f0x3F3504F3) ; 2 uses
  %i.ma = select <4 x i1> %i.lz, <4 x float> %i.lv, <4 x float> zeroinitializer
  %i.mb = fadd fast <4 x float> %i.lv, splat (float -1.000000e+00)
  %i.mc = select fast <4 x i1> %i.lz, <4 x float> %i.lx, <4 x float> %i.ly ; 2 uses
  %i.md = fadd fast <4 x float> %i.mb, %i.ma      ; 12 uses
  %i.me = fmul fast <4 x float> %i.md, %i.md      ; 2 uses
  %i.mf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.md, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.mg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mf, <4 x float> nofpclass(nan inf) %i.md, <4 x float> splat (float f0x3DEF251A))
  %i.mh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mg, <4 x float> nofpclass(nan inf) %i.md, <4 x float> splat (float f0xBDFE5D4F))
  %i.mi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mh, <4 x float> nofpclass(nan inf) %i.md, <4 x float> splat (float f0x3E11E9BF))
  %i.mj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mi, <4 x float> nofpclass(nan inf) %i.md, <4 x float> splat (float f0xBE2AAE50))
  %i.mk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mj, <4 x float> nofpclass(nan inf) %i.md, <4 x float> splat (float f0x3E4CCEAC))
  %i.ml = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mk, <4 x float> nofpclass(nan inf) %i.md, <4 x float> splat (float f0xBE7FFFFC))
  %i.mm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ml, <4 x float> nofpclass(nan inf) %i.md, <4 x float> splat (float f0x3EAAAAAA))
  %i.mn = fmul fast <4 x float> %i.me, %i.md
  %i.mo = fmul fast <4 x float> %i.mn, %i.mm
  %i.mp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mo)
  %i.mq = fneg fast <4 x float> %i.me
  %i.mr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mq, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.mp)
  %i.ms = fadd fast <4 x float> %i.mr, %i.md
  %i.mt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ms)
  %.neg407 = fmul fast <4 x float> %i.mt, splat (float -2.000000e+00)
  %i.mu = select fast <4 x i1> %i.lp, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg407
  %i.mv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mu, <4 x float> splat (float f0x42B0C0A5))
  %i.mw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mx = fmul fast <4 x float> %i.mw, splat (float f0x3FB8AA3B)
  %i.my = fadd fast <4 x float> %i.mx, splat (float 5.000000e-01) ; 2 uses
  %i.mz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.my)
  %i.na = sitofp fast <4 x i32> %i.mz to <4 x float> ; 2 uses
  %i.nb = fcmp fast olt <4 x float> %i.my, %i.na
  %i.nc = select <4 x i1> %i.nb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nd = fsub fast <4 x float> %i.na, %i.nc      ; 2 uses
  %i.ne = fneg fast <4 x float> %i.nd             ; 2 uses
  %i.nf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ne, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mw)
  %i.ng = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ne, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nf) ; 8 uses
  %i.nh = fmul fast <4 x float> %i.ng, %i.ng
  %i.ni = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ng, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.nj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ni, <4 x float> nofpclass(nan inf) %i.ng, <4 x float> splat (float f0x3C088908))
  %i.nk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nj, <4 x float> nofpclass(nan inf) %i.ng, <4 x float> splat (float f0x3D2AA9C1))
  %i.nl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nk, <4 x float> nofpclass(nan inf) %i.ng, <4 x float> splat (float f0x3E2AAAAA))
  %i.nm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nl, <4 x float> nofpclass(nan inf) %i.ng, <4 x float> splat (float 5.000000e-01))
  %i.nn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nm, <4 x float> nofpclass(nan inf) %i.nh, <4 x float> nofpclass(nan inf) %i.ng)
  %i.no = fadd fast <4 x float> %i.nn, splat (float 1.000000e+00)
  %i.np = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nd)
  %i.nq = shl <4 x i32> %i.np, splat (i32 23)
  %i.nr = add <4 x i32> %i.nq, splat (i32 1065353216)
  %i.ns = bitcast <4 x i32> %i.nr to <4 x float>
  %i.nt = fmul fast <4 x float> %i.no, %i.ns
  %i.nu = fadd fast <4 x float> %i.nt, splat (float 1.000000e+00)
  %i.nv = fdiv fast <4 x float> splat (float 2.000000e+00), %i.nu
  %i.nw = fadd fast <4 x float> %i.nv, splat (float -1.000000e+00)
  %i.nx = fmul fast <4 x float> %i.nw, %.0387
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404: ; preds = %bb.e
  %i.ny = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !45
  %i.oa = insertelement <4 x float> poison, float %i.nz, i64 0
  %i.ob = shufflevector <4 x float> %i.oa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.od = load float, ptr %i.oc, align 4, !tbaa !45
  %i.oe = insertelement <4 x float> poison, float %i.od, i64 0
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.og = fmul fast <4 x float> %i.ob, %.0388
  %i.oh = fadd fast <4 x float> %i.og, %i.of
  %i.oi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oh, <4 x float> zeroinitializer)
  %i.oj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.oi, <4 x float> splat (float 1.000000e+00))
  %i.ok = fmul fast <4 x float> %i.oj, %.0388
  %i.ol = fmul fast <4 x float> %i.ob, %.0387
  %i.om = fadd fast <4 x float> %i.ol, %i.of
  %i.on = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.om, <4 x float> zeroinitializer)
  %i.oo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.on, <4 x float> splat (float 1.000000e+00))
  %i.op = fmul fast <4 x float> %i.oo, %.0387
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.e, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread
  %.0.i110391 = phi <4 x float> [ %i.ok, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404 ], [ %i.ec, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread ], [ %i.el, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392 ], [ %i.ez, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395 ], [ %i.gd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398 ], [ %i.ko, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401 ], [ %.0388, %bb.e ] ; 2 uses
  %.0.i = phi nsz <4 x float> [ %i.op, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404 ], [ %i.ed, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread ], [ %i.ep, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392 ], [ %i.fb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395 ], [ %i.hf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398 ], [ %i.nx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401 ], [ %.0387, %bb.e ] ; 2 uses
  %i.oq = load i8, ptr %10, align 1, !tbaa !85, !range !54, !noundef !55
  %i.or = trunc nuw i8 %i.oq to i1
  br i1 %i.or, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.os = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.os, i64 %i.ax ; 2 uses
  %i.ou = load <4 x float>, ptr %i.ot, align 1, !tbaa !87
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ow = load <4 x float>, ptr %i.ov, align 1, !tbaa !87
  %i.ox = fmul fast <4 x float> %i.ou, %.0.i110391 ; 2 uses
  %i.oy = fmul fast <4 x float> %i.ow, %.0.i      ; 2 uses
  %i.oz = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ox)
  %i.pa = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.oy)
  %i.pb = fadd fast <4 x float> %i.oz, %i.ox
  %i.pc = fadd fast <4 x float> %i.pa, %i.oy
  %i.pd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pb)
  %i.pe = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pc)
  %i.pf = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.pd, <4 x i32> %i.pe)
  %i.pg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.pf, <8 x i16> splat (i16 -127))
  %i.ph = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.pg, <8 x i16> splat (i16 127))
  %i.pi = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ph, <8 x i16> poison)
  %i.pj = bitcast <16 x i8> %i.pi to <2 x i64>
  %i.pk = extractelement <2 x i64> %i.pj, i64 0
  store i64 %i.pk, ptr %.1413, align 8, !tbaa !351
  %i.pl = getelementptr inbounds nuw i8, ptr %.1413, i64 8
  br label %bb.h

bb.g:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %11 = shufflevector <4 x float> %.0.i110391, <4 x float> %.0.i, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %11, ptr %.182412, align 1, !tbaa !87
  %i.pm = getelementptr inbounds nuw i8, ptr %.182412, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.283 = phi ptr [ %.182412, %bb.f ], [ %i.pm, %bb.g ] ; 2 uses
  %.2 = phi ptr [ %i.pl, %bb.f ], [ %.1413, %bb.g ] ; 2 uses
  %i.pn = add nuw nsw i32 %.085411, 1             ; 2 uses
  %i.po = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.pp = icmp slt i32 %i.pn, %i.po
  br i1 %i.pp, label %.lr.ph414, label %._crit_edge415.loopexit, !llvm.loop !347

._crit_edge423:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit91.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge423, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIfSaIfEE9push_backERKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %1, align 4, !tbaa !45
  store float %i.e, ptr %i.b, align 4, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %i.a, align 8, !tbaa !100
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !95     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load float, ptr %1, align 4, !tbaa !45
  store float %i.t, ptr %i.s, align 4, !tbaa !45
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i

bb.e:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.not.i17.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !96
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #23
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i, %bb.f
  store ptr %i.r, ptr %0, align 8, !tbaa !95
  store ptr %i.v, ptr %i.a, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !96
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL28convdw3x3s1_int8_requant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr noundef nonnull align 8 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %5) unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !75
  store i32 %i.i, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !75
  store i32 %i.k, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !76
  store i32 %i.m, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !70
  store i32 %i.o, ptr %i.d, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.p = load ptr, ptr %2, align 8, !tbaa !21
  store ptr %i.p, ptr %i.e, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.q = load ptr, ptr %3, align 8, !tbaa !21
  store ptr %i.q, ptr %i.f, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !82
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.s)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL28convdw3x3s1_int8_requant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %i.f, ptr nonnull %4, ptr nonnull %i.e, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !95     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i, !prof !352

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !96
  %i.m = load ptr, ptr %1, align 8, !tbaa !97     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !353

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.m, i64 %i.q, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load float, ptr %i.m, align 4, !tbaa !45
  store float %i.t, ptr %i.i, align 4, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !100
  ret void
}
end_hunk_1
