Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/mstr?download=true
inline.NumInlined: 31
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mstrGetAllocPtr:bb.a
  %switch.gep14 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mstrGetStartAlloc, i64 %i.d
  %switch.load15 = load i64, ptr %switch.gep14, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %switch.load15
  %i.g = load i16, ptr %i.f, align 2, !tbaa !14   ; 2 uses
  %.not10.i = icmp eq i16 %i.g, 0
  br i1 %.not10.i, label %switch.lookup16, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %switch.lookup13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.0712.i = phi i32 [ 0, %.lr.ph.i ], [ %i.m, %bb.d ]
  %.0811.i = phi i16 [ %i.g, %.lr.ph.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.i = and i16 %.0811.i, 1
  %.not9.i = icmp eq i16 %i.i, 0
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  %i.m = add nsw i32 %i.l, %.0712.i               ; 2 uses
  %i.n = lshr i16 %.0811.i, 1                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %mstrSumMetaLen.exit.loopexit, label %bb.b, !llvm.loop !18

mstrSumMetaLen.exit.loopexit:                     ; preds = %bb.d
  %i.o = sext i32 %i.m to i64
  br label %switch.lookup16

switch.lookup16:                                  ; preds = %switch.lookup13, %mstrSumMetaLen.exit.loopexit
  %.07.lcssa.i = phi i64 [ 0, %switch.lookup13 ], [ %i.o, %mstrSumMetaLen.exit.loopexit ]
  %i.p = zext nneg i8 %i.c to i64
  %switch.gep17 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mstrGetStartAlloc.8, i64 %i.p
  %switch.load18 = load i64, ptr %switch.gep17, align 8
  %i.q = getelementptr inbounds i8, ptr %1, i64 %switch.load18
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -2
  %i.s = sub nsw i64 0, %.07.lcssa.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup16, %switch.lookup
  %.0 = phi ptr [ %i.t, %switch.lookup16 ], [ %i.e, %switch.lookup ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local nonnull ptr @mstrMetaRef(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
switch.lookup:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = and i8 %i.b, 3
  %i.d = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mstrGetStartAlloc, i64 %i.d
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %switch.load ; 2 uses
  %.not14 = icmp slt i32 %2, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup
  %i.f = load i16, ptr %i.e, align 2, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = add nuw i32 %2, 1                        ; 2 uses
  %wide.trip.count = zext i32 %i.h to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01116.epil.init = phi i16 [ %i.f, %.lr.ph ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %.01215.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.j = and i16 %.01116.epil.init, 1
  %.not13.epil = icmp eq i16 %i.j, 0
  br i1 %.not13.epil, label %._crit_edge.loopexit, label %bb.a

bb.a:                                             ; preds = %.epil.preheader
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9
  %i.m = add nsw i32 %i.l, %.01215.epil.init
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.epil.preheader, %bb.a, %._crit_edge.loopexit.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.m, %bb.a ], [ %.01215.epil.init, %.epil.preheader ]
  %i.n = sext i32 %.1.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %switch.lookup
  %.012.lcssa = phi i64 [ 0, %switch.lookup ], [ %i.n, %._crit_edge.loopexit ]
  %i.o = sub nsw i64 0, %.012.lcssa
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.o
  ret ptr %i.p

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %.01116 = phi i16 [ %i.f, %.lr.ph.new ], [ %i.z, %bb.f ] ; 3 uses
  %.01215 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.q = and i16 %.01116, 1
  %.not13 = icmp eq i16 %i.q, 0
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9
  %i.t = add nsw i32 %i.s, %.01215
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.t, %bb.c ], [ %.01215, %bb.b ] ; 2 uses
  %i.u = and i16 %.01116, 2
  %.not13.1 = icmp eq i16 %i.u, 0
  br i1 %.not13.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  %i.y = add nsw i32 %i.x, %.1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %i.y, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %i.z = lshr i16 %.01116, 2                      ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !21
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @mstrPrint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1         ; 2 uses
  %.val = load i8, ptr %i.a, align 1, !tbaa !13   ; 4 uses
  %i.b = and i8 %.val, 4
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.critedge, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.c = and i8 %.val, 3
  %i.d = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mstrGetStartAlloc, i64 %i.d
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %switch.load
  %i.f = load i16, ptr %i.e, align 2, !tbaa !14   ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !22
  %i.h = zext i8 %.val to i32                     ; 2 uses
  %i.i = and i32 %i.h, 3
  switch i32 %i.i, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

default.unreachable:                              ; preds = %.critedge, %switch.lookup
  unreachable

bb.b:                                             ; preds = %switch.lookup
  %i.j = lshr i32 %i.h, 3
  %i.k = zext nneg i32 %i.j to i64
  br label %bb.f

bb.c:                                             ; preds = %switch.lookup
  %i.l = getelementptr inbounds i8, ptr %0, i64 -2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i64
  br label %bb.f

bb.d:                                             ; preds = %switch.lookup
  %i.o = getelementptr inbounds i8, ptr %0, i64 -3
  %i.p = load i16, ptr %i.o, align 1, !tbaa !14
  %i.q = zext i16 %i.p to i64
  br label %bb.f

bb.e:                                             ; preds = %switch.lookup
  %i.r = getelementptr inbounds i8, ptr %0, i64 -9
  %i.s = load i64, ptr %i.r, align 1, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i63 = phi i64 [ %i.s, %bb.e ], [ %i.q, %bb.d ], [ %i.n, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink.i41 = phi i64 [ -11, %bb.e ], [ -5, %bb.d ], [ -5, %bb.c ], [ -3, %bb.b ]
  %.0.i42 = phi i64 [ 9, %bb.e ], [ 3, %bb.d ], [ 3, %bb.c ], [ 1, %bb.b ]
  %i.t = getelementptr inbounds i8, ptr %0, i64 %.sink.i41
  %i.u = load i16, ptr %i.t, align 2, !tbaa !14   ; 2 uses
  %.not10.i.i = icmp eq i16 %i.u, 0
  br i1 %.not10.i.i, label %mstrAllocLen.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %.0712.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.aa, %bb.i ]
  %.0811.i.i = phi i16 [ %i.u, %.lr.ph.i.i ], [ %i.ab, %bb.i ] ; 2 uses
  %i.w = and i16 %.0811.i.i, 1
  %.not9.i.i = icmp eq i16 %i.w, 0
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi i32 [ %i.y, %bb.h ], [ 0, %bb.g ]
  %i.aa = add nsw i32 %i.z, %.0712.i.i            ; 2 uses
  %i.ab = lshr i16 %.0811.i.i, 1                  ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i, label %mstrSumMetaLen.exit.loopexit.i, label %bb.g, !llvm.loop !18

mstrSumMetaLen.exit.loopexit.i:                   ; preds = %bb.i
  %i.ac = sext i32 %i.aa to i64
  %i.ad = add nsw i64 %i.ac, 2
  br label %mstrAllocLen.exit

mstrAllocLen.exit:                                ; preds = %bb.f, %mstrSumMetaLen.exit.loopexit.i
  %i.ae = phi i64 [ %i.ad, %mstrSumMetaLen.exit.loopexit.i ], [ 2, %bb.f ]
  %3 = add i64 %.0.i63, 1
  %i.af = add i64 %3, %.0.i42
  %i.ag = add i64 %i.af, %i.ae
  %i.ah = zext i16 %i.f to i32
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %0, ptr noundef %i.g, ptr noundef %0, i64 noundef %.0.i63, i64 noundef %i.ag, i32 noundef %i.ah) ; 0 uses
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %mstrAllocLen.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.n

.critedge:                                        ; preds = %bb.a
  %i.ak = load ptr, ptr %1, align 8, !tbaa !22
  %i.al = zext i8 %.val to i32                    ; 2 uses
  %i.am = and i32 %i.al, 3
  switch i32 %i.am, label %default.unreachable [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.j:                                             ; preds = %.critedge
  %i.an = lshr i32 %i.al, 3
  %i.ao = zext nneg i32 %i.an to i64
  br label %mstrAllocLen.exit61

bb.k:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds i8, ptr %0, i64 -2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i64
  br label %mstrAllocLen.exit61

bb.l:                                             ; preds = %.critedge
  %i.as = getelementptr inbounds i8, ptr %0, i64 -3
  %i.at = load i16, ptr %i.as, align 1, !tbaa !14
  %i.au = zext i16 %i.at to i64
  br label %mstrAllocLen.exit61

bb.m:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds i8, ptr %0, i64 -9
  %i.aw = load i64, ptr %i.av, align 1, !tbaa !16
  br label %mstrAllocLen.exit61

mstrAllocLen.exit61:                              ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i4372 = phi i64 [ %i.aw, %bb.m ], [ %i.au, %bb.l ], [ %i.ar, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %.0.i49 = phi i64 [ 9, %bb.m ], [ 3, %bb.l ], [ 3, %bb.k ], [ 1, %bb.j ]
  %4 = add i64 %.0.i4372, 1
  %i.ax = add i64 %4, %.0.i49
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %0, ptr noundef %i.ak, ptr noundef nonnull %0, i64 noundef %.0.i4372, i64 noundef %i.ax) ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %.preheader, %._crit_edge87
  %indvars.iv84 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next85.pre-phi, %._crit_edge87 ] ; 6 uses
  %.03482 = phi i16 [ %i.f, %.preheader ], [ %i.cj, %._crit_edge87 ] ; 2 uses
  %i.az = add nuw i64 %indvars.iv84, 1            ; 2 uses
  %i.ba = and i16 %.03482, 1
  %.not39 = icmp eq i16 %i.ba, 0
  br i1 %.not39, label %._crit_edge87, label %switch.lookup91

switch.lookup91:                                  ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv84
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !9  ; 3 uses
  %i.bd = load i8, ptr %i.a, align 1, !tbaa !13
  %i.be = and i8 %i.bd, 3
  %i.bf = zext nneg i8 %i.be to i64
  %switch.gep92 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mstrGetStartAlloc, i64 %i.bf
  %switch.load93 = load i64, ptr %switch.gep92, align 8
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %switch.load93 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !14 ; 2 uses
  %i.bi = icmp eq i64 %indvars.iv84, 0
  br i1 %i.bi, label %.epil.preheader, label %switch.lookup91.new

switch.lookup91.new:                              ; preds = %switch.lookup91
  %unroll_iter = and i64 %i.az, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %switch.lookup91.new
  %indvars.iv.i = phi i64 [ 0, %switch.lookup91.new ], [ %indvars.iv.next.i.1, %bb.s ] ; 3 uses
  %.01116.i = phi i16 [ %i.bh, %switch.lookup91.new ], [ %i.bs, %bb.s ] ; 3 uses
  %.01215.i = phi i32 [ 0, %switch.lookup91.new ], [ %.1.i.1, %bb.s ] ; 2 uses
  %niter = phi i64 [ 0, %switch.lookup91.new ], [ %niter.next.1, %bb.s ]
  %i.bj = and i16 %.01116.i, 1
  %.not13.i = icmp eq i16 %i.bj, 0
  br i1 %.not13.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !9
  %i.bm = add nsw i32 %i.bl, %.01215.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.i = phi i32 [ %i.bm, %bb.p ], [ %.01215.i, %bb.o ] ; 2 uses
  %i.bn = and i16 %.01116.i, 2
  %.not13.i.1 = icmp eq i16 %i.bn, 0
  br i1 %.not13.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !9
  %i.br = add nsw i32 %i.bq, %.1.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.i.1 = phi i32 [ %i.br, %bb.r ], [ %.1.i, %bb.q ] ; 3 uses
  %i.bs = lshr i16 %.01116.i, 2                   ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mstrMetaRef.exit.unr-lcssa, label %bb.o, !llvm.loop !21

mstrMetaRef.exit.unr-lcssa:                       ; preds = %bb.s
  %i.bt = and i64 %indvars.iv84, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bt, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %mstrMetaRef.exit

.epil.preheader:                                  ; preds = %mstrMetaRef.exit.unr-lcssa, %switch.lookup91
  %indvars.iv.i.epil.init = phi i64 [ 0, %switch.lookup91 ], [ %indvars.iv.next.i.1, %mstrMetaRef.exit.unr-lcssa ]
  %.01116.i.epil.init = phi i16 [ %i.bh, %switch.lookup91 ], [ %i.bs, %mstrMetaRef.exit.unr-lcssa ]
  %.01215.i.epil.init = phi i32 [ 0, %switch.lookup91 ], [ %.1.i.1, %mstrMetaRef.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod95 = trunc i64 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.bu = and i16 %.01116.i.epil.init, 1
  %.not13.i.epil = icmp eq i16 %i.bu, 0
  br i1 %.not13.i.epil, label %mstrMetaRef.exit, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i.epil.init
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !9
  %i.bx = add nsw i32 %i.bw, %.01215.i.epil.init
  br label %mstrMetaRef.exit

mstrMetaRef.exit:                                 ; preds = %.epil.preheader, %bb.t, %mstrMetaRef.exit.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %mstrMetaRef.exit.unr-lcssa ], [ %i.bx, %bb.t ], [ %.01215.i.epil.init, %.epil.preheader ]
  %i.by = sext i32 %.1.i.lcssa to i64
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bg, i64 %i.bz ; 2 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv84 to i32
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %i.ca, i32 noundef %i.cb) ; 0 uses
  %i.cd = icmp sgt i32 %i.bc, 0
  br i1 %i.cd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %mstrMetaRef.exit
  %wide.trip.count = zext nneg i32 %i.bc to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %mstrMetaRef.exit
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.bc) ; 0 uses
  br label %._crit_edge87

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = zext i8 %i.cg to i32
  %i.ci = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.ch) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge87:                                    ; preds = %bb.n, %._crit_edge
  %indvars.iv.next85.pre-phi = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.cj = lshr i16 %.03482, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next85.pre-phi, 16
  br i1 %exitcond86.not, label %.loopexit, label %bb.n, !llvm.loop !27

.loopexit:                                        ; preds = %._crit_edge87, %mstrAllocLen.exit, %mstrAllocLen.exit61
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local nonnull ptr @mstrGetStartAlloc(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
switch.lookup:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val = load i8, ptr %i.a, align 1, !tbaa !13   ; 2 uses
  %i.b = and i8 %.val, 4
  %i.c = and i8 %.val, 3                          ; 2 uses
  %i.d = zext nneg i8 %i.c to i64
  %switch.gep14 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mstrGetStartAlloc.8, i64 %i.d
  %switch.load15 = load i64, ptr %switch.gep14, align 8
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %mstrSumMetaLen.exit, label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mstrGetStartAlloc, i64 %i.e
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %switch.load
  %i.g = load i16, ptr %i.f, align 2, !tbaa !14   ; 2 uses
  %.not10.i = icmp eq i16 %i.g, 0
  br i1 %.not10.i, label %mstrSumMetaLen.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.0712.i = phi i32 [ 0, %.lr.ph.i ], [ %i.m, %bb.d ]
  %.0811.i = phi i16 [ %i.g, %.lr.ph.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.i = and i16 %.0811.i, 1
  %.not9.i = icmp eq i16 %i.i, 0
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  %i.m = add nsw i32 %i.l, %.0712.i               ; 2 uses
  %i.n = lshr i16 %.0811.i, 1                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %mstrSumMetaLen.exit.loopexit, label %bb.b, !llvm.loop !18

mstrSumMetaLen.exit.loopexit:                     ; preds = %bb.d
  %i.o = sext i32 %i.m to i64
  %i.p = sub nsw i64 -2, %i.o
  br label %mstrSumMetaLen.exit

mstrSumMetaLen.exit:                              ; preds = %bb.a, %mstrSumMetaLen.exit.loopexit, %switch.lookup
  %.neg11 = phi i64 [ 0, %switch.lookup ], [ -2, %bb.a ], [ %i.p, %mstrSumMetaLen.exit.loopexit ]
  %i.q = getelementptr inbounds i8, ptr %0, i64 %switch.load15
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg11
  ret ptr %i.r
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

end_hunk_0
