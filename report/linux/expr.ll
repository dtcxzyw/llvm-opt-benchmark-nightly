Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/expr?download=true
inline.NumInlined: 54
inline.NumDeleted: 11
loop-unroll.NumUnrolled: 1
begin_hunk_0_@expr_eliminate_dups:bb.a
  %i.l = call ptr @expr_eliminate_dups(ptr noundef %i.k)
  store ptr %i.l, ptr %i.b, align 8, !tbaa !27
  %i.m = load i32, ptr %i.d, align 8, !tbaa !19
  call fastcc void @expr_eliminate_dups1(i32 noundef %i.m, ptr noundef %i.a, ptr noundef %i.b)
  %i.n = load i32, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = trunc i64 %i.q to i32
  %i.s = mul i32 %i.r, 1607
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = trunc i64 %i.t to i32
  %i.v = mul i32 %i.u, 1607
  %i.w = xor i32 %i.s, %i.v
  %i.x = xor i32 %i.w, %i.n
  %i.y = mul i32 %i.x, 1607
  %i.z = and i32 %i.y, 16383
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @expr_hashtable, i64 %i.aa ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ac, null             ; 2 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.g
  %.03342.i.i = phi ptr [ %i.am, %bb.g ], [ %i.ac, %bb.d ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03342.i.i, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !19
  %i.af = icmp eq i32 %i.ae, %i.n
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.03342.i.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ai = icmp eq ptr %i.ah, %i.o
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.03342.i.i, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = icmp eq ptr %i.ak, %i.p
  br i1 %i.al, label %expr_alloc_two.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph.i.i
  %i.am = load ptr, ptr %.03342.i.i, align 8, !tbaa !21 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.am, null
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.d
  %i.an = call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #15 ; 10 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %bb.h, label %xmalloc.exit.i.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit.i.i:                                 ; preds = %._crit_edge.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %i.n, ptr %i.ao, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.o, ptr %i.ap, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr %i.p, ptr %i.aq, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i8 0, ptr %i.ar, align 8, !tbaa !23
  store ptr %i.ac, ptr %i.an, align 8, !tbaa !24
  br i1 %.not.i.i, label %hlist_add_head.exit.i.i, label %bb.i

bb.i:                                             ; preds = %xmalloc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.an, ptr %i.as, align 8, !tbaa !25
  br label %hlist_add_head.exit.i.i

hlist_add_head.exit.i.i:                          ; preds = %bb.i, %xmalloc.exit.i.i
  store ptr %i.an, ptr %i.ab, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ab, ptr %i.at, align 8, !tbaa !25
  br label %expr_alloc_two.exit

expr_alloc_two.exit:                              ; preds = %bb.f, %hlist_add_head.exit.i.i
  %.1.ph = phi ptr [ %i.an, %hlist_add_head.exit.i.i ], [ %.03342.i.i, %bb.f ]
  %.pr = load i32, ptr @trans_count, align 4, !tbaa !28
  %i.au = call fastcc ptr @expr_eliminate_yn(ptr noundef nonnull %.1.ph) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not13 = icmp eq i32 %.pr, 0
  br i1 %.not13, label %.loopexit, label %bb.c, !llvm.loop !43

.loopexit:                                        ; preds = %expr_alloc_two.exit, %expr_alloc_two.exit.thread
  %i.av = phi ptr [ %i.f, %expr_alloc_two.exit.thread ], [ %i.au, %expr_alloc_two.exit ]
  store i32 %i.c, ptr @trans_count, align 4, !tbaa !28
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.loopexit
  %.010 = phi ptr [ %i.av, %.loopexit ], [ null, %bb.a ]
  ret ptr %.010
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @expr_eliminate_dups1(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %1, align 8, !tbaa !27     ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %i.f = icmp eq i32 %i.e, %0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  store ptr %i.h, ptr %i.a, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  store ptr %i.j, ptr %i.b, align 8, !tbaa !27
  call fastcc void @expr_eliminate_dups1(i32 noundef %0, ptr noundef %i.a, ptr noundef %2)
  call fastcc void @expr_eliminate_dups1(i32 noundef %0, ptr noundef %i.b, ptr noundef %2)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = trunc i64 %i.m to i32
  %i.o = mul i32 %i.n, 1607
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = trunc i64 %i.p to i32
  %i.r = mul i32 %i.q, 1607
  %i.s = xor i32 %i.o, %i.r
  %i.t = xor i32 %i.s, %0
  %i.u = mul i32 %i.t, 1607
  %i.v = and i32 %i.u, 16383
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @expr_hashtable, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null              ; 2 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.e
  %.03342.i.i = phi ptr [ %i.ai, %bb.e ], [ %i.y, %bb.b ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03342.i.i, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !19
  %i.ab = icmp eq i32 %i.aa, %0
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.03342.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ae = icmp eq ptr %i.ad, %i.k
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.03342.i.i, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ah = icmp eq ptr %i.ag, %i.l
  br i1 %i.ah, label %expr_alloc_two.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.ai = load ptr, ptr %.03342.i.i, align 8, !tbaa !21 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.ai, null
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.b
  %i.aj = call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #15 ; 10 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.f, label %xmalloc.exit.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit.i.i:                                 ; preds = %._crit_edge.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 %0, ptr %i.ak, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.k, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr %i.l, ptr %i.am, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i8 0, ptr %i.an, align 8, !tbaa !23
  store ptr %i.y, ptr %i.aj, align 8, !tbaa !24
  br i1 %.not.i.i, label %hlist_add_head.exit.i.i, label %bb.g

bb.g:                                             ; preds = %xmalloc.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !25
  br label %hlist_add_head.exit.i.i

hlist_add_head.exit.i.i:                          ; preds = %bb.g, %xmalloc.exit.i.i
  store ptr %i.aj, ptr %i.x, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.x, ptr %i.ap, align 8, !tbaa !25
  br label %expr_alloc_two.exit

expr_alloc_two.exit:                              ; preds = %bb.d, %hlist_add_head.exit.i.i
  %.0.i.i = phi ptr [ %i.aj, %hlist_add_head.exit.i.i ], [ %.03342.i.i, %bb.d ]
  store ptr %.0.i.i, ptr %1, align 8, !tbaa !27
  br label %expr_join_or.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.aq = load ptr, ptr %2, align 8, !tbaa !27    ; 25 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !19
  %i.at = icmp eq i32 %i.as, %0
  br i1 %i.at, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  store ptr %i.av, ptr %i.a, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !20
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !27
  call fastcc void @expr_eliminate_dups1(i32 noundef %0, ptr noundef %1, ptr noundef %i.a)
  call fastcc void @expr_eliminate_dups1(i32 noundef %0, ptr noundef %1, ptr noundef %i.b)
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !27  ; 3 uses
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = mul i32 %i.bb, 1607
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = trunc i64 %i.bd to i32
  %i.bf = mul i32 %i.be, 1607
  %i.bg = xor i32 %i.bc, %i.bf
  %i.bh = xor i32 %i.bg, %0
  %i.bi = mul i32 %i.bh, 1607
  %i.bj = and i32 %i.bi, 16383
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @expr_hashtable, i64 %i.bk ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !13 ; 4 uses
  %.not.i.i35 = icmp eq ptr %i.bm, null           ; 2 uses
  br i1 %.not.i.i35, label %._crit_edge.i.i39, label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %bb.i, %bb.l
  %.03342.i.i37 = phi ptr [ %i.bw, %bb.l ], [ %i.bm, %bb.i ] ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03342.i.i37, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !19
  %i.bp = icmp eq i32 %i.bo, %0
  br i1 %i.bp, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.i.i36
  %i.bq = getelementptr inbounds nuw i8, ptr %.03342.i.i37, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !20
  %i.bs = icmp eq ptr %i.br, %i.ay
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.03342.i.i37, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20
  %i.bv = icmp eq ptr %i.bu, %i.az
  br i1 %i.bv, label %expr_alloc_two.exit44, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i.i36
  %i.bw = load ptr, ptr %.03342.i.i37, align 8, !tbaa !21 ; 2 uses
  %.not36.i.i38 = icmp eq ptr %i.bw, null
  br i1 %.not36.i.i38, label %._crit_edge.i.i39, label %.lr.ph.i.i36, !llvm.loop !0

._crit_edge.i.i39:                                ; preds = %bb.l, %bb.i
  %i.bx = call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #15 ; 10 uses
  %.not.i.i.i40 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i40, label %bb.m, label %xmalloc.exit.i.i41

bb.m:                                             ; preds = %._crit_edge.i.i39
  call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit.i.i41:                               ; preds = %._crit_edge.i.i39
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i32 %0, ptr %i.by, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store ptr %i.ay, ptr %i.bz, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store ptr %i.az, ptr %i.ca, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i8 0, ptr %i.cb, align 8, !tbaa !23
  store ptr %i.bm, ptr %i.bx, align 8, !tbaa !24
  br i1 %.not.i.i35, label %hlist_add_head.exit.i.i42, label %bb.n

bb.n:                                             ; preds = %xmalloc.exit.i.i41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bx, ptr %i.cc, align 8, !tbaa !25
  br label %hlist_add_head.exit.i.i42

hlist_add_head.exit.i.i42:                        ; preds = %bb.n, %xmalloc.exit.i.i41
  store ptr %i.bx, ptr %i.bl, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bl, ptr %i.cd, align 8, !tbaa !25
  br label %expr_alloc_two.exit44

expr_alloc_two.exit44:                            ; preds = %bb.k, %hlist_add_head.exit.i.i42
  %.0.i.i43 = phi ptr [ %i.bx, %hlist_add_head.exit.i.i42 ], [ %.03342.i.i37, %bb.k ]
  store ptr %.0.i.i43, ptr %2, align 8, !tbaa !27
  br label %expr_join_or.exit.thread

bb.o:                                             ; preds = %bb.h
  switch i32 %0, label %expr_join_or.exit.thread [
    i32 1, label %bb.p
    i32 2, label %bb.av
  ]

bb.p:                                             ; preds = %bb.o
  %i.ce = tail call zeroext i1 @expr_eq(ptr noundef nonnull %i.c, ptr noundef nonnull %i.aq)
  br i1 %i.ce, label %expr_join_or.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = load i32, ptr %i.d, align 8, !tbaa !19  ; 4 uses
  switch i32 %i.cf, label %expr_join_or.exit.thread [
    i32 4, label %bb.r
    i32 5, label %bb.r
    i32 10, label %bb.r
    i32 3, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.cg = load i32, ptr %i.ar, align 8, !tbaa !19 ; 4 uses
  switch i32 %i.cg, label %expr_join_or.exit.thread [
    i32 4, label %bb.s
    i32 5, label %bb.s
    i32 10, label %bb.s
    i32 3, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %i.ch = icmp eq i32 %i.cf, 3                    ; 2 uses
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !20 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !19
  switch i32 %i.cl, label %expr_join_or.exit.thread [
    i32 4, label %bb.u
    i32 5, label %bb.u
    i32 10, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.s
  %.pn.i = phi ptr [ %i.cj, %bb.t ], [ %i.cj, %bb.t ], [ %i.cj, %bb.t ], [ %i.c, %bb.s ]
  %.056.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.056.i = load ptr, ptr %.056.in.i, align 8, !tbaa !20 ; 5 uses
  %i.cm = icmp eq i32 %i.cg, 3                    ; 2 uses
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !19
  %.not72.i = icmp eq i32 %i.cq, 10
  br i1 %.not72.i, label %bb.w, label %expr_join_or.exit.thread

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn73.i = phi ptr [ %i.co, %bb.v ], [ %i.aq, %bb.u ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn73.i, i64 32
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !20
  %.not74.i = icmp eq ptr %.056.i, %.0.i
  br i1 %.not74.i, label %bb.x, label %expr_join_or.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %.056.i, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !36 ; 2 uses
  %.off.i = add i32 %i.cs, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.y, label %expr_join_or.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ct = icmp eq i32 %i.cs, 2
  br i1 %i.ct, label %bb.z, label %bb.al

bb.z:                                             ; preds = %bb.y
  %i.cu = icmp eq i32 %i.cf, 4
  %i.cv = icmp eq i32 %i.cg, 4
  %or.cond89.i = and i1 %i.cu, %i.cv
  br i1 %or.cond89.i, label %bb.aa, label %expr_join_or.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !20 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, @symbol_yes          ; 2 uses
  br i1 %i.cy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !20
  %i.db = icmp eq ptr %i.da, @symbol_mod
  br i1 %i.db, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dc = icmp eq ptr %i.cx, @symbol_mod          ; 2 uses
  br i1 %i.dc, label %bb.ad, label %3

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !20
  %i.df = icmp eq ptr %i.de, @symbol_yes
  br i1 %i.df, label %bb.ae, label %3

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.dg = tail call ptr @expr_alloc_comp(i32 noundef 5, ptr noundef nonnull %.056.i, ptr noundef nonnull @symbol_no)
  br label %expr_join_or.exit

3:                                                ; preds = %bb.ad, %bb.ac
  br i1 %i.cy, label %.thread.i, label %bb.af

.thread.i:                                        ; preds = %3
  %4 = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %i.dh = icmp eq ptr %5, @symbol_no
  br i1 %i.dh, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.thread.i, %3
  %i.di = icmp eq ptr %i.cx, @symbol_no           ; 2 uses
  br i1 %i.di, label %bb.ag, label %6

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !20
  %i.dl = icmp eq ptr %i.dk, @symbol_yes
  br i1 %i.dl, label %bb.ah, label %6

bb.ah:                                            ; preds = %bb.ag, %.thread.i
  %i.dm = tail call ptr @expr_alloc_comp(i32 noundef 5, ptr noundef nonnull %.056.i, ptr noundef nonnull @symbol_mod)
  br label %expr_join_or.exit

6:                                                ; preds = %bb.ag, %bb.af
  br i1 %i.dc, label %bb.ai, label %9

bb.ai:                                            ; preds = %6
  %7 = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %i.dn = icmp eq ptr %8, @symbol_no
  br i1 %i.dn, label %bb.ak, label %9

9:                                                ; preds = %bb.ai, %6
  br i1 %i.di, label %bb.aj, label %expr_join_or.exit.thread

bb.aj:                                            ; preds = %9
  %10 = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %i.do = icmp eq ptr %11, @symbol_mod
  br i1 %i.do, label %bb.ak, label %expr_join_or.exit.thread

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dp = tail call ptr @expr_alloc_comp(i32 noundef 5, ptr noundef nonnull %.056.i, ptr noundef nonnull @symbol_yes)
  br label %expr_join_or.exit

bb.al:                                            ; preds = %bb.y
  br i1 %i.ch, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !19
  %i.du = icmp eq i32 %i.dt, 10
  %i.dv = icmp eq i32 %i.cg, 10
  %or.cond.i = and i1 %i.dv, %i.du
  br i1 %or.cond.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.cm, label %bb.ao, label %expr_join_or.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !19
  %i.ea = icmp eq i32 %i.dz, 10
  %i.eb = icmp eq i32 %i.cf, 10
  %or.cond88.i = and i1 %i.eb, %i.ea
  br i1 %or.cond88.i, label %bb.ap, label %expr_join_or.exit.thread

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %i.ec = tail call ptr @expr_alloc_symbol(ptr noundef nonnull @symbol_yes)
  br label %expr_join_or.exit

expr_join_or.exit:                                ; preds = %bb.ap, %bb.ak, %bb.ah, %bb.ae, %bb.p
  %.057.i = phi ptr [ %i.dp, %bb.ak ], [ %i.c, %bb.p ], [ %i.ec, %bb.ap ], [ %i.dg, %bb.ae ], [ %i.dm, %bb.ah ]
  %i.ed = mul i64 ptrtoint (ptr @symbol_no to i64), 1607
  %i.ee = xor i64 %i.ed, 10
  %i.ef = mul i64 %i.ee, 1607
  %i.eg = and i64 %i.ef, 16382
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr @expr_hashtable, i64 %i.eg ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 16, !tbaa !13 ; 4 uses
  %.not.i.i45 = icmp eq ptr %i.ei, null           ; 2 uses
  br i1 %.not.i.i45, label %._crit_edge.i.i49, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %expr_join_or.exit, %bb.as
  %.03342.i.i47 = phi ptr [ %i.es, %bb.as ], [ %i.ei, %expr_join_or.exit ] ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.03342.i.i47, i64 16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !19
  %i.el = icmp eq i32 %i.ek, 10
  br i1 %i.el, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.lr.ph.i.i46
  %i.em = getelementptr inbounds nuw i8, ptr %.03342.i.i47, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !20
  %i.eo = icmp eq ptr %i.en, @symbol_no
  br i1 %i.eo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ep = getelementptr inbounds nuw i8, ptr %.03342.i.i47, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !20
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %expr_alloc_symbol.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.lr.ph.i.i46
  %i.es = load ptr, ptr %.03342.i.i47, align 8, !tbaa !21 ; 2 uses
  %.not36.i.i48 = icmp eq ptr %i.es, null
  br i1 %.not36.i.i48, label %._crit_edge.i.i49, label %.lr.ph.i.i46, !llvm.loop !0

._crit_edge.i.i49:                                ; preds = %bb.as, %expr_join_or.exit
  %i.et = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #15 ; 10 uses
  %.not.i.i.i50 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i50, label %bb.at, label %xmalloc.exit.i.i51

bb.at:                                            ; preds = %._crit_edge.i.i49
  tail call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit.i.i51:                               ; preds = %._crit_edge.i.i49
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i32 10, ptr %i.eu, align 8, !tbaa !19
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store ptr @symbol_no, ptr %i.ev, align 8, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store ptr null, ptr %i.ew, align 8, !tbaa !20
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i8 0, ptr %i.ex, align 8, !tbaa !23
  store ptr %i.ei, ptr %i.et, align 8, !tbaa !24
  br i1 %.not.i.i45, label %hlist_add_head.exit.i.i52, label %bb.au

bb.au:                                            ; preds = %xmalloc.exit.i.i51
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.et, ptr %i.ey, align 8, !tbaa !25
  br label %hlist_add_head.exit.i.i52

hlist_add_head.exit.i.i52:                        ; preds = %bb.au, %xmalloc.exit.i.i51
  store ptr %i.et, ptr %i.eh, align 16, !tbaa !13
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.eh, ptr %i.ez, align 8, !tbaa !25
  br label %expr_alloc_symbol.exit

expr_alloc_symbol.exit:                           ; preds = %bb.ar, %hlist_add_head.exit.i.i52
  %.0.i.i53 = phi ptr [ %i.et, %hlist_add_head.exit.i.i52 ], [ %.03342.i.i47, %bb.ar ]
  store ptr %.0.i.i53, ptr %1, align 8, !tbaa !27
  store ptr %.057.i, ptr %2, align 8, !tbaa !27
  %i.fa = load i32, ptr @trans_count, align 4, !tbaa !28
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr @trans_count, align 4, !tbaa !28
  br label %expr_join_or.exit.thread

bb.av:                                            ; preds = %bb.o
  %i.fc = tail call zeroext i1 @expr_eq(ptr noundef nonnull %i.c, ptr noundef nonnull %i.aq)
  br i1 %i.fc, label %expr_join_and.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fd = load i32, ptr %i.d, align 8, !tbaa !19  ; 5 uses
  switch i32 %i.fd, label %expr_join_or.exit.thread [
    i32 4, label %bb.ax
    i32 5, label %bb.ax
    i32 10, label %bb.ax
    i32 3, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %i.fe = load i32, ptr %i.ar, align 8, !tbaa !19 ; 6 uses
  switch i32 %i.fe, label %expr_join_or.exit.thread [
    i32 4, label %bb.ay
    i32 5, label %bb.ay
    i32 10, label %bb.ay
    i32 3, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax, %bb.ax, %bb.ax
  %i.ff = icmp eq i32 %i.fd, 3
  br i1 %i.ff, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !20 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !19
  switch i32 %i.fj, label %expr_join_or.exit.thread [
    i32 4, label %bb.ba
    i32 5, label %bb.ba
    i32 10, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az, %bb.az, %bb.ay
  %.pn.i54 = phi ptr [ %i.fh, %bb.az ], [ %i.fh, %bb.az ], [ %i.fh, %bb.az ], [ %i.c, %bb.ay ]
  %.0100.in.i = getelementptr inbounds nuw i8, ptr %.pn.i54, i64 32
  %.0100.i = load ptr, ptr %.0100.in.i, align 8, !tbaa !20 ; 10 uses
  %i.fk = icmp eq i32 %i.fe, 3
  br i1 %i.fk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !20 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !19
  %.not118.i = icmp eq i32 %i.fo, 10
  br i1 %.not118.i, label %bb.bc, label %expr_join_or.exit.thread

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn119.i = phi ptr [ %i.fm, %bb.bb ], [ %i.aq, %bb.ba ]
  %.0.in.i55 = getelementptr inbounds nuw i8, ptr %.pn119.i, i64 32
  %.0.i56 = load ptr, ptr %.0.in.i55, align 8, !tbaa !20
  %.not120.i = icmp eq ptr %.0100.i, %.0.i56
  br i1 %.not120.i, label %bb.bd, label %expr_join_or.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.fp = getelementptr inbounds nuw i8, ptr %.0100.i, i64 24
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !36 ; 2 uses
  %.off.i57 = add i32 %i.fq, -1
  %switch.i58 = icmp ult i32 %.off.i57, 2
  br i1 %switch.i58, label %bb.be, label %expr_join_or.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.fr = icmp eq i32 %i.fd, 10
  br i1 %i.fr, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  switch i32 %i.fe, label %.thread153.i [
    i32 4, label %bb.bg
    i32 5, label %bb.bl
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.fs = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !20
  %i.fu = icmp eq ptr %i.ft, @symbol_yes
  br i1 %i.fu, label %bb.bk, label %.thread153.i

bb.bh:                                            ; preds = %bb.be
  %i.fv = icmp eq i32 %i.fe, 10
  br i1 %i.fv, label %bb.bi, label %.thread153.i

bb.bi:                                            ; preds = %bb.bh
  switch i32 %i.fd, label %.thread153.i [
    i32 4, label %bb.bj
    i32 5, label %bb.bm
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !20
  %i.fy = icmp eq ptr %i.fx, @symbol_yes
  br i1 %i.fy, label %bb.bk, label %expr_join_or.exit.thread

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %i.fz = tail call ptr @expr_alloc_comp(i32 noundef 4, ptr noundef nonnull %.0100.i, ptr noundef nonnull @symbol_yes)
  br label %expr_join_and.exit

bb.bl:                                            ; preds = %bb.bf
  %i.ga = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !20 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, @symbol_no
  br i1 %i.gc, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %bb.bi
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !20 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, @symbol_no
  br i1 %i.gf, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.gg = tail call ptr @expr_alloc_symbol(ptr noundef nonnull %.0100.i)
  br label %expr_join_and.exit

bb.bo:                                            ; preds = %bb.bl
  %i.gh = icmp eq ptr %i.gb, @symbol_mod
  br i1 %i.gh, label %bb.bq, label %.thread153.i

bb.bp:                                            ; preds = %bb.bm
  %i.gi = icmp eq ptr %i.ge, @symbol_mod
  br i1 %i.gi, label %bb.bq, label %.thread153.i

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.gj = tail call ptr @expr_alloc_comp(i32 noundef 4, ptr noundef nonnull %.0100.i, ptr noundef nonnull @symbol_yes)
  br label %expr_join_and.exit

.thread153.i:                                     ; preds = %bb.bp, %bb.bo, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.gk = icmp eq i32 %i.fq, 2
  br i1 %i.gk, label %bb.br, label %expr_join_or.exit.thread

bb.br:                                            ; preds = %.thread153.i
  switch i32 %i.fd, label %expr_join_or.exit.thread [
    i32 4, label %bb.bs
    i32 5, label %bb.by
  ]

bb.bs:                                            ; preds = %bb.br
  %i.gl = icmp eq i32 %i.fe, 5
  br i1 %i.gl, label %bb.bt, label %expr_join_or.exit.thread

bb.bt:                                            ; preds = %bb.bs
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !20 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !20 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 152
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !44
  %i.gs = and i32 %i.gr, 1
  %.not123.i = icmp eq i32 %i.gs, 0
  br i1 %.not123.i, label %expr_join_or.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 152
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !44
  %i.gv = and i32 %i.gu, 1
  %.not124.i = icmp eq i32 %i.gv, 0
  br i1 %.not124.i, label %expr_join_or.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.not128.i = icmp eq ptr %i.gn, %i.gp
  br i1 %.not128.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gw = tail call ptr @expr_alloc_comp(i32 noundef 4, ptr noundef nonnull %.0100.i, ptr noundef nonnull %i.gn)
  br label %expr_join_and.exit

bb.bx:                                            ; preds = %bb.bv
  %i.gx = tail call ptr @expr_alloc_symbol(ptr noundef nonnull @symbol_no)
  br label %expr_join_and.exit

bb.by:                                            ; preds = %bb.br
  switch i32 %i.fe, label %expr_join_or.exit.thread [
    i32 4, label %bb.bz
    i32 5, label %bb.ce
  ]

bb.bz:                                            ; preds = %bb.by
  %i.gy = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !20 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !20 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 152
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !44
  %i.he = and i32 %i.hd, 1
  %.not125.i = icmp eq i32 %i.he, 0
  br i1 %.not125.i, label %expr_join_or.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 152
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !44
  %i.hh = and i32 %i.hg, 1
  %.not126.i = icmp eq i32 %i.hh, 0
  br i1 %.not126.i, label %expr_join_or.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not127.i = icmp eq ptr %i.gz, %i.hb
  br i1 %.not127.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hi = tail call ptr @expr_alloc_comp(i32 noundef 4, ptr noundef nonnull %.0100.i, ptr noundef nonnull %i.gz)
  br label %expr_join_and.exit

bb.cd:                                            ; preds = %bb.cb
  %i.hj = tail call ptr @expr_alloc_symbol(ptr noundef nonnull @symbol_no)
  br label %expr_join_and.exit

bb.ce:                                            ; preds = %bb.by
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !20 ; 3 uses
  %i.hm = icmp eq ptr %i.hl, @symbol_yes          ; 2 uses
  br i1 %i.hm, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.hn = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !20
  %i.hp = icmp eq ptr %i.ho, @symbol_no
  br i1 %i.hp, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.hq = icmp eq ptr %i.hl, @symbol_no           ; 2 uses
  br i1 %i.hq, label %bb.ch, label %12

bb.ch:                                            ; preds = %bb.cg
  %i.hr = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !20
  %i.ht = icmp eq ptr %i.hs, @symbol_yes
  br i1 %i.ht, label %bb.ci, label %12

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %i.hu = tail call ptr @expr_alloc_comp(i32 noundef 4, ptr noundef nonnull %.0100.i, ptr noundef nonnull @symbol_mod)
  br label %expr_join_and.exit

12:                                               ; preds = %bb.ch, %bb.cg
  br i1 %i.hm, label %.thread167.i, label %bb.cj

.thread167.i:                                     ; preds = %12
  %13 = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %i.hv = icmp eq ptr %14, @symbol_mod
  br i1 %i.hv, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %.thread167.i, %12
  %i.hw = icmp eq ptr %i.hl, @symbol_mod
  br i1 %i.hw, label %bb.ck, label %15

bb.ck:                                            ; preds = %bb.cj
  %i.hx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !20 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, @symbol_yes
  br i1 %i.hz, label %bb.cl, label %.thread173.i

bb.cl:                                            ; preds = %bb.ck, %.thread167.i
  %i.ia = tail call ptr @expr_alloc_comp(i32 noundef 4, ptr noundef nonnull %.0100.i, ptr noundef nonnull @symbol_no)
  br label %expr_join_and.exit

.thread173.i:                                     ; preds = %bb.ck
  %i.ib = icmp eq ptr %i.hy, @symbol_no
  br i1 %i.ib, label %bb.cn, label %15

15:                                               ; preds = %.thread173.i, %bb.cj
  br i1 %i.hq, label %bb.cm, label %expr_join_or.exit.thread

bb.cm:                                            ; preds = %15
  %16 = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %i.ic = icmp eq ptr %17, @symbol_mod
  br i1 %i.ic, label %bb.cn, label %expr_join_or.exit.thread

bb.cn:                                            ; preds = %bb.cm, %.thread173.i
  %i.id = tail call ptr @expr_alloc_comp(i32 noundef 4, ptr noundef nonnull %.0100.i, ptr noundef nonnull @symbol_yes)
  br label %expr_join_and.exit

expr_join_and.exit:                               ; preds = %bb.cn, %bb.cl, %bb.ci, %bb.cd, %bb.cc, %bb.bx, %bb.bw, %bb.bq, %bb.bn, %bb.bk, %bb.av
  %.0101.i = phi ptr [ %i.gx, %bb.bx ], [ %i.c, %bb.av ], [ %i.hu, %bb.ci ], [ %i.ia, %bb.cl ], [ %i.id, %bb.cn ], [ %i.hj, %bb.cd ], [ %i.gw, %bb.bw ], [ %i.fz, %bb.bk ], [ %i.gg, %bb.bn ], [ %i.gj, %bb.bq ], [ %i.hi, %bb.cc ]
  %i.ie = mul i64 ptrtoint (ptr @symbol_yes to i64), 1607
  %i.if = xor i64 %i.ie, 10
  %i.ig = mul i64 %i.if, 1607
  %i.ih = and i64 %i.ig, 16382
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr @expr_hashtable, i64 %i.ih ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 16, !tbaa !13 ; 4 uses
  %.not.i.i59 = icmp eq ptr %i.ij, null           ; 2 uses
  br i1 %.not.i.i59, label %._crit_edge.i.i63, label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %expr_join_and.exit, %bb.cq
  %.03342.i.i61 = phi ptr [ %i.it, %bb.cq ], [ %i.ij, %expr_join_and.exit ] ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.03342.i.i61, i64 16
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !19
  %i.im = icmp eq i32 %i.il, 10
  br i1 %i.im, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %.lr.ph.i.i60
  %i.in = getelementptr inbounds nuw i8, ptr %.03342.i.i61, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !20
  %i.ip = icmp eq ptr %i.io, @symbol_yes
  br i1 %i.ip, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.iq = getelementptr inbounds nuw i8, ptr %.03342.i.i61, i64 40
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !20
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %expr_alloc_symbol.exit68, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %.lr.ph.i.i60
  %i.it = load ptr, ptr %.03342.i.i61, align 8, !tbaa !21 ; 2 uses
  %.not36.i.i62 = icmp eq ptr %i.it, null
  br i1 %.not36.i.i62, label %._crit_edge.i.i63, label %.lr.ph.i.i60, !llvm.loop !0

._crit_edge.i.i63:                                ; preds = %bb.cq, %expr_join_and.exit
  %i.iu = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #15 ; 10 uses
  %.not.i.i.i64 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i64, label %bb.cr, label %xmalloc.exit.i.i65

bb.cr:                                            ; preds = %._crit_edge.i.i63
  tail call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit.i.i65:                               ; preds = %._crit_edge.i.i63
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store i32 10, ptr %i.iv, align 8, !tbaa !19
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  store ptr @symbol_yes, ptr %i.iw, align 8, !tbaa !20
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  store ptr null, ptr %i.ix, align 8, !tbaa !20
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  store i8 0, ptr %i.iy, align 8, !tbaa !23
  store ptr %i.ij, ptr %i.iu, align 8, !tbaa !24
  br i1 %.not.i.i59, label %hlist_add_head.exit.i.i66, label %bb.cs

bb.cs:                                            ; preds = %xmalloc.exit.i.i65
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %i.iu, ptr %i.iz, align 8, !tbaa !25
  br label %hlist_add_head.exit.i.i66

hlist_add_head.exit.i.i66:                        ; preds = %bb.cs, %xmalloc.exit.i.i65
  store ptr %i.iu, ptr %i.ii, align 16, !tbaa !13
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.ii, ptr %i.ja, align 8, !tbaa !25
  br label %expr_alloc_symbol.exit68

expr_alloc_symbol.exit68:                         ; preds = %bb.cp, %hlist_add_head.exit.i.i66
  %.0.i.i67 = phi ptr [ %i.iu, %hlist_add_head.exit.i.i66 ], [ %.03342.i.i61, %bb.cp ]
  store ptr %.0.i.i67, ptr %1, align 8, !tbaa !27
  store ptr %.0101.i, ptr %2, align 8, !tbaa !27
  %i.jb = load i32, ptr @trans_count, align 4, !tbaa !28
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr @trans_count, align 4, !tbaa !28
  br label %expr_join_or.exit.thread

expr_join_or.exit.thread:                         ; preds = %bb.by, %bb.bs, %bb.bu, %bb.bt, %bb.br, %bb.bz, %bb.ca, %bb.bj, %15, %bb.cm, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ax, %bb.aw, %.thread153.i, %bb.z, %9, %bb.aj, %bb.ao, %bb.an, %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.x, %expr_alloc_symbol.exit, %expr_alloc_symbol.exit68, %bb.o, %expr_alloc_two.exit44, %expr_alloc_two.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @expr_transform(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %.not133 = icmp eq ptr %0, null
  br i1 %.not133, label %expr_alloc_one.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %.tr134 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr134, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %.off = add i32 %i.b, -4
  %switch = icmp ult i32 %.off, 7
  br i1 %switch, label %expr_alloc_two.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.tr134, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = tail call ptr @expr_transform(ptr noundef %i.d) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.tr134, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = tail call ptr @expr_transform(ptr noundef %i.g) ; 3 uses
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = trunc i64 %i.i to i32
  %i.k = mul i32 %i.j, 1607
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = trunc i64 %i.l to i32
  %i.n = mul i32 %i.m, 1607
  %i.o = xor i32 %i.k, %i.n
  %i.p = xor i32 %i.o, %i.b
  %i.q = mul i32 %i.p, 1607
  %i.r = and i32 %i.q, 16383
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @expr_hashtable, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13   ; 4 uses
  %.not.i.i = icmp eq ptr %i.u, null              ; 2 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.e
  %.03342.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.u, %bb.b ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03342.i.i, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !19
  %i.x = icmp eq i32 %i.w, %i.b
  br i1 %i.x, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.03342.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = icmp eq ptr %i.z, %i.e
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.03342.i.i, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ad = icmp eq ptr %i.ac, %i.h
  br i1 %i.ad, label %expr_alloc_two.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.ae = load ptr, ptr %.03342.i.i, align 8, !tbaa !21 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.ae, null
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.b
  %i.af = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #15 ; 10 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.f, label %xmalloc.exit.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit.i.i:                                 ; preds = %._crit_edge.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %i.b, ptr %i.ag, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.e, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.h, ptr %i.ai, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i8 0, ptr %i.aj, align 8, !tbaa !23
  store ptr %i.u, ptr %i.af, align 8, !tbaa !24
  br i1 %.not.i.i, label %hlist_add_head.exit.i.i, label %bb.g

bb.g:                                             ; preds = %xmalloc.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.af, ptr %i.ak, align 8, !tbaa !25
  br label %hlist_add_head.exit.i.i

hlist_add_head.exit.i.i:                          ; preds = %bb.g, %xmalloc.exit.i.i
  store ptr %i.af, ptr %i.t, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.t, ptr %i.al, align 8, !tbaa !25
  br label %expr_alloc_two.exit

expr_alloc_two.exit:                              ; preds = %bb.d, %hlist_add_head.exit.i.i, %.lr.ph
  %.0 = phi ptr [ %.tr134, %.lr.ph ], [ %i.af, %hlist_add_head.exit.i.i ], [ %.03342.i.i, %bb.d ] ; 12 uses
  switch i32 %i.b, label %expr_alloc_one.exit [
    i32 4, label %bb.h
    i32 5, label %bb.y
    i32 3, label %bb.ak
  ]

bb.h:                                             ; preds = %expr_alloc_two.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !20 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !36
  %.not48 = icmp eq i32 %i.ap, 1
  br i1 %.not48, label %bb.i, label %expr_alloc_one.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20 ; 3 uses
  %i.as = icmp eq ptr %i.ar, @symbol_no
  br i1 %i.as, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = mul i64 %i.at, 1607
  %i.av = xor i64 %i.au, 10
  %i.aw = mul i64 %i.av, 1607
  %i.ax = and i64 %i.aw, 16383
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @expr_hashtable, i64 %i.ax ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13 ; 4 uses
  %.not.i.i49 = icmp eq ptr %i.az, null           ; 2 uses
  br i1 %.not.i.i49, label %._crit_edge.i.i53, label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %bb.j, %bb.m
  %.03342.i.i51 = phi ptr [ %i.bj, %bb.m ], [ %i.az, %bb.j ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03342.i.i51, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !19
  %i.bc = icmp eq i32 %i.bb, 10
  br i1 %i.bc, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i50
  %i.bd = getelementptr inbounds nuw i8, ptr %.03342.i.i51, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20
  %i.bf = icmp eq ptr %i.be, %i.an
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.03342.i.i51, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !20
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %expr_alloc_symbol.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.lr.ph.i.i50
  %i.bj = load ptr, ptr %.03342.i.i51, align 8, !tbaa !21 ; 2 uses
  %.not36.i.i52 = icmp eq ptr %i.bj, null
  br i1 %.not36.i.i52, label %._crit_edge.i.i53, label %.lr.ph.i.i50, !llvm.loop !0

._crit_edge.i.i53:                                ; preds = %bb.m, %bb.j
  %i.bk = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #15 ; 10 uses
  %.not.i.i.i54 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i54, label %bb.n, label %xmalloc.exit.i.i55

bb.n:                                             ; preds = %._crit_edge.i.i53
  tail call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit.i.i55:                               ; preds = %._crit_edge.i.i53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i32 10, ptr %i.bl, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr %i.an, ptr %i.bm, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr null, ptr %i.bn, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i8 0, ptr %i.bo, align 8, !tbaa !23
  store ptr %i.az, ptr %i.bk, align 8, !tbaa !24
  br i1 %.not.i.i49, label %hlist_add_head.exit.i.i56, label %bb.o

bb.o:                                             ; preds = %xmalloc.exit.i.i55
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bk, ptr %i.bp, align 8, !tbaa !25
  br label %hlist_add_head.exit.i.i56

hlist_add_head.exit.i.i56:                        ; preds = %bb.o, %xmalloc.exit.i.i55
  store ptr %i.bk, ptr %i.ay, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.ay, ptr %i.bq, align 8, !tbaa !25
  br label %expr_alloc_symbol.exit

expr_alloc_symbol.exit:                           ; preds = %bb.l, %hlist_add_head.exit.i.i56
  %.0.i.i57 = phi ptr [ %i.bk, %hlist_add_head.exit.i.i56 ], [ %.03342.i.i51, %bb.l ] ; 3 uses
  %i.br = ptrtoint ptr %.0.i.i57 to i64
  %i.bs = mul i64 %i.br, 1607
  %i.bt = xor i64 %i.bs, 3
  %i.bu = mul i64 %i.bt, 1607
  %i.bv = and i64 %i.bu, 16383
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @expr_hashtable, i64 %i.bv ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !13 ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.bx, null           ; 2 uses
  br i1 %.not.i.i58, label %._crit_edge.i.i62, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %expr_alloc_symbol.exit, %bb.r
end_hunk_0
