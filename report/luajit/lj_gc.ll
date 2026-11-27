Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_gc?download=true
inline.NumInlined: 28
inline.NumDeleted: 12
begin_hunk_0_@lj_gc_freeall:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi ptr [ %i.n, %bb.b ], [ %.018.i, %bb.c ] ; 2 uses
  %.pr.i = load i64, ptr %.1.i, align 8, !tbaa !27 ; 2 uses
  %.not.i = icmp eq i64 %.pr.i, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre.i = load i64, ptr %.sroa.0.i, align 8, !tbaa !27
  br label %gc_sweepstr.exit

gc_sweepstr.exit:                                 ; preds = %.lr.ph, %._crit_edge.loopexit.i
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..i = phi i64 [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre.i, %._crit_edge.loopexit.i ], [ 0, %.lr.ph ]
  %i.x = and i64 %i.l, 1
  %i.y = or i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..i, %i.x
  store i64 %i.y, ptr %i.i, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %gc_sweepstr.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @gc_sweep(ptr noundef %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef range(i32 -1, 41) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38
  %i.c = xor i8 %i.b, 3
  %i.d = load i64, ptr %1, align 8, !tbaa !27     ; 2 uses
  %.not25 = icmp eq i64 %i.d, 0
  br i1 %.not25, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not2331 = icmp eq i32 %2, 0
  br i1 %.not2331, label %.critedge, label %.lr.ph33

bb.b:                                             ; preds = %bb.i
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %.critedge, label %.lr.ph33, !llvm.loop !96

.lr.ph33:                                         ; preds = %.lr.ph, %bb.b
  %.in = phi i32 [ %i.h, %bb.b ], [ %2, %.lr.ph ]
  %.0212632 = phi ptr [ %.1, %bb.b ], [ %1, %.lr.ph ] ; 2 uses
  %i.f = phi i64 [ %i.ae, %bb.b ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 6 uses
  %i.h = add i32 %.in, -1                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28
  %i.k = icmp eq i8 %i.j, 6
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph33
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.m = tail call fastcc ptr @gc_sweep(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef -1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph33
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !28    ; 2 uses
  %i.p = xor i8 %i.o, 3
  %i.q = and i8 %i.p, %i.c
  %.not24 = icmp eq i8 %i.q, 0
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = and i8 %i.o, -8
  %i.s = load i8, ptr %i.a, align 8, !tbaa !38
  %i.t = and i8 %i.s, 3
  %i.u = or disjoint i8 %i.t, %i.r
  store i8 %i.u, ptr %i.n, align 8, !tbaa !28
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  store i64 %i.v, ptr %.0212632, align 8, !tbaa !27
  %i.w = load i64, ptr %i.e, align 8, !tbaa !37
  %i.x = icmp eq i64 %i.f, %i.w
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.v, ptr %i.e, align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = load i8, ptr %i.i, align 1, !tbaa !28
  %i.z = zext i8 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 4294967292
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @gc_freefunc, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97
  tail call void %i.ad(ptr noundef nonnull %0, ptr noundef nonnull %i.g) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1 = phi ptr [ %i.g, %bb.e ], [ %.0212632, %bb.h ] ; 4 uses
  %i.ae = load i64, ptr %.1, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %..critedge.loopexit_crit_edge, label %bb.b, !llvm.loop !96

..critedge.loopexit_crit_edge:                    ; preds = %bb.i
  br label %.critedge, !llvm.loop !96

.critedge:                                        ; preds = %bb.b, %.lr.ph, %..critedge.loopexit_crit_edge, %bb.a
  %.021.lcssa = phi ptr [ %1, %bb.a ], [ %1, %.lr.ph ], [ %.1, %..critedge.loopexit_crit_edge ], [ %.1, %bb.b ]
  ret ptr %.021.lcssa
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @lj_gc_step(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36
  %i.c = inttoptr i64 %i.b to ptr                 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 3 uses
  %i.e = load volatile i32, ptr %i.d, align 8, !tbaa !62
  store volatile i32 -3, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.h = load i32, ptr %i.g, align 8, !tbaa !63
  %i.i = mul i32 %i.h, 10                         ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 0
  %spec.store.select = select i1 %i.k, i64 140737488355328, i64 %i.j
  %i.l = load i64, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw i64 %i.l, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !65
  %i.s = add i64 %i.p, %i.r
  store i64 %i.s, ptr %i.q, align 8, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0 = phi i64 [ %spec.store.select, %bb.c ], [ %i.ae, %bb.f ]
  %i.u = tail call fastcc i64 @gc_onestep(ptr noundef %0)
  %i.v = load i8, ptr %i.t, align 1, !tbaa !66
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.y = load i64, ptr %i.x, align 8, !tbaa !67
  %i.z = udiv i64 %i.y, 100
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !68
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul i64 %i.z, %i.ac
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ae = sub nsw i64 %.0, %i.u                   ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.g, !llvm.loop !2

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !65 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 1024
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !64
  %i.ak = add i64 %i.aj, 1024
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.al = add i64 %i.ah, -1024
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !65
  %i.am = load i64, ptr %i.f, align 8, !tbaa !64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %.sink = phi i64 [ %i.am, %bb.i ], [ %i.ak, %bb.h ], [ %i.ad, %bb.e ]
  %.029 = phi i32 [ 0, %bb.i ], [ -1, %bb.h ], [ 1, %bb.e ]
  store i64 %.sink, ptr %i.m, align 8, !tbaa !42
  store volatile i32 %i.e, ptr %i.d, align 8, !tbaa !62
  ret i32 %.029
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 140737488355329) i64 @gc_onestep(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca i64, align 8                ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36
  %i.c = inttoptr i64 %i.b to ptr                 ; 63 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 33 ; 7 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66
  switch i8 %i.f, label %bb.cc [
    i8 0, label %bb.b
    i8 1, label %bb.p
    i8 2, label %bb.s
    i8 3, label %bb.bj
    i8 4, label %bb.bp
    i8 5, label %bb.bv
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !28
  %i.m = and i8 %i.l, 3
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @gc_mark(ptr noundef nonnull %i.c, ptr noundef nonnull %i.j)
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !26
  %.pre21.i = inttoptr i64 %.pre.i to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi.i = phi ptr [ %.pre21.i, %bb.c ], [ %i.j, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %.pre-phi.i, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !28
  %i.s = and i8 %i.r, 3
  %.not18.i = icmp eq i8 %i.s, 0
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @gc_mark(ptr noundef nonnull %i.c, ptr noundef nonnull %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.u = load i64, ptr %i.t, align 8, !tbaa !43
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !28
  %i.y = and i8 %i.x, 3
  %.not19.i = icmp eq i8 %i.y, 0
  br i1 %.not19.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @gc_mark(ptr noundef nonnull %i.c, ptr noundef nonnull %i.v)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ab = ashr i64 %i.aa, 47
  %i.ac = trunc nsw i64 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, 13
  %i.ae = icmp ult i32 %i.ad, 9
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = and i64 %i.aa, 140737488355327
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !28
  %i.aj = and i8 %i.ai, 3
  %.not20.i = icmp eq i8 %i.aj, 0
  br i1 %.not20.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @gc_mark(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ag)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %.010.i.i = phi i64 [ 0, %bb.k ], [ %i.ar, %bb.o ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.010.i.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !27 ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !28
  %i.aq = and i8 %i.ap, 3
  %.not9.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not9.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @gc_mark(ptr noundef nonnull %i.c, ptr noundef nonnull %i.an)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ar = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, 39
  br i1 %exitcond.not.i.i, label %gc_mark_start.exit, label %bb.l, !llvm.loop !98

gc_mark_start.exit:                               ; preds = %bb.o
  store i8 1, ptr %i.e, align 1, !tbaa !66
  br label %bb.cc

bb.p:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !69
  %.not66 = icmp eq i64 %i.at, 0
  br i1 %.not66, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = tail call fastcc i64 @propagatemark(ptr noundef nonnull %i.c)
  br label %bb.cc

bb.r:                                             ; preds = %bb.p
  store i8 2, ptr %i.e, align 1, !tbaa !66
  br label %bb.cc

bb.s:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !70
  %.not65 = icmp eq i64 %i.aw, 0
  br i1 %.not65, label %bb.t, label %bb.cc

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %.0.in11.i.i = load i64, ptr %i.ay, align 8, !tbaa !28
  %.012.i.i = inttoptr i64 %.0.in11.i.i to ptr    ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ax, %.012.i.i
  br i1 %.not13.i.i, label %gc_mark_uv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %bb.x
  %.014.i.i = phi ptr [ %.0.i.i, %bb.x ], [ %.012.i.i, %bb.t ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !28
  %i.bb = and i8 %i.ba, 7
  %.not9.i.i67 = icmp eq i8 %i.bb, 0
  br i1 %.not9.i.i67, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !71
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !28 ; 2 uses
  %i.bg = ashr i64 %i.bf, 47
  %i.bh = trunc nsw i64 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, 13
  %i.bj = icmp ult i32 %i.bi, 9
  br i1 %i.bj, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bk = and i64 %i.bf, 140737488355327
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !28
  %i.bo = and i8 %i.bn, 3
  %.not10.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not10.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @gc_mark(ptr noundef %i.c, ptr noundef nonnull %i.bl)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %.lr.ph.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  %.0.in.i.i = load i64, ptr %i.bp, align 8, !tbaa !28
  %.0.i.i = inttoptr i64 %.0.in.i.i to ptr        ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.ax, %.0.i.i
  br i1 %.not.i.i68, label %gc_mark_uv.exit.i, label %.lr.ph.i.i, !llvm.loop !99

gc_mark_uv.exit.i:                                ; preds = %bb.x, %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 9 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !69
  %.not3.i.i = icmp eq i64 %i.br, 0
  br i1 %.not3.i.i, label %gc_propagate_gray.exit.i, label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %gc_mark_uv.exit.i, %.lr.ph.i41.i
  %i.bs = tail call fastcc i64 @propagatemark(ptr noundef nonnull %i.c) ; 0 uses
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !69
  %.not.i42.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i42.i, label %gc_propagate_gray.exit.i, label %.lr.ph.i41.i, !llvm.loop !100

gc_propagate_gray.exit.i:                         ; preds = %.lr.ph.i41.i, %gc_mark_uv.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !72
  store i64 %i.bv, ptr %i.bq, align 8, !tbaa !69
  store i64 0, ptr %i.bu, align 8, !tbaa !72
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !28
  %i.by = and i8 %i.bx, 3
  %.not.i69 = icmp eq i8 %i.by, 0
  br i1 %.not.i69, label %bb.z, label %bb.y
end_hunk_0
begin_hunk_1_@gc_onestep:bb.a
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !28
  %i.ep = and i8 %i.eo, -8
  %i.eq = load i8, ptr %i.ek, align 8, !tbaa !38
  %i.er = and i8 %i.eq, 3
  %i.es = or disjoint i8 %i.er, %i.ep
  store i8 %i.es, ptr %i.en, align 8, !tbaa !28
  tail call fastcc void @gc_mark(ptr noundef nonnull %i.c, ptr noundef %i.em)
  %.not12.i.i = icmp eq i64 %i.el, %i.ei
  br i1 %.not12.i.i, label %gc_mark_mmudata.exit.i, label %bb.ar, !llvm.loop !101

gc_mark_mmudata.exit.i:                           ; preds = %bb.ar, %lj_gc_separateudata.exit.i
  %i.et = load i64, ptr %i.bq, align 8, !tbaa !69
  %.not3.i62.i = icmp eq i64 %i.et, 0
  br i1 %.not3.i62.i, label %gc_propagate_gray.exit67.i, label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %gc_mark_mmudata.exit.i, %.lr.ph.i63.i
  %.04.i64.i = phi i64 [ %i.ev, %.lr.ph.i63.i ], [ 0, %gc_mark_mmudata.exit.i ]
  %i.eu = tail call fastcc i64 @propagatemark(ptr noundef nonnull %i.c)
  %i.ev = add i64 %i.eu, %.04.i64.i               ; 2 uses
  %i.ew = load i64, ptr %i.bq, align 8, !tbaa !69
  %.not.i65.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i65.i, label %gc_propagate_gray.exit67.i, label %.lr.ph.i63.i, !llvm.loop !100

gc_propagate_gray.exit67.i:                       ; preds = %.lr.ph.i63.i, %gc_mark_mmudata.exit.i
  %.0.lcssa.i66.i = phi i64 [ 0, %gc_mark_mmudata.exit.i ], [ %i.ev, %.lr.ph.i63.i ]
  %i.ex = load i64, ptr %i.bu, align 8, !tbaa !72 ; 2 uses
  %.not10.i68.i = icmp eq i64 %i.ex, 0
  br i1 %.not10.i68.i, label %atomic.exit, label %.lr.ph13.i.i

.lr.ph13.i.i:                                     ; preds = %gc_propagate_gray.exit67.i, %.loopexit.i.i
  %.02411.i.in.i = phi i64 [ %i.hf, %.loopexit.i.i ], [ %i.ex, %gc_propagate_gray.exit67.i ]
  %.02411.i.i = inttoptr i64 %.02411.i.in.i to ptr ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.02411.i.i, i64 8
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !74
  %i.fa = and i8 %i.ez, 16
  %.not26.i.i = icmp eq i8 %i.fa, 0
  br i1 %.not26.i.i, label %.loopexit7.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph13.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.02411.i.i, i64 48
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !75 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not14.i.i, label %.loopexit7.i.i, label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %bb.as
  %i.fd = getelementptr inbounds nuw i8, ptr %.02411.i.i, i64 16
  %wide.trip.count.i.i = zext i32 %i.fc to i64
  br label %bb.at

bb.at:                                            ; preds = %gc_mayclear.exit.thread.i.i, %.lr.ph.i69.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i69.i ], [ %indvars.iv.next.i.i, %gc_mayclear.exit.thread.i.i ] ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !76
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv.i.i ; 2 uses
  %.val33.i.i = load i64, ptr %i.fg, align 8, !tbaa !28 ; 2 uses
  %i.fh = ashr i64 %.val33.i.i, 47                ; 3 uses
  %i.fi = trunc nsw i64 %i.fh to i32
  %i.fj = add nsw i32 %i.fi, 13
  %i.fk = icmp ult i32 %i.fj, 9
  br i1 %i.fk, label %bb.au, label %gc_mayclear.exit.thread.i.i

bb.au:                                            ; preds = %bb.at
  %i.fl = icmp eq i64 %i.fh, -5
  %i.fm = and i64 %.val33.i.i, 140737488355327
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !28  ; 2 uses
  br i1 %i.fl, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fq = and i8 %i.fp, -4
  store i8 %i.fq, ptr %i.fo, align 8, !tbaa !28
  br label %gc_mayclear.exit.thread.i.i

bb.aw:                                            ; preds = %bb.au
  %i.fr = zext i8 %i.fp to i32                    ; 2 uses
  %i.fs = and i32 %i.fr, 3
  %.not.i.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i.i, label %bb.ax, label %gc_mayclear.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.ft = icmp ne i64 %i.fh, -13
  %i.fu = and i32 %i.fr, 8
  %.not9.i.i.i = icmp eq i32 %i.fu, 0
  %or.cond10.i.i.i = or i1 %i.ft, %.not9.i.i.i
  br i1 %or.cond10.i.i.i, label %gc_mayclear.exit.thread.i.i, label %gc_mayclear.exit.i.i

gc_mayclear.exit.i.i:                             ; preds = %bb.ax, %bb.aw
  store i64 -1, ptr %i.fg, align 8, !tbaa !28
  br label %gc_mayclear.exit.thread.i.i

gc_mayclear.exit.thread.i.i:                      ; preds = %gc_mayclear.exit.i.i, %bb.ax, %bb.av, %bb.at
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i70.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i70.i, label %.loopexit7.i.i, label %bb.at, !llvm.loop !102

.loopexit7.i.i:                                   ; preds = %gc_mayclear.exit.thread.i.i, %bb.as, %.lr.ph13.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.02411.i.i, i64 52
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !41 ; 2 uses
  %.not27.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not27.i.i, label %.loopexit.i.i, label %bb.ay

bb.ay:                                            ; preds = %.loopexit7.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.02411.i.i, i64 40
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !39
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = add i32 %i.fw, 1
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %i.ga, i32 1)
  %wide.trip.count19.i.i = zext i32 %umax.i.i to i64
  br label %bb.az

bb.az:                                            ; preds = %gc_mayclear.exit43.thread.i.i, %bb.ay
  %indvars.iv16.i.i = phi i64 [ 0, %bb.ay ], [ %indvars.iv.next17.i.i, %gc_mayclear.exit43.thread.i.i ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %indvars.iv16.i.i ; 4 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !28 ; 3 uses
  %i.gd = icmp eq i64 %i.gc, -1
  br i1 %i.gd, label %gc_mayclear.exit43.thread.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.val32.i.i = load i64, ptr %i.ge, align 8, !tbaa !28 ; 2 uses
  %i.gf = ashr i64 %.val32.i.i, 47                ; 2 uses
  %i.gg = trunc nsw i64 %i.gf to i32
  %i.gh = add nsw i32 %i.gg, 13
  %i.gi = icmp ult i32 %i.gh, 9
  br i1 %i.gi, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.gj = icmp eq i64 %i.gf, -5
  %i.gk = and i64 %.val32.i.i, 140737488355327
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !28  ; 2 uses
  br i1 %i.gj, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.go = and i8 %i.gn, -4
  store i8 %i.go, ptr %i.gm, align 8, !tbaa !28
  %.val.pre.i.i = load i64, ptr %i.gb, align 8, !tbaa !28
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.gp = and i8 %i.gn, 3
  %.not.i35.i.i = icmp eq i8 %i.gp, 0
  br i1 %.not.i35.i.i, label %bb.be, label %gc_mayclear.exit38.i.i

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba
  %.val.i.i = phi i64 [ %i.gc, %bb.bd ], [ %.val.pre.i.i, %bb.bc ], [ %i.gc, %bb.ba ] ; 2 uses
  %i.gq = ashr i64 %.val.i.i, 47                  ; 3 uses
  %i.gr = trunc nsw i64 %i.gq to i32
  %i.gs = add nsw i32 %i.gr, 13
  %i.gt = icmp ult i32 %i.gs, 9
  br i1 %i.gt, label %bb.bf, label %gc_mayclear.exit43.thread.i.i

bb.bf:                                            ; preds = %bb.be
  %i.gu = icmp eq i64 %i.gq, -5
  %i.gv = and i64 %.val.i.i, 140737488355327
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !28  ; 2 uses
  br i1 %i.gu, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gz = and i8 %i.gy, -4
  store i8 %i.gz, ptr %i.gx, align 8, !tbaa !28
  br label %gc_mayclear.exit43.thread.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.ha = zext i8 %i.gy to i32                    ; 2 uses
  %i.hb = and i32 %i.ha, 3
  %.not.i40.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i40.i.i, label %bb.bi, label %gc_mayclear.exit38.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.hc = icmp ne i64 %i.gq, -13
  %i.hd = and i32 %i.ha, 8
  %.not9.i41.i.i = icmp eq i32 %i.hd, 0
  %or.cond10.i42.i.i = or i1 %i.hc, %.not9.i41.i.i
  br i1 %or.cond10.i42.i.i, label %gc_mayclear.exit43.thread.i.i, label %gc_mayclear.exit38.i.i

gc_mayclear.exit38.i.i:                           ; preds = %bb.bi, %bb.bh, %bb.bd
  store i64 -1, ptr %i.gb, align 8, !tbaa !28
  br label %gc_mayclear.exit43.thread.i.i

gc_mayclear.exit43.thread.i.i:                    ; preds = %gc_mayclear.exit38.i.i, %bb.bi, %bb.bg, %bb.be, %bb.az
  %indvars.iv.next17.i.i = add nuw nsw i64 %indvars.iv16.i.i, 1 ; 2 uses
  %exitcond20.i.i = icmp eq i64 %indvars.iv.next17.i.i, %wide.trip.count19.i.i
  br i1 %exitcond20.i.i, label %.loopexit.i.i, label %bb.az, !llvm.loop !103

.loopexit.i.i:                                    ; preds = %gc_mayclear.exit43.thread.i.i, %.loopexit7.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.02411.i.i, i64 24
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !77 ; 2 uses
  %.not.i71.i = icmp eq i64 %i.hf, 0
  br i1 %.not.i71.i, label %atomic.exit, label %.lr.ph13.i.i, !llvm.loop !104

atomic.exit:                                      ; preds = %.loopexit.i.i, %gc_propagate_gray.exit67.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  tail call void @lj_buf_shrink(ptr noundef %0, ptr noundef nonnull %i.hg) #8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !38
  %.fr = freeze i8 %i.hi
  %1 = xor i8 %.fr, 3                             ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i8 %1, ptr %i.hj, align 8, !tbaa !114
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !78
  %i.hn = load i64, ptr %i.d, align 8, !tbaa !64
  %i.ho = add i64 %.0.lcssa.i66.i, %.0.lcssa.i59.i
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !67
  %2 = zext i8 %1 to i16
  %3 = or disjoint i16 %2, 768
  store i16 %3, ptr %i.hh, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 0, ptr %i.hr, align 4, !tbaa !79
  br label %bb.cc

bb.bj:                                            ; preds = %bb.a
  %i.hs = load i64, ptr %i.d, align 8, !tbaa !64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !61
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 3 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !79 ; 2 uses
  %i.hx = add i32 %i.hw, 1                        ; 2 uses
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !79
  %i.hy = zext i32 %i.hw to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 8, !tbaa !38
  %i.ic = xor i8 %i.ib, 3
  %i.id = load i64, ptr %i.hz, align 8, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.ie = and i64 %i.id, -2                       ; 3 uses
  store i64 %i.ie, ptr %.sroa.0.i, align 8, !tbaa !27
  %.not17.i = icmp eq i64 %i.ie, 0
  br i1 %.not17.i, label %gc_sweepstr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bj, %bb.bm
  %.in.i = phi i64 [ %.pr.i, %bb.bm ], [ %i.ie, %bb.bj ]
  %.018.i = phi ptr [ %.1.i, %bb.bm ], [ %.sroa.0.i, %bb.bj ] ; 2 uses
  %i.if = inttoptr i64 %.in.i to ptr              ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !28  ; 2 uses
  %i.ii = xor i8 %i.ih, 3
  %i.ij = and i8 %i.ii, %i.ic
  %.not16.i = icmp eq i8 %i.ij, 0
  br i1 %.not16.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i
  %i.ik = and i8 %i.ih, -8
  %i.il = load i8, ptr %i.ia, align 8, !tbaa !38
  %i.im = and i8 %i.il, 3
  %i.in = or disjoint i8 %i.im, %i.ik
  store i8 %i.in, ptr %i.ig, align 8, !tbaa !28
  br label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i
  %i.io = load i64, ptr %i.if, align 8, !tbaa !28
  store i64 %i.io, ptr %.018.i, align 8, !tbaa !27
  tail call void @lj_str_free(ptr noundef %i.c, ptr noundef nonnull %i.if) #8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.1.i = phi ptr [ %i.if, %bb.bk ], [ %.018.i, %bb.bl ] ; 2 uses
  %.pr.i = load i64, ptr %.1.i, align 8, !tbaa !27 ; 2 uses
  %.not.i72 = icmp eq i64 %.pr.i, 0
  br i1 %.not.i72, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %bb.bm
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre.i = load i64, ptr %.sroa.0.i, align 8, !tbaa !27
  %.pre76 = load i32, ptr %i.hv, align 4, !tbaa !79
  br label %gc_sweepstr.exit

gc_sweepstr.exit:                                 ; preds = %bb.bj, %._crit_edge.loopexit.i
  %i.ip = phi i32 [ %.pre76, %._crit_edge.loopexit.i ], [ %i.hx, %bb.bj ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..i = phi i64 [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre.i, %._crit_edge.loopexit.i ], [ 0, %bb.bj ]
  %i.iq = and i64 %i.id, 1
  %i.ir = or i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..i, %i.iq
  store i64 %i.ir, ptr %i.hz, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.it = load i32, ptr %i.is, align 8, !tbaa !60
  %i.iu = icmp ugt i32 %i.ip, %i.it
  br i1 %i.iu, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %gc_sweepstr.exit
  store i8 4, ptr %i.e, align 1, !tbaa !66
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %gc_sweepstr.exit
  %i.iv = load i64, ptr %i.d, align 8, !tbaa !64
  %.neg64 = sub i64 %i.iv, %i.hs
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !67
  %i.iy = add i64 %.neg64, %i.ix
  store i64 %i.iy, ptr %i.iw, align 8, !tbaa !67
  br label %bb.cc

bb.bp:                                            ; preds = %bb.a
  %i.iz = load i64, ptr %i.d, align 8, !tbaa !64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !78
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = tail call fastcc ptr @gc_sweep(ptr noundef nonnull %i.c, ptr noundef %i.jc, i32 noundef 40) ; 2 uses
  %i.je = ptrtoint ptr %i.jd to i64
  store i64 %i.je, ptr %i.ja, align 8, !tbaa !78
  %i.jf = load i64, ptr %i.d, align 8, !tbaa !64
  %.neg = sub i64 %i.jf, %i.iz
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !67
  %i.ji = add i64 %.neg, %i.jh
  store i64 %i.ji, ptr %i.jg, align 8, !tbaa !67
  %i.jj = load i64, ptr %i.jd, align 8, !tbaa !27
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %bb.bq, label %bb.cc

bb.bq:                                            ; preds = %bb.bp
  %i.jl = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !115
  %i.jn = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !60 ; 3 uses
  %i.jp = lshr i32 %i.jo, 2
  %.not62 = icmp ule i32 %i.jm, %i.jp
  %i.jq = icmp ugt i32 %i.jo, 511
  %or.cond = and i1 %i.jq, %.not62
  br i1 %or.cond, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.jr = lshr i32 %i.jo, 1
  tail call void @lj_str_resize(ptr noundef nonnull %0, i32 noundef %i.jr) #8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.js = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !32
  %.not63 = icmp eq i64 %i.jt, 0
  br i1 %.not63, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i8 5, ptr %i.e, align 1, !tbaa !66
  br label %bb.cc

bb.bu:                                            ; preds = %bb.bs
  store i8 0, ptr %i.e, align 1, !tbaa !66
  %i.ju = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 0, ptr %i.ju, align 8, !tbaa !65
  br label %bb.cc

bb.bv:                                            ; preds = %bb.a
  %i.jv = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !32
  %.not = icmp eq i64 %i.jw, 0
  br i1 %.not, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jx = load i64, ptr %i.d, align 8, !tbaa !64  ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !70
  %.not60 = icmp eq i64 %i.jz, 0
  br i1 %.not60, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  tail call fastcc void @gc_finalize(ptr noundef nonnull %0)
  %i.ka = load i64, ptr %i.d, align 8, !tbaa !64  ; 2 uses
  %.not61 = icmp ult i64 %i.jx, %i.ka
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67 ; 4 uses
  br i1 %.not61, label %._crit_edge, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kb = sub nuw i64 %i.jx, %i.ka                ; 2 uses
  %i.kc = icmp ugt i64 %.pre, %i.kb
  br i1 %i.kc, label %bb.bz, label %._crit_edge

bb.bz:                                            ; preds = %bb.by
  %i.kd = sub nuw i64 %.pre, %i.kb                ; 2 uses
  store i64 %i.kd, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bx, %bb.bz, %bb.by
  %i.ke = phi i64 [ %.pre, %bb.by ], [ %i.kd, %bb.bz ], [ %.pre, %bb.bx ] ; 2 uses
  %i.kf = icmp ugt i64 %i.ke, 100
  br i1 %i.kf, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %._crit_edge
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.kh = add i64 %i.ke, -100
  store i64 %i.kh, ptr %i.kg, align 8, !tbaa !67
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bv
  store i8 0, ptr %i.e, align 1, !tbaa !66
  %i.ki = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 0, ptr %i.ki, align 8, !tbaa !65
  br label %bb.cc

bb.cc:                                            ; preds = %bb.a, %bb.bw, %bb.ca, %._crit_edge, %bb.bp, %bb.bu, %bb.bt, %bb.s, %bb.cb, %bb.bo, %atomic.exit, %bb.r, %bb.q, %gc_mark_start.exit
  %.1 = phi i64 [ 100, %._crit_edge ], [ 0, %gc_mark_start.exit ], [ %i.au, %bb.q ], [ 0, %bb.r ], [ 0, %bb.cb ], [ 0, %atomic.exit ], [ 10, %bb.bo ], [ 140737488355328, %bb.s ], [ 400, %bb.bp ], [ 400, %bb.bt ], [ 400, %bb.bu ], [ 140737488355328, %bb.bw ], [ 100, %bb.ca ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @lj_gc_step_fixtop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %i.e = and i64 %i.d, 140737488355327
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.h = load i8, ptr %i.g, align 2, !tbaa !28
  %i.i = icmp eq i8 %i.h, 0
end_hunk_1
