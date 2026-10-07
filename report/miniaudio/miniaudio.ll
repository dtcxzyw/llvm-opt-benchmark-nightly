Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_waveform_read_pcm_frames:bb.a
vec.epilog.scalar.ph341:                          ; preds = %vec.epilog.scalar.ph341.preheader, %vec.epilog.scalar.ph341
  %.168.us.i = phi i64 [ %i.af, %vec.epilog.scalar.ph341 ], [ %.168.us.i.ph, %vec.epilog.scalar.ph341.preheader ] ; 2 uses
  %i.ae = getelementptr [2 x i8], ptr %i.y, i64 %.168.us.i
  store i16 %i.w, ptr %i.ae, align 2, !tbaa !122
  %i.af = add nuw nsw i64 %.168.us.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %vec.epilog.scalar.ph341, !llvm.loop !2535

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph341, %vec.epilog.middle.block351, %middle.block337
  %i.ag = fadd double %i.m, %i.q                  ; 2 uses
  %i.ah = add nuw i64 %.15369.us.i, 1             ; 2 uses
  %exitcond98.not.i = icmp eq i64 %i.ah, %2
  br i1 %exitcond98.not.i, label %.loopexit67.i, label %iter.check340, !llvm.loop !2536

.preheader64.i:                                   ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !852
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load double, ptr %i.al, align 8, !tbaa !850 ; 4 uses
  %i.an = zext i32 %i.h to i64                    ; 4 uses
  %.not80.i = icmp eq i32 %i.h, 0
  %.promoted71.i = load double, ptr %i.ai, align 8, !tbaa !851 ; 3 uses
  br i1 %.not80.i, label %.preheader64.split.i.preheader, label %.lr.ph.us74.i.preheader

.lr.ph.us74.i.preheader:                          ; preds = %.preheader64.i
  %min.iters.check355 = icmp ult i32 %i.h, 8
  %n.vec357 = and i64 %i.an, 4294967288           ; 3 uses
  %cmp.n364 = icmp eq i64 %n.vec357, %i.an
  br label %.lr.ph.us74.i

.preheader64.split.i.preheader:                   ; preds = %.preheader64.i
  %xtraiter432 = and i64 %2, 1
  %i.ao = icmp eq i64 %2, 1
  br i1 %i.ao, label %.preheader64.split.i.epil.preheader, label %.preheader64.split.i.preheader.new

.preheader64.split.i.preheader.new:               ; preds = %.preheader64.split.i.preheader
  %unroll_iter439 = and i64 %2, -2
  br label %.preheader64.split.i

.lr.ph.us74.i:                                    ; preds = %.lr.ph.us74.i.preheader, %._crit_edge.us75.i
  %.05273.us.i = phi i64 [ %i.bc, %._crit_edge.us75.i ], [ 0, %.lr.ph.us74.i.preheader ] ; 2 uses
  %i.ap = phi double [ %i.bb, %._crit_edge.us75.i ], [ %.promoted71.i, %.lr.ph.us74.i.preheader ] ; 2 uses
  %i.aq = fmul double %i.ap, f0x401921FB54442D18
  %i.ar = tail call double @sin(double noundef %i.aq) #55
  %i.as = fmul double %i.ak, %i.ar
  %i.at = fptrunc double %i.as to float           ; 2 uses
  %i.au = mul i64 %.05273.us.i, %i.an
  %i.av = getelementptr [4 x i8], ptr %1, i64 %i.au ; 2 uses
  br i1 %min.iters.check355, label %scalar.ph354.preheader, label %vector.ph356

vector.ph356:                                     ; preds = %.lr.ph.us74.i
  %broadcast.splatinsert358 = insertelement <4 x float> poison, float %i.at, i64 0
  %broadcast.splat359 = shufflevector <4 x float> %broadcast.splatinsert358, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph356
  %index361 = phi i64 [ 0, %vector.ph356 ], [ %index.next362, %vector.body360 ] ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %index361 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <4 x float> %broadcast.splat359, ptr %i.aw, align 4, !tbaa !349
  store <4 x float> %broadcast.splat359, ptr %i.ax, align 4, !tbaa !349
  %index.next362 = add nuw i64 %index361, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next362, %n.vec357
  br i1 %i.ay, label %middle.block363, label %vector.body360, !llvm.loop !2537

middle.block363:                                  ; preds = %vector.body360
  br i1 %cmp.n364, label %._crit_edge.us75.i, label %scalar.ph354.preheader

scalar.ph354.preheader:                           ; preds = %.lr.ph.us74.i, %middle.block363
  %.070.us.i.ph = phi i64 [ 0, %.lr.ph.us74.i ], [ %n.vec357, %middle.block363 ]
  br label %scalar.ph354

scalar.ph354:                                     ; preds = %scalar.ph354.preheader, %scalar.ph354
  %.070.us.i = phi i64 [ %i.ba, %scalar.ph354 ], [ %.070.us.i.ph, %scalar.ph354.preheader ] ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.av, i64 %.070.us.i
  store float %i.at, ptr %i.az, align 4, !tbaa !349
  %i.ba = add nuw nsw i64 %.070.us.i, 1           ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.ba, %i.an
  br i1 %exitcond100.not.i, label %._crit_edge.us75.i, label %scalar.ph354, !llvm.loop !2538

._crit_edge.us75.i:                               ; preds = %scalar.ph354, %middle.block363
  %i.bb = fadd double %i.am, %i.ap                ; 2 uses
  %i.bc = add nuw i64 %.05273.us.i, 1             ; 2 uses
  %exitcond101.not.i = icmp eq i64 %i.bc, %2
  br i1 %exitcond101.not.i, label %.loopexit65.i, label %.lr.ph.us74.i, !llvm.loop !2539

.preheader.i:                                     ; preds = %bb.f
  %i.bd = zext i32 %i.f to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !118 ; 2 uses
  %i.bg = mul i32 %i.bf, %i.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bk = zext i32 %i.bg to i64
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  br label %bb.g

.preheader64.split.i:                             ; preds = %cdce.end.1, %.preheader64.split.i.preheader.new
  %i.bm = phi double [ %.promoted71.i, %.preheader64.split.i.preheader.new ], [ %i.bw, %cdce.end.1 ] ; 2 uses
  %niter440 = phi i64 [ 0, %.preheader64.split.i.preheader.new ], [ %niter440.next.1, %cdce.end.1 ]
  %i.bn = fmul double %i.bm, f0x401921FB54442D18  ; 2 uses
  %i.bo = tail call double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp oeq double %i.bo, +inf
  br i1 %i.bp, label %cdce.call, label %cdce.end, !prof !390

cdce.call:                                        ; preds = %.preheader64.split.i
  %i.bq = tail call double @sin(double noundef %i.bn) #55 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %.preheader64.split.i, %cdce.call
  %i.br = fadd double %i.am, %i.bm                ; 2 uses
  %i.bs = fmul double %i.br, f0x401921FB54442D18  ; 2 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp oeq double %i.bt, +inf
  br i1 %i.bu, label %cdce.call.1, label %cdce.end.1, !prof !390

cdce.call.1:                                      ; preds = %cdce.end
  %i.bv = tail call double @sin(double noundef %i.bs) #55 ; 0 uses
  br label %cdce.end.1

cdce.end.1:                                       ; preds = %cdce.call.1, %cdce.end
  %i.bw = fadd double %i.am, %i.br                ; 3 uses
  %niter440.next.1 = add nuw i64 %niter440, 2     ; 2 uses
  %niter440.ncmp.1 = icmp eq i64 %niter440.next.1, %unroll_iter439
  br i1 %niter440.ncmp.1, label %.loopexit65.i.loopexit.unr-lcssa, label %.preheader64.split.i, !llvm.loop !2539

.preheader66.split.i:                             ; preds = %cdce.end132.1, %.preheader66.split.i.preheader.new
  %i.bx = phi double [ %.promoted.i, %.preheader66.split.i.preheader.new ], [ %i.ch, %cdce.end132.1 ] ; 2 uses
  %niter431 = phi i64 [ 0, %.preheader66.split.i.preheader.new ], [ %niter431.next.1, %cdce.end132.1 ]
  %i.by = fmul double %i.bx, f0x401921FB54442D18  ; 2 uses
  %i.bz = tail call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp oeq double %i.bz, +inf
  br i1 %i.ca, label %cdce.call131, label %cdce.end132, !prof !390

cdce.call131:                                     ; preds = %.preheader66.split.i
  %i.cb = tail call double @sin(double noundef %i.by) #55 ; 0 uses
  br label %cdce.end132

cdce.end132:                                      ; preds = %.preheader66.split.i, %cdce.call131
  %i.cc = fadd double %i.m, %i.bx                 ; 2 uses
  %i.cd = fmul double %i.cc, f0x401921FB54442D18  ; 2 uses
  %i.ce = tail call double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp oeq double %i.ce, +inf
  br i1 %i.cf, label %cdce.call131.1, label %cdce.end132.1, !prof !390

cdce.call131.1:                                   ; preds = %cdce.end132
  %i.cg = tail call double @sin(double noundef %i.cd) #55 ; 0 uses
  br label %cdce.end132.1

cdce.end132.1:                                    ; preds = %cdce.call131.1, %cdce.end132
  %i.ch = fadd double %i.m, %i.cc                 ; 3 uses
  %niter431.next.1 = add nuw i64 %niter431, 2     ; 2 uses
  %niter431.ncmp.1 = icmp eq i64 %niter431.next.1, %unroll_iter430
  br i1 %niter431.ncmp.1, label %.loopexit67.i.loopexit.unr-lcssa, label %.preheader66.split.i, !llvm.loop !2536

bb.g:                                             ; preds = %._crit_edge.i, %.preheader.i
  %i.ci = phi i32 [ %i.h, %.preheader.i ], [ %i.ei, %._crit_edge.i ]
  %.25478.i = phi i64 [ 0, %.preheader.i ], [ %i.ej, %._crit_edge.i ] ; 2 uses
  %i.cj = load double, ptr %i.bh, align 8, !tbaa !851 ; 2 uses
  %i.ck = load double, ptr %i.bi, align 8, !tbaa !852
  %i.cl = fmul double %i.cj, f0x401921FB54442D18
  %i.cm = tail call double @sin(double noundef %i.cl) #55
  %i.cn = load double, ptr %i.bj, align 8, !tbaa !850
  %i.co = fadd double %i.cj, %i.cn
  store double %i.co, ptr %i.bh, align 8, !tbaa !851
  %.not81.i = icmp eq i32 %i.ci, 0
  br i1 %.not81.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.cp = fmul double %i.ck, %i.cm
  %.fr160 = freeze double %i.cp                   ; 2 uses
  %i.cq = fptrunc double %.fr160 to float         ; 6 uses
  %i.cr = mul i64 %.25478.i, %i.bk
  %i.cs = getelementptr i8, ptr %1, i64 %i.cr     ; 2 uses
  %i.ct = fcmp olt double %.fr160, f0xBFF0000010000000 ; 3 uses
  %i.cu = fpext float %i.cq to double             ; 2 uses
  %i.cv = fcmp ogt double %i.cu, 1.000000e+00
  %i.cw = select i1 %i.cv, double 1.000000e+00, double %i.cu
  %i.cx = fmul double %i.cw, f0x41DFFFFFFFC00000
  %i.cy = fptosi double %i.cx to i32
  %i.cz = fcmp ogt float %i.cq, 1.000000e+00
  %i.da = select i1 %i.cz, float 1.000000e+00, float %i.cq
  %i.db = fmul float %i.da, f0x4AFFFFFE
  %i.dc = fptosi float %i.db to i32
  %i.dd = fadd float %i.cq, 0.000000e+00          ; 2 uses
  %i.de = fcmp ogt float %i.dd, 1.000000e+00
  %i.df = select i1 %i.de, float 1.000000e+00, float %i.dd ; 2 uses
  %i.dg = fmul float %i.df, 3.276700e+04
  %i.dh = fptosi float %i.dg to i16
  %i.di = fadd float %i.df, 1.000000e+00
  %i.dj = fmul float %i.di, 1.275000e+02
  %i.dk = fptoui float %i.dj to i8
  %spec.select79.i = select i1 %i.ct, i32 -8388607, i32 %i.dc ; 3 uses
  %i.dl = trunc i32 %spec.select79.i to i8        ; 2 uses
  %i.dm = lshr i32 %spec.select79.i, 8
  %i.dn = trunc i32 %i.dm to i8                   ; 2 uses
  %i.do = lshr i32 %spec.select79.i, 16
  %i.dp = trunc i32 %i.do to i8                   ; 2 uses
  %spec.select.i = select i1 %i.ct, i8 0, i8 %i.dk
  br i1 %i.ct, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %ma_pcm_convert.exit.i.us
  %.277.i.us = phi i64 [ %i.dv, %ma_pcm_convert.exit.i.us ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dq = mul nuw i64 %.277.i.us, %i.bl
  %i.dr = getelementptr i8, ptr %i.cs, i64 %i.dq  ; 7 uses
  %i.ds = load i32, ptr %i.e, align 8, !tbaa !854
  switch i32 %i.ds, label %ma_pcm_convert.exit.i.us [
    i32 5, label %ma_pcm_convert.exit.loopexit.i.us
    i32 1, label %ma_dither_f32.exit.i.preheader.i.us
    i32 2, label %bb.h
    i32 3, label %.lr.ph.i134.i.preheader.i.us
    i32 4, label %.lr.ph.i138.i.preheader.i.us
  ]

.lr.ph.i138.i.preheader.i.us:                     ; preds = %.lr.ph.i.split.us
  store i32 -2147483647, ptr %i.dr, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i.us

.lr.ph.i134.i.preheader.i.us:                     ; preds = %.lr.ph.i.split.us
  store i8 %i.dl, ptr %i.dr, align 1, !tbaa !119
  %i.dt = getelementptr i8, ptr %i.dr, i64 1
  store i8 %i.dn, ptr %i.dt, align 1, !tbaa !119
  %i.du = getelementptr i8, ptr %i.dr, i64 2
  store i8 %i.dp, ptr %i.du, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i.us

bb.h:                                             ; preds = %.lr.ph.i.split.us
  store i16 -32767, ptr %i.dr, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i.us

ma_dither_f32.exit.i.preheader.i.us:              ; preds = %.lr.ph.i.split.us
  store i8 0, ptr %i.dr, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i.us

ma_pcm_convert.exit.loopexit.i.us:                ; preds = %.lr.ph.i.split.us
  store float %i.cq, ptr %i.dr, align 1
  br label %ma_pcm_convert.exit.i.us

ma_pcm_convert.exit.i.us:                         ; preds = %bb.h, %ma_pcm_convert.exit.loopexit.i.us, %ma_dither_f32.exit.i.preheader.i.us, %.lr.ph.i134.i.preheader.i.us, %.lr.ph.i138.i.preheader.i.us, %.lr.ph.i.split.us
  %i.dv = add nuw nsw i64 %.277.i.us, 1           ; 2 uses
  %i.dw = load i32, ptr %i.g, align 4, !tbaa !855 ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = icmp samesign ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %.lr.ph.i.split.us, label %._crit_edge.i, !llvm.loop !2540

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %ma_pcm_convert.exit.i
  %.277.i = phi i64 [ %i.ee, %ma_pcm_convert.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dz = mul nuw i64 %.277.i, %i.bl
  %i.ea = getelementptr i8, ptr %i.cs, i64 %i.dz  ; 7 uses
  %i.eb = load i32, ptr %i.e, align 8, !tbaa !854
  switch i32 %i.eb, label %ma_pcm_convert.exit.i [
    i32 5, label %ma_pcm_convert.exit.loopexit.i
    i32 1, label %ma_dither_f32.exit.i.preheader.i
    i32 2, label %bb.i
    i32 3, label %.lr.ph.i134.i.preheader.i
    i32 4, label %.lr.ph.i138.i.preheader.i
  ]

.lr.ph.i134.i.preheader.i:                        ; preds = %.lr.ph.i.split
  store i8 %i.dl, ptr %i.ea, align 1, !tbaa !119
  %i.ec = getelementptr i8, ptr %i.ea, i64 1
  store i8 %i.dn, ptr %i.ec, align 1, !tbaa !119
  %i.ed = getelementptr i8, ptr %i.ea, i64 2
  store i8 %i.dp, ptr %i.ed, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i

ma_dither_f32.exit.i.preheader.i:                 ; preds = %.lr.ph.i.split
  store i8 %spec.select.i, ptr %i.ea, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i

.lr.ph.i138.i.preheader.i:                        ; preds = %.lr.ph.i.split
  store i32 %i.cy, ptr %i.ea, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i

bb.i:                                             ; preds = %.lr.ph.i.split
  store i16 %i.dh, ptr %i.ea, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i

ma_pcm_convert.exit.loopexit.i:                   ; preds = %.lr.ph.i.split
  store float %i.cq, ptr %i.ea, align 1
  br label %ma_pcm_convert.exit.i

ma_pcm_convert.exit.i:                            ; preds = %bb.i, %ma_pcm_convert.exit.loopexit.i, %.lr.ph.i138.i.preheader.i, %ma_dither_f32.exit.i.preheader.i, %.lr.ph.i134.i.preheader.i, %.lr.ph.i.split
  %i.ee = add nuw nsw i64 %.277.i, 1              ; 2 uses
  %i.ef = load i32, ptr %i.g, align 4, !tbaa !855 ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = icmp samesign ult i64 %i.ee, %i.eg
  br i1 %i.eh, label %.lr.ph.i.split, label %._crit_edge.i, !llvm.loop !2540

._crit_edge.i:                                    ; preds = %ma_pcm_convert.exit.i, %ma_pcm_convert.exit.i.us, %bb.g
  %i.ei = phi i32 [ 0, %bb.g ], [ %i.dw, %ma_pcm_convert.exit.i.us ], [ %i.ef, %ma_pcm_convert.exit.i ]
  %i.ej = add nuw i64 %.25478.i, 1                ; 2 uses
  %exitcond103.not.i = icmp eq i64 %i.ej, %2
  br i1 %exitcond103.not.i, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.g, !llvm.loop !2541

.loopexit65.i.loopexit.unr-lcssa:                 ; preds = %cdce.end.1
  %lcmp.mod436.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod436.not, label %.loopexit65.i, label %.preheader64.split.i.epil.preheader

.preheader64.split.i.epil.preheader:              ; preds = %.loopexit65.i.loopexit.unr-lcssa, %.preheader64.split.i.preheader
  %.epil.init435 = phi double [ %.promoted71.i, %.preheader64.split.i.preheader ], [ %i.bw, %.loopexit65.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod438 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod438)
  %i.ek = fmul double %.epil.init435, f0x401921FB54442D18 ; 2 uses
  %i.el = tail call double @llvm.fabs.f64(double %i.ek)
  %i.em = fcmp oeq double %i.el, +inf
  br i1 %i.em, label %cdce.call.epil, label %cdce.end.epil, !prof !390

cdce.call.epil:                                   ; preds = %.preheader64.split.i.epil.preheader
  %i.en = tail call double @sin(double noundef %i.ek) #55 ; 0 uses
  br label %cdce.end.epil

cdce.end.epil:                                    ; preds = %cdce.call.epil, %.preheader64.split.i.epil.preheader
  %i.eo = fadd double %i.am, %.epil.init435
  br label %.loopexit65.i

.loopexit65.i:                                    ; preds = %._crit_edge.us75.i, %cdce.end.epil, %.loopexit65.i.loopexit.unr-lcssa
  %.us-phi76.i = phi double [ %i.eo, %cdce.end.epil ], [ %i.bw, %.loopexit65.i.loopexit.unr-lcssa ], [ %i.bb, %._crit_edge.us75.i ]
  store double %.us-phi76.i, ptr %i.ai, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i.loopexit.unr-lcssa:                 ; preds = %cdce.end132.1
  %lcmp.mod427.not = icmp eq i64 %xtraiter423, 0
  br i1 %lcmp.mod427.not, label %.loopexit67.i, label %.preheader66.split.i.epil.preheader

.preheader66.split.i.epil.preheader:              ; preds = %.loopexit67.i.loopexit.unr-lcssa, %.preheader66.split.i.preheader
  %.epil.init426 = phi double [ %.promoted.i, %.preheader66.split.i.preheader ], [ %i.ch, %.loopexit67.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod429 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod429)
  %i.ep = fmul double %.epil.init426, f0x401921FB54442D18 ; 2 uses
  %i.eq = tail call double @llvm.fabs.f64(double %i.ep)
  %i.er = fcmp oeq double %i.eq, +inf
  br i1 %i.er, label %cdce.call131.epil, label %cdce.end132.epil, !prof !390

cdce.call131.epil:                                ; preds = %.preheader66.split.i.epil.preheader
  %i.es = tail call double @sin(double noundef %i.ep) #55 ; 0 uses
  br label %cdce.end132.epil

cdce.end132.epil:                                 ; preds = %cdce.call131.epil, %.preheader66.split.i.epil.preheader
  %i.et = fadd double %i.m, %.epil.init426
  br label %.loopexit67.i

.loopexit67.i:                                    ; preds = %._crit_edge.us.i, %cdce.end132.epil, %.loopexit67.i.loopexit.unr-lcssa
  %.us-phi.i = phi double [ %i.et, %cdce.end132.epil ], [ %i.ch, %.loopexit67.i.loopexit.unr-lcssa ], [ %i.ag, %._crit_edge.us.i ]
  store double %.us-phi.i, ptr %i.i, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.j:                                             ; preds = %bb.e
  tail call fastcc void @ma_waveform_read_pcm_frames__square(ptr noundef %0, double noundef 5.000000e-01, ptr noundef %1, i64 noundef %2)
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.k:                                             ; preds = %bb.e
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !854 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !855 ; 9 uses
  switch i32 %i.ev, label %.preheader.i57 [
    i32 5, label %.preheader64.i43
    i32 2, label %.preheader66.i29
  ]

.preheader66.i29:                                 ; preds = %bb.k
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !852
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !850 ; 10 uses
  %i.fd = zext i32 %i.ex to i64                   ; 7 uses
  %.not.i30 = icmp eq i32 %i.ex, 0
  %.promoted.i31 = load double, ptr %i.ey, align 8, !tbaa !851 ; 3 uses
  br i1 %.not.i30, label %.preheader66.split.i40.preheader, label %iter.check300.preheader

iter.check300.preheader:                          ; preds = %.preheader66.i29
  %min.iters.check287 = icmp ult i32 %i.ex, 4
  %min.iters.check289 = icmp ult i32 %i.ex, 16
  %i.fe = and i64 %i.fd, 12
  %n.vec291 = and i64 %i.fd, 4294967280           ; 4 uses
  %cmp.n298 = icmp eq i64 %n.vec291, %i.fd
  %min.epilog.iters.check303 = icmp eq i64 %i.fe, 0
  %n.vec305 = and i64 %i.fd, 4294967292           ; 3 uses
  %cmp.n312 = icmp eq i64 %n.vec305, %i.fd
  br label %iter.check300

.preheader66.split.i40.preheader:                 ; preds = %.preheader66.i29
  %i.ff = add i64 %2, -1
  %xtraiter405 = and i64 %2, 7                    ; 3 uses
  %i.fg = icmp ult i64 %i.ff, 7
  br i1 %i.fg, label %.preheader66.split.i40.epil.preheader, label %.preheader66.split.i40.preheader.new

.preheader66.split.i40.preheader.new:             ; preds = %.preheader66.split.i40.preheader
  %unroll_iter412 = and i64 %2, -8
  br label %.preheader66.split.i40

iter.check300:                                    ; preds = %iter.check300.preheader, %._crit_edge.us.i36
  %.15369.us.i33 = phi i64 [ %i.gf, %._crit_edge.us.i36 ], [ 0, %iter.check300.preheader ] ; 2 uses
  %i.fh = phi double [ %i.ge, %._crit_edge.us.i36 ], [ %.promoted.i31, %iter.check300.preheader ] ; 3 uses
  %i.fi = fptosi double %i.fh to i64
  %i.fj = sitofp i64 %i.fi to double
  %i.fk = fsub double %i.fh, %i.fj
  %i.fl = fadd double %i.fk, -5.000000e-01
  %i.fm = fmul double %i.fl, 2.000000e+00         ; 3 uses
  %i.fn = fcmp ogt double %i.fm, 0.000000e+00
  %i.fo = fneg double %i.fm
  %i.fp = select i1 %i.fn, double %i.fm, double %i.fo
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double 2.000000e+00, double -1.000000e+00)
  %i.fr = fmul double %i.fa, %i.fq
  %i.fs = fptrunc double %i.fr to float
  %i.ft = fmul float %i.fs, 3.276700e+04
  %i.fu = fptosi float %i.ft to i16               ; 3 uses
  %i.fv = mul i64 %.15369.us.i33, %i.fd
  %i.fw = getelementptr [2 x i8], ptr %1, i64 %i.fv ; 3 uses
  br i1 %min.iters.check287, label %vec.epilog.scalar.ph301.preheader, label %vector.main.loop.iter.check288

vector.main.loop.iter.check288:                   ; preds = %iter.check300
  br i1 %min.iters.check289, label %vec.epilog.ph304, label %vector.ph290

vector.ph290:                                     ; preds = %vector.main.loop.iter.check288
  %broadcast.splatinsert292 = insertelement <8 x i16> poison, i16 %i.fu, i64 0
  %broadcast.splat293 = shufflevector <8 x i16> %broadcast.splatinsert292, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body294

vector.body294:                                   ; preds = %vector.ph290, %vector.body294
  %index295 = phi i64 [ 0, %vector.ph290 ], [ %index.next296, %vector.body294 ] ; 2 uses
  %i.fx = getelementptr [2 x i8], ptr %i.fw, i64 %index295 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store <8 x i16> %broadcast.splat293, ptr %i.fx, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat293, ptr %i.fy, align 2, !tbaa !122
  %index.next296 = add nuw i64 %index295, 16      ; 2 uses
  %i.fz = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.fz, label %middle.block297, label %vector.body294, !llvm.loop !2542

middle.block297:                                  ; preds = %vector.body294
end_hunk_0
begin_hunk_1_@ma_waveform_read_pcm_frames:bb.a
  %i.ga = getelementptr [2 x i8], ptr %i.fw, i64 %index309
  store <4 x i16> %broadcast.splat307, ptr %i.ga, align 2, !tbaa !122
  %index.next310 = add nuw i64 %index309, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next310, %n.vec305
  br i1 %i.gb, label %vec.epilog.middle.block311, label %vec.epilog.vector.body308, !llvm.loop !2543

vec.epilog.middle.block311:                       ; preds = %vec.epilog.vector.body308
  br i1 %cmp.n312, label %._crit_edge.us.i36, label %vec.epilog.scalar.ph301.preheader

vec.epilog.scalar.ph301.preheader:                ; preds = %iter.check300, %vec.epilog.iter.check302, %vec.epilog.middle.block311
  %.168.us.i34.ph = phi i64 [ 0, %iter.check300 ], [ %n.vec291, %vec.epilog.iter.check302 ], [ %n.vec305, %vec.epilog.middle.block311 ]
  br label %vec.epilog.scalar.ph301

vec.epilog.scalar.ph301:                          ; preds = %vec.epilog.scalar.ph301.preheader, %vec.epilog.scalar.ph301
  %.168.us.i34 = phi i64 [ %i.gd, %vec.epilog.scalar.ph301 ], [ %.168.us.i34.ph, %vec.epilog.scalar.ph301.preheader ] ; 2 uses
  %i.gc = getelementptr [2 x i8], ptr %i.fw, i64 %.168.us.i34
  store i16 %i.fu, ptr %i.gc, align 2, !tbaa !122
  %i.gd = add nuw nsw i64 %.168.us.i34, 1         ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %i.gd, %i.fd
  br i1 %exitcond.not.i35, label %._crit_edge.us.i36, label %vec.epilog.scalar.ph301, !llvm.loop !2544

._crit_edge.us.i36:                               ; preds = %vec.epilog.scalar.ph301, %vec.epilog.middle.block311, %middle.block297
  %i.ge = fadd double %i.fc, %i.fh                ; 2 uses
  %i.gf = add nuw i64 %.15369.us.i33, 1           ; 2 uses
  %exitcond98.not.i37 = icmp eq i64 %i.gf, %2
  br i1 %exitcond98.not.i37, label %.loopexit67.i38, label %iter.check300, !llvm.loop !2545

.preheader64.i43:                                 ; preds = %bb.k
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !852
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !850 ; 10 uses
  %i.gl = zext i32 %i.ex to i64                   ; 4 uses
  %.not80.i44 = icmp eq i32 %i.ex, 0
  %.promoted71.i45 = load double, ptr %i.gg, align 8, !tbaa !851 ; 3 uses
  br i1 %.not80.i44, label %.preheader64.split.i54.preheader, label %.lr.ph.us74.i46.preheader

.lr.ph.us74.i46.preheader:                        ; preds = %.preheader64.i43
  %min.iters.check315 = icmp ult i32 %i.ex, 8
  %n.vec317 = and i64 %i.gl, 4294967288           ; 3 uses
  %cmp.n324 = icmp eq i64 %n.vec317, %i.gl
  br label %.lr.ph.us74.i46

.preheader64.split.i54.preheader:                 ; preds = %.preheader64.i43
  %i.gm = add i64 %2, -1
  %xtraiter414 = and i64 %2, 7                    ; 3 uses
  %i.gn = icmp ult i64 %i.gm, 7
  br i1 %i.gn, label %.preheader64.split.i54.epil.preheader, label %.preheader64.split.i54.preheader.new

.preheader64.split.i54.preheader.new:             ; preds = %.preheader64.split.i54.preheader
  %unroll_iter421 = and i64 %2, -8
  br label %.preheader64.split.i54

.lr.ph.us74.i46:                                  ; preds = %.lr.ph.us74.i46.preheader, %._crit_edge.us75.i50
  %.05273.us.i47 = phi i64 [ %i.hi, %._crit_edge.us75.i50 ], [ 0, %.lr.ph.us74.i46.preheader ] ; 2 uses
  %i.go = phi double [ %i.hh, %._crit_edge.us75.i50 ], [ %.promoted71.i45, %.lr.ph.us74.i46.preheader ] ; 3 uses
  %i.gp = fptosi double %i.go to i64
  %i.gq = sitofp i64 %i.gp to double
  %i.gr = fsub double %i.go, %i.gq
  %i.gs = fadd double %i.gr, -5.000000e-01
  %i.gt = fmul double %i.gs, 2.000000e+00         ; 3 uses
  %i.gu = fcmp ogt double %i.gt, 0.000000e+00
  %i.gv = fneg double %i.gt
  %i.gw = select i1 %i.gu, double %i.gt, double %i.gv
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double 2.000000e+00, double -1.000000e+00)
  %i.gy = fmul double %i.gi, %i.gx
  %i.gz = fptrunc double %i.gy to float           ; 2 uses
  %i.ha = mul i64 %.05273.us.i47, %i.gl
  %i.hb = getelementptr [4 x i8], ptr %1, i64 %i.ha ; 2 uses
  br i1 %min.iters.check315, label %scalar.ph314.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.us74.i46
  %broadcast.splatinsert318 = insertelement <4 x float> poison, float %i.gz, i64 0
  %broadcast.splat319 = shufflevector <4 x float> %broadcast.splatinsert318, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph316
  %index321 = phi i64 [ 0, %vector.ph316 ], [ %index.next322, %vector.body320 ] ; 2 uses
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %index321 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  store <4 x float> %broadcast.splat319, ptr %i.hc, align 4, !tbaa !349
  store <4 x float> %broadcast.splat319, ptr %i.hd, align 4, !tbaa !349
  %index.next322 = add nuw i64 %index321, 8       ; 2 uses
  %i.he = icmp eq i64 %index.next322, %n.vec317
  br i1 %i.he, label %middle.block323, label %vector.body320, !llvm.loop !2546

middle.block323:                                  ; preds = %vector.body320
  br i1 %cmp.n324, label %._crit_edge.us75.i50, label %scalar.ph314.preheader

scalar.ph314.preheader:                           ; preds = %.lr.ph.us74.i46, %middle.block323
  %.070.us.i48.ph = phi i64 [ 0, %.lr.ph.us74.i46 ], [ %n.vec317, %middle.block323 ]
  br label %scalar.ph314

scalar.ph314:                                     ; preds = %scalar.ph314.preheader, %scalar.ph314
  %.070.us.i48 = phi i64 [ %i.hg, %scalar.ph314 ], [ %.070.us.i48.ph, %scalar.ph314.preheader ] ; 2 uses
  %i.hf = getelementptr [4 x i8], ptr %i.hb, i64 %.070.us.i48
  store float %i.gz, ptr %i.hf, align 4, !tbaa !349
  %i.hg = add nuw nsw i64 %.070.us.i48, 1         ; 2 uses
  %exitcond100.not.i49 = icmp eq i64 %i.hg, %i.gl
  br i1 %exitcond100.not.i49, label %._crit_edge.us75.i50, label %scalar.ph314, !llvm.loop !2547

._crit_edge.us75.i50:                             ; preds = %scalar.ph314, %middle.block323
  %i.hh = fadd double %i.gk, %i.go                ; 2 uses
  %i.hi = add nuw i64 %.05273.us.i47, 1           ; 2 uses
  %exitcond101.not.i51 = icmp eq i64 %i.hi, %2
  br i1 %exitcond101.not.i51, label %.loopexit65.i52, label %.lr.ph.us74.i46, !llvm.loop !2548

.preheader.i57:                                   ; preds = %bb.k
  %i.hj = zext i32 %i.ev to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !118 ; 2 uses
  %i.hm = mul i32 %i.hl, %i.ex
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hq = zext i32 %i.hm to i64
  %i.hr = zext i32 %i.hl to i64                   ; 2 uses
  br label %bb.l

.preheader64.split.i54:                           ; preds = %.preheader64.split.i54, %.preheader64.split.i54.preheader.new
  %i.hs = phi double [ %.promoted71.i45, %.preheader64.split.i54.preheader.new ], [ %i.ia, %.preheader64.split.i54 ]
  %niter422 = phi i64 [ 0, %.preheader64.split.i54.preheader.new ], [ %niter422.next.7, %.preheader64.split.i54 ]
  %i.ht = fadd double %i.gk, %i.hs
  %i.hu = fadd double %i.gk, %i.ht
  %i.hv = fadd double %i.gk, %i.hu
  %i.hw = fadd double %i.gk, %i.hv
  %i.hx = fadd double %i.gk, %i.hw
  %i.hy = fadd double %i.gk, %i.hx
  %i.hz = fadd double %i.gk, %i.hy
  %i.ia = fadd double %i.gk, %i.hz                ; 3 uses
  %niter422.next.7 = add nuw i64 %niter422, 8     ; 2 uses
  %niter422.ncmp.7 = icmp eq i64 %niter422.next.7, %unroll_iter421
  br i1 %niter422.ncmp.7, label %.loopexit65.i52.loopexit.unr-lcssa, label %.preheader64.split.i54, !llvm.loop !2548

.preheader66.split.i40:                           ; preds = %.preheader66.split.i40, %.preheader66.split.i40.preheader.new
  %i.ib = phi double [ %.promoted.i31, %.preheader66.split.i40.preheader.new ], [ %i.ij, %.preheader66.split.i40 ]
  %niter413 = phi i64 [ 0, %.preheader66.split.i40.preheader.new ], [ %niter413.next.7, %.preheader66.split.i40 ]
  %i.ic = fadd double %i.fc, %i.ib
  %i.id = fadd double %i.fc, %i.ic
  %i.ie = fadd double %i.fc, %i.id
  %i.if = fadd double %i.fc, %i.ie
  %i.ig = fadd double %i.fc, %i.if
  %i.ih = fadd double %i.fc, %i.ig
  %i.ii = fadd double %i.fc, %i.ih
  %i.ij = fadd double %i.fc, %i.ii                ; 3 uses
  %niter413.next.7 = add nuw i64 %niter413, 8     ; 2 uses
  %niter413.ncmp.7 = icmp eq i64 %niter413.next.7, %unroll_iter412
  br i1 %niter413.ncmp.7, label %.loopexit67.i38.loopexit.unr-lcssa, label %.preheader66.split.i40, !llvm.loop !2545

bb.l:                                             ; preds = %._crit_edge.i67, %.preheader.i57
  %i.ik = phi i32 [ %i.ex, %.preheader.i57 ], [ %i.kr, %._crit_edge.i67 ]
  %.25478.i58 = phi i64 [ 0, %.preheader.i57 ], [ %i.ks, %._crit_edge.i67 ] ; 2 uses
  %i.il = load double, ptr %i.hn, align 8, !tbaa !851 ; 3 uses
  %i.im = load double, ptr %i.ho, align 8, !tbaa !852
  %i.in = load double, ptr %i.hp, align 8, !tbaa !850
  %i.io = fadd double %i.il, %i.in
  store double %i.io, ptr %i.hn, align 8, !tbaa !851
  %.not81.i59 = icmp eq i32 %i.ik, 0
  br i1 %.not81.i59, label %._crit_edge.i67, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.l
  %i.ip = fptosi double %i.il to i64
  %i.iq = sitofp i64 %i.ip to double
  %i.ir = fsub double %i.il, %i.iq
  %i.is = fadd double %i.ir, -5.000000e-01
  %i.it = fmul double %i.is, 2.000000e+00         ; 3 uses
  %i.iu = fcmp ogt double %i.it, 0.000000e+00
  %i.iv = fneg double %i.it
  %i.iw = select i1 %i.iu, double %i.it, double %i.iv
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.iw, double 2.000000e+00, double -1.000000e+00)
  %i.iy = fmul double %i.im, %i.ix
  %.fr = freeze double %i.iy                      ; 2 uses
  %i.iz = fptrunc double %.fr to float            ; 6 uses
  %i.ja = mul i64 %.25478.i58, %i.hq
  %i.jb = getelementptr i8, ptr %1, i64 %i.ja     ; 2 uses
  %i.jc = fcmp olt double %.fr, f0xBFF0000010000000 ; 3 uses
  %i.jd = fpext float %i.iz to double             ; 2 uses
  %i.je = fcmp ogt double %i.jd, 1.000000e+00
  %i.jf = select i1 %i.je, double 1.000000e+00, double %i.jd
  %i.jg = fmul double %i.jf, f0x41DFFFFFFFC00000
  %i.jh = fptosi double %i.jg to i32
  %i.ji = fcmp ogt float %i.iz, 1.000000e+00
  %i.jj = select i1 %i.ji, float 1.000000e+00, float %i.iz
  %i.jk = fmul float %i.jj, f0x4AFFFFFE
  %i.jl = fptosi float %i.jk to i32
  %i.jm = fadd float %i.iz, 0.000000e+00          ; 2 uses
  %i.jn = fcmp ogt float %i.jm, 1.000000e+00
  %i.jo = select i1 %i.jn, float 1.000000e+00, float %i.jm ; 2 uses
  %i.jp = fmul float %i.jo, 3.276700e+04
  %i.jq = fptosi float %i.jp to i16
  %i.jr = fadd float %i.jo, 1.000000e+00
  %i.js = fmul float %i.jr, 1.275000e+02
  %i.jt = fptoui float %i.js to i8
  %spec.select79.i61 = select i1 %i.jc, i32 -8388607, i32 %i.jl ; 3 uses
  %i.ju = trunc i32 %spec.select79.i61 to i8      ; 2 uses
  %i.jv = lshr i32 %spec.select79.i61, 8
  %i.jw = trunc i32 %i.jv to i8                   ; 2 uses
  %i.jx = lshr i32 %spec.select79.i61, 16
  %i.jy = trunc i32 %i.jx to i8                   ; 2 uses
  %spec.select.i62 = select i1 %i.jc, i8 0, i8 %i.jt
  br i1 %i.jc, label %.lr.ph.i60.split.us, label %.lr.ph.i60.split

.lr.ph.i60.split.us:                              ; preds = %.lr.ph.i60, %ma_pcm_convert.exit.i66.us
  %.277.i63.us = phi i64 [ %i.ke, %ma_pcm_convert.exit.i66.us ], [ 0, %.lr.ph.i60 ] ; 2 uses
  %i.jz = mul nuw i64 %.277.i63.us, %i.hr
  %i.ka = getelementptr i8, ptr %i.jb, i64 %i.jz  ; 7 uses
  %i.kb = load i32, ptr %i.eu, align 8, !tbaa !854
  switch i32 %i.kb, label %ma_pcm_convert.exit.i66.us [
    i32 5, label %ma_pcm_convert.exit.loopexit.i79.us
    i32 1, label %ma_dither_f32.exit.i.preheader.i78.us
    i32 2, label %bb.m
    i32 3, label %.lr.ph.i134.i.preheader.i70.us
    i32 4, label %.lr.ph.i138.i.preheader.i64.us
  ]

.lr.ph.i138.i.preheader.i64.us:                   ; preds = %.lr.ph.i60.split.us
  store i32 -2147483647, ptr %i.ka, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i66.us

.lr.ph.i134.i.preheader.i70.us:                   ; preds = %.lr.ph.i60.split.us
  store i8 %i.ju, ptr %i.ka, align 1, !tbaa !119
  %i.kc = getelementptr i8, ptr %i.ka, i64 1
  store i8 %i.jw, ptr %i.kc, align 1, !tbaa !119
  %i.kd = getelementptr i8, ptr %i.ka, i64 2
  store i8 %i.jy, ptr %i.kd, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66.us

bb.m:                                             ; preds = %.lr.ph.i60.split.us
  store i16 -32767, ptr %i.ka, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i66.us

ma_dither_f32.exit.i.preheader.i78.us:            ; preds = %.lr.ph.i60.split.us
  store i8 0, ptr %i.ka, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66.us

ma_pcm_convert.exit.loopexit.i79.us:              ; preds = %.lr.ph.i60.split.us
  store float %i.iz, ptr %i.ka, align 1
  br label %ma_pcm_convert.exit.i66.us

ma_pcm_convert.exit.i66.us:                       ; preds = %bb.m, %ma_pcm_convert.exit.loopexit.i79.us, %ma_dither_f32.exit.i.preheader.i78.us, %.lr.ph.i134.i.preheader.i70.us, %.lr.ph.i138.i.preheader.i64.us, %.lr.ph.i60.split.us
  %i.ke = add nuw nsw i64 %.277.i63.us, 1         ; 2 uses
  %i.kf = load i32, ptr %i.ew, align 4, !tbaa !855 ; 2 uses
  %i.kg = zext i32 %i.kf to i64
  %i.kh = icmp samesign ult i64 %i.ke, %i.kg
  br i1 %i.kh, label %.lr.ph.i60.split.us, label %._crit_edge.i67, !llvm.loop !2549

.lr.ph.i60.split:                                 ; preds = %.lr.ph.i60, %ma_pcm_convert.exit.i66
  %.277.i63 = phi i64 [ %i.kn, %ma_pcm_convert.exit.i66 ], [ 0, %.lr.ph.i60 ] ; 2 uses
  %i.ki = mul nuw i64 %.277.i63, %i.hr
  %i.kj = getelementptr i8, ptr %i.jb, i64 %i.ki  ; 7 uses
  %i.kk = load i32, ptr %i.eu, align 8, !tbaa !854
  switch i32 %i.kk, label %ma_pcm_convert.exit.i66 [
    i32 5, label %ma_pcm_convert.exit.loopexit.i79
    i32 1, label %ma_dither_f32.exit.i.preheader.i78
    i32 2, label %bb.n
    i32 3, label %.lr.ph.i134.i.preheader.i70
    i32 4, label %.lr.ph.i138.i.preheader.i64
  ]

.lr.ph.i134.i.preheader.i70:                      ; preds = %.lr.ph.i60.split
  store i8 %i.ju, ptr %i.kj, align 1, !tbaa !119
  %i.kl = getelementptr i8, ptr %i.kj, i64 1
  store i8 %i.jw, ptr %i.kl, align 1, !tbaa !119
  %i.km = getelementptr i8, ptr %i.kj, i64 2
  store i8 %i.jy, ptr %i.km, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66

ma_dither_f32.exit.i.preheader.i78:               ; preds = %.lr.ph.i60.split
  store i8 %spec.select.i62, ptr %i.kj, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66

.lr.ph.i138.i.preheader.i64:                      ; preds = %.lr.ph.i60.split
  store i32 %i.jh, ptr %i.kj, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i66

bb.n:                                             ; preds = %.lr.ph.i60.split
  store i16 %i.jq, ptr %i.kj, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i66

ma_pcm_convert.exit.loopexit.i79:                 ; preds = %.lr.ph.i60.split
  store float %i.iz, ptr %i.kj, align 1
  br label %ma_pcm_convert.exit.i66

ma_pcm_convert.exit.i66:                          ; preds = %bb.n, %ma_pcm_convert.exit.loopexit.i79, %.lr.ph.i138.i.preheader.i64, %ma_dither_f32.exit.i.preheader.i78, %.lr.ph.i134.i.preheader.i70, %.lr.ph.i60.split
  %i.kn = add nuw nsw i64 %.277.i63, 1            ; 2 uses
  %i.ko = load i32, ptr %i.ew, align 4, !tbaa !855 ; 2 uses
  %i.kp = zext i32 %i.ko to i64
  %i.kq = icmp samesign ult i64 %i.kn, %i.kp
  br i1 %i.kq, label %.lr.ph.i60.split, label %._crit_edge.i67, !llvm.loop !2549

._crit_edge.i67:                                  ; preds = %ma_pcm_convert.exit.i66, %ma_pcm_convert.exit.i66.us, %bb.l
  %i.kr = phi i32 [ 0, %bb.l ], [ %i.kf, %ma_pcm_convert.exit.i66.us ], [ %i.ko, %ma_pcm_convert.exit.i66 ]
  %i.ks = add nuw i64 %.25478.i58, 1              ; 2 uses
  %exitcond103.not.i68 = icmp eq i64 %i.ks, %2
  br i1 %exitcond103.not.i68, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.l, !llvm.loop !2550

.loopexit65.i52.loopexit.unr-lcssa:               ; preds = %.preheader64.split.i54
  %lcmp.mod418.not = icmp eq i64 %xtraiter414, 0
  br i1 %lcmp.mod418.not, label %.loopexit65.i52, label %.preheader64.split.i54.epil.preheader

.preheader64.split.i54.epil.preheader:            ; preds = %.loopexit65.i52.loopexit.unr-lcssa, %.preheader64.split.i54.preheader
  %.epil.init417 = phi double [ %.promoted71.i45, %.preheader64.split.i54.preheader ], [ %i.ia, %.loopexit65.i52.loopexit.unr-lcssa ]
  %lcmp.mod420 = icmp ne i64 %xtraiter414, 0
  tail call void @llvm.assume(i1 %lcmp.mod420)
  br label %.preheader64.split.i54.epil

.preheader64.split.i54.epil:                      ; preds = %.preheader64.split.i54.epil, %.preheader64.split.i54.epil.preheader
  %i.kt = phi double [ %i.ku, %.preheader64.split.i54.epil ], [ %.epil.init417, %.preheader64.split.i54.epil.preheader ]
  %epil.iter415 = phi i64 [ %epil.iter415.next, %.preheader64.split.i54.epil ], [ 0, %.preheader64.split.i54.epil.preheader ]
  %i.ku = fadd double %i.gk, %i.kt                ; 2 uses
  %epil.iter415.next = add i64 %epil.iter415, 1   ; 2 uses
  %epil.iter415.cmp.not = icmp eq i64 %epil.iter415.next, %xtraiter414
  br i1 %epil.iter415.cmp.not, label %.loopexit65.i52, label %.preheader64.split.i54.epil, !llvm.loop !2551

.loopexit65.i52:                                  ; preds = %._crit_edge.us75.i50, %.loopexit65.i52.loopexit.unr-lcssa, %.preheader64.split.i54.epil
  %.us-phi76.i53 = phi double [ %i.ku, %.preheader64.split.i54.epil ], [ %i.ia, %.loopexit65.i52.loopexit.unr-lcssa ], [ %i.hh, %._crit_edge.us75.i50 ]
  store double %.us-phi76.i53, ptr %i.gg, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i38.loopexit.unr-lcssa:               ; preds = %.preheader66.split.i40
  %lcmp.mod409.not = icmp eq i64 %xtraiter405, 0
  br i1 %lcmp.mod409.not, label %.loopexit67.i38, label %.preheader66.split.i40.epil.preheader

.preheader66.split.i40.epil.preheader:            ; preds = %.loopexit67.i38.loopexit.unr-lcssa, %.preheader66.split.i40.preheader
  %.epil.init408 = phi double [ %.promoted.i31, %.preheader66.split.i40.preheader ], [ %i.ij, %.loopexit67.i38.loopexit.unr-lcssa ]
  %lcmp.mod411 = icmp ne i64 %xtraiter405, 0
  tail call void @llvm.assume(i1 %lcmp.mod411)
  br label %.preheader66.split.i40.epil

.preheader66.split.i40.epil:                      ; preds = %.preheader66.split.i40.epil, %.preheader66.split.i40.epil.preheader
  %i.kv = phi double [ %i.kw, %.preheader66.split.i40.epil ], [ %.epil.init408, %.preheader66.split.i40.epil.preheader ]
  %epil.iter406 = phi i64 [ %epil.iter406.next, %.preheader66.split.i40.epil ], [ 0, %.preheader66.split.i40.epil.preheader ]
  %i.kw = fadd double %i.fc, %i.kv                ; 2 uses
  %epil.iter406.next = add i64 %epil.iter406, 1   ; 2 uses
  %epil.iter406.cmp.not = icmp eq i64 %epil.iter406.next, %xtraiter405
  br i1 %epil.iter406.cmp.not, label %.loopexit67.i38, label %.preheader66.split.i40.epil, !llvm.loop !2552

.loopexit67.i38:                                  ; preds = %._crit_edge.us.i36, %.loopexit67.i38.loopexit.unr-lcssa, %.preheader66.split.i40.epil
  %.us-phi.i39 = phi double [ %i.kw, %.preheader66.split.i40.epil ], [ %i.ij, %.loopexit67.i38.loopexit.unr-lcssa ], [ %i.ge, %._crit_edge.us.i36 ]
  store double %.us-phi.i39, ptr %i.ey, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.o:                                             ; preds = %bb.e
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !854 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !855 ; 9 uses
  switch i32 %i.ky, label %.preheader.i108 [
    i32 5, label %.preheader64.i94
    i32 2, label %.preheader66.i80
  ]

.preheader66.i80:                                 ; preds = %bb.o
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !852
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lf = load double, ptr %i.le, align 8, !tbaa !850 ; 10 uses
  %i.lg = zext i32 %i.la to i64                   ; 7 uses
  %.not.i81 = icmp eq i32 %i.la, 0
  %.promoted.i82 = load double, ptr %i.lb, align 8, !tbaa !851 ; 3 uses
  br i1 %.not.i81, label %.preheader66.split.i91.preheader, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.preheader66.i80
  %min.iters.check = icmp ult i32 %i.la, 4
  %min.iters.check268 = icmp ult i32 %i.la, 16
  %i.lh = and i64 %i.lg, 12
  %n.vec = and i64 %i.lg, 4294967280              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.lg
  %min.epilog.iters.check = icmp eq i64 %i.lh, 0
  %n.vec269 = and i64 %i.lg, 4294967292           ; 3 uses
  %cmp.n274 = icmp eq i64 %n.vec269, %i.lg
  br label %iter.check

.preheader66.split.i91.preheader:                 ; preds = %.preheader66.i80
  %i.li = add i64 %2, -1
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.lj = icmp ult i64 %i.li, 7
  br i1 %i.lj, label %.preheader66.split.i91.epil.preheader, label %.preheader66.split.i91.preheader.new

.preheader66.split.i91.preheader.new:             ; preds = %.preheader66.split.i91.preheader
  %unroll_iter = and i64 %2, -8
  br label %.preheader66.split.i91

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge.us.i87
  %.15369.us.i84 = phi i64 [ %i.me, %._crit_edge.us.i87 ], [ 0, %iter.check.preheader ] ; 2 uses
  %i.lk = phi double [ %i.md, %._crit_edge.us.i87 ], [ %.promoted.i82, %iter.check.preheader ] ; 3 uses
  %i.ll = fptosi double %i.lk to i64
  %i.lm = sitofp i64 %i.ll to double
  %i.ln = fsub double %i.lk, %i.lm
  %i.lo = fadd double %i.ln, -5.000000e-01
  %i.lp = fmul double %i.lo, 2.000000e+00
  %i.lq = fmul double %i.ld, %i.lp
  %i.lr = fptrunc double %i.lq to float
  %i.ls = fmul float %i.lr, 3.276700e+04
  %i.lt = fptosi float %i.ls to i16               ; 3 uses
  %i.lu = mul i64 %.15369.us.i84, %i.lg
  %i.lv = getelementptr [2 x i8], ptr %1, i64 %i.lu ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check268, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.lt, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lw = getelementptr [2 x i8], ptr %i.lv, i64 %index ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.lw, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat, ptr %i.lx, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ly = icmp eq i64 %index.next, %n.vec
  br i1 %i.ly, label %middle.block, label %vector.body, !llvm.loop !2553

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i87, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert270 = insertelement <4 x i16> poison, i16 %i.lt, i64 0
  %broadcast.splat271 = shufflevector <4 x i16> %broadcast.splatinsert270, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index272 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next273, %vec.epilog.vector.body ] ; 2 uses
  %i.lz = getelementptr [2 x i8], ptr %i.lv, i64 %index272
  store <4 x i16> %broadcast.splat271, ptr %i.lz, align 2, !tbaa !122
  %index.next273 = add nuw i64 %index272, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next273, %n.vec269
  br i1 %i.ma, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2554

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n274, label %._crit_edge.us.i87, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.168.us.i85.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec269, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.168.us.i85 = phi i64 [ %i.mc, %vec.epilog.scalar.ph ], [ %.168.us.i85.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.mb = getelementptr [2 x i8], ptr %i.lv, i64 %.168.us.i85
  store i16 %i.lt, ptr %i.mb, align 2, !tbaa !122
  %i.mc = add nuw nsw i64 %.168.us.i85, 1         ; 2 uses
  %exitcond.not.i86 = icmp eq i64 %i.mc, %i.lg
  br i1 %exitcond.not.i86, label %._crit_edge.us.i87, label %vec.epilog.scalar.ph, !llvm.loop !2555

._crit_edge.us.i87:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.md = fadd double %i.lf, %i.lk                ; 2 uses
  %i.me = add nuw i64 %.15369.us.i84, 1           ; 2 uses
  %exitcond98.not.i88 = icmp eq i64 %i.me, %2
  br i1 %exitcond98.not.i88, label %.loopexit67.i89, label %iter.check, !llvm.loop !2556

.preheader64.i94:                                 ; preds = %bb.o
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !852
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !850 ; 10 uses
  %i.mk = zext i32 %i.la to i64                   ; 4 uses
  %.not80.i95 = icmp eq i32 %i.la, 0
  %.promoted71.i96 = load double, ptr %i.mf, align 8, !tbaa !851 ; 3 uses
  br i1 %.not80.i95, label %.preheader64.split.i105.preheader, label %.lr.ph.us74.i97.preheader

.lr.ph.us74.i97.preheader:                        ; preds = %.preheader64.i94
  %min.iters.check275 = icmp ult i32 %i.la, 8
  %n.vec277 = and i64 %i.mk, 4294967288           ; 3 uses
  %cmp.n284 = icmp eq i64 %n.vec277, %i.mk
  br label %.lr.ph.us74.i97

.preheader64.split.i105.preheader:                ; preds = %.preheader64.i94
  %i.ml = add i64 %2, -1
  %xtraiter396 = and i64 %2, 7                    ; 3 uses
  %i.mm = icmp ult i64 %i.ml, 7
  br i1 %i.mm, label %.preheader64.split.i105.epil.preheader, label %.preheader64.split.i105.preheader.new

.preheader64.split.i105.preheader.new:            ; preds = %.preheader64.split.i105.preheader
  %unroll_iter403 = and i64 %2, -8
  br label %.preheader64.split.i105

.lr.ph.us74.i97:                                  ; preds = %.lr.ph.us74.i97.preheader, %._crit_edge.us75.i101
  %.05273.us.i98 = phi i64 [ %i.nd, %._crit_edge.us75.i101 ], [ 0, %.lr.ph.us74.i97.preheader ] ; 2 uses
  %i.mn = phi double [ %i.nc, %._crit_edge.us75.i101 ], [ %.promoted71.i96, %.lr.ph.us74.i97.preheader ] ; 3 uses
  %i.mo = fptosi double %i.mn to i64
  %i.mp = sitofp i64 %i.mo to double
  %i.mq = fsub double %i.mn, %i.mp
  %i.mr = fadd double %i.mq, -5.000000e-01
  %i.ms = fmul double %i.mr, 2.000000e+00
  %i.mt = fmul double %i.mh, %i.ms
  %i.mu = fptrunc double %i.mt to float           ; 2 uses
  %i.mv = mul i64 %.05273.us.i98, %i.mk
  %i.mw = getelementptr [4 x i8], ptr %1, i64 %i.mv ; 2 uses
  br i1 %min.iters.check275, label %scalar.ph.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.us74.i97
  %broadcast.splatinsert278 = insertelement <4 x float> poison, float %i.mu, i64 0
  %broadcast.splat279 = shufflevector <4 x float> %broadcast.splatinsert278, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph276
  %index281 = phi i64 [ 0, %vector.ph276 ], [ %index.next282, %vector.body280 ] ; 2 uses
  %i.mx = getelementptr [4 x i8], ptr %i.mw, i64 %index281 ; 2 uses
  %i.my = getelementptr i8, ptr %i.mx, i64 16
  store <4 x float> %broadcast.splat279, ptr %i.mx, align 4, !tbaa !349
  store <4 x float> %broadcast.splat279, ptr %i.my, align 4, !tbaa !349
  %index.next282 = add nuw i64 %index281, 8       ; 2 uses
  %i.mz = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.mz, label %middle.block283, label %vector.body280, !llvm.loop !2557

middle.block283:                                  ; preds = %vector.body280
  br i1 %cmp.n284, label %._crit_edge.us75.i101, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us74.i97, %middle.block283
  %.070.us.i99.ph = phi i64 [ 0, %.lr.ph.us74.i97 ], [ %n.vec277, %middle.block283 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.070.us.i99 = phi i64 [ %i.nb, %scalar.ph ], [ %.070.us.i99.ph, %scalar.ph.preheader ] ; 2 uses
  %i.na = getelementptr [4 x i8], ptr %i.mw, i64 %.070.us.i99
  store float %i.mu, ptr %i.na, align 4, !tbaa !349
  %i.nb = add nuw nsw i64 %.070.us.i99, 1         ; 2 uses
  %exitcond100.not.i100 = icmp eq i64 %i.nb, %i.mk
  br i1 %exitcond100.not.i100, label %._crit_edge.us75.i101, label %scalar.ph, !llvm.loop !2558

._crit_edge.us75.i101:                            ; preds = %scalar.ph, %middle.block283
  %i.nc = fadd double %i.mj, %i.mn                ; 2 uses
  %i.nd = add nuw i64 %.05273.us.i98, 1           ; 2 uses
  %exitcond101.not.i102 = icmp eq i64 %i.nd, %2
  br i1 %exitcond101.not.i102, label %.loopexit65.i103, label %.lr.ph.us74.i97, !llvm.loop !2559

.preheader.i108:                                  ; preds = %bb.o
  %i.ne = zext i32 %i.ky to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !118 ; 2 uses
  %i.nh = mul i32 %i.ng, %i.la
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.nl = zext i32 %i.nh to i64
  %i.nm = zext i32 %i.ng to i64                   ; 2 uses
  br label %bb.p

.preheader64.split.i105:                          ; preds = %.preheader64.split.i105, %.preheader64.split.i105.preheader.new
  %i.nn = phi double [ %.promoted71.i96, %.preheader64.split.i105.preheader.new ], [ %i.nv, %.preheader64.split.i105 ]
  %niter404 = phi i64 [ 0, %.preheader64.split.i105.preheader.new ], [ %niter404.next.7, %.preheader64.split.i105 ]
  %i.no = fadd double %i.mj, %i.nn
  %i.np = fadd double %i.mj, %i.no
  %i.nq = fadd double %i.mj, %i.np
  %i.nr = fadd double %i.mj, %i.nq
  %i.ns = fadd double %i.mj, %i.nr
  %i.nt = fadd double %i.mj, %i.ns
  %i.nu = fadd double %i.mj, %i.nt
  %i.nv = fadd double %i.mj, %i.nu                ; 3 uses
  %niter404.next.7 = add nuw i64 %niter404, 8     ; 2 uses
  %niter404.ncmp.7 = icmp eq i64 %niter404.next.7, %unroll_iter403
  br i1 %niter404.ncmp.7, label %.loopexit65.i103.loopexit.unr-lcssa, label %.preheader64.split.i105, !llvm.loop !2559

.preheader66.split.i91:                           ; preds = %.preheader66.split.i91, %.preheader66.split.i91.preheader.new
  %i.nw = phi double [ %.promoted.i82, %.preheader66.split.i91.preheader.new ], [ %i.oe, %.preheader66.split.i91 ]
  %niter = phi i64 [ 0, %.preheader66.split.i91.preheader.new ], [ %niter.next.7, %.preheader66.split.i91 ]
  %i.nx = fadd double %i.lf, %i.nw
  %i.ny = fadd double %i.lf, %i.nx
  %i.nz = fadd double %i.lf, %i.ny
  %i.oa = fadd double %i.lf, %i.nz
  %i.ob = fadd double %i.lf, %i.oa
  %i.oc = fadd double %i.lf, %i.ob
  %i.od = fadd double %i.lf, %i.oc
  %i.oe = fadd double %i.lf, %i.od                ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit67.i89.loopexit.unr-lcssa, label %.preheader66.split.i91, !llvm.loop !2556

bb.p:                                             ; preds = %._crit_edge.i118, %.preheader.i108
  %i.of = phi i32 [ %i.la, %.preheader.i108 ], [ %i.qi, %._crit_edge.i118 ]
  %.25478.i109 = phi i64 [ 0, %.preheader.i108 ], [ %i.qj, %._crit_edge.i118 ] ; 2 uses
  %i.og = load double, ptr %i.ni, align 8, !tbaa !851 ; 3 uses
  %i.oh = load double, ptr %i.nj, align 8, !tbaa !852
  %i.oi = load double, ptr %i.nk, align 8, !tbaa !850
  %i.oj = fadd double %i.og, %i.oi
  store double %i.oj, ptr %i.ni, align 8, !tbaa !851
  %.not81.i110 = icmp eq i32 %i.of, 0
  br i1 %.not81.i110, label %._crit_edge.i118, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.p
  %i.ok = fptosi double %i.og to i64
  %i.ol = sitofp i64 %i.ok to double
  %i.om = fsub double %i.og, %i.ol
  %i.on = fadd double %i.om, -5.000000e-01
  %i.oo = fmul double %i.on, 2.000000e+00
  %i.op = fmul double %i.oh, %i.oo
  %.fr159 = freeze double %i.op                   ; 2 uses
  %i.oq = fptrunc double %.fr159 to float         ; 6 uses
  %i.or = mul i64 %.25478.i109, %i.nl
  %i.os = getelementptr i8, ptr %1, i64 %i.or     ; 2 uses
  %i.ot = fcmp olt double %.fr159, f0xBFF0000010000000 ; 3 uses
  %i.ou = fpext float %i.oq to double             ; 2 uses
  %i.ov = fcmp ogt double %i.ou, 1.000000e+00
  %i.ow = select i1 %i.ov, double 1.000000e+00, double %i.ou
  %i.ox = fmul double %i.ow, f0x41DFFFFFFFC00000
  %i.oy = fptosi double %i.ox to i32
  %i.oz = fcmp ogt float %i.oq, 1.000000e+00
  %i.pa = select i1 %i.oz, float 1.000000e+00, float %i.oq
  %i.pb = fmul float %i.pa, f0x4AFFFFFE
  %i.pc = fptosi float %i.pb to i32
  %i.pd = fadd float %i.oq, 0.000000e+00          ; 2 uses
  %i.pe = fcmp ogt float %i.pd, 1.000000e+00
  %i.pf = select i1 %i.pe, float 1.000000e+00, float %i.pd ; 2 uses
  %i.pg = fmul float %i.pf, 3.276700e+04
  %i.ph = fptosi float %i.pg to i16
  %i.pi = fadd float %i.pf, 1.000000e+00
  %i.pj = fmul float %i.pi, 1.275000e+02
  %i.pk = fptoui float %i.pj to i8
  %spec.select79.i112 = select i1 %i.ot, i32 -8388607, i32 %i.pc ; 3 uses
  %i.pl = trunc i32 %spec.select79.i112 to i8     ; 2 uses
  %i.pm = lshr i32 %spec.select79.i112, 8
  %i.pn = trunc i32 %i.pm to i8                   ; 2 uses
  %i.po = lshr i32 %spec.select79.i112, 16
  %i.pp = trunc i32 %i.po to i8                   ; 2 uses
  %spec.select.i113 = select i1 %i.ot, i8 0, i8 %i.pk
  br i1 %i.ot, label %.lr.ph.i111.split.us, label %.lr.ph.i111.split

.lr.ph.i111.split.us:                             ; preds = %.lr.ph.i111, %ma_pcm_convert.exit.i117.us
  %.277.i114.us = phi i64 [ %i.pv, %ma_pcm_convert.exit.i117.us ], [ 0, %.lr.ph.i111 ] ; 2 uses
  %i.pq = mul nuw i64 %.277.i114.us, %i.nm
  %i.pr = getelementptr i8, ptr %i.os, i64 %i.pq  ; 7 uses
  %i.ps = load i32, ptr %i.kx, align 8, !tbaa !854
  switch i32 %i.ps, label %ma_pcm_convert.exit.i117.us [
    i32 5, label %ma_pcm_convert.exit.loopexit.i130.us
    i32 1, label %ma_dither_f32.exit.i.preheader.i129.us
    i32 2, label %bb.q
    i32 3, label %.lr.ph.i134.i.preheader.i121.us
    i32 4, label %.lr.ph.i138.i.preheader.i115.us
  ]

.lr.ph.i138.i.preheader.i115.us:                  ; preds = %.lr.ph.i111.split.us
  store i32 -2147483647, ptr %i.pr, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i117.us

.lr.ph.i134.i.preheader.i121.us:                  ; preds = %.lr.ph.i111.split.us
  store i8 %i.pl, ptr %i.pr, align 1, !tbaa !119
  %i.pt = getelementptr i8, ptr %i.pr, i64 1
  store i8 %i.pn, ptr %i.pt, align 1, !tbaa !119
  %i.pu = getelementptr i8, ptr %i.pr, i64 2
  store i8 %i.pp, ptr %i.pu, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i117.us

bb.q:                                             ; preds = %.lr.ph.i111.split.us
  store i16 -32767, ptr %i.pr, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i117.us

ma_dither_f32.exit.i.preheader.i129.us:           ; preds = %.lr.ph.i111.split.us
  store i8 0, ptr %i.pr, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i117.us

ma_pcm_convert.exit.loopexit.i130.us:             ; preds = %.lr.ph.i111.split.us
  store float %i.oq, ptr %i.pr, align 1
  br label %ma_pcm_convert.exit.i117.us

ma_pcm_convert.exit.i117.us:                      ; preds = %bb.q, %ma_pcm_convert.exit.loopexit.i130.us, %ma_dither_f32.exit.i.preheader.i129.us, %.lr.ph.i134.i.preheader.i121.us, %.lr.ph.i138.i.preheader.i115.us, %.lr.ph.i111.split.us
  %i.pv = add nuw nsw i64 %.277.i114.us, 1        ; 2 uses
  %i.pw = load i32, ptr %i.kz, align 4, !tbaa !855 ; 2 uses
  %i.px = zext i32 %i.pw to i64
  %i.py = icmp samesign ult i64 %i.pv, %i.px
  br i1 %i.py, label %.lr.ph.i111.split.us, label %._crit_edge.i118, !llvm.loop !2560

.lr.ph.i111.split:                                ; preds = %.lr.ph.i111, %ma_pcm_convert.exit.i117
  %.277.i114 = phi i64 [ %i.qe, %ma_pcm_convert.exit.i117 ], [ 0, %.lr.ph.i111 ] ; 2 uses
  %i.pz = mul nuw i64 %.277.i114, %i.nm
  %i.qa = getelementptr i8, ptr %i.os, i64 %i.pz  ; 7 uses
  %i.qb = load i32, ptr %i.kx, align 8, !tbaa !854
  switch i32 %i.qb, label %ma_pcm_convert.exit.i117 [
    i32 5, label %ma_pcm_convert.exit.loopexit.i130
    i32 1, label %ma_dither_f32.exit.i.preheader.i129
    i32 2, label %bb.r
    i32 3, label %.lr.ph.i134.i.preheader.i121
    i32 4, label %.lr.ph.i138.i.preheader.i115
  ]

.lr.ph.i134.i.preheader.i121:                     ; preds = %.lr.ph.i111.split
  store i8 %i.pl, ptr %i.qa, align 1, !tbaa !119
  %i.qc = getelementptr i8, ptr %i.qa, i64 1
  store i8 %i.pn, ptr %i.qc, align 1, !tbaa !119
  %i.qd = getelementptr i8, ptr %i.qa, i64 2
  store i8 %i.pp, ptr %i.qd, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i117

ma_dither_f32.exit.i.preheader.i129:              ; preds = %.lr.ph.i111.split
  store i8 %spec.select.i113, ptr %i.qa, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i117

.lr.ph.i138.i.preheader.i115:                     ; preds = %.lr.ph.i111.split
  store i32 %i.oy, ptr %i.qa, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i117

bb.r:                                             ; preds = %.lr.ph.i111.split
  store i16 %i.ph, ptr %i.qa, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i117

ma_pcm_convert.exit.loopexit.i130:                ; preds = %.lr.ph.i111.split
  store float %i.oq, ptr %i.qa, align 1
  br label %ma_pcm_convert.exit.i117

ma_pcm_convert.exit.i117:                         ; preds = %bb.r, %ma_pcm_convert.exit.loopexit.i130, %.lr.ph.i138.i.preheader.i115, %ma_dither_f32.exit.i.preheader.i129, %.lr.ph.i134.i.preheader.i121, %.lr.ph.i111.split
  %i.qe = add nuw nsw i64 %.277.i114, 1           ; 2 uses
  %i.qf = load i32, ptr %i.kz, align 4, !tbaa !855 ; 2 uses
  %i.qg = zext i32 %i.qf to i64
  %i.qh = icmp samesign ult i64 %i.qe, %i.qg
  br i1 %i.qh, label %.lr.ph.i111.split, label %._crit_edge.i118, !llvm.loop !2560

._crit_edge.i118:                                 ; preds = %ma_pcm_convert.exit.i117, %ma_pcm_convert.exit.i117.us, %bb.p
  %i.qi = phi i32 [ 0, %bb.p ], [ %i.pw, %ma_pcm_convert.exit.i117.us ], [ %i.qf, %ma_pcm_convert.exit.i117 ]
  %i.qj = add nuw i64 %.25478.i109, 1             ; 2 uses
  %exitcond103.not.i119 = icmp eq i64 %i.qj, %2
  br i1 %exitcond103.not.i119, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.p, !llvm.loop !2561

.loopexit65.i103.loopexit.unr-lcssa:              ; preds = %.preheader64.split.i105
  %lcmp.mod400.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod400.not, label %.loopexit65.i103, label %.preheader64.split.i105.epil.preheader

.preheader64.split.i105.epil.preheader:           ; preds = %.loopexit65.i103.loopexit.unr-lcssa, %.preheader64.split.i105.preheader
  %.epil.init399 = phi double [ %.promoted71.i96, %.preheader64.split.i105.preheader ], [ %i.nv, %.loopexit65.i103.loopexit.unr-lcssa ]
  %lcmp.mod402 = icmp ne i64 %xtraiter396, 0
  tail call void @llvm.assume(i1 %lcmp.mod402)
  br label %.preheader64.split.i105.epil

.preheader64.split.i105.epil:                     ; preds = %.preheader64.split.i105.epil, %.preheader64.split.i105.epil.preheader
  %i.qk = phi double [ %i.ql, %.preheader64.split.i105.epil ], [ %.epil.init399, %.preheader64.split.i105.epil.preheader ]
  %epil.iter397 = phi i64 [ %epil.iter397.next, %.preheader64.split.i105.epil ], [ 0, %.preheader64.split.i105.epil.preheader ]
  %i.ql = fadd double %i.mj, %i.qk                ; 2 uses
  %epil.iter397.next = add i64 %epil.iter397, 1   ; 2 uses
  %epil.iter397.cmp.not = icmp eq i64 %epil.iter397.next, %xtraiter396
  br i1 %epil.iter397.cmp.not, label %.loopexit65.i103, label %.preheader64.split.i105.epil, !llvm.loop !2562

.loopexit65.i103:                                 ; preds = %._crit_edge.us75.i101, %.loopexit65.i103.loopexit.unr-lcssa, %.preheader64.split.i105.epil
  %.us-phi76.i104 = phi double [ %i.ql, %.preheader64.split.i105.epil ], [ %i.nv, %.loopexit65.i103.loopexit.unr-lcssa ], [ %i.nc, %._crit_edge.us75.i101 ]
  store double %.us-phi76.i104, ptr %i.mf, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i89.loopexit.unr-lcssa:               ; preds = %.preheader66.split.i91
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit67.i89, label %.preheader66.split.i91.epil.preheader

.preheader66.split.i91.epil.preheader:            ; preds = %.loopexit67.i89.loopexit.unr-lcssa, %.preheader66.split.i91.preheader
  %.epil.init = phi double [ %.promoted.i82, %.preheader66.split.i91.preheader ], [ %i.oe, %.loopexit67.i89.loopexit.unr-lcssa ]
  %lcmp.mod395 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod395)
  br label %.preheader66.split.i91.epil

.preheader66.split.i91.epil:                      ; preds = %.preheader66.split.i91.epil, %.preheader66.split.i91.epil.preheader
  %i.qm = phi double [ %i.qn, %.preheader66.split.i91.epil ], [ %.epil.init, %.preheader66.split.i91.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader66.split.i91.epil ], [ 0, %.preheader66.split.i91.epil.preheader ]
  %i.qn = fadd double %i.lf, %i.qm                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit67.i89, label %.preheader66.split.i91.epil, !llvm.loop !2563

.loopexit67.i89:                                  ; preds = %._crit_edge.us.i87, %.loopexit67.i89.loopexit.unr-lcssa, %.preheader66.split.i91.epil
  %.us-phi.i90 = phi double [ %i.qn, %.preheader66.split.i91.epil ], [ %i.oe, %.loopexit67.i89.loopexit.unr-lcssa ], [ %i.md, %._crit_edge.us.i87 ]
  store double %.us-phi.i90, ptr %i.lb, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.s:                                             ; preds = %bb.d
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !850
  %i.qq = sitofp i64 %2 to double
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !851
  %i.qt = tail call double @llvm.fmuladd.f64(double %i.qp, double %i.qq, double %i.qs)
  store double %i.qt, ptr %i.qr, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

ma_waveform_read_pcm_frames__sine.exit:           ; preds = %._crit_edge.i118, %._crit_edge.i67, %._crit_edge.i, %.loopexit67.i89, %.loopexit65.i103, %.loopexit67.i38, %.loopexit65.i52, %.loopexit67.i, %.loopexit65.i, %bb.j, %bb.s
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %ma_waveform_read_pcm_frames__sine.exit
  store i64 %2, ptr %3, align 8, !tbaa !164
  br label %bb.u

bb.u:                                             ; preds = %ma_waveform_read_pcm_frames__sine.exit, %bb.t, %bb.e, %bb.c
  %.0 = phi i32 [ -3, %bb.e ], [ -2, %bb.c ], [ 0, %ma_waveform_read_pcm_frames__sine.exit ], [ 0, %bb.t ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ma_waveform_read_pcm_frames__square(ptr nofree noundef nonnull captures(none) %0, double noundef %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #48 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !854  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !855  ; 9 uses
  switch i32 %i.c, label %.preheader [
    i32 5, label %.preheader68
    i32 2, label %.preheader70
  ]

.preheader70:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load double, ptr %i.g, align 8, !tbaa !852 ; 2 uses
  %i.i = fneg double %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load double, ptr %i.j, align 8, !tbaa !850 ; 10 uses
  %i.l = zext i32 %i.e to i64                     ; 7 uses
  %.not = icmp eq i32 %i.e, 0
  %.promoted = load double, ptr %i.f, align 8, !tbaa !851 ; 3 uses
  br i1 %.not, label %.preheader70.split.preheader, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.preheader70
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check123 = icmp ult i32 %i.e, 16
  %i.m = and i64 %i.l, 12
  %n.vec = and i64 %i.l, 4294967280               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.l
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  %n.vec124 = and i64 %i.l, 4294967292            ; 3 uses
  %cmp.n129 = icmp eq i64 %n.vec124, %i.l
  br label %iter.check

.preheader70.split.preheader:                     ; preds = %.preheader70
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.n = icmp ult i64 %3, 8
  br i1 %i.n, label %.preheader70.split.epil.preheader, label %.preheader70.split.preheader.new

.preheader70.split.preheader.new:                 ; preds = %.preheader70.split.preheader
  %unroll_iter = and i64 %3, -8
  br label %.preheader70.split

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge.us
  %.15673.us = phi i64 [ %i.ag, %._crit_edge.us ], [ 0, %iter.check.preheader ] ; 2 uses
  %i.o = phi double [ %i.af, %._crit_edge.us ], [ %.promoted, %iter.check.preheader ] ; 3 uses
  %i.p = fptosi double %i.o to i64
  %i.q = sitofp i64 %i.p to double
  %i.r = fsub double %i.o, %i.q
  %i.s = fcmp olt double %i.r, %1
  %.0.i.i.us = select i1 %i.s, double %i.h, double %i.i
  %i.t = fptrunc double %.0.i.i.us to float
  %i.u = fmul float %i.t, 3.276700e+04
  %i.v = fptosi float %i.u to i16                 ; 3 uses
  %i.w = mul i64 %.15673.us, %i.l
  %i.x = getelementptr [2 x i8], ptr %2, i64 %i.w ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
end_hunk_1
begin_hunk_2_@ma_resource_manager_inline_notification_init:bb.a
  store ptr @ma_async_notification_poll__on_signal, ptr %1, align 8, !tbaa !149
  store i32 0, ptr %i.d, align 8, !tbaa !150
  br label %ma_async_notification_event_init.exit

ma_async_notification_event_init.exit:            ; preds = %bb.b, %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_resource_manager_post_job(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.c = tail call i32 @ma_job_queue_post(ptr noundef nonnull %i.b, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ma_resource_manager_inline_notification_uninit(ptr noundef nonnull %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !917
  %i.c = getelementptr i8, ptr %i.b, i64 68
  %.val = load i32, ptr %i.c, align 4, !tbaa !876
  %i.d = and i32 %.val, 2
  %.not.not = icmp eq i32 %i.d, 0
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.e) #55 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.g) #55 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ma_resource_manager_inline_notification_wait_and_uninit(ptr noundef nonnull %0) unnamed_addr #8 {
bb.a:
  tail call fastcc void @ma_resource_manager_inline_notification_wait(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !917
  %i.c = getelementptr i8, ptr %i.b, i64 68
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !876
  %i.d = and i32 %.val.i, 2
  %.not.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.not.i, label %bb.b, label %ma_resource_manager_inline_notification_uninit.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.e) #55 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.g) #55 ; 0 uses
  br label %ma_resource_manager_inline_notification_uninit.exit

ma_resource_manager_inline_notification_uninit.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ma_resource_manager_data_buffer_read_pcm_frames(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 0, ptr %i.a, align 8, !tbaa !164
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !912
  %.not44 = icmp eq i32 %i.h, 0
  br i1 %.not44, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.g, align 8, !tbaa !912
  %i.i = load atomic i32, ptr %i.d seq_cst, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !906
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !913
  %.off = add i32 %i.n, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !904  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %ma_resource_manager_get_log.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !874
  br label %ma_resource_manager_get_log.exit.i

ma_resource_manager_get_log.exit.i:               ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.s, %bb.i ], [ null, %bb.h ]
  %i.t = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %.0.i.i, i32 noundef 1, ptr noundef nonnull @.str.503) ; 0 uses
  br label %ma_data_source_seek_to_pcm_frame.exit.thread

bb.j:                                             ; preds = %bb.g
  %.0.i.ph = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load i64, ptr %i.u, align 8, !tbaa !911  ; 2 uses
  %i.w = load ptr, ptr %.0.i.ph, align 8, !tbaa !358
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !589  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !359
  %i.ac = icmp ugt i64 %i.v, %i.ab
  br i1 %i.ac, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %ma_data_source_seek_to_pcm_frame.exit

ma_data_source_seek_to_pcm_frame.exit:            ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !590
  %i.af = add i64 %i.ae, %i.v
  %i.ag = tail call i32 %i.y(ptr noundef nonnull %.0.i.ph, i64 noundef %i.af) #55, !inline_history !591 ; 2 uses
  switch i32 %i.ag, label %ma_data_source_seek_to_pcm_frame.exit.thread [
    i32 0, label %bb.n
    i32 -25, label %bb.l
  ]

bb.l:                                             ; preds = %ma_data_source_seek_to_pcm_frame.exit
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !906
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load atomic i32, ptr %i.ai seq_cst, align 8
  %i.ak = icmp eq i32 %i.aj, 3
  br i1 %i.ak, label %bb.m, label %ma_data_source_seek_to_pcm_frame.exit.thread

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.g, align 8, !tbaa !912
  br label %ma_data_source_seek_to_pcm_frame.exit.thread

bb.n:                                             ; preds = %ma_data_source_seek_to_pcm_frame.exit, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !906
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load atomic i32, ptr %i.an seq_cst, align 8
  %i.ap = icmp eq i32 %i.ao, 2
  br i1 %i.ap, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !906
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load atomic i32, ptr %i.ar seq_cst, align 8
  %i.at = icmp eq i32 %i.as, -19                  ; 2 uses
  %i.au = call i32 @ma_resource_manager_data_buffer_get_available_frames(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.av = icmp eq i32 %i.au, 0
  %or.cond3 = select i1 %i.av, i1 %i.at, i1 false
  br i1 %or.cond3, label %bb.p, label %.thread66

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !164 ; 3 uses
  %i.ax = icmp ugt i64 %2, %i.aw
  br i1 %i.ax, label %bb.q, label %.thread66

.thread66:                                        ; preds = %bb.o, %bb.p
  %.0.shrunk.ph = phi i1 [ false, %bb.p ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %i.ay = xor i1 %.0.shrunk.ph, true
  br label %.thread

bb.q:                                             ; preds = %bb.p
  %i.az = icmp eq i64 %i.aw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br i1 %i.az, label %bb.y, label %.thread

.thread:                                          ; preds = %bb.n, %.thread66, %bb.q
  %.164 = phi i1 [ %i.ay, %.thread66 ], [ false, %bb.q ], [ true, %bb.n ] ; 2 uses
  %.13763 = phi i64 [ %2, %.thread66 ], [ %i.aw, %bb.q ], [ %2, %bb.n ]
  %i.ba = load atomic i32, ptr %i.d seq_cst, align 4
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.x, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !906
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !913
  switch i32 %i.be, label %bb.v [
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !904 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %ma_resource_manager_get_log.exit.i53, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !874
  br label %ma_resource_manager_get_log.exit.i53

ma_resource_manager_get_log.exit.i53:             ; preds = %bb.w, %bb.v
  %.0.i.i54 = phi ptr [ %i.bm, %bb.w ], [ null, %bb.v ]
  %i.bn = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %.0.i.i54, i32 noundef 1, ptr noundef nonnull @.str.503) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %ma_resource_manager_get_log.exit.i53, %bb.u, %bb.t, %bb.s, %.thread
  %.0.i52 = phi ptr [ %i.bh, %bb.u ], [ null, %ma_resource_manager_get_log.exit.i53 ], [ %i.bf, %bb.s ], [ %i.bg, %bb.t ], [ null, %.thread ]
  %4 = call i32 @ma_data_source_read_pcm_frames(ptr noundef %.0.i52, ptr noundef %1, i64 noundef %.13763, ptr noundef nonnull %i.a) ; 2 uses
  %i.bo = icmp eq i32 %4, -17
  br i1 %i.bo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.q, %bb.x
  %.16581 = phi i1 [ %.164, %bb.x ], [ false, %bb.q ]
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !906
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load atomic i32, ptr %i.bq seq_cst, align 8
  %i.bs = icmp eq i32 %i.br, -19
  %spec.select49 = select i1 %i.bs, i32 -19, i32 -17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.16580 = phi i1 [ %.164, %bb.x ], [ %.16581, %bb.y ]
  %.4 = phi i32 [ %4, %bb.x ], [ %spec.select49, %bb.y ]
  %spec.select50 = select i1 %.16580, i32 %.4, i32 -19 ; 2 uses
  %.pre = load i64, ptr %i.a, align 8             ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 %.pre, ptr %3, align 8, !tbaa !164
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bt = icmp eq i32 %spec.select50, 0
  %i.bu = icmp eq i64 %.pre, 0
  %or.cond = select i1 %i.bt, i1 %i.bu, i1 false
  %spec.store.select = select i1 %or.cond, i32 -17, i32 %spec.select50
  br label %ma_data_source_seek_to_pcm_frame.exit.thread

ma_data_source_seek_to_pcm_frame.exit.thread:     ; preds = %ma_resource_manager_get_log.exit.i, %bb.f, %bb.k, %bb.j, %bb.l, %ma_data_source_seek_to_pcm_frame.exit, %bb.d, %bb.c, %bb.ab, %bb.m
  %.035 = phi i32 [ %spec.store.select, %bb.ab ], [ -2, %bb.c ], [ -19, %bb.m ], [ -19, %bb.d ], [ %i.ag, %ma_data_source_seek_to_pcm_frame.exit ], [ -25, %bb.l ], [ -3, %bb.k ], [ -29, %bb.j ], [ -2, %bb.f ], [ -2, %ma_resource_manager_get_log.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define i32 @ma_resource_manager_data_buffer_get_available_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %ma_decoder_get_available_frames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %ma_decoder_get_available_frames.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !906
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load atomic i32, ptr %i.i seq_cst, align 8
  %i.k = icmp eq i32 %i.j, 0
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !906  ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic i32, ptr %i.m seq_cst, align 8
  %i.o = icmp eq i32 %i.n, -19
  %. = select i1 %i.o, i32 -19, i32 -3
  br label %ma_decoder_get_available_frames.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load atomic i32, ptr %i.p seq_cst, align 8
  switch i32 %i.q, label %ma_decoder_get_available_frames.exit [
    i32 1, label %bb.f
    i32 2, label %ma_audio_buffer_get_available_frames.exit
    i32 3, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !803  ; 6 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %ma_decoder_get_available_frames.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  store i64 0, ptr %i.d, align 8, !tbaa !164
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !359  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i.i, label %bb.h, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !590
  %i.x = sub i64 %i.u, %i.w
  store i64 %i.x, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !358
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !595 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %ma_decoder_get_length_in_pcm_frames.exit.thread20.i, label %ma_data_source_get_length_in_pcm_frames.exit.i.i

ma_data_source_get_length_in_pcm_frames.exit.i.i: ; preds = %bb.h
  %i.ac = call i32 %i.aa(ptr noundef nonnull %i.s, ptr noundef nonnull %i.d) #55, !inline_history !2658 ; 2 uses
  %.not20.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not20.i.i, label %bb.i, label %ma_decoder_get_length_in_pcm_frames.exit.thread20.i

bb.i:                                             ; preds = %ma_data_source_get_length_in_pcm_frames.exit.i.i
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !803 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.ad = icmp eq ptr %.pre.i.i, null
  br i1 %i.ad, label %ma_data_source_get_data_format.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread.i.i
  %i.ae = phi ptr [ %i.s, %.thread.i.i ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !358
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %ma_data_source_get_data_format.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = call i32 %i.ah(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #55, !inline_history !2659 ; 2 uses
  %.not36.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not36.i.i.i, label %bb.l, label %ma_data_source_get_data_format.exit.thread.i.i

ma_data_source_get_data_format.exit.thread.i.i:   ; preds = %bb.k, %bb.j, %bb.i
  %.0.i22.ph.i.i = phi i32 [ -29, %bb.j ], [ -2, %bb.i ], [ %i.aj, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_decoder_get_length_in_pcm_frames.exit.thread20.i

bb.l:                                             ; preds = %bb.k
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !118 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.am = load i32, ptr %i.al, align 8, !tbaa !812 ; 2 uses
  %i.an = icmp eq i32 %i.ak, %i.am
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = call i64 @ma_calculate_frame_count_after_resampling(i32 noundef %i.am, i32 noundef %i.ak, i64 noundef %i.ao)
  br label %bb.n

ma_decoder_get_length_in_pcm_frames.exit.thread20.i: ; preds = %ma_data_source_get_data_format.exit.thread.i.i, %ma_data_source_get_length_in_pcm_frames.exit.i.i, %bb.h
  %.0.i.ph.i = phi i32 [ %.0.i22.ph.i.i, %ma_data_source_get_data_format.exit.thread.i.i ], [ %i.ac, %ma_data_source_get_length_in_pcm_frames.exit.i.i ], [ -29, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %ma_decoder_get_available_frames.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %.016.i = phi i64 [ %i.ao, %bb.l ], [ %i.ap, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !821
  %storemerge.i = call i64 @llvm.usub.sat.i64(i64 %.016.i, i64 %i.ar)
  store i64 %storemerge.i, ptr %1, align 8, !tbaa !164
  br label %ma_decoder_get_available_frames.exit

ma_audio_buffer_get_available_frames.exit:        ; preds = %bb.e
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.at = load i64, ptr %i.as, align 8, !tbaa !602
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.av = load i64, ptr %i.au, align 8, !tbaa !601
  %storemerge.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.at, i64 %i.av)
  store i64 %storemerge.i.i, ptr %1, align 8, !tbaa !164
  br label %ma_decoder_get_available_frames.exit

bb.o:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !627
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !906
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !119
  %storemerge = tail call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 %i.ax)
  store i64 %storemerge, ptr %1, align 8, !tbaa !164
  br label %ma_decoder_get_available_frames.exit

ma_decoder_get_available_frames.exit:             ; preds = %bb.n, %ma_decoder_get_length_in_pcm_frames.exit.thread20.i, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a, %bb.o, %ma_audio_buffer_get_available_frames.exit
  %.0 = phi i32 [ 0, %bb.o ], [ -2, %bb.a ], [ %., %bb.d ], [ -2, %bb.b ], [ 0, %ma_audio_buffer_get_available_frames.exit ], [ -2, %bb.e ], [ 0, %bb.n ], [ %.0.i.ph.i, %ma_decoder_get_length_in_pcm_frames.exit.thread20.i ], [ -203, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_resource_manager_data_buffer_seek_to_pcm_frame(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %1, ptr %i.d, align 8, !tbaa !911
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.e, align 8, !tbaa !912
  br label %ma_data_source_seek_to_pcm_frame.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.f = load atomic i32, ptr %i.a seq_cst, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_2
