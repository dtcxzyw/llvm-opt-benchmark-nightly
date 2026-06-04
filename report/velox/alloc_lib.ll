inline.NumInlined: 59
inline.NumDeleted: 16
begin_hunk_0_@internal_memalign:bb.a
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.am                    ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  %i.au = and i64 %i.at, -8
  %i.av = sub i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = and i64 %i.at, 3
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !28
  %i.az = add i64 %i.ay, %i.ar
  store i64 %i.az, ptr %i.ap, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.av, ptr %i.ba, align 8, !tbaa !26
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26
  %i.bd = and i64 %i.bc, 1
  %i.be = or i64 %i.av, %i.bd
  %i.bf = or i64 %i.be, 2
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.bj = or i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !26
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !26
  %i.bl = and i64 %i.bk, 1
  %i.bm = or i64 %i.ar, %i.bl
  %i.bn = or i64 %i.bm, 2
  store i64 %i.bn, ptr %i.as, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ar
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !26
  %i.br = or i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !26
  tail call fastcc void @dispose_chunk(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i64 noundef %i.ar)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %spin_acquire_lock.exit
  %.092 = phi ptr [ %i.p, %spin_acquire_lock.exit ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.092, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !26 ; 3 uses
  %i.bu = and i64 %i.bt, 3
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = and i64 %i.bt, -8                       ; 3 uses
  %i.bx = add i64 %i.i, 32
  %i.by = icmp ugt i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = sub i64 %i.bw, %i.i                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.092, i64 %i.i ; 2 uses
  %i.cb = and i64 %i.bt, 1
  %i.cc = or disjoint i64 %i.i, %i.cb
  %i.cd = or disjoint i64 %i.cc, 2
  store i64 %i.cd, ptr %i.bs, align 8, !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = or disjoint i64 %i.bz, 3
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !26
  %i.cg = getelementptr inbounds nuw i8, ptr %.092, i64 %i.bw
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !26
  %i.cj = or i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !26
  tail call fastcc void @dispose_chunk(ptr noundef nonnull %0, ptr noundef %i.ca, i64 noundef %i.bz)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %.092, i64 16 ; 2 uses
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !10
  %i.cm = and i32 %i.cl, 2
  %.not103 = icmp eq i32 %i.cm, 0
  br i1 %.not103, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.cn release, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.b, %bb.g, %bb.r, %bb.s
  %.390 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ], [ %i.ck, %bb.r ], [ %i.ck, %bb.s ]
  ret ptr %.390
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @dlposix_memalign(ptr noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @dlmalloc(i64 noundef %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %1, 3                           ; 2 uses
  %i.d = and i64 %1, 7
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne i64 %i.c, 0
  %or.cond.not29 = and i1 %i.e, %i.f
  %i.g = tail call range(i64 0, 62) i64 @llvm.ctpop.i64(i64 %i.c)
  %.not = icmp samesign ult i64 %i.g, 2
  %or.cond25 = select i1 %or.cond.not29, i1 %.not, i1 false
  br i1 %or.cond25, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 -128, %1
  %.not24 = icmp ugt i64 %2, %i.h
  br i1 %.not24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 32)
  %i.i = tail call fastcc ptr @internal_memalign(ptr noundef nonnull @_gm_, i64 noundef %spec.store.select, i64 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.2 = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.e ]  ; 2 uses
  %i.j = icmp eq ptr %.2, null
  br i1 %i.j, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.2, ptr %0, align 8, !tbaa !72
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.f, %bb.g
  %.1 = phi i32 [ 12, %bb.f ], [ 0, %bb.g ], [ 22, %bb.c ], [ 12, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define ptr @dlvalloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !34 ; 2 uses
  %i.c = icmp ult i64 %i.b, 17
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @dlmalloc(i64 noundef %0)
  br label %dlmemalign.exit

bb.e:                                             ; preds = %bb.c
  %i.e = tail call fastcc ptr @internal_memalign(ptr noundef nonnull @_gm_, i64 noundef %i.b, i64 noundef %0)
  br label %dlmemalign.exit

dlmemalign.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @dlpvalloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !34 ; 4 uses
  %i.c = add i64 %0, -1
  %i.d = add i64 %i.c, %i.b
  %i.e = sub i64 0, %i.b
  %i.f = and i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp ult i64 %i.b, 17
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @dlmalloc(i64 noundef %i.f)
  br label %dlmemalign.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call fastcc ptr @internal_memalign(ptr noundef nonnull @_gm_, i64 noundef %i.b, i64 noundef %i.f)
  br label %dlmemalign.exit

dlmemalign.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @dlindependent_calloc(i64 noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %1, ptr %i.a, align 8, !tbaa !39
  %i.b = call fastcc ptr @ialloc(ptr noundef nonnull @_gm_, i64 noundef %0, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ialloc(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef range(i32 0, 4) %3, ptr noundef writeonly captures(address_is_null, ret: address, provenance) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not94 = icmp eq ptr %4, null                  ; 2 uses
  %i.b = icmp eq i64 %1, 0                        ; 2 uses
  br i1 %.not94, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.ab, label %bb.j

bb.e:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.c = icmp eq ptr %0, @_gm_
  br i1 %i.c, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.d = tail call ptr @dlmalloc(i64 noundef 0)
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.e = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef 0)
  br label %bb.ab

bb.i:                                             ; preds = %bb.e
  %i.f = shl i64 %1, 3                            ; 2 uses
  %i.g = icmp ult i64 %i.f, 23
  %i.h = and i64 %i.f, -16
  %i.i = add i64 %i.h, 16
  %i.j = select i1 %i.g, i64 32, i64 %i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %.084 = phi i64 [ %i.j, %bb.i ], [ 0, %bb.d ]   ; 2 uses
  %i.k = and i32 %3, 1
  %.not95 = icmp eq i32 %i.k, 0
  br i1 %.not95, label %.lr.ph.preheader, label %bb.k

.lr.ph.preheader:                                 ; preds = %bb.j
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi138 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8, !tbaa !39 ; 2 uses
  %wide.load139 = load <2 x i64>, ptr %i.m, align 8, !tbaa !39 ; 2 uses
  %i.n = icmp ult <2 x i64> %wide.load, splat (i64 23)
  %i.o = icmp ult <2 x i64> %wide.load139, splat (i64 23)
  %i.p = add <2 x i64> %wide.load, splat (i64 23)
  %i.q = add <2 x i64> %wide.load139, splat (i64 23)
  %i.r = and <2 x i64> %i.p, splat (i64 -16)
  %i.s = and <2 x i64> %i.q, splat (i64 -16)
  %i.t = select <2 x i1> %i.n, <2 x i64> splat (i64 32), <2 x i64> %i.r
  %i.u = select <2 x i1> %i.o, <2 x i64> splat (i64 32), <2 x i64> %i.s
  %i.v = add <2 x i64> %i.t, %vec.phi             ; 2 uses
  %i.w = add <2 x i64> %i.u, %vec.phi138          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.w, %i.v
  %i.y = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader144

.lr.ph.preheader144:                              ; preds = %.lr.ph.preheader, %middle.block
  %.074107.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.077106.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.z = load i64, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.aa = icmp ult i64 %i.z, 23
  %i.ab = add i64 %i.z, 23
  %i.ac = and i64 %i.ab, -16
  %i.ad = select i1 %i.aa, i64 32, i64 %i.ac      ; 2 uses
  %i.ae = mul i64 %i.ad, %1
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader144, %.lr.ph
  %.074107 = phi i64 [ %i.am, %.lr.ph ], [ %.074107.ph, %.lr.ph.preheader144 ] ; 2 uses
  %.077106 = phi i64 [ %i.al, %.lr.ph ], [ %.077106.ph, %.lr.ph.preheader144 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.074107
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 23
  %i.ai = add i64 %i.ag, 23
  %i.aj = and i64 %i.ai, -16
  %i.ak = select i1 %i.ah, i64 32, i64 %i.aj
  %i.al = add i64 %i.ak, %.077106                 ; 2 uses
  %i.am = add nuw i64 %.074107, 1                 ; 2 uses
  %.not96 = icmp eq i64 %i.am, %1
  br i1 %.not96, label %.loopexit, label %.lr.ph, !llvm.loop !85

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.k
  %.178 = phi i64 [ %i.ae, %bb.k ], [ %i.y, %middle.block ], [ %i.al, %.lr.ph ] ; 4 uses
  %.076 = phi i64 [ %i.ad, %bb.k ], [ 0, %middle.block ], [ 0, %.lr.ph ] ; 10 uses
  %i.an = add i64 %.178, %.084
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 6 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.aq = and i32 %i.ap, 1
  %i.ar = and i32 %i.ap, -2
  store i32 %i.ar, ptr %i.ao, align 8, !tbaa !10
  %i.as = icmp eq ptr %0, @_gm_
  %i.at = add i64 %i.an, -8                       ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.au = tail call ptr @dlmalloc(i64 noundef %i.at)
  br label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.av = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef %i.at)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = phi ptr [ %i.au, %bb.l ], [ %i.av, %bb.m ] ; 5 uses
  %.not97 = icmp eq i32 %i.aq, 0
  br i1 %.not97, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.ao, align 8, !tbaa !10
  %i.ay = or i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ao, align 8, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = icmp eq ptr %i.aw, null
  br i1 %i.az, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = load i32, ptr %i.ao, align 8, !tbaa !10
  %i.bb = and i32 %i.ba, 2
  %.not98 = icmp eq i32 %i.bb, 0
  br i1 %.not98, label %spin_acquire_lock.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.bd = atomicrmw xchg ptr %i.bc, i32 1 seq_cst, align 4
  %.not99 = icmp eq i32 %i.bd, 0
  br i1 %.not99, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.r, %.preheader.backedge
  %.0.i = phi i32 [ %i.bg, %.preheader.backedge ], [ 0, %bb.r ]
  %i.be = load volatile i32, ptr %i.bc, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %.preheader
  %i.bf = atomicrmw xchg ptr %i.bc, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.bf, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.s, %.preheader
  %i.bg = add nuw nsw i32 %.0.i, 1                ; 2 uses
  %i.bh = and i32 %i.bg, 63
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.t, label %.preheader.backedge

bb.t:                                             ; preds = %.critedge.i
  %i.bj = tail call i32 @sched_yield() #16        ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.t, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.s, %bb.q, %bb.r
  %i.bk = getelementptr inbounds i8, ptr %i.aw, i64 -16 ; 6 uses
  %i.bl = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !26
  %i.bn = and i64 %i.bm, -8                       ; 3 uses
  %.not100 = icmp samesign ult i32 %3, 2
  br i1 %.not100, label %bb.v, label %bb.u
end_hunk_0
begin_hunk_1_@ialloc:bb.a
  br i1 %.not94, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.178 ; 2 uses
  %i.bq = sub i64 %i.bn, %.178
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = or i64 %i.bq, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.081 = phi i64 [ %.178, %bb.w ], [ %i.bn, %bb.v ] ; 5 uses
  %.180 = phi ptr [ %i.br, %bb.w ], [ %4, %bb.v ] ; 11 uses
  %i.bu = add i64 %1, -1                          ; 6 uses
  store ptr %i.aw, ptr %.180, align 8, !tbaa !72
  %.not101108 = icmp eq i64 %i.bu, 0
  br i1 %.not101108, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.x
  %.not103 = icmp eq i64 %.076, 0
  br i1 %.not103, label %.lr.ph112.split.us.preheader, label %.lr.ph112.split

.lr.ph112.split.us.preheader:                     ; preds = %.lr.ph112
  %xtraiter151 = and i64 %i.bu, 1
  %i.bv = icmp eq i64 %1, 2
  br i1 %i.bv, label %.lr.ph112.split.us.epil.preheader, label %.lr.ph112.split.us.preheader.new

.lr.ph112.split.us.preheader.new:                 ; preds = %.lr.ph112.split.us.preheader
  %unroll_iter157 = and i64 %i.bu, -2
  br label %.lr.ph112.split.us

.lr.ph112.split.us:                               ; preds = %.lr.ph112.split.us, %.lr.ph112.split.us.preheader.new
  %.1111.us = phi i64 [ 0, %.lr.ph112.split.us.preheader.new ], [ %i.ct, %.lr.ph112.split.us ] ; 3 uses
  %.182110.us = phi i64 [ %.081, %.lr.ph112.split.us.preheader.new ], [ %i.cp, %.lr.ph112.split.us ]
  %.083109.us = phi ptr [ %i.bk, %.lr.ph112.split.us.preheader.new ], [ %i.cs, %.lr.ph112.split.us ] ; 2 uses
  %niter158 = phi i64 [ 0, %.lr.ph112.split.us.preheader.new ], [ %niter158.next.1, %.lr.ph112.split.us ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1111.us
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !39 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 23
  %i.bz = add i64 %i.bx, 23
  %i.ca = and i64 %i.bz, -16
  %i.cb = select i1 %i.by, i64 32, i64 %i.ca      ; 3 uses
  %i.cc = or disjoint i64 %i.cb, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %.083109.us, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %.083109.us, i64 %i.cb ; 3 uses
  %i.cf = or disjoint i64 %.1111.us, 1            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %i.cf
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !72
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cf
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !39 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 23
  %i.cl = add i64 %i.cj, 23
  %i.cm = and i64 %i.cl, -16
  %i.cn = select i1 %i.ck, i64 32, i64 %i.cm      ; 3 uses
  %i.co = add i64 %i.cb, %i.cn
  %i.cp = sub i64 %.182110.us, %i.co              ; 3 uses
  %i.cq = or disjoint i64 %i.cn, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !26
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cn ; 4 uses
  %i.ct = add nuw i64 %.1111.us, 2                ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %i.ct
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !72
  %niter158.next.1 = add i64 %niter158, 2         ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph112.split.us

.lr.ph112.split:                                  ; preds = %.lr.ph112
  %i.cw = or i64 %.076, 3                         ; 5 uses
  %i.cx = add i64 %1, -2
  %xtraiter = and i64 %i.bu, 3                    ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 3
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph112.split.new

.lr.ph112.split.new:                              ; preds = %.lr.ph112.split
  %unroll_iter = and i64 %i.bu, -4
  %.neg = mul i64 %.076, -3
  %invariant.op = sub i64 %.neg, %.076
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph112.split.new
  %.1111 = phi i64 [ 0, %.lr.ph112.split.new ], [ %i.dq, %bb.y ] ; 4 uses
  %.182110 = phi i64 [ %.081, %.lr.ph112.split.new ], [ %.reass, %bb.y ]
  %.083109 = phi ptr [ %i.bk, %.lr.ph112.split.new ], [ %i.dp, %bb.y ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph112.split.new ], [ %niter.next.3, %bb.y ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.083109, i64 8
  store i64 %i.cw, ptr %i.cz, align 8, !tbaa !26
  %i.da = getelementptr inbounds nuw i8, ptr %.083109, i64 %.076 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %.1111
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !72
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %i.cw, ptr %i.de, align 8, !tbaa !26
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 %.076 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %.1111
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !72
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %i.cw, ptr %i.dj, align 8, !tbaa !26
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %.076 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %.1111
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !72
  %.reass = add i64 %.182110, %invariant.op       ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.cw, ptr %i.do, align 8, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.076 ; 4 uses
  %i.dq = add nuw i64 %.1111, 4                   ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %i.dq
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !72
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit141.unr-lcssa, label %bb.y

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph112.split.us
  %lcmp.mod153.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod153.not, label %._crit_edge, label %.lr.ph112.split.us.epil.preheader

.lr.ph112.split.us.epil.preheader:                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph112.split.us.preheader
  %.1111.us.epil.init = phi i64 [ 0, %.lr.ph112.split.us.preheader ], [ %i.ct, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.182110.us.epil.init = phi i64 [ %.081, %.lr.ph112.split.us.preheader ], [ %i.cp, %._crit_edge.loopexit.unr-lcssa ]
  %.083109.us.epil.init = phi ptr [ %i.bk, %.lr.ph112.split.us.preheader ], [ %i.cs, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod156 = trunc i64 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1111.us.epil.init
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !39 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 23
  %i.dw = add i64 %i.du, 23
  %i.dx = and i64 %i.dw, -16
  %i.dy = select i1 %i.dv, i64 32, i64 %i.dx      ; 3 uses
  %i.dz = sub i64 %.182110.us.epil.init, %i.dy
  %i.ea = or disjoint i64 %i.dy, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %.083109.us.epil.init, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !26
  %i.ec = getelementptr inbounds nuw i8, ptr %.083109.us.epil.init, i64 %i.dy ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %.1111.us.epil.init
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !72
  br label %._crit_edge

._crit_edge.loopexit141.unr-lcssa:                ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit141.unr-lcssa, %.lr.ph112.split
  %.1111.epil.init = phi i64 [ 0, %.lr.ph112.split ], [ %i.dq, %._crit_edge.loopexit141.unr-lcssa ]
  %.182110.epil.init = phi i64 [ %.081, %.lr.ph112.split ], [ %.reass, %._crit_edge.loopexit141.unr-lcssa ]
  %.083109.epil.init = phi ptr [ %i.bk, %.lr.ph112.split ], [ %i.dp, %._crit_edge.loopexit141.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %.1111.epil = phi i64 [ %.1111.epil.init, %.epil.preheader ], [ %i.ej, %bb.z ]
  %.182110.epil = phi i64 [ %.182110.epil.init, %.epil.preheader ], [ %i.eg, %bb.z ]
  %.083109.epil = phi ptr [ %.083109.epil.init, %.epil.preheader ], [ %i.ei, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.eg = sub i64 %.182110.epil, %.076            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.083109.epil, i64 8
  store i64 %i.cw, ptr %i.eh, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %.083109.epil, i64 %.076 ; 3 uses
  %i.ej = add nuw i64 %.1111.epil, 1              ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.180, i64 %i.ej
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !72
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.z, !llvm.loop !86

._crit_edge:                                      ; preds = %._crit_edge.loopexit141.unr-lcssa, %bb.z, %.lr.ph112.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.x
  %.083.lcssa = phi ptr [ %i.bk, %bb.x ], [ %i.ec, %.lr.ph112.split.us.epil.preheader ], [ %i.cs, %._crit_edge.loopexit.unr-lcssa ], [ %i.dp, %._crit_edge.loopexit141.unr-lcssa ], [ %i.ei, %bb.z ]
  %.182.lcssa = phi i64 [ %.081, %bb.x ], [ %i.dz, %.lr.ph112.split.us.epil.preheader ], [ %i.cp, %._crit_edge.loopexit.unr-lcssa ], [ %.reass, %._crit_edge.loopexit141.unr-lcssa ], [ %i.eg, %bb.z ]
  %i.em = or i64 %.182.lcssa, 3
  %i.en = getelementptr inbounds nuw i8, ptr %.083.lcssa, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !26
  %i.eo = load i32, ptr %i.ao, align 8, !tbaa !10
  %i.ep = and i32 %i.eo, 2
  %.not102 = icmp eq i32 %i.ep, 0
  br i1 %.not102, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.eq release, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.aa, %bb.p, %bb.g, %bb.h, %bb.d
  %.0 = phi ptr [ null, %bb.p ], [ %i.e, %bb.h ], [ %4, %bb.d ], [ %i.d, %bb.g ], [ %.180, %bb.aa ], [ %.180, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @dlindependent_comalloc(i64 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @ialloc(ptr noundef nonnull @_gm_, i64 noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef i64 @dlbulk_free(ptr noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @internal_bulk_free(ptr noundef nonnull @_gm_, ptr noundef %0, i64 noundef %1)
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @internal_bulk_free(ptr noundef %0, ptr noundef captures(address) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.e = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not44 = icmp eq i32 %i.e, 0
  br i1 %.not44, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.0.i = phi i32 [ %i.h, %.preheader.backedge ], [ 0, %bb.b ]
  %i.f = load volatile i32, ptr %i.d, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.preheader
  %i.g = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.h = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.i = and i32 %i.h, 63
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %.critedge.i
  %i.k = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.c, %bb.a, %bb.b
  %.idx = shl nuw nsw i64 %2, 3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %.not4551 = icmp eq i64 %2, 0
  br i1 %.not4551, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %spin_acquire_lock.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.052 = phi ptr [ %1, %.lr.ph ], [ %i.al, %bb.k ] ; 4 uses
  %i.n = load ptr, ptr %.052, align 8, !tbaa !72  ; 4 uses
  %.not47 = icmp eq ptr %i.n, null
  br i1 %.not47, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26   ; 3 uses
  %i.r = and i64 %i.q, -8                         ; 3 uses
  store ptr null, ptr %.052, align 8, !tbaa !72
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !22
  %.not48 = icmp uge ptr %i.o, %i.s
  %i.t = and i64 %i.q, 3
  %i.u = icmp ne i64 %i.t, 1
  %or.cond = select i1 %.not48, i1 %i.u, i1 false, !prof !88
  br i1 %or.cond, label %bb.g, label %.critedge, !prof !88

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.052, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r ; 2 uses
  %.not49 = icmp eq ptr %i.v, %i.l
  br i1 %.not49, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, %i.r                     ; 2 uses
  %i.ae = and i64 %i.q, 1
  %i.af = or disjoint i64 %i.ae, %i.ad
  %i.ag = or disjoint i64 %i.af, 2
  store i64 %i.ag, ptr %i.p, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.ak = or i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !26
  store ptr %i.n, ptr %i.v, align 8, !tbaa !72
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @dispose_chunk(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i64 noundef %i.r)
  br label %bb.k

.critedge:                                        ; preds = %bb.f
  tail call void @abort() #17
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.052, i64 8 ; 2 uses
  %.not45 = icmp eq ptr %i.al, %i.l
  br i1 %.not45, label %._crit_edge, label %bb.e, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.k, %spin_acquire_lock.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !60
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ar = tail call fastcc i32 @sys_trim(ptr noundef nonnull %0, i64 noundef 0) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.as = load i32, ptr %i.a, align 8, !tbaa !10
  %i.at = and i32 %i.as, 2
  %.not46 = icmp eq i32 %i.at, 0
  br i1 %.not46, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.au release, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dlmalloc_trim(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %spin_acquire_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.backedge
  %.0.i = phi i32 [ %i.g, %.preheader.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.preheader
  %i.f = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.preheader
  %i.g = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %.preheader.backedge

bb.f:                                             ; preds = %.critedge.i
  %i.j = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.f, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.e, %bb.c, %bb.d
  %i.k = tail call fastcc i32 @sys_trim(ptr noundef nonnull @_gm_, i64 noundef %0)
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.m = and i32 %i.l, 2
  %.not4 = icmp eq i32 %i.m, 0
end_hunk_1
begin_hunk_2_@mspace_realloc:bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef %2)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %2, -129
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @__errno_location() #18
  store i32 12, ptr %i.d, align 4, !tbaa !3
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %2, 23
  %i.f = add nuw i64 %2, 23
  %i.g = and i64 %i.f, -16
  %i.h = select i1 %i.e, i64 32, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %1, i64 -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10
  %i.l = and i32 %i.k, 2
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.n = atomicrmw xchg ptr %i.m, i32 1 seq_cst, align 4
  %.not36 = icmp eq i32 %i.n, 0
  br i1 %.not36, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader.backedge
  %.0.i = phi i32 [ %i.q, %.preheader.backedge ], [ 0, %bb.f ]
  %i.o = load volatile i32, ptr %i.m, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.preheader
  %i.p = atomicrmw xchg ptr %i.m, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.p, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %.preheader
  %i.q = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.r = and i32 %i.q, 63
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %.preheader.backedge

bb.h:                                             ; preds = %.critedge.i
  %i.t = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.h, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.g, %bb.e, %bb.f
  %i.u = tail call fastcc ptr @try_realloc_chunk(ptr noundef nonnull %0, ptr noundef %i.i, i64 noundef %i.h, i32 noundef 1) ; 2 uses
  %i.v = load i32, ptr %i.j, align 8, !tbaa !10
  %i.w = and i32 %i.v, 2
  %.not37 = icmp eq i32 %i.w, 0
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %spin_acquire_lock.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.x release, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %spin_acquire_lock.exit
  %.not38 = icmp eq ptr %i.u, null
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.z = tail call ptr @mspace_malloc(ptr noundef nonnull %0, i64 noundef %2) ; 3 uses
  %.not39 = icmp eq ptr %i.z, null
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.ac = and i64 %i.ab, -8
  %i.ad = and i64 %i.ab, 3
  %i.ae = icmp eq i64 %i.ad, 0
  %.neg = select i1 %i.ae, i64 -16, i64 -8
  %i.af = add i64 %.neg, %i.ac
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %1, i64 %i.ag, i1 false)
  tail call void @mspace_free(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k, %bb.d, %bb.b
  %.2 = phi ptr [ %i.b, %bb.b ], [ null, %bb.d ], [ %i.y, %bb.k ], [ %i.z, %bb.m ], [ null, %bb.l ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @mspace_realloc_in_place(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %2, -129
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #18
  store i32 12, ptr %i.b, align 4, !tbaa !3
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %2, 23
  %i.d = add nuw i64 %2, 23
  %i.e = and i64 %i.d, -16
  %i.f = select i1 %i.c, i64 32, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !10
  %i.j = and i32 %i.i, 2
  %.not19 = icmp eq i32 %i.j, 0
  br i1 %.not19, label %spin_acquire_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.l = atomicrmw xchg ptr %i.k, i32 1 seq_cst, align 4
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.e, %.preheader.backedge
  %.0.i = phi i32 [ %i.o, %.preheader.backedge ], [ 0, %bb.e ]
  %i.m = load volatile i32, ptr %i.k, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.preheader
  %i.n = atomicrmw xchg ptr %i.k, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.n, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %.preheader
  %i.o = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.p = and i32 %i.o, 63
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %.preheader.backedge

bb.g:                                             ; preds = %.critedge.i
  %i.r = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.g, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.f, %bb.d, %bb.e
  %i.s = tail call fastcc ptr @try_realloc_chunk(ptr noundef nonnull %0, ptr noundef %i.g, i64 noundef %i.f, i32 noundef 0)
  %i.t = load i32, ptr %i.h, align 8, !tbaa !10
  %i.u = and i32 %i.t, 2
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %spin_acquire_lock.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.v release, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %spin_acquire_lock.exit
  %i.w = icmp eq ptr %i.s, %i.g
  %spec.select = select i1 %i.w, ptr %1, ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %bb.a
  %.2 = phi ptr [ null, %bb.c ], [ %spec.select, %bb.i ], [ null, %bb.a ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @mspace_memalign(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 17
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @mspace_malloc(ptr noundef %0, i64 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @internal_memalign(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @mspace_independent_calloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly captures(address_is_null, ret: address, provenance) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %2, ptr %i.a, align 8, !tbaa !39
  %i.b = call fastcc ptr @ialloc(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @mspace_independent_comalloc(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(address_is_null, ret: address, provenance) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @ialloc(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef i64 @mspace_bulk_free(ptr noundef %0, ptr noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @internal_bulk_free(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i64 0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mspace_trim(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 3 uses
  %i.e = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.0.i = phi i32 [ %i.h, %.preheader.backedge ], [ 0, %bb.b ]
  %i.f = load volatile i32, ptr %i.d, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.preheader
  %i.g = atomicrmw xchg ptr %i.d, i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.preheader
  %i.h = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.i = and i32 %i.h, 63
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %.critedge.i
  %i.k = tail call i32 @sched_yield() #16         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.c, %bb.a, %bb.b
  %i.l = tail call fastcc i32 @sys_trim(ptr noundef nonnull %0, i64 noundef %1)
  %i.m = load i32, ptr %i.a, align 8, !tbaa !10
  %i.n = and i32 %i.m, 2
  %.not9 = icmp eq i32 %i.n, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %spin_acquire_lock.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 884
  store atomic i32 0, ptr %i.o release, align 4
  br label %bb.f

bb.f:                                             ; preds = %spin_acquire_lock.exit, %bb.e
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @mspace_footprint(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @mspace_max_footprint(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @mspace_footprint_limit(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = select i1 %i.c, i64 -1, i64 %i.b
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define i64 @mspace_set_footprint_limit(ptr noundef writeonly captures(none) initializes((872, 880)) %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !33 ; 2 uses
  %i.c = add i64 %1, -1
  %i.d = add i64 %i.c, %i.b
  %i.e = sub i64 0, %i.b
  %i.f = and i64 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i64 %.0, ptr %i.g, align 8, !tbaa !52
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @mspace_usable_size(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = and i64 %i.b, 3                          ; 2 uses
  %.not9.not = icmp eq i64 %i.c, 1
  %i.d = and i64 %i.b, -8
  %i.e = icmp eq i64 %i.c, 0
  %.neg = select i1 %i.e, i64 -16, i64 -8
  %i.f = add i64 %.neg, %i.d
  br i1 %.not9.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ %i.f, %bb.b ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mspace_mallopt(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = sext i32 %1 to i64                       ; 5 uses
  switch i32 %0, label %change_mparam.exit [
    i32 -1, label %bb.d
    i32 -2, label %bb.e
    i32 -3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 32), align 8, !tbaa !36
  br label %change_mparam.exit

bb.e:                                             ; preds = %bb.c
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 8), align 8, !tbaa !34
  %.not11.i = icmp ule i64 %i.c, %i.b
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.b)
  %i.e = icmp samesign ult i64 %i.d, 2
  %or.cond.i = select i1 %.not11.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.f, label %change_mparam.exit

bb.f:                                             ; preds = %bb.e
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 16), align 8, !tbaa !33
  br label %change_mparam.exit

bb.g:                                             ; preds = %bb.c
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @mparams, i64 24), align 8, !tbaa !35
  br label %change_mparam.exit

change_mparam.exit:                               ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 0, %bb.e ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.g ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @mspace_malloc_lockless(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 233
  br i1 %i.a, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 23
  %i.c = add nuw nsw i64 %1, 23
  %i.d = and i64 %i.c, 496
  %i.e = select i1 %i.b, i64 32, i64 %i.d         ; 8 uses
  %i.f = lshr exact i64 %i.e, 3
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 4 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.i = lshr i32 %i.h, %i.g                      ; 4 uses
  %i.j = and i32 %i.i, 3
  %.not177 = icmp eq i32 %i.j, 0
end_hunk_2
