Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86_avx512?download=true
inline.NumInlined: 28
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a
  %.081217.epil.init = phi ptr [ %5, %.lr.ph.preheader ], [ %i.q, %.preheader119.loopexit.unr-lcssa ]
  %lcmp.mod965 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod965)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.081217.epil = phi ptr [ %i.f, %.lr.ph.epil ], [ %.081217.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store <16 x float> splat (float f0xFF7FFFFF), ptr %.081217.epil, align 1, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %.081217.epil, i64 64 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader119.loopexit, label %.lr.ph.epil, !llvm.loop !85

.preheader119.loopexit:                           ; preds = %.lr.ph.epil, %.preheader119.loopexit.unr-lcssa
  %.lcssa963 = phi ptr [ %i.q, %.preheader119.loopexit.unr-lcssa ], [ %i.f, %.lr.ph.epil ]
  %i.g = and i32 %4, 2147483632
  br label %.preheader119

.preheader119:                                    ; preds = %.preheader119.loopexit, %bb.a
  %.081.lcssa = phi ptr [ %5, %bb.a ], [ %.lcssa963, %.preheader119.loopexit ] ; 2 uses
  %.077.lcssa = phi i32 [ 0, %bb.a ], [ %i.g, %.preheader119.loopexit ] ; 3 uses
  %i.h = or disjoint i32 %.077.lcssa, 7
  %i.i = icmp slt i32 %i.h, %4
  br i1 %i.i, label %.lr.ph222, label %.preheader118

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.081217 = phi ptr [ %5, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store <16 x float> splat (float f0xFF7FFFFF), ptr %.081217, align 1, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %.081217, i64 64
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.j, align 1, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %.081217, i64 128
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.k, align 1, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %.081217, i64 192
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.l, align 1, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %.081217, i64 256
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.m, align 1, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %.081217, i64 320
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.n, align 1, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %.081217, i64 384
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.o, align 1, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %.081217, i64 448
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.p, align 1, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %.081217, i64 512 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.preheader119.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !86

.preheader118:                                    ; preds = %.lr.ph222, %.preheader119
  %.182.lcssa = phi ptr [ %.081.lcssa, %.preheader119 ], [ %i.t, %.lr.ph222 ] ; 2 uses
  %.178.lcssa = phi i32 [ %.077.lcssa, %.preheader119 ], [ %i.u, %.lr.ph222 ] ; 3 uses
  %i.r = or disjoint i32 %.178.lcssa, 3
  %i.s = icmp slt i32 %i.r, %4
  br i1 %i.s, label %.lr.ph227, label %.preheader117

.lr.ph222:                                        ; preds = %.preheader119, %.lr.ph222
  %.178221 = phi i32 [ %i.u, %.lr.ph222 ], [ %.077.lcssa, %.preheader119 ]
  %.182220 = phi ptr [ %i.t, %.lr.ph222 ], [ %.081.lcssa, %.preheader119 ] ; 2 uses
  store <8 x float> splat (float f0xFF7FFFFF), ptr %.182220, align 1, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %.182220, i64 32 ; 2 uses
  %i.u = add nuw nsw i32 %.178221, 8              ; 3 uses
  %i.v = or disjoint i32 %i.u, 7
  %i.w = icmp slt i32 %i.v, %4
  br i1 %i.w, label %.lr.ph222, label %.preheader118, !llvm.loop !87

.preheader117:                                    ; preds = %.lr.ph227, %.preheader118
  %.283.lcssa = phi ptr [ %.182.lcssa, %.preheader118 ], [ %i.as, %.lr.ph227 ] ; 5 uses
  %.279.lcssa = phi i32 [ %.178.lcssa, %.preheader118 ], [ %i.at, %.lr.ph227 ] ; 5 uses
  %i.x = icmp slt i32 %.279.lcssa, %4
  br i1 %i.x, label %iter.check, label %.preheader116

iter.check:                                       ; preds = %.preheader117
  %i.y = xor i32 %.279.lcssa, -1
  %i.z = add i32 %4, %i.y                         ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.z, 7
  br i1 %min.iters.check, label %.lr.ph232.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check574 = icmp ult i32 %i.z, 63
  br i1 %min.iters.check574, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.ab, 56
  %n.vec = and i64 %i.ab, 8589934528              ; 5 uses
  %i.ad = trunc i64 %n.vec to i32
  %i.ae = add i32 %.279.lcssa, %i.ad
  %i.af = shl nuw nsw i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %.283.lcssa, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.283.lcssa, i64 %i.ah ; 4 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 64
  %i.aj = getelementptr i8, ptr %next.gep, i64 128
  %i.ak = getelementptr i8, ptr %next.gep, i64 192
  store <16 x float> splat (float f0xFF7FFFFF), ptr %next.gep, align 4, !tbaa !60
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.ai, align 4, !tbaa !60
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.aj, align 4, !tbaa !60
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.ak, align 4, !tbaa !60
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.preheader116, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph232.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec576 = and i64 %i.ab, 8589934584           ; 4 uses
  %i.am = trunc i64 %n.vec576 to i32
  %i.an = add i32 %.279.lcssa, %i.am
  %i.ao = shl nuw nsw i64 %n.vec576, 2
  %i.ap = getelementptr i8, ptr %.283.lcssa, i64 %i.ao
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index577 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next579, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index577, 2
  %next.gep578 = getelementptr i8, ptr %.283.lcssa, i64 %i.aq
  store <8 x float> splat (float f0xFF7FFFFF), ptr %next.gep578, align 4, !tbaa !60
  %index.next579 = add nuw i64 %index577, 8       ; 2 uses
  %i.ar = icmp eq i64 %index.next579, %n.vec576
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n580 = icmp eq i64 %i.ab, %n.vec576
  br i1 %cmp.n580, label %.preheader116, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.380231.ph = phi i32 [ %.279.lcssa, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.384230.ph = phi ptr [ %.283.lcssa, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph232

.lr.ph227:                                        ; preds = %.preheader118, %.lr.ph227
  %.279226 = phi i32 [ %i.at, %.lr.ph227 ], [ %.178.lcssa, %.preheader118 ]
  %.283225 = phi ptr [ %i.as, %.lr.ph227 ], [ %.182.lcssa, %.preheader118 ] ; 2 uses
  store <4 x float> splat (float f0xFF7FFFFF), ptr %.283225, align 1, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %.283225, i64 16 ; 2 uses
  %i.at = add nuw nsw i32 %.279226, 4             ; 3 uses
  %i.au = or disjoint i32 %i.at, 3
  %i.av = icmp slt i32 %i.au, %4
  br i1 %i.av, label %.lr.ph227, label %.preheader117, !llvm.loop !90

.preheader116:                                    ; preds = %.lr.ph232, %middle.block, %vec.epilog.middle.block, %.preheader117
  br i1 %i.a, label %.lr.ph235.preheader, label %.preheader115

.lr.ph235.preheader:                              ; preds = %.preheader116
  %i.aw = add nsw i32 %4, -16                     ; 2 uses
  %i.ax = lshr i32 %i.aw, 4
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 6
  %i.ba = add nuw nsw i64 %i.az, 64               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, i8 0, i64 %i.ba, i1 false), !tbaa !54
  %scevgep = getelementptr i8, ptr %6, i64 %i.ba
  %i.bb = and i32 %i.aw, -16
  %i.bc = add nuw nsw i32 %i.bb, 16
  br label %.preheader115

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %.lr.ph232
  %.380231 = phi i32 [ %i.be, %.lr.ph232 ], [ %.380231.ph, %.lr.ph232.preheader ]
  %.384230 = phi ptr [ %i.bd, %.lr.ph232 ], [ %.384230.ph, %.lr.ph232.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.384230, i64 4
  store float f0xFF7FFFFF, ptr %.384230, align 4, !tbaa !60
  %i.be = add nuw nsw i32 %.380231, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %4
  br i1 %exitcond.not, label %.preheader116, label %.lr.ph232, !llvm.loop !91

.preheader115:                                    ; preds = %.lr.ph235.preheader, %.preheader116
  %.073.lcssa = phi ptr [ %6, %.preheader116 ], [ %scevgep, %.lr.ph235.preheader ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.preheader116 ], [ %i.bc, %.lr.ph235.preheader ] ; 4 uses
  %i.bf = or disjoint i32 %.0.lcssa, 7
  %i.bg = icmp slt i32 %i.bf, %4
  br i1 %i.bg, label %.lr.ph240.preheader, label %.preheader114

.lr.ph240.preheader:                              ; preds = %.preheader115
  %i.bh = add nsw i32 %4, -8
  %i.bi = sub nsw i32 %i.bh, %.0.lcssa            ; 2 uses
  %i.bj = lshr i32 %i.bi, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 5
  %i.bm = add nuw nsw i64 %i.bl, 32               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.073.lcssa, i8 0, i64 %i.bm, i1 false), !tbaa !54
  %scevgep360 = getelementptr i8, ptr %.073.lcssa, i64 %i.bm
  %i.bn = and i32 %i.bi, -8
  %i.bo = add i32 %.0.lcssa, %i.bn
  %i.bp = add i32 %i.bo, 8
  br label %.preheader114

.preheader114:                                    ; preds = %.lr.ph240.preheader, %.preheader115
  %.174.lcssa = phi ptr [ %.073.lcssa, %.preheader115 ], [ %scevgep360, %.lr.ph240.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader115 ], [ %i.bp, %.lr.ph240.preheader ] ; 5 uses
  %i.bq = or disjoint i32 %.1.lcssa, 3
  %i.br = icmp slt i32 %i.bq, %4
  br i1 %i.br, label %.lr.ph245.preheader, label %.preheader

.lr.ph245.preheader:                              ; preds = %.preheader114
  %7 = add i32 %.1.lcssa, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %7)
  %i.bs = add i32 %smax, -4
  %i.bt = sub i32 %i.bs, %.1.lcssa                ; 2 uses
  %i.bu = lshr i32 %i.bt, 2
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = add nuw nsw i64 %i.bw, 16               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.174.lcssa, i8 0, i64 %i.bx, i1 false), !tbaa !54
  %scevgep362 = getelementptr i8, ptr %.174.lcssa, i64 %i.bx
  %i.by = and i32 %i.bt, -4
  %i.bz = add i32 %.1.lcssa, %i.by
  %i.ca = add i32 %i.bz, 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph245.preheader, %.preheader114
  %.275.lcssa = phi ptr [ %.174.lcssa, %.preheader114 ], [ %scevgep362, %.lr.ph245.preheader ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader114 ], [ %i.ca, %.lr.ph245.preheader ] ; 2 uses
  %i.cb = icmp slt i32 %.2.lcssa, %4
  br i1 %i.cb, label %.lr.ph250.preheader, label %._crit_edge

.lr.ph250.preheader:                              ; preds = %.preheader
  %i.cc = xor i32 %.2.lcssa, -1
  %i.cd = add i32 %4, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.275.lcssa, i8 0, i64 %i.cg, i1 false), !tbaa !60
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph250.preheader, %.preheader
  %i.ch = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %.split, label %_ZN4ncnnL13softmax_pack1EPfimiS0_S0_.exit

.split:                                           ; preds = %._crit_edge
  %i.cj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.cj, label %_ZN4ncnnL13softmax_pack1EPfimiS0_S0_.exit [
    i32 4, label %bb.b
    i32 3, label %bb.e
    i32 2, label %bb.h
    i32 0, label %bb.k
  ]

bb.b:                                             ; preds = %.split
  %i.ck = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %i.ck, label %.lr.ph479.i, label %.preheader464.i

.lr.ph479.i:                                      ; preds = %bb.b
  %i.cl = and i32 %4, -16                         ; 2 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph479.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph479.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.cm = mul i64 %indvars.iv.i, %3
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cm ; 2 uses
  br i1 %i.a, label %.lr.ph.i, label %.preheader467.i

.preheader467.i:                                  ; preds = %.lr.ph.i, %bb.c
  %.0401.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.cl, %.lr.ph.i ] ; 2 uses
  %.0399.lcssa.i = phi ptr [ %5, %bb.c ], [ %i.fq, %.lr.ph.i ]
  %.0398.lcssa.i = phi ptr [ %i.cn, %bb.c ], [ %i.fp, %.lr.ph.i ]
  %i.co = icmp slt i32 %.0401.lcssa.i, %4
  br i1 %i.co, label %.lr.ph476.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0398470.i = phi ptr [ %i.fp, %.lr.ph.i ], [ %i.cn, %bb.c ] ; 17 uses
  %.0399469.i = phi ptr [ %i.fq, %.lr.ph.i ], [ %5, %bb.c ] ; 3 uses
  %.0401468.i = phi i32 [ %i.fr, %.lr.ph.i ], [ 0, %bb.c ]
  %i.cp = load <16 x float>, ptr %.0398470.i, align 1, !tbaa !54 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 64
  %i.cr = load <16 x float>, ptr %i.cq, align 1, !tbaa !54 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 128
  %i.ct = load <16 x float>, ptr %i.cs, align 1, !tbaa !54 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 192
  %i.cv = load <16 x float>, ptr %i.cu, align 1, !tbaa !54 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 256
  %i.cx = load <16 x float>, ptr %i.cw, align 1, !tbaa !54 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 320
  %i.cz = load <16 x float>, ptr %i.cy, align 1, !tbaa !54 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 384
  %i.db = load <16 x float>, ptr %i.da, align 1, !tbaa !54 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 448
  %i.dd = load <16 x float>, ptr %i.dc, align 1, !tbaa !54 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 512
  %i.df = load <16 x float>, ptr %i.de, align 1, !tbaa !54 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 576
  %i.dh = load <16 x float>, ptr %i.dg, align 1, !tbaa !54 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 640
  %i.dj = load <16 x float>, ptr %i.di, align 1, !tbaa !54 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 704
  %i.dl = load <16 x float>, ptr %i.dk, align 1, !tbaa !54 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 768
  %i.dn = load <16 x float>, ptr %i.dm, align 1, !tbaa !54 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 832
  %i.dp = load <16 x float>, ptr %i.do, align 1, !tbaa !54 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 896
  %i.dr = load <16 x float>, ptr %i.dq, align 1, !tbaa !54 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 960
  %i.dt = load <16 x float>, ptr %i.ds, align 1, !tbaa !54 ; 2 uses
  %i.du = shufflevector <16 x float> %i.cp, <16 x float> %i.cr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.dv = shufflevector <16 x float> %i.cp, <16 x float> %i.cr, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.dw = shufflevector <16 x float> %i.ct, <16 x float> %i.cv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.dx = shufflevector <16 x float> %i.ct, <16 x float> %i.cv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.dy = shufflevector <16 x float> %i.cx, <16 x float> %i.cz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.dz = shufflevector <16 x float> %i.cx, <16 x float> %i.cz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.ea = shufflevector <16 x float> %i.db, <16 x float> %i.dd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.eb = shufflevector <16 x float> %i.db, <16 x float> %i.dd, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.ec = shufflevector <16 x float> %i.df, <16 x float> %i.dh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.ed = shufflevector <16 x float> %i.df, <16 x float> %i.dh, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.ee = shufflevector <16 x float> %i.dj, <16 x float> %i.dl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.ef = shufflevector <16 x float> %i.dj, <16 x float> %i.dl, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.eg = shufflevector <16 x float> %i.dn, <16 x float> %i.dp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.eh = shufflevector <16 x float> %i.dn, <16 x float> %i.dp, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.ei = shufflevector <16 x float> %i.dr, <16 x float> %i.dt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %i.ej = shufflevector <16 x float> %i.dr, <16 x float> %i.dt, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %i.ek = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.du, <16 x float> nofpclass(nan inf) %i.dv, i32 4) ; 2 uses
  %i.el = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dw, <16 x float> nofpclass(nan inf) %i.dx, i32 4) ; 2 uses
  %i.em = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dy, <16 x float> nofpclass(nan inf) %i.dz, i32 4) ; 2 uses
  %i.en = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ea, <16 x float> nofpclass(nan inf) %i.eb, i32 4) ; 2 uses
  %i.eo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> nofpclass(nan inf) %i.ed, i32 4) ; 2 uses
  %i.ep = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ee, <16 x float> nofpclass(nan inf) %i.ef, i32 4) ; 2 uses
  %i.eq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.eg, <16 x float> nofpclass(nan inf) %i.eh, i32 4) ; 2 uses
  %i.er = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ei, <16 x float> nofpclass(nan inf) %i.ej, i32 4) ; 2 uses
  %i.es = shufflevector <16 x float> %i.ek, <16 x float> %i.el, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.et = shufflevector <16 x float> %i.ek, <16 x float> %i.el, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.eu = shufflevector <16 x float> %i.em, <16 x float> %i.en, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ev = shufflevector <16 x float> %i.em, <16 x float> %i.en, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ew = shufflevector <16 x float> %i.eo, <16 x float> %i.ep, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ex = shufflevector <16 x float> %i.eo, <16 x float> %i.ep, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ey = shufflevector <16 x float> %i.eq, <16 x float> %i.er, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ez = shufflevector <16 x float> %i.eq, <16 x float> %i.er, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.fa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.es, <16 x float> nofpclass(nan inf) %i.et, i32 4) ; 2 uses
  %i.fb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.eu, <16 x float> nofpclass(nan inf) %i.ev, i32 4) ; 2 uses
  %i.fc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ew, <16 x float> nofpclass(nan inf) %i.ex, i32 4) ; 2 uses
  %i.fd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ey, <16 x float> nofpclass(nan inf) %i.ez, i32 4) ; 2 uses
  %i.fe = shufflevector <16 x float> %i.fa, <16 x float> %i.fb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ff = shufflevector <16 x float> %i.fa, <16 x float> %i.fb, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fg = shufflevector <16 x float> %i.fc, <16 x float> %i.fd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fh = shufflevector <16 x float> %i.fc, <16 x float> %i.fd, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fe, <16 x float> nofpclass(nan inf) %i.ff, i32 4) ; 2 uses
  %i.fj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fg, <16 x float> nofpclass(nan inf) %i.fh, i32 4) ; 2 uses
  %i.fk = shufflevector <16 x float> %i.fi, <16 x float> %i.fj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.fl = shufflevector <16 x float> %i.fi, <16 x float> %i.fj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.fm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fk, <16 x float> nofpclass(nan inf) %i.fl, i32 4)
  %i.fn = load <16 x float>, ptr %.0399469.i, align 1, !tbaa !54
  %i.fo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fn, <16 x float> nofpclass(nan inf) %i.fm, i32 4)
  store <16 x float> %i.fo, ptr %.0399469.i, align 1, !tbaa !54
  %i.fp = getelementptr inbounds nuw i8, ptr %.0398470.i, i64 1024 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0399469.i, i64 64 ; 2 uses
  %i.fr = add nuw nsw i32 %.0401468.i, 16         ; 2 uses
  %i.fs = or disjoint i32 %i.fr, 15
  %i.ft = icmp slt i32 %i.fs, %4
  br i1 %i.ft, label %.lr.ph.i, label %.preheader467.i, !llvm.loop !92

.lr.ph476.i:                                      ; preds = %.preheader467.i, %.lr.ph476.i
  %.1475.i = phi ptr [ %i.gi, %.lr.ph476.i ], [ %.0398.lcssa.i, %.preheader467.i ] ; 2 uses
  %.1400474.i = phi ptr [ %i.gj, %.lr.ph476.i ], [ %.0399.lcssa.i, %.preheader467.i ] ; 3 uses
  %.1402473.i = phi i32 [ %i.gk, %.lr.ph476.i ], [ %.0401.lcssa.i, %.preheader467.i ]
  %i.fu = load <16 x float>, ptr %.1475.i, align 1, !tbaa !54 ; 2 uses
  %i.fv = shufflevector <16 x float> %i.fu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fw = shufflevector <16 x float> %i.fu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fv, <8 x float> nofpclass(nan inf) %i.fw) ; 2 uses
  %i.fy = shufflevector <8 x float> %i.fx, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fz = shufflevector <8 x float> %i.fx, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ga = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fy, <4 x float> nofpclass(nan inf) %i.fz) ; 2 uses
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.gc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ga, <4 x float> nofpclass(nan inf) %i.gb) ; 2 uses
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ge = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.gc, <4 x float> nofpclass(nan inf) %i.gd)
  %i.gf = extractelement <4 x float> %i.ge, i64 0 ; 2 uses
  %i.gg = load float, ptr %.1400474.i, align 4, !tbaa !60 ; 2 uses
  %i.gh = fcmp fast olt float %i.gg, %i.gf
  %.sroa.speculated.i = select i1 %i.gh, float %i.gf, float %i.gg
  store float %.sroa.speculated.i, ptr %.1400474.i, align 4, !tbaa !60
  %i.gi = getelementptr inbounds nuw i8, ptr %.1475.i, i64 64
  %i.gj = getelementptr inbounds nuw i8, ptr %.1400474.i, i64 4
  %i.gk = add nuw nsw i32 %.1402473.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gk, %4
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph476.i, !llvm.loop !93

._crit_edge.i:                                    ; preds = %.lr.ph476.i, %.preheader467.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond548.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond548.not.i, label %.preheader466.i, label %bb.c, !llvm.loop !94

.preheader464.i:                                  ; preds = %._crit_edge495.i, %bb.b
  br i1 %i.a, label %.lr.ph500.i.preheader, label %.preheader463.i

.lr.ph500.i.preheader:                            ; preds = %.preheader464.i
  %i.gl = add nsw i32 %4, -16                     ; 2 uses
  %i.gm = lshr i32 %i.gl, 4                       ; 2 uses
  %i.gn = add nuw nsw i32 %i.gm, 1                ; 2 uses
  %i.go = icmp eq i32 %i.gm, 0
  br i1 %i.go, label %.lr.ph500.i.epil.preheader, label %.lr.ph500.i.preheader.new

.lr.ph500.i.preheader.new:                        ; preds = %.lr.ph500.i.preheader
  %unroll_iter971 = and i32 %i.gn, 536870910
  br label %.lr.ph500.i

.preheader466.i:                                  ; preds = %._crit_edge.i, %._crit_edge495.i
  %indvars.iv550.i = phi i64 [ %indvars.iv.next551.i, %._crit_edge495.i ], [ 0, %._crit_edge.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a
  %.081187.epil.init = phi ptr [ %5, %.lr.ph.preheader ], [ %i.q, %.preheader140.loopexit.unr-lcssa ]
  %lcmp.mod706 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod706)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.081187.epil = phi ptr [ %i.f, %.lr.ph.epil ], [ %.081187.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store <16 x float> splat (float f0xFF7FFFFF), ptr %.081187.epil, align 1, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %.081187.epil, i64 64 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader140.loopexit, label %.lr.ph.epil, !llvm.loop !254

.preheader140.loopexit:                           ; preds = %.lr.ph.epil, %.preheader140.loopexit.unr-lcssa
  %.lcssa704 = phi ptr [ %i.q, %.preheader140.loopexit.unr-lcssa ], [ %i.f, %.lr.ph.epil ]
  %i.g = and i32 %4, 2147483632
  br label %.preheader140

.preheader140:                                    ; preds = %.preheader140.loopexit, %bb.a
  %.081.lcssa = phi ptr [ %5, %bb.a ], [ %.lcssa704, %.preheader140.loopexit ] ; 2 uses
  %.077.lcssa = phi i32 [ 0, %bb.a ], [ %i.g, %.preheader140.loopexit ] ; 3 uses
  %i.h = or disjoint i32 %.077.lcssa, 7
  %i.i = icmp slt i32 %i.h, %4
  br i1 %i.i, label %.lr.ph192, label %.preheader139

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.081187 = phi ptr [ %5, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store <16 x float> splat (float f0xFF7FFFFF), ptr %.081187, align 1, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %.081187, i64 64
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.j, align 1, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %.081187, i64 128
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.k, align 1, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %.081187, i64 192
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.l, align 1, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %.081187, i64 256
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.m, align 1, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %.081187, i64 320
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.n, align 1, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %.081187, i64 384
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.o, align 1, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %.081187, i64 448
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.p, align 1, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %.081187, i64 512 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.preheader140.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !255

.preheader139:                                    ; preds = %.lr.ph192, %.preheader140
  %.182.lcssa = phi ptr [ %.081.lcssa, %.preheader140 ], [ %i.t, %.lr.ph192 ] ; 2 uses
  %.178.lcssa = phi i32 [ %.077.lcssa, %.preheader140 ], [ %i.u, %.lr.ph192 ] ; 3 uses
  %i.r = or disjoint i32 %.178.lcssa, 3
  %i.s = icmp slt i32 %i.r, %4
  br i1 %i.s, label %.lr.ph197, label %.preheader138

.lr.ph192:                                        ; preds = %.preheader140, %.lr.ph192
  %.178191 = phi i32 [ %i.u, %.lr.ph192 ], [ %.077.lcssa, %.preheader140 ]
  %.182190 = phi ptr [ %i.t, %.lr.ph192 ], [ %.081.lcssa, %.preheader140 ] ; 2 uses
  store <8 x float> splat (float f0xFF7FFFFF), ptr %.182190, align 1, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %.182190, i64 32 ; 2 uses
  %i.u = add nuw nsw i32 %.178191, 8              ; 3 uses
  %i.v = or disjoint i32 %i.u, 7
  %i.w = icmp slt i32 %i.v, %4
  br i1 %i.w, label %.lr.ph192, label %.preheader139, !llvm.loop !256

.preheader138:                                    ; preds = %.lr.ph197, %.preheader139
  %.283.lcssa = phi ptr [ %.182.lcssa, %.preheader139 ], [ %i.as, %.lr.ph197 ] ; 5 uses
  %.279.lcssa = phi i32 [ %.178.lcssa, %.preheader139 ], [ %i.at, %.lr.ph197 ] ; 5 uses
  %i.x = icmp slt i32 %.279.lcssa, %4
  br i1 %i.x, label %iter.check, label %.preheader137

iter.check:                                       ; preds = %.preheader138
  %i.y = xor i32 %.279.lcssa, -1
  %i.z = add i32 %4, %i.y                         ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.z, 7
  br i1 %min.iters.check, label %.lr.ph202.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check391 = icmp ult i32 %i.z, 63
  br i1 %min.iters.check391, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.ab, 56
  %n.vec = and i64 %i.ab, 8589934528              ; 5 uses
  %i.ad = trunc i64 %n.vec to i32
  %i.ae = add i32 %.279.lcssa, %i.ad
  %i.af = shl nuw nsw i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %.283.lcssa, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.283.lcssa, i64 %i.ah ; 4 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 64
  %i.aj = getelementptr i8, ptr %next.gep, i64 128
  %i.ak = getelementptr i8, ptr %next.gep, i64 192
  store <16 x float> splat (float f0xFF7FFFFF), ptr %next.gep, align 4, !tbaa !60
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.ai, align 4, !tbaa !60
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.aj, align 4, !tbaa !60
  store <16 x float> splat (float f0xFF7FFFFF), ptr %i.ak, align 4, !tbaa !60
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.preheader137, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph202.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec393 = and i64 %i.ab, 8589934584           ; 4 uses
  %i.am = trunc i64 %n.vec393 to i32
  %i.an = add i32 %.279.lcssa, %i.am
  %i.ao = shl nuw nsw i64 %n.vec393, 2
  %i.ap = getelementptr i8, ptr %.283.lcssa, i64 %i.ao
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index394 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next396, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index394, 2
  %next.gep395 = getelementptr i8, ptr %.283.lcssa, i64 %i.aq
  store <8 x float> splat (float f0xFF7FFFFF), ptr %next.gep395, align 4, !tbaa !60
  %index.next396 = add nuw i64 %index394, 8       ; 2 uses
  %i.ar = icmp eq i64 %index.next396, %n.vec393
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !258

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n397 = icmp eq i64 %i.ab, %n.vec393
  br i1 %cmp.n397, label %.preheader137, label %.lr.ph202.preheader

.lr.ph202.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.380201.ph = phi i32 [ %.279.lcssa, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.384200.ph = phi ptr [ %.283.lcssa, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph202

.lr.ph197:                                        ; preds = %.preheader139, %.lr.ph197
  %.279196 = phi i32 [ %i.at, %.lr.ph197 ], [ %.178.lcssa, %.preheader139 ]
  %.283195 = phi ptr [ %i.as, %.lr.ph197 ], [ %.182.lcssa, %.preheader139 ] ; 2 uses
  store <4 x float> splat (float f0xFF7FFFFF), ptr %.283195, align 1, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %.283195, i64 16 ; 2 uses
  %i.at = add nuw nsw i32 %.279196, 4             ; 3 uses
  %i.au = or disjoint i32 %i.at, 3
  %i.av = icmp slt i32 %i.au, %4
  br i1 %i.av, label %.lr.ph197, label %.preheader138, !llvm.loop !259

.preheader137:                                    ; preds = %.lr.ph202, %middle.block, %vec.epilog.middle.block, %.preheader138
  br i1 %i.a, label %.lr.ph205.preheader, label %.preheader136

.lr.ph205.preheader:                              ; preds = %.preheader137
  %i.aw = add nsw i32 %4, -16                     ; 2 uses
  %i.ax = lshr i32 %i.aw, 4
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 6
  %i.ba = add nuw nsw i64 %i.az, 64               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, i8 0, i64 %i.ba, i1 false), !tbaa !54
  %scevgep = getelementptr i8, ptr %6, i64 %i.ba
  %i.bb = and i32 %i.aw, -16
  %i.bc = add nuw nsw i32 %i.bb, 16
  br label %.preheader136

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %.lr.ph202
  %.380201 = phi i32 [ %i.be, %.lr.ph202 ], [ %.380201.ph, %.lr.ph202.preheader ]
  %.384200 = phi ptr [ %i.bd, %.lr.ph202 ], [ %.384200.ph, %.lr.ph202.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.384200, i64 4
  store float f0xFF7FFFFF, ptr %.384200, align 4, !tbaa !60
  %i.be = add nuw nsw i32 %.380201, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %4
  br i1 %exitcond.not, label %.preheader137, label %.lr.ph202, !llvm.loop !260

.preheader136:                                    ; preds = %.lr.ph205.preheader, %.preheader137
  %.073.lcssa = phi ptr [ %6, %.preheader137 ], [ %scevgep, %.lr.ph205.preheader ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.preheader137 ], [ %i.bc, %.lr.ph205.preheader ] ; 4 uses
  %i.bf = or disjoint i32 %.0.lcssa, 7
  %i.bg = icmp slt i32 %i.bf, %4
  br i1 %i.bg, label %.lr.ph210.preheader, label %.preheader135

.lr.ph210.preheader:                              ; preds = %.preheader136
  %i.bh = add nsw i32 %4, -8
  %i.bi = sub nsw i32 %i.bh, %.0.lcssa            ; 2 uses
  %i.bj = lshr i32 %i.bi, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 5
  %i.bm = add nuw nsw i64 %i.bl, 32               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.073.lcssa, i8 0, i64 %i.bm, i1 false), !tbaa !54
  %scevgep279 = getelementptr i8, ptr %.073.lcssa, i64 %i.bm
  %i.bn = and i32 %i.bi, -8
  %i.bo = add i32 %.0.lcssa, %i.bn
  %i.bp = add i32 %i.bo, 8
  br label %.preheader135

.preheader135:                                    ; preds = %.lr.ph210.preheader, %.preheader136
  %.174.lcssa = phi ptr [ %.073.lcssa, %.preheader136 ], [ %scevgep279, %.lr.ph210.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader136 ], [ %i.bp, %.lr.ph210.preheader ] ; 5 uses
  %i.bq = or disjoint i32 %.1.lcssa, 3
  %i.br = icmp slt i32 %i.bq, %4
  br i1 %i.br, label %.lr.ph215.preheader, label %.preheader

.lr.ph215.preheader:                              ; preds = %.preheader135
  %7 = add i32 %.1.lcssa, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %7)
  %i.bs = add i32 %smax, -4
  %i.bt = sub i32 %i.bs, %.1.lcssa                ; 2 uses
  %i.bu = lshr i32 %i.bt, 2
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = add nuw nsw i64 %i.bw, 16               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.174.lcssa, i8 0, i64 %i.bx, i1 false), !tbaa !54
  %scevgep281 = getelementptr i8, ptr %.174.lcssa, i64 %i.bx
  %i.by = and i32 %i.bt, -4
  %i.bz = add i32 %.1.lcssa, %i.by
  %i.ca = add i32 %i.bz, 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph215.preheader, %.preheader135
  %.275.lcssa = phi ptr [ %.174.lcssa, %.preheader135 ], [ %scevgep281, %.lr.ph215.preheader ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader135 ], [ %i.ca, %.lr.ph215.preheader ] ; 2 uses
  %i.cb = icmp slt i32 %.2.lcssa, %4
  br i1 %i.cb, label %.lr.ph220.preheader, label %._crit_edge

.lr.ph220.preheader:                              ; preds = %.preheader
  %i.cc = xor i32 %.2.lcssa, -1
  %i.cd = add i32 %4, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.275.lcssa, i8 0, i64 %i.cg, i1 false), !tbaa !60
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph220.preheader, %.preheader
  %i.ch = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %.split, label %_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit

.split:                                           ; preds = %._crit_edge
  %i.cj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.cj, label %_ZN4ncnnL23softmax_bf16s_pack1_sseEPtimiPfS1_.exit [
    i32 4, label %bb.b
    i32 3, label %bb.g
    i32 2, label %bb.l
    i32 0, label %bb.o
  ]

bb.b:                                             ; preds = %.split
  %i.ck = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i, label %.preheader130.i, label %bb.c

.preheader130.i:                                  ; preds = %bb.b
  %i.cl = icmp sgt i32 %1, 0
  %i.cm = icmp sgt i32 %4, 0
  %or.cond.i = and i1 %i.cl, %i.cm                ; 2 uses
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.preheader128.i

.lr.ph.preheader.i:                               ; preds = %.preheader130.i
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4ncnn35softmax_bf16s_pack16_sse_avx512bf16EPtimiPfS1_(ptr noundef %0, i32 noundef %1, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  br label %_ZN4ncnnL24softmax_bf16s_pack16_sseEPtimiPfS1_.exit

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.cn = mul i64 %indvars.iv.i, %3
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cn
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.089133.i = phi ptr [ %i.co, %.lr.ph.i ], [ %i.dl, %bb.d ] ; 2 uses
  %.095132.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dn, %bb.d ]
  %.096131.i = phi ptr [ %5, %.lr.ph.i ], [ %i.dm, %bb.d ] ; 3 uses
  %i.cp = load <16 x i16>, ptr %.089133.i, align 1, !tbaa !54 ; 2 uses
  %i.cq = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cr = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cp, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cs = shufflevector <16 x i16> %i.cq, <16 x i16> %i.cr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ct = shufflevector <16 x i16> %i.cq, <16 x i16> %i.cr, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cu = bitcast <16 x i16> %i.cs to <8 x i32>
  %i.cv = bitcast <16 x i16> %i.ct to <8 x i32>
  %i.cw = shufflevector <8 x i32> %i.cu, <8 x i32> %i.cv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cx = bitcast <16 x i32> %i.cw to <16 x float> ; 2 uses
  %i.cy = shufflevector <16 x float> %i.cx, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cz = shufflevector <16 x float> %i.cx, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.da = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cy, <8 x float> nofpclass(nan inf) %i.cz) ; 2 uses
  %i.db = shufflevector <8 x float> %i.da, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dc = shufflevector <8 x float> %i.da, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.db, <4 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.df = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> nofpclass(nan inf) %i.de) ; 2 uses
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.dg)
  %i.di = extractelement <4 x float> %i.dh, i64 0 ; 2 uses
  %i.dj = load float, ptr %.096131.i, align 4, !tbaa !60 ; 2 uses
  %i.dk = fcmp fast olt float %i.dj, %i.di
  %.sroa.speculated.i = select i1 %i.dk, float %i.di, float %i.dj
  store float %.sroa.speculated.i, ptr %.096131.i, align 4, !tbaa !60
  %i.dl = getelementptr inbounds nuw i8, ptr %.089133.i, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %.096131.i, i64 4
  %i.dn = add nuw nsw i32 %.095132.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dn, %4
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !261

._crit_edge.i:                                    ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond178.not.i, label %.lr.ph141.i, label %.lr.ph.i, !llvm.loop !262

.preheader128.i:                                  ; preds = %._crit_edge142.i, %.preheader130.i
  br i1 %i.a, label %.lr.ph147.i.preheader, label %.preheader127.i

.lr.ph147.i.preheader:                            ; preds = %.preheader128.i
  %i.do = add nsw i32 %4, -16                     ; 2 uses
  %i.dp = lshr i32 %i.do, 4                       ; 2 uses
  %i.dq = add nuw nsw i32 %i.dp, 1                ; 2 uses
  %i.dr = icmp eq i32 %i.dp, 0
  br i1 %i.dr, label %.lr.ph147.i.epil.preheader, label %.lr.ph147.i.preheader.new

.lr.ph147.i.preheader.new:                        ; preds = %.lr.ph147.i.preheader
  %unroll_iter712 = and i32 %i.dq, 536870910
  br label %.lr.ph147.i

.lr.ph141.i:                                      ; preds = %._crit_edge.i, %._crit_edge142.i
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %._crit_edge142.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ds = mul i64 %indvars.iv180.i, %3
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ds
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph141.i
  %.090139.i = phi i32 [ 0, %.lr.ph141.i ], [ %i.gb, %bb.e ]
  %.091138.i = phi ptr [ %6, %.lr.ph141.i ], [ %i.ga, %bb.e ] ; 3 uses
  %.092137.i = phi ptr [ %5, %.lr.ph141.i ], [ %i.fz, %bb.e ] ; 2 uses
  %.093136.i = phi ptr [ %i.dt, %.lr.ph141.i ], [ %i.fy, %bb.e ] ; 3 uses
  %i.du = load <16 x i16>, ptr %.093136.i, align 1, !tbaa !54 ; 2 uses
  %i.dv = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.du, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dw = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.du, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dx = shufflevector <16 x i16> %i.dv, <16 x i16> %i.dw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dy = shufflevector <16 x i16> %i.dv, <16 x i16> %i.dw, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dz = bitcast <16 x i16> %i.dx to <8 x i32>
  %i.ea = bitcast <16 x i16> %i.dy to <8 x i32>
  %i.eb = shufflevector <8 x i32> %i.dz, <8 x i32> %i.ea, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ec = bitcast <16 x i32> %i.eb to <16 x float>
  %i.ed = load float, ptr %.092137.i, align 4, !tbaa !60
  %i.ee = insertelement <16 x float> poison, float %i.ed, i64 0
  %i.ef = shufflevector <16 x float> %i.ee, <16 x float> poison, <16 x i32> zeroinitializer
  %i.eg = fsub fast <16 x float> %i.ec, %i.ef
  %i.eh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.eg, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ei = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.eh, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ej = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ei, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ek = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ej, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.el = fcmp fast ogt <16 x float> %i.ek, %i.ej
  %i.em = fadd fast <16 x float> %i.ek, splat (float -1.000000e+00)
  %i.en = select fast <16 x i1> %i.el, <16 x float> %i.em, <16 x float> %i.ek ; 2 uses
  %i.eo = fneg fast <16 x float> %i.en            ; 2 uses
  %i.ep = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.eo, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ei)
  %i.eq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.eo, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ep) ; 8 uses
  %i.er = fmul fast <16 x float> %i.eq, %i.eq
  %i.es = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eq, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.et = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.es, <16 x float> nofpclass(nan inf) %i.eq, <16 x float> splat (float f0x3C088908))
  %i.eu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.et, <16 x float> nofpclass(nan inf) %i.eq, <16 x float> splat (float f0x3D2AA9C1))
  %i.ev = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eu, <16 x float> nofpclass(nan inf) %i.eq, <16 x float> splat (float f0x3E2AAAAA))
  %i.ew = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ev, <16 x float> nofpclass(nan inf) %i.eq, <16 x float> splat (float 5.000000e-01))
  %i.ex = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ew, <16 x float> nofpclass(nan inf) %i.er, <16 x float> nofpclass(nan inf) %i.eq)
  %i.ey = fadd fast <16 x float> %i.ex, splat (float 1.000000e+00)
  %i.ez = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.en, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fa = shl <16 x i32> %i.ez, splat (i32 23)
  %i.fb = add <16 x i32> %i.fa, splat (i32 1065353216)
  %i.fc = bitcast <16 x i32> %i.fb to <16 x float>
  %i.fd = fmul fast <16 x float> %i.ey, %i.fc     ; 4 uses
  %i.fe = bitcast <16 x float> %i.fd to <16 x i32>
  %i.ff = lshr <16 x i32> %i.fe, splat (i32 16)   ; 2 uses
  %i.fg = shufflevector <16 x i32> %i.ff, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fh = shufflevector <16 x i32> %i.ff, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fi = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.fg, <8 x i32> %i.fh)
  %i.fj = bitcast <16 x i16> %i.fi to <4 x i64>
  %i.fk = shufflevector <4 x i64> %i.fj, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.fk, ptr %.093136.i, align 1, !tbaa !54
  %i.fl = shufflevector <16 x float> %i.fd, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fm = shufflevector <16 x float> %i.fd, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fn = fadd fast <8 x float> %i.fl, %i.fm      ; 2 uses
  %i.fo = shufflevector <8 x float> %i.fn, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fp = shufflevector <8 x float> %i.fn, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fq = fadd fast <4 x float> %i.fo, %i.fp      ; 2 uses
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.fs = fadd fast <4 x float> %i.fr, %i.fq
  %i.ft = extractelement <4 x float> %i.fs, i64 1
  %i.fu = shufflevector <16 x float> %i.fd, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.fv = load float, ptr %.091138.i, align 4, !tbaa !60
  %i.fw = fadd fast float %i.ft, %i.fv
  %i.fx = tail call fast float @llvm.vector.reduce.fadd.v8f32(float %i.fw, <8 x float> %i.fu)
  store float %i.fx, ptr %.091138.i, align 4, !tbaa !60
  %i.fy = getelementptr inbounds nuw i8, ptr %.093136.i, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %.092137.i, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %.091138.i, i64 4
  %i.gb = add nuw nsw i32 %.090139.i, 1           ; 2 uses
  %exitcond179.not.i = icmp eq i32 %i.gb, %4
  br i1 %exitcond179.not.i, label %._crit_edge142.i, label %bb.e, !llvm.loop !263

._crit_edge142.i:                                 ; preds = %bb.e
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 1 ; 2 uses
  %exitcond184.not.i = icmp eq i64 %indvars.iv.next181.i, %wide.trip.count.i
  br i1 %exitcond184.not.i, label %.preheader128.i, label %.lr.ph141.i, !llvm.loop !264

end_hunk_1
begin_hunk_2_@_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.11:bb.a
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !23
  %i.aj = sext i32 %i.ai to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.aj
  br i1 %.not.not, label %.noexc21, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %.noexc, %.noexc21
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #20
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.h = load i32, ptr %0, align 4, !tbaa !23     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !23
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !23
  %i.k = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not39 = icmp sgt i32 %i.k, %i.j
  br i1 %.not39, label %._crit_edge41, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %4, align 4, !tbaa !23     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.noexc.preheader, label %._crit_edge41

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge38
  %i.q = phi i32 [ %i.j, %.noexc.preheader ], [ %i.af, %._crit_edge38 ] ; 2 uses
  %i.r = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ag, %._crit_edge38 ] ; 3 uses
  %i.s = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ah, %._crit_edge38 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge38 ] ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.u = load i32, ptr %5, align 4, !tbaa !23     ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader.preheader, label %._crit_edge38

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.w = load ptr, ptr %3, align 8, !tbaa !42, !noalias !351
  %i.x = load i64, ptr %i.l, align 8, !tbaa !46, !noalias !351
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !351
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.aj, %._crit_edge ], [ %i.r, %.preheader.preheader ]
  %i.ad = phi i32 [ %i.ak, %._crit_edge ], [ %i.u, %.preheader.preheader ] ; 2 uses
  %.02337 = phi i32 [ %i.al, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02436 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.ab, %.preheader.preheader ] ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load i32, ptr %6, align 4, !tbaa !23
  %.pre45 = load i32, ptr %7, align 4, !tbaa !23
  br label %.lr.ph

._crit_edge38.loopexit:                           ; preds = %._crit_edge
  %.pre47 = load i32, ptr %i.b, align 4, !tbaa !23
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %.preheader.lr.ph, %._crit_edge38.loopexit, %.noexc
  %i.af = phi i32 [ %i.q, %.noexc ], [ %.pre47, %._crit_edge38.loopexit ], [ %i.q, %.preheader.lr.ph ] ; 2 uses
  %i.ag = phi i32 [ %i.r, %.noexc ], [ %i.aj, %._crit_edge38.loopexit ], [ %i.r, %.preheader.lr.ph ]
  %i.ah = phi i32 [ %i.s, %.noexc ], [ %i.aj, %._crit_edge38.loopexit ], [ %i.s, %.preheader.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ai = sext i32 %i.af to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ai
  br i1 %.not.not, label %.noexc, label %._crit_edge41, !llvm.loop !354

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre46 = load i32, ptr %4, align 4, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.aj = phi i32 [ %i.ac, %.preheader ], [ %.pre46, %._crit_edge.loopexit ] ; 4 uses
  %i.ak = phi i32 [ %i.ad, %.preheader ], [ %i.av, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.02436, %.preheader ], [ %i.at, %._crit_edge.loopexit ]
  %i.al = add nuw nsw i32 %.02337, 1              ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.aj
  br i1 %i.am, label %.preheader, label %._crit_edge38.loopexit, !llvm.loop !355

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.an = phi i32 [ %i.aq, %bb.c ], [ %.pre45, %.lr.ph.preheader ]
  %i.ao = phi i32 [ %i.ap, %bb.c ], [ %.pre, %.lr.ph.preheader ]
  %.035 = phi i32 [ %i.au, %bb.c ], [ 0, %.lr.ph.preheader ]
  %.134 = phi ptr [ %i.at, %bb.c ], [ %.02436, %.lr.ph.preheader ] ; 2 uses
  invoke fastcc void @_ZN4ncnnL17softmax_bf16s_sseEPtii(ptr noundef %.134, i32 noundef %i.ao, i32 noundef %i.an)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.ap = load i32, ptr %6, align 4, !tbaa !23    ; 2 uses
  %i.aq = load i32, ptr %7, align 4, !tbaa !23    ; 2 uses
  %i.ar = mul nsw i32 %i.aq, %i.ap
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %.134, i64 %i.as ; 2 uses
  %i.au = add nuw nsw i32 %.035, 1                ; 2 uses
  %i.av = load i32, ptr %5, align 4, !tbaa !23    ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !356

._crit_edge41:                                    ; preds = %._crit_edge38, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge41, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #20
  unreachable
}

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #2

declare void @_ZN4ncnn28softmax_bf16s_sse_avx512bf16EPtii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #11

declare void @_ZN4ncnn35softmax_bf16s_pack16_sse_avx512bf16EPtimiPfS1_(ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn34softmax_bf16s_pack8_sse_avx512bf16EPtimiPfS1_(ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn34softmax_bf16s_pack4_sse_avx512bf16EPtimiPfS1_(ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn34softmax_bf16s_pack1_sse_avx512bf16EPtimiPfS1_(ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v16f32(<16 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.exp.v16f32(<16 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #10

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress norecurse uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 32}
!10 = !{!"_ZTSN4ncnn6OptionE", !11, i64 0, !11, i64 1, !11, i64 2, !11, i64 3, !6, i64 4, !12, i64 8, !12, i64 16, !6, i64 24, !11, i64 28, !11, i64 29, !11, i64 30, !11, i64 31, !11, i64 32, !11, i64 33, !11, i64 34, !11, i64 35, !11, i64 36, !11, i64 37, !11, i64 38, !11, i64 39, !6, i64 40, !11, i64 44, !11, i64 45, !11, i64 46, !11, i64 47, !7, i64 48, !11, i64 49, !11, i64 50, !11, i64 51, !11, i64 52, !11, i64 53, !11, i64 54, !11, i64 55, !11, i64 56, !11, i64 57, !11, i64 58, !11, i64 59, !11, i64 60, !11, i64 61, !11, i64 62, !11, i64 63}
!11 = !{!"bool", !7, i64 0}
!12 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!17, !6, i64 24}
!17 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !18, i64 8, !19, i64 16, !6, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !19, i64 64}
!18 = !{!"p1 int", !13, i64 0}
!19 = !{!"long", !7, i64 0}
!20 = !{!17, !19, i64 16}
!21 = !{!17, !6, i64 40}
!22 = !{!17, !6, i64 44}
!23 = !{!6, !6, i64 0}
!24 = !{!17, !6, i64 48}
!25 = !{!17, !6, i64 52}
!26 = !{!17, !6, i64 56}
!27 = !{!28, !6, i64 208}
!28 = !{!"_ZTSN4ncnn7SoftmaxE", !29, i64 0, !6, i64 208}
!29 = !{!"_ZTSN4ncnn5LayerE", !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !11, i64 12, !11, i64 13, !11, i64 14, !11, i64 15, !11, i64 16, !11, i64 17, !11, i64 18, !11, i64 19, !11, i64 20, !11, i64 21, !11, i64 22, !11, i64 23, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !30, i64 48, !30, i64 80, !33, i64 112, !33, i64 136, !37, i64 160, !37, i64 184}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !19, i64 8, !7, i64 16}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!32 = !{!"p1 omnipotent char", !13, i64 0}
!33 = !{!"_ZTSSt6vectorIiSaIiEE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!37 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!42 = !{!17, !13, i64 0}
!43 = !{!10, !6, i64 4}
!44 = !{!19, !19, i64 0}
!45 = !{!10, !12, i64 16}
!46 = !{!17, !19, i64 64}
!47 = !{!17, !18, i64 8}
!48 = !{!17, !12, i64 32}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !8, i64 0}
!51 = distinct !{null}
!52 = !{!29, !11, i64 11}
!53 = !{!29, !11, i64 12}
!54 = !{!7, !7, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !7, i64 0}
!62 = distinct !{!62, !58, !63, !64}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = !{!"branch_weights", i32 8, i32 56}
!66 = distinct !{!66, !58, !63, !64}
!67 = distinct !{!67, !58}
!68 = distinct !{!68, !58, !64, !63}
!69 = distinct !{!69, !58}
!70 = distinct !{!70, !58}
!71 = distinct !{!71, !58, !63, !64}
!72 = distinct !{!72, !58, !63, !64}
!73 = distinct !{!73, !58}
!74 = distinct !{!74, !58, !64, !63}
!75 = distinct !{!75, !56}
!76 = distinct !{!76, !58}
!77 = distinct !{!77, !58}
!78 = distinct !{!78, !58, !63, !64}
!79 = distinct !{!79, !58, !63, !64}
!80 = distinct !{!80, !58}
!81 = distinct !{!81, !58, !64, !63}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!84 = distinct !{!84, !"_ZN4ncnn3Mat7channelEi"}
!85 = distinct !{!85, !56}
!86 = distinct !{!86, !58}
!87 = distinct !{!87, !58}
!88 = distinct !{!88, !58, !63, !64}
!89 = distinct !{!89, !58, !63, !64}
!90 = distinct !{!90, !58}
!91 = distinct !{!91, !58, !64, !63}
!92 = distinct !{!92, !58}
!93 = distinct !{!93, !58}
!94 = distinct !{!94, !58}
!95 = distinct !{!95, !58}
!96 = distinct !{!96, !58}
!97 = distinct !{!97, !58}
!98 = distinct !{!98, !58}
!99 = distinct !{!99, !58}
!100 = distinct !{!100, !58, !63, !64}
!101 = distinct !{!101, !58, !63, !64}
!102 = distinct !{!102, !58}
!103 = distinct !{!103, !58, !64, !63}
!104 = distinct !{!104, !56}
!105 = distinct !{!105, !58}
!106 = distinct !{!106, !58}
!107 = distinct !{!107, !58}
!108 = distinct !{!108, !58}
!109 = distinct !{!109, !58}
!110 = distinct !{!110, !58}
!111 = distinct !{!111, !58}
!112 = distinct !{!112, !58}
!113 = distinct !{!113, !58}
!114 = distinct !{!114, !58}
!115 = distinct !{!115, !58}
!116 = distinct !{!116, !58}
!117 = distinct !{!117, !58}
!118 = distinct !{!118, !58, !63, !64}
!119 = distinct !{!119, !58, !63, !64}
!120 = distinct !{!120, !58}
!121 = distinct !{!121, !58, !64, !63}
!122 = distinct !{!122, !58}
!123 = distinct !{!123, !56}
!124 = distinct !{!124, !58}
!125 = distinct !{!125, !58}
!126 = distinct !{!126, !58}
!127 = distinct !{!127, !58}
!128 = distinct !{!128, !58}
!129 = distinct !{!129, !58}
!130 = distinct !{!130, !58}
!131 = distinct !{!131, !58}
!132 = distinct !{!132, !58}
!133 = distinct !{!133, !58}
!134 = distinct !{!134, !58}
!135 = distinct !{!135, !58}
!136 = distinct !{!136, !58}
!137 = distinct !{!137, !58}
!138 = distinct !{!138, !58}
!139 = distinct !{!139, !58, !63, !64}
!140 = distinct !{!140, !58, !63, !64}
!141 = distinct !{!141, !58}
end_hunk_2
