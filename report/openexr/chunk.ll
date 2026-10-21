Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/chunk?download=true
inline.NumInlined: 57
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@compute_chunk_unpack_size:bb.a
compute_sampled_height.exit:                      ; preds = %compute_sampled_width.exit, %bb.k, %bb.l
  %.125.i = phi i32 [ 0, %bb.k ], [ %i.cm, %bb.l ], [ %2, %compute_sampled_width.exit ]
  %i.cn = sext i32 %.125.i to i64
  %i.co = mul i64 %i.cd, %i.cn
  %i.cp = add i64 %i.co, %.025                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count60
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.split.split, !llvm.loop !95

bb.m:                                             ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !68
  br label %.loopexit

.loopexit:                                        ; preds = %compute_sampled_height.exit, %compute_sampled_height.exit.us39, %compute_sampled_height.exit.us30, %compute_sampled_height.exit.us, %bb.b, %bb.m
  %.1 = phi i64 [ %i.cr, %bb.m ], [ 0, %bb.b ], [ %i.bb, %compute_sampled_height.exit.us30 ], [ %i.bs, %compute_sampled_height.exit.us39 ], [ %i.ae, %compute_sampled_height.exit.us ], [ %i.cp, %compute_sampled_height.exit ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @validate_and_compute_tile_chunk_off(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = load i32, ptr %i.c, align 8, !tbaa !106  ; 7 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.g = load i32, ptr %i.f, align 4, !tbaa !107  ; 3 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108  ; 18 uses
  %.not151 = icmp eq ptr %i.j, null
  br i1 %.not151, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109  ; 9 uses
  %.not152 = icmp eq ptr %i.l, null
  br i1 %.not152, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = tail call i32 (ptr, i32, ptr, ...) %i.n(ptr noundef %0, i32 noundef 13, ptr noundef nonnull @.str.44) #8
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.p = or i32 %3, %2
  %i.q = or i32 %i.p, %4
  %i.r = or i32 %i.q, %5
  %or.cond5.not = icmp sgt i32 %i.r, -1
  br i1 %or.cond5.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = tail call i32 (ptr, i32, ptr, ...) %i.t(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.45, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #8
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i8, ptr %i.x, align 1, !tbaa !110
  %i.z = and i8 %i.y, 15
  switch i8 %i.z, label %bb.x [
    i8 0, label %bb.j
    i8 1, label %bb.j
    i8 2, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %.not157 = icmp eq i32 %4, %5
  br i1 %.not157, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = tail call i32 (ptr, i32, ptr, ...) %i.ab(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.46, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #8
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  %.not158 = icmp slt i32 %4, %i.d
  br i1 %.not158, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = tail call i32 (ptr, i32, ptr, ...) %i.ae(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.47, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.d) #8
  br label %bb.ab

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %4 to i64                      ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46 ; 5 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ag
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !46 ; 2 uses
  %.not159 = icmp slt i32 %2, %i.ai
  %.not160 = icmp slt i32 %3, %i.ak
  %or.cond = select i1 %.not159, i1 %.not160, i1 false
  br i1 %or.cond, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.n
  %i.al = icmp sgt i32 %4, 0
  br i1 %i.al, label %.lr.ph175.preheader, label %._crit_edge176

.lr.ph175.preheader:                              ; preds = %.preheader
  %xtraiter231 = and i64 %i.ag, 3                 ; 3 uses
  %i.am = icmp ult i32 %4, 4
  br i1 %i.am, label %.lr.ph175.epil.preheader, label %.lr.ph175.preheader.new

.lr.ph175.preheader.new:                          ; preds = %.lr.ph175.preheader
  %unroll_iter236 = and i64 %i.ag, 2147483644
  br label %.lr.ph175

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = tail call i32 (ptr, i32, ptr, ...) %i.ao(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.48, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.ai, i32 noundef %i.ak) #8
  br label %bb.ab

.lr.ph175:                                        ; preds = %.lr.ph175, %.lr.ph175.preheader.new
  %indvars.iv192 = phi i64 [ 0, %.lr.ph175.preheader.new ], [ %indvars.iv.next193.3, %.lr.ph175 ] ; 6 uses
  %.0136173 = phi i64 [ 0, %.lr.ph175.preheader.new ], [ %i.bv, %.lr.ph175 ]
  %niter237 = phi i64 [ 0, %.lr.ph175.preheader.new ], [ %niter237.next.3, %.lr.ph175 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv192
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !46
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv192
  %i.au = load i32, ptr %i.at, align 4, !tbaa !46
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.av, %i.as
  %i.ax = add nsw i64 %i.aw, %.0136173
  %indvars.iv.next193 = or disjoint i64 %indvars.iv192, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next193
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !46
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next193
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !46
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.bd, %i.ba
  %i.bf = add nsw i64 %i.be, %i.ax
  %indvars.iv.next193.1 = or disjoint i64 %indvars.iv192, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next193.1
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !46
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next193.1
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !46
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %i.bl, %i.bi
  %i.bn = add nsw i64 %i.bm, %i.bf
  %indvars.iv.next193.2 = or disjoint i64 %indvars.iv192, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next193.2
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !46
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next193.2
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !46
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %i.bt, %i.bq
  %i.bv = add nsw i64 %i.bu, %i.bn                ; 3 uses
  %indvars.iv.next193.3 = add nuw nsw i64 %indvars.iv192, 4 ; 2 uses
  %niter237.next.3 = add nuw i64 %niter237, 4     ; 2 uses
  %niter237.ncmp.3 = icmp eq i64 %niter237.next.3, %unroll_iter236
  br i1 %niter237.ncmp.3, label %._crit_edge176.loopexit.unr-lcssa, label %.lr.ph175, !llvm.loop !99

bb.p:                                             ; preds = %bb.i
  %.not153 = icmp slt i32 %4, %i.d
  br i1 %.not153, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !25
  %i.by = tail call i32 (ptr, i32, ptr, ...) %i.bx(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.49, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.d) #8
  br label %bb.ab

bb.r:                                             ; preds = %bb.p
  %.not154 = icmp slt i32 %5, %i.g
  br i1 %.not154, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !25
  %i.cb = tail call i32 (ptr, i32, ptr, ...) %i.ca(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.50, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.g) #8
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.cc = zext i32 %4 to i64                      ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !46 ; 5 uses
  %i.cf = zext nneg i32 %5 to i64                 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !46 ; 3 uses
  %.not155 = icmp slt i32 %2, %i.ce
  %.not156 = icmp slt i32 %3, %i.ch
  %or.cond162 = select i1 %.not155, i1 %.not156, i1 false
  br i1 %or.cond162, label %.preheader165, label %bb.v

.preheader165:                                    ; preds = %bb.t
  %i.ci = icmp sgt i32 %5, 0
  br i1 %i.ci, label %.preheader164.us.preheader, label %.preheader163

.preheader164.us.preheader:                       ; preds = %.preheader165
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.cj = icmp ult i32 %i.d, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod222 = icmp ne i64 %xtraiter, 0
  br label %.preheader164.us

.preheader164.us:                                 ; preds = %.preheader164.us.preheader, %._crit_edge.us
  %indvars.iv182 = phi i64 [ 0, %.preheader164.us.preheader ], [ %indvars.iv.next183, %._crit_edge.us ] ; 2 uses
  %.1168.us = phi i64 [ 0, %.preheader164.us.preheader ], [ %.lcssa220, %._crit_edge.us ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv182
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !46
  %i.cm = sext i32 %i.cl to i64                   ; 5 uses
  br i1 %i.cj, label %.epil.preheader, label %.preheader164.us.new

.preheader164.us.new:                             ; preds = %.preheader164.us, %.preheader164.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader164.us.new ], [ 0, %.preheader164.us ] ; 5 uses
  %.2166.us = phi i64 [ %i.dj, %.preheader164.us.new ], [ %.1168.us, %.preheader164.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader164.us.new ], [ 0, %.preheader164.us ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !46
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.cm, %i.cp
  %i.cr = add nsw i64 %i.cq, %.2166.us
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !46
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul nsw i64 %i.cm, %i.cv
  %i.cx = add nsw i64 %i.cw, %i.cr
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !46
  %i.db = sext i32 %i.da to i64
  %i.dc = mul nsw i64 %i.cm, %i.db
  %i.dd = add nsw i64 %i.dc, %i.cx
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !46
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %i.cm, %i.dh
  %i.dj = add nsw i64 %i.di, %i.dd                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader164.us.new, !llvm.loop !100

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader164.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader164.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader164.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.2166.us.epil.init = phi i64 [ %.1168.us, %.preheader164.us ], [ %i.dj, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.u ] ; 2 uses
  %.2166.us.epil = phi i64 [ %.2166.us.epil.init, %.epil.preheader ], [ %i.do, %bb.u ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !46
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul nsw i64 %i.cm, %i.dm
  %i.do = add nsw i64 %i.dn, %.2166.us.epil       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.u, !llvm.loop !101

._crit_edge.us:                                   ; preds = %bb.u, %._crit_edge.us.unr-lcssa
  %.lcssa220 = phi i64 [ %i.dj, %._crit_edge.us.unr-lcssa ], [ %i.do, %bb.u ] ; 2 uses
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %i.cf
  br i1 %exitcond186.not, label %.preheader163, label %.preheader164.us, !llvm.loop !102

bb.v:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !25
  %i.dr = tail call i32 (ptr, i32, ptr, ...) %i.dq(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.51, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.ce, i32 noundef %i.ch) #8
  br label %bb.ab

.preheader163:                                    ; preds = %._crit_edge.us, %.preheader165
  %.1.lcssa = phi i64 [ 0, %.preheader165 ], [ %.lcssa220, %._crit_edge.us ] ; 3 uses
  %i.ds = icmp sgt i32 %4, 0
  br i1 %i.ds, label %.lr.ph, label %._crit_edge176

.lr.ph:                                           ; preds = %.preheader163
  %i.dt = zext nneg i32 %i.ch to i64              ; 5 uses
  %xtraiter224 = and i64 %i.cc, 3                 ; 3 uses
  %i.du = icmp ult i32 %4, 4
  br i1 %i.du, label %.epil.preheader223, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter229 = and i64 %i.cc, 2147483644
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.new
  %indvars.iv187 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next188.3, %bb.w ] ; 5 uses
  %.3171 = phi i64 [ %.1.lcssa, %.lr.ph.new ], [ %i.er, %bb.w ]
  %niter230 = phi i64 [ 0, %.lr.ph.new ], [ %niter230.next.3, %bb.w ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv187
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !46
  %i.dx = sext i32 %i.dw to i64
  %i.dy = mul nsw i64 %i.dx, %i.dt
  %i.dz = add nsw i64 %i.dy, %.3171
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv187
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !46
  %i.ed = sext i32 %i.ec to i64
  %i.ee = mul nsw i64 %i.ed, %i.dt
  %i.ef = add nsw i64 %i.ee, %i.dz
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv187
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !46
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i64 %i.ej, %i.dt
  %i.el = add nsw i64 %i.ek, %i.ef
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv187
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !46
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul nsw i64 %i.ep, %i.dt
  %i.er = add nsw i64 %i.eq, %i.el                ; 3 uses
  %indvars.iv.next188.3 = add nuw nsw i64 %indvars.iv187, 4 ; 2 uses
  %niter230.next.3 = add i64 %niter230, 4         ; 2 uses
  %niter230.ncmp.3 = icmp eq i64 %niter230.next.3, %unroll_iter229
  br i1 %niter230.ncmp.3, label %._crit_edge176.loopexit218.unr-lcssa, label %bb.w, !llvm.loop !103

bb.x:                                             ; preds = %bb.i
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !25
  %i.eu = tail call i32 (ptr, i32, ptr, ...) %i.et(ptr noundef %0, i32 noundef 33, ptr noundef nonnull @.str.52) #8
  br label %bb.ab

._crit_edge176.loopexit.unr-lcssa:                ; preds = %.lr.ph175
  %lcmp.mod233.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod233.not, label %._crit_edge176, label %.lr.ph175.epil.preheader

.lr.ph175.epil.preheader:                         ; preds = %._crit_edge176.loopexit.unr-lcssa, %.lr.ph175.preheader
  %indvars.iv192.epil.init = phi i64 [ 0, %.lr.ph175.preheader ], [ %indvars.iv.next193.3, %._crit_edge176.loopexit.unr-lcssa ]
  %.0136173.epil.init = phi i64 [ 0, %.lr.ph175.preheader ], [ %i.bv, %._crit_edge176.loopexit.unr-lcssa ]
  %lcmp.mod235 = icmp ne i64 %xtraiter231, 0
  tail call void @llvm.assume(i1 %lcmp.mod235)
  br label %.lr.ph175.epil

.lr.ph175.epil:                                   ; preds = %.lr.ph175.epil, %.lr.ph175.epil.preheader
  %indvars.iv192.epil = phi i64 [ %indvars.iv.next193.epil, %.lr.ph175.epil ], [ %indvars.iv192.epil.init, %.lr.ph175.epil.preheader ] ; 3 uses
  %.0136173.epil = phi i64 [ %i.fc, %.lr.ph175.epil ], [ %.0136173.epil.init, %.lr.ph175.epil.preheader ]
  %epil.iter232 = phi i64 [ %epil.iter232.next, %.lr.ph175.epil ], [ 0, %.lr.ph175.epil.preheader ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv192.epil
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !46
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv192.epil
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !46
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul nsw i64 %i.fa, %i.ex
  %i.fc = add nsw i64 %i.fb, %.0136173.epil       ; 2 uses
  %indvars.iv.next193.epil = add nuw nsw i64 %indvars.iv192.epil, 1
  %epil.iter232.next = add i64 %epil.iter232, 1   ; 2 uses
  %epil.iter232.cmp.not = icmp eq i64 %epil.iter232.next, %xtraiter231
  br i1 %epil.iter232.cmp.not, label %._crit_edge176, label %.lr.ph175.epil, !llvm.loop !104

._crit_edge176.loopexit218.unr-lcssa:             ; preds = %bb.w
  %lcmp.mod226.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod226.not, label %._crit_edge176, label %.epil.preheader223

.epil.preheader223:                               ; preds = %._crit_edge176.loopexit218.unr-lcssa, %.lr.ph
  %indvars.iv187.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next188.3, %._crit_edge176.loopexit218.unr-lcssa ]
  %.3171.epil.init = phi i64 [ %.1.lcssa, %.lr.ph ], [ %i.er, %._crit_edge176.loopexit218.unr-lcssa ]
  %lcmp.mod228 = icmp ne i64 %xtraiter224, 0
  tail call void @llvm.assume(i1 %lcmp.mod228)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader223
  %indvars.iv187.epil = phi i64 [ %indvars.iv187.epil.init, %.epil.preheader223 ], [ %indvars.iv.next188.epil, %bb.y ] ; 2 uses
  %.3171.epil = phi i64 [ %.3171.epil.init, %.epil.preheader223 ], [ %i.fh, %bb.y ]
  %epil.iter225 = phi i64 [ 0, %.epil.preheader223 ], [ %epil.iter225.next, %bb.y ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv187.epil
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !46
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i64 %i.ff, %i.dt
  %i.fh = add nsw i64 %i.fg, %.3171.epil          ; 2 uses
  %indvars.iv.next188.epil = add nuw nsw i64 %indvars.iv187.epil, 1
  %epil.iter225.next = add i64 %epil.iter225, 1   ; 2 uses
  %epil.iter225.cmp.not = icmp eq i64 %epil.iter225.next, %xtraiter224
  br i1 %epil.iter225.cmp.not, label %._crit_edge176, label %bb.y, !llvm.loop !105
end_hunk_0
