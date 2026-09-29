Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bitmap?download=true
inline.NumInlined: 42
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@hwloc_bitmap_list_sscanf:bb.a
  br label %.preheader

bb.d:                                             ; preds = %hwloc_bitmap_set.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23    ; 2 uses
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %hwloc_bitmap_set_range.exit.thread, label %.preheader, !llvm.loop !38

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %i.r = phi i8 [ %i.n, %.preheader.lr.ph ], [ %i.q, %bb.d ]
  %.037 = phi i64 [ -1, %.preheader.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.01836 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.p, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.critedge
  %i.s = phi i8 [ %.pr, %.critedge ], [ %i.r, %.preheader ]
  %.119 = phi ptr [ %i.t, %.critedge ], [ %.01836, %.preheader ] ; 3 uses
  switch i8 %i.s, label %bb.f [
    i8 44, label %.critedge
    i8 32, label %.critedge
  ]

.critedge:                                        ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.119, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.t, align 1, !tbaa !23
  br label %bb.e, !llvm.loop !39

bb.f:                                             ; preds = %bb.e
  %i.u = call i64 @__isoc23_strtoul(ptr noundef nonnull %.119, ptr noundef nonnull %i.a, i32 noundef 0) #20 ; 7 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.w = icmp eq ptr %i.v, %.119
  br i1 %i.w, label %hwloc_bitmap_set_range.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not24 = icmp eq i64 %.037, -1
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = trunc i64 %.037 to i32
  %i.y = trunc i64 %i.u to i32
  %i.z = call i32 @hwloc_bitmap_set_range(ptr noundef %0, i32 noundef %i.x, i32 noundef %i.y)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %hwloc_bitmap_set_range.exit, label %hwloc_bitmap_set.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !23
  switch i8 %i.ab, label %hwloc_bitmap_set.exit [
    i8 45, label %bb.j
    i8 44, label %bb.n
    i8 32, label %bb.n
    i8 0, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !23
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %hwloc_bitmap_set.exit

bb.k:                                             ; preds = %bb.j
  %i.af = trunc i64 %i.u to i32                   ; 2 uses
  %i.ag = load i32, ptr %i.m, align 8, !tbaa !22
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %0, align 8, !tbaa !17
  %i.ai = shl i32 %i.ah, 6
  %.not54.i = icmp ugt i32 %i.ai, %i.af
  br i1 %.not54.i, label %.thread.i, label %hwloc_bitmap_set_range.exit.thread

.thread.i:                                        ; preds = %bb.l, %bb.k
  %i.aj = lshr i32 %i.af, 6                       ; 3 uses
  %i.ak = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.al = call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.ak)
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %hwloc_bitmap_set_range.exit, label %bb.m

bb.m:                                             ; preds = %.thread.i
  %i.an = and i64 %i.u, 63
  %i.ao = shl nsw i64 -1, %i.an
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !19  ; 2 uses
  %i.aq = zext nneg i32 %i.aj to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !21
  %i.at = or i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !21
  %i.au = load i32, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.av = icmp ult i32 %i.ak, %i.au
  br i1 %i.av, label %.lr.ph61.preheader.i, label %hwloc_bitmap_set_range.exit.thread.sink.split

.lr.ph61.preheader.i:                             ; preds = %bb.m
  %i.aw = lshr i64 %i.u, 3
  %i.ax = and i64 %i.aw, 536870904
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax
  %scevgep62.i = getelementptr i8, ptr %i.ay, i64 8
  %reass.sub = sub i32 %i.au, %i.aj
  %i.az = add i32 %reass.sub, -2
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep62.i, i8 -1, i64 %i.bc, i1 false), !tbaa !21
  br label %hwloc_bitmap_set_range.exit.thread.sink.split

bb.n:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.bd = trunc i64 %i.u to i32                   ; 2 uses
  %i.be = lshr i32 %i.bd, 6                       ; 2 uses
  %i.bf = load i32, ptr %i.m, align 8, !tbaa !22
  %.not.i25 = icmp eq i32 %i.bf, 0
  br i1 %.not.i25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %0, align 8, !tbaa !17
  %i.bh = shl i32 %i.bg, 6
  %.not9.i = icmp ugt i32 %i.bh, %i.bd
  br i1 %.not9.i, label %bb.p, label %hwloc_bitmap_set.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bi = add nuw nsw i32 %i.be, 1
  %i.bj = call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.bi)
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %hwloc_bitmap_set.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = and i64 %i.u, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.bo = zext nneg i32 %i.be to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !21
  %i.br = or i64 %i.bq, %i.bm
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !21
  br label %hwloc_bitmap_set.exit

hwloc_bitmap_set.exit:                            ; preds = %bb.q, %bb.p, %bb.o, %bb.i, %bb.j, %bb.h
  %.1 = phi i64 [ -1, %bb.i ], [ -1, %bb.h ], [ %i.u, %bb.j ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.q ]
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !23
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %hwloc_bitmap_set_range.exit.thread, label %bb.d

hwloc_bitmap_set_range.exit:                      ; preds = %bb.h, %bb.f, %.thread.i
  %i.bv = load i32, ptr %i.b, align 4, !tbaa !18
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %hwloc_bitmap_reset_by_ulongs.exit.thread.i26

bb.r:                                             ; preds = %hwloc_bitmap_set_range.exit
  %i.bx = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.by = call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.bx, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i.i28 = icmp eq ptr %i.by, null
  br i1 %.not.not.i.i.i28, label %hwloc_bitmap_reset_by_ulongs.exit.i29, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.by, ptr %i.o, align 8, !tbaa !19
  store i32 1, ptr %i.b, align 4, !tbaa !18
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread.i26

hwloc_bitmap_reset_by_ulongs.exit.thread.i26:     ; preds = %bb.s, %hwloc_bitmap_set_range.exit
  store i32 1, ptr %0, align 8, !tbaa !17
  br label %.lr.ph.i.i27

hwloc_bitmap_reset_by_ulongs.exit.i29:            ; preds = %bb.r
  %.pr.i30 = load i32, ptr %0, align 8, !tbaa !17 ; 2 uses
  %.not.i.i31 = icmp eq i32 %.pr.i30, 0
  br i1 %.not.i.i31, label %hwloc_bitmap_set_range.exit.thread.sink.split, label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i29, %hwloc_bitmap_reset_by_ulongs.exit.thread.i26
  %i.bz = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread.i26 ], [ %.pr.i30, %hwloc_bitmap_reset_by_ulongs.exit.i29 ]
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.cb = zext i32 %i.bz to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, i8 0, i64 %i.cc, i1 false), !tbaa !21
  br label %hwloc_bitmap_set_range.exit.thread.sink.split

hwloc_bitmap_set_range.exit.thread.sink.split:    ; preds = %.lr.ph.i.i27, %hwloc_bitmap_reset_by_ulongs.exit.i29, %bb.m, %.lr.ph61.preheader.i
  %.sink = phi i32 [ 1, %bb.m ], [ 1, %.lr.ph61.preheader.i ], [ 0, %hwloc_bitmap_reset_by_ulongs.exit.i29 ], [ 0, %.lr.ph.i.i27 ]
  %.020.ph = phi i32 [ 0, %bb.m ], [ 0, %.lr.ph61.preheader.i ], [ -1, %hwloc_bitmap_reset_by_ulongs.exit.i29 ], [ -1, %.lr.ph.i.i27 ]
  store i32 %.sink, ptr %i.m, align 8, !tbaa !22
  br label %hwloc_bitmap_set_range.exit.thread

hwloc_bitmap_set_range.exit.thread:               ; preds = %hwloc_bitmap_set.exit, %bb.d, %hwloc_bitmap_set_range.exit.thread.sink.split, %hwloc_bitmap_zero.exit, %bb.l
  %.020 = phi i32 [ 0, %hwloc_bitmap_zero.exit ], [ %.020.ph, %hwloc_bitmap_set_range.exit.thread.sink.split ], [ 0, %bb.l ], [ 0, %bb.d ], [ 0, %hwloc_bitmap_set.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.020
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_set_range(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ult i32 %2, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 8, !tbaa !17
  %i.e = shl i32 %i.d, 6                          ; 2 uses
  %.not54 = icmp ult i32 %1, %i.e
  br i1 %.not54, label %.thread, label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %2, -1
  br i1 %i.f, label %bb.e, label %bb.h

.thread:                                          ; preds = %bb.c
  %i.g = icmp eq i32 %2, -1
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread, %bb.d
  %i.h = lshr i32 %1, 6                           ; 3 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.i)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %1, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nsw i64 -1, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %i.q = zext nneg i32 %i.h to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %i.t = or i64 %i.s, %i.n
  store i64 %i.t, ptr %i.r, align 8, !tbaa !21
  %i.u = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.v = icmp ult i32 %i.i, %i.u
  br i1 %i.v, label %.lr.ph61.preheader, label %._crit_edge

.lr.ph61.preheader:                               ; preds = %bb.f
  %i.w = lshr i32 %1, 3
  %i.x = and i32 %i.w, 536870904
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %scevgep62 = getelementptr i8, ptr %i.z, i64 8
  %i.aa = add i32 %i.u, -2
  %i.ab = sub i32 %i.aa, %i.h
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep62, i8 -1, i64 %i.ae, i1 false), !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph61.preheader, %bb.f
  store i32 1, ptr %i.b, align 8, !tbaa !22
  br label %.loopexit

bb.g:                                             ; preds = %.thread
  %i.af = add i32 %i.e, -1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.af)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.0 = phi i32 [ %spec.select, %bb.g ], [ %2, %bb.d ] ; 3 uses
  %i.ag = lshr i32 %.0, 6                         ; 5 uses
  %i.ah = add nuw nsw i32 %i.ag, 1
  %i.ai = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.ah)
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = lshr i32 %1, 6                          ; 4 uses
  %i.al = icmp eq i32 %i.ak, %i.ag
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = and i32 %.0, 63
  %i.an = xor i32 %i.am, 63
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = lshr i64 -1, %i.ao
  %i.aq = and i32 %1, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nsw i64 -1, %i.ar
  %i.at = and i64 %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aw = and i32 %1, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nsw i64 -1, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %i.bb = zext nneg i32 %i.ak to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !21
  %i.be = or i64 %i.bd, %i.ay
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !21
  %i.bf = and i32 %.0, 63
  %i.bg = xor i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = lshr i64 -1, %i.bh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink72 = phi ptr [ %i.ba, %bb.k ], [ %i.av, %bb.j ] ; 2 uses
  %.sink71 = phi i64 [ %i.bi, %bb.k ], [ %i.at, %bb.j ]
  %i.bj = zext nneg i32 %i.ag to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sink72, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.bm = or i64 %i.bl, %.sink71
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !21
  %.158 = add nuw nsw i32 %i.ak, 1
  %i.bn = icmp samesign ult i32 %.158, %i.ag
  br i1 %i.bn, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  %i.bo = lshr i32 %1, 3
  %i.bp = and i32 %i.bo, 536870904
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr nuw i8, ptr %.sink72, i64 %i.bq
  %scevgep = getelementptr nuw i8, ptr %i.br, i64 8
  %i.bs = add nsw i32 %i.ag, -2
  %i.bt = sub nsw i32 %i.bs, %i.ak
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 -1, i64 %i.bw, i1 false), !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.l, %._crit_edge, %bb.h, %bb.e, %bb.c, %bb.a
  %.047 = phi i32 [ -1, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ -1, %bb.h ], [ 0, %._crit_edge ], [ 0, %bb.l ], [ 0, %.lr.ph ]
  ret i32 %.047
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_set(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = lshr i32 %1, 6                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !17
  %i.e = shl i32 %i.d, 6
  %.not9 = icmp ult i32 %1, %i.e
  br i1 %.not9, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = add nuw nsw i32 %i.a, 1
  %i.g = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.f)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = zext nneg i32 %i.a to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %i.q = or i64 %i.p, %i.k
  store i64 %i.q, ptr %i.o, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -1, -2147483648) i32 @hwloc_bitmap_taskset_snprintf(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 1, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %.not85 = icmp eq i32 %i.b, 0
  br i1 %.not85, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str) #20 ; 6 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.critedge92, label %.preheader97

.preheader97:                                     ; preds = %bb.d
  %i.e = zext nneg i32 %i.c to i64
  %.not86 = icmp sgt i64 %1, %i.e
  %i.f = icmp sgt i64 %1, 0
  %i.g = trunc i64 %1 to i32
  %i.h = add nsw i32 %i.g, -1
  %i.i = select i1 %i.f, i32 %i.h, i32 0
  %.070 = select i1 %.not86, i32 %i.c, i32 %i.i
  %i.j = sext i32 %.070 to i64                    ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 3 uses
  %i.l = sub nsw i64 %1, %i.j                     ; 3 uses
  %i.m = load i32, ptr %2, align 8, !tbaa !17
  %i.n = add i32 %i.m, -1                         ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader97
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  br label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.r = load i32, ptr %2, align 8, !tbaa !17
  %i.s = add i32 %i.r, -1                         ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph106, label %.critedge

.lr.ph106:                                        ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.062102 = phi i32 [ %i.n, %.lr.ph ], [ %i.aa, %bb.f ] ; 4 uses
  %i.w = zext nneg i32 %.062102 to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !21
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.f, label %.lr.ph116

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %.062102, -1
  %i.ab = icmp sgt i32 %.062102, 0
  br i1 %i.ab, label %bb.e, label %._crit_edge, !llvm.loop !40

bb.g:                                             ; preds = %.lr.ph106, %bb.h
  %.1105 = phi i32 [ %i.s, %.lr.ph106 ], [ %i.ag, %bb.h ] ; 4 uses
  %i.ac = zext nneg i32 %.1105 to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.h, label %.lr.ph116

bb.h:                                             ; preds = %bb.g
  %i.ag = add nsw i32 %.1105, -1
  %i.ah = icmp sgt i32 %.1105, 1
  br i1 %i.ah, label %bb.g, label %.lr.ph116, !llvm.loop !41

.critedge:                                        ; preds = %.preheader
  %i.ai = icmp sgt i32 %i.s, -1
  br i1 %i.ai, label %.lr.ph116, label %._crit_edge.thread

.lr.ph116:                                        ; preds = %bb.e, %bb.h, %bb.g, %.critedge
  %.2149 = phi i32 [ 0, %.critedge ], [ 0, %bb.h ], [ %.1105, %bb.g ], [ %.062102, %bb.e ]
end_hunk_0
begin_hunk_1_@hwloc_bitmap_allbut:bb.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @hwloc_bitmap_realloc_by_ulongs(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %bb.b, label %hwloc_bitmap_enlarge_by_ulongs.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 3 uses
  %i.c = add nsw i64 %i.b, -1                     ; 3 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %hwloc_flsl_manual.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not28.i.i = icmp ult i32 %1, 65537            ; 2 uses
  %i.d = lshr i64 %i.c, 16
  %.122.i.i = select i1 %.not28.i.i, i64 %i.c, i64 %i.d ; 3 uses
  %.1.i.i = select i1 %.not28.i.i, i32 1, i32 17  ; 2 uses
  %.not29.i.i = icmp samesign ult i64 %.122.i.i, 256 ; 2 uses
  %i.e = lshr i64 %.122.i.i, 8
  %i.f = or disjoint i32 %.1.i.i, 8
  %.223.i.i = select i1 %.not29.i.i, i64 %.122.i.i, i64 %i.e ; 3 uses
  %.2.i.i = select i1 %.not29.i.i, i32 %.1.i.i, i32 %i.f ; 2 uses
  %.not30.i.i = icmp samesign ult i64 %.223.i.i, 16 ; 2 uses
  %i.g = lshr i64 %.223.i.i, 4
  %i.h = or disjoint i32 %.2.i.i, 4
  %.324.i.i = select i1 %.not30.i.i, i64 %.223.i.i, i64 %i.g ; 3 uses
  %.3.i.i = select i1 %.not30.i.i, i32 %.2.i.i, i32 %i.h ; 2 uses
  %i.i = and i64 %.324.i.i, 12
  %.not31.i.i = icmp eq i64 %i.i, 0               ; 2 uses
  %i.j = lshr i64 %.324.i.i, 2
  %i.k = or disjoint i32 %.3.i.i, 2
  %.425.i.i = select i1 %.not31.i.i, i64 %.324.i.i, i64 %i.j
  %.4.i.i = select i1 %.not31.i.i, i32 %.3.i.i, i32 %i.k
  %i.l = trunc nuw nsw i64 %.425.i.i to i32
  %i.m = lshr i32 %i.l, 1
  %i.n = and i32 %i.m, 1
  %.5.i.i = add nuw nsw i32 %i.n, %.4.i.i
  br label %hwloc_flsl_manual.exit.i

hwloc_flsl_manual.exit.i:                         ; preds = %bb.c, %bb.b
  %.026.i.i = phi i32 [ %.5.i.i, %bb.c ], [ 0, %bb.b ]
  %i.o = shl nuw i32 1, %.026.i.i                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = icmp ugt i32 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %hwloc_flsl_manual.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.u = zext i32 %i.o to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call ptr @realloc(ptr noundef %i.t, i64 noundef %i.v) #21 ; 2 uses
  %.not.not.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i, label %hwloc_bitmap_enlarge_by_ulongs.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.w, ptr %i.s, align 8, !tbaa !19
  store i32 %i.o, ptr %i.p, align 4, !tbaa !18
  %.pre = load i32, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %hwloc_flsl_manual.exit.i
  %i.x = phi i32 [ %.pre, %bb.e ], [ %i.a, %hwloc_flsl_manual.exit.i ] ; 2 uses
  %i.y = icmp ult i32 %i.x, %1
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !22
  %.not15 = icmp ne i32 %i.aa, 0
  %i.ab = sext i1 %.not15 to i64                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.ae = zext i32 %i.x to i64                    ; 4 uses
  %i.af = sub nsw i64 %i.b, %i.ae                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.af, -4                      ; 3 uses
  %i.ag = add nsw i64 %n.vec, %i.ae
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %gep, align 8, !tbaa !21
  store <2 x i64> %broadcast.splat, ptr %i.ah, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ae, %.lr.ph ], [ %i.ag, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  store i64 %i.ab, ptr %i.aj, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !48

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.f
  store i32 %1, ptr %0, align 8, !tbaa !17
  br label %hwloc_bitmap_enlarge_by_ulongs.exit

hwloc_bitmap_enlarge_by_ulongs.exit:              ; preds = %bb.d, %bb.a, %._crit_edge
  %.013 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.a ], [ -1, %bb.d ]
  ret i32 %.013
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_set_ith_ulong(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = add i32 %1, 1
  %i.b = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef %0, i32 noundef %i.a)
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  store i64 %2, ptr %i.g, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_clr(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = lshr i32 %1, 6                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !17
  %i.e = shl i32 %i.d, 6
  %.not9 = icmp ult i32 %1, %i.e
  br i1 %.not9, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = add nuw nsw i32 %i.a, 1
  %i.g = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.f)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = xor i64 %i.k, -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = zext nneg i32 %i.a to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !21
  %i.r = and i64 %i.q, %i.l
  store i64 %i.r, ptr %i.p, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_clr_range(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ult i32 %2, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 8, !tbaa !17
  %i.e = shl i32 %i.d, 6                          ; 2 uses
  %.not54 = icmp ult i32 %1, %i.e
  br i1 %.not54, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %2, -1
  br i1 %i.f, label %bb.e, label %bb.g

.thread:                                          ; preds = %bb.b
  %i.g = icmp eq i32 %2, -1
  br i1 %i.g, label %bb.e, label %.thread57

bb.e:                                             ; preds = %.thread, %bb.d
  %i.h = lshr i32 %1, 6                           ; 3 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.i)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %1, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nsw i64 -1, %i.m
  %i.o = xor i64 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %i.r = zext nneg i32 %i.h to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21
  %i.u = and i64 %i.t, %i.o
  store i64 %i.u, ptr %i.s, align 8, !tbaa !21
  %i.v = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.w = icmp ult i32 %i.i, %i.v
  br i1 %i.w, label %.lr.ph61.preheader, label %._crit_edge

.lr.ph61.preheader:                               ; preds = %bb.f
  %i.x = lshr i32 %1, 3
  %i.y = and i32 %i.x, 536870904
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.q, i64 %i.z
  %scevgep62 = getelementptr i8, ptr %i.aa, i64 8
  %i.ab = add i32 %i.v, -2
  %i.ac = sub i32 %i.ab, %i.h
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep62, i8 0, i64 %i.af, i1 false), !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph61.preheader, %bb.f
  store i32 0, ptr %i.b, align 8, !tbaa !22
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.ag = add i32 %i.e, -1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.ag)
  br label %.thread57

.thread57:                                        ; preds = %.thread, %bb.g
  %.0 = phi i32 [ %spec.select, %bb.g ], [ %2, %.thread ] ; 3 uses
  %i.ah = lshr i32 %.0, 6                         ; 5 uses
  %i.ai = add nuw nsw i32 %i.ah, 1
  %i.aj = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.ai)
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.thread57
  %i.al = lshr i32 %1, 6                          ; 4 uses
  %i.am = icmp eq i32 %i.al, %i.ah
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = and i32 %.0, 63
  %i.ao = xor i32 %i.an, 63
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 -1, %i.ap
  %i.ar = and i32 %1, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nsw i64 -1, %i.as
  %i.au = and i64 %i.aq, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ax = and i32 %1, 63
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nsw i64 -1, %i.ay
  %i.ba = xor i64 %i.az, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !19 ; 2 uses
  %i.bd = zext nneg i32 %i.al to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !21
  %i.bg = and i64 %i.bf, %i.ba
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !21
  %i.bh = and i32 %.0, 63
  %i.bi = xor i32 %i.bh, 63
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = lshr i64 -1, %i.bj
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink72 = phi ptr [ %i.bc, %bb.j ], [ %i.aw, %bb.i ] ; 2 uses
  %.sink71.in = phi i64 [ %i.bk, %bb.j ], [ %i.au, %bb.i ]
  %.sink71 = xor i64 %.sink71.in, -1
  %i.bl = zext nneg i32 %i.ah to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.sink72, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !21
  %i.bo = and i64 %i.bn, %.sink71
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !21
  %.158 = add nuw nsw i32 %i.al, 1
  %i.bp = icmp samesign ult i32 %.158, %i.ah
  br i1 %i.bp, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k
  %i.bq = lshr i32 %1, 3
  %i.br = and i32 %i.bq, 536870904
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr nuw i8, ptr %.sink72, i64 %i.bs
  %scevgep = getelementptr nuw i8, ptr %i.bt, i64 8
  %i.bu = add nsw i32 %i.ah, -2
  %i.bv = sub nsw i32 %i.bu, %i.al
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.by, i1 false), !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %._crit_edge, %.thread57, %bb.e, %bb.c, %bb.a
  %.047 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ -1, %.thread57 ], [ -1, %bb.e ], [ 0, %._crit_edge ], [ 0, %bb.k ], [ 0, %.lr.ph ]
  ret i32 %.047
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @hwloc_bitmap_isset(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = lshr i32 %1, 6                           ; 2 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !17
  %i.c = icmp ult i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !22
  %.not = icmp ne i32 %i.j, 0
  %i.k = sext i1 %.not to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i64 [ %i.h, %bb.b ], [ %i.k, %bb.c ]
  %i.m = and i32 %1, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %i.l, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 1
  ret i32 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @hwloc_bitmap_iszero(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !49

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %.not7 = icmp eq i64 %i.g, 0
  br i1 %.not7, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @hwloc_bitmap_isfull(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !50

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %.not7 = icmp eq i64 %i.g, -1
  br i1 %.not7, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @hwloc_bitmap_isequal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 6 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !17     ; 6 uses
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.a, i32 %i.b) ; 2 uses
  %.not54 = icmp eq i32 %i.c, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

end_hunk_1
