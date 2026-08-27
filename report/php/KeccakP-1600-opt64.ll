Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/KeccakP-1600-opt64?download=true
inline.NumInlined: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@KeccakP1600_OverwriteBytes:bb.a
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.ao, ptr %i.ar, align 1, !tbaa !14
  %exitcond.not.i38.3 = icmp eq i32 %i.v, 4
  br i1 %exitcond.not.i38.3, label %KeccakP1600_OverwriteBytesInLane.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !14
  %i.au = xor i8 %i.at, -1
  %i.av = or disjoint i32 %i.s, 4
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !14
  %exitcond.not.i38.4 = icmp eq i32 %i.v, 5
  br i1 %exitcond.not.i38.4, label %KeccakP1600_OverwriteBytesInLane.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = xor i8 %i.az, -1
  %i.bb = or disjoint i32 %i.s, 5
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  store i8 %i.ba, ptr %i.bd, align 1, !tbaa !14
  %exitcond.not.i38.5 = icmp eq i32 %i.v, 6
  br i1 %exitcond.not.i38.5, label %KeccakP1600_OverwriteBytesInLane.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bg = xor i8 %i.bf, -1
  %i.bh = or disjoint i32 %i.s, 6
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !14
  br label %KeccakP1600_OverwriteBytesInLane.exit

KeccakP1600_OverwriteLanes.exit.thread:           ; preds = %bb.b, %KeccakP1600_OverwriteLanes.exit
  %.pre-phi55 = phi i64 [ %i.t, %KeccakP1600_OverwriteLanes.exit ], [ 0, %bb.b ]
  %i.bk = phi i32 [ %i.v, %KeccakP1600_OverwriteLanes.exit ], [ %3, %bb.b ]
  %i.bl = phi ptr [ %i.u, %KeccakP1600_OverwriteLanes.exit ], [ %1, %bb.b ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.pre-phi55
  %i.bn = zext nneg i32 %i.bk to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr readonly align 1 %i.bl, i64 %i.bn, i1 false)
  br label %KeccakP1600_OverwriteBytesInLane.exit

bb.n:                                             ; preds = %bb.a
  %.not47 = icmp eq i32 %3, 0
  br i1 %.not47, label %KeccakP1600_OverwriteBytesInLane.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.bo = and i32 %2, 7
  %i.bp = lshr i32 %2, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %KeccakP1600_OverwriteBytesInLane.exit45
  %.02751 = phi ptr [ %i.dk, %KeccakP1600_OverwriteBytesInLane.exit45 ], [ %1, %.lr.ph.preheader ] ; 7 uses
  %.02850 = phi i32 [ 0, %KeccakP1600_OverwriteBytesInLane.exit45 ], [ %i.bo, %.lr.ph.preheader ] ; 3 uses
  %.02949 = phi i32 [ %i.dj, %KeccakP1600_OverwriteBytesInLane.exit45 ], [ %i.bp, %.lr.ph.preheader ] ; 3 uses
  %.03048 = phi i32 [ %i.di, %KeccakP1600_OverwriteBytesInLane.exit45 ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.bq = sub nuw nsw i32 8, %.02850
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %.03048) ; 4 uses
  %i.br = shl i32 %.02949, 3                      ; 2 uses
  switch i32 %.02949, label %bb.p [
    i32 20, label %.lr.ph.i40
    i32 17, label %.lr.ph.i40
    i32 12, label %.lr.ph.i40
    i32 8, label %.lr.ph.i40
    i32 2, label %.lr.ph.i40
    i32 1, label %.lr.ph.i40
  ]

.lr.ph.i40:                                       ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.bs = or disjoint i32 %.02850, %i.br          ; 5 uses
  %wide.trip.count.i41 = zext nneg i32 %spec.select to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i41, 3     ; 3 uses
  %i.bt = icmp samesign ult i32 %spec.select, 4
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.i40.new

.lr.ph.i40.new:                                   ; preds = %.lr.ph.i40
  %unroll_iter = and i64 %wide.trip.count.i41, 12
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i40.new
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.i40.new ], [ %indvars.iv.next.i43.3, %bb.o ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i40.new ], [ %niter.next.3, %bb.o ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.02751, i64 %indvars.iv.i42
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !14
  %i.bw = xor i8 %i.bv, -1
  %i.bx = trunc nuw i64 %indvars.iv.i42 to i32
  %i.by = add i32 %i.bs, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  store i8 %i.bw, ptr %i.ca, align 1, !tbaa !14
  %indvars.iv.next.i43 = or disjoint i64 %indvars.iv.i42, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02751, i64 %indvars.iv.next.i43
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = xor i8 %i.cc, -1
  %i.ce = trunc nuw i64 %indvars.iv.next.i43 to i32
  %i.cf = add i32 %i.bs, %i.ce
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg
  store i8 %i.cd, ptr %i.ch, align 1, !tbaa !14
  %indvars.iv.next.i43.1 = or disjoint i64 %indvars.iv.i42, 2 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02751, i64 %indvars.iv.next.i43.1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !14
  %i.ck = xor i8 %i.cj, -1
  %i.cl = trunc nuw i64 %indvars.iv.next.i43.1 to i32
  %i.cm = add i32 %i.bs, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn
  store i8 %i.ck, ptr %i.co, align 1, !tbaa !14
  %indvars.iv.next.i43.2 = or disjoint i64 %indvars.iv.i42, 3 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02751, i64 %indvars.iv.next.i43.2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !14
  %i.cr = xor i8 %i.cq, -1
  %i.cs = trunc nuw i64 %indvars.iv.next.i43.2 to i32
  %i.ct = add i32 %i.bs, %i.cs
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %i.cu
  store i8 %i.cr, ptr %i.cv, align 1, !tbaa !14
  %indvars.iv.next.i43.3 = add nuw nsw i64 %indvars.iv.i42, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %KeccakP1600_OverwriteBytesInLane.exit45.loopexit.unr-lcssa, label %bb.o, !llvm.loop !30

bb.p:                                             ; preds = %.lr.ph
  %i.cw = zext i32 %i.br to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cw
  %i.cy = zext nneg i32 %.02850 to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy
  %i.da = zext nneg i32 %spec.select to i64       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cz, ptr noundef nonnull readonly align 1 dereferenceable(1) %.02751, i64 %i.da, i1 false)
  br label %KeccakP1600_OverwriteBytesInLane.exit45

KeccakP1600_OverwriteBytesInLane.exit45.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %KeccakP1600_OverwriteBytesInLane.exit45, label %.epil.preheader

.epil.preheader:                                  ; preds = %KeccakP1600_OverwriteBytesInLane.exit45.loopexit.unr-lcssa, %.lr.ph.i40
  %indvars.iv.i42.epil.init = phi i64 [ 0, %.lr.ph.i40 ], [ %indvars.iv.next.i43.3, %KeccakP1600_OverwriteBytesInLane.exit45.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i42.epil = phi i64 [ %indvars.iv.i42.epil.init, %.epil.preheader ], [ %indvars.iv.next.i43.epil, %bb.q ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.db = getelementptr inbounds nuw i8, ptr %.02751, i64 %indvars.iv.i42.epil
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !14
  %i.dd = xor i8 %i.dc, -1
  %i.de = trunc nuw i64 %indvars.iv.i42.epil to i32
  %i.df = add i32 %i.bs, %i.de
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %i.dg
  store i8 %i.dd, ptr %i.dh, align 1, !tbaa !14
  %indvars.iv.next.i43.epil = add nuw nsw i64 %indvars.iv.i42.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %KeccakP1600_OverwriteBytesInLane.exit45, label %bb.q, !llvm.loop !31

KeccakP1600_OverwriteBytesInLane.exit45:          ; preds = %KeccakP1600_OverwriteBytesInLane.exit45.loopexit.unr-lcssa, %bb.q, %bb.p
  %.pre-phi = phi i64 [ %i.da, %bb.p ], [ %wide.trip.count.i41, %bb.q ], [ %wide.trip.count.i41, %KeccakP1600_OverwriteBytesInLane.exit45.loopexit.unr-lcssa ]
  %i.di = sub i32 %.03048, %spec.select           ; 2 uses
  %i.dj = add i32 %.02949, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.02751, i64 %.pre-phi
  %.not = icmp eq i32 %i.di, 0
  br i1 %.not, label %KeccakP1600_OverwriteBytesInLane.exit, label %.lr.ph, !llvm.loop !32

KeccakP1600_OverwriteBytesInLane.exit:            ; preds = %KeccakP1600_OverwriteBytesInLane.exit45, %.lr.ph.i34, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %KeccakP1600_OverwriteLanes.exit.thread, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @KeccakP1600_OverwriteWithZeroes(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %1, 3                           ; 5 uses
  %.not49 = icmp eq i32 %i.a, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 536870910
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.b ]
  %i.c = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.d = and i32 %i.c, 2147483642
  %i.e = icmp eq i32 %i.d, 8
  br i1 %i.e, label %.lr.ph.1, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph
  %switch.tableidx = add i32 %i.c, -1             ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 20
  br i1 %i.f, label %switch.lookup, label %.lr.ph.1

switch.lookup:                                    ; preds = %switch.early.test
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.KeccakP1600_OverwriteWithZeroes, i64 %i.g
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %switch.early.test, %switch.lookup, %.lr.ph
  %.sink = phi i64 [ -1, %.lr.ph ], [ %switch.load, %switch.lookup ], [ 0, %switch.early.test ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %.sink, ptr %i.h, align 8, !tbaa !12
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.i = icmp samesign ult i64 %indvars.iv.next, 21
  br i1 %i.i, label %switch.lookup.1, label %bb.b

switch.lookup.1:                                  ; preds = %.lr.ph.1
  %switch.gep.1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.KeccakP1600_OverwriteWithZeroes, i64 %indvars.iv
  %switch.load.1 = load i64, ptr %switch.gep.1, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup.1, %.lr.ph.1
  %.sink.1 = phi i64 [ 0, %.lr.ph.1 ], [ %switch.load.1, %switch.lookup.1 ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %.sink.1, ptr %i.j, align 8, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !33

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod53 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.k = trunc nuw nsw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %i.l = and i32 %i.k, 2147483643
  %i.m = icmp eq i32 %i.l, 8
  br i1 %i.m, label %._crit_edge.loopexit.epilog-lcssa, label %switch.early.test.epil

switch.early.test.epil:                           ; preds = %.lr.ph.epil.preheader
  %switch.tableidx.epil = add i32 %i.k, -1        ; 2 uses
  %i.n = icmp ult i32 %switch.tableidx.epil, 20
  br i1 %i.n, label %switch.lookup.epil, label %._crit_edge.loopexit.epilog-lcssa

switch.lookup.epil:                               ; preds = %switch.early.test.epil
  %i.o = zext nneg i32 %switch.tableidx.epil to i64
  %switch.gep.epil = getelementptr inbounds nuw [8 x i8], ptr @switch.table.KeccakP1600_OverwriteWithZeroes, i64 %i.o
  %switch.load.epil = load i64, ptr %switch.gep.epil, align 8
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %switch.lookup.epil, %switch.early.test.epil, %.lr.ph.epil.preheader
  %.sink.epil = phi i64 [ -1, %.lr.ph.epil.preheader ], [ %switch.load.epil, %switch.lookup.epil ], [ 0, %switch.early.test.epil ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i64 %.sink.epil, ptr %i.p, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.q = and i32 %1, 7                            ; 3 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.r = and i32 %1, -40
  %i.s = icmp eq i32 %i.r, 64
  br i1 %i.s, label %bb.d, label %switch.early.test47

switch.early.test47:                              ; preds = %bb.c
  switch i32 %i.a, label %bb.e [
    i32 20, label %bb.d
    i32 17, label %bb.d
    i32 2, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test47, %switch.early.test47, %switch.early.test47, %switch.early.test47, %bb.c
  %i.t = and i32 %1, -8
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = zext nneg i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 -1, i64 %i.w, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %switch.early.test47
  %i.x = and i32 %1, -8
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = zext nneg i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.aa, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @KeccakP1600_Permute_Nrounds(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !12   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !12   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !12   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !12   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !12   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !12   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !12  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !12 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !12 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !12 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !12 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !12 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !12 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !12 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !12 ; 3 uses
  %i.ax = xor i64 %i.k, %i.a
  %i.ay = xor i64 %i.ax, %i.u
  %i.az = xor i64 %i.ay, %i.ae
  %i.ba = xor i64 %i.az, %i.ao                    ; 4 uses
  %i.bb = xor i64 %i.m, %i.c
  %i.bc = xor i64 %i.bb, %i.w
  %i.bd = xor i64 %i.bc, %i.ag
  %i.be = xor i64 %i.bd, %i.aq                    ; 4 uses
  %i.bf = xor i64 %i.o, %i.e
  %i.bg = xor i64 %i.bf, %i.y
  %i.bh = xor i64 %i.bg, %i.ai
  %i.bi = xor i64 %i.bh, %i.as                    ; 4 uses
  %i.bj = xor i64 %i.q, %i.g
  %i.bk = xor i64 %i.bj, %i.aa
  %i.bl = xor i64 %i.bk, %i.ak
  %i.bm = xor i64 %i.bl, %i.au                    ; 4 uses
  %i.bn = xor i64 %i.s, %i.i
  %i.bo = xor i64 %i.bn, %i.ac
  %i.bp = xor i64 %i.bo, %i.am
  %i.bq = xor i64 %i.bp, %i.aw                    ; 4 uses
  %i.br = sub i32 24, %1                          ; 3 uses
  %i.bs = and i32 %i.br, 1
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 1)
  %i.bu = xor i64 %i.bq, %i.bt                    ; 5 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 1)
  %i.bw = xor i64 %i.bv, %i.ba                    ; 5 uses
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 1)
  %i.by = xor i64 %i.bx, %i.be                    ; 5 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 1)
  %i.ca = xor i64 %i.bz, %i.bi                    ; 5 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 1)
  %i.cc = xor i64 %i.bm, %i.cb                    ; 5 uses
  %i.cd = xor i64 %i.bu, %i.a                     ; 3 uses
  %i.ce = xor i64 %i.bw, %i.m                     ; 2 uses
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 44) ; 3 uses
  %i.cg = xor i64 %i.by, %i.y                     ; 2 uses
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 43) ; 3 uses
  %i.ci = xor i64 %i.ca, %i.ak                    ; 2 uses
  %i.cj = tail call i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 21) ; 3 uses
  %i.ck = xor i64 %i.cc, %i.aw                    ; 2 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 14) ; 3 uses
  %i.cm = or i64 %i.ch, %i.cf
  %i.cn = zext i32 %i.br to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @KeccakF1600RoundConstants, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !12
end_hunk_0
begin_hunk_1_@KeccakP1600_ExtractAndAddBytes:bb.a
  %.027.i = phi i64 [ %i.co, %bb.i ], [ %i.cj, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.i, %KeccakP1600_ExtractAndAddLanes.exit.thread59 ]
  %i.cs = ptrtoaddr ptr %i.cq to i64              ; 2 uses
  %i.ct = ptrtoaddr ptr %i.cr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i64 %.027.i, ptr %i.e, align 8, !tbaa !12
  %.not.i41 = icmp eq i32 %i.cp, 0
  br i1 %.not.i41, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %iter.check

iter.check:                                       ; preds = %bb.j
  %wide.trip.count.i43 = zext i32 %i.cp to i64    ; 8 uses
  %min.iters.check81 = icmp ult i32 %i.cp, 4
  br i1 %min.iters.check81, label %.lr.ph.i44.preheader, label %vector.memcheck76

vector.memcheck76:                                ; preds = %iter.check
  %i.cu = sub i64 %i.ct, %i.cs
  %diff.check77 = icmp ugt i64 %i.cu, -32
  %i.cv = sub i64 %i.f, %i.cs
  %diff.check78 = icmp ugt i64 %i.cv, -32
  %conflict.rdx79 = or i1 %diff.check77, %diff.check78
  br i1 %conflict.rdx79, label %.lr.ph.i44.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck76
  %min.iters.check82 = icmp ult i32 %i.cp, 32
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph83

vector.ph83:                                      ; preds = %vector.main.loop.iter.check
  %i.cw = and i64 %wide.trip.count.i43, 28
  %n.vec84 = and i64 %wide.trip.count.i43, 2147483616 ; 4 uses
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next91, %vector.body85 ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index86 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load87 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !14
  %wide.load88 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 %index86 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load89 = load <16 x i8>, ptr %i.cz, align 8, !tbaa !14
  %wide.load90 = load <16 x i8>, ptr %i.da, align 8, !tbaa !14
  %i.db = xor <16 x i8> %wide.load89, %wide.load87
  %i.dc = xor <16 x i8> %wide.load90, %wide.load88
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 %index86 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <16 x i8> %i.db, ptr %i.dd, align 1, !tbaa !14
  store <16 x i8> %i.dc, ptr %i.de, align 1, !tbaa !14
  %index.next91 = add nuw i64 %index86, 32        ; 2 uses
  %i.df = icmp eq i64 %index.next91, %n.vec84
  br i1 %i.df, label %middle.block92, label %vector.body85, !llvm.loop !45

middle.block92:                                   ; preds = %vector.body85
  %cmp.n93 = icmp eq i64 %n.vec84, %wide.trip.count.i43
  br i1 %cmp.n93, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block92
  %min.epilog.iters.check = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i44.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec84, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec94 = and i64 %wide.trip.count.i43, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index95
  %wide.load96 = load <4 x i8>, ptr %i.dg, align 1, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 %index95
  %wide.load97 = load <4 x i8>, ptr %i.dh, align 4, !tbaa !14
  %i.di = xor <4 x i8> %wide.load97, %wide.load96
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cq, i64 %index95
  store <4 x i8> %i.di, ptr %i.dj, align 1, !tbaa !14
  %index.next98 = add nuw i64 %index95, 4         ; 2 uses
  %i.dk = icmp eq i64 %index.next98, %n.vec94
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %n.vec94, %wide.trip.count.i43
  br i1 %cmp.n99, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %.lr.ph.i44.preheader

.lr.ph.i44.preheader:                             ; preds = %vector.memcheck76, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i45.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck76 ], [ %n.vec84, %vec.epilog.iter.check ], [ %n.vec94, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter104 = and i64 %wide.trip.count.i43, 3  ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph.i44.prol.loopexit, label %.lr.ph.i44.prol

.lr.ph.i44.prol:                                  ; preds = %.lr.ph.i44.preheader, %.lr.ph.i44.prol
  %indvars.iv.i45.prol = phi i64 [ %indvars.iv.next.i46.prol, %.lr.ph.i44.prol ], [ %indvars.iv.i45.ph, %.lr.ph.i44.preheader ] ; 4 uses
  %prol.iter106 = phi i64 [ %prol.iter106.next, %.lr.ph.i44.prol ], [ 0, %.lr.ph.i44.preheader ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.i45.prol
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !14
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i45.prol
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !14
  %i.dp = xor i8 %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.i45.prol
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !14
  %indvars.iv.next.i46.prol = add nuw nsw i64 %indvars.iv.i45.prol, 1 ; 2 uses
  %prol.iter106.next = add i64 %prol.iter106, 1   ; 2 uses
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %.lr.ph.i44.prol.loopexit, label %.lr.ph.i44.prol, !llvm.loop !47

.lr.ph.i44.prol.loopexit:                         ; preds = %.lr.ph.i44.prol, %.lr.ph.i44.preheader
  %indvars.iv.i45.unr = phi i64 [ %indvars.iv.i45.ph, %.lr.ph.i44.preheader ], [ %indvars.iv.next.i46.prol, %.lr.ph.i44.prol ]
  %i.dr = sub nsw i64 %indvars.iv.i45.ph, %wide.trip.count.i43
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.prol.loopexit, %.lr.ph.i44
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i46.3, %.lr.ph.i44 ], [ %indvars.iv.i45.unr, %.lr.ph.i44.prol.loopexit ] ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.i45
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !14
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i45
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !14
  %i.dx = xor i8 %i.dw, %i.du
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.i45
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !14
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.next.i46
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i46
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !14
  %i.ed = xor i8 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i46
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !14
  %indvars.iv.next.i46.1 = add nuw nsw i64 %indvars.iv.i45, 2 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.next.i46.1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !14
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i46.1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !14
  %i.ej = xor i8 %i.ei, %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i46.1
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !14
  %indvars.iv.next.i46.2 = add nuw nsw i64 %indvars.iv.i45, 3 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.next.i46.2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i46.2
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !14
  %i.ep = xor i8 %i.eo, %i.em
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i46.2
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !14
  %indvars.iv.next.i46.3 = add nuw nsw i64 %indvars.iv.i45, 4 ; 2 uses
  %exitcond.not.i47.3 = icmp eq i64 %indvars.iv.next.i46.3, %wide.trip.count.i43
  br i1 %exitcond.not.i47.3, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %.lr.ph.i44, !llvm.loop !48

KeccakP1600_ExtractAndAddBytesInLane.exit:        ; preds = %.lr.ph.i44.prol.loopexit, %.lr.ph.i44, %middle.block92, %vec.epilog.middle.block, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.loopexit

bb.k:                                             ; preds = %bb.a
  %.not60 = icmp eq i32 %4, 0
  br i1 %.not60, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.er = and i32 %3, 7
  %i.es = lshr i32 %3, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %KeccakP1600_ExtractAndAddBytesInLane.exit58
  %.03465 = phi ptr [ %i.gd, %KeccakP1600_ExtractAndAddBytesInLane.exit58 ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.03564 = phi ptr [ %i.gc, %KeccakP1600_ExtractAndAddBytesInLane.exit58 ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.03663 = phi i32 [ 0, %KeccakP1600_ExtractAndAddBytesInLane.exit58 ], [ %i.er, %.lr.ph.preheader ] ; 4 uses
  %.03762 = phi i32 [ %i.gb, %KeccakP1600_ExtractAndAddBytesInLane.exit58 ], [ %i.es, %.lr.ph.preheader ] ; 3 uses
  %.03861 = phi i32 [ %i.ga, %KeccakP1600_ExtractAndAddBytesInLane.exit58 ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %i.et = sub nuw nsw i32 8, %.03663
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.et, i32 %.03861) ; 4 uses
  %i.eu = zext i32 %.03762 to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !12 ; 2 uses
  switch i32 %.03762, label %.lr.ph.preheader.i51 [
    i32 20, label %bb.l
    i32 17, label %bb.l
    i32 12, label %bb.l
    i32 8, label %bb.l
    i32 2, label %bb.l
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.ex = xor i64 %i.ew, -1
  br label %.lr.ph.preheader.i51

.lr.ph.preheader.i51:                             ; preds = %.lr.ph, %bb.l
  %.027.i49 = phi i64 [ %i.ex, %bb.l ], [ %i.ew, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 %.027.i49, ptr %i.d, align 8, !tbaa !12
  %wide.trip.count.i52 = zext nneg i32 %spec.select to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i52, 1
  %i.ey = icmp eq i32 %spec.select, 1
  br i1 %i.ey, label %.lr.ph.i53.epil.preheader, label %.lr.ph.preheader.i51.new

.lr.ph.preheader.i51.new:                         ; preds = %.lr.ph.preheader.i51
  %unroll_iter = and i64 %wide.trip.count.i52, 14
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.preheader.i51.new
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.preheader.i51.new ], [ %indvars.iv.next.i55.1, %.lr.ph.i53 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i51.new ], [ %niter.next.1, %.lr.ph.i53 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.03564, i64 %indvars.iv.i54
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !14
  %i.fb = trunc nuw i64 %indvars.iv.i54 to i32
  %i.fc = add i32 %.03663, %i.fb
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !14
  %i.fg = xor i8 %i.ff, %i.fa
  %i.fh = getelementptr inbounds nuw i8, ptr %.03465, i64 %indvars.iv.i54
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !14
  %indvars.iv.next.i55 = or disjoint i64 %indvars.iv.i54, 1 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.03564, i64 %indvars.iv.next.i55
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !14
  %i.fk = trunc nuw i64 %indvars.iv.next.i55 to i32
  %i.fl = add i32 %.03663, %i.fk
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !14
  %i.fp = xor i8 %i.fo, %i.fj
  %i.fq = getelementptr inbounds nuw i8, ptr %.03465, i64 %indvars.iv.next.i55
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !14
  %indvars.iv.next.i55.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %KeccakP1600_ExtractAndAddBytesInLane.exit58.unr-lcssa, label %.lr.ph.i53, !llvm.loop !49

KeccakP1600_ExtractAndAddBytesInLane.exit58.unr-lcssa: ; preds = %.lr.ph.i53
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %KeccakP1600_ExtractAndAddBytesInLane.exit58, label %.lr.ph.i53.epil.preheader

.lr.ph.i53.epil.preheader:                        ; preds = %KeccakP1600_ExtractAndAddBytesInLane.exit58.unr-lcssa, %.lr.ph.preheader.i51
  %indvars.iv.i54.epil.init = phi i64 [ 0, %.lr.ph.preheader.i51 ], [ %indvars.iv.next.i55.1, %KeccakP1600_ExtractAndAddBytesInLane.exit58.unr-lcssa ] ; 3 uses
  %lcmp.mod101 = trunc i32 %spec.select to i1
  call void @llvm.assume(i1 %lcmp.mod101)
  %i.fr = getelementptr inbounds nuw i8, ptr %.03564, i64 %indvars.iv.i54.epil.init
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !14
  %i.ft = trunc nuw i64 %indvars.iv.i54.epil.init to i32
  %i.fu = add i32 %.03663, %i.ft
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !14
  %i.fy = xor i8 %i.fx, %i.fs
  %i.fz = getelementptr inbounds nuw i8, ptr %.03465, i64 %indvars.iv.i54.epil.init
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !14
  br label %KeccakP1600_ExtractAndAddBytesInLane.exit58

KeccakP1600_ExtractAndAddBytesInLane.exit58:      ; preds = %KeccakP1600_ExtractAndAddBytesInLane.exit58.unr-lcssa, %.lr.ph.i53.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.ga = sub i32 %.03861, %spec.select           ; 2 uses
  %i.gb = add i32 %.03762, 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.03564, i64 %wide.trip.count.i52
  %i.gd = getelementptr inbounds nuw i8, ptr %.03465, i64 %wide.trip.count.i52
  %.not = icmp eq i32 %i.ga, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !50

.loopexit:                                        ; preds = %KeccakP1600_ExtractAndAddBytesInLane.exit58, %bb.k, %KeccakP1600_ExtractAndAddBytesInLane.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @KeccakF1600_FastLoop_Absorb(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !12   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !12   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !12   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !12 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !12 ; 2 uses
  %i.ax = shl i32 %1, 3
  %i.ay = zext i32 %i.ax to i64                   ; 3 uses
  %.not5969 = icmp ult i64 %3, %i.ay
  br i1 %.not5969, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.az = icmp eq i32 %1, 21
  %i.ba = icmp ult i32 %1, 16
  %i.bb = icmp ult i32 %1, 24
  %i.bc = icmp eq i32 %1, 24
  %i.bd = icmp samesign ult i32 %1, 20
  %i.be = icmp samesign ult i32 %1, 22
  %.not5963 = icmp eq i32 %1, 23
  %i.bf = icmp samesign ult i32 %1, 18
  %.not5964 = icmp eq i32 %1, 19
  %i.bg = icmp eq i32 %1, 16
  %i.bh = icmp samesign ult i32 %1, 8
  %i.bi = icmp samesign ult i32 %1, 12
  %i.bj = icmp samesign ult i32 %1, 14
  %.not5965 = icmp eq i32 %1, 15
  %i.bk = icmp eq i32 %1, 12
  %i.bl = icmp samesign ult i32 %1, 10
  %.not5966 = icmp eq i32 %1, 11
  %i.bm = icmp eq i32 %1, 8
  %i.bn = icmp samesign ult i32 %1, 4
  %i.bo = icmp samesign ult i32 %1, 6
  %.not5967 = icmp eq i32 %1, 7
  %i.bp = icmp eq i32 %1, 4
  %i.bq = icmp samesign ult i32 %1, 2
  %.not5968 = icmp eq i32 %1, 3
  %i.br = icmp eq i32 %1, 0
  %i.bs = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.an
  %.05996 = phi ptr [ %2, %.lr.ph ], [ %i.egk, %bb.an ] ; 90 uses
  %.059115995 = phi i64 [ %i.aw, %.lr.ph ], [ %i.egj, %bb.an ] ; 26 uses
  %.059125994 = phi i64 [ %i.au, %.lr.ph ], [ %i.egh, %bb.an ] ; 25 uses
  %.059145993 = phi i64 [ %i.as, %.lr.ph ], [ %i.egf, %bb.an ] ; 25 uses
  %.059165992 = phi i64 [ %i.aq, %.lr.ph ], [ %i.egd, %bb.an ] ; 24 uses
  %.059185991 = phi i64 [ %i.ao, %.lr.ph ], [ %i.egb, %bb.an ] ; 24 uses
  %.059205990 = phi i64 [ %i.am, %.lr.ph ], [ %i.efo, %bb.an ] ; 23 uses
  %.059225989 = phi i64 [ %i.ak, %.lr.ph ], [ %i.efm, %bb.an ] ; 23 uses
  %.059245988 = phi i64 [ %i.ai, %.lr.ph ], [ %i.efk, %bb.an ] ; 22 uses
  %.059265987 = phi i64 [ %i.ag, %.lr.ph ], [ %i.efh, %bb.an ] ; 22 uses
  %.059285986 = phi i64 [ %i.ae, %.lr.ph ], [ %i.eff, %bb.an ] ; 18 uses
  %.059305985 = phi i64 [ %i.ac, %.lr.ph ], [ %i.eet, %bb.an ] ; 18 uses
  %.059325984 = phi i64 [ %i.aa, %.lr.ph ], [ %i.eer, %bb.an ] ; 17 uses
  %.059345983 = phi i64 [ %i.y, %.lr.ph ], [ %i.eep, %bb.an ] ; 17 uses
  %.059365982 = phi i64 [ %i.w, %.lr.ph ], [ %i.eem, %bb.an ] ; 15 uses
  %.059385981 = phi i64 [ %i.u, %.lr.ph ], [ %i.eek, %bb.an ] ; 15 uses
  %.059405980 = phi i64 [ %i.s, %.lr.ph ], [ %i.edy, %bb.an ] ; 14 uses
  %.059425979 = phi i64 [ %i.q, %.lr.ph ], [ %i.edw, %bb.an ] ; 14 uses
  %.059445978 = phi i64 [ %i.o, %.lr.ph ], [ %i.edu, %bb.an ] ; 11 uses
  %.059465977 = phi i64 [ %i.m, %.lr.ph ], [ %i.edr, %bb.an ] ; 11 uses
  %.059485976 = phi i64 [ %i.k, %.lr.ph ], [ %i.edp, %bb.an ] ; 10 uses
  %.059505975 = phi i64 [ %i.i, %.lr.ph ], [ %i.edd, %bb.an ] ; 10 uses
  %.059525974 = phi i64 [ %i.g, %.lr.ph ], [ %i.edb, %bb.an ] ; 8 uses
  %.059545973 = phi i64 [ %i.e, %.lr.ph ], [ %i.ecz, %bb.an ] ; 8 uses
  %.059565972 = phi i64 [ %i.c, %.lr.ph ], [ %i.ecx, %bb.an ] ; 7 uses
  %.059585971 = phi i64 [ %i.a, %.lr.ph ], [ %i.ecu, %bb.an ] ; 7 uses
  %.059605970 = phi i64 [ %3, %.lr.ph ], [ %i.egl, %bb.an ]
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bt = load i64, ptr %.05996, align 8, !tbaa !12
  %i.bu = xor i64 %i.bt, %.059585971
  %i.bv = getelementptr inbounds nuw i8, ptr %.05996, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !12
  %i.bx = xor i64 %i.bw, %.059565972
  %i.by = getelementptr inbounds nuw i8, ptr %.05996, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !12
  %i.ca = xor i64 %i.bz, %.059545973
  %i.cb = getelementptr inbounds nuw i8, ptr %.05996, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !12
  %i.cd = xor i64 %i.cc, %.059525974
  %i.ce = getelementptr inbounds nuw i8, ptr %.05996, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !12
  %i.cg = xor i64 %i.cf, %.059505975
  %i.ch = getelementptr inbounds nuw i8, ptr %.05996, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !12
  %i.cj = xor i64 %i.ci, %.059485976
  %i.ck = getelementptr inbounds nuw i8, ptr %.05996, i64 48
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !12
  %i.cm = xor i64 %i.cl, %.059465977
  %i.cn = getelementptr inbounds nuw i8, ptr %.05996, i64 56
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !12
  %i.cp = xor i64 %i.co, %.059445978
  %i.cq = getelementptr inbounds nuw i8, ptr %.05996, i64 64
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !12
  %i.cs = xor i64 %i.cr, %.059425979
  %i.ct = getelementptr inbounds nuw i8, ptr %.05996, i64 72
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !12
  %i.cv = xor i64 %i.cu, %.059405980
  %i.cw = getelementptr inbounds nuw i8, ptr %.05996, i64 80
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !12
  %i.cy = xor i64 %i.cx, %.059385981
  %i.cz = getelementptr inbounds nuw i8, ptr %.05996, i64 88
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !12
  %i.db = xor i64 %i.da, %.059365982
  %i.dc = getelementptr inbounds nuw i8, ptr %.05996, i64 96
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !12
  %i.de = xor i64 %i.dd, %.059345983
  %i.df = getelementptr inbounds nuw i8, ptr %.05996, i64 104
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !12
  %i.dh = xor i64 %i.dg, %.059325984
  %i.di = getelementptr inbounds nuw i8, ptr %.05996, i64 112
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !12
  %i.dk = xor i64 %i.dj, %.059305985
  %i.dl = getelementptr inbounds nuw i8, ptr %.05996, i64 120
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !12
  %i.dn = xor i64 %i.dm, %.059285986
  %i.do = getelementptr inbounds nuw i8, ptr %.05996, i64 128
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !12
  %i.dq = xor i64 %i.dp, %.059265987
  %i.dr = getelementptr inbounds nuw i8, ptr %.05996, i64 136
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !12
  %i.dt = xor i64 %i.ds, %.059245988
  %i.du = getelementptr inbounds nuw i8, ptr %.05996, i64 144
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !12
  %i.dw = xor i64 %i.dv, %.059225989
  %i.dx = getelementptr inbounds nuw i8, ptr %.05996, i64 152
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !12
  %i.dz = xor i64 %i.dy, %.059205990
  %i.ea = getelementptr inbounds nuw i8, ptr %.05996, i64 160
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !12
  %i.ec = xor i64 %i.eb, %.059185991
end_hunk_1
