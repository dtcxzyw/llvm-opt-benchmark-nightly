Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_waveform_read_pcm_frames:bb.a
vec.epilog.iter.check342:                         ; preds = %middle.block337
  br i1 %min.epilog.iters.check343, label %vec.epilog.scalar.ph341.preheader, label %vec.epilog.ph344, !prof !348

vec.epilog.ph344:                                 ; preds = %vector.main.loop.iter.check328, %vec.epilog.iter.check342
  %vec.epilog.resume.val339 = phi i64 [ %n.vec331, %vec.epilog.iter.check342 ], [ 0, %vector.main.loop.iter.check328 ]
  %broadcast.splatinsert346 = insertelement <4 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat347 = shufflevector <4 x i16> %broadcast.splatinsert346, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body348

vec.epilog.vector.body348:                        ; preds = %vec.epilog.vector.body348, %vec.epilog.ph344
  %index349 = phi i64 [ %vec.epilog.resume.val339, %vec.epilog.ph344 ], [ %index.next350, %vec.epilog.vector.body348 ] ; 2 uses
  %i.ac = getelementptr [2 x i8], ptr %i.y, i64 %index349
  store <4 x i16> %broadcast.splat347, ptr %i.ac, align 2, !tbaa !122
  %index.next350 = add nuw i64 %index349, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next350, %n.vec345
  br i1 %i.ad, label %vec.epilog.middle.block351, label %vec.epilog.vector.body348, !llvm.loop !2534

vec.epilog.middle.block351:                       ; preds = %vec.epilog.vector.body348
  br i1 %cmp.n352, label %._crit_edge.us.i, label %vec.epilog.scalar.ph341.preheader

vec.epilog.scalar.ph341.preheader:                ; preds = %iter.check340, %vec.epilog.iter.check342, %vec.epilog.middle.block351
  %.168.us.i.ph = phi i64 [ 0, %iter.check340 ], [ %n.vec331, %vec.epilog.iter.check342 ], [ %n.vec345, %vec.epilog.middle.block351 ]
  br label %vec.epilog.scalar.ph341

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
  %.not80.i.a = icmp eq i32 %i.h, 0
  %.promoted71.i = load double, ptr %i.ai, align 8, !tbaa !851 ; 3 uses
  br i1 %.not80.i.a, label %.preheader64.split.i.preheader, label %.lr.ph.us74.i.preheader

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
  %i.ci = phi i32 [ %i.h, %.preheader.i ], [ %i.eg, %._crit_edge.i ]
  %.25478.i = phi i64 [ 0, %.preheader.i ], [ %i.eh, %._crit_edge.i ] ; 2 uses
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
  %spec.select.i = select i1 %i.ct, i8 0, i8 %i.dk ; 2 uses
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
  store i8 %spec.select.i, ptr %i.dr, align 1, !tbaa !119
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
  %.277.i = phi i64 [ %i.ec, %ma_pcm_convert.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
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
  %4 = getelementptr i8, ptr %i.ea, i64 1
  store i8 %i.dn, ptr %4, align 1, !tbaa !119
  %5 = getelementptr i8, ptr %i.ea, i64 2
  store i8 %i.dp, ptr %5, align 1, !tbaa !119
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
  %i.ec = add nuw nsw i64 %.277.i, 1              ; 2 uses
  %i.ed = load i32, ptr %i.g, align 4, !tbaa !855 ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = icmp samesign ult i64 %i.ec, %i.ee
  br i1 %i.ef, label %.lr.ph.i.split, label %._crit_edge.i, !llvm.loop !2540

._crit_edge.i:                                    ; preds = %ma_pcm_convert.exit.i, %ma_pcm_convert.exit.i.us, %bb.g
  %i.eg = phi i32 [ 0, %bb.g ], [ %i.dw, %ma_pcm_convert.exit.i.us ], [ %i.ed, %ma_pcm_convert.exit.i ]
  %i.eh = add nuw i64 %.25478.i, 1                ; 2 uses
  %exitcond103.not.i = icmp eq i64 %i.eh, %2
  br i1 %exitcond103.not.i, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.g, !llvm.loop !2541

.loopexit65.i.loopexit.unr-lcssa:                 ; preds = %cdce.end.1
  %lcmp.mod436.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod436.not, label %.loopexit65.i, label %.preheader64.split.i.epil.preheader

.preheader64.split.i.epil.preheader:              ; preds = %.loopexit65.i.loopexit.unr-lcssa, %.preheader64.split.i.preheader
  %.epil.init435 = phi double [ %.promoted71.i, %.preheader64.split.i.preheader ], [ %i.bw, %.loopexit65.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod438 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod438)
  %i.ei = fmul double %.epil.init435, f0x401921FB54442D18 ; 2 uses
  %i.ej = tail call double @llvm.fabs.f64(double %i.ei)
  %i.ek = fcmp oeq double %i.ej, +inf
  br i1 %i.ek, label %cdce.call.epil, label %cdce.end.epil, !prof !390

cdce.call.epil:                                   ; preds = %.preheader64.split.i.epil.preheader
  %i.el = tail call double @sin(double noundef %i.ei) #55 ; 0 uses
  br label %cdce.end.epil

cdce.end.epil:                                    ; preds = %cdce.call.epil, %.preheader64.split.i.epil.preheader
  %i.em = fadd double %i.am, %.epil.init435
  br label %.loopexit65.i

.loopexit65.i:                                    ; preds = %._crit_edge.us75.i, %cdce.end.epil, %.loopexit65.i.loopexit.unr-lcssa
  %.us-phi76.i = phi double [ %i.em, %cdce.end.epil ], [ %i.bw, %.loopexit65.i.loopexit.unr-lcssa ], [ %i.bb, %._crit_edge.us75.i ]
  store double %.us-phi76.i, ptr %i.ai, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i.loopexit.unr-lcssa:                 ; preds = %cdce.end132.1
  %lcmp.mod427.not = icmp eq i64 %xtraiter423, 0
  br i1 %lcmp.mod427.not, label %.loopexit67.i, label %.preheader66.split.i.epil.preheader

.preheader66.split.i.epil.preheader:              ; preds = %.loopexit67.i.loopexit.unr-lcssa, %.preheader66.split.i.preheader
  %.epil.init426 = phi double [ %.promoted.i, %.preheader66.split.i.preheader ], [ %i.ch, %.loopexit67.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod429 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod429)
  %i.en = fmul double %.epil.init426, f0x401921FB54442D18 ; 2 uses
  %i.eo = tail call double @llvm.fabs.f64(double %i.en)
  %i.ep = fcmp oeq double %i.eo, +inf
  br i1 %i.ep, label %cdce.call131.epil, label %cdce.end132.epil, !prof !390

cdce.call131.epil:                                ; preds = %.preheader66.split.i.epil.preheader
  %i.eq = tail call double @sin(double noundef %i.en) #55 ; 0 uses
  br label %cdce.end132.epil

cdce.end132.epil:                                 ; preds = %cdce.call131.epil, %.preheader66.split.i.epil.preheader
  %i.er = fadd double %i.m, %.epil.init426
  br label %.loopexit67.i

.loopexit67.i:                                    ; preds = %._crit_edge.us.i, %cdce.end132.epil, %.loopexit67.i.loopexit.unr-lcssa
  %.us-phi.i = phi double [ %i.er, %cdce.end132.epil ], [ %i.ch, %.loopexit67.i.loopexit.unr-lcssa ], [ %i.ag, %._crit_edge.us.i ]
  store double %.us-phi.i, ptr %i.i, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.j:                                             ; preds = %bb.e
  tail call fastcc void @ma_waveform_read_pcm_frames__square(ptr noundef %0, double noundef 5.000000e-01, ptr noundef %1, i64 noundef %2)
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.k:                                             ; preds = %bb.e
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !854 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !855 ; 9 uses
  switch i32 %i.et, label %.preheader.i57 [
    i32 5, label %.preheader64.i43
    i32 2, label %.preheader66.i29
  ]

.preheader66.i29:                                 ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !852
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !850 ; 10 uses
  %i.fb = zext i32 %i.ev to i64                   ; 7 uses
  %.not.i30 = icmp eq i32 %i.ev, 0
  %.promoted.i31 = load double, ptr %i.ew, align 8, !tbaa !851 ; 3 uses
  br i1 %.not.i30, label %.preheader66.split.i40.preheader, label %iter.check300.preheader

iter.check300.preheader:                          ; preds = %.preheader66.i29
  %min.iters.check287 = icmp ult i32 %i.ev, 4
  %min.iters.check289 = icmp ult i32 %i.ev, 16
  %i.fc = and i64 %i.fb, 12
  %n.vec291 = and i64 %i.fb, 4294967280           ; 4 uses
  %cmp.n298 = icmp eq i64 %n.vec291, %i.fb
  %min.epilog.iters.check303 = icmp eq i64 %i.fc, 0
  %n.vec305 = and i64 %i.fb, 4294967292           ; 3 uses
  %cmp.n312 = icmp eq i64 %n.vec305, %i.fb
  br label %iter.check300

.preheader66.split.i40.preheader:                 ; preds = %.preheader66.i29
  %i.fd = add i64 %2, -1
  %xtraiter405 = and i64 %2, 7                    ; 3 uses
  %i.fe = icmp ult i64 %i.fd, 7
  br i1 %i.fe, label %.preheader66.split.i40.epil.preheader, label %.preheader66.split.i40.preheader.new

.preheader66.split.i40.preheader.new:             ; preds = %.preheader66.split.i40.preheader
  %unroll_iter412 = and i64 %2, -8
  br label %.preheader66.split.i40

iter.check300:                                    ; preds = %iter.check300.preheader, %._crit_edge.us.i36
  %.15369.us.i33 = phi i64 [ %i.gd, %._crit_edge.us.i36 ], [ 0, %iter.check300.preheader ] ; 2 uses
  %i.ff = phi double [ %i.gc, %._crit_edge.us.i36 ], [ %.promoted.i31, %iter.check300.preheader ] ; 3 uses
  %i.fg = fptosi double %i.ff to i64
  %i.fh = sitofp i64 %i.fg to double
  %i.fi = fsub double %i.ff, %i.fh
  %i.fj = fadd double %i.fi, -5.000000e-01
  %i.fk = fmul double %i.fj, 2.000000e+00         ; 3 uses
  %i.fl = fcmp ogt double %i.fk, 0.000000e+00
  %i.fm = fneg double %i.fk
  %i.fn = select i1 %i.fl, double %i.fk, double %i.fm
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fn, double 2.000000e+00, double -1.000000e+00)
  %i.fp = fmul double %i.ey, %i.fo
  %i.fq = fptrunc double %i.fp to float
  %i.fr = fmul float %i.fq, 3.276700e+04
  %i.fs = fptosi float %i.fr to i16               ; 3 uses
  %i.ft = mul i64 %.15369.us.i33, %i.fb
  %i.fu = getelementptr [2 x i8], ptr %1, i64 %i.ft ; 3 uses
  br i1 %min.iters.check287, label %vec.epilog.scalar.ph301.preheader, label %vector.main.loop.iter.check288

vector.main.loop.iter.check288:                   ; preds = %iter.check300
  br i1 %min.iters.check289, label %vec.epilog.ph304, label %vector.ph290

vector.ph290:                                     ; preds = %vector.main.loop.iter.check288
  %broadcast.splatinsert292 = insertelement <8 x i16> poison, i16 %i.fs, i64 0
  %broadcast.splat293 = shufflevector <8 x i16> %broadcast.splatinsert292, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body294

vector.body294:                                   ; preds = %vector.ph290, %vector.body294
  %index295 = phi i64 [ 0, %vector.ph290 ], [ %index.next296, %vector.body294 ] ; 2 uses
  %i.fv = getelementptr [2 x i8], ptr %i.fu, i64 %index295 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  store <8 x i16> %broadcast.splat293, ptr %i.fv, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat293, ptr %i.fw, align 2, !tbaa !122
  %index.next296 = add nuw i64 %index295, 16      ; 2 uses
  %i.fx = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.fx, label %middle.block297, label %vector.body294, !llvm.loop !2542

middle.block297:                                  ; preds = %vector.body294
  br i1 %cmp.n298, label %._crit_edge.us.i36, label %vec.epilog.iter.check302

vec.epilog.iter.check302:                         ; preds = %middle.block297
  br i1 %min.epilog.iters.check303, label %vec.epilog.scalar.ph301.preheader, label %vec.epilog.ph304, !prof !348

vec.epilog.ph304:                                 ; preds = %vector.main.loop.iter.check288, %vec.epilog.iter.check302
  %vec.epilog.resume.val299 = phi i64 [ %n.vec291, %vec.epilog.iter.check302 ], [ 0, %vector.main.loop.iter.check288 ]
  %broadcast.splatinsert306 = insertelement <4 x i16> poison, i16 %i.fs, i64 0
  %broadcast.splat307 = shufflevector <4 x i16> %broadcast.splatinsert306, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body308

vec.epilog.vector.body308:                        ; preds = %vec.epilog.vector.body308, %vec.epilog.ph304
  %index309 = phi i64 [ %vec.epilog.resume.val299, %vec.epilog.ph304 ], [ %index.next310, %vec.epilog.vector.body308 ] ; 2 uses
  %i.fy = getelementptr [2 x i8], ptr %i.fu, i64 %index309
  store <4 x i16> %broadcast.splat307, ptr %i.fy, align 2, !tbaa !122
  %index.next310 = add nuw i64 %index309, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next310, %n.vec305
  br i1 %i.fz, label %vec.epilog.middle.block311, label %vec.epilog.vector.body308, !llvm.loop !2543

vec.epilog.middle.block311:                       ; preds = %vec.epilog.vector.body308
  br i1 %cmp.n312, label %._crit_edge.us.i36, label %vec.epilog.scalar.ph301.preheader

vec.epilog.scalar.ph301.preheader:                ; preds = %iter.check300, %vec.epilog.iter.check302, %vec.epilog.middle.block311
  %.168.us.i34.ph = phi i64 [ 0, %iter.check300 ], [ %n.vec291, %vec.epilog.iter.check302 ], [ %n.vec305, %vec.epilog.middle.block311 ]
  br label %vec.epilog.scalar.ph301

vec.epilog.scalar.ph301:                          ; preds = %vec.epilog.scalar.ph301.preheader, %vec.epilog.scalar.ph301
  %.168.us.i34 = phi i64 [ %i.gb, %vec.epilog.scalar.ph301 ], [ %.168.us.i34.ph, %vec.epilog.scalar.ph301.preheader ] ; 2 uses
  %i.ga = getelementptr [2 x i8], ptr %i.fu, i64 %.168.us.i34
  store i16 %i.fs, ptr %i.ga, align 2, !tbaa !122
  %i.gb = add nuw nsw i64 %.168.us.i34, 1         ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %i.gb, %i.fb
  br i1 %exitcond.not.i35, label %._crit_edge.us.i36, label %vec.epilog.scalar.ph301, !llvm.loop !2544

._crit_edge.us.i36:                               ; preds = %vec.epilog.scalar.ph301, %vec.epilog.middle.block311, %middle.block297
  %i.gc = fadd double %i.fa, %i.ff                ; 2 uses
  %i.gd = add nuw i64 %.15369.us.i33, 1           ; 2 uses
  %exitcond98.not.i37 = icmp eq i64 %i.gd, %2
  br i1 %exitcond98.not.i37, label %.loopexit67.i38, label %iter.check300, !llvm.loop !2545

.preheader64.i43:                                 ; preds = %bb.k
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !852
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !850 ; 10 uses
  %i.gj = zext i32 %i.ev to i64                   ; 4 uses
  %.not80.i44 = icmp eq i32 %i.ev, 0
  %.promoted71.i45 = load double, ptr %i.ge, align 8, !tbaa !851 ; 3 uses
  br i1 %.not80.i44, label %.preheader64.split.i54.preheader, label %.lr.ph.us74.i46.preheader

.lr.ph.us74.i46.preheader:                        ; preds = %.preheader64.i43
  %min.iters.check315 = icmp ult i32 %i.ev, 8
  %n.vec317 = and i64 %i.gj, 4294967288           ; 3 uses
  %cmp.n324 = icmp eq i64 %n.vec317, %i.gj
  br label %.lr.ph.us74.i46

.preheader64.split.i54.preheader:                 ; preds = %.preheader64.i43
  %i.gk = add i64 %2, -1
  %xtraiter414 = and i64 %2, 7                    ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 7
  br i1 %i.gl, label %.preheader64.split.i54.epil.preheader, label %.preheader64.split.i54.preheader.new

.preheader64.split.i54.preheader.new:             ; preds = %.preheader64.split.i54.preheader
  %unroll_iter421 = and i64 %2, -8
  br label %.preheader64.split.i54

.lr.ph.us74.i46:                                  ; preds = %.lr.ph.us74.i46.preheader, %._crit_edge.us75.i50
  %.05273.us.i47 = phi i64 [ %i.hg, %._crit_edge.us75.i50 ], [ 0, %.lr.ph.us74.i46.preheader ] ; 2 uses
  %i.gm = phi double [ %i.hf, %._crit_edge.us75.i50 ], [ %.promoted71.i45, %.lr.ph.us74.i46.preheader ] ; 3 uses
  %i.gn = fptosi double %i.gm to i64
  %i.go = sitofp i64 %i.gn to double
  %i.gp = fsub double %i.gm, %i.go
  %i.gq = fadd double %i.gp, -5.000000e-01
  %i.gr = fmul double %i.gq, 2.000000e+00         ; 3 uses
  %i.gs = fcmp ogt double %i.gr, 0.000000e+00
  %i.gt = fneg double %i.gr
  %i.gu = select i1 %i.gs, double %i.gr, double %i.gt
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gu, double 2.000000e+00, double -1.000000e+00)
  %i.gw = fmul double %i.gg, %i.gv
  %i.gx = fptrunc double %i.gw to float           ; 2 uses
  %i.gy = mul i64 %.05273.us.i47, %i.gj
  %i.gz = getelementptr [4 x i8], ptr %1, i64 %i.gy ; 2 uses
  br i1 %min.iters.check315, label %scalar.ph314.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.us74.i46
  %broadcast.splatinsert318 = insertelement <4 x float> poison, float %i.gx, i64 0
  %broadcast.splat319 = shufflevector <4 x float> %broadcast.splatinsert318, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph316
  %index321 = phi i64 [ 0, %vector.ph316 ], [ %index.next322, %vector.body320 ] ; 2 uses
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %index321 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 16
  store <4 x float> %broadcast.splat319, ptr %i.ha, align 4, !tbaa !349
  store <4 x float> %broadcast.splat319, ptr %i.hb, align 4, !tbaa !349
  %index.next322 = add nuw i64 %index321, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next322, %n.vec317
  br i1 %i.hc, label %middle.block323, label %vector.body320, !llvm.loop !2546

middle.block323:                                  ; preds = %vector.body320
  br i1 %cmp.n324, label %._crit_edge.us75.i50, label %scalar.ph314.preheader

scalar.ph314.preheader:                           ; preds = %.lr.ph.us74.i46, %middle.block323
  %.070.us.i48.ph = phi i64 [ 0, %.lr.ph.us74.i46 ], [ %n.vec317, %middle.block323 ]
  br label %scalar.ph314

scalar.ph314:                                     ; preds = %scalar.ph314.preheader, %scalar.ph314
  %.070.us.i48 = phi i64 [ %i.he, %scalar.ph314 ], [ %.070.us.i48.ph, %scalar.ph314.preheader ] ; 2 uses
  %i.hd = getelementptr [4 x i8], ptr %i.gz, i64 %.070.us.i48
  store float %i.gx, ptr %i.hd, align 4, !tbaa !349
  %i.he = add nuw nsw i64 %.070.us.i48, 1         ; 2 uses
  %exitcond100.not.i49 = icmp eq i64 %i.he, %i.gj
  br i1 %exitcond100.not.i49, label %._crit_edge.us75.i50, label %scalar.ph314, !llvm.loop !2547

._crit_edge.us75.i50:                             ; preds = %scalar.ph314, %middle.block323
  %i.hf = fadd double %i.gi, %i.gm                ; 2 uses
  %i.hg = add nuw i64 %.05273.us.i47, 1           ; 2 uses
  %exitcond101.not.i51 = icmp eq i64 %i.hg, %2
  br i1 %exitcond101.not.i51, label %.loopexit65.i52, label %.lr.ph.us74.i46, !llvm.loop !2548

.preheader.i57:                                   ; preds = %bb.k
  %i.hh = zext i32 %i.et to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !118 ; 2 uses
  %i.hk = mul i32 %i.hj, %i.ev
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ho = zext i32 %i.hk to i64
  %i.hp = zext i32 %i.hj to i64                   ; 2 uses
  br label %bb.l

.preheader64.split.i54:                           ; preds = %.preheader64.split.i54, %.preheader64.split.i54.preheader.new
  %i.hq = phi double [ %.promoted71.i45, %.preheader64.split.i54.preheader.new ], [ %i.hy, %.preheader64.split.i54 ]
  %niter422 = phi i64 [ 0, %.preheader64.split.i54.preheader.new ], [ %niter422.next.7, %.preheader64.split.i54 ]
  %i.hr = fadd double %i.gi, %i.hq
  %i.hs = fadd double %i.gi, %i.hr
  %i.ht = fadd double %i.gi, %i.hs
  %i.hu = fadd double %i.gi, %i.ht
  %i.hv = fadd double %i.gi, %i.hu
  %i.hw = fadd double %i.gi, %i.hv
  %i.hx = fadd double %i.gi, %i.hw
  %i.hy = fadd double %i.gi, %i.hx                ; 3 uses
  %niter422.next.7 = add nuw i64 %niter422, 8     ; 2 uses
  %niter422.ncmp.7 = icmp eq i64 %niter422.next.7, %unroll_iter421
  br i1 %niter422.ncmp.7, label %.loopexit65.i52.loopexit.unr-lcssa, label %.preheader64.split.i54, !llvm.loop !2548

.preheader66.split.i40:                           ; preds = %.preheader66.split.i40, %.preheader66.split.i40.preheader.new
  %i.hz = phi double [ %.promoted.i31, %.preheader66.split.i40.preheader.new ], [ %i.ih, %.preheader66.split.i40 ]
  %niter413 = phi i64 [ 0, %.preheader66.split.i40.preheader.new ], [ %niter413.next.7, %.preheader66.split.i40 ]
  %i.ia = fadd double %i.fa, %i.hz
  %i.ib = fadd double %i.fa, %i.ia
  %i.ic = fadd double %i.fa, %i.ib
  %i.id = fadd double %i.fa, %i.ic
  %i.ie = fadd double %i.fa, %i.id
  %i.if = fadd double %i.fa, %i.ie
  %i.ig = fadd double %i.fa, %i.if
  %i.ih = fadd double %i.fa, %i.ig                ; 3 uses
  %niter413.next.7 = add nuw i64 %niter413, 8     ; 2 uses
  %niter413.ncmp.7 = icmp eq i64 %niter413.next.7, %unroll_iter412
  br i1 %niter413.ncmp.7, label %.loopexit67.i38.loopexit.unr-lcssa, label %.preheader66.split.i40, !llvm.loop !2545

bb.l:                                             ; preds = %._crit_edge.i67, %.preheader.i57
  %i.ii = phi i32 [ %i.ev, %.preheader.i57 ], [ %i.kn, %._crit_edge.i67 ]
  %.25478.i58 = phi i64 [ 0, %.preheader.i57 ], [ %i.ko, %._crit_edge.i67 ] ; 2 uses
  %i.ij = load double, ptr %i.hl, align 8, !tbaa !851 ; 3 uses
  %i.ik = load double, ptr %i.hm, align 8, !tbaa !852
  %i.il = load double, ptr %i.hn, align 8, !tbaa !850
  %i.im = fadd double %i.ij, %i.il
  store double %i.im, ptr %i.hl, align 8, !tbaa !851
  %.not81.i59 = icmp eq i32 %i.ii, 0
  br i1 %.not81.i59, label %._crit_edge.i67, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.l
  %i.in = fptosi double %i.ij to i64
  %i.io = sitofp i64 %i.in to double
  %i.ip = fsub double %i.ij, %i.io
  %i.iq = fadd double %i.ip, -5.000000e-01
  %i.ir = fmul double %i.iq, 2.000000e+00         ; 3 uses
  %i.is = fcmp ogt double %i.ir, 0.000000e+00
  %i.it = fneg double %i.ir
  %i.iu = select i1 %i.is, double %i.ir, double %i.it
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.iu, double 2.000000e+00, double -1.000000e+00)
  %i.iw = fmul double %i.ik, %i.iv
  %.fr = freeze double %i.iw                      ; 2 uses
  %i.ix = fptrunc double %.fr to float            ; 6 uses
  %i.iy = mul i64 %.25478.i58, %i.ho
  %i.iz = getelementptr i8, ptr %1, i64 %i.iy     ; 2 uses
  %i.ja = fcmp olt double %.fr, f0xBFF0000010000000 ; 3 uses
  %i.jb = fpext float %i.ix to double             ; 2 uses
  %i.jc = fcmp ogt double %i.jb, 1.000000e+00
  %i.jd = select i1 %i.jc, double 1.000000e+00, double %i.jb
  %i.je = fmul double %i.jd, f0x41DFFFFFFFC00000
  %i.jf = fptosi double %i.je to i32
  %i.jg = fcmp ogt float %i.ix, 1.000000e+00
  %i.jh = select i1 %i.jg, float 1.000000e+00, float %i.ix
  %i.ji = fmul float %i.jh, f0x4AFFFFFE
  %i.jj = fptosi float %i.ji to i32
  %i.jk = fadd float %i.ix, 0.000000e+00          ; 2 uses
  %i.jl = fcmp ogt float %i.jk, 1.000000e+00
  %i.jm = select i1 %i.jl, float 1.000000e+00, float %i.jk ; 2 uses
  %i.jn = fmul float %i.jm, 3.276700e+04
  %i.jo = fptosi float %i.jn to i16
  %i.jp = fadd float %i.jm, 1.000000e+00
  %i.jq = fmul float %i.jp, 1.275000e+02
  %i.jr = fptoui float %i.jq to i8
  %spec.select79.i61 = select i1 %i.ja, i32 -8388607, i32 %i.jj ; 3 uses
  %i.js = trunc i32 %spec.select79.i61 to i8      ; 2 uses
  %i.jt = lshr i32 %spec.select79.i61, 8
  %i.ju = trunc i32 %i.jt to i8                   ; 2 uses
  %i.jv = lshr i32 %spec.select79.i61, 16
  %i.jw = trunc i32 %i.jv to i8                   ; 2 uses
  %spec.select.i62 = select i1 %i.ja, i8 0, i8 %i.jr ; 2 uses
  br i1 %i.ja, label %.lr.ph.i60.split.us, label %.lr.ph.i60.split

.lr.ph.i60.split.us:                              ; preds = %.lr.ph.i60, %ma_pcm_convert.exit.i66.us
  %.277.i63.us = phi i64 [ %i.kc, %ma_pcm_convert.exit.i66.us ], [ 0, %.lr.ph.i60 ] ; 2 uses
  %i.jx = mul nuw i64 %.277.i63.us, %i.hp
  %i.jy = getelementptr i8, ptr %i.iz, i64 %i.jx  ; 7 uses
  %i.jz = load i32, ptr %i.es, align 8, !tbaa !854
  switch i32 %i.jz, label %ma_pcm_convert.exit.i66.us [
    i32 5, label %ma_pcm_convert.exit.loopexit.i79.us
    i32 1, label %ma_dither_f32.exit.i.preheader.i78.us
    i32 2, label %bb.m
    i32 3, label %.lr.ph.i134.i.preheader.i70.us
    i32 4, label %.lr.ph.i138.i.preheader.i64.us
  ]

.lr.ph.i138.i.preheader.i64.us:                   ; preds = %.lr.ph.i60.split.us
  store i32 -2147483647, ptr %i.jy, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i66.us

.lr.ph.i134.i.preheader.i70.us:                   ; preds = %.lr.ph.i60.split.us
  store i8 %i.js, ptr %i.jy, align 1, !tbaa !119
  %i.ka = getelementptr i8, ptr %i.jy, i64 1
  store i8 %i.ju, ptr %i.ka, align 1, !tbaa !119
  %i.kb = getelementptr i8, ptr %i.jy, i64 2
  store i8 %i.jw, ptr %i.kb, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66.us

bb.m:                                             ; preds = %.lr.ph.i60.split.us
  store i16 -32767, ptr %i.jy, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i66.us

ma_dither_f32.exit.i.preheader.i78.us:            ; preds = %.lr.ph.i60.split.us
  store i8 %spec.select.i62, ptr %i.jy, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66.us

ma_pcm_convert.exit.loopexit.i79.us:              ; preds = %.lr.ph.i60.split.us
  store float %i.ix, ptr %i.jy, align 1
  br label %ma_pcm_convert.exit.i66.us

ma_pcm_convert.exit.i66.us:                       ; preds = %bb.m, %ma_pcm_convert.exit.loopexit.i79.us, %ma_dither_f32.exit.i.preheader.i78.us, %.lr.ph.i134.i.preheader.i70.us, %.lr.ph.i138.i.preheader.i64.us, %.lr.ph.i60.split.us
  %i.kc = add nuw nsw i64 %.277.i63.us, 1         ; 2 uses
  %i.kd = load i32, ptr %i.eu, align 4, !tbaa !855 ; 2 uses
  %i.ke = zext i32 %i.kd to i64
  %i.kf = icmp samesign ult i64 %i.kc, %i.ke
  br i1 %i.kf, label %.lr.ph.i60.split.us, label %._crit_edge.i67, !llvm.loop !2549

.lr.ph.i60.split:                                 ; preds = %.lr.ph.i60, %ma_pcm_convert.exit.i66
  %.277.i63 = phi i64 [ %i.kj, %ma_pcm_convert.exit.i66 ], [ 0, %.lr.ph.i60 ] ; 2 uses
  %i.kg = mul nuw i64 %.277.i63, %i.hp
  %i.kh = getelementptr i8, ptr %i.iz, i64 %i.kg  ; 7 uses
  %i.ki = load i32, ptr %i.es, align 8, !tbaa !854
  switch i32 %i.ki, label %ma_pcm_convert.exit.i66 [
    i32 5, label %ma_pcm_convert.exit.loopexit.i79
    i32 1, label %ma_dither_f32.exit.i.preheader.i78
    i32 2, label %bb.n
    i32 3, label %.lr.ph.i134.i.preheader.i70
    i32 4, label %.lr.ph.i138.i.preheader.i64
  ]

.lr.ph.i134.i.preheader.i70:                      ; preds = %.lr.ph.i60.split
  store i8 %i.js, ptr %i.kh, align 1, !tbaa !119
  %6 = getelementptr i8, ptr %i.kh, i64 1
  store i8 %i.ju, ptr %6, align 1, !tbaa !119
  %7 = getelementptr i8, ptr %i.kh, i64 2
  store i8 %i.jw, ptr %7, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66

ma_dither_f32.exit.i.preheader.i78:               ; preds = %.lr.ph.i60.split
  store i8 %spec.select.i62, ptr %i.kh, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i66

.lr.ph.i138.i.preheader.i64:                      ; preds = %.lr.ph.i60.split
  store i32 %i.jf, ptr %i.kh, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i66

bb.n:                                             ; preds = %.lr.ph.i60.split
  store i16 %i.jo, ptr %i.kh, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i66

ma_pcm_convert.exit.loopexit.i79:                 ; preds = %.lr.ph.i60.split
  store float %i.ix, ptr %i.kh, align 1
  br label %ma_pcm_convert.exit.i66

ma_pcm_convert.exit.i66:                          ; preds = %bb.n, %ma_pcm_convert.exit.loopexit.i79, %.lr.ph.i138.i.preheader.i64, %ma_dither_f32.exit.i.preheader.i78, %.lr.ph.i134.i.preheader.i70, %.lr.ph.i60.split
  %i.kj = add nuw nsw i64 %.277.i63, 1            ; 2 uses
  %i.kk = load i32, ptr %i.eu, align 4, !tbaa !855 ; 2 uses
  %i.kl = zext i32 %i.kk to i64
  %i.km = icmp samesign ult i64 %i.kj, %i.kl
  br i1 %i.km, label %.lr.ph.i60.split, label %._crit_edge.i67, !llvm.loop !2549

._crit_edge.i67:                                  ; preds = %ma_pcm_convert.exit.i66, %ma_pcm_convert.exit.i66.us, %bb.l
  %i.kn = phi i32 [ 0, %bb.l ], [ %i.kd, %ma_pcm_convert.exit.i66.us ], [ %i.kk, %ma_pcm_convert.exit.i66 ]
  %i.ko = add nuw i64 %.25478.i58, 1              ; 2 uses
  %exitcond103.not.i68 = icmp eq i64 %i.ko, %2
  br i1 %exitcond103.not.i68, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.l, !llvm.loop !2550

.loopexit65.i52.loopexit.unr-lcssa:               ; preds = %.preheader64.split.i54
  %lcmp.mod418.not = icmp eq i64 %xtraiter414, 0
  br i1 %lcmp.mod418.not, label %.loopexit65.i52, label %.preheader64.split.i54.epil.preheader

.preheader64.split.i54.epil.preheader:            ; preds = %.loopexit65.i52.loopexit.unr-lcssa, %.preheader64.split.i54.preheader
  %.epil.init417 = phi double [ %.promoted71.i45, %.preheader64.split.i54.preheader ], [ %i.hy, %.loopexit65.i52.loopexit.unr-lcssa ]
  %lcmp.mod420 = icmp ne i64 %xtraiter414, 0
  tail call void @llvm.assume(i1 %lcmp.mod420)
  br label %.preheader64.split.i54.epil

.preheader64.split.i54.epil:                      ; preds = %.preheader64.split.i54.epil, %.preheader64.split.i54.epil.preheader
  %i.kp = phi double [ %i.kq, %.preheader64.split.i54.epil ], [ %.epil.init417, %.preheader64.split.i54.epil.preheader ]
  %epil.iter415 = phi i64 [ %epil.iter415.next, %.preheader64.split.i54.epil ], [ 0, %.preheader64.split.i54.epil.preheader ]
  %i.kq = fadd double %i.gi, %i.kp                ; 2 uses
  %epil.iter415.next = add i64 %epil.iter415, 1   ; 2 uses
  %epil.iter415.cmp.not = icmp eq i64 %epil.iter415.next, %xtraiter414
  br i1 %epil.iter415.cmp.not, label %.loopexit65.i52, label %.preheader64.split.i54.epil, !llvm.loop !2551

.loopexit65.i52:                                  ; preds = %._crit_edge.us75.i50, %.loopexit65.i52.loopexit.unr-lcssa, %.preheader64.split.i54.epil
  %.us-phi76.i53 = phi double [ %i.kq, %.preheader64.split.i54.epil ], [ %i.hy, %.loopexit65.i52.loopexit.unr-lcssa ], [ %i.hf, %._crit_edge.us75.i50 ]
  store double %.us-phi76.i53, ptr %i.ge, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i38.loopexit.unr-lcssa:               ; preds = %.preheader66.split.i40
  %lcmp.mod409.not = icmp eq i64 %xtraiter405, 0
  br i1 %lcmp.mod409.not, label %.loopexit67.i38, label %.preheader66.split.i40.epil.preheader

.preheader66.split.i40.epil.preheader:            ; preds = %.loopexit67.i38.loopexit.unr-lcssa, %.preheader66.split.i40.preheader
  %.epil.init408 = phi double [ %.promoted.i31, %.preheader66.split.i40.preheader ], [ %i.ih, %.loopexit67.i38.loopexit.unr-lcssa ]
  %lcmp.mod411 = icmp ne i64 %xtraiter405, 0
  tail call void @llvm.assume(i1 %lcmp.mod411)
  br label %.preheader66.split.i40.epil

.preheader66.split.i40.epil:                      ; preds = %.preheader66.split.i40.epil, %.preheader66.split.i40.epil.preheader
  %i.kr = phi double [ %i.ks, %.preheader66.split.i40.epil ], [ %.epil.init408, %.preheader66.split.i40.epil.preheader ]
  %epil.iter406 = phi i64 [ %epil.iter406.next, %.preheader66.split.i40.epil ], [ 0, %.preheader66.split.i40.epil.preheader ]
  %i.ks = fadd double %i.fa, %i.kr                ; 2 uses
  %epil.iter406.next = add i64 %epil.iter406, 1   ; 2 uses
  %epil.iter406.cmp.not = icmp eq i64 %epil.iter406.next, %xtraiter405
  br i1 %epil.iter406.cmp.not, label %.loopexit67.i38, label %.preheader66.split.i40.epil, !llvm.loop !2552

.loopexit67.i38:                                  ; preds = %._crit_edge.us.i36, %.loopexit67.i38.loopexit.unr-lcssa, %.preheader66.split.i40.epil
  %.us-phi.i39 = phi double [ %i.ks, %.preheader66.split.i40.epil ], [ %i.ih, %.loopexit67.i38.loopexit.unr-lcssa ], [ %i.gc, %._crit_edge.us.i36 ]
  store double %.us-phi.i39, ptr %i.ew, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.o:                                             ; preds = %bb.e
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !854 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !855 ; 9 uses
  switch i32 %i.ku, label %.preheader.i108 [
    i32 5, label %.preheader64.i94
    i32 2, label %.preheader66.i80
  ]

.preheader66.i80:                                 ; preds = %bb.o
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !852
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lb = load double, ptr %i.la, align 8, !tbaa !850 ; 10 uses
  %i.lc = zext i32 %i.kw to i64                   ; 7 uses
  %.not.i81 = icmp eq i32 %i.kw, 0
  %.promoted.i82 = load double, ptr %i.kx, align 8, !tbaa !851 ; 3 uses
  br i1 %.not.i81, label %.preheader66.split.i91.preheader, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.preheader66.i80
  %min.iters.check = icmp ult i32 %i.kw, 4
  %min.iters.check268 = icmp ult i32 %i.kw, 16
  %i.ld = and i64 %i.lc, 12
  %n.vec = and i64 %i.lc, 4294967280              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.lc
  %min.epilog.iters.check = icmp eq i64 %i.ld, 0
  %n.vec269 = and i64 %i.lc, 4294967292           ; 3 uses
  %cmp.n274 = icmp eq i64 %n.vec269, %i.lc
  br label %iter.check

.preheader66.split.i91.preheader:                 ; preds = %.preheader66.i80
  %i.le = add i64 %2, -1
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.lf = icmp ult i64 %i.le, 7
  br i1 %i.lf, label %.preheader66.split.i91.epil.preheader, label %.preheader66.split.i91.preheader.new

.preheader66.split.i91.preheader.new:             ; preds = %.preheader66.split.i91.preheader
  %unroll_iter = and i64 %2, -8
  br label %.preheader66.split.i91

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge.us.i87
  %.15369.us.i84 = phi i64 [ %i.ma, %._crit_edge.us.i87 ], [ 0, %iter.check.preheader ] ; 2 uses
  %i.lg = phi double [ %i.lz, %._crit_edge.us.i87 ], [ %.promoted.i82, %iter.check.preheader ] ; 3 uses
  %i.lh = fptosi double %i.lg to i64
  %i.li = sitofp i64 %i.lh to double
  %i.lj = fsub double %i.lg, %i.li
  %i.lk = fadd double %i.lj, -5.000000e-01
  %i.ll = fmul double %i.lk, 2.000000e+00
  %i.lm = fmul double %i.kz, %i.ll
  %i.ln = fptrunc double %i.lm to float
  %i.lo = fmul float %i.ln, 3.276700e+04
  %i.lp = fptosi float %i.lo to i16               ; 3 uses
  %i.lq = mul i64 %.15369.us.i84, %i.lc
  %i.lr = getelementptr [2 x i8], ptr %1, i64 %i.lq ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check268, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ls = getelementptr [2 x i8], ptr %i.lr, i64 %index ; 2 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.ls, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat, ptr %i.lt, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lu = icmp eq i64 %index.next, %n.vec
  br i1 %i.lu, label %middle.block, label %vector.body, !llvm.loop !2553

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i87, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert270 = insertelement <4 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat271 = shufflevector <4 x i16> %broadcast.splatinsert270, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index272 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next273, %vec.epilog.vector.body ] ; 2 uses
  %i.lv = getelementptr [2 x i8], ptr %i.lr, i64 %index272
  store <4 x i16> %broadcast.splat271, ptr %i.lv, align 2, !tbaa !122
  %index.next273 = add nuw i64 %index272, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next273, %n.vec269
  br i1 %i.lw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2554

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n274, label %._crit_edge.us.i87, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.168.us.i85.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec269, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.168.us.i85 = phi i64 [ %i.ly, %vec.epilog.scalar.ph ], [ %.168.us.i85.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.lx = getelementptr [2 x i8], ptr %i.lr, i64 %.168.us.i85
  store i16 %i.lp, ptr %i.lx, align 2, !tbaa !122
  %i.ly = add nuw nsw i64 %.168.us.i85, 1         ; 2 uses
  %exitcond.not.i86 = icmp eq i64 %i.ly, %i.lc
  br i1 %exitcond.not.i86, label %._crit_edge.us.i87, label %vec.epilog.scalar.ph, !llvm.loop !2555

._crit_edge.us.i87:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.lz = fadd double %i.lb, %i.lg                ; 2 uses
  %i.ma = add nuw i64 %.15369.us.i84, 1           ; 2 uses
  %exitcond98.not.i88 = icmp eq i64 %i.ma, %2
  br i1 %exitcond98.not.i88, label %.loopexit67.i89, label %iter.check, !llvm.loop !2556

.preheader64.i94:                                 ; preds = %bb.o
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.md = load double, ptr %i.mc, align 8, !tbaa !852
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.mf = load double, ptr %i.me, align 8, !tbaa !850 ; 10 uses
  %i.mg = zext i32 %i.kw to i64                   ; 4 uses
  %.not80.i95 = icmp eq i32 %i.kw, 0
  %.promoted71.i96 = load double, ptr %i.mb, align 8, !tbaa !851 ; 3 uses
  br i1 %.not80.i95, label %.preheader64.split.i105.preheader, label %.lr.ph.us74.i97.preheader

.lr.ph.us74.i97.preheader:                        ; preds = %.preheader64.i94
  %min.iters.check275 = icmp ult i32 %i.kw, 8
  %n.vec277 = and i64 %i.mg, 4294967288           ; 3 uses
  %cmp.n284 = icmp eq i64 %n.vec277, %i.mg
  br label %.lr.ph.us74.i97

.preheader64.split.i105.preheader:                ; preds = %.preheader64.i94
  %i.mh = add i64 %2, -1
  %xtraiter396 = and i64 %2, 7                    ; 3 uses
  %i.mi = icmp ult i64 %i.mh, 7
  br i1 %i.mi, label %.preheader64.split.i105.epil.preheader, label %.preheader64.split.i105.preheader.new

.preheader64.split.i105.preheader.new:            ; preds = %.preheader64.split.i105.preheader
  %unroll_iter403 = and i64 %2, -8
  br label %.preheader64.split.i105

.lr.ph.us74.i97:                                  ; preds = %.lr.ph.us74.i97.preheader, %._crit_edge.us75.i101
  %.05273.us.i98 = phi i64 [ %i.mz, %._crit_edge.us75.i101 ], [ 0, %.lr.ph.us74.i97.preheader ] ; 2 uses
  %i.mj = phi double [ %i.my, %._crit_edge.us75.i101 ], [ %.promoted71.i96, %.lr.ph.us74.i97.preheader ] ; 3 uses
  %i.mk = fptosi double %i.mj to i64
  %i.ml = sitofp i64 %i.mk to double
  %i.mm = fsub double %i.mj, %i.ml
  %i.mn = fadd double %i.mm, -5.000000e-01
  %i.mo = fmul double %i.mn, 2.000000e+00
  %i.mp = fmul double %i.md, %i.mo
  %i.mq = fptrunc double %i.mp to float           ; 2 uses
  %i.mr = mul i64 %.05273.us.i98, %i.mg
  %i.ms = getelementptr [4 x i8], ptr %1, i64 %i.mr ; 2 uses
  br i1 %min.iters.check275, label %scalar.ph.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.us74.i97
  %broadcast.splatinsert278 = insertelement <4 x float> poison, float %i.mq, i64 0
  %broadcast.splat279 = shufflevector <4 x float> %broadcast.splatinsert278, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph276
  %index281 = phi i64 [ 0, %vector.ph276 ], [ %index.next282, %vector.body280 ] ; 2 uses
  %i.mt = getelementptr [4 x i8], ptr %i.ms, i64 %index281 ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 16
  store <4 x float> %broadcast.splat279, ptr %i.mt, align 4, !tbaa !349
  store <4 x float> %broadcast.splat279, ptr %i.mu, align 4, !tbaa !349
  %index.next282 = add nuw i64 %index281, 8       ; 2 uses
  %i.mv = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.mv, label %middle.block283, label %vector.body280, !llvm.loop !2557

middle.block283:                                  ; preds = %vector.body280
  br i1 %cmp.n284, label %._crit_edge.us75.i101, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us74.i97, %middle.block283
  %.070.us.i99.ph = phi i64 [ 0, %.lr.ph.us74.i97 ], [ %n.vec277, %middle.block283 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.070.us.i99 = phi i64 [ %i.mx, %scalar.ph ], [ %.070.us.i99.ph, %scalar.ph.preheader ] ; 2 uses
  %i.mw = getelementptr [4 x i8], ptr %i.ms, i64 %.070.us.i99
  store float %i.mq, ptr %i.mw, align 4, !tbaa !349
  %i.mx = add nuw nsw i64 %.070.us.i99, 1         ; 2 uses
  %exitcond100.not.i100 = icmp eq i64 %i.mx, %i.mg
  br i1 %exitcond100.not.i100, label %._crit_edge.us75.i101, label %scalar.ph, !llvm.loop !2558

._crit_edge.us75.i101:                            ; preds = %scalar.ph, %middle.block283
  %i.my = fadd double %i.mf, %i.mj                ; 2 uses
  %i.mz = add nuw i64 %.05273.us.i98, 1           ; 2 uses
  %exitcond101.not.i102 = icmp eq i64 %i.mz, %2
  br i1 %exitcond101.not.i102, label %.loopexit65.i103, label %.lr.ph.us74.i97, !llvm.loop !2559

.preheader.i108:                                  ; preds = %bb.o
  %i.na = zext i32 %i.ku to i64
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !118 ; 2 uses
  %i.nd = mul i32 %i.nc, %i.kw
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.nh = zext i32 %i.nd to i64
  %i.ni = zext i32 %i.nc to i64                   ; 2 uses
  br label %bb.p

.preheader64.split.i105:                          ; preds = %.preheader64.split.i105, %.preheader64.split.i105.preheader.new
  %i.nj = phi double [ %.promoted71.i96, %.preheader64.split.i105.preheader.new ], [ %i.nr, %.preheader64.split.i105 ]
  %niter404 = phi i64 [ 0, %.preheader64.split.i105.preheader.new ], [ %niter404.next.7, %.preheader64.split.i105 ]
  %i.nk = fadd double %i.mf, %i.nj
  %i.nl = fadd double %i.mf, %i.nk
  %i.nm = fadd double %i.mf, %i.nl
  %i.nn = fadd double %i.mf, %i.nm
  %i.no = fadd double %i.mf, %i.nn
  %i.np = fadd double %i.mf, %i.no
  %i.nq = fadd double %i.mf, %i.np
  %i.nr = fadd double %i.mf, %i.nq                ; 3 uses
  %niter404.next.7 = add nuw i64 %niter404, 8     ; 2 uses
  %niter404.ncmp.7 = icmp eq i64 %niter404.next.7, %unroll_iter403
  br i1 %niter404.ncmp.7, label %.loopexit65.i103.loopexit.unr-lcssa, label %.preheader64.split.i105, !llvm.loop !2559

.preheader66.split.i91:                           ; preds = %.preheader66.split.i91, %.preheader66.split.i91.preheader.new
  %i.ns = phi double [ %.promoted.i82, %.preheader66.split.i91.preheader.new ], [ %i.oa, %.preheader66.split.i91 ]
  %niter = phi i64 [ 0, %.preheader66.split.i91.preheader.new ], [ %niter.next.7, %.preheader66.split.i91 ]
  %i.nt = fadd double %i.lb, %i.ns
  %i.nu = fadd double %i.lb, %i.nt
  %i.nv = fadd double %i.lb, %i.nu
  %i.nw = fadd double %i.lb, %i.nv
  %i.nx = fadd double %i.lb, %i.nw
  %i.ny = fadd double %i.lb, %i.nx
  %i.nz = fadd double %i.lb, %i.ny
  %i.oa = fadd double %i.lb, %i.nz                ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit67.i89.loopexit.unr-lcssa, label %.preheader66.split.i91, !llvm.loop !2556

bb.p:                                             ; preds = %._crit_edge.i118, %.preheader.i108
  %i.ob = phi i32 [ %i.kw, %.preheader.i108 ], [ %i.qc, %._crit_edge.i118 ]
  %.25478.i109 = phi i64 [ 0, %.preheader.i108 ], [ %i.qd, %._crit_edge.i118 ] ; 2 uses
  %i.oc = load double, ptr %i.ne, align 8, !tbaa !851 ; 3 uses
  %i.od = load double, ptr %i.nf, align 8, !tbaa !852
  %i.oe = load double, ptr %i.ng, align 8, !tbaa !850
  %i.of = fadd double %i.oc, %i.oe
  store double %i.of, ptr %i.ne, align 8, !tbaa !851
  %.not81.i110 = icmp eq i32 %i.ob, 0
  br i1 %.not81.i110, label %._crit_edge.i118, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.p
  %i.og = fptosi double %i.oc to i64
  %i.oh = sitofp i64 %i.og to double
  %i.oi = fsub double %i.oc, %i.oh
  %i.oj = fadd double %i.oi, -5.000000e-01
  %i.ok = fmul double %i.oj, 2.000000e+00
  %i.ol = fmul double %i.od, %i.ok
  %.fr159 = freeze double %i.ol                   ; 2 uses
  %i.om = fptrunc double %.fr159 to float         ; 6 uses
  %i.on = mul i64 %.25478.i109, %i.nh
  %i.oo = getelementptr i8, ptr %1, i64 %i.on     ; 2 uses
  %i.op = fcmp olt double %.fr159, f0xBFF0000010000000 ; 3 uses
  %i.oq = fpext float %i.om to double             ; 2 uses
  %i.or = fcmp ogt double %i.oq, 1.000000e+00
  %i.os = select i1 %i.or, double 1.000000e+00, double %i.oq
  %i.ot = fmul double %i.os, f0x41DFFFFFFFC00000
  %i.ou = fptosi double %i.ot to i32
  %i.ov = fcmp ogt float %i.om, 1.000000e+00
  %i.ow = select i1 %i.ov, float 1.000000e+00, float %i.om
  %i.ox = fmul float %i.ow, f0x4AFFFFFE
  %i.oy = fptosi float %i.ox to i32
  %i.oz = fadd float %i.om, 0.000000e+00          ; 2 uses
  %i.pa = fcmp ogt float %i.oz, 1.000000e+00
  %i.pb = select i1 %i.pa, float 1.000000e+00, float %i.oz ; 2 uses
  %i.pc = fmul float %i.pb, 3.276700e+04
  %i.pd = fptosi float %i.pc to i16
  %i.pe = fadd float %i.pb, 1.000000e+00
  %i.pf = fmul float %i.pe, 1.275000e+02
  %i.pg = fptoui float %i.pf to i8
  %spec.select79.i112 = select i1 %i.op, i32 -8388607, i32 %i.oy ; 3 uses
  %i.ph = trunc i32 %spec.select79.i112 to i8     ; 2 uses
  %i.pi = lshr i32 %spec.select79.i112, 8
  %i.pj = trunc i32 %i.pi to i8                   ; 2 uses
  %i.pk = lshr i32 %spec.select79.i112, 16
  %i.pl = trunc i32 %i.pk to i8                   ; 2 uses
  %spec.select.i113 = select i1 %i.op, i8 0, i8 %i.pg ; 2 uses
  br i1 %i.op, label %.lr.ph.i111.split.us, label %.lr.ph.i111.split

.lr.ph.i111.split.us:                             ; preds = %.lr.ph.i111, %ma_pcm_convert.exit.i117.us
  %.277.i114.us = phi i64 [ %i.pr, %ma_pcm_convert.exit.i117.us ], [ 0, %.lr.ph.i111 ] ; 2 uses
  %i.pm = mul nuw i64 %.277.i114.us, %i.ni
  %i.pn = getelementptr i8, ptr %i.oo, i64 %i.pm  ; 7 uses
  %i.po = load i32, ptr %i.kt, align 8, !tbaa !854
  switch i32 %i.po, label %ma_pcm_convert.exit.i117.us [
    i32 5, label %ma_pcm_convert.exit.loopexit.i130.us
    i32 1, label %ma_dither_f32.exit.i.preheader.i129.us
    i32 2, label %bb.q
    i32 3, label %.lr.ph.i134.i.preheader.i121.us
    i32 4, label %.lr.ph.i138.i.preheader.i115.us
  ]

.lr.ph.i138.i.preheader.i115.us:                  ; preds = %.lr.ph.i111.split.us
  store i32 -2147483647, ptr %i.pn, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i117.us

.lr.ph.i134.i.preheader.i121.us:                  ; preds = %.lr.ph.i111.split.us
  store i8 %i.ph, ptr %i.pn, align 1, !tbaa !119
  %i.pp = getelementptr i8, ptr %i.pn, i64 1
  store i8 %i.pj, ptr %i.pp, align 1, !tbaa !119
  %i.pq = getelementptr i8, ptr %i.pn, i64 2
  store i8 %i.pl, ptr %i.pq, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i117.us

bb.q:                                             ; preds = %.lr.ph.i111.split.us
  store i16 -32767, ptr %i.pn, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i117.us

ma_dither_f32.exit.i.preheader.i129.us:           ; preds = %.lr.ph.i111.split.us
  store i8 %spec.select.i113, ptr %i.pn, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i117.us

ma_pcm_convert.exit.loopexit.i130.us:             ; preds = %.lr.ph.i111.split.us
  store float %i.om, ptr %i.pn, align 1
  br label %ma_pcm_convert.exit.i117.us

ma_pcm_convert.exit.i117.us:                      ; preds = %bb.q, %ma_pcm_convert.exit.loopexit.i130.us, %ma_dither_f32.exit.i.preheader.i129.us, %.lr.ph.i134.i.preheader.i121.us, %.lr.ph.i138.i.preheader.i115.us, %.lr.ph.i111.split.us
  %i.pr = add nuw nsw i64 %.277.i114.us, 1        ; 2 uses
  %i.ps = load i32, ptr %i.kv, align 4, !tbaa !855 ; 2 uses
  %i.pt = zext i32 %i.ps to i64
  %i.pu = icmp samesign ult i64 %i.pr, %i.pt
  br i1 %i.pu, label %.lr.ph.i111.split.us, label %._crit_edge.i118, !llvm.loop !2560

.lr.ph.i111.split:                                ; preds = %.lr.ph.i111, %ma_pcm_convert.exit.i117
  %.277.i114 = phi i64 [ %i.py, %ma_pcm_convert.exit.i117 ], [ 0, %.lr.ph.i111 ] ; 2 uses
  %i.pv = mul nuw i64 %.277.i114, %i.ni
  %i.pw = getelementptr i8, ptr %i.oo, i64 %i.pv  ; 7 uses
  %i.px = load i32, ptr %i.kt, align 8, !tbaa !854
  switch i32 %i.px, label %ma_pcm_convert.exit.i117 [
    i32 5, label %ma_pcm_convert.exit.loopexit.i130
    i32 1, label %ma_dither_f32.exit.i.preheader.i129
    i32 2, label %bb.r
    i32 3, label %.lr.ph.i134.i.preheader.i121
    i32 4, label %.lr.ph.i138.i.preheader.i115
  ]

.lr.ph.i134.i.preheader.i121:                     ; preds = %.lr.ph.i111.split
  store i8 %i.ph, ptr %i.pw, align 1, !tbaa !119
  %8 = getelementptr i8, ptr %i.pw, i64 1
  store i8 %i.pj, ptr %8, align 1, !tbaa !119
  %9 = getelementptr i8, ptr %i.pw, i64 2
  store i8 %i.pl, ptr %9, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i117

ma_dither_f32.exit.i.preheader.i129:              ; preds = %.lr.ph.i111.split
  store i8 %spec.select.i113, ptr %i.pw, align 1, !tbaa !119
  br label %ma_pcm_convert.exit.i117

.lr.ph.i138.i.preheader.i115:                     ; preds = %.lr.ph.i111.split
  store i32 %i.ou, ptr %i.pw, align 4, !tbaa !118
  br label %ma_pcm_convert.exit.i117

bb.r:                                             ; preds = %.lr.ph.i111.split
  store i16 %i.pd, ptr %i.pw, align 2, !tbaa !122
  br label %ma_pcm_convert.exit.i117

ma_pcm_convert.exit.loopexit.i130:                ; preds = %.lr.ph.i111.split
  store float %i.om, ptr %i.pw, align 1
  br label %ma_pcm_convert.exit.i117

ma_pcm_convert.exit.i117:                         ; preds = %bb.r, %ma_pcm_convert.exit.loopexit.i130, %.lr.ph.i138.i.preheader.i115, %ma_dither_f32.exit.i.preheader.i129, %.lr.ph.i134.i.preheader.i121, %.lr.ph.i111.split
  %i.py = add nuw nsw i64 %.277.i114, 1           ; 2 uses
  %i.pz = load i32, ptr %i.kv, align 4, !tbaa !855 ; 2 uses
  %i.qa = zext i32 %i.pz to i64
  %i.qb = icmp samesign ult i64 %i.py, %i.qa
  br i1 %i.qb, label %.lr.ph.i111.split, label %._crit_edge.i118, !llvm.loop !2560

._crit_edge.i118:                                 ; preds = %ma_pcm_convert.exit.i117, %ma_pcm_convert.exit.i117.us, %bb.p
  %i.qc = phi i32 [ 0, %bb.p ], [ %i.ps, %ma_pcm_convert.exit.i117.us ], [ %i.pz, %ma_pcm_convert.exit.i117 ]
  %i.qd = add nuw i64 %.25478.i109, 1             ; 2 uses
  %exitcond103.not.i119 = icmp eq i64 %i.qd, %2
  br i1 %exitcond103.not.i119, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.p, !llvm.loop !2561

.loopexit65.i103.loopexit.unr-lcssa:              ; preds = %.preheader64.split.i105
  %lcmp.mod400.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod400.not, label %.loopexit65.i103, label %.preheader64.split.i105.epil.preheader

.preheader64.split.i105.epil.preheader:           ; preds = %.loopexit65.i103.loopexit.unr-lcssa, %.preheader64.split.i105.preheader
  %.epil.init399 = phi double [ %.promoted71.i96, %.preheader64.split.i105.preheader ], [ %i.nr, %.loopexit65.i103.loopexit.unr-lcssa ]
  %lcmp.mod402 = icmp ne i64 %xtraiter396, 0
  tail call void @llvm.assume(i1 %lcmp.mod402)
  br label %.preheader64.split.i105.epil

.preheader64.split.i105.epil:                     ; preds = %.preheader64.split.i105.epil, %.preheader64.split.i105.epil.preheader
  %i.qe = phi double [ %i.qf, %.preheader64.split.i105.epil ], [ %.epil.init399, %.preheader64.split.i105.epil.preheader ]
  %epil.iter397 = phi i64 [ %epil.iter397.next, %.preheader64.split.i105.epil ], [ 0, %.preheader64.split.i105.epil.preheader ]
  %i.qf = fadd double %i.mf, %i.qe                ; 2 uses
  %epil.iter397.next = add i64 %epil.iter397, 1   ; 2 uses
  %epil.iter397.cmp.not = icmp eq i64 %epil.iter397.next, %xtraiter396
  br i1 %epil.iter397.cmp.not, label %.loopexit65.i103, label %.preheader64.split.i105.epil, !llvm.loop !2562

.loopexit65.i103:                                 ; preds = %._crit_edge.us75.i101, %.loopexit65.i103.loopexit.unr-lcssa, %.preheader64.split.i105.epil
  %.us-phi76.i104 = phi double [ %i.qf, %.preheader64.split.i105.epil ], [ %i.nr, %.loopexit65.i103.loopexit.unr-lcssa ], [ %i.my, %._crit_edge.us75.i101 ]
  store double %.us-phi76.i104, ptr %i.mb, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i89.loopexit.unr-lcssa:               ; preds = %.preheader66.split.i91
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit67.i89, label %.preheader66.split.i91.epil.preheader

.preheader66.split.i91.epil.preheader:            ; preds = %.loopexit67.i89.loopexit.unr-lcssa, %.preheader66.split.i91.preheader
  %.epil.init = phi double [ %.promoted.i82, %.preheader66.split.i91.preheader ], [ %i.oa, %.loopexit67.i89.loopexit.unr-lcssa ]
  %lcmp.mod395 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod395)
  br label %.preheader66.split.i91.epil

.preheader66.split.i91.epil:                      ; preds = %.preheader66.split.i91.epil, %.preheader66.split.i91.epil.preheader
  %i.qg = phi double [ %i.qh, %.preheader66.split.i91.epil ], [ %.epil.init, %.preheader66.split.i91.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader66.split.i91.epil ], [ 0, %.preheader66.split.i91.epil.preheader ]
  %i.qh = fadd double %i.lb, %i.qg                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit67.i89, label %.preheader66.split.i91.epil, !llvm.loop !2563

.loopexit67.i89:                                  ; preds = %._crit_edge.us.i87, %.loopexit67.i89.loopexit.unr-lcssa, %.preheader66.split.i91.epil
  %.us-phi.i90 = phi double [ %i.qh, %.preheader66.split.i91.epil ], [ %i.oa, %.loopexit67.i89.loopexit.unr-lcssa ], [ %i.lz, %._crit_edge.us.i87 ]
  store double %.us-phi.i90, ptr %i.kx, align 8, !tbaa !851
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.s:                                             ; preds = %bb.d
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !850
  %i.qk = sitofp i64 %2 to double
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !851
  %i.qn = tail call double @llvm.fmuladd.f64(double %i.qj, double %i.qk, double %i.qm)
  store double %i.qn, ptr %i.ql, align 8, !tbaa !851
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
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.y, align 2, !tbaa !122
  store <8 x i16> %broadcast.splat, ptr %i.z, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2564

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert125 = insertelement <4 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat126 = shufflevector <4 x i16> %broadcast.splatinsert125, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index127.a = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128.a, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = getelementptr [2 x i8], ptr %i.x, i64 %index127.a
  store <4 x i16> %broadcast.splat126, ptr %i.ab, align 2, !tbaa !122
  %index.next128.a = add nuw i64 %index127.a, 4   ; 2 uses
  %i.ac = icmp eq i64 %index.next128.a, %n.vec124
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2565

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n129, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.172.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec124, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.172.us = phi i64 [ %i.ae, %vec.epilog.scalar.ph ], [ %.172.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ad = getelementptr [2 x i8], ptr %i.x, i64 %.172.us
  store i16 %i.v, ptr %i.ad, align 2, !tbaa !122
  %i.ae = add nuw nsw i64 %.172.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.l
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !2566

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.af = fadd double %i.o, %i.k                  ; 2 uses
  %i.ag = add nuw i64 %.15673.us, 1               ; 2 uses
  %exitcond102.not = icmp eq i64 %i.ag, %3
  br i1 %exitcond102.not, label %.loopexit71, label %iter.check, !llvm.loop !2567

.preheader68:                                     ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !852 ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load double, ptr %i.al, align 8, !tbaa !850 ; 10 uses
  %i.an = zext i32 %i.e to i64                    ; 4 uses
  %.not84.a = icmp eq i32 %i.e, 0
  %.promoted75 = load double, ptr %i.ah, align 8, !tbaa !851 ; 3 uses
  br i1 %.not84.a, label %.preheader68.split.preheader, label %.lr.ph.us78.preheader

.lr.ph.us78.preheader:                            ; preds = %.preheader68
  %min.iters.check130 = icmp ult i32 %i.e, 8
  %n.vec132 = and i64 %i.an, 4294967288           ; 3 uses
  %cmp.n139 = icmp eq i64 %n.vec132, %i.an
  br label %.lr.ph.us78

.preheader68.split.preheader:                     ; preds = %.preheader68
  %xtraiter149 = and i64 %3, 7                    ; 3 uses
  %i.ao = icmp ult i64 %3, 8
  br i1 %i.ao, label %.preheader68.split.epil.preheader, label %.preheader68.split.preheader.new

.preheader68.split.preheader.new:                 ; preds = %.preheader68.split.preheader
  %unroll_iter156 = and i64 %3, -8
  br label %.preheader68.split

.lr.ph.us78:                                      ; preds = %.lr.ph.us78.preheader, %._crit_edge.us79
  %.05577.us = phi i64 [ %i.bd, %._crit_edge.us79 ], [ 0, %.lr.ph.us78.preheader ] ; 2 uses
  %i.ap = phi double [ %i.bc, %._crit_edge.us79 ], [ %.promoted75, %.lr.ph.us78.preheader ] ; 3 uses
  %i.aq = fptosi double %i.ap to i64
  %i.ar = sitofp i64 %i.aq to double
  %i.as = fsub double %i.ap, %i.ar
  %i.at = fcmp olt double %i.as, %1
  %.0.i.us = select i1 %i.at, double %i.aj, double %i.ak
  %i.au = fptrunc double %.0.i.us to float        ; 2 uses
  %i.av = mul i64 %.05577.us, %i.an
  %i.aw = getelementptr [4 x i8], ptr %2, i64 %i.av ; 2 uses
  br i1 %min.iters.check130, label %scalar.ph.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.us78
  %broadcast.splatinsert133 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat134 = shufflevector <4 x float> %broadcast.splatinsert133, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph131
  %index136 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body135 ] ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %index136 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <4 x float> %broadcast.splat134, ptr %i.ax, align 4, !tbaa !349
  store <4 x float> %broadcast.splat134, ptr %i.ay, align 4, !tbaa !349
  %index.next137 = add nuw i64 %index136, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.az, label %middle.block138, label %vector.body135, !llvm.loop !2568

middle.block138:                                  ; preds = %vector.body135
  br i1 %cmp.n139, label %._crit_edge.us79, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us78, %middle.block138
  %.074.us.ph = phi i64 [ 0, %.lr.ph.us78 ], [ %n.vec132, %middle.block138 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.074.us = phi i64 [ %i.bb, %scalar.ph ], [ %.074.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.aw, i64 %.074.us
  store float %i.au, ptr %i.ba, align 4, !tbaa !349
  %i.bb = add nuw nsw i64 %.074.us, 1             ; 2 uses
  %exitcond104.not = icmp eq i64 %i.bb, %i.an
  br i1 %exitcond104.not, label %._crit_edge.us79, label %scalar.ph, !llvm.loop !2569

._crit_edge.us79:                                 ; preds = %scalar.ph, %middle.block138
  %i.bc = fadd double %i.ap, %i.am                ; 2 uses
  %i.bd = add nuw i64 %.05577.us, 1               ; 2 uses
  %exitcond105.not = icmp eq i64 %i.bd, %3
  br i1 %exitcond105.not, label %.loopexit69, label %.lr.ph.us78, !llvm.loop !2570

.preheader:                                       ; preds = %bb.a
  %i.be = zext i32 %i.c to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !118 ; 2 uses
  %i.bh = mul i32 %i.e, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = zext i32 %i.bh to i64
  %i.bm = zext i32 %i.bg to i64
  %i.bn = ptrtoint ptr %i.a to i64
  br label %bb.b

.preheader68.split:                               ; preds = %.preheader68.split, %.preheader68.split.preheader.new
  %i.bo = phi double [ %.promoted75, %.preheader68.split.preheader.new ], [ %i.bw, %.preheader68.split ]
  %niter157 = phi i64 [ 0, %.preheader68.split.preheader.new ], [ %niter157.next.7, %.preheader68.split ]
  %i.bp = fadd double %i.bo, %i.am
  %i.bq = fadd double %i.bp, %i.am
  %i.br = fadd double %i.bq, %i.am
  %i.bs = fadd double %i.br, %i.am
  %i.bt = fadd double %i.bs, %i.am
  %i.bu = fadd double %i.bt, %i.am
  %i.bv = fadd double %i.bu, %i.am
  %i.bw = fadd double %i.bv, %i.am                ; 3 uses
  %niter157.next.7 = add nuw i64 %niter157, 8     ; 2 uses
  %niter157.ncmp.7 = icmp eq i64 %niter157.next.7, %unroll_iter156
  br i1 %niter157.ncmp.7, label %.loopexit69.loopexit.unr-lcssa, label %.preheader68.split, !llvm.loop !2570

.preheader70.split:                               ; preds = %.preheader70.split, %.preheader70.split.preheader.new
  %i.bx = phi double [ %.promoted, %.preheader70.split.preheader.new ], [ %i.cf, %.preheader70.split ]
  %niter = phi i64 [ 0, %.preheader70.split.preheader.new ], [ %niter.next.7, %.preheader70.split ]
  %i.by = fadd double %i.bx, %i.k
  %i.bz = fadd double %i.by, %i.k
  %i.ca = fadd double %i.bz, %i.k
  %i.cb = fadd double %i.ca, %i.k
  %i.cc = fadd double %i.cb, %i.k
  %i.cd = fadd double %i.cc, %i.k
  %i.ce = fadd double %i.cd, %i.k
  %i.cf = fadd double %i.ce, %i.k                 ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit71.loopexit.unr-lcssa, label %.preheader70.split, !llvm.loop !2567

bb.b:                                             ; preds = %.preheader, %._crit_edge
  %i.cg = phi i32 [ %i.e, %.preheader ], [ %i.eb, %._crit_edge ]
  %.25782 = phi i64 [ 0, %.preheader ], [ %i.ec, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ch = load double, ptr %i.bi, align 8, !tbaa !851 ; 3 uses
  %i.ci = load double, ptr %i.bj, align 8, !tbaa !852 ; 2 uses
  %i.cj = fptosi double %i.ch to i64
  %i.ck = sitofp i64 %i.cj to double
  %i.cl = fsub double %i.ch, %i.ck
  %i.cm = fcmp olt double %i.cl, %1
  %i.cn = fneg double %i.ci
  %.0.i61 = select i1 %i.cm, double %i.ci, double %i.cn ; 2 uses
  %i.co = fptrunc double %.0.i61 to float         ; 5 uses
  store float %i.co, ptr %i.a, align 4, !tbaa !349
  %i.cp = load double, ptr %i.bk, align 8, !tbaa !850
  %i.cq = fadd double %i.ch, %i.cp
  store double %i.cq, ptr %i.bi, align 8, !tbaa !851
  %.not85 = icmp eq i32 %i.cg, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.cr = mul i64 %.25782, %i.bl
  %i.cs = getelementptr i8, ptr %2, i64 %i.cr
  %i.ct = fcmp olt double %.0.i61, f0xBFF0000010000000 ; 5 uses
  %i.cu = fpext float %i.co to double             ; 2 uses
  %i.cv = fcmp ogt double %i.cu, 1.000000e+00
  %i.cw = select i1 %i.cv, double 1.000000e+00, double %i.cu
  %i.cx = fmul double %i.cw, f0x41DFFFFFFFC00000
  %i.cy = fptosi double %i.cx to i32
  %i.cz = fcmp ogt float %i.co, 1.000000e+00
  %i.da = select i1 %i.cz, float 1.000000e+00, float %i.co
  %i.db = fmul float %i.da, f0x4AFFFFFE
  %i.dc = fptosi float %i.db to i32
  %i.dd = fadd float %i.co, 0.000000e+00          ; 2 uses
  %i.de = fcmp ogt float %i.dd, 1.000000e+00
  %i.df = select i1 %i.de, float 1.000000e+00, float %i.dd ; 2 uses
  %i.dg = fmul float %i.df, 3.276700e+04
  %i.dh = fptosi float %i.dg to i16               ; 2 uses
  %i.di = fadd float %i.df, 1.000000e+00
  %i.dj = fmul float %i.di, 1.275000e+02
  %i.dk = fptoui float %i.dj to i8
  %spec.select83 = select i1 %i.ct, i32 -8388607, i32 %i.dc ; 3 uses
  %i.dl = trunc i32 %spec.select83 to i8
  %i.dm = lshr i32 %spec.select83, 8
  %i.dn = trunc i32 %i.dm to i8
  %i.do = lshr i32 %spec.select83, 16
  %i.dp = trunc i32 %i.do to i8
  %spec.select = select i1 %i.ct, i8 0, i8 %i.dk
  %i.dq = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %ma_pcm_convert.exit
  %.281 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %ma_pcm_convert.exit ] ; 2 uses
  %i.dr = mul nuw i64 %.281, %i.bm
  %i.ds = getelementptr i8, ptr %i.cs, i64 %i.dr  ; 12 uses
  %i.dt = load i32, ptr %i.b, align 8, !tbaa !854
  switch i32 %i.dt, label %ma_pcm_convert.exit [
    i32 5, label %ma_pcm_convert.exit.loopexit
    i32 1, label %ma_dither_f32.exit.i.preheader.a
    i32 2, label %bb.d
    i32 3, label %.lr.ph.i134.i.preheader
    i32 4, label %.lr.ph.i138.i.preheader.a
  ]

.lr.ph.i134.i.preheader:                          ; preds = %bb.c
  store i8 %i.dl, ptr %i.ds, align 1, !tbaa !119
  %4 = getelementptr i8, ptr %i.ds, i64 1
  store i8 %i.dn, ptr %4, align 1, !tbaa !119
  %5 = getelementptr i8, ptr %i.ds, i64 2
  store i8 %i.dp, ptr %5, align 1, !tbaa !119
  br label %ma_pcm_convert.exit

ma_dither_f32.exit.i.preheader.a:                 ; preds = %bb.c
  store i8 %spec.select, ptr %i.ds, align 1, !tbaa !119
  br label %ma_pcm_convert.exit

.lr.ph.i138.i.preheader.a:                        ; preds = %bb.c
  br i1 %i.ct, label %.lr.ph.i138.i.us.preheader, label %.lr.ph.i138.i.preheader95

.lr.ph.i138.i.preheader95:                        ; preds = %.lr.ph.i138.i.preheader.a
  store i32 %i.cy, ptr %i.ds, align 4, !tbaa !118
  br label %ma_pcm_convert.exit

.lr.ph.i138.i.us.preheader:                       ; preds = %.lr.ph.i138.i.preheader.a
  store i32 -2147483647, ptr %i.ds, align 4, !tbaa !118
  br label %ma_pcm_convert.exit

bb.d:                                             ; preds = %bb.c
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = or i64 %i.du, %i.bn
  %i.dw = and i64 %i.dv, 15
  %or.cond.i.i = icmp eq i64 %i.dw, 0
  br i1 %or.cond.i.i, label %.lr.ph71.i.preheader.a, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %bb.d
  br i1 %i.ct, label %.lr.ph63.i.us.preheader, label %.lr.ph63.i.preheader91

.lr.ph63.i.preheader91:                           ; preds = %.lr.ph63.i.preheader
  store i16 %i.dh, ptr %i.ds, align 2, !tbaa !122
  br label %ma_pcm_convert.exit

.lr.ph63.i.us.preheader:                          ; preds = %.lr.ph63.i.preheader
  store i16 -32767, ptr %i.ds, align 2, !tbaa !122
  br label %ma_pcm_convert.exit

.lr.ph71.i.preheader.a:                           ; preds = %bb.d
  br i1 %i.ct, label %.lr.ph71.i.us.preheader, label %.lr.ph71.i.preheader88

.lr.ph71.i.preheader88:                           ; preds = %.lr.ph71.i.preheader.a
  store i16 %i.dh, ptr %i.ds, align 2, !tbaa !122
  br label %ma_pcm_convert.exit

.lr.ph71.i.us.preheader:                          ; preds = %.lr.ph71.i.preheader.a
  store i16 -32767, ptr %i.ds, align 2, !tbaa !122
  br label %ma_pcm_convert.exit

ma_pcm_convert.exit.loopexit:                     ; preds = %bb.c
  store i32 %i.dq, ptr %i.ds, align 1
  br label %ma_pcm_convert.exit

ma_pcm_convert.exit:                              ; preds = %.lr.ph.i138.i.preheader95, %.lr.ph.i138.i.us.preheader, %.lr.ph.i134.i.preheader, %.lr.ph63.i.preheader91, %.lr.ph63.i.us.preheader, %.lr.ph71.i.preheader88, %.lr.ph71.i.us.preheader, %ma_dither_f32.exit.i.preheader.a, %ma_pcm_convert.exit.loopexit, %bb.c
  %i.dx = add nuw nsw i64 %.281, 1                ; 2 uses
  %i.dy = load i32, ptr %i.d, align 4, !tbaa !855 ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = icmp samesign ult i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.c, label %._crit_edge, !llvm.loop !2571

._crit_edge:                                      ; preds = %ma_pcm_convert.exit, %bb.b
  %i.eb = phi i32 [ 0, %bb.b ], [ %i.dy, %ma_pcm_convert.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.ec = add nuw i64 %.25782, 1                  ; 2 uses
  %exitcond107.not = icmp eq i64 %i.ec, %3
  br i1 %exitcond107.not, label %.loopexit, label %bb.b, !llvm.loop !2572

.loopexit69.loopexit.unr-lcssa:                   ; preds = %.preheader68.split
  %lcmp.mod153.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod153.not, label %.loopexit69, label %.preheader68.split.epil.preheader

.preheader68.split.epil.preheader:                ; preds = %.loopexit69.loopexit.unr-lcssa, %.preheader68.split.preheader
  %.epil.init152 = phi double [ %.promoted75, %.preheader68.split.preheader ], [ %i.bw, %.loopexit69.loopexit.unr-lcssa ]
  %lcmp.mod155 = icmp ne i64 %xtraiter149, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.preheader68.split.epil

.preheader68.split.epil:                          ; preds = %.preheader68.split.epil, %.preheader68.split.epil.preheader
  %i.ed = phi double [ %i.ee, %.preheader68.split.epil ], [ %.epil.init152, %.preheader68.split.epil.preheader ]
  %epil.iter150 = phi i64 [ %epil.iter150.next, %.preheader68.split.epil ], [ 0, %.preheader68.split.epil.preheader ]
  %i.ee = fadd double %i.ed, %i.am                ; 2 uses
  %epil.iter150.next = add i64 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i64 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %.loopexit69, label %.preheader68.split.epil, !llvm.loop !2573

.loopexit69:                                      ; preds = %._crit_edge.us79, %.loopexit69.loopexit.unr-lcssa, %.preheader68.split.epil
  %.us-phi80 = phi double [ %i.ee, %.preheader68.split.epil ], [ %i.bw, %.loopexit69.loopexit.unr-lcssa ], [ %i.bc, %._crit_edge.us79 ]
  store double %.us-phi80, ptr %i.ah, align 8, !tbaa !851
  br label %.loopexit

.loopexit71.loopexit.unr-lcssa:                   ; preds = %.preheader70.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit71, label %.preheader70.split.epil.preheader

.preheader70.split.epil.preheader:                ; preds = %.loopexit71.loopexit.unr-lcssa, %.preheader70.split.preheader
  %.epil.init = phi double [ %.promoted, %.preheader70.split.preheader ], [ %i.cf, %.loopexit71.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.preheader70.split.epil

.preheader70.split.epil:                          ; preds = %.preheader70.split.epil, %.preheader70.split.epil.preheader
  %i.ef = phi double [ %i.eg, %.preheader70.split.epil ], [ %.epil.init, %.preheader70.split.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader70.split.epil ], [ 0, %.preheader70.split.epil.preheader ]
  %i.eg = fadd double %i.ef, %i.k                 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit71, label %.preheader70.split.epil, !llvm.loop !2574

.loopexit71:                                      ; preds = %._crit_edge.us, %.loopexit71.loopexit.unr-lcssa, %.preheader70.split.epil
  %.us-phi = phi double [ %i.eg, %.preheader70.split.epil ], [ %i.cf, %.loopexit71.loopexit.unr-lcssa ], [ %i.af, %._crit_edge.us ]
  store double %.us-phi, ptr %i.f, align 8, !tbaa !851
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit71, %.loopexit69
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #33

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_waveform_seek_to_pcm_frame(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load double, ptr %i.b, align 8, !tbaa !850
  %i.d = sitofp i64 %1 to double
  %i.e = fmul double %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.e, ptr %i.f, align 8, !tbaa !851
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_pulsewave_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_pulsewave_config) align 8 captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i32 %1, ptr %0, align 8, !tbaa !435
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !436
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.c, align 8, !tbaa !437
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %4, ptr %i.d, align 8, !tbaa !438
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %5, ptr %i.e, align 8, !tbaa !439
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %6, ptr %i.f, align 8, !tbaa !440
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_pulsewave_init(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %ma_pulsewave_set_duty_cycle.exit

ma_pulsewave_set_duty_cycle.exit:                 ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %1, i8 0, i64 160, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !437  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load double, ptr %i.e, align 8, !tbaa !440
  %i.m = load <2 x double>, ptr %i.d, align 8, !tbaa !404
  %i.n = load <2 x i32>, ptr %0, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %i.f, i8 0, i64 64, i1 false)
  store ptr @g_ma_waveform_data_source_vtable, ptr %1, align 8, !tbaa !358
  store i64 -1, ptr %i.g, align 8, !tbaa !359
  store i64 -1, ptr %i.h, align 8, !tbaa !360
  store ptr %1, ptr %i.i, align 8, !tbaa !361
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store <2 x i32> %i.n, ptr %i.k, align 8, !tbaa !118
  store i32 %i.c, ptr %.sroa.515.0..sroa_idx, align 8, !tbaa !118
  store i32 1, ptr %.sroa.616.0..sroa_idx, align 4, !tbaa !118
  store <2 x double> %i.m, ptr %.sroa.717.0..sroa_idx, align 8, !tbaa !404
  %i.o = uitofp i32 %i.c to double
  %i.p = fdiv double %i.o, %i.l
  %i.q = fdiv double 1.000000e+00, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  store double %i.q, ptr %i.r, align 8, !tbaa !850
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !851
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !438
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 136
  store double %i.u, ptr %i.v, align 8, !tbaa !857
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %ma_pulsewave_set_duty_cycle.exit
  %.0 = phi i32 [ 0, %ma_pulsewave_set_duty_cycle.exit ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_pulsewave_set_duty_cycle(ptr nofree noundef writeonly captures(address_is_null) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %1, ptr %i.b, align 8, !tbaa !857
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @ma_pulsewave_uninit(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_pulsewave_read_pcm_frames(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq i64 %2, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
end_hunk_0
