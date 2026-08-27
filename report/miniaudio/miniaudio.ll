Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_waveform_read_pcm_frames:bb.a
vec.epilog.iter.check338:                         ; preds = %middle.block333
  br i1 %min.epilog.iters.check339, label %vec.epilog.scalar.ph337.preheader, label %vec.epilog.ph340, !prof !328

vec.epilog.ph340:                                 ; preds = %vector.main.loop.iter.check324, %vec.epilog.iter.check338
  %vec.epilog.resume.val335 = phi i64 [ %n.vec327, %vec.epilog.iter.check338 ], [ 0, %vector.main.loop.iter.check324 ]
  %broadcast.splatinsert342 = insertelement <4 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat343 = shufflevector <4 x i16> %broadcast.splatinsert342, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body344

vec.epilog.vector.body344:                        ; preds = %vec.epilog.vector.body344, %vec.epilog.ph340
  %index345 = phi i64 [ %vec.epilog.resume.val335, %vec.epilog.ph340 ], [ %index.next346, %vec.epilog.vector.body344 ] ; 2 uses
  %i.ac = getelementptr [2 x i8], ptr %i.y, i64 %index345
  store <4 x i16> %broadcast.splat343, ptr %i.ac, align 2, !tbaa !20
  %index.next346 = add nuw i64 %index345, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next346, %n.vec341
  br i1 %i.ad, label %vec.epilog.middle.block347, label %vec.epilog.vector.body344, !llvm.loop !2150

vec.epilog.middle.block347:                       ; preds = %vec.epilog.vector.body344
  br i1 %cmp.n348, label %._crit_edge.us.i, label %vec.epilog.scalar.ph337.preheader

vec.epilog.scalar.ph337.preheader:                ; preds = %iter.check336, %vec.epilog.iter.check338, %vec.epilog.middle.block347
  %.168.us.i.ph = phi i64 [ 0, %iter.check336 ], [ %n.vec327, %vec.epilog.iter.check338 ], [ %n.vec341, %vec.epilog.middle.block347 ]
  br label %vec.epilog.scalar.ph337

vec.epilog.scalar.ph337:                          ; preds = %vec.epilog.scalar.ph337.preheader, %vec.epilog.scalar.ph337
  %.168.us.i = phi i64 [ %i.af, %vec.epilog.scalar.ph337 ], [ %.168.us.i.ph, %vec.epilog.scalar.ph337.preheader ] ; 2 uses
  %i.ae = getelementptr [2 x i8], ptr %i.y, i64 %.168.us.i
  store i16 %i.w, ptr %i.ae, align 2, !tbaa !20
  %i.af = add nuw nsw i64 %.168.us.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %vec.epilog.scalar.ph337, !llvm.loop !2151

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph337, %vec.epilog.middle.block347, %middle.block333
  %i.ag = fadd double %i.m, %i.q                  ; 2 uses
  %i.ah = add nuw i64 %.15369.us.i, 1             ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.ah, %2
  br i1 %exitcond97.not.i, label %.loopexit67.i, label %iter.check336, !llvm.loop !2152

.preheader64.i:                                   ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !2145
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load double, ptr %i.al, align 8, !tbaa !2143 ; 4 uses
  %i.an = zext i32 %i.h to i64                    ; 4 uses
  %.not79.i = icmp eq i32 %i.h, 0
  %.promoted71.i = load double, ptr %i.ai, align 8, !tbaa !2144 ; 3 uses
  br i1 %.not79.i, label %.preheader64.split.i.preheader, label %.lr.ph.us74.i.preheader

.lr.ph.us74.i.preheader:                          ; preds = %.preheader64.i
  %min.iters.check351 = icmp ult i32 %i.h, 8
  %n.vec353 = and i64 %i.an, 4294967288           ; 3 uses
  %cmp.n360 = icmp eq i64 %n.vec353, %i.an
  br label %.lr.ph.us74.i

.preheader64.split.i.preheader:                   ; preds = %.preheader64.i
  %xtraiter428 = and i64 %2, 1
  %i.ao = icmp eq i64 %2, 1
  br i1 %i.ao, label %.preheader64.split.i.epil.preheader, label %.preheader64.split.i.preheader.new

.preheader64.split.i.preheader.new:               ; preds = %.preheader64.split.i.preheader
  %unroll_iter435 = and i64 %2, -2
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
  br i1 %min.iters.check351, label %scalar.ph350.preheader, label %vector.ph352

vector.ph352:                                     ; preds = %.lr.ph.us74.i
  %broadcast.splatinsert354 = insertelement <4 x float> poison, float %i.at, i64 0
  %broadcast.splat355 = shufflevector <4 x float> %broadcast.splatinsert354, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph352
  %index357 = phi i64 [ 0, %vector.ph352 ], [ %index.next358, %vector.body356 ] ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %index357 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <4 x float> %broadcast.splat355, ptr %i.aw, align 4, !tbaa !336
  store <4 x float> %broadcast.splat355, ptr %i.ax, align 4, !tbaa !336
  %index.next358 = add nuw i64 %index357, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next358, %n.vec353
  br i1 %i.ay, label %middle.block359, label %vector.body356, !llvm.loop !2153

middle.block359:                                  ; preds = %vector.body356
  br i1 %cmp.n360, label %._crit_edge.us75.i, label %scalar.ph350.preheader

scalar.ph350.preheader:                           ; preds = %.lr.ph.us74.i, %middle.block359
  %.070.us.i.ph = phi i64 [ 0, %.lr.ph.us74.i ], [ %n.vec353, %middle.block359 ]
  br label %scalar.ph350

scalar.ph350:                                     ; preds = %scalar.ph350.preheader, %scalar.ph350
  %.070.us.i = phi i64 [ %i.ba, %scalar.ph350 ], [ %.070.us.i.ph, %scalar.ph350.preheader ] ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.av, i64 %.070.us.i
  store float %i.at, ptr %i.az, align 4, !tbaa !336
  %i.ba = add nuw nsw i64 %.070.us.i, 1           ; 2 uses
  %exitcond99.not.i = icmp eq i64 %i.ba, %i.an
  br i1 %exitcond99.not.i, label %._crit_edge.us75.i, label %scalar.ph350, !llvm.loop !2154

._crit_edge.us75.i:                               ; preds = %scalar.ph350, %middle.block359
  %i.bb = fadd double %i.am, %i.ap                ; 2 uses
  %i.bc = add nuw i64 %.05273.us.i, 1             ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.bc, %2
  br i1 %exitcond100.not.i, label %.loopexit65.i, label %.lr.ph.us74.i, !llvm.loop !2155

.preheader.i:                                     ; preds = %bb.f
  %i.bd = zext i32 %i.f to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8  ; 2 uses
  %i.bg = mul i32 %i.bf, %i.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bk = zext i32 %i.bg to i64
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  br label %bb.g

.preheader64.split.i:                             ; preds = %cdce.end.1, %.preheader64.split.i.preheader.new
  %i.bm = phi double [ %.promoted71.i, %.preheader64.split.i.preheader.new ], [ %i.bw, %cdce.end.1 ] ; 2 uses
  %niter436 = phi i64 [ 0, %.preheader64.split.i.preheader.new ], [ %niter436.next.1, %cdce.end.1 ]
  %i.bn = fmul double %i.bm, f0x401921FB54442D18  ; 2 uses
  %i.bo = tail call double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp oeq double %i.bo, +inf
  br i1 %i.bp, label %cdce.call, label %cdce.end, !prof !770

cdce.call:                                        ; preds = %.preheader64.split.i
  %i.bq = tail call double @sin(double noundef %i.bn) #55 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %.preheader64.split.i, %cdce.call
  %i.br = fadd double %i.am, %i.bm                ; 2 uses
  %i.bs = fmul double %i.br, f0x401921FB54442D18  ; 2 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp oeq double %i.bt, +inf
  br i1 %i.bu, label %cdce.call.1, label %cdce.end.1, !prof !770

cdce.call.1:                                      ; preds = %cdce.end
  %i.bv = tail call double @sin(double noundef %i.bs) #55 ; 0 uses
  br label %cdce.end.1

cdce.end.1:                                       ; preds = %cdce.call.1, %cdce.end
  %i.bw = fadd double %i.am, %i.br                ; 3 uses
  %niter436.next.1 = add nuw i64 %niter436, 2     ; 2 uses
  %niter436.ncmp.1 = icmp eq i64 %niter436.next.1, %unroll_iter435
  br i1 %niter436.ncmp.1, label %.loopexit65.i.loopexit.unr-lcssa, label %.preheader64.split.i, !llvm.loop !2155

.preheader66.split.i:                             ; preds = %cdce.end128.1, %.preheader66.split.i.preheader.new
  %i.bx = phi double [ %.promoted.i, %.preheader66.split.i.preheader.new ], [ %i.ch, %cdce.end128.1 ] ; 2 uses
  %niter427 = phi i64 [ 0, %.preheader66.split.i.preheader.new ], [ %niter427.next.1, %cdce.end128.1 ]
  %i.by = fmul double %i.bx, f0x401921FB54442D18  ; 2 uses
  %i.bz = tail call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp oeq double %i.bz, +inf
  br i1 %i.ca, label %cdce.call127, label %cdce.end128, !prof !770

cdce.call127:                                     ; preds = %.preheader66.split.i
  %i.cb = tail call double @sin(double noundef %i.by) #55 ; 0 uses
  br label %cdce.end128

cdce.end128:                                      ; preds = %.preheader66.split.i, %cdce.call127
  %i.cc = fadd double %i.m, %i.bx                 ; 2 uses
  %i.cd = fmul double %i.cc, f0x401921FB54442D18  ; 2 uses
  %i.ce = tail call double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp oeq double %i.ce, +inf
  br i1 %i.cf, label %cdce.call127.1, label %cdce.end128.1, !prof !770

cdce.call127.1:                                   ; preds = %cdce.end128
  %i.cg = tail call double @sin(double noundef %i.cd) #55 ; 0 uses
  br label %cdce.end128.1

cdce.end128.1:                                    ; preds = %cdce.call127.1, %cdce.end128
  %i.ch = fadd double %i.m, %i.cc                 ; 3 uses
  %niter427.next.1 = add nuw i64 %niter427, 2     ; 2 uses
  %niter427.ncmp.1 = icmp eq i64 %niter427.next.1, %unroll_iter426
  br i1 %niter427.ncmp.1, label %.loopexit67.i.loopexit.unr-lcssa, label %.preheader66.split.i, !llvm.loop !2152

bb.g:                                             ; preds = %._crit_edge.i, %.preheader.i
  %i.ci = phi i32 [ %i.h, %.preheader.i ], [ %i.eh, %._crit_edge.i ]
  %.25478.i = phi i64 [ 0, %.preheader.i ], [ %i.ei, %._crit_edge.i ] ; 2 uses
  %i.cj = load double, ptr %i.bh, align 8, !tbaa !2144 ; 2 uses
  %i.ck = load double, ptr %i.bi, align 8, !tbaa !2145
  %i.cl = fmul double %i.cj, f0x401921FB54442D18
  %i.cm = tail call double @sin(double noundef %i.cl) #55
  %i.cn = load double, ptr %i.bj, align 8, !tbaa !2143
  %i.co = fadd double %i.cj, %i.cn
  store double %i.co, ptr %i.bh, align 8, !tbaa !2144
  %.not80.i = icmp eq i32 %i.ci, 0
  br i1 %.not80.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.cp = fmul double %i.ck, %i.cm
  %.fr156 = freeze double %i.cp                   ; 2 uses
  %i.cq = fptrunc double %.fr156 to float         ; 6 uses
  %i.cr = mul i64 %.25478.i, %i.bk
  %i.cs = getelementptr i8, ptr %1, i64 %i.cr     ; 2 uses
  %i.ct = fcmp olt double %.fr156, f0xBFF0000010000000 ; 2 uses
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
  %i.dl = select i1 %i.ct, i32 -8388607, i32 %i.dc ; 3 uses
  %i.dm = trunc i32 %i.dl to i8                   ; 2 uses
  %i.dn = lshr i32 %i.dl, 8
  %i.do = trunc i32 %i.dn to i8                   ; 2 uses
  %i.dp = lshr i32 %i.dl, 16
  %i.dq = trunc i32 %i.dp to i8                   ; 2 uses
  br i1 %i.ct, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %ma_pcm_convert.exit.i.us
  %.277.i.us = phi i64 [ %i.dw, %ma_pcm_convert.exit.i.us ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dr = mul nuw i64 %.277.i.us, %i.bl
  %i.ds = getelementptr i8, ptr %i.cs, i64 %i.dr  ; 7 uses
  %i.dt = load i32, ptr %i.e, align 8, !tbaa !2147
  switch i32 %i.dt, label %ma_pcm_convert.exit.i.us [
    i32 5, label %ma_pcm_convert.exit.loopexit.i.us
    i32 1, label %ma_dither_f32.exit.i.preheader.i.us
    i32 2, label %bb.h
    i32 3, label %.lr.ph.i134.i.preheader.i.us
    i32 4, label %.lr.ph.i138.i.preheader.i.us
  ]

.lr.ph.i138.i.preheader.i.us:                     ; preds = %.lr.ph.i.split.us
  store i32 -2147483647, ptr %i.ds, align 4, !tbaa !8
  br label %ma_pcm_convert.exit.i.us

.lr.ph.i134.i.preheader.i.us:                     ; preds = %.lr.ph.i.split.us
  store i8 %i.dm, ptr %i.ds, align 1, !tbaa !9
  %i.du = getelementptr i8, ptr %i.ds, i64 1
  store i8 %i.do, ptr %i.du, align 1, !tbaa !9
  %i.dv = getelementptr i8, ptr %i.ds, i64 2
  store i8 %i.dq, ptr %i.dv, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i.us

bb.h:                                             ; preds = %.lr.ph.i.split.us
  store i16 -32767, ptr %i.ds, align 2, !tbaa !20
  br label %ma_pcm_convert.exit.i.us

ma_dither_f32.exit.i.preheader.i.us:              ; preds = %.lr.ph.i.split.us
  store i8 0, ptr %i.ds, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i.us

ma_pcm_convert.exit.loopexit.i.us:                ; preds = %.lr.ph.i.split.us
  store float %i.cq, ptr %i.ds, align 1
  br label %ma_pcm_convert.exit.i.us

ma_pcm_convert.exit.i.us:                         ; preds = %bb.h, %ma_pcm_convert.exit.loopexit.i.us, %ma_dither_f32.exit.i.preheader.i.us, %.lr.ph.i134.i.preheader.i.us, %.lr.ph.i138.i.preheader.i.us, %.lr.ph.i.split.us
  %i.dw = add nuw nsw i64 %.277.i.us, 1           ; 2 uses
  %i.dx = load i32, ptr %i.g, align 4, !tbaa !2148 ; 2 uses
  %i.dy = zext i32 %i.dx to i64
  %i.dz = icmp samesign ult i64 %i.dw, %i.dy
  br i1 %i.dz, label %.lr.ph.i.split.us, label %._crit_edge.i, !llvm.loop !2156

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %ma_pcm_convert.exit.i
  %.277.i = phi i64 [ %i.ed, %ma_pcm_convert.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ea = mul nuw i64 %.277.i, %i.bl
  %i.eb = getelementptr i8, ptr %i.cs, i64 %i.ea  ; 7 uses
  %i.ec = load i32, ptr %i.e, align 8, !tbaa !2147
  switch i32 %i.ec, label %ma_pcm_convert.exit.i [
    i32 5, label %ma_pcm_convert.exit.loopexit.i
    i32 1, label %ma_dither_f32.exit.i.preheader.i
    i32 2, label %.lr.ph.i138.i.preheader.i
    i32 3, label %bb.i
    i32 4, label %.lr.ph.i134.i.preheader.i
  ]

.lr.ph.i134.i.preheader.i:                        ; preds = %.lr.ph.i.split
  store i32 %i.cy, ptr %i.eb, align 4, !tbaa !8
  br label %ma_pcm_convert.exit.i

ma_dither_f32.exit.i.preheader.i:                 ; preds = %.lr.ph.i.split
  store i8 %i.dk, ptr %i.eb, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i

.lr.ph.i138.i.preheader.i:                        ; preds = %.lr.ph.i.split
  store i16 %i.dh, ptr %i.eb, align 2, !tbaa !20
  br label %ma_pcm_convert.exit.i

bb.i:                                             ; preds = %.lr.ph.i.split
  store i8 %i.dm, ptr %i.eb, align 1, !tbaa !9
  %4 = getelementptr i8, ptr %i.eb, i64 1
  store i8 %i.do, ptr %4, align 1, !tbaa !9
  %5 = getelementptr i8, ptr %i.eb, i64 2
  store i8 %i.dq, ptr %5, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i

ma_pcm_convert.exit.loopexit.i:                   ; preds = %.lr.ph.i.split
  store float %i.cq, ptr %i.eb, align 1
  br label %ma_pcm_convert.exit.i

ma_pcm_convert.exit.i:                            ; preds = %.lr.ph.i138.i.preheader.i, %ma_pcm_convert.exit.loopexit.i, %bb.i, %ma_dither_f32.exit.i.preheader.i, %.lr.ph.i134.i.preheader.i, %.lr.ph.i.split
  %i.ed = add nuw nsw i64 %.277.i, 1              ; 2 uses
  %i.ee = load i32, ptr %i.g, align 4, !tbaa !2148 ; 2 uses
  %i.ef = zext i32 %i.ee to i64
  %i.eg = icmp samesign ult i64 %i.ed, %i.ef
  br i1 %i.eg, label %.lr.ph.i.split, label %._crit_edge.i, !llvm.loop !2156

._crit_edge.i:                                    ; preds = %ma_pcm_convert.exit.i, %ma_pcm_convert.exit.i.us, %bb.g
  %i.eh = phi i32 [ 0, %bb.g ], [ %i.dx, %ma_pcm_convert.exit.i.us ], [ %i.ee, %ma_pcm_convert.exit.i ]
  %i.ei = add nuw i64 %.25478.i, 1                ; 2 uses
  %exitcond102.not.i = icmp eq i64 %i.ei, %2
  br i1 %exitcond102.not.i, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.g, !llvm.loop !2157

.loopexit65.i.loopexit.unr-lcssa:                 ; preds = %cdce.end.1
  %lcmp.mod432.not = icmp eq i64 %xtraiter428, 0
  br i1 %lcmp.mod432.not, label %.loopexit65.i, label %.preheader64.split.i.epil.preheader

.preheader64.split.i.epil.preheader:              ; preds = %.loopexit65.i.loopexit.unr-lcssa, %.preheader64.split.i.preheader
  %.epil.init431 = phi double [ %.promoted71.i, %.preheader64.split.i.preheader ], [ %i.bw, %.loopexit65.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod434 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod434)
  %i.ej = fmul double %.epil.init431, f0x401921FB54442D18 ; 2 uses
  %i.ek = tail call double @llvm.fabs.f64(double %i.ej)
  %i.el = fcmp oeq double %i.ek, +inf
  br i1 %i.el, label %cdce.call.epil, label %cdce.end.epil, !prof !770

cdce.call.epil:                                   ; preds = %.preheader64.split.i.epil.preheader
  %i.em = tail call double @sin(double noundef %i.ej) #55 ; 0 uses
  br label %cdce.end.epil

cdce.end.epil:                                    ; preds = %cdce.call.epil, %.preheader64.split.i.epil.preheader
  %i.en = fadd double %i.am, %.epil.init431
  br label %.loopexit65.i

.loopexit65.i:                                    ; preds = %._crit_edge.us75.i, %cdce.end.epil, %.loopexit65.i.loopexit.unr-lcssa
  %.us-phi76.i = phi double [ %i.en, %cdce.end.epil ], [ %i.bw, %.loopexit65.i.loopexit.unr-lcssa ], [ %i.bb, %._crit_edge.us75.i ]
  store double %.us-phi76.i, ptr %i.ai, align 8, !tbaa !2144
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i.loopexit.unr-lcssa:                 ; preds = %cdce.end128.1
  %lcmp.mod423.not = icmp eq i64 %xtraiter419, 0
  br i1 %lcmp.mod423.not, label %.loopexit67.i, label %.preheader66.split.i.epil.preheader

.preheader66.split.i.epil.preheader:              ; preds = %.loopexit67.i.loopexit.unr-lcssa, %.preheader66.split.i.preheader
  %.epil.init422 = phi double [ %.promoted.i, %.preheader66.split.i.preheader ], [ %i.ch, %.loopexit67.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod425 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod425)
  %i.eo = fmul double %.epil.init422, f0x401921FB54442D18 ; 2 uses
  %i.ep = tail call double @llvm.fabs.f64(double %i.eo)
  %i.eq = fcmp oeq double %i.ep, +inf
  br i1 %i.eq, label %cdce.call127.epil, label %cdce.end128.epil, !prof !770

cdce.call127.epil:                                ; preds = %.preheader66.split.i.epil.preheader
  %i.er = tail call double @sin(double noundef %i.eo) #55 ; 0 uses
  br label %cdce.end128.epil

cdce.end128.epil:                                 ; preds = %cdce.call127.epil, %.preheader66.split.i.epil.preheader
  %i.es = fadd double %i.m, %.epil.init422
  br label %.loopexit67.i

.loopexit67.i:                                    ; preds = %._crit_edge.us.i, %cdce.end128.epil, %.loopexit67.i.loopexit.unr-lcssa
  %.us-phi.i = phi double [ %i.es, %cdce.end128.epil ], [ %i.ch, %.loopexit67.i.loopexit.unr-lcssa ], [ %i.ag, %._crit_edge.us.i ]
  store double %.us-phi.i, ptr %i.i, align 8, !tbaa !2144
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.j:                                             ; preds = %bb.e
  tail call fastcc void @ma_waveform_read_pcm_frames__square(ptr noundef %0, double noundef 5.000000e-01, ptr noundef %1, i64 noundef %2)
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.k:                                             ; preds = %bb.e
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !2147 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !2148 ; 9 uses
  switch i32 %i.eu, label %.preheader.i57 [
    i32 5, label %.preheader64.i43
    i32 2, label %.preheader66.i29
  ]

.preheader66.i29:                                 ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !2145
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !2143 ; 10 uses
  %i.fc = zext i32 %i.ew to i64                   ; 7 uses
  %.not.i30 = icmp eq i32 %i.ew, 0
  %.promoted.i31 = load double, ptr %i.ex, align 8, !tbaa !2144 ; 3 uses
  br i1 %.not.i30, label %.preheader66.split.i40.preheader, label %iter.check296.preheader

iter.check296.preheader:                          ; preds = %.preheader66.i29
  %min.iters.check283 = icmp ult i32 %i.ew, 4
  %min.iters.check285 = icmp ult i32 %i.ew, 16
  %i.fd = and i64 %i.fc, 12
  %n.vec287 = and i64 %i.fc, 4294967280           ; 4 uses
  %cmp.n294 = icmp eq i64 %n.vec287, %i.fc
  %min.epilog.iters.check299 = icmp eq i64 %i.fd, 0
  %n.vec301 = and i64 %i.fc, 4294967292           ; 3 uses
  %cmp.n308 = icmp eq i64 %n.vec301, %i.fc
  br label %iter.check296

.preheader66.split.i40.preheader:                 ; preds = %.preheader66.i29
  %i.fe = add i64 %2, -1
  %xtraiter401 = and i64 %2, 7                    ; 3 uses
  %i.ff = icmp ult i64 %i.fe, 7
  br i1 %i.ff, label %.preheader66.split.i40.epil.preheader, label %.preheader66.split.i40.preheader.new

.preheader66.split.i40.preheader.new:             ; preds = %.preheader66.split.i40.preheader
  %unroll_iter408 = and i64 %2, -8
  br label %.preheader66.split.i40

iter.check296:                                    ; preds = %iter.check296.preheader, %._crit_edge.us.i36
  %.15369.us.i33 = phi i64 [ %i.ge, %._crit_edge.us.i36 ], [ 0, %iter.check296.preheader ] ; 2 uses
  %i.fg = phi double [ %i.gd, %._crit_edge.us.i36 ], [ %.promoted.i31, %iter.check296.preheader ] ; 3 uses
  %i.fh = fptosi double %i.fg to i64
  %i.fi = sitofp i64 %i.fh to double
  %i.fj = fsub double %i.fg, %i.fi
  %i.fk = fadd double %i.fj, -5.000000e-01
  %i.fl = fmul double %i.fk, 2.000000e+00         ; 3 uses
  %i.fm = fcmp ogt double %i.fl, 0.000000e+00
  %i.fn = fneg double %i.fl
  %i.fo = select i1 %i.fm, double %i.fl, double %i.fn
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fo, double 2.000000e+00, double -1.000000e+00)
  %i.fq = fmul double %i.ez, %i.fp
  %i.fr = fptrunc double %i.fq to float
  %i.fs = fmul float %i.fr, 3.276700e+04
  %i.ft = fptosi float %i.fs to i16               ; 3 uses
  %i.fu = mul i64 %.15369.us.i33, %i.fc
  %i.fv = getelementptr [2 x i8], ptr %1, i64 %i.fu ; 3 uses
  br i1 %min.iters.check283, label %vec.epilog.scalar.ph297.preheader, label %vector.main.loop.iter.check284

vector.main.loop.iter.check284:                   ; preds = %iter.check296
  br i1 %min.iters.check285, label %vec.epilog.ph300, label %vector.ph286

vector.ph286:                                     ; preds = %vector.main.loop.iter.check284
  %broadcast.splatinsert288 = insertelement <8 x i16> poison, i16 %i.ft, i64 0
  %broadcast.splat289 = shufflevector <8 x i16> %broadcast.splatinsert288, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph286
  %index291 = phi i64 [ 0, %vector.ph286 ], [ %index.next292, %vector.body290 ] ; 2 uses
  %i.fw = getelementptr [2 x i8], ptr %i.fv, i64 %index291 ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 16
  store <8 x i16> %broadcast.splat289, ptr %i.fw, align 2, !tbaa !20
  store <8 x i16> %broadcast.splat289, ptr %i.fx, align 2, !tbaa !20
  %index.next292 = add nuw i64 %index291, 16      ; 2 uses
  %i.fy = icmp eq i64 %index.next292, %n.vec287
  br i1 %i.fy, label %middle.block293, label %vector.body290, !llvm.loop !2158

middle.block293:                                  ; preds = %vector.body290
  br i1 %cmp.n294, label %._crit_edge.us.i36, label %vec.epilog.iter.check298

vec.epilog.iter.check298:                         ; preds = %middle.block293
  br i1 %min.epilog.iters.check299, label %vec.epilog.scalar.ph297.preheader, label %vec.epilog.ph300, !prof !328

vec.epilog.ph300:                                 ; preds = %vector.main.loop.iter.check284, %vec.epilog.iter.check298
  %vec.epilog.resume.val295 = phi i64 [ %n.vec287, %vec.epilog.iter.check298 ], [ 0, %vector.main.loop.iter.check284 ]
  %broadcast.splatinsert302 = insertelement <4 x i16> poison, i16 %i.ft, i64 0
  %broadcast.splat303 = shufflevector <4 x i16> %broadcast.splatinsert302, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body304

vec.epilog.vector.body304:                        ; preds = %vec.epilog.vector.body304, %vec.epilog.ph300
  %index305 = phi i64 [ %vec.epilog.resume.val295, %vec.epilog.ph300 ], [ %index.next306, %vec.epilog.vector.body304 ] ; 2 uses
  %i.fz = getelementptr [2 x i8], ptr %i.fv, i64 %index305
  store <4 x i16> %broadcast.splat303, ptr %i.fz, align 2, !tbaa !20
  %index.next306 = add nuw i64 %index305, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next306, %n.vec301
  br i1 %i.ga, label %vec.epilog.middle.block307, label %vec.epilog.vector.body304, !llvm.loop !2159

vec.epilog.middle.block307:                       ; preds = %vec.epilog.vector.body304
  br i1 %cmp.n308, label %._crit_edge.us.i36, label %vec.epilog.scalar.ph297.preheader

vec.epilog.scalar.ph297.preheader:                ; preds = %iter.check296, %vec.epilog.iter.check298, %vec.epilog.middle.block307
  %.168.us.i34.ph = phi i64 [ 0, %iter.check296 ], [ %n.vec287, %vec.epilog.iter.check298 ], [ %n.vec301, %vec.epilog.middle.block307 ]
  br label %vec.epilog.scalar.ph297

vec.epilog.scalar.ph297:                          ; preds = %vec.epilog.scalar.ph297.preheader, %vec.epilog.scalar.ph297
  %.168.us.i34 = phi i64 [ %i.gc, %vec.epilog.scalar.ph297 ], [ %.168.us.i34.ph, %vec.epilog.scalar.ph297.preheader ] ; 2 uses
  %i.gb = getelementptr [2 x i8], ptr %i.fv, i64 %.168.us.i34
  store i16 %i.ft, ptr %i.gb, align 2, !tbaa !20
  %i.gc = add nuw nsw i64 %.168.us.i34, 1         ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %i.gc, %i.fc
  br i1 %exitcond.not.i35, label %._crit_edge.us.i36, label %vec.epilog.scalar.ph297, !llvm.loop !2160

._crit_edge.us.i36:                               ; preds = %vec.epilog.scalar.ph297, %vec.epilog.middle.block307, %middle.block293
  %i.gd = fadd double %i.fb, %i.fg                ; 2 uses
  %i.ge = add nuw i64 %.15369.us.i33, 1           ; 2 uses
  %exitcond97.not.i37 = icmp eq i64 %i.ge, %2
  br i1 %exitcond97.not.i37, label %.loopexit67.i38, label %iter.check296, !llvm.loop !2161

.preheader64.i43:                                 ; preds = %bb.k
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !2145
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !2143 ; 10 uses
  %i.gk = zext i32 %i.ew to i64                   ; 4 uses
  %.not79.i44 = icmp eq i32 %i.ew, 0
  %.promoted71.i45 = load double, ptr %i.gf, align 8, !tbaa !2144 ; 3 uses
  br i1 %.not79.i44, label %.preheader64.split.i54.preheader, label %.lr.ph.us74.i46.preheader

.lr.ph.us74.i46.preheader:                        ; preds = %.preheader64.i43
  %min.iters.check311 = icmp ult i32 %i.ew, 8
  %n.vec313 = and i64 %i.gk, 4294967288           ; 3 uses
  %cmp.n320 = icmp eq i64 %n.vec313, %i.gk
  br label %.lr.ph.us74.i46

.preheader64.split.i54.preheader:                 ; preds = %.preheader64.i43
  %i.gl = add i64 %2, -1
  %xtraiter410 = and i64 %2, 7                    ; 3 uses
  %i.gm = icmp ult i64 %i.gl, 7
  br i1 %i.gm, label %.preheader64.split.i54.epil.preheader, label %.preheader64.split.i54.preheader.new

.preheader64.split.i54.preheader.new:             ; preds = %.preheader64.split.i54.preheader
  %unroll_iter417 = and i64 %2, -8
  br label %.preheader64.split.i54

.lr.ph.us74.i46:                                  ; preds = %.lr.ph.us74.i46.preheader, %._crit_edge.us75.i50
  %.05273.us.i47 = phi i64 [ %i.hh, %._crit_edge.us75.i50 ], [ 0, %.lr.ph.us74.i46.preheader ] ; 2 uses
  %i.gn = phi double [ %i.hg, %._crit_edge.us75.i50 ], [ %.promoted71.i45, %.lr.ph.us74.i46.preheader ] ; 3 uses
  %i.go = fptosi double %i.gn to i64
  %i.gp = sitofp i64 %i.go to double
  %i.gq = fsub double %i.gn, %i.gp
  %i.gr = fadd double %i.gq, -5.000000e-01
  %i.gs = fmul double %i.gr, 2.000000e+00         ; 3 uses
  %i.gt = fcmp ogt double %i.gs, 0.000000e+00
  %i.gu = fneg double %i.gs
  %i.gv = select i1 %i.gt, double %i.gs, double %i.gu
  %i.gw = tail call double @llvm.fmuladd.f64(double %i.gv, double 2.000000e+00, double -1.000000e+00)
  %i.gx = fmul double %i.gh, %i.gw
  %i.gy = fptrunc double %i.gx to float           ; 2 uses
  %i.gz = mul i64 %.05273.us.i47, %i.gk
  %i.ha = getelementptr [4 x i8], ptr %1, i64 %i.gz ; 2 uses
  br i1 %min.iters.check311, label %scalar.ph310.preheader, label %vector.ph312

vector.ph312:                                     ; preds = %.lr.ph.us74.i46
  %broadcast.splatinsert314 = insertelement <4 x float> poison, float %i.gy, i64 0
  %broadcast.splat315 = shufflevector <4 x float> %broadcast.splatinsert314, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph312
  %index317 = phi i64 [ 0, %vector.ph312 ], [ %index.next318, %vector.body316 ] ; 2 uses
  %i.hb = getelementptr [4 x i8], ptr %i.ha, i64 %index317 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 16
  store <4 x float> %broadcast.splat315, ptr %i.hb, align 4, !tbaa !336
  store <4 x float> %broadcast.splat315, ptr %i.hc, align 4, !tbaa !336
  %index.next318 = add nuw i64 %index317, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next318, %n.vec313
  br i1 %i.hd, label %middle.block319, label %vector.body316, !llvm.loop !2162

middle.block319:                                  ; preds = %vector.body316
  br i1 %cmp.n320, label %._crit_edge.us75.i50, label %scalar.ph310.preheader

scalar.ph310.preheader:                           ; preds = %.lr.ph.us74.i46, %middle.block319
  %.070.us.i48.ph = phi i64 [ 0, %.lr.ph.us74.i46 ], [ %n.vec313, %middle.block319 ]
  br label %scalar.ph310

scalar.ph310:                                     ; preds = %scalar.ph310.preheader, %scalar.ph310
  %.070.us.i48 = phi i64 [ %i.hf, %scalar.ph310 ], [ %.070.us.i48.ph, %scalar.ph310.preheader ] ; 2 uses
  %i.he = getelementptr [4 x i8], ptr %i.ha, i64 %.070.us.i48
  store float %i.gy, ptr %i.he, align 4, !tbaa !336
  %i.hf = add nuw nsw i64 %.070.us.i48, 1         ; 2 uses
  %exitcond99.not.i49 = icmp eq i64 %i.hf, %i.gk
  br i1 %exitcond99.not.i49, label %._crit_edge.us75.i50, label %scalar.ph310, !llvm.loop !2163

._crit_edge.us75.i50:                             ; preds = %scalar.ph310, %middle.block319
  %i.hg = fadd double %i.gj, %i.gn                ; 2 uses
  %i.hh = add nuw i64 %.05273.us.i47, 1           ; 2 uses
  %exitcond100.not.i51 = icmp eq i64 %i.hh, %2
  br i1 %exitcond100.not.i51, label %.loopexit65.i52, label %.lr.ph.us74.i46, !llvm.loop !2164

.preheader.i57:                                   ; preds = %bb.k
  %i.hi = zext i32 %i.eu to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !8  ; 2 uses
  %i.hl = mul i32 %i.hk, %i.ew
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hp = zext i32 %i.hl to i64
  %i.hq = zext i32 %i.hk to i64                   ; 2 uses
  br label %bb.l

.preheader64.split.i54:                           ; preds = %.preheader64.split.i54, %.preheader64.split.i54.preheader.new
  %i.hr = phi double [ %.promoted71.i45, %.preheader64.split.i54.preheader.new ], [ %i.hz, %.preheader64.split.i54 ]
  %niter418 = phi i64 [ 0, %.preheader64.split.i54.preheader.new ], [ %niter418.next.7, %.preheader64.split.i54 ]
  %i.hs = fadd double %i.gj, %i.hr
  %i.ht = fadd double %i.gj, %i.hs
  %i.hu = fadd double %i.gj, %i.ht
  %i.hv = fadd double %i.gj, %i.hu
  %i.hw = fadd double %i.gj, %i.hv
  %i.hx = fadd double %i.gj, %i.hw
  %i.hy = fadd double %i.gj, %i.hx
  %i.hz = fadd double %i.gj, %i.hy                ; 3 uses
  %niter418.next.7 = add nuw i64 %niter418, 8     ; 2 uses
  %niter418.ncmp.7 = icmp eq i64 %niter418.next.7, %unroll_iter417
  br i1 %niter418.ncmp.7, label %.loopexit65.i52.loopexit.unr-lcssa, label %.preheader64.split.i54, !llvm.loop !2164

.preheader66.split.i40:                           ; preds = %.preheader66.split.i40, %.preheader66.split.i40.preheader.new
  %i.ia = phi double [ %.promoted.i31, %.preheader66.split.i40.preheader.new ], [ %i.ii, %.preheader66.split.i40 ]
  %niter409 = phi i64 [ 0, %.preheader66.split.i40.preheader.new ], [ %niter409.next.7, %.preheader66.split.i40 ]
  %i.ib = fadd double %i.fb, %i.ia
  %i.ic = fadd double %i.fb, %i.ib
  %i.id = fadd double %i.fb, %i.ic
  %i.ie = fadd double %i.fb, %i.id
  %i.if = fadd double %i.fb, %i.ie
  %i.ig = fadd double %i.fb, %i.if
  %i.ih = fadd double %i.fb, %i.ig
  %i.ii = fadd double %i.fb, %i.ih                ; 3 uses
  %niter409.next.7 = add nuw i64 %niter409, 8     ; 2 uses
  %niter409.ncmp.7 = icmp eq i64 %niter409.next.7, %unroll_iter408
  br i1 %niter409.ncmp.7, label %.loopexit67.i38.loopexit.unr-lcssa, label %.preheader66.split.i40, !llvm.loop !2161

bb.l:                                             ; preds = %._crit_edge.i65, %.preheader.i57
  %i.ij = phi i32 [ %i.ew, %.preheader.i57 ], [ %i.kp, %._crit_edge.i65 ]
  %.25478.i58 = phi i64 [ 0, %.preheader.i57 ], [ %i.kq, %._crit_edge.i65 ] ; 2 uses
  %i.ik = load double, ptr %i.hm, align 8, !tbaa !2144 ; 3 uses
  %i.il = load double, ptr %i.hn, align 8, !tbaa !2145
  %i.im = load double, ptr %i.ho, align 8, !tbaa !2143
  %i.in = fadd double %i.ik, %i.im
  store double %i.in, ptr %i.hm, align 8, !tbaa !2144
  %.not80.i59 = icmp eq i32 %i.ij, 0
  br i1 %.not80.i59, label %._crit_edge.i65, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.l
  %i.io = fptosi double %i.ik to i64
  %i.ip = sitofp i64 %i.io to double
  %i.iq = fsub double %i.ik, %i.ip
  %i.ir = fadd double %i.iq, -5.000000e-01
  %i.is = fmul double %i.ir, 2.000000e+00         ; 3 uses
  %i.it = fcmp ogt double %i.is, 0.000000e+00
  %i.iu = fneg double %i.is
  %i.iv = select i1 %i.it, double %i.is, double %i.iu
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.iv, double 2.000000e+00, double -1.000000e+00)
  %i.ix = fmul double %i.il, %i.iw
  %.fr = freeze double %i.ix                      ; 2 uses
  %i.iy = fptrunc double %.fr to float            ; 6 uses
  %i.iz = mul i64 %.25478.i58, %i.hp
  %i.ja = getelementptr i8, ptr %1, i64 %i.iz     ; 2 uses
  %i.jb = fcmp olt double %.fr, f0xBFF0000010000000 ; 2 uses
  %i.jc = fpext float %i.iy to double             ; 2 uses
  %i.jd = fcmp ogt double %i.jc, 1.000000e+00
  %i.je = select i1 %i.jd, double 1.000000e+00, double %i.jc
  %i.jf = fmul double %i.je, f0x41DFFFFFFFC00000
  %i.jg = fptosi double %i.jf to i32
  %i.jh = fcmp ogt float %i.iy, 1.000000e+00
  %i.ji = select i1 %i.jh, float 1.000000e+00, float %i.iy
  %i.jj = fmul float %i.ji, f0x4AFFFFFE
  %i.jk = fptosi float %i.jj to i32
  %i.jl = fadd float %i.iy, 0.000000e+00          ; 2 uses
  %i.jm = fcmp ogt float %i.jl, 1.000000e+00
  %i.jn = select i1 %i.jm, float 1.000000e+00, float %i.jl ; 2 uses
  %i.jo = fmul float %i.jn, 3.276700e+04
  %i.jp = fptosi float %i.jo to i16
  %i.jq = fadd float %i.jn, 1.000000e+00
  %i.jr = fmul float %i.jq, 1.275000e+02
  %i.js = fptoui float %i.jr to i8
  %i.jt = select i1 %i.jb, i32 -8388607, i32 %i.jk ; 3 uses
  %i.ju = trunc i32 %i.jt to i8                   ; 2 uses
  %i.jv = lshr i32 %i.jt, 8
  %i.jw = trunc i32 %i.jv to i8                   ; 2 uses
  %i.jx = lshr i32 %i.jt, 16
  %i.jy = trunc i32 %i.jx to i8                   ; 2 uses
  br i1 %i.jb, label %.lr.ph.i60.split.us, label %.lr.ph.i60.split

.lr.ph.i60.split.us:                              ; preds = %.lr.ph.i60, %ma_pcm_convert.exit.i64.us
  %.277.i61.us = phi i64 [ %i.ke, %ma_pcm_convert.exit.i64.us ], [ 0, %.lr.ph.i60 ] ; 2 uses
  %i.jz = mul nuw i64 %.277.i61.us, %i.hq
  %i.ka = getelementptr i8, ptr %i.ja, i64 %i.jz  ; 7 uses
  %i.kb = load i32, ptr %i.et, align 8, !tbaa !2147
  switch i32 %i.kb, label %ma_pcm_convert.exit.i64.us [
    i32 5, label %ma_pcm_convert.exit.loopexit.i77.us
    i32 1, label %ma_dither_f32.exit.i.preheader.i76.us
    i32 2, label %bb.m
    i32 3, label %.lr.ph.i134.i.preheader.i68.us
    i32 4, label %.lr.ph.i138.i.preheader.i62.us
  ]

.lr.ph.i138.i.preheader.i62.us:                   ; preds = %.lr.ph.i60.split.us
  store i32 -2147483647, ptr %i.ka, align 4, !tbaa !8
  br label %ma_pcm_convert.exit.i64.us

.lr.ph.i134.i.preheader.i68.us:                   ; preds = %.lr.ph.i60.split.us
  store i8 %i.ju, ptr %i.ka, align 1, !tbaa !9
  %i.kc = getelementptr i8, ptr %i.ka, i64 1
  store i8 %i.jw, ptr %i.kc, align 1, !tbaa !9
  %i.kd = getelementptr i8, ptr %i.ka, i64 2
  store i8 %i.jy, ptr %i.kd, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i64.us

bb.m:                                             ; preds = %.lr.ph.i60.split.us
  store i16 -32767, ptr %i.ka, align 2, !tbaa !20
  br label %ma_pcm_convert.exit.i64.us

ma_dither_f32.exit.i.preheader.i76.us:            ; preds = %.lr.ph.i60.split.us
  store i8 0, ptr %i.ka, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i64.us

ma_pcm_convert.exit.loopexit.i77.us:              ; preds = %.lr.ph.i60.split.us
  store float %i.iy, ptr %i.ka, align 1
  br label %ma_pcm_convert.exit.i64.us

ma_pcm_convert.exit.i64.us:                       ; preds = %bb.m, %ma_pcm_convert.exit.loopexit.i77.us, %ma_dither_f32.exit.i.preheader.i76.us, %.lr.ph.i134.i.preheader.i68.us, %.lr.ph.i138.i.preheader.i62.us, %.lr.ph.i60.split.us
  %i.ke = add nuw nsw i64 %.277.i61.us, 1         ; 2 uses
  %i.kf = load i32, ptr %i.ev, align 4, !tbaa !2148 ; 2 uses
  %i.kg = zext i32 %i.kf to i64
  %i.kh = icmp samesign ult i64 %i.ke, %i.kg
  br i1 %i.kh, label %.lr.ph.i60.split.us, label %._crit_edge.i65, !llvm.loop !2165

.lr.ph.i60.split:                                 ; preds = %.lr.ph.i60, %ma_pcm_convert.exit.i64
  %.277.i61 = phi i64 [ %i.kl, %ma_pcm_convert.exit.i64 ], [ 0, %.lr.ph.i60 ] ; 2 uses
  %i.ki = mul nuw i64 %.277.i61, %i.hq
  %i.kj = getelementptr i8, ptr %i.ja, i64 %i.ki  ; 7 uses
  %i.kk = load i32, ptr %i.et, align 8, !tbaa !2147
  switch i32 %i.kk, label %ma_pcm_convert.exit.i64 [
    i32 5, label %ma_pcm_convert.exit.loopexit.i77
    i32 1, label %ma_dither_f32.exit.i.preheader.i76
    i32 2, label %.lr.ph.i138.i.preheader.i62
    i32 3, label %bb.n
    i32 4, label %.lr.ph.i134.i.preheader.i68
  ]

.lr.ph.i134.i.preheader.i68:                      ; preds = %.lr.ph.i60.split
  store i32 %i.jg, ptr %i.kj, align 4, !tbaa !8
  br label %ma_pcm_convert.exit.i64

ma_dither_f32.exit.i.preheader.i76:               ; preds = %.lr.ph.i60.split
  store i8 %i.js, ptr %i.kj, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i64

.lr.ph.i138.i.preheader.i62:                      ; preds = %.lr.ph.i60.split
  store i16 %i.jp, ptr %i.kj, align 2, !tbaa !20
  br label %ma_pcm_convert.exit.i64

bb.n:                                             ; preds = %.lr.ph.i60.split
  store i8 %i.ju, ptr %i.kj, align 1, !tbaa !9
  %6 = getelementptr i8, ptr %i.kj, i64 1
  store i8 %i.jw, ptr %6, align 1, !tbaa !9
  %7 = getelementptr i8, ptr %i.kj, i64 2
  store i8 %i.jy, ptr %7, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i64

ma_pcm_convert.exit.loopexit.i77:                 ; preds = %.lr.ph.i60.split
  store float %i.iy, ptr %i.kj, align 1
  br label %ma_pcm_convert.exit.i64

ma_pcm_convert.exit.i64:                          ; preds = %.lr.ph.i138.i.preheader.i62, %ma_pcm_convert.exit.loopexit.i77, %bb.n, %ma_dither_f32.exit.i.preheader.i76, %.lr.ph.i134.i.preheader.i68, %.lr.ph.i60.split
  %i.kl = add nuw nsw i64 %.277.i61, 1            ; 2 uses
  %i.km = load i32, ptr %i.ev, align 4, !tbaa !2148 ; 2 uses
  %i.kn = zext i32 %i.km to i64
  %i.ko = icmp samesign ult i64 %i.kl, %i.kn
  br i1 %i.ko, label %.lr.ph.i60.split, label %._crit_edge.i65, !llvm.loop !2165

._crit_edge.i65:                                  ; preds = %ma_pcm_convert.exit.i64, %ma_pcm_convert.exit.i64.us, %bb.l
  %i.kp = phi i32 [ 0, %bb.l ], [ %i.kf, %ma_pcm_convert.exit.i64.us ], [ %i.km, %ma_pcm_convert.exit.i64 ]
  %i.kq = add nuw i64 %.25478.i58, 1              ; 2 uses
  %exitcond102.not.i66 = icmp eq i64 %i.kq, %2
  br i1 %exitcond102.not.i66, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.l, !llvm.loop !2166

.loopexit65.i52.loopexit.unr-lcssa:               ; preds = %.preheader64.split.i54
  %lcmp.mod414.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod414.not, label %.loopexit65.i52, label %.preheader64.split.i54.epil.preheader

.preheader64.split.i54.epil.preheader:            ; preds = %.loopexit65.i52.loopexit.unr-lcssa, %.preheader64.split.i54.preheader
  %.epil.init413 = phi double [ %.promoted71.i45, %.preheader64.split.i54.preheader ], [ %i.hz, %.loopexit65.i52.loopexit.unr-lcssa ]
  %lcmp.mod416 = icmp ne i64 %xtraiter410, 0
  tail call void @llvm.assume(i1 %lcmp.mod416)
  br label %.preheader64.split.i54.epil

.preheader64.split.i54.epil:                      ; preds = %.preheader64.split.i54.epil, %.preheader64.split.i54.epil.preheader
  %i.kr = phi double [ %i.ks, %.preheader64.split.i54.epil ], [ %.epil.init413, %.preheader64.split.i54.epil.preheader ]
  %epil.iter411 = phi i64 [ %epil.iter411.next, %.preheader64.split.i54.epil ], [ 0, %.preheader64.split.i54.epil.preheader ]
  %i.ks = fadd double %i.gj, %i.kr                ; 2 uses
  %epil.iter411.next = add i64 %epil.iter411, 1   ; 2 uses
  %epil.iter411.cmp.not = icmp eq i64 %epil.iter411.next, %xtraiter410
  br i1 %epil.iter411.cmp.not, label %.loopexit65.i52, label %.preheader64.split.i54.epil, !llvm.loop !2167

.loopexit65.i52:                                  ; preds = %._crit_edge.us75.i50, %.loopexit65.i52.loopexit.unr-lcssa, %.preheader64.split.i54.epil
  %.us-phi76.i53 = phi double [ %i.ks, %.preheader64.split.i54.epil ], [ %i.hz, %.loopexit65.i52.loopexit.unr-lcssa ], [ %i.hg, %._crit_edge.us75.i50 ]
  store double %.us-phi76.i53, ptr %i.gf, align 8, !tbaa !2144
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i38.loopexit.unr-lcssa:               ; preds = %.preheader66.split.i40
  %lcmp.mod405.not = icmp eq i64 %xtraiter401, 0
  br i1 %lcmp.mod405.not, label %.loopexit67.i38, label %.preheader66.split.i40.epil.preheader

.preheader66.split.i40.epil.preheader:            ; preds = %.loopexit67.i38.loopexit.unr-lcssa, %.preheader66.split.i40.preheader
  %.epil.init404 = phi double [ %.promoted.i31, %.preheader66.split.i40.preheader ], [ %i.ii, %.loopexit67.i38.loopexit.unr-lcssa ]
  %lcmp.mod407 = icmp ne i64 %xtraiter401, 0
  tail call void @llvm.assume(i1 %lcmp.mod407)
  br label %.preheader66.split.i40.epil

.preheader66.split.i40.epil:                      ; preds = %.preheader66.split.i40.epil, %.preheader66.split.i40.epil.preheader
  %i.kt = phi double [ %i.ku, %.preheader66.split.i40.epil ], [ %.epil.init404, %.preheader66.split.i40.epil.preheader ]
  %epil.iter402 = phi i64 [ %epil.iter402.next, %.preheader66.split.i40.epil ], [ 0, %.preheader66.split.i40.epil.preheader ]
  %i.ku = fadd double %i.fb, %i.kt                ; 2 uses
  %epil.iter402.next = add i64 %epil.iter402, 1   ; 2 uses
  %epil.iter402.cmp.not = icmp eq i64 %epil.iter402.next, %xtraiter401
  br i1 %epil.iter402.cmp.not, label %.loopexit67.i38, label %.preheader66.split.i40.epil, !llvm.loop !2168

.loopexit67.i38:                                  ; preds = %._crit_edge.us.i36, %.loopexit67.i38.loopexit.unr-lcssa, %.preheader66.split.i40.epil
  %.us-phi.i39 = phi double [ %i.ku, %.preheader66.split.i40.epil ], [ %i.ii, %.loopexit67.i38.loopexit.unr-lcssa ], [ %i.gd, %._crit_edge.us.i36 ]
  store double %.us-phi.i39, ptr %i.ex, align 8, !tbaa !2144
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.o:                                             ; preds = %bb.e
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !2147 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !2148 ; 9 uses
  switch i32 %i.kw, label %.preheader.i106 [
    i32 5, label %.preheader64.i92
    i32 2, label %.preheader66.i78
  ]

.preheader66.i78:                                 ; preds = %bb.o
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.lb = load double, ptr %i.la, align 8, !tbaa !2145
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !2143 ; 10 uses
  %i.le = zext i32 %i.ky to i64                   ; 7 uses
  %.not.i79 = icmp eq i32 %i.ky, 0
  %.promoted.i80 = load double, ptr %i.kz, align 8, !tbaa !2144 ; 3 uses
  br i1 %.not.i79, label %.preheader66.split.i89.preheader, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.preheader66.i78
  %min.iters.check = icmp ult i32 %i.ky, 4
  %min.iters.check264 = icmp ult i32 %i.ky, 16
  %i.lf = and i64 %i.le, 12
  %n.vec = and i64 %i.le, 4294967280              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.le
  %min.epilog.iters.check = icmp eq i64 %i.lf, 0
  %n.vec265 = and i64 %i.le, 4294967292           ; 3 uses
  %cmp.n270 = icmp eq i64 %n.vec265, %i.le
  br label %iter.check

.preheader66.split.i89.preheader:                 ; preds = %.preheader66.i78
  %i.lg = add i64 %2, -1
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.lh = icmp ult i64 %i.lg, 7
  br i1 %i.lh, label %.preheader66.split.i89.epil.preheader, label %.preheader66.split.i89.preheader.new

.preheader66.split.i89.preheader.new:             ; preds = %.preheader66.split.i89.preheader
  %unroll_iter = and i64 %2, -8
  br label %.preheader66.split.i89

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge.us.i85
  %.15369.us.i82 = phi i64 [ %i.mc, %._crit_edge.us.i85 ], [ 0, %iter.check.preheader ] ; 2 uses
  %i.li = phi double [ %i.mb, %._crit_edge.us.i85 ], [ %.promoted.i80, %iter.check.preheader ] ; 3 uses
  %i.lj = fptosi double %i.li to i64
  %i.lk = sitofp i64 %i.lj to double
  %i.ll = fsub double %i.li, %i.lk
  %i.lm = fadd double %i.ll, -5.000000e-01
  %i.ln = fmul double %i.lm, 2.000000e+00
  %i.lo = fmul double %i.lb, %i.ln
  %i.lp = fptrunc double %i.lo to float
  %i.lq = fmul float %i.lp, 3.276700e+04
  %i.lr = fptosi float %i.lq to i16               ; 3 uses
  %i.ls = mul i64 %.15369.us.i82, %i.le
  %i.lt = getelementptr [2 x i8], ptr %1, i64 %i.ls ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check264, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.lr, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lu = getelementptr [2 x i8], ptr %i.lt, i64 %index ; 2 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.lu, align 2, !tbaa !20
  store <8 x i16> %broadcast.splat, ptr %i.lv, align 2, !tbaa !20
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lw = icmp eq i64 %index.next, %n.vec
  br i1 %i.lw, label %middle.block, label %vector.body, !llvm.loop !2169

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i85, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !328

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert266 = insertelement <4 x i16> poison, i16 %i.lr, i64 0
  %broadcast.splat267 = shufflevector <4 x i16> %broadcast.splatinsert266, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index268 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next269, %vec.epilog.vector.body ] ; 2 uses
  %i.lx = getelementptr [2 x i8], ptr %i.lt, i64 %index268
  store <4 x i16> %broadcast.splat267, ptr %i.lx, align 2, !tbaa !20
  %index.next269 = add nuw i64 %index268, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next269, %n.vec265
  br i1 %i.ly, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2170

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n270, label %._crit_edge.us.i85, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.168.us.i83.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec265, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.168.us.i83 = phi i64 [ %i.ma, %vec.epilog.scalar.ph ], [ %.168.us.i83.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.lz = getelementptr [2 x i8], ptr %i.lt, i64 %.168.us.i83
  store i16 %i.lr, ptr %i.lz, align 2, !tbaa !20
  %i.ma = add nuw nsw i64 %.168.us.i83, 1         ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %i.ma, %i.le
  br i1 %exitcond.not.i84, label %._crit_edge.us.i85, label %vec.epilog.scalar.ph, !llvm.loop !2171

._crit_edge.us.i85:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.mb = fadd double %i.ld, %i.li                ; 2 uses
  %i.mc = add nuw i64 %.15369.us.i82, 1           ; 2 uses
  %exitcond97.not.i86 = icmp eq i64 %i.mc, %2
  br i1 %exitcond97.not.i86, label %.loopexit67.i87, label %iter.check, !llvm.loop !2172

.preheader64.i92:                                 ; preds = %bb.o
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.mf = load double, ptr %i.me, align 8, !tbaa !2145
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !2143 ; 10 uses
  %i.mi = zext i32 %i.ky to i64                   ; 4 uses
  %.not79.i93 = icmp eq i32 %i.ky, 0
  %.promoted71.i94 = load double, ptr %i.md, align 8, !tbaa !2144 ; 3 uses
  br i1 %.not79.i93, label %.preheader64.split.i103.preheader, label %.lr.ph.us74.i95.preheader

.lr.ph.us74.i95.preheader:                        ; preds = %.preheader64.i92
  %min.iters.check271 = icmp ult i32 %i.ky, 8
  %n.vec273 = and i64 %i.mi, 4294967288           ; 3 uses
  %cmp.n280 = icmp eq i64 %n.vec273, %i.mi
  br label %.lr.ph.us74.i95

.preheader64.split.i103.preheader:                ; preds = %.preheader64.i92
  %i.mj = add i64 %2, -1
  %xtraiter392 = and i64 %2, 7                    ; 3 uses
  %i.mk = icmp ult i64 %i.mj, 7
  br i1 %i.mk, label %.preheader64.split.i103.epil.preheader, label %.preheader64.split.i103.preheader.new

.preheader64.split.i103.preheader.new:            ; preds = %.preheader64.split.i103.preheader
  %unroll_iter399 = and i64 %2, -8
  br label %.preheader64.split.i103

.lr.ph.us74.i95:                                  ; preds = %.lr.ph.us74.i95.preheader, %._crit_edge.us75.i99
  %.05273.us.i96 = phi i64 [ %i.nb, %._crit_edge.us75.i99 ], [ 0, %.lr.ph.us74.i95.preheader ] ; 2 uses
  %i.ml = phi double [ %i.na, %._crit_edge.us75.i99 ], [ %.promoted71.i94, %.lr.ph.us74.i95.preheader ] ; 3 uses
  %i.mm = fptosi double %i.ml to i64
  %i.mn = sitofp i64 %i.mm to double
  %i.mo = fsub double %i.ml, %i.mn
  %i.mp = fadd double %i.mo, -5.000000e-01
  %i.mq = fmul double %i.mp, 2.000000e+00
  %i.mr = fmul double %i.mf, %i.mq
  %i.ms = fptrunc double %i.mr to float           ; 2 uses
  %i.mt = mul i64 %.05273.us.i96, %i.mi
  %i.mu = getelementptr [4 x i8], ptr %1, i64 %i.mt ; 2 uses
  br i1 %min.iters.check271, label %scalar.ph.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %.lr.ph.us74.i95
  %broadcast.splatinsert274 = insertelement <4 x float> poison, float %i.ms, i64 0
  %broadcast.splat275 = shufflevector <4 x float> %broadcast.splatinsert274, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph272
  %index277 = phi i64 [ 0, %vector.ph272 ], [ %index.next278, %vector.body276 ] ; 2 uses
  %i.mv = getelementptr [4 x i8], ptr %i.mu, i64 %index277 ; 2 uses
  %i.mw = getelementptr i8, ptr %i.mv, i64 16
  store <4 x float> %broadcast.splat275, ptr %i.mv, align 4, !tbaa !336
  store <4 x float> %broadcast.splat275, ptr %i.mw, align 4, !tbaa !336
  %index.next278 = add nuw i64 %index277, 8       ; 2 uses
  %i.mx = icmp eq i64 %index.next278, %n.vec273
  br i1 %i.mx, label %middle.block279, label %vector.body276, !llvm.loop !2173

middle.block279:                                  ; preds = %vector.body276
  br i1 %cmp.n280, label %._crit_edge.us75.i99, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us74.i95, %middle.block279
  %.070.us.i97.ph = phi i64 [ 0, %.lr.ph.us74.i95 ], [ %n.vec273, %middle.block279 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.070.us.i97 = phi i64 [ %i.mz, %scalar.ph ], [ %.070.us.i97.ph, %scalar.ph.preheader ] ; 2 uses
  %i.my = getelementptr [4 x i8], ptr %i.mu, i64 %.070.us.i97
  store float %i.ms, ptr %i.my, align 4, !tbaa !336
  %i.mz = add nuw nsw i64 %.070.us.i97, 1         ; 2 uses
  %exitcond99.not.i98 = icmp eq i64 %i.mz, %i.mi
  br i1 %exitcond99.not.i98, label %._crit_edge.us75.i99, label %scalar.ph, !llvm.loop !2174

._crit_edge.us75.i99:                             ; preds = %scalar.ph, %middle.block279
  %i.na = fadd double %i.mh, %i.ml                ; 2 uses
  %i.nb = add nuw i64 %.05273.us.i96, 1           ; 2 uses
  %exitcond100.not.i100 = icmp eq i64 %i.nb, %2
  br i1 %exitcond100.not.i100, label %.loopexit65.i101, label %.lr.ph.us74.i95, !llvm.loop !2175

.preheader.i106:                                  ; preds = %bb.o
  %i.nc = zext i32 %i.kw to i64
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !8  ; 2 uses
  %i.nf = mul i32 %i.ne, %i.ky
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.nj = zext i32 %i.nf to i64
  %i.nk = zext i32 %i.ne to i64                   ; 2 uses
  br label %bb.p

.preheader64.split.i103:                          ; preds = %.preheader64.split.i103, %.preheader64.split.i103.preheader.new
  %i.nl = phi double [ %.promoted71.i94, %.preheader64.split.i103.preheader.new ], [ %i.nt, %.preheader64.split.i103 ]
  %niter400 = phi i64 [ 0, %.preheader64.split.i103.preheader.new ], [ %niter400.next.7, %.preheader64.split.i103 ]
  %i.nm = fadd double %i.mh, %i.nl
  %i.nn = fadd double %i.mh, %i.nm
  %i.no = fadd double %i.mh, %i.nn
  %i.np = fadd double %i.mh, %i.no
  %i.nq = fadd double %i.mh, %i.np
  %i.nr = fadd double %i.mh, %i.nq
  %i.ns = fadd double %i.mh, %i.nr
  %i.nt = fadd double %i.mh, %i.ns                ; 3 uses
  %niter400.next.7 = add nuw i64 %niter400, 8     ; 2 uses
  %niter400.ncmp.7 = icmp eq i64 %niter400.next.7, %unroll_iter399
  br i1 %niter400.ncmp.7, label %.loopexit65.i101.loopexit.unr-lcssa, label %.preheader64.split.i103, !llvm.loop !2175

.preheader66.split.i89:                           ; preds = %.preheader66.split.i89, %.preheader66.split.i89.preheader.new
  %i.nu = phi double [ %.promoted.i80, %.preheader66.split.i89.preheader.new ], [ %i.oc, %.preheader66.split.i89 ]
  %niter = phi i64 [ 0, %.preheader66.split.i89.preheader.new ], [ %niter.next.7, %.preheader66.split.i89 ]
  %i.nv = fadd double %i.ld, %i.nu
  %i.nw = fadd double %i.ld, %i.nv
  %i.nx = fadd double %i.ld, %i.nw
  %i.ny = fadd double %i.ld, %i.nx
  %i.nz = fadd double %i.ld, %i.ny
  %i.oa = fadd double %i.ld, %i.nz
  %i.ob = fadd double %i.ld, %i.oa
  %i.oc = fadd double %i.ld, %i.ob                ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit67.i87.loopexit.unr-lcssa, label %.preheader66.split.i89, !llvm.loop !2172

bb.p:                                             ; preds = %._crit_edge.i114, %.preheader.i106
  %i.od = phi i32 [ %i.ky, %.preheader.i106 ], [ %i.qf, %._crit_edge.i114 ]
  %.25478.i107 = phi i64 [ 0, %.preheader.i106 ], [ %i.qg, %._crit_edge.i114 ] ; 2 uses
  %i.oe = load double, ptr %i.ng, align 8, !tbaa !2144 ; 3 uses
  %i.of = load double, ptr %i.nh, align 8, !tbaa !2145
  %i.og = load double, ptr %i.ni, align 8, !tbaa !2143
  %i.oh = fadd double %i.oe, %i.og
  store double %i.oh, ptr %i.ng, align 8, !tbaa !2144
  %.not80.i108 = icmp eq i32 %i.od, 0
  br i1 %.not80.i108, label %._crit_edge.i114, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %bb.p
  %i.oi = fptosi double %i.oe to i64
  %i.oj = sitofp i64 %i.oi to double
  %i.ok = fsub double %i.oe, %i.oj
  %i.ol = fadd double %i.ok, -5.000000e-01
  %i.om = fmul double %i.ol, 2.000000e+00
  %i.on = fmul double %i.of, %i.om
  %.fr155 = freeze double %i.on                   ; 2 uses
  %i.oo = fptrunc double %.fr155 to float         ; 6 uses
  %i.op = mul i64 %.25478.i107, %i.nj
  %i.oq = getelementptr i8, ptr %1, i64 %i.op     ; 2 uses
  %i.or = fcmp olt double %.fr155, f0xBFF0000010000000 ; 2 uses
  %i.os = fpext float %i.oo to double             ; 2 uses
  %i.ot = fcmp ogt double %i.os, 1.000000e+00
  %i.ou = select i1 %i.ot, double 1.000000e+00, double %i.os
  %i.ov = fmul double %i.ou, f0x41DFFFFFFFC00000
  %i.ow = fptosi double %i.ov to i32
  %i.ox = fcmp ogt float %i.oo, 1.000000e+00
  %i.oy = select i1 %i.ox, float 1.000000e+00, float %i.oo
  %i.oz = fmul float %i.oy, f0x4AFFFFFE
  %i.pa = fptosi float %i.oz to i32
  %i.pb = fadd float %i.oo, 0.000000e+00          ; 2 uses
  %i.pc = fcmp ogt float %i.pb, 1.000000e+00
  %i.pd = select i1 %i.pc, float 1.000000e+00, float %i.pb ; 2 uses
  %i.pe = fmul float %i.pd, 3.276700e+04
  %i.pf = fptosi float %i.pe to i16
  %i.pg = fadd float %i.pd, 1.000000e+00
  %i.ph = fmul float %i.pg, 1.275000e+02
  %i.pi = fptoui float %i.ph to i8
  %i.pj = select i1 %i.or, i32 -8388607, i32 %i.pa ; 3 uses
  %i.pk = trunc i32 %i.pj to i8                   ; 2 uses
  %i.pl = lshr i32 %i.pj, 8
  %i.pm = trunc i32 %i.pl to i8                   ; 2 uses
  %i.pn = lshr i32 %i.pj, 16
  %i.po = trunc i32 %i.pn to i8                   ; 2 uses
  br i1 %i.or, label %.lr.ph.i109.split.us, label %.lr.ph.i109.split

.lr.ph.i109.split.us:                             ; preds = %.lr.ph.i109, %ma_pcm_convert.exit.i113.us
  %.277.i110.us = phi i64 [ %i.pu, %ma_pcm_convert.exit.i113.us ], [ 0, %.lr.ph.i109 ] ; 2 uses
  %i.pp = mul nuw i64 %.277.i110.us, %i.nk
  %i.pq = getelementptr i8, ptr %i.oq, i64 %i.pp  ; 7 uses
  %i.pr = load i32, ptr %i.kv, align 8, !tbaa !2147
  switch i32 %i.pr, label %ma_pcm_convert.exit.i113.us [
    i32 5, label %ma_pcm_convert.exit.loopexit.i126.us
    i32 1, label %ma_dither_f32.exit.i.preheader.i125.us
    i32 2, label %bb.q
    i32 3, label %.lr.ph.i134.i.preheader.i117.us
    i32 4, label %.lr.ph.i138.i.preheader.i111.us
  ]

.lr.ph.i138.i.preheader.i111.us:                  ; preds = %.lr.ph.i109.split.us
  store i32 -2147483647, ptr %i.pq, align 4, !tbaa !8
  br label %ma_pcm_convert.exit.i113.us

.lr.ph.i134.i.preheader.i117.us:                  ; preds = %.lr.ph.i109.split.us
  store i8 %i.pk, ptr %i.pq, align 1, !tbaa !9
  %i.ps = getelementptr i8, ptr %i.pq, i64 1
  store i8 %i.pm, ptr %i.ps, align 1, !tbaa !9
  %i.pt = getelementptr i8, ptr %i.pq, i64 2
  store i8 %i.po, ptr %i.pt, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i113.us

bb.q:                                             ; preds = %.lr.ph.i109.split.us
  store i16 -32767, ptr %i.pq, align 2, !tbaa !20
  br label %ma_pcm_convert.exit.i113.us

ma_dither_f32.exit.i.preheader.i125.us:           ; preds = %.lr.ph.i109.split.us
  store i8 0, ptr %i.pq, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i113.us

ma_pcm_convert.exit.loopexit.i126.us:             ; preds = %.lr.ph.i109.split.us
  store float %i.oo, ptr %i.pq, align 1
  br label %ma_pcm_convert.exit.i113.us

ma_pcm_convert.exit.i113.us:                      ; preds = %bb.q, %ma_pcm_convert.exit.loopexit.i126.us, %ma_dither_f32.exit.i.preheader.i125.us, %.lr.ph.i134.i.preheader.i117.us, %.lr.ph.i138.i.preheader.i111.us, %.lr.ph.i109.split.us
  %i.pu = add nuw nsw i64 %.277.i110.us, 1        ; 2 uses
  %i.pv = load i32, ptr %i.kx, align 4, !tbaa !2148 ; 2 uses
  %i.pw = zext i32 %i.pv to i64
  %i.px = icmp samesign ult i64 %i.pu, %i.pw
  br i1 %i.px, label %.lr.ph.i109.split.us, label %._crit_edge.i114, !llvm.loop !2176

.lr.ph.i109.split:                                ; preds = %.lr.ph.i109, %ma_pcm_convert.exit.i113
  %.277.i110 = phi i64 [ %i.qb, %ma_pcm_convert.exit.i113 ], [ 0, %.lr.ph.i109 ] ; 2 uses
  %i.py = mul nuw i64 %.277.i110, %i.nk
  %i.pz = getelementptr i8, ptr %i.oq, i64 %i.py  ; 7 uses
  %i.qa = load i32, ptr %i.kv, align 8, !tbaa !2147
  switch i32 %i.qa, label %ma_pcm_convert.exit.i113 [
    i32 5, label %ma_pcm_convert.exit.loopexit.i126
    i32 1, label %ma_dither_f32.exit.i.preheader.i125
    i32 2, label %.lr.ph.i138.i.preheader.i111
    i32 3, label %bb.r
    i32 4, label %.lr.ph.i134.i.preheader.i117
  ]

.lr.ph.i134.i.preheader.i117:                     ; preds = %.lr.ph.i109.split
  store i32 %i.ow, ptr %i.pz, align 4, !tbaa !8
  br label %ma_pcm_convert.exit.i113

ma_dither_f32.exit.i.preheader.i125:              ; preds = %.lr.ph.i109.split
  store i8 %i.pi, ptr %i.pz, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i113

.lr.ph.i138.i.preheader.i111:                     ; preds = %.lr.ph.i109.split
  store i16 %i.pf, ptr %i.pz, align 2, !tbaa !20
  br label %ma_pcm_convert.exit.i113

bb.r:                                             ; preds = %.lr.ph.i109.split
  store i8 %i.pk, ptr %i.pz, align 1, !tbaa !9
  %8 = getelementptr i8, ptr %i.pz, i64 1
  store i8 %i.pm, ptr %8, align 1, !tbaa !9
  %9 = getelementptr i8, ptr %i.pz, i64 2
  store i8 %i.po, ptr %9, align 1, !tbaa !9
  br label %ma_pcm_convert.exit.i113

ma_pcm_convert.exit.loopexit.i126:                ; preds = %.lr.ph.i109.split
  store float %i.oo, ptr %i.pz, align 1
  br label %ma_pcm_convert.exit.i113

ma_pcm_convert.exit.i113:                         ; preds = %.lr.ph.i138.i.preheader.i111, %ma_pcm_convert.exit.loopexit.i126, %bb.r, %ma_dither_f32.exit.i.preheader.i125, %.lr.ph.i134.i.preheader.i117, %.lr.ph.i109.split
  %i.qb = add nuw nsw i64 %.277.i110, 1           ; 2 uses
  %i.qc = load i32, ptr %i.kx, align 4, !tbaa !2148 ; 2 uses
  %i.qd = zext i32 %i.qc to i64
  %i.qe = icmp samesign ult i64 %i.qb, %i.qd
  br i1 %i.qe, label %.lr.ph.i109.split, label %._crit_edge.i114, !llvm.loop !2176

._crit_edge.i114:                                 ; preds = %ma_pcm_convert.exit.i113, %ma_pcm_convert.exit.i113.us, %bb.p
  %i.qf = phi i32 [ 0, %bb.p ], [ %i.pv, %ma_pcm_convert.exit.i113.us ], [ %i.qc, %ma_pcm_convert.exit.i113 ]
  %i.qg = add nuw i64 %.25478.i107, 1             ; 2 uses
  %exitcond102.not.i115 = icmp eq i64 %i.qg, %2
  br i1 %exitcond102.not.i115, label %ma_waveform_read_pcm_frames__sine.exit, label %bb.p, !llvm.loop !2177

.loopexit65.i101.loopexit.unr-lcssa:              ; preds = %.preheader64.split.i103
  %lcmp.mod396.not = icmp eq i64 %xtraiter392, 0
  br i1 %lcmp.mod396.not, label %.loopexit65.i101, label %.preheader64.split.i103.epil.preheader

.preheader64.split.i103.epil.preheader:           ; preds = %.loopexit65.i101.loopexit.unr-lcssa, %.preheader64.split.i103.preheader
  %.epil.init395 = phi double [ %.promoted71.i94, %.preheader64.split.i103.preheader ], [ %i.nt, %.loopexit65.i101.loopexit.unr-lcssa ]
  %lcmp.mod398 = icmp ne i64 %xtraiter392, 0
  tail call void @llvm.assume(i1 %lcmp.mod398)
  br label %.preheader64.split.i103.epil

.preheader64.split.i103.epil:                     ; preds = %.preheader64.split.i103.epil, %.preheader64.split.i103.epil.preheader
  %i.qh = phi double [ %i.qi, %.preheader64.split.i103.epil ], [ %.epil.init395, %.preheader64.split.i103.epil.preheader ]
  %epil.iter393 = phi i64 [ %epil.iter393.next, %.preheader64.split.i103.epil ], [ 0, %.preheader64.split.i103.epil.preheader ]
  %i.qi = fadd double %i.mh, %i.qh                ; 2 uses
  %epil.iter393.next = add i64 %epil.iter393, 1   ; 2 uses
  %epil.iter393.cmp.not = icmp eq i64 %epil.iter393.next, %xtraiter392
  br i1 %epil.iter393.cmp.not, label %.loopexit65.i101, label %.preheader64.split.i103.epil, !llvm.loop !2178

.loopexit65.i101:                                 ; preds = %._crit_edge.us75.i99, %.loopexit65.i101.loopexit.unr-lcssa, %.preheader64.split.i103.epil
  %.us-phi76.i102 = phi double [ %i.qi, %.preheader64.split.i103.epil ], [ %i.nt, %.loopexit65.i101.loopexit.unr-lcssa ], [ %i.na, %._crit_edge.us75.i99 ]
  store double %.us-phi76.i102, ptr %i.md, align 8, !tbaa !2144
  br label %ma_waveform_read_pcm_frames__sine.exit

.loopexit67.i87.loopexit.unr-lcssa:               ; preds = %.preheader66.split.i89
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit67.i87, label %.preheader66.split.i89.epil.preheader

.preheader66.split.i89.epil.preheader:            ; preds = %.loopexit67.i87.loopexit.unr-lcssa, %.preheader66.split.i89.preheader
  %.epil.init = phi double [ %.promoted.i80, %.preheader66.split.i89.preheader ], [ %i.oc, %.loopexit67.i87.loopexit.unr-lcssa ]
  %lcmp.mod391 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod391)
  br label %.preheader66.split.i89.epil

.preheader66.split.i89.epil:                      ; preds = %.preheader66.split.i89.epil, %.preheader66.split.i89.epil.preheader
  %i.qj = phi double [ %i.qk, %.preheader66.split.i89.epil ], [ %.epil.init, %.preheader66.split.i89.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader66.split.i89.epil ], [ 0, %.preheader66.split.i89.epil.preheader ]
  %i.qk = fadd double %i.ld, %i.qj                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit67.i87, label %.preheader66.split.i89.epil, !llvm.loop !2179

.loopexit67.i87:                                  ; preds = %._crit_edge.us.i85, %.loopexit67.i87.loopexit.unr-lcssa, %.preheader66.split.i89.epil
  %.us-phi.i88 = phi double [ %i.qk, %.preheader66.split.i89.epil ], [ %i.oc, %.loopexit67.i87.loopexit.unr-lcssa ], [ %i.mb, %._crit_edge.us.i85 ]
  store double %.us-phi.i88, ptr %i.kz, align 8, !tbaa !2144
  br label %ma_waveform_read_pcm_frames__sine.exit

bb.s:                                             ; preds = %bb.d
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !2143
  %i.qn = sitofp i64 %2 to double
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !2144
  %i.qq = tail call double @llvm.fmuladd.f64(double %i.qm, double %i.qn, double %i.qp)
  store double %i.qq, ptr %i.qo, align 8, !tbaa !2144
  br label %ma_waveform_read_pcm_frames__sine.exit

ma_waveform_read_pcm_frames__sine.exit:           ; preds = %._crit_edge.i114, %._crit_edge.i65, %._crit_edge.i, %.loopexit67.i87, %.loopexit65.i101, %.loopexit67.i38, %.loopexit65.i52, %.loopexit67.i, %.loopexit65.i, %bb.j, %bb.s
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %ma_waveform_read_pcm_frames__sine.exit
  store i64 %2, ptr %3, align 8, !tbaa !69
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !2147 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2148 ; 9 uses
  switch i32 %i.c, label %.preheader [
    i32 5, label %.preheader68
    i32 2, label %.preheader70
  ]

.preheader70:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load double, ptr %i.g, align 8, !tbaa !2145 ; 2 uses
  %i.i = fneg double %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load double, ptr %i.j, align 8, !tbaa !2143 ; 10 uses
  %i.l = zext i32 %i.e to i64                     ; 7 uses
  %.not = icmp eq i32 %i.e, 0
  %.promoted = load double, ptr %i.f, align 8, !tbaa !2144 ; 3 uses
  br i1 %.not, label %.preheader70.split.preheader, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.preheader70
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check122 = icmp ult i32 %i.e, 16
  %i.m = and i64 %i.l, 12
  %n.vec = and i64 %i.l, 4294967280               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.l
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  %n.vec123.a = and i64 %i.l, 4294967292          ; 3 uses
  %cmp.n128 = icmp eq i64 %n.vec123.a, %i.l
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
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.y, align 2, !tbaa !20
  store <8 x i16> %broadcast.splat, ptr %i.z, align 2, !tbaa !20
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2180

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !328

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert124.a = insertelement <4 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat125.a = shufflevector <4 x i16> %broadcast.splatinsert124.a, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = getelementptr [2 x i8], ptr %i.x, i64 %index126
  store <4 x i16> %broadcast.splat125.a, ptr %i.ab, align 2, !tbaa !20
  %index.next127 = add nuw i64 %index126, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next127, %n.vec123.a
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2181

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n128, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.172.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec123.a, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.172.us = phi i64 [ %i.ae, %vec.epilog.scalar.ph ], [ %.172.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ad = getelementptr [2 x i8], ptr %i.x, i64 %.172.us
  store i16 %i.v, ptr %i.ad, align 2, !tbaa !20
  %i.ae = add nuw nsw i64 %.172.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.l
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !2182

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.af = fadd double %i.o, %i.k                  ; 2 uses
  %i.ag = add nuw i64 %.15673.us, 1               ; 2 uses
  %exitcond101.not = icmp eq i64 %i.ag, %3
  br i1 %exitcond101.not, label %.loopexit71, label %iter.check, !llvm.loop !2183

.preheader68:                                     ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !2145 ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load double, ptr %i.al, align 8, !tbaa !2143 ; 10 uses
  %i.an = zext i32 %i.e to i64                    ; 4 uses
  %.not83 = icmp eq i32 %i.e, 0
  %.promoted75 = load double, ptr %i.ah, align 8, !tbaa !2144 ; 3 uses
  br i1 %.not83, label %.preheader68.split.preheader, label %.lr.ph.us78.preheader

.lr.ph.us78.preheader:                            ; preds = %.preheader68
  %min.iters.check129 = icmp ult i32 %i.e, 8
  %n.vec131 = and i64 %i.an, 4294967288           ; 3 uses
  %cmp.n138 = icmp eq i64 %n.vec131, %i.an
  br label %.lr.ph.us78

.preheader68.split.preheader:                     ; preds = %.preheader68
  %xtraiter148 = and i64 %3, 7                    ; 3 uses
  %i.ao = icmp ult i64 %3, 8
  br i1 %i.ao, label %.preheader68.split.epil.preheader, label %.preheader68.split.preheader.new

.preheader68.split.preheader.new:                 ; preds = %.preheader68.split.preheader
  %unroll_iter155 = and i64 %3, -8
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
  br i1 %min.iters.check129, label %scalar.ph.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %.lr.ph.us78
  %broadcast.splatinsert132 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat133 = shufflevector <4 x float> %broadcast.splatinsert132, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph130
  %index135 = phi i64 [ 0, %vector.ph130 ], [ %index.next136, %vector.body134 ] ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %index135 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <4 x float> %broadcast.splat133, ptr %i.ax, align 4, !tbaa !336
  store <4 x float> %broadcast.splat133, ptr %i.ay, align 4, !tbaa !336
  %index.next136 = add nuw i64 %index135, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.az, label %middle.block137, label %vector.body134, !llvm.loop !2184

middle.block137:                                  ; preds = %vector.body134
  br i1 %cmp.n138, label %._crit_edge.us79, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us78, %middle.block137
  %.074.us.ph = phi i64 [ 0, %.lr.ph.us78 ], [ %n.vec131, %middle.block137 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.074.us = phi i64 [ %i.bb, %scalar.ph ], [ %.074.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.aw, i64 %.074.us
  store float %i.au, ptr %i.ba, align 4, !tbaa !336
  %i.bb = add nuw nsw i64 %.074.us, 1             ; 2 uses
  %exitcond103.not = icmp eq i64 %i.bb, %i.an
  br i1 %exitcond103.not, label %._crit_edge.us79, label %scalar.ph, !llvm.loop !2185

._crit_edge.us79:                                 ; preds = %scalar.ph, %middle.block137
  %i.bc = fadd double %i.ap, %i.am                ; 2 uses
  %i.bd = add nuw i64 %.05577.us, 1               ; 2 uses
  %exitcond104.not = icmp eq i64 %i.bd, %3
  br i1 %exitcond104.not, label %.loopexit69, label %.lr.ph.us78, !llvm.loop !2186

.preheader:                                       ; preds = %bb.a
  %i.be = zext i32 %i.c to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8  ; 2 uses
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
  %niter156 = phi i64 [ 0, %.preheader68.split.preheader.new ], [ %niter156.next.7, %.preheader68.split ]
  %i.bp = fadd double %i.bo, %i.am
  %i.bq = fadd double %i.bp, %i.am
  %i.br = fadd double %i.bq, %i.am
  %i.bs = fadd double %i.br, %i.am
  %i.bt = fadd double %i.bs, %i.am
  %i.bu = fadd double %i.bt, %i.am
  %i.bv = fadd double %i.bu, %i.am
  %i.bw = fadd double %i.bv, %i.am                ; 3 uses
  %niter156.next.7 = add nuw i64 %niter156, 8     ; 2 uses
  %niter156.ncmp.7 = icmp eq i64 %niter156.next.7, %unroll_iter155
  br i1 %niter156.ncmp.7, label %.loopexit69.loopexit.unr-lcssa, label %.preheader68.split, !llvm.loop !2186

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
  br i1 %niter.ncmp.7, label %.loopexit71.loopexit.unr-lcssa, label %.preheader70.split, !llvm.loop !2183

bb.b:                                             ; preds = %.preheader, %._crit_edge
  %i.cg = phi i32 [ %i.e, %.preheader ], [ %i.ec, %._crit_edge ]
  %.25782 = phi i64 [ 0, %.preheader ], [ %i.ed, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ch = load double, ptr %i.bi, align 8, !tbaa !2144 ; 3 uses
  %i.ci = load double, ptr %i.bj, align 8, !tbaa !2145 ; 2 uses
  %i.cj = fptosi double %i.ch to i64
  %i.ck = sitofp i64 %i.cj to double
  %i.cl = fsub double %i.ch, %i.ck
  %i.cm = fcmp olt double %i.cl, %1
  %i.cn = fneg double %i.ci
  %.0.i61 = select i1 %i.cm, double %i.ci, double %i.cn ; 2 uses
  %i.co = fptrunc double %.0.i61 to float         ; 5 uses
  store float %i.co, ptr %i.a, align 4, !tbaa !336
  %i.cp = load double, ptr %i.bk, align 8, !tbaa !2143
  %i.cq = fadd double %i.ch, %i.cp
  store double %i.cq, ptr %i.bi, align 8, !tbaa !2144
  %.not84 = icmp eq i32 %i.cg, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

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
  %i.dl = select i1 %i.ct, i32 -8388607, i32 %i.dc ; 3 uses
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = lshr i32 %i.dl, 8
  %i.do = trunc i32 %i.dn to i8
  %i.dp = lshr i32 %i.dl, 16
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %ma_pcm_convert.exit
  %.281 = phi i64 [ 0, %.lr.ph ], [ %i.dy, %ma_pcm_convert.exit ] ; 2 uses
  %i.ds = mul nuw i64 %.281, %i.bm
  %i.dt = getelementptr i8, ptr %i.cs, i64 %i.ds  ; 13 uses
  %i.du = load i32, ptr %i.b, align 8, !tbaa !2147
  switch i32 %i.du, label %ma_pcm_convert.exit [
    i32 5, label %ma_pcm_convert.exit.loopexit
    i32 1, label %.lr.ph.i138.i.preheader.a
    i32 2, label %bb.d
    i32 3, label %.lr.ph71.i.us.preheader
    i32 4, label %.lr.ph.i138.i.preheader
  ]

.lr.ph.i138.i.preheader:                          ; preds = %bb.c
  br i1 %i.ct, label %ma_dither_f32.exit.i.preheader.a, label %.lr.ph.i134.i.preheader

.lr.ph.i134.i.preheader:                          ; preds = %.lr.ph.i138.i.preheader
  store i32 %i.cy, ptr %i.dt, align 4, !tbaa !8
  br label %ma_pcm_convert.exit

ma_dither_f32.exit.i.preheader.a:                 ; preds = %.lr.ph.i138.i.preheader
  store i32 -2147483647, ptr %i.dt, align 4, !tbaa !8
  br label %ma_pcm_convert.exit

.lr.ph.i138.i.preheader.a:                        ; preds = %bb.c
  br i1 %i.ct, label %.lr.ph.i138.i.preheader94, label %.lr.ph.i138.i.us.preheader

.lr.ph.i138.i.preheader94:                        ; preds = %.lr.ph.i138.i.preheader.a
  store i8 0, ptr %i.dt, align 1, !tbaa !9
  br label %ma_pcm_convert.exit

.lr.ph.i138.i.us.preheader:                       ; preds = %.lr.ph.i138.i.preheader.a
  store i8 %i.dk, ptr %i.dt, align 1, !tbaa !9
  br label %ma_pcm_convert.exit

bb.d:                                             ; preds = %bb.c
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = or i64 %i.dv, %i.bn
  %i.dx = and i64 %i.dw, 15
  %or.cond.i.i = icmp eq i64 %i.dx, 0
  br i1 %or.cond.i.i, label %.lr.ph71.i.preheader, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %bb.d
  br i1 %i.ct, label %.lr.ph63.i.preheader90, label %.lr.ph71.i.preheader.a

.lr.ph63.i.preheader90:                           ; preds = %.lr.ph63.i.preheader
  store i16 -32767, ptr %i.dt, align 2, !tbaa !20
  br label %ma_pcm_convert.exit

.lr.ph71.i.preheader:                             ; preds = %bb.d
  br i1 %i.ct, label %.lr.ph63.i.us.preheader, label %.lr.ph71.i.preheader87

.lr.ph63.i.us.preheader:                          ; preds = %.lr.ph71.i.preheader
  store i16 -32767, ptr %i.dt, align 2, !tbaa !20
  br label %ma_pcm_convert.exit

.lr.ph71.i.preheader.a:                           ; preds = %.lr.ph63.i.preheader
  store i16 %i.dh, ptr %i.dt, align 2, !tbaa !20
  br label %ma_pcm_convert.exit

.lr.ph71.i.preheader87:                           ; preds = %.lr.ph71.i.preheader
  store i16 %i.dh, ptr %i.dt, align 2, !tbaa !20
  br label %ma_pcm_convert.exit

.lr.ph71.i.us.preheader:                          ; preds = %bb.c
  store i8 %i.dm, ptr %i.dt, align 1, !tbaa !9
  %4 = getelementptr i8, ptr %i.dt, i64 1
  store i8 %i.do, ptr %4, align 1, !tbaa !9
  %5 = getelementptr i8, ptr %i.dt, i64 2
  store i8 %i.dq, ptr %5, align 1, !tbaa !9
  br label %ma_pcm_convert.exit

ma_pcm_convert.exit.loopexit:                     ; preds = %bb.c
  store i32 %i.dr, ptr %i.dt, align 1
  br label %ma_pcm_convert.exit

ma_pcm_convert.exit:                              ; preds = %.lr.ph.i134.i.preheader, %ma_dither_f32.exit.i.preheader.a, %ma_pcm_convert.exit.loopexit, %.lr.ph71.i.preheader.a, %.lr.ph63.i.preheader90, %.lr.ph71.i.preheader87, %.lr.ph63.i.us.preheader, %.lr.ph.i138.i.us.preheader, %.lr.ph.i138.i.preheader94, %.lr.ph71.i.us.preheader, %bb.c
  %i.dy = add nuw nsw i64 %.281, 1                ; 2 uses
  %i.dz = load i32, ptr %i.d, align 4, !tbaa !2148 ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = icmp samesign ult i64 %i.dy, %i.ea
  br i1 %i.eb, label %bb.c, label %._crit_edge, !llvm.loop !2187

._crit_edge:                                      ; preds = %ma_pcm_convert.exit, %bb.b
  %i.ec = phi i32 [ 0, %bb.b ], [ %i.dz, %ma_pcm_convert.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.ed = add nuw i64 %.25782, 1                  ; 2 uses
  %exitcond106.not = icmp eq i64 %i.ed, %3
  br i1 %exitcond106.not, label %.loopexit, label %bb.b, !llvm.loop !2188

.loopexit69.loopexit.unr-lcssa:                   ; preds = %.preheader68.split
  %lcmp.mod152.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod152.not, label %.loopexit69, label %.preheader68.split.epil.preheader

.preheader68.split.epil.preheader:                ; preds = %.loopexit69.loopexit.unr-lcssa, %.preheader68.split.preheader
  %.epil.init151 = phi double [ %.promoted75, %.preheader68.split.preheader ], [ %i.bw, %.loopexit69.loopexit.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter148, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.preheader68.split.epil

.preheader68.split.epil:                          ; preds = %.preheader68.split.epil, %.preheader68.split.epil.preheader
  %i.ee = phi double [ %i.ef, %.preheader68.split.epil ], [ %.epil.init151, %.preheader68.split.epil.preheader ]
  %epil.iter149 = phi i64 [ %epil.iter149.next, %.preheader68.split.epil ], [ 0, %.preheader68.split.epil.preheader ]
  %i.ef = fadd double %i.ee, %i.am                ; 2 uses
  %epil.iter149.next = add i64 %epil.iter149, 1   ; 2 uses
  %epil.iter149.cmp.not = icmp eq i64 %epil.iter149.next, %xtraiter148
  br i1 %epil.iter149.cmp.not, label %.loopexit69, label %.preheader68.split.epil, !llvm.loop !2189

.loopexit69:                                      ; preds = %._crit_edge.us79, %.loopexit69.loopexit.unr-lcssa, %.preheader68.split.epil
  %.us-phi80 = phi double [ %i.ef, %.preheader68.split.epil ], [ %i.bw, %.loopexit69.loopexit.unr-lcssa ], [ %i.bc, %._crit_edge.us79 ]
  store double %.us-phi80, ptr %i.ah, align 8, !tbaa !2144
  br label %.loopexit

.loopexit71.loopexit.unr-lcssa:                   ; preds = %.preheader70.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit71, label %.preheader70.split.epil.preheader

.preheader70.split.epil.preheader:                ; preds = %.loopexit71.loopexit.unr-lcssa, %.preheader70.split.preheader
  %.epil.init = phi double [ %.promoted, %.preheader70.split.preheader ], [ %i.cf, %.loopexit71.loopexit.unr-lcssa ]
  %lcmp.mod147 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod147)
  br label %.preheader70.split.epil

.preheader70.split.epil:                          ; preds = %.preheader70.split.epil, %.preheader70.split.epil.preheader
  %i.eg = phi double [ %i.eh, %.preheader70.split.epil ], [ %.epil.init, %.preheader70.split.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader70.split.epil ], [ 0, %.preheader70.split.epil.preheader ]
  %i.eh = fadd double %i.eg, %i.k                 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit71, label %.preheader70.split.epil, !llvm.loop !2190

.loopexit71:                                      ; preds = %._crit_edge.us, %.loopexit71.loopexit.unr-lcssa, %.preheader70.split.epil
  %.us-phi = phi double [ %i.eh, %.preheader70.split.epil ], [ %i.cf, %.loopexit71.loopexit.unr-lcssa ], [ %i.af, %._crit_edge.us ]
  store double %.us-phi, ptr %i.f, align 8, !tbaa !2144
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
  %i.c = load double, ptr %i.b, align 8, !tbaa !2143
  %i.d = sitofp i64 %1 to double
  %i.e = fmul double %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.e, ptr %i.f, align 8, !tbaa !2144
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
  store i32 %1, ptr %0, align 8, !tbaa !912
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !914
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.c, align 8, !tbaa !915
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %4, ptr %i.d, align 8, !tbaa !916
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %5, ptr %i.e, align 8, !tbaa !917
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %6, ptr %i.f, align 8, !tbaa !918
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !915  ; 2 uses
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
  %i.l = load double, ptr %i.e, align 8, !tbaa !918
  %i.m = load <2 x double>, ptr %i.d, align 8, !tbaa !774
  %i.n = load <2 x i32>, ptr %0, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %i.f, i8 0, i64 64, i1 false)
  store ptr @g_ma_waveform_data_source_vtable, ptr %1, align 8, !tbaa !353
  store i64 -1, ptr %i.g, align 8, !tbaa !354
  store i64 -1, ptr %i.h, align 8, !tbaa !355
  store ptr %1, ptr %i.i, align 8, !tbaa !356
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store <2 x i32> %i.n, ptr %i.k, align 8, !tbaa !8
  store i32 %i.c, ptr %.sroa.515.0..sroa_idx, align 8, !tbaa !8
  store i32 1, ptr %.sroa.616.0..sroa_idx, align 4, !tbaa !8
  store <2 x double> %i.m, ptr %.sroa.717.0..sroa_idx, align 8, !tbaa !774
  %i.o = uitofp i32 %i.c to double
  %i.p = fdiv double %i.o, %i.l
  %i.q = fdiv double 1.000000e+00, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  store double %i.q, ptr %i.r, align 8, !tbaa !2143
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !2144
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !916
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 136
  store double %i.u, ptr %i.v, align 8, !tbaa !2191
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
  store double %1, ptr %i.b, align 8, !tbaa !2191
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
  store i64 0, ptr %3, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq i64 %2, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
end_hunk_0
