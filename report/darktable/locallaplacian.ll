Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
begin_hunk_0_@apply_curve:bb.a
  %i.ih = add i32 %i.c, -1
  %i.ii = mul i32 %i.ih, %2
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ij ; 5 uses
  %wide.trip.count.i = zext i32 %4 to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.il = icmp ult i32 %4, 4
  br i1 %i.il, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.h ]
  %i.im = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.in = mul i32 %2, %i.im
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.io
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ip, ptr align 4 %i.ie, i64 %i.ig, i1 false)
  %i.iq = add i32 %i.c, %i.im
  %i.ir = mul i32 %i.iq, %2
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.is
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.it, ptr align 4 %i.ik, i64 %i.ig, i1 false)
  %i.iu = trunc i64 %indvars.iv.i to i32
  %i.iv = or disjoint i32 %i.iu, 1                ; 2 uses
  %i.iw = mul i32 %2, %i.iv
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ix
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.iy, ptr align 4 %i.ie, i64 %i.ig, i1 false)
  %i.iz = add i32 %i.c, %i.iv
  %i.ja = mul i32 %i.iz, %2
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jc, ptr align 4 %i.ik, i64 %i.ig, i1 false)
  %i.jd = trunc i64 %indvars.iv.i to i32
  %i.je = or disjoint i32 %i.jd, 2                ; 2 uses
  %i.jf = mul i32 %2, %i.je
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jh, ptr align 4 %i.ie, i64 %i.ig, i1 false)
  %i.ji = add i32 %i.c, %i.je
  %i.jj = mul i32 %i.ji, %2
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jl, ptr align 4 %i.ik, i64 %i.ig, i1 false)
  %i.jm = trunc i64 %indvars.iv.i to i32
  %i.jn = or disjoint i32 %i.jm, 3                ; 2 uses
  %i.jo = mul i32 %2, %i.jn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jq, ptr align 4 %i.ie, i64 %i.ig, i1 false)
  %i.jr = add i32 %i.c, %i.jn
  %i.js = mul i32 %i.jr, %2
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ju, ptr align 4 %i.ik, i64 %i.ig, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pad_by_replication.exit.loopexit.unr-lcssa, label %bb.h

pad_by_replication.exit.loopexit.unr-lcssa:       ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pad_by_replication.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %pad_by_replication.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %pad_by_replication.exit.loopexit.unr-lcssa ]
  %lcmp.mod329 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod329)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.jv = trunc nuw nsw i64 %indvars.iv.i.epil to i32 ; 2 uses
  %i.jw = mul i32 %2, %i.jv
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jy, ptr align 4 %i.ie, i64 %i.ig, i1 false)
  %i.jz = add i32 %i.c, %i.jv
  %i.ka = mul i32 %i.jz, %2
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kc, ptr align 4 %i.ik, i64 %i.ig, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %pad_by_replication.exit, label %bb.i, !llvm.loop !181

pad_by_replication.exit:                          ; preds = %pad_by_replication.exit.loopexit.unr-lcssa, %bb.i, %.lr.ph66.split.split, %._crit_edge67
  ret void

iter.check:                                       ; preds = %.preheader55.preheader, %..preheader_crit_edge
  %indvars.iv84 = phi i64 [ %i.e, %.preheader55.preheader ], [ %indvars.iv.next85, %..preheader_crit_edge ] ; 2 uses
  %i.kd = trunc nuw i64 %indvars.iv84 to i32
  %i.ke = mul i32 %2, %i.kd
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kf ; 4 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.e
  %.pre = load float, ptr %i.kh, align 4, !tbaa !21 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check145, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %index ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 96
  store <8 x float> %broadcast.splat, ptr %i.ki, align 4, !tbaa !21
  store <8 x float> %broadcast.splat, ptr %i.kj, align 4, !tbaa !21
  store <8 x float> %broadcast.splat, ptr %i.kk, align 4, !tbaa !21
  store <8 x float> %broadcast.splat, ptr %i.kl, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.km = icmp eq i64 %index.next, %n.vec
  br i1 %i.km, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert147 = insertelement <4 x float> poison, float %.pre, i64 0
  %broadcast.splat148 = shufflevector <4 x float> %broadcast.splatinsert147, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index149 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next150, %vec.epilog.vector.body ] ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %index149
  store <4 x float> %broadcast.splat148, ptr %i.kn, align 4, !tbaa !21
  %index.next150 = add nuw i64 %index149, 4       ; 2 uses
  %i.ko = icmp eq i64 %index.next150, %n.vec146
  br i1 %i.ko, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !183

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n151, label %..preheader_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec146, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

..preheader_crit_edge:                            ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge67, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv
  store float %.pre, ptr %i.kp, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %..preheader_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !184
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @ll_pad_input(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef range(i32 1, 536870913) %3, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %4, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #7 {
bb.a:
  %i.a = shl nuw nsw i32 %3, 1                    ; 2 uses
  %i.b = add nuw nsw i32 %i.a, %1
  store i32 %i.b, ptr %4, align 4, !tbaa !19
  %i.c = add nuw nsw i32 %i.a, %2                 ; 2 uses
  store i32 %i.c, ptr %5, align 4, !tbaa !19
  %i.d = load i32, ptr %4, align 4, !tbaa !19
  %i.e = sext i32 %i.d to i64
  %i.f = zext nneg i32 %i.c to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = mul i64 %i.g, %i.e
  %i.i = tail call ptr @dt_alloc_aligned(i64 noundef %i.h) #14 ; 45 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.i, i64 64) ]
  %.not = icmp eq ptr %6, null                    ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %6, align 8, !tbaa !18
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %.preheader440, label %bb.ab

.preheader440:                                    ; preds = %bb.b
  %i.l = load i32, ptr %4, align 4, !tbaa !19     ; 11 uses
  %i.m = zext nneg i32 %1 to i64
  %i.n = zext nneg i32 %3 to i64                  ; 4 uses
  %i.o = sext i32 %i.l to i64                     ; 3 uses
  %wide.trip.count486 = zext nneg i32 %2 to i64   ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 9 uses
  %7 = add nsw i32 %1, -1
  %i.p = mul nuw nsw i64 %wide.trip.count486, %wide.trip.count
  %i.q = shl i64 %i.p, 4
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.r, i64 -12
  %i.s = add i32 %i.l, 1
  %i.t = mul i32 %3, %i.s
  %i.u = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep592 = getelementptr i8, ptr %i.i, i64 %i.u
  %min.iters.check = icmp samesign ult i32 %1, 5
  %min.iters.check594 = icmp samesign ult i32 %1, 33
  %i.v = and i64 %wide.trip.count, 31             ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 32, i64 %i.v         ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.x     ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.x, 5
  %i.y = and i64 %wide.trip.count, 3              ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec601 = sub nsw i64 %wide.trip.count, %i.aa ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.preheader440, %.unr-lcssa
  %indvars.iv483 = phi i64 [ 0, %.preheader440 ], [ %indvars.iv.next484, %.unr-lcssa ] ; 4 uses
  %8 = mul nuw nsw i64 %indvars.iv483, %i.m       ; 10 uses
  %9 = trunc i64 %indvars.iv483 to i32
  %i.ab = add i32 %3, %9
  %10 = mul i32 %i.ab, %i.l
  %invariant.op = add i32 %3, %10                 ; 9 uses
  %i.ac = add i32 %invariant.op, %7
  %11 = icmp slt i32 %i.ac, %invariant.op
  %or.cond716 = select i1 %min.iters.check, i1 true, i1 %11
  br i1 %or.cond716, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %12 = trunc i64 %indvars.iv483 to i32
  %13 = mul i32 %i.l, %12
  %14 = add i32 %13, %i.t
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2                        ; 2 uses
  %scevgep593 = getelementptr i8, ptr %scevgep592, i64 %16
  %scevgep591 = getelementptr i8, ptr %i.i, i64 %16
  %bound0 = icmp ult ptr %0, %scevgep593
  %bound1 = icmp ult ptr %scevgep591, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check594, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 6 uses
  %i.ad = or disjoint i64 %index, 8
  %i.ae = or disjoint i64 %index, 16
  %i.af = or disjoint i64 %index, 24
  %i.ag = add nuw nsw i64 %index, %8
  %i.ah = add nuw nsw i64 %i.ad, %8
  %i.ai = add nuw nsw i64 %i.ae, %8
  %i.aj = add nuw nsw i64 %i.af, %8
  %i.ak = shl nuw nsw i64 %i.ag, 4
  %i.al = shl nuw nsw i64 %i.ah, 4
  %i.am = shl nuw nsw i64 %i.ai, 4
  %i.an = shl nuw nsw i64 %i.aj, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %wide.vec = load <32 x float>, ptr %i.ao, align 4, !tbaa !21, !alias.scope !214, !noalias !215
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec595 = load <32 x float>, ptr %i.ap, align 4, !tbaa !21, !alias.scope !214, !noalias !215
  %strided.vec596 = shufflevector <32 x float> %wide.vec595, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec597 = load <32 x float>, ptr %i.aq, align 4, !tbaa !21, !alias.scope !214, !noalias !215
  %strided.vec598 = shufflevector <32 x float> %wide.vec597, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec599 = load <32 x float>, ptr %i.ar, align 4, !tbaa !21, !alias.scope !214, !noalias !215
  %strided.vec600 = shufflevector <32 x float> %wide.vec599, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.as = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec596, splat (float f0x3C23D70A)
  %i.au = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec598, splat (float f0x3C23D70A)
  %i.av = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec600, splat (float f0x3C23D70A)
  %i.aw = trunc nuw nsw i64 %index to i32
  %i.ax = add i32 %invariant.op, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ay ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store <8 x float> %i.as, ptr %i.az, align 4, !tbaa !21, !alias.scope !215
  store <8 x float> %i.at, ptr %i.ba, align 4, !tbaa !21, !alias.scope !215
  store <8 x float> %i.au, ptr %i.bb, align 4, !tbaa !21, !alias.scope !215
  store <8 x float> %i.av, ptr %i.bc, align 4, !tbaa !21, !alias.scope !215
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !188

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec601, %vec.epilog.vector.body ] ; 4 uses
  %i.be = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bf = add nuw nsw i64 %indvars.iv.prol, %8
  %.idx.prol = shl nuw nsw i64 %i.bf, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !21
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, f0x3C23D70A
  %i.bj = trunc nuw nsw i64 %indvars.iv.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.bj
  %i.bk = sext i32 %.reass.prol to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bk
  store float %i.bi, ptr %i.bl, align 4, !tbaa !21
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !189

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %.unr-lcssa, label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index602 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next605, %vec.epilog.vector.body ] ; 3 uses
  %i.bo = add nuw nsw i64 %index602, %8
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %wide.vec603 = load <16 x float>, ptr %i.bq, align 4, !tbaa !21, !alias.scope !214, !noalias !215
  %strided.vec604 = shufflevector <16 x float> %wide.vec603, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.br = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec604, splat (float f0x3C23D70A)
  %i.bs = trunc nuw nsw i64 %index602 to i32
  %i.bt = add i32 %invariant.op, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bu
  store <4 x float> %i.br, ptr %i.bv, align 4, !tbaa !21, !alias.scope !215
  %index.next605 = add nuw i64 %index602, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next605, %n.vec601
  br i1 %i.bw, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !190

.preheader438:                                    ; preds = %.unr-lcssa
  %i.bx = load i32, ptr %5, align 4, !tbaa !19    ; 3 uses
  %i.by = sub nsw i32 %i.bx, %3                   ; 3 uses
  %factor.op.mul448 = shl i32 %1, 2               ; 2 uses
  %i.bz = icmp slt i32 %3, %i.by
  br i1 %i.bz, label %.preheader437.lr.ph, label %.preheader435

.preheader437.lr.ph:                              ; preds = %.preheader438
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !26 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !216
  %invariant.op444 = sub i32 %i.cc, %3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !217
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %wide.trip.count492 = zext nneg i32 %i.by to i64
  br label %.preheader437

.unr-lcssa:                                       ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.prol.loopexit
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond487.not = icmp eq i64 %indvars.iv.next484, %wide.trip.count486
  br i1 %exitcond487.not, label %.preheader438, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ck = add nuw nsw i64 %indvars.iv, %8
  %.idx = shl nuw nsw i64 %i.ck, 4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !21
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, f0x3C23D70A
  %i.co = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.co
  %i.cp = sext i32 %.reass to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.cp
  store float %i.cn, ptr %i.cq, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = add nuw nsw i64 %indvars.iv.next, %8
  %.idx.1 = shl nuw nsw i64 %i.cr, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !21
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, f0x3C23D70A
  %i.cv = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.cv
  %i.cw = sext i32 %.reass.1 to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.cw
  store float %i.cu, ptr %i.cx, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cy = add nuw nsw i64 %indvars.iv.next.1, %8
  %.idx.2 = shl nuw nsw i64 %i.cy, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.2
  %i.da = load float, ptr %i.cz, align 4, !tbaa !21
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, f0x3C23D70A
  %i.dc = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.dc
  %i.dd = sext i32 %.reass.2 to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dd
  store float %i.db, ptr %i.de, align 4, !tbaa !21
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.df = add nuw nsw i64 %indvars.iv.next.2, %8
  %.idx.3 = shl nuw nsw i64 %i.df, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.3
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !21
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, f0x3C23D70A
  %i.dj = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.dj
  %i.dk = sext i32 %.reass.3 to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dk
  store float %i.di, ptr %i.dl, align 4, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !191

.preheader437:                                    ; preds = %.preheader437.lr.ph, %bb.c
  %indvars.iv489 = phi i64 [ %i.n, %.preheader437.lr.ph ], [ %indvars.iv.next490, %bb.c ] ; 3 uses
  %i.dm = sub nuw nsw i64 %indvars.iv489, %i.n    ; 2 uses
  %i.dn = trunc i64 %i.dm to i32
  %i.do = add i32 %i.cf, %i.dn
  %i.dp = sitofp reassoc nsz arcp contract afn i32 %i.do to float
  %i.dq = trunc nuw nsw i64 %i.dm to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul448, %i.dq
  %i.dr = sext i32 %factor.op.mul.reass to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dr
  %i.dt = insertelement <2 x float> poison, float %i.dp, i64 1
  %.pn = trunc i64 %indvars.iv489 to i32
  %.sink577 = mul nsw i32 %i.l, %.pn
  br label %bb.d

.lr.ph455:                                        ; preds = %bb.c
  %i.du = add nuw nsw i32 %3, %1                  ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.l
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %i.dv, label %.lr.ph455.split, label %.preheader435

.lr.ph455.split:                                  ; preds = %.lr.ph455
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !26 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !216
  %invariant.op452 = sub i32 %i.ec, %3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !217
  %i.eg = zext nneg i32 %i.du to i64
  %wide.trip.count502 = zext nneg i32 %i.by to i64
  br label %.lr.ph

bb.c:                                             ; preds = %bb.i
  %indvars.iv.next490 = add nuw nsw i64 %indvars.iv489, 1 ; 2 uses
  %exitcond493.not = icmp eq i64 %indvars.iv.next490, %wide.trip.count492
  br i1 %exitcond493.not, label %.lr.ph455, label %.preheader437

bb.d:                                             ; preds = %.preheader437, %bb.i
  %.0384447 = phi i32 [ 0, %.preheader437 ], [ %i.gq, %bb.i ] ; 3 uses
  %.reass445 = add i32 %.0384447, %invariant.op444
  %i.eh = sitofp reassoc nsz arcp contract afn i32 %.reass445 to float
  %i.ei = load float, ptr %i.cd, align 4, !tbaa !28
  %i.ej = insertelement <2 x float> %i.dt, float %i.eh, i64 0
  %i.ek = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fdiv reassoc nsz arcp contract afn <2 x float> %i.ej, %i.el ; 3 uses
  %i.en = extractelement <2 x float> %i.em, i64 0
  %i.eo = fcmp reassoc nsz arcp contract afn olt float %i.en, 0.000000e+00
  br i1 %i.eo, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ep = load ptr, ptr %i.cg, align 8, !tbaa !29 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !30
  %i.es = sitofp reassoc nsz arcp contract afn i32 %i.er to float ; 2 uses
  %i.et = extractelement <2 x float> %i.em, i64 1 ; 3 uses
  %i.eu = fcmp reassoc nsz arcp contract afn oge float %i.et, %i.es
  %i.ev = fcmp reassoc nsz arcp contract afn olt float %i.et, 0.000000e+00
  %or.cond = or i1 %i.ev, %i.eu
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !218
  %i.ey = sitofp reassoc nsz arcp contract afn i32 %i.ex to float ; 2 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ult float %i.et, %i.ey
  br i1 %i.ez, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.fa = load float, ptr %i.ds, align 4, !tbaa !21
  %i.fb = fmul reassoc nsz arcp contract afn float %i.fa, f0x3C23D70A
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.fc = load <2 x i32>, ptr %i.ci, align 8, !tbaa !19 ; 3 uses
  %i.fd = extractelement <2 x i32> %i.fc, i64 0
  %i.fe = load <2 x i32>, ptr %i.ch, align 8, !tbaa !19 ; 2 uses
  %i.ff = sitofp <2 x i32> %i.fe to <2 x float>
  %i.fg = fmul reassoc nsz arcp contract afn <2 x float> %i.em, %i.ff
  %i.fh = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 1
  %i.fj = fdiv reassoc nsz arcp contract afn <2 x float> %i.fg, %i.fi
  %i.fk = sub nsw <2 x i32> %i.fc, %i.fe
  %i.fl = sdiv <2 x i32> %i.fk, splat (i32 2)
  %i.fm = sitofp <2 x i32> %i.fl to <2 x float>
  %i.fn = fadd reassoc nsz arcp contract afn <2 x float> %i.fj, %i.fm ; 3 uses
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.fp = add nsw <2 x i32> %i.fc, splat (i32 -1)
  %i.fq = sitofp <2 x i32> %i.fp to <2 x float>   ; 3 uses
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.fs = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.fr, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ft = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.fo, %i.fs ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.fo, %i.fs ; 2 uses
  %i.fv = extractelement <4 x i1> %i.ft, i64 1
  %i.fw = extractelement <2 x float> %i.fn, i64 0
  %spec.select = select reassoc nsz arcp contract afn i1 %i.fv, float 0.000000e+00, float %i.fw
  %i.fx = extractelement <4 x i1> %i.fu, i64 3
  %i.fy = extractelement <2 x float> %i.fq, i64 0
  %i.fz = select reassoc nsz arcp contract afn i1 %i.fx, float %i.fy, float %spec.select
  %i.ga = fptosi float %i.fz to i32
  %i.gb = extractelement <4 x i1> %i.ft, i64 0
  %i.gc = extractelement <2 x float> %i.fn, i64 1
  %spec.select424 = select reassoc nsz arcp contract afn i1 %i.gb, float 0.000000e+00, float %i.gc
  %i.gd = extractelement <4 x i1> %i.fu, i64 2
  %i.ge = extractelement <2 x float> %i.fq, i64 1
  %i.gf = select reassoc nsz arcp contract afn i1 %i.gd, float %i.ge, float %spec.select424
  %i.gg = fptosi float %i.gf to i32
  %i.gh = load ptr, ptr %i.cj, align 8, !tbaa !15
  %i.gi = mul nsw i32 %i.fd, %i.gg
  %i.gj = add nsw i32 %i.gi, %i.ga
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi float [ %i.gm, %bb.h ], [ %i.fb, %bb.g ]
  %i.gn = add nsw i32 %.sink577, %.0384447
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.go
  store float %.sink, ptr %i.gp, align 4, !tbaa !21
  %i.gq = add nuw nsw i32 %.0384447, 1            ; 2 uses
  %exitcond488.not = icmp eq i32 %i.gq, %3
  br i1 %exitcond488.not, label %bb.c, label %bb.d

.preheader435:                                    ; preds = %._crit_edge, %.preheader438, %.lr.ph455
  %i.gr = icmp sgt i32 %i.l, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br i1 %i.gr, label %.preheader435.split, label %pad_by_replication.exit

.preheader435.split:                              ; preds = %.preheader435
  %i.gw = mul nuw nsw i32 %i.l, %3
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !26 ; 3 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !216
  %invariant.op459 = sub i32 %i.gz, %3
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !217
  %invariant.op462 = sub i32 %i.hc, %3
  %i.hd = zext nneg i32 %i.gw to i64
  %i.he = zext nneg i32 %i.l to i64               ; 2 uses
  %wide.trip.count512 = zext nneg i32 %3 to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.hd
  br label %.preheader434

.lr.ph:                                           ; preds = %.lr.ph455.split, %._crit_edge
  %indvars.iv499 = phi i64 [ %i.n, %.lr.ph455.split ], [ %indvars.iv.next500, %._crit_edge ] ; 3 uses
  %i.hf = sub nuw nsw i64 %indvars.iv499, %i.n    ; 2 uses
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = add i32 %i.ef, %i.hg
  %i.hi = sitofp reassoc nsz arcp contract afn i32 %i.hh to float
  %i.hj = mul nsw i64 %indvars.iv499, %i.o
  %i.hk = trunc i64 %i.hf to i32
  %i.hl = add i32 %i.hk, 1
  %i.hm = mul i32 %factor.op.mul448, %i.hl
  %i.hn = add i32 %i.hm, -4
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ho
  %i.hq = insertelement <2 x float> poison, float %i.hi, i64 1
  %.sink580 = getelementptr [4 x i8], ptr %i.i, i64 %i.hj
  br label %bb.j

._crit_edge:                                      ; preds = %bb.o
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 2 uses
  %exitcond503.not = icmp eq i64 %indvars.iv.next500, %wide.trip.count502
  br i1 %exitcond503.not, label %.preheader435, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv494 = phi i64 [ %i.eg, %.lr.ph ], [ %indvars.iv.next495, %bb.o ] ; 3 uses
  %i.hr = trunc nsw i64 %indvars.iv494 to i32
  %.reass453 = add i32 %invariant.op452, %i.hr
  %i.hs = sitofp reassoc nsz arcp contract afn i32 %.reass453 to float
  %i.ht = load float, ptr %i.ed, align 4, !tbaa !28
  %i.hu = insertelement <2 x float> %i.hq, float %i.hs, i64 0
  %i.hv = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fdiv reassoc nsz arcp contract afn <2 x float> %i.hu, %i.hw ; 3 uses
  %i.hy = extractelement <2 x float> %i.hx, i64 0
  %i.hz = fcmp reassoc nsz arcp contract afn olt float %i.hy, 0.000000e+00
end_hunk_0
begin_hunk_1_@ll_pad_input:bb.a

bb.p:                                             ; preds = %.preheader434, %bb.u
  %indvars.iv504 = phi i64 [ 0, %.preheader434 ], [ %indvars.iv.next505, %bb.u ] ; 4 uses
  %i.ko = trunc nuw nsw i64 %indvars.iv504 to i32
  %.reass460 = add i32 %invariant.op459, %i.ko
  %i.kp = sitofp reassoc nsz arcp contract afn i32 %.reass460 to float
  %i.kq = load float, ptr %i.ha, align 4, !tbaa !28
  %i.kr = insertelement <2 x float> %i.kc, float %i.kp, i64 0
  %i.ks = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fdiv reassoc nsz arcp contract afn <2 x float> %i.kr, %i.kt ; 3 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0
  %i.kw = fcmp reassoc nsz arcp contract afn olt float %i.kv, 0.000000e+00
  br i1 %i.kw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kx = load ptr, ptr %i.gs, align 8, !tbaa !29 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !30
  %i.la = sitofp reassoc nsz arcp contract afn i32 %i.kz to float ; 2 uses
  %i.lb = extractelement <2 x float> %i.ku, i64 1 ; 3 uses
  %i.lc = fcmp reassoc nsz arcp contract afn oge float %i.lb, %i.la
  %i.ld = fcmp reassoc nsz arcp contract afn olt float %i.lb, 0.000000e+00
  %or.cond5 = or i1 %i.ld, %i.lc
  br i1 %or.cond5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !218
  %i.lg = sitofp reassoc nsz arcp contract afn i32 %i.lf to float ; 2 uses
  %i.lh = fcmp reassoc nsz arcp contract afn ult float %i.lb, %i.lg
  br i1 %i.lh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv504
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.li = load <2 x i32>, ptr %i.gu, align 8, !tbaa !19 ; 3 uses
  %i.lj = extractelement <2 x i32> %i.li, i64 0
  %i.lk = load <2 x i32>, ptr %i.gt, align 8, !tbaa !19 ; 2 uses
  %i.ll = sitofp <2 x i32> %i.lk to <2 x float>
  %i.lm = fmul reassoc nsz arcp contract afn <2 x float> %i.ku, %i.ll
  %i.ln = insertelement <2 x float> poison, float %i.la, i64 0
  %i.lo = insertelement <2 x float> %i.ln, float %i.lg, i64 1
  %i.lp = fdiv reassoc nsz arcp contract afn <2 x float> %i.lm, %i.lo
  %i.lq = sub nsw <2 x i32> %i.li, %i.lk
  %i.lr = sdiv <2 x i32> %i.lq, splat (i32 2)
  %i.ls = sitofp <2 x i32> %i.lr to <2 x float>
  %i.lt = fadd reassoc nsz arcp contract afn <2 x float> %i.lp, %i.ls ; 3 uses
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.lv = add nsw <2 x i32> %i.li, splat (i32 -1)
  %i.lw = sitofp <2 x i32> %i.lv to <2 x float>   ; 3 uses
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ly = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.lx, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.lz = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.lu, %i.ly ; 2 uses
  %i.ma = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.lu, %i.ly ; 2 uses
  %i.mb = extractelement <4 x i1> %i.lz, i64 1
  %i.mc = extractelement <2 x float> %i.lt, i64 0
  %spec.select427 = select reassoc nsz arcp contract afn i1 %i.mb, float 0.000000e+00, float %i.mc
  %i.md = extractelement <4 x i1> %i.ma, i64 3
  %i.me = extractelement <2 x float> %i.lw, i64 0
  %i.mf = select reassoc nsz arcp contract afn i1 %i.md, float %i.me, float %spec.select427
  %i.mg = fptosi float %i.mf to i32
  %i.mh = extractelement <4 x i1> %i.lz, i64 0
  %i.mi = extractelement <2 x float> %i.lt, i64 1
  %spec.select428 = select reassoc nsz arcp contract afn i1 %i.mh, float 0.000000e+00, float %i.mi
  %i.mj = extractelement <4 x i1> %i.ma, i64 2
  %i.mk = extractelement <2 x float> %i.lw, i64 1
  %i.ml = select reassoc nsz arcp contract afn i1 %i.mj, float %i.mk, float %spec.select428
  %i.mm = fptosi float %i.ml to i32
  %i.mn = load ptr, ptr %i.gv, align 8, !tbaa !15
  %i.mo = mul nsw i32 %i.lj, %i.mm
  %i.mp = add nsw i32 %i.mo, %i.mg
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.mq
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink583.in = phi ptr [ %i.mr, %bb.t ], [ %gep, %bb.s ]
  %.sink583 = load float, ptr %.sink583.in, align 4, !tbaa !21
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.sink585, i64 %indvars.iv504
  store float %.sink583, ptr %i.ms, align 4, !tbaa !21
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %exitcond508.not = icmp eq i64 %indvars.iv.next505, %i.he
  br i1 %exitcond508.not, label %._crit_edge458, label %bb.p

.preheader432:                                    ; preds = %.preheader432.lr.ph.split, %._crit_edge466
  %indvars.iv519 = phi i64 [ %i.kn, %.preheader432.lr.ph.split ], [ %indvars.iv.next520, %._crit_edge466 ] ; 3 uses
  %i.mt = trunc nsw i64 %indvars.iv519 to i32
  %.reass471 = add i32 %invariant.op470, %i.mt
  %i.mu = sitofp reassoc nsz arcp contract afn i32 %.reass471 to float
  %i.mv = mul nuw nsw i64 %indvars.iv519, %i.o
  %i.mw = insertelement <2 x float> poison, float %i.mu, i64 1
  %.sink588 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.mv
  br label %bb.v

._crit_edge466:                                   ; preds = %bb.aa
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %exitcond523.not = icmp eq i64 %indvars.iv.next520, %wide.trip.count522
  br i1 %exitcond523.not, label %pad_by_replication.exit, label %.preheader432

bb.v:                                             ; preds = %.preheader432, %bb.aa
  %indvars.iv514 = phi i64 [ 0, %.preheader432 ], [ %indvars.iv.next515, %bb.aa ] ; 4 uses
  %i.mx = trunc nuw nsw i64 %indvars.iv514 to i32
  %.reass468 = add i32 %invariant.op467, %i.mx
  %i.my = sitofp reassoc nsz arcp contract afn i32 %.reass468 to float
  %i.mz = load float, ptr %i.kj, align 4, !tbaa !28
  %i.na = insertelement <2 x float> %i.mw, float %i.my, i64 0
  %i.nb = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.nc = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nd = fdiv reassoc nsz arcp contract afn <2 x float> %i.na, %i.nc ; 3 uses
  %i.ne = extractelement <2 x float> %i.nd, i64 0
  %i.nf = fcmp reassoc nsz arcp contract afn olt float %i.ne, 0.000000e+00
  br i1 %i.nf, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ng = load ptr, ptr %i.gs, align 8, !tbaa !29 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !30
  %i.nj = sitofp reassoc nsz arcp contract afn i32 %i.ni to float ; 2 uses
  %i.nk = extractelement <2 x float> %i.nd, i64 1 ; 3 uses
  %i.nl = fcmp reassoc nsz arcp contract afn oge float %i.nk, %i.nj
  %i.nm = fcmp reassoc nsz arcp contract afn olt float %i.nk, 0.000000e+00
  %or.cond7 = or i1 %i.nm, %i.nl
  br i1 %or.cond7, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !218
  %i.np = sitofp reassoc nsz arcp contract afn i32 %i.no to float ; 2 uses
  %i.nq = fcmp reassoc nsz arcp contract afn ult float %i.nk, %i.np
  br i1 %i.nq, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %gep573 = getelementptr [4 x i8], ptr %invariant.gep572, i64 %indvars.iv514
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.nr = load <2 x i32>, ptr %i.gu, align 8, !tbaa !19 ; 3 uses
  %i.ns = extractelement <2 x i32> %i.nr, i64 0
  %i.nt = load <2 x i32>, ptr %i.gt, align 8, !tbaa !19 ; 2 uses
  %i.nu = sitofp <2 x i32> %i.nt to <2 x float>
  %i.nv = fmul reassoc nsz arcp contract afn <2 x float> %i.nd, %i.nu
  %i.nw = insertelement <2 x float> poison, float %i.nj, i64 0
  %i.nx = insertelement <2 x float> %i.nw, float %i.np, i64 1
  %i.ny = fdiv reassoc nsz arcp contract afn <2 x float> %i.nv, %i.nx
  %i.nz = sub nsw <2 x i32> %i.nr, %i.nt
  %i.oa = sdiv <2 x i32> %i.nz, splat (i32 2)
  %i.ob = sitofp <2 x i32> %i.oa to <2 x float>
  %i.oc = fadd reassoc nsz arcp contract afn <2 x float> %i.ny, %i.ob ; 3 uses
  %i.od = shufflevector <2 x float> %i.oc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.oe = add nsw <2 x i32> %i.nr, splat (i32 -1)
  %i.of = sitofp <2 x i32> %i.oe to <2 x float>   ; 3 uses
  %i.og = shufflevector <2 x float> %i.of, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.oh = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.og, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.oi = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.od, %i.oh ; 2 uses
  %i.oj = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.od, %i.oh ; 2 uses
  %i.ok = extractelement <4 x i1> %i.oi, i64 1
  %i.ol = extractelement <2 x float> %i.oc, i64 0
  %spec.select429 = select reassoc nsz arcp contract afn i1 %i.ok, float 0.000000e+00, float %i.ol
  %i.om = extractelement <4 x i1> %i.oj, i64 3
  %i.on = extractelement <2 x float> %i.of, i64 0
  %i.oo = select reassoc nsz arcp contract afn i1 %i.om, float %i.on, float %spec.select429
  %i.op = fptosi float %i.oo to i32
  %i.oq = extractelement <4 x i1> %i.oi, i64 0
  %i.or = extractelement <2 x float> %i.oc, i64 1
  %spec.select430 = select reassoc nsz arcp contract afn i1 %i.oq, float 0.000000e+00, float %i.or
  %i.os = extractelement <4 x i1> %i.oj, i64 2
  %i.ot = extractelement <2 x float> %i.of, i64 1
  %i.ou = select reassoc nsz arcp contract afn i1 %i.os, float %i.ot, float %spec.select430
  %i.ov = fptosi float %i.ou to i32
  %i.ow = load ptr, ptr %i.gv, align 8, !tbaa !15
  %i.ox = mul nsw i32 %i.ns, %i.ov
  %i.oy = add nsw i32 %i.ox, %i.op
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.ow, i64 %i.oz
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink586.in = phi ptr [ %i.pa, %bb.z ], [ %gep573, %bb.y ]
  %.sink586 = load float, ptr %.sink586.in, align 4, !tbaa !21
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.sink588, i64 %indvars.iv514
  store float %.sink586, ptr %i.pb, align 4, !tbaa !21
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %exitcond518.not = icmp eq i64 %indvars.iv.next515, %wide.trip.count517
  br i1 %exitcond518.not, label %._crit_edge466, label %bb.v

bb.ab:                                            ; preds = %bb.b, %bb.a
  %i.pc = shl i32 %1, 2                           ; 5 uses
  %i.pd = load i32, ptr %4, align 4, !tbaa !19    ; 19 uses
  %i.pe = add nuw i32 %3, %1                      ; 2 uses
  %i.pf = icmp slt i32 %i.pe, %i.pd
  %i.pg = sext i32 %i.pe to i64                   ; 8 uses
  %i.ph = sext i32 %i.pc to i64                   ; 2 uses
  %i.pi = zext nneg i32 %3 to i64
  %i.pj = sext i32 %i.pd to i64                   ; 10 uses
  %i.pk = zext nneg i32 %1 to i64
  %wide.trip.count542 = zext nneg i32 %2 to i64   ; 4 uses
  %wide.trip.count527 = zext nneg i32 %3 to i64   ; 14 uses
  %wide.trip.count532 = zext nneg i32 %1 to i64   ; 9 uses
  %i.pl = mul nsw i64 %i.pj, %wide.trip.count527
  %i.pm = add nsw i64 %i.pl, %i.pg
  %i.pn = shl i64 %i.pm, 2
  %scevgep607 = getelementptr i8, ptr %i.i, i64 %i.pn
  %i.po = add nuw nsw i64 %wide.trip.count542, %wide.trip.count527
  %i.pp = shl nuw nsw i64 %i.po, 2
  %i.pq = mul i64 %i.pp, %i.pj
  %scevgep608 = getelementptr i8, ptr %i.i, i64 %i.pq
  %scevgep609 = getelementptr i8, ptr %0, i64 4
  %i.pr = add i32 %i.pc, -4
  %i.ps = sub nsw i64 %i.pj, %i.pg                ; 7 uses
  %17 = add nsw i32 %1, -1
  %i.pt = mul nuw nsw i64 %wide.trip.count542, %wide.trip.count532
  %i.pu = shl i64 %i.pt, 4
  %i.pv = getelementptr i8, ptr %0, i64 %i.pu
  %scevgep641 = getelementptr i8, ptr %i.pv, i64 -12
  %i.pw = add i32 %i.pd, 1
  %i.px = mul i32 %3, %i.pw
  %i.py = shl nuw nsw i64 %wide.trip.count532, 2
  %scevgep643 = getelementptr i8, ptr %i.i, i64 %i.py
  %i.pz = mul nsw i64 %i.pj, %wide.trip.count527
  %i.qa = shl i64 %i.pz, 2
  %scevgep680 = getelementptr i8, ptr %i.i, i64 %i.qa
  %i.qb = add nsw i64 %wide.trip.count542, -1     ; 2 uses
  %i.qc = mul nsw i64 %i.qb, %i.pj
  %i.qd = shl i64 %i.qc, 2
  %i.qe = shl nsw i64 %i.pj, 2
  %i.qf = add nsw i64 %i.qe, 4
  %i.qg = mul i64 %i.qf, %wide.trip.count527
  %i.qh = getelementptr i8, ptr %i.i, i64 %i.qd
  %scevgep681 = getelementptr i8, ptr %i.qh, i64 %i.qg
  %i.qi = mul nsw i64 %i.qb, %i.ph
  %i.qj = shl i64 %i.qi, 2
  %i.qk = getelementptr i8, ptr %0, i64 %i.qj
  %scevgep682 = getelementptr i8, ptr %i.qk, i64 4
  %min.iters.check688 = icmp samesign ult i32 %3, 4
  %bound0683 = icmp ult ptr %scevgep680, %scevgep682
  %bound1684 = icmp ult ptr %0, %scevgep681
  %found.conflict685 = and i1 %bound0683, %bound1684
  %i.ql = or i32 %i.pc, %i.pd
  %i.qm = icmp slt i32 %i.ql, 0
  %i.qn = or i1 %found.conflict685, %i.qm
  %min.iters.check690 = icmp samesign ult i32 %3, 32
  %i.qo = and i64 %wide.trip.count527, 28
  %n.vec692 = and i64 %wide.trip.count527, 1073741792 ; 4 uses
  %cmp.n699 = icmp eq i64 %n.vec692, %wide.trip.count527
  %min.epilog.iters.check704 = icmp eq i64 %i.qo, 0
  %n.vec706 = and i64 %wide.trip.count527, 1073741820 ; 3 uses
  %cmp.n713 = icmp eq i64 %n.vec706, %wide.trip.count527
  %min.iters.check648 = icmp samesign ult i32 %1, 5
  %min.iters.check650 = icmp samesign ult i32 %1, 33
  %i.qp = and i64 %wide.trip.count532, 31         ; 2 uses
  %i.qq = icmp eq i64 %i.qp, 0
  %i.qr = select i1 %i.qq, i64 32, i64 %i.qp      ; 2 uses
  %n.vec652 = sub nsw i64 %wide.trip.count532, %i.qr ; 3 uses
  %min.epilog.iters.check669 = icmp samesign ult i64 %i.qr, 5
  %i.qs = and i64 %wide.trip.count532, 3          ; 2 uses
  %i.qt = icmp eq i64 %i.qs, 0
  %i.qu = select i1 %i.qt, i64 4, i64 %i.qs
  %n.vec671 = sub nsw i64 %wide.trip.count532, %i.qu ; 2 uses
  %min.iters.check614 = icmp ult i64 %i.ps, 4
  %stride.check = icmp slt i32 %i.pd, 0
  %min.iters.check616 = icmp ult i64 %i.ps, 32
  %i.qv = and i64 %i.ps, 28
  %n.vec618 = and i64 %i.ps, -32                  ; 4 uses
  %i.qw = add nsw i64 %n.vec618, %i.pg
  %cmp.n = icmp eq i64 %i.ps, %n.vec618
  %min.epilog.iters.check628 = icmp eq i64 %i.qv, 0
  %n.vec630 = and i64 %i.ps, -4                   ; 3 uses
  %i.qx = add nsw i64 %n.vec630, %i.pg
  %cmp.n637 = icmp eq i64 %i.ps, %n.vec630
  br label %iter.check701

iter.check701:                                    ; preds = %bb.ab, %._crit_edge479
  %indvars.iv539 = phi i64 [ 0, %bb.ab ], [ %i.xa, %._crit_edge479 ] ; 6 uses
  %i.qy = trunc i64 %indvars.iv539 to i32
  %i.qz = mul i32 %i.pd, %i.qy
  %i.ra = add i32 %i.qz, %i.px
  %i.rb = sext i32 %i.ra to i64
  %i.rc = shl nsw i64 %i.rb, 2                    ; 2 uses
  %scevgep642 = getelementptr i8, ptr %i.i, i64 %i.rc
  %scevgep644 = getelementptr i8, ptr %scevgep643, i64 %i.rc
  %i.rd = trunc i64 %indvars.iv539 to i32
  %i.re = mul i32 %i.pc, %i.rd
  %i.rf = add i32 %i.re, %i.pr
  %i.rg = sext i32 %i.rf to i64
  %i.rh = shl nsw i64 %i.rg, 2
  %scevgep610 = getelementptr i8, ptr %scevgep609, i64 %i.rh
  %i.ri = mul nuw nsw i64 %indvars.iv539, %i.ph
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ri ; 11 uses
  %i.rk = add nuw nsw i64 %indvars.iv539, %i.pi
  %i.rl = mul nsw i64 %i.rk, %i.pj                ; 3 uses
  %i.rm = getelementptr [4 x i8], ptr %i.i, i64 %i.rl ; 11 uses
  %brmerge = select i1 %min.iters.check688, i1 true, i1 %i.qn
  br i1 %brmerge, label %vec.epilog.scalar.ph702.preheader, label %vector.main.loop.iter.check689

vector.main.loop.iter.check689:                   ; preds = %iter.check701
  br i1 %min.iters.check690, label %vec.epilog.ph705, label %vector.ph691

vector.ph691:                                     ; preds = %vector.main.loop.iter.check689
  %i.rn = load float, ptr %i.rj, align 4, !tbaa !21, !alias.scope !219
  %i.ro = fmul reassoc nsz arcp contract afn float %i.rn, f0x3C23D70A
  %broadcast.splatinsert695 = insertelement <8 x float> poison, float %i.ro, i64 0
  %broadcast.splat696 = shufflevector <8 x float> %broadcast.splatinsert695, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body693

vector.body693:                                   ; preds = %vector.ph691, %vector.body693
  %index694 = phi i64 [ 0, %vector.ph691 ], [ %index.next697, %vector.body693 ] ; 2 uses
  %i.rp = getelementptr [4 x i8], ptr %i.rm, i64 %index694 ; 4 uses
  %i.rq = getelementptr i8, ptr %i.rp, i64 32
  %i.rr = getelementptr i8, ptr %i.rp, i64 64
  %i.rs = getelementptr i8, ptr %i.rp, i64 96
  store <8 x float> %broadcast.splat696, ptr %i.rp, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  store <8 x float> %broadcast.splat696, ptr %i.rq, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  store <8 x float> %broadcast.splat696, ptr %i.rr, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  store <8 x float> %broadcast.splat696, ptr %i.rs, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  %index.next697 = add nuw i64 %index694, 32      ; 2 uses
  %i.rt = icmp eq i64 %index.next697, %n.vec692
  br i1 %i.rt, label %middle.block698, label %vector.body693, !llvm.loop !195

middle.block698:                                  ; preds = %vector.body693
  br i1 %cmp.n699, label %iter.check666, label %vec.epilog.iter.check703

vec.epilog.iter.check703:                         ; preds = %middle.block698
  br i1 %min.epilog.iters.check704, label %vec.epilog.scalar.ph702.preheader, label %vec.epilog.ph705, !prof !25

vec.epilog.ph705:                                 ; preds = %vector.main.loop.iter.check689, %vec.epilog.iter.check703
  %vec.epilog.resume.val700 = phi i64 [ %n.vec692, %vec.epilog.iter.check703 ], [ 0, %vector.main.loop.iter.check689 ]
  %i.ru = load float, ptr %i.rj, align 4, !tbaa !21, !alias.scope !219
  %i.rv = fmul reassoc nsz arcp contract afn float %i.ru, f0x3C23D70A
  %broadcast.splatinsert709 = insertelement <4 x float> poison, float %i.rv, i64 0
  %broadcast.splat710 = shufflevector <4 x float> %broadcast.splatinsert709, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body707

vec.epilog.vector.body707:                        ; preds = %vec.epilog.vector.body707, %vec.epilog.ph705
  %index708 = phi i64 [ %vec.epilog.resume.val700, %vec.epilog.ph705 ], [ %index.next711, %vec.epilog.vector.body707 ] ; 2 uses
  %i.rw = getelementptr [4 x i8], ptr %i.rm, i64 %index708
  store <4 x float> %broadcast.splat710, ptr %i.rw, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  %index.next711 = add nuw i64 %index708, 4       ; 2 uses
  %i.rx = icmp eq i64 %index.next711, %n.vec706
  br i1 %i.rx, label %vec.epilog.middle.block712, label %vec.epilog.vector.body707, !llvm.loop !196

vec.epilog.middle.block712:                       ; preds = %vec.epilog.vector.body707
  br i1 %cmp.n713, label %iter.check666, label %vec.epilog.scalar.ph702.preheader

vec.epilog.scalar.ph702.preheader:                ; preds = %iter.check701, %vec.epilog.iter.check703, %vec.epilog.middle.block712
  %indvars.iv524.ph = phi i64 [ 0, %iter.check701 ], [ %n.vec706, %vec.epilog.middle.block712 ], [ %n.vec692, %vec.epilog.iter.check703 ] ; 4 uses
  %i.ry = sub nsw i64 %wide.trip.count527, %indvars.iv524.ph
  %xtraiter716 = and i64 %i.ry, 7                 ; 2 uses
  %lcmp.mod717.not = icmp eq i64 %xtraiter716, 0
  br i1 %lcmp.mod717.not, label %vec.epilog.scalar.ph702.prol.loopexit, label %vec.epilog.scalar.ph702.prol

vec.epilog.scalar.ph702.prol:                     ; preds = %vec.epilog.scalar.ph702.preheader, %vec.epilog.scalar.ph702.prol
  %indvars.iv524.prol = phi i64 [ %indvars.iv.next525.prol, %vec.epilog.scalar.ph702.prol ], [ %indvars.iv524.ph, %vec.epilog.scalar.ph702.preheader ] ; 2 uses
  %prol.iter718 = phi i64 [ %prol.iter718.next, %vec.epilog.scalar.ph702.prol ], [ 0, %vec.epilog.scalar.ph702.preheader ]
  %i.rz = load float, ptr %i.rj, align 4, !tbaa !21
  %i.sa = fmul reassoc nsz arcp contract afn float %i.rz, f0x3C23D70A
  %i.sb = getelementptr [4 x i8], ptr %i.rm, i64 %indvars.iv524.prol
  store float %i.sa, ptr %i.sb, align 4, !tbaa !21
  %indvars.iv.next525.prol = add nuw nsw i64 %indvars.iv524.prol, 1 ; 2 uses
  %prol.iter718.next = add i64 %prol.iter718, 1   ; 2 uses
  %prol.iter718.cmp.not = icmp eq i64 %prol.iter718.next, %xtraiter716
  br i1 %prol.iter718.cmp.not, label %vec.epilog.scalar.ph702.prol.loopexit, label %vec.epilog.scalar.ph702.prol, !llvm.loop !197

vec.epilog.scalar.ph702.prol.loopexit:            ; preds = %vec.epilog.scalar.ph702.prol, %vec.epilog.scalar.ph702.preheader
  %indvars.iv524.unr = phi i64 [ %indvars.iv524.ph, %vec.epilog.scalar.ph702.preheader ], [ %indvars.iv.next525.prol, %vec.epilog.scalar.ph702.prol ]
  %i.sc = sub nsw i64 %indvars.iv524.ph, %wide.trip.count527
  %i.sd = icmp ugt i64 %i.sc, -8
  br i1 %i.sd, label %iter.check666, label %vec.epilog.scalar.ph702

bb.ac:                                            ; preds = %._crit_edge479
  %i.se = load i32, ptr %5, align 4, !tbaa !19
  %i.sf = mul i32 %i.pd, %3
  %i.sg = zext i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.sg ; 5 uses
  %i.si = zext i32 %i.pd to i64
  %i.sj = shl nuw nsw i64 %i.si, 2                ; 10 uses
  %i.sk = sub i32 %i.se, %3                       ; 6 uses
  %i.sl = add i32 %i.sk, -1
  %i.sm = mul i32 %i.sl, %i.pd
  %i.sn = zext i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.sn ; 5 uses
  %xtraiter727.a = and i64 %wide.trip.count527, 3 ; 3 uses
  %i.sp = icmp samesign ult i32 %3, 4
  br i1 %i.sp, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ac
  %unroll_iter = and i64 %wide.trip.count527, 1073741820
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %bb.ad ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.ad ]
  %i.sq = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.sr = mul i32 %i.pd, %i.sq
  %i.ss = zext i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ss
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.st, ptr align 4 %i.sh, i64 %i.sj, i1 false)
  %i.su = add i32 %i.sk, %i.sq
  %i.sv = mul i32 %i.su, %i.pd
  %i.sw = zext i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.sw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.sx, ptr align 4 %i.so, i64 %i.sj, i1 false)
  %i.sy = trunc i64 %indvars.iv.i to i32
  %i.sz = or disjoint i32 %i.sy, 1                ; 2 uses
  %i.ta = mul i32 %i.pd, %i.sz
  %i.tb = zext i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tc, ptr align 4 %i.sh, i64 %i.sj, i1 false)
  %i.td = add i32 %i.sk, %i.sz
  %i.te = mul i32 %i.td, %i.pd
  %i.tf = zext i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tg, ptr align 4 %i.so, i64 %i.sj, i1 false)
  %i.th = trunc i64 %indvars.iv.i to i32
  %i.ti = or disjoint i32 %i.th, 2                ; 2 uses
  %i.tj = mul i32 %i.pd, %i.ti
  %i.tk = zext i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.tl, ptr align 4 %i.sh, i64 %i.sj, i1 false)
  %i.tm = add i32 %i.sk, %i.ti
  %i.tn = mul i32 %i.tm, %i.pd
  %i.to = zext i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.to
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tp, ptr align 4 %i.so, i64 %i.sj, i1 false)
  %i.tq = trunc i64 %indvars.iv.i to i32
  %i.tr = or disjoint i32 %i.tq, 3                ; 2 uses
  %i.ts = mul i32 %i.pd, %i.tr
  %i.tt = zext i32 %i.ts to i64
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tu, ptr align 4 %i.sh, i64 %i.sj, i1 false)
  %i.tv = add i32 %i.sk, %i.tr
  %i.tw = mul i32 %i.tv, %i.pd
  %i.tx = zext i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ty, ptr align 4 %i.so, i64 %i.sj, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pad_by_replication.exit.loopexit.unr-lcssa, label %bb.ad

iter.check666:                                    ; preds = %vec.epilog.scalar.ph702.prol.loopexit, %vec.epilog.scalar.ph702, %vec.epilog.middle.block712, %middle.block698
  %i.tz = mul nuw nsw i64 %indvars.iv539, %i.pk   ; 10 uses
  %i.ua = trunc nsw i64 %i.rl to i32
  %invariant.op473 = add i32 %3, %i.ua            ; 9 uses
  %invariant.op473.a = add i32 %invariant.op473, %17
  %18 = icmp slt i32 %invariant.op473.a, %invariant.op473
  %or.cond718 = select i1 %min.iters.check648, i1 true, i1 %18
  br i1 %or.cond718, label %vec.epilog.scalar.ph667.preheader, label %vector.memcheck640

vector.memcheck640:                               ; preds = %iter.check666
  %bound0645 = icmp ult ptr %0, %scevgep644
  %bound1646 = icmp ult ptr %scevgep642, %scevgep641
  %found.conflict647 = and i1 %bound0645, %bound1646
  br i1 %found.conflict647, label %vec.epilog.scalar.ph667.preheader, label %vector.main.loop.iter.check649

vector.main.loop.iter.check649:                   ; preds = %vector.memcheck640
  br i1 %min.iters.check650, label %vec.epilog.ph670, label %vector.body653

vector.body653:                                   ; preds = %vector.main.loop.iter.check649, %vector.body653
  %index654 = phi i64 [ %index.next663, %vector.body653 ], [ 0, %vector.main.loop.iter.check649 ] ; 6 uses
  %i.ub = or disjoint i64 %index654, 8
  %i.uc = or disjoint i64 %index654, 16
  %i.ud = or disjoint i64 %index654, 24
  %i.ue = add nuw nsw i64 %index654, %i.tz
  %i.uf = add nuw nsw i64 %i.ub, %i.tz
  %i.ug = add nuw nsw i64 %i.uc, %i.tz
  %i.uh = add nuw nsw i64 %i.ud, %i.tz
  %i.ui = shl nuw nsw i64 %i.ue, 4
  %i.uj = shl nuw nsw i64 %i.uf, 4
  %i.uk = shl nuw nsw i64 %i.ug, 4
  %i.ul = shl nuw nsw i64 %i.uh, 4
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 %i.ui
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 %i.uj
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 %i.uk
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 %i.ul
  %wide.vec655 = load <32 x float>, ptr %i.um, align 4, !tbaa !21, !alias.scope !221, !noalias !222
  %strided.vec656 = shufflevector <32 x float> %wide.vec655, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec657 = load <32 x float>, ptr %i.un, align 4, !tbaa !21, !alias.scope !221, !noalias !222
  %strided.vec658 = shufflevector <32 x float> %wide.vec657, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec659 = load <32 x float>, ptr %i.uo, align 4, !tbaa !21, !alias.scope !221, !noalias !222
  %strided.vec660 = shufflevector <32 x float> %wide.vec659, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec661 = load <32 x float>, ptr %i.up, align 4, !tbaa !21, !alias.scope !221, !noalias !222
  %strided.vec662 = shufflevector <32 x float> %wide.vec661, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.uq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec656, splat (float f0x3C23D70A)
  %i.ur = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec658, splat (float f0x3C23D70A)
  %i.us = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec660, splat (float f0x3C23D70A)
  %i.ut = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec662, splat (float f0x3C23D70A)
  %i.uu = trunc nuw nsw i64 %index654 to i32
  %i.uv = add i32 %invariant.op473, %i.uu
  %i.uw = sext i32 %i.uv to i64
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.uw ; 4 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 32
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 64
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 96
  store <8 x float> %i.uq, ptr %i.ux, align 4, !tbaa !21, !alias.scope !222
  store <8 x float> %i.ur, ptr %i.uy, align 4, !tbaa !21, !alias.scope !222
  store <8 x float> %i.us, ptr %i.uz, align 4, !tbaa !21, !alias.scope !222
  store <8 x float> %i.ut, ptr %i.va, align 4, !tbaa !21, !alias.scope !222
  %index.next663 = add nuw i64 %index654, 32      ; 2 uses
  %i.vb = icmp eq i64 %index.next663, %n.vec652
  br i1 %i.vb, label %vec.epilog.iter.check668, label %vector.body653, !llvm.loop !201

vec.epilog.iter.check668:                         ; preds = %vector.body653
  br i1 %min.epilog.iters.check669, label %vec.epilog.scalar.ph667.preheader, label %vec.epilog.ph670, !prof !25

vec.epilog.scalar.ph667.preheader:                ; preds = %vec.epilog.vector.body672, %iter.check666, %vector.memcheck640, %vec.epilog.iter.check668
  %indvars.iv529.ph = phi i64 [ 0, %iter.check666 ], [ 0, %vector.memcheck640 ], [ %n.vec652, %vec.epilog.iter.check668 ], [ %n.vec671, %vec.epilog.vector.body672 ] ; 4 uses
  %i.vc = sub nsw i64 %wide.trip.count532, %indvars.iv529.ph
  %xtraiter719 = and i64 %i.vc, 3                 ; 2 uses
  %lcmp.mod720.not = icmp eq i64 %xtraiter719, 0
  br i1 %lcmp.mod720.not, label %vec.epilog.scalar.ph667.prol.loopexit, label %vec.epilog.scalar.ph667.prol

vec.epilog.scalar.ph667.prol:                     ; preds = %vec.epilog.scalar.ph667.preheader, %vec.epilog.scalar.ph667.prol
  %indvars.iv529.prol = phi i64 [ %indvars.iv.next530.prol, %vec.epilog.scalar.ph667.prol ], [ %indvars.iv529.ph, %vec.epilog.scalar.ph667.preheader ] ; 3 uses
  %prol.iter721 = phi i64 [ %prol.iter721.next, %vec.epilog.scalar.ph667.prol ], [ 0, %vec.epilog.scalar.ph667.preheader ]
  %i.vd = add nuw nsw i64 %indvars.iv529.prol, %i.tz
  %.idx570.prol = shl nuw nsw i64 %i.vd, 4
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.prol
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !21
  %i.vg = fmul reassoc nsz arcp contract afn float %i.vf, f0x3C23D70A
  %i.vh = trunc nuw nsw i64 %indvars.iv529.prol to i32
  %.reass474.prol = add i32 %invariant.op473, %i.vh
  %i.vi = sext i32 %.reass474.prol to i64
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.vi
  store float %i.vg, ptr %i.vj, align 4, !tbaa !21
  %indvars.iv.next530.prol = add nuw nsw i64 %indvars.iv529.prol, 1 ; 2 uses
  %prol.iter721.next = add i64 %prol.iter721, 1   ; 2 uses
  %prol.iter721.cmp.not = icmp eq i64 %prol.iter721.next, %xtraiter719
  br i1 %prol.iter721.cmp.not, label %vec.epilog.scalar.ph667.prol.loopexit, label %vec.epilog.scalar.ph667.prol, !llvm.loop !202

vec.epilog.scalar.ph667.prol.loopexit:            ; preds = %vec.epilog.scalar.ph667.prol, %vec.epilog.scalar.ph667.preheader
  %indvars.iv529.unr = phi i64 [ %indvars.iv529.ph, %vec.epilog.scalar.ph667.preheader ], [ %indvars.iv.next530.prol, %vec.epilog.scalar.ph667.prol ]
  %i.vk = sub nsw i64 %indvars.iv529.ph, %wide.trip.count532
  %i.vl = icmp ugt i64 %i.vk, -4
  br i1 %i.vl, label %.unr-lcssa722, label %vec.epilog.scalar.ph667

vec.epilog.ph670:                                 ; preds = %vector.main.loop.iter.check649, %vec.epilog.iter.check668
  %vec.epilog.resume.val665 = phi i64 [ %n.vec652, %vec.epilog.iter.check668 ], [ 0, %vector.main.loop.iter.check649 ]
  br label %vec.epilog.vector.body672

vec.epilog.vector.body672:                        ; preds = %vec.epilog.vector.body672, %vec.epilog.ph670
  %index673 = phi i64 [ %vec.epilog.resume.val665, %vec.epilog.ph670 ], [ %index.next676, %vec.epilog.vector.body672 ] ; 3 uses
  %i.vm = add nuw nsw i64 %index673, %i.tz
  %i.vn = shl nuw nsw i64 %i.vm, 4
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 %i.vn
  %wide.vec674 = load <16 x float>, ptr %i.vo, align 4, !tbaa !21, !alias.scope !221, !noalias !222
  %strided.vec675 = shufflevector <16 x float> %wide.vec674, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.vp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec675, splat (float f0x3C23D70A)
  %i.vq = trunc nuw nsw i64 %index673 to i32
  %i.vr = add i32 %invariant.op473, %i.vq
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.vs
  store <4 x float> %i.vp, ptr %i.vt, align 4, !tbaa !21, !alias.scope !222
  %index.next676 = add nuw i64 %index673, 4       ; 2 uses
  %i.vu = icmp eq i64 %index.next676, %n.vec671
  br i1 %i.vu, label %vec.epilog.scalar.ph667.preheader, label %vec.epilog.vector.body672, !llvm.loop !203

vec.epilog.scalar.ph702:                          ; preds = %vec.epilog.scalar.ph702.prol.loopexit, %vec.epilog.scalar.ph702
  %indvars.iv524 = phi i64 [ %indvars.iv.next525.7, %vec.epilog.scalar.ph702 ], [ %indvars.iv524.unr, %vec.epilog.scalar.ph702.prol.loopexit ] ; 9 uses
  %i.vv = load float, ptr %i.rj, align 4, !tbaa !21
  %i.vw = fmul reassoc nsz arcp contract afn float %i.vv, f0x3C23D70A
  %i.vx = getelementptr [4 x i8], ptr %i.rm, i64 %indvars.iv524
  store float %i.vw, ptr %i.vx, align 4, !tbaa !21
  %i.vy = load float, ptr %i.rj, align 4, !tbaa !21
  %i.vz = fmul reassoc nsz arcp contract afn float %i.vy, f0x3C23D70A
  %i.wa = getelementptr [4 x i8], ptr %i.rm, i64 %indvars.iv524
  %i.wb = getelementptr i8, ptr %i.wa, i64 4
  store float %i.vz, ptr %i.wb, align 4, !tbaa !21
  %i.wc = load float, ptr %i.rj, align 4, !tbaa !21
  %i.wd = fmul reassoc nsz arcp contract afn float %i.wc, f0x3C23D70A
  %i.we = getelementptr [4 x i8], ptr %i.rm, i64 %indvars.iv524
  %i.wf = getelementptr i8, ptr %i.we, i64 8
  store float %i.wd, ptr %i.wf, align 4, !tbaa !21
  %i.wg = load float, ptr %i.rj, align 4, !tbaa !21
  %i.wh = fmul reassoc nsz arcp contract afn float %i.wg, f0x3C23D70A
  %i.wi = getelementptr [4 x i8], ptr %i.rm, i64 %indvars.iv524
  %i.wj = getelementptr i8, ptr %i.wi, i64 12
  store float %i.wh, ptr %i.wj, align 4, !tbaa !21
  %i.wk = load float, ptr %i.rj, align 4, !tbaa !21
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wk, f0x3C23D70A
  %i.wm = getelementptr [4 x i8], ptr %i.rm, i64 %indvars.iv524
  %i.wn = getelementptr i8, ptr %i.wm, i64 16
  store float %i.wl, ptr %i.wn, align 4, !tbaa !21
  %i.wo = load float, ptr %i.rj, align 4, !tbaa !21
  %i.wp = fmul reassoc nsz arcp contract afn float %i.wo, f0x3C23D70A
  %i.wq = getelementptr [4 x i8], ptr %i.rm, i64 %indvars.iv524
  %i.wr = getelementptr i8, ptr %i.wq, i64 20
  store float %i.wp, ptr %i.wr, align 4, !tbaa !21
  %i.ws = load float, ptr %i.rj, align 4, !tbaa !21
  %i.wt = fmul reassoc nsz arcp contract afn float %i.ws, f0x3C23D70A
  %i.wu = getelementptr [4 x i8], ptr %i.rm, i64 %indvars.iv524
  %i.wv = getelementptr i8, ptr %i.wu, i64 24
  store float %i.wt, ptr %i.wv, align 4, !tbaa !21
  %i.ww = load float, ptr %i.rj, align 4, !tbaa !21
  %i.wx = fmul reassoc nsz arcp contract afn float %i.ww, f0x3C23D70A
  %i.wy = getelementptr [4 x i8], ptr %i.rm, i64 %indvars.iv524
  %i.wz = getelementptr i8, ptr %i.wy, i64 28
  store float %i.wx, ptr %i.wz, align 4, !tbaa !21
  %indvars.iv.next525.7 = add nuw nsw i64 %indvars.iv524, 8 ; 2 uses
  %exitcond528.not.7 = icmp eq i64 %indvars.iv.next525.7, %wide.trip.count527
  br i1 %exitcond528.not.7, label %iter.check666, label %vec.epilog.scalar.ph702, !llvm.loop !204

.unr-lcssa722:                                    ; preds = %vec.epilog.scalar.ph667, %vec.epilog.scalar.ph667.prol.loopexit
  %i.xa = add nuw nsw i64 %indvars.iv539, 1       ; 3 uses
  br i1 %i.pf, label %iter.check625, label %._crit_edge479

iter.check625:                                    ; preds = %.unr-lcssa722
  %i.xb = trunc nuw nsw i64 %i.xa to i32
  %i.xc = mul i32 %i.pc, %i.xb
  %i.xd = add i32 %i.xc, -4
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds [4 x i8], ptr %0, i64 %i.xe ; 12 uses
  %i.xg = getelementptr [4 x i8], ptr %i.i, i64 %i.rl ; 11 uses
  br i1 %min.iters.check614, label %vec.epilog.scalar.ph626.preheader, label %vector.memcheck606

vector.memcheck606:                               ; preds = %iter.check625
  %bound0611 = icmp ult ptr %scevgep607, %scevgep610
  %bound1612 = icmp ult ptr %i.xf, %scevgep608
  %found.conflict613 = and i1 %bound0611, %bound1612
  %i.xh = or i1 %found.conflict613, %stride.check
  br i1 %i.xh, label %vec.epilog.scalar.ph626.preheader, label %vector.main.loop.iter.check615

vector.main.loop.iter.check615:                   ; preds = %vector.memcheck606
  br i1 %min.iters.check616, label %vec.epilog.ph629, label %vector.ph617

vector.ph617:                                     ; preds = %vector.main.loop.iter.check615
  %i.xi = load float, ptr %i.xf, align 4, !tbaa !21, !alias.scope !223
  %i.xj = fmul reassoc nsz arcp contract afn float %i.xi, f0x3C23D70A
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.xj, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep730 = getelementptr [4 x i8], ptr %i.xg, i64 %i.pg
  br label %vector.body619

vector.body619:                                   ; preds = %vector.ph617, %vector.body619
  %index620 = phi i64 [ 0, %vector.ph617 ], [ %index.next621, %vector.body619 ] ; 2 uses
  %gep731 = getelementptr [4 x i8], ptr %invariant.gep730, i64 %index620 ; 4 uses
  %i.xk = getelementptr i8, ptr %gep731, i64 32
  %i.xl = getelementptr i8, ptr %gep731, i64 64
  %i.xm = getelementptr i8, ptr %gep731, i64 96
  store <8 x float> %broadcast.splat, ptr %gep731, align 4, !tbaa !21, !alias.scope !224, !noalias !223
  store <8 x float> %broadcast.splat, ptr %i.xk, align 4, !tbaa !21, !alias.scope !224, !noalias !223
  store <8 x float> %broadcast.splat, ptr %i.xl, align 4, !tbaa !21, !alias.scope !224, !noalias !223
  store <8 x float> %broadcast.splat, ptr %i.xm, align 4, !tbaa !21, !alias.scope !224, !noalias !223
  %index.next621 = add nuw i64 %index620, 32      ; 2 uses
  %i.xn = icmp eq i64 %index.next621, %n.vec618
  br i1 %i.xn, label %middle.block622, label %vector.body619, !llvm.loop !208

middle.block622:                                  ; preds = %vector.body619
  br i1 %cmp.n, label %._crit_edge479, label %vec.epilog.iter.check627

vec.epilog.iter.check627:                         ; preds = %middle.block622
  br i1 %min.epilog.iters.check628, label %vec.epilog.scalar.ph626.preheader, label %vec.epilog.ph629, !prof !25

vec.epilog.ph629:                                 ; preds = %vector.main.loop.iter.check615, %vec.epilog.iter.check627
  %vec.epilog.resume.val623 = phi i64 [ %n.vec618, %vec.epilog.iter.check627 ], [ 0, %vector.main.loop.iter.check615 ]
  %i.xo = load float, ptr %i.xf, align 4, !tbaa !21, !alias.scope !223
  %i.xp = fmul reassoc nsz arcp contract afn float %i.xo, f0x3C23D70A
  %broadcast.splatinsert633 = insertelement <4 x float> poison, float %i.xp, i64 0
  %broadcast.splat634 = shufflevector <4 x float> %broadcast.splatinsert633, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep732 = getelementptr [4 x i8], ptr %i.xg, i64 %i.pg
  br label %vec.epilog.vector.body631

vec.epilog.vector.body631:                        ; preds = %vec.epilog.vector.body631, %vec.epilog.ph629
  %index632 = phi i64 [ %vec.epilog.resume.val623, %vec.epilog.ph629 ], [ %index.next635, %vec.epilog.vector.body631 ] ; 2 uses
  %gep733 = getelementptr [4 x i8], ptr %invariant.gep732, i64 %index632
  store <4 x float> %broadcast.splat634, ptr %gep733, align 4, !tbaa !21, !alias.scope !224, !noalias !223
  %index.next635 = add nuw i64 %index632, 4       ; 2 uses
  %i.xq = icmp eq i64 %index.next635, %n.vec630
  br i1 %i.xq, label %vec.epilog.middle.block636, label %vec.epilog.vector.body631, !llvm.loop !209

vec.epilog.middle.block636:                       ; preds = %vec.epilog.vector.body631
  br i1 %cmp.n637, label %._crit_edge479, label %vec.epilog.scalar.ph626.preheader

vec.epilog.scalar.ph626.preheader:                ; preds = %iter.check625, %vector.memcheck606, %vec.epilog.iter.check627, %vec.epilog.middle.block636
  %indvars.iv534.ph = phi i64 [ %i.pg, %iter.check625 ], [ %i.pg, %vector.memcheck606 ], [ %i.qw, %vec.epilog.iter.check627 ], [ %i.qx, %vec.epilog.middle.block636 ] ; 4 uses
  %i.xr = sub nsw i64 %i.pj, %indvars.iv534.ph
  %xtraiter723 = and i64 %i.xr, 7                 ; 2 uses
  %lcmp.mod724.not = icmp eq i64 %xtraiter723, 0
  br i1 %lcmp.mod724.not, label %vec.epilog.scalar.ph626.prol.loopexit, label %vec.epilog.scalar.ph626.prol

vec.epilog.scalar.ph626.prol:                     ; preds = %vec.epilog.scalar.ph626.preheader, %vec.epilog.scalar.ph626.prol
  %indvars.iv534.prol = phi i64 [ %indvars.iv.next535.prol, %vec.epilog.scalar.ph626.prol ], [ %indvars.iv534.ph, %vec.epilog.scalar.ph626.preheader ] ; 2 uses
  %prol.iter725 = phi i64 [ %prol.iter725.next, %vec.epilog.scalar.ph626.prol ], [ 0, %vec.epilog.scalar.ph626.preheader ]
  %i.xs = load float, ptr %i.xf, align 4, !tbaa !21
  %i.xt = fmul reassoc nsz arcp contract afn float %i.xs, f0x3C23D70A
  %i.xu = getelementptr [4 x i8], ptr %i.xg, i64 %indvars.iv534.prol
  store float %i.xt, ptr %i.xu, align 4, !tbaa !21
  %indvars.iv.next535.prol = add nuw nsw i64 %indvars.iv534.prol, 1 ; 2 uses
  %prol.iter725.next = add i64 %prol.iter725, 1   ; 2 uses
  %prol.iter725.cmp.not = icmp eq i64 %prol.iter725.next, %xtraiter723
  br i1 %prol.iter725.cmp.not, label %vec.epilog.scalar.ph626.prol.loopexit, label %vec.epilog.scalar.ph626.prol, !llvm.loop !210

vec.epilog.scalar.ph626.prol.loopexit:            ; preds = %vec.epilog.scalar.ph626.prol, %vec.epilog.scalar.ph626.preheader
  %indvars.iv534.unr = phi i64 [ %indvars.iv534.ph, %vec.epilog.scalar.ph626.preheader ], [ %indvars.iv.next535.prol, %vec.epilog.scalar.ph626.prol ]
  %i.xv = sub nsw i64 %indvars.iv534.ph, %i.pj
  %i.xw = icmp ugt i64 %i.xv, -8
  br i1 %i.xw, label %._crit_edge479, label %vec.epilog.scalar.ph626

vec.epilog.scalar.ph667:                          ; preds = %vec.epilog.scalar.ph667.prol.loopexit, %vec.epilog.scalar.ph667
  %indvars.iv529 = phi i64 [ %indvars.iv.next530.3, %vec.epilog.scalar.ph667 ], [ %indvars.iv529.unr, %vec.epilog.scalar.ph667.prol.loopexit ] ; 6 uses
  %i.xx = add nuw nsw i64 %indvars.iv529, %i.tz
  %.idx570 = shl nuw nsw i64 %i.xx, 4
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !21
  %i.ya = fmul reassoc nsz arcp contract afn float %i.xz, f0x3C23D70A
  %i.yb = trunc nuw nsw i64 %indvars.iv529 to i32
  %.reass474 = add i32 %invariant.op473, %i.yb
  %i.yc = sext i32 %.reass474 to i64
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.yc
  store float %i.ya, ptr %i.yd, align 4, !tbaa !21
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %i.ye = add nuw nsw i64 %indvars.iv.next530, %i.tz
  %.idx570.1 = shl nuw nsw i64 %i.ye, 4
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.1
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !21
  %i.yh = fmul reassoc nsz arcp contract afn float %i.yg, f0x3C23D70A
  %i.yi = trunc nuw nsw i64 %indvars.iv.next530 to i32
  %.reass474.1 = add i32 %invariant.op473, %i.yi
  %i.yj = sext i32 %.reass474.1 to i64
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.yj
  store float %i.yh, ptr %i.yk, align 4, !tbaa !21
  %indvars.iv.next530.1 = add nuw nsw i64 %indvars.iv529, 2 ; 2 uses
  %i.yl = add nuw nsw i64 %indvars.iv.next530.1, %i.tz
  %.idx570.2 = shl nuw nsw i64 %i.yl, 4
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.2
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !21
  %i.yo = fmul reassoc nsz arcp contract afn float %i.yn, f0x3C23D70A
  %i.yp = trunc nuw nsw i64 %indvars.iv.next530.1 to i32
  %.reass474.2 = add i32 %invariant.op473, %i.yp
  %i.yq = sext i32 %.reass474.2 to i64
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.yq
  store float %i.yo, ptr %i.yr, align 4, !tbaa !21
  %indvars.iv.next530.2 = add nuw nsw i64 %indvars.iv529, 3 ; 2 uses
  %i.ys = add nuw nsw i64 %indvars.iv.next530.2, %i.tz
  %.idx570.3 = shl nuw nsw i64 %i.ys, 4
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.3
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !21
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yu, f0x3C23D70A
  %i.yw = trunc nuw nsw i64 %indvars.iv.next530.2 to i32
  %.reass474.3 = add i32 %invariant.op473, %i.yw
  %i.yx = sext i32 %.reass474.3 to i64
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.yx
  store float %i.yv, ptr %i.yy, align 4, !tbaa !21
  %indvars.iv.next530.3 = add nuw nsw i64 %indvars.iv529, 4 ; 2 uses
  %exitcond533.not.3 = icmp eq i64 %indvars.iv.next530.3, %wide.trip.count532
  br i1 %exitcond533.not.3, label %.unr-lcssa722, label %vec.epilog.scalar.ph667, !llvm.loop !211

._crit_edge479:                                   ; preds = %vec.epilog.scalar.ph626.prol.loopexit, %vec.epilog.scalar.ph626, %middle.block622, %vec.epilog.middle.block636, %.unr-lcssa722
  %exitcond543.not = icmp eq i64 %i.xa, %wide.trip.count542
  br i1 %exitcond543.not, label %bb.ac, label %iter.check701

vec.epilog.scalar.ph626:                          ; preds = %vec.epilog.scalar.ph626.prol.loopexit, %vec.epilog.scalar.ph626
  %indvars.iv534 = phi i64 [ %indvars.iv.next535.7, %vec.epilog.scalar.ph626 ], [ %indvars.iv534.unr, %vec.epilog.scalar.ph626.prol.loopexit ] ; 9 uses
  %i.yz = load float, ptr %i.xf, align 4, !tbaa !21
  %i.za = fmul reassoc nsz arcp contract afn float %i.yz, f0x3C23D70A
  %i.zb = getelementptr [4 x i8], ptr %i.xg, i64 %indvars.iv534
  store float %i.za, ptr %i.zb, align 4, !tbaa !21
  %i.zc = load float, ptr %i.xf, align 4, !tbaa !21
  %i.zd = fmul reassoc nsz arcp contract afn float %i.zc, f0x3C23D70A
  %i.ze = getelementptr [4 x i8], ptr %i.xg, i64 %indvars.iv534
  %i.zf = getelementptr i8, ptr %i.ze, i64 4
  store float %i.zd, ptr %i.zf, align 4, !tbaa !21
  %i.zg = load float, ptr %i.xf, align 4, !tbaa !21
  %i.zh = fmul reassoc nsz arcp contract afn float %i.zg, f0x3C23D70A
  %i.zi = getelementptr [4 x i8], ptr %i.xg, i64 %indvars.iv534
  %i.zj = getelementptr i8, ptr %i.zi, i64 8
  store float %i.zh, ptr %i.zj, align 4, !tbaa !21
  %i.zk = load float, ptr %i.xf, align 4, !tbaa !21
  %i.zl = fmul reassoc nsz arcp contract afn float %i.zk, f0x3C23D70A
  %i.zm = getelementptr [4 x i8], ptr %i.xg, i64 %indvars.iv534
  %i.zn = getelementptr i8, ptr %i.zm, i64 12
  store float %i.zl, ptr %i.zn, align 4, !tbaa !21
  %i.zo = load float, ptr %i.xf, align 4, !tbaa !21
  %i.zp = fmul reassoc nsz arcp contract afn float %i.zo, f0x3C23D70A
  %i.zq = getelementptr [4 x i8], ptr %i.xg, i64 %indvars.iv534
  %i.zr = getelementptr i8, ptr %i.zq, i64 16
  store float %i.zp, ptr %i.zr, align 4, !tbaa !21
  %i.zs = load float, ptr %i.xf, align 4, !tbaa !21
  %i.zt = fmul reassoc nsz arcp contract afn float %i.zs, f0x3C23D70A
  %i.zu = getelementptr [4 x i8], ptr %i.xg, i64 %indvars.iv534
  %i.zv = getelementptr i8, ptr %i.zu, i64 20
  store float %i.zt, ptr %i.zv, align 4, !tbaa !21
  %i.zw = load float, ptr %i.xf, align 4, !tbaa !21
  %i.zx = fmul reassoc nsz arcp contract afn float %i.zw, f0x3C23D70A
  %i.zy = getelementptr [4 x i8], ptr %i.xg, i64 %indvars.iv534
  %i.zz = getelementptr i8, ptr %i.zy, i64 24
  store float %i.zx, ptr %i.zz, align 4, !tbaa !21
  %i.aaa = load float, ptr %i.xf, align 4, !tbaa !21
  %i.aab = fmul reassoc nsz arcp contract afn float %i.aaa, f0x3C23D70A
  %i.aac = getelementptr [4 x i8], ptr %i.xg, i64 %indvars.iv534
  %i.aad = getelementptr i8, ptr %i.aac, i64 28
  store float %i.aab, ptr %i.aad, align 4, !tbaa !21
  %indvars.iv.next535.7 = add nuw nsw i64 %indvars.iv534, 8 ; 2 uses
  %exitcond538.not.7 = icmp eq i64 %indvars.iv.next535.7, %i.pj
  br i1 %exitcond538.not.7, label %._crit_edge479, label %vec.epilog.scalar.ph626, !llvm.loop !212

pad_by_replication.exit.loopexit.unr-lcssa:       ; preds = %bb.ad
  %lcmp.mod728.not = icmp eq i64 %xtraiter727.a, 0
  br i1 %lcmp.mod728.not, label %pad_by_replication.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %pad_by_replication.exit.loopexit.unr-lcssa, %bb.ac
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.ac ], [ %indvars.iv.next.i.3, %pad_by_replication.exit.loopexit.unr-lcssa ]
  %lcmp.mod729 = icmp ne i64 %xtraiter727.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod729)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ae ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ae ]
  %i.aae = trunc nuw nsw i64 %indvars.iv.i.epil to i32 ; 2 uses
  %i.aaf = mul i32 %i.pd, %i.aae
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aag
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aah, ptr align 4 %i.sh, i64 %i.sj, i1 false)
  %i.aai = add i32 %i.sk, %i.aae
  %i.aaj = mul i32 %i.aai, %i.pd
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aak
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aal, ptr align 4 %i.so, i64 %i.sj, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter727.a
  br i1 %epil.iter.cmp.not, label %pad_by_replication.exit, label %bb.ae, !llvm.loop !213

pad_by_replication.exit:                          ; preds = %._crit_edge466, %pad_by_replication.exit.loopexit.unr-lcssa, %bb.ae, %.split, %.preheader435
  br i1 %.not, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %pad_by_replication.exit
  %i.aam = load i32, ptr %6, align 8, !tbaa !18
  %i.aan = icmp eq i32 %i.aam, 2
  %i.aao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8
  %i.aap = icmp ne ptr %i.aao, null
  %or.cond9 = select i1 %i.aan, i1 %i.aap, i1 false
  br i1 %or.cond9, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.aaq = load i32, ptr %4, align 4, !tbaa !19
  %i.aar = load i32, ptr %5, align 4, !tbaa !19
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.i, i32 noundef %i.aaq, i32 noundef %i.aar, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %pad_by_replication.exit
  ret ptr %i.i
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gauss_reduce(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3) unnamed_addr #7 {
bb.a:
  %i.a = add nsw i64 %2, -1                       ; 2 uses
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = add nuw i64 %i.b, 1                      ; 2 uses
  %i.d = add nsw i64 %3, -1                       ; 2 uses
  %i.e = lshr i64 %i.d, 1                         ; 5 uses
  %i.f = icmp ugt i64 %i.d, 3
  br i1 %i.f, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %bb.a
  %.idx.i = shl nsw i64 %2, 3                     ; 3 uses
  %.idx41.i = mul nsw i64 %2, 12                  ; 3 uses
  %.idx42.i = shl nsw i64 %2, 4                   ; 3 uses
  %i.g = add nsw i64 %i.b, -2                     ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  %i.h = and i64 %i.a, 2
  %.not.not = icmp eq i64 %i.h, 0
  br label %bb.b

._crit_edge111:                                   ; preds = %bb.d, %bb.a
  tail call void @llvm.x86.sse.sfence()
  %i.i = trunc i64 %i.e to i32
  %i.j = add i32 %i.i, 1
  %i.k = icmp sgt i32 %i.j, 2
  %sext = shl i64 %i.c, 32                        ; 13 uses
  br i1 %i.k, label %.lr.ph.preheader.i, label %ll_fill_boundary1.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge111
  %i.l = ashr exact i64 %sext, 32                 ; 9 uses
  %wide.trip.count.i = and i64 %i.e, 4294967295   ; 2 uses
  %i.m = add nsw i64 %wide.trip.count.i, -1       ; 4 uses
  %i.n = add nsw i64 %wide.trip.count.i, -2       ; 2 uses
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.o = icmp ult i64 %i.n, 7
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.m, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.p = mul nsw i64 %indvars.iv.i, %i.l
  %i.q = getelementptr [4 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !21
  store float %i.s, ptr %i.q, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.t = mul nsw i64 %indvars.iv.next.i, %i.l
  %i.u = getelementptr [4 x i8], ptr %1, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !21
  store float %i.w, ptr %i.u, align 4, !tbaa !21
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %i.x = mul nsw i64 %indvars.iv.next.i.1, %i.l
  %i.y = getelementptr [4 x i8], ptr %1, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !21
  store float %i.aa, ptr %i.y, align 4, !tbaa !21
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %i.ab = mul nsw i64 %indvars.iv.next.i.2, %i.l
  %i.ac = getelementptr [4 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !21
  store float %i.ae, ptr %i.ac, align 4, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %i.af = mul nsw i64 %indvars.iv.next.i.3, %i.l
  %i.ag = getelementptr [4 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !21
  store float %i.ai, ptr %i.ag, align 4, !tbaa !21
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5
  %i.aj = mul nsw i64 %indvars.iv.next.i.4, %i.l
  %i.ak = getelementptr [4 x i8], ptr %1, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !21
  store float %i.am, ptr %i.ak, align 4, !tbaa !21
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6
  %i.an = mul nsw i64 %indvars.iv.next.i.5, %i.l
  %i.ao = getelementptr [4 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !21
  store float %i.aq, ptr %i.ao, align 4, !tbaa !21
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7
  %i.ar = mul nsw i64 %indvars.iv.next.i.6, %i.l
  %i.as = getelementptr [4 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !21
  store float %i.au, ptr %i.as, align 4, !tbaa !21
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
end_hunk_1
