inline.NumInlined: 33
inline.NumDeleted: 23
begin_hunk_0_@pfr_extra_item_load_stem_snaps:bb.a

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.035 = phi ptr [ %i.as, %.lr.ph ], [ %.035.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.02634 = phi ptr [ %i.bc, %.lr.ph ], [ %.02634.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.02733 = phi i32 [ %i.bb, %.lr.ph ], [ %.02733.unr, %.lr.ph.prol.loopexit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.035, i64 2
  %i.aj = load i8, ptr %.035, align 1, !tbaa !66
  %i.ak = zext i8 %i.aj to i16
  %i.al = shl nuw i16 %i.ak, 8
  %i.am = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !66
  %i.ao = zext i8 %i.an to i16
  %i.ap = or disjoint i16 %i.al, %i.ao
  %i.aq = sext i16 %i.ap to i32
  store i32 %i.aq, ptr %.02634, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw i8, ptr %.02634, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.035, i64 4
  %i.at = load i8, ptr %i.ai, align 1, !tbaa !66
  %i.au = zext i8 %i.at to i16
  %i.av = shl nuw i16 %i.au, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.035, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !66
  %i.ay = zext i8 %i.ax to i16
  %i.az = or disjoint i16 %i.av, %i.ay
  %i.ba = sext i16 %i.az to i32
  store i32 %i.ba, ptr %i.ar, align 4, !tbaa !3
  %i.bb = add nsw i32 %.02733, -2                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02634, i64 8
  %.not31.1 = icmp eq i32 %i.bb, 0
  br i1 %.not31.1, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !269

.loopexit.loopexit:                               ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.loopexit.loopexit, %bb.e, %bb.d, %bb.a
  %i.bd = phi i32 [ %.pre, %.loopexit.loopexit ], [ 0, %bb.e ], [ %i.r, %bb.d ], [ 0, %bb.a ], [ 8, %bb.c ], [ 8, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.bd
}

; Function Attrs: nounwind uwtable
define internal i32 @pfr_extra_item_load_kerning_pairs(ptr noundef %0, ptr noundef readnone captures(address) %1, ptr noundef captures(none) %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = load ptr, ptr %2, align 8, !tbaa !76     ; 3 uses
  %i.c = call ptr @ft_mem_alloc(ptr noundef %i.b, i64 noundef 32, ptr noundef nonnull %i.a) #12 ; 13 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.f = icmp ugt ptr %i.e, %1
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %0, align 1, !tbaa !66      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.g, ptr %i.h, align 8, !tbaa !256
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !66
  %i.p = zext i8 %i.o to i16
  %i.q = or disjoint i16 %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i16 %i.q, ptr %i.r, align 2, !tbaa !260
  %i.s = load i8, ptr %i.i, align 1, !tbaa !66    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 %i.s, ptr %i.t, align 1, !tbaa !258
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !77
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80
  %i.z = ptrtoint ptr %i.e to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = add i64 %i.w, %i.z
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !255
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.af = and i8 %i.s, 1
  %.not74 = icmp eq i8 %i.af, 0                   ; 2 uses
  %spec.store.select = select i1 %.not74, i32 3, i32 5
  %i.ag = lshr i8 %i.s, 1
  %i.ah = and i8 %i.ag, 1
  %i.ai = zext nneg i8 %i.ah to i32
  %spec.select = add nuw nsw i32 %spec.store.select, %i.ai ; 4 uses
  store i32 %spec.select, ptr %i.ae, align 4
  %i.aj = zext i8 %i.g to i32                     ; 4 uses
  %i.ak = mul nuw nsw i32 %spec.select, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.al
  %i.an = icmp ugt ptr %i.am, %1
  br i1 %i.an, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not76 = icmp eq i8 %i.g, 0
  br i1 %.not76, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not74, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %i.e, align 1
  %i.ap = call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !252
  %i.ar = add nsw i32 %i.aj, -1
  %i.as = mul nuw nsw i32 %i.ar, %spec.select
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.at
  %i.av = load i32, ptr %i.au, align 1
  %i.aw = call i32 @llvm.bswap.i32(i32 %i.av)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ay = load i8, ptr %i.e, align 1, !tbaa !66
  %i.az = zext i8 %i.ay to i32
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !66
  %i.bb = shl nuw nsw i32 %i.az, 16
  %i.bc = zext i8 %i.ba to i32
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !252
  %i.bf = add nsw i32 %i.aj, -1
  %i.bg = mul nuw nsw i32 %i.bf, %spec.select
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !66
  %i.bl = zext i8 %i.bk to i32
  %i.bm = load i8, ptr %i.bj, align 1, !tbaa !66
  %i.bn = shl nuw nsw i32 %i.bl, 16
  %i.bo = zext i8 %i.bm to i32
  %i.bp = or disjoint i32 %i.bn, %i.bo
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.bp, %bb.g ], [ %i.aw, %bb.f ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %.sink, ptr %i.bq, align 4, !tbaa !253
  store ptr null, ptr %i.c, align 8, !tbaa !163
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !79
  store ptr %i.c, ptr %i.bs, align 8, !tbaa !251
  store ptr %i.c, ptr %i.br, align 8, !tbaa !79
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !122
  %i.bv = add i32 %i.bu, %i.aj
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !122
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  call void @ft_mem_free(ptr noundef %i.b, ptr noundef nonnull %i.c) #12
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a, %bb.k
  %i.bw = phi i32 [ 0, %bb.h ], [ %.pre, %bb.i ], [ %i.d, %bb.a ], [ 8, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.bw

bb.k:                                             ; preds = %bb.b, %bb.c
  call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.c) #12
  br label %bb.j
}

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare hidden void @FT_GlyphLoader_Rewind(ptr noundef) local_unnamed_addr #5

declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 9) i32 @pfr_load_bitmap_metrics(ptr noundef nonnull captures(none) %0, ptr noundef readnone captures(address) %1, i64 noundef %2, ptr noundef nonnull writeonly captures(none) %3, ptr noundef nonnull writeonly captures(none) %4, ptr noundef nonnull writeonly captures(none) %5, ptr noundef nonnull writeonly captures(none) %6, ptr noundef nonnull writeonly captures(none) %7, ptr noundef nonnull writeonly captures(none) %8) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 5 uses
  %i.c = icmp ugt ptr %i.b, %1
  br i1 %i.c, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !66    ; 3 uses
  %i.e = and i8 %i.d, 3
  switch i8 %i.e, label %default.unreachable109 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.g
    i8 3, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.g = icmp ugt ptr %i.f, %1
  br i1 %i.g, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.b, align 1, !tbaa !66    ; 2 uses
  %i.i = ashr i8 %i.h, 4
  %i.j = sext i8 %i.i to i64
  %i.k = shl i8 %i.h, 4
  %i.l = ashr exact i8 %i.k, 4
  %i.m = sext i8 %i.l to i64
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.o = icmp ugt ptr %i.n, %1
  br i1 %i.o, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.q = load i8, ptr %i.b, align 1, !tbaa !66
  %i.r = sext i8 %i.q to i64
  %i.s = load i8, ptr %i.p, align 1, !tbaa !66
  %i.t = sext i8 %i.s to i64
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %i.v = icmp ugt ptr %i.u, %1
  br i1 %i.v, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %i.b, align 1, !tbaa !66
  %i.x = zext i8 %i.w to i16
  %i.y = shl nuw i16 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !66
  %i.ab = zext i8 %i.aa to i16
  %i.ac = or disjoint i16 %i.y, %i.ab
  %i.ad = sext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !66
  %i.ag = zext i8 %i.af to i16
  %i.ah = shl nuw i16 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !66
  %i.ak = zext i8 %i.aj to i16
  %i.al = or disjoint i16 %i.ah, %i.ak
  %i.am = sext i16 %i.al to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  %i.ao = icmp ugt ptr %i.an, %1
  br i1 %i.ao, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %i.b, align 1, !tbaa !66
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw i32 %i.aq, 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !66
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 16
  %i.aw = or disjoint i32 %i.av, %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !66
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 8
  %i.bb = or disjoint i32 %i.aw, %i.ba
  %i.bc = ashr exact i32 %i.bb, 8
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !66
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw i32 %i.bg, 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !66
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 16
  %i.bm = or disjoint i32 %i.bl, %i.bh
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !66
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = or disjoint i32 %i.bm, %i.bq
  %i.bs = ashr exact i32 %i.br, 8
  %i.bt = sext i32 %i.bs to i64
  br label %bb.k

default.unreachable109:                           ; preds = %bb.r, %bb.b
  unreachable

default.unreachable109.a:                         ; preds = %bb.k
  unreachable

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.d
  %.088 = phi ptr [ %i.f, %bb.d ], [ %i.n, %bb.f ], [ %i.u, %bb.h ], [ %i.an, %bb.j ] ; 11 uses
  %.087 = phi i64 [ %i.j, %bb.d ], [ %i.r, %bb.f ], [ %i.ad, %bb.h ], [ %i.bd, %bb.j ]
  %.086 = phi i64 [ %i.m, %bb.d ], [ %i.t, %bb.f ], [ %i.am, %bb.h ], [ %i.bt, %bb.j ]
  %9 = and i8 %i.d, 12
  %10 = sub i8 %9, 0                              ; 2 uses
  %11 = call i8 @llvm.fshl.i8(i8 %10, i8 %10, i8 6)
  switch i8 %11, label %default.unreachable109.a [
    i8 0, label %bb.r
    i8 1, label %bb.l
    i8 2, label %bb.n
    i8 3, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %.088, i64 1 ; 2 uses
  %i.bv = icmp ugt ptr %i.bu, %1
  br i1 %i.bv, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = load i8, ptr %.088, align 1, !tbaa !66
  %i.bx = zext i8 %i.bw to i32                    ; 2 uses
  %i.by = lshr i32 %i.bx, 4
  %i.bz = and i32 %i.bx, 15
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %.088, i64 2 ; 2 uses
  %i.cb = icmp ugt ptr %i.ca, %1
  br i1 %i.cb, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %.088, i64 1
  %i.cd = load i8, ptr %.088, align 1, !tbaa !66
  %i.ce = zext i8 %i.cd to i32
  %i.cf = load i8, ptr %i.cc, align 1, !tbaa !66
  %i.cg = zext i8 %i.cf to i32
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %.088, i64 4 ; 2 uses
  %i.ci = icmp ugt ptr %i.ch, %1
  br i1 %i.ci, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load i8, ptr %.088, align 1, !tbaa !66
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.088, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !66
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.088, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !66
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.088, i64 3
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !66
  %i.cw = zext i8 %i.cv to i32
  %i.cx = or disjoint i32 %i.ct, %i.cw
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %bb.q, %bb.o, %bb.m
  %.1 = phi ptr [ %i.ch, %bb.q ], [ %i.bu, %bb.m ], [ %i.ca, %bb.o ], [ %.088, %bb.k ] ; 10 uses
  %.084 = phi i32 [ %i.cp, %bb.q ], [ %i.by, %bb.m ], [ %i.ce, %bb.o ], [ 0, %bb.k ]
  %.0 = phi i32 [ %i.cx, %bb.q ], [ %i.bz, %bb.m ], [ %i.cg, %bb.o ], [ 0, %bb.k ]
  %i.cy = lshr i8 %i.d, 4
  %i.cz = zext nneg i8 %i.cy to i32               ; 2 uses
  %i.da = and i32 %i.cz, 3
  switch i32 %i.da, label %default.unreachable109 [
    i32 0, label %bb.y
    i32 1, label %bb.s
    i32 2, label %bb.u
    i32 3, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.dc = icmp ugt ptr %i.db, %1
  br i1 %i.dc, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = load i8, ptr %.1, align 1, !tbaa !66
  %i.de = sext i8 %i.dd to i32
  %i.df = shl nsw i32 %i.de, 8
  %i.dg = sext i32 %i.df to i64
  br label %bb.y

bb.u:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
  %i.di = icmp ugt ptr %i.dh, %1
  br i1 %i.di, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = load i8, ptr %.1, align 1, !tbaa !66
  %i.dk = zext i8 %i.dj to i16
  %i.dl = shl nuw i16 %i.dk, 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !66
  %i.do = zext i8 %i.dn to i16
  %i.dp = or disjoint i16 %i.dl, %i.do
  %i.dq = sext i16 %i.dp to i64
  br label %bb.y

bb.w:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 2 uses
  %i.ds = icmp ugt ptr %i.dr, %1
  br i1 %i.ds, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = load i8, ptr %.1, align 1, !tbaa !66
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw i32 %i.du, 24
  %i.dw = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !66
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 16
  %i.ea = or disjoint i32 %i.dz, %i.dv
  %i.eb = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !66
  %i.ed = zext i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 8
  %i.ef = or disjoint i32 %i.ea, %i.ee
  %i.eg = ashr exact i32 %i.ef, 8
  %i.eh = sext i32 %i.eg to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %bb.x, %bb.v, %bb.t
  %.2 = phi ptr [ %i.dr, %bb.x ], [ %i.db, %bb.t ], [ %i.dh, %bb.v ], [ %.1, %bb.r ]
  %.085 = phi i64 [ %i.eh, %bb.x ], [ %i.dg, %bb.t ], [ %i.dq, %bb.v ], [ %2, %bb.r ]
  store i64 %.087, ptr %3, align 8, !tbaa !131
  store i64 %.086, ptr %4, align 8, !tbaa !131
  store i32 %.084, ptr %5, align 4, !tbaa !3
  store i32 %.0, ptr %6, align 4, !tbaa !3
  store i64 %.085, ptr %7, align 8, !tbaa !131
  %i.ei = lshr i32 %i.cz, 2
  store i32 %i.ei, ptr %8, align 4, !tbaa !3
  store ptr %.2, ptr %0, align 8, !tbaa !88
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.l, %bb.n, %bb.p, %bb.s, %bb.u, %bb.w, %bb.y
  %.089 = phi i32 [ 0, %bb.y ], [ 8, %bb.w ], [ 8, %bb.u ], [ 8, %bb.s ], [ 8, %bb.p ], [ 8, %bb.n ], [ 8, %bb.l ], [ 8, %bb.i ], [ 8, %bb.g ], [ 8, %bb.e ], [ 8, %bb.c ], [ 8, %bb.a ]
  ret i32 %.089
}

declare hidden i32 @ft_glyphslot_alloc_bitmap(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @pfr_load_bitmap_bits(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext range(i8 0, 2) %3, ptr noundef readonly captures(none) %4) unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %4, align 8, !tbaa !270    ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %pfr_bitwriter_decode_bytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !271  ; 8 uses
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %pfr_bitwriter_decode_bytes.exit, label %pfr_bitwriter_init.exit

pfr_bitwriter_init.exit:                          ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !272
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !273  ; 3 uses
  %i.h = mul i32 %i.c, %i.a                       ; 5 uses
  %.not.i = icmp eq i8 %3, 0                      ; 2 uses
  %i.i = add i32 %i.a, -1
  %i.j = mul nsw i32 %i.g, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i32 0, %i.g
  %.sroa.13.0 = select i1 %.not.i, i32 %i.l, i32 %i.g ; 3 uses
  %.sroa.0.0.idx = select i1 %.not.i, i64 %i.k, i64 0
  %.sroa.0.0 = getelementptr inbounds i8, ptr %i.e, i64 %.sroa.0.0.idx ; 6 uses
  switch i32 %2, label %pfr_bitwriter_decode_bytes.exit [
    i32 0, label %bb.c
    i32 1, label %bb.j
    i32 2, label %bb.s
  ]

bb.c:                                             ; preds = %pfr_bitwriter_init.exit
  %i.m = ptrtoint ptr %1 to i64
  %i.n = ptrtoint ptr %0 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = shl i32 %i.p, 3
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.h) ; 3 uses
  %.not50.i = icmp eq i32 %spec.select.i, 0
  br i1 %.not50.i, label %pfr_bitwriter_decode_bytes.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.r = sext i32 %.sroa.13.0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %bb.i ], [ %.sroa.0.0, %.lr.ph.i.preheader ] ; 3 uses
  %.057.i = phi i32 [ %.2.i, %bb.i ], [ 0, %.lr.ph.i.preheader ]
  %.03156.i = phi i32 [ %i.aa, %bb.i ], [ 0, %.lr.ph.i.preheader ]
  %.03355.i = phi i32 [ %.134.i, %bb.i ], [ 128, %.lr.ph.i.preheader ] ; 2 uses
  %.03554.i = phi ptr [ %.136.i, %bb.i ], [ %.sroa.0.0, %.lr.ph.i.preheader ] ; 4 uses
  %.03753.i = phi i32 [ %.138.i, %bb.i ], [ %i.c, %.lr.ph.i.preheader ]
  %.03952.i = phi ptr [ %.140.i, %bb.i ], [ %0, %.lr.ph.i.preheader ] ; 3 uses
  %.14251.i = phi i32 [ %i.aj, %bb.i ], [ %spec.select.i, %.lr.ph.i.preheader ] ; 2 uses
  %i.s = xor i32 %.14251.i, %spec.select.i
  %i.t = and i32 %i.s, 7
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.03952.i, i64 1
  %i.w = load i8, ptr %.03952.i, align 1, !tbaa !66
  %i.x = zext i8 %i.w to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.140.i = phi ptr [ %i.v, %bb.d ], [ %.03952.i, %.lr.ph.i ]
  %.132.i = phi i32 [ %i.x, %bb.d ], [ %.03156.i, %.lr.ph.i ] ; 2 uses
  %i.y = and i32 %.132.i, 128
  %.not48.i = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not48.i, i32 0, i32 %.03355.i
  %spec.select49.i = or i32 %i.z, %.057.i         ; 3 uses
  %i.aa = shl i32 %.132.i, 1
  %i.ab = add i32 %.03753.i, -1                   ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = trunc i32 %spec.select49.i to i8
  store i8 %i.ad, ptr %.03554.i, align 1, !tbaa !66
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.1, i64 %i.r ; 2 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.af = lshr i32 %.03355.i, 1                   ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = trunc i32 %spec.select49.i to i8
  store i8 %i.ah, ptr %.03554.i, align 1, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %.03554.i, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.2 = phi ptr [ %i.ae, %bb.f ], [ %.sroa.0.1, %bb.h ], [ %.sroa.0.1, %bb.g ]
  %.138.i = phi i32 [ %i.c, %bb.f ], [ %i.ab, %bb.h ], [ %i.ab, %bb.g ]
  %.136.i = phi ptr [ %i.ae, %bb.f ], [ %i.ai, %bb.h ], [ %.03554.i, %bb.g ] ; 2 uses
  %.134.i = phi i32 [ 128, %bb.f ], [ 128, %bb.h ], [ %i.af, %bb.g ] ; 2 uses
  %.2.i = phi i32 [ 0, %bb.f ], [ 0, %bb.h ], [ %spec.select49.i, %bb.g ] ; 2 uses
  %i.aj = add i32 %.14251.i, -1                   ; 2 uses
  %.not.i12 = icmp eq i32 %i.aj, 0
  br i1 %.not.i12, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !274

._crit_edge.i:                                    ; preds = %bb.i
  %i.ak = icmp eq i32 %.134.i, 128
  br i1 %i.ak, label %pfr_bitwriter_decode_bytes.exit, label %pfr_bitwriter_decode_bytes.exit.sink.split

bb.j:                                             ; preds = %pfr_bitwriter_init.exit
  %.not80.i = icmp eq i32 %i.h, 0
  br i1 %.not80.i, label %pfr_bitwriter_decode_bytes.exit, label %.lr.ph.i13.preheader

.lr.ph.i13.preheader:                             ; preds = %bb.j
  %i.al = sext i32 %.sroa.13.0 to i64
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.preheader, %bb.r
  %.sroa.0.3 = phi ptr [ %.sroa.0.4, %bb.r ], [ %.sroa.0.0, %.lr.ph.i13.preheader ] ; 3 uses
  %.03290.i = phi ptr [ %.476.i, %bb.r ], [ %0, %.lr.ph.i13.preheader ] ; 6 uses
  %.03389.i = phi i32 [ %.235.i, %bb.r ], [ 0, %.lr.ph.i13.preheader ]
  %.03688.i = phi i32 [ %.137.i, %bb.r ], [ 128, %.lr.ph.i13.preheader ] ; 4 uses
end_hunk_0
begin_hunk_1_@pfr_glyph_load_rec:bb.a
  %i.i = load i8, ptr %i.g, align 1, !tbaa !66
  %.not85 = icmp sgt i8 %i.i, -1
  br i1 %.not85, label %bb.aw, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !181  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !227  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !185
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.g, align 1, !tbaa !66    ; 2 uses
  %.not.i = icmp sgt i8 %i.p, -1
  br i1 %.not.i, label %pfr_glyph_load_compound.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = and i32 %i.q, 63                         ; 3 uses
  %i.s = and i32 %i.q, 64
  %.not81.i = icmp eq i32 %i.s, 0
  br i1 %.not81.i, label %pfr_extra_items_skip.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.u = icmp eq i64 %4, 1
  br i1 %i.u, label %pfr_glyph_load_compound.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.o, align 1, !tbaa !66    ; 2 uses
  %.not56.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not56.i.i.i, label %pfr_extra_items_skip.exit.i, label %.lr.ph59.i.i.i

.lr.ph59.i.i.i:                                   ; preds = %bb.h
  %i.w = zext i8 %i.v to i32
  br label %.lr.ph59.split.us.i.i.i

.lr.ph59.split.us.i.i.i:                          ; preds = %.thread.us.i.i.i, %.lr.ph59.i.i.i
  %.03558.us.i.i.i = phi i32 [ %i.ad, %.thread.us.i.i.i ], [ %i.w, %.lr.ph59.i.i.i ]
  %.03657.us.i.i.i = phi ptr [ %i.ab, %.thread.us.i.i.i ], [ %i.t, %.lr.ph59.i.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.03657.us.i.i.i, i64 2 ; 2 uses
  %i.y = icmp ugt ptr %i.x, %i.h
  br i1 %i.y, label %pfr_glyph_load_compound.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph59.split.us.i.i.i
  %i.z = load i8, ptr %.03657.us.i.i.i, align 1, !tbaa !66
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 3 uses
  %i.ac = icmp ugt ptr %i.ab, %i.h
  br i1 %i.ac, label %pfr_glyph_load_compound.exit.thread, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %bb.i
  %i.ad = add nsw i32 %.03558.us.i.i.i, -1        ; 2 uses
  %.not.us.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.us.i.i.i, label %pfr_extra_items_skip.exit.i, label %.lr.ph59.split.us.i.i.i, !llvm.loop !70

pfr_extra_items_skip.exit.i:                      ; preds = %.thread.us.i.i.i, %bb.h, %bb.f
  %.0.i = phi ptr [ %i.o, %bb.f ], [ %i.t, %bb.h ], [ %i.ab, %.thread.us.i.i.i ]
  %i.ae = add i32 %i.r, %i.m                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !280 ; 2 uses
  %i.ah = icmp ugt i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %pfr_extra_items_skip.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !189
  br label %bb.m

bb.j:                                             ; preds = %pfr_extra_items_skip.exit.i
  %i.ai = add i32 %i.ae, 3
  %i.aj = and i32 %i.ai, -4                       ; 3 uses
  %i.ak = icmp ugt i32 %i.aj, 64
  br i1 %i.ak, label %pfr_glyph_load_compound.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = zext i32 %i.ag to i64
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !189
  %i.ap = call ptr @ft_mem_realloc(ptr noundef %i.n, i64 noundef 32, i64 noundef %i.al, i64 noundef %i.am, ptr noundef %i.ao, ptr noundef nonnull %i.b) #12 ; 2 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !189
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not83.i = icmp eq i32 %i.aq, 0
  br i1 %.not83.i, label %bb.l, label %pfr_glyph_load_compound.exit.thread

bb.l:                                             ; preds = %bb.k
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !280
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %i.ar = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ap, %bb.l ]
  %.not114.i = icmp eq i32 %i.r, 0
  br i1 %.not114.i, label %.loopexit123, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.as = zext i32 %i.m to i64
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.as
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.an, %.lr.ph.preheader.i
  %.061113.i = phi ptr [ %i.er, %bb.an ], [ %i.at, %.lr.ph.preheader.i ] ; 8 uses
  %.064112.i = phi i32 [ %i.eq, %bb.an ], [ 0, %.lr.ph.preheader.i ]
  %.1102111.i = phi ptr [ %.7.i, %bb.an ], [ %.0.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1102111.i, i64 1 ; 3 uses
  %i.av = icmp ugt ptr %i.au, %i.h
  br i1 %i.av, label %pfr_glyph_load_compound.exit.thread, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.aw = load i8, ptr %.1102111.i, align 1, !tbaa !66 ; 2 uses
  %i.ax = zext i8 %i.aw to i32                    ; 5 uses
  store i64 65536, ptr %.061113.i, align 8, !tbaa !281
  %i.ay = and i32 %i.ax, 16
  %.not84.i = icmp eq i32 %i.ay, 0
  br i1 %.not84.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.1102111.i, i64 3 ; 2 uses
  %i.ba = icmp ugt ptr %i.az, %i.h
  br i1 %i.ba, label %pfr_glyph_load_compound.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load i8, ptr %i.au, align 1, !tbaa !66
  %i.bc = zext i8 %i.bb to i16
  %i.bd = shl nuw i16 %i.bc, 8
  %i.be = getelementptr inbounds nuw i8, ptr %.1102111.i, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !66
  %i.bg = zext i8 %i.bf to i16
  %i.bh = or disjoint i16 %i.bd, %i.bg
  %i.bi = sext i16 %i.bh to i32
  %i.bj = shl nsw i32 %i.bi, 4
  %i.bk = sext i32 %i.bj to i64
  store i64 %i.bk, ptr %.061113.i, align 8, !tbaa !281
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.2.i = phi ptr [ %i.au, %bb.n ], [ %i.az, %bb.p ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.061113.i, i64 8 ; 2 uses
  store i64 65536, ptr %i.bl, align 8, !tbaa !283
  %i.bm = and i32 %i.ax, 32
  %.not85.i = icmp eq i32 %i.bm, 0
  br i1 %.not85.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %.2.i, i64 2 ; 2 uses
  %i.bo = icmp ugt ptr %i.bn, %i.h
  br i1 %i.bo, label %pfr_glyph_load_compound.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load i8, ptr %.2.i, align 1, !tbaa !66
  %i.bq = zext i8 %i.bp to i16
  %i.br = shl nuw i16 %i.bq, 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !66
  %i.bu = zext i8 %i.bt to i16
  %i.bv = or disjoint i16 %i.br, %i.bu
  %i.bw = sext i16 %i.bv to i32
  %i.bx = shl nsw i32 %i.bw, 4
  %i.by = sext i32 %i.bx to i64
  store i64 %i.by, ptr %i.bl, align 8, !tbaa !283
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.3.i = phi ptr [ %.2.i, %bb.q ], [ %i.bn, %bb.s ] ; 6 uses
  %i.bz = and i32 %i.ax, 3
  switch i32 %i.bz, label %bb.y [
    i32 1, label %bb.u
    i32 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 2 uses
  %i.cb = icmp ugt ptr %i.ca, %i.h
  br i1 %i.cb, label %pfr_glyph_load_compound.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = load i8, ptr %.3.i, align 1, !tbaa !66
  %i.cd = zext i8 %i.cc to i16
  %i.ce = shl nuw i16 %i.cd, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !66
  %i.ch = zext i8 %i.cg to i16
  %i.ci = or disjoint i16 %i.ce, %i.ch
  %i.cj = sext i16 %i.ci to i32
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 2 uses
  %i.cl = icmp ugt ptr %i.ck, %i.h
  br i1 %i.cl, label %pfr_glyph_load_compound.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = load i8, ptr %.3.i, align 1, !tbaa !66
  %i.cn = sext i8 %i.cm to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.t
  %.4.i = phi ptr [ %.3.i, %bb.t ], [ %i.ca, %bb.v ], [ %i.ck, %bb.x ] ; 6 uses
  %.063.i = phi i32 [ 0, %bb.t ], [ %i.cj, %bb.v ], [ %i.cn, %bb.x ]
  %i.co = and i32 %i.ax, 12
  switch i32 %i.co, label %bb.ad [
    i32 4, label %bb.z
    i32 8, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %.4.i, i64 2 ; 2 uses
  %i.cq = icmp ugt ptr %i.cp, %i.h
  br i1 %i.cq, label %pfr_glyph_load_compound.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = load i8, ptr %.4.i, align 1, !tbaa !66
  %i.cs = zext i8 %i.cr to i16
  %i.ct = shl nuw i16 %i.cs, 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !66
  %i.cw = zext i8 %i.cv to i16
  %i.cx = or disjoint i16 %i.ct, %i.cw
  %i.cy = sext i16 %i.cx to i32
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %i.da = icmp ugt ptr %i.cz, %i.h
  br i1 %i.da, label %pfr_glyph_load_compound.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = load i8, ptr %.4.i, align 1, !tbaa !66
  %i.dc = sext i8 %i.db to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.y
  %.5.i = phi ptr [ %.4.i, %bb.y ], [ %i.cp, %bb.aa ], [ %i.cz, %bb.ac ] ; 5 uses
  %.062.i = phi i32 [ 0, %bb.y ], [ %i.cy, %bb.aa ], [ %i.dc, %bb.ac ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.061113.i, i64 16
  store i32 %.063.i, ptr %i.dd, align 8, !tbaa !284
  %i.de = getelementptr inbounds nuw i8, ptr %.061113.i, i64 20
  store i32 %.062.i, ptr %i.de, align 4, !tbaa !285
  %i.df = and i32 %i.ax, 64
  %.not86.i = icmp eq i32 %i.df, 0
  br i1 %.not86.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %.5.i, i64 2 ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.h
  br i1 %i.dh, label %pfr_glyph_load_compound.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = load i8, ptr %.5.i, align 1, !tbaa !66
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.5.i, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !66
  %i.dn = zext i8 %i.dm to i32
  %i.do = or disjoint i32 %i.dk, %i.dn
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.dp = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 2 uses
  %i.dq = icmp ugt ptr %i.dp, %i.h
  br i1 %i.dq, label %pfr_glyph_load_compound.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dr = load i8, ptr %.5.i, align 1, !tbaa !66
  %i.ds = zext i8 %i.dr to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.sink.i = phi i32 [ %i.ds, %bb.ah ], [ %i.do, %bb.af ]
  %.6.i = phi ptr [ %i.dp, %bb.ah ], [ %i.dg, %bb.af ] ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.061113.i, i64 28
  store i32 %.sink.i, ptr %i.dt, align 4, !tbaa !286
  %.not87.i = icmp sgt i8 %i.aw, -1
  br i1 %.not87.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = getelementptr inbounds nuw i8, ptr %.6.i, i64 3 ; 2 uses
  %i.dv = icmp ugt ptr %i.du, %i.h
  br i1 %i.dv, label %pfr_glyph_load_compound.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = load i8, ptr %.6.i, align 1, !tbaa !66
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.6.i, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !66
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 8
  %i.ed = or disjoint i32 %i.ec, %i.dy
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.ee = getelementptr inbounds nuw i8, ptr %.6.i, i64 2 ; 2 uses
  %i.ef = icmp ugt ptr %i.ee, %i.h
  br i1 %i.ef, label %pfr_glyph_load_compound.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eg = load i8, ptr %.6.i, align 1, !tbaa !66
  %i.eh = zext i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.sink147.i = phi i64 [ 1, %bb.am ], [ 2, %bb.ak ]
  %.sink143.i = phi i32 [ %i.ei, %bb.am ], [ %i.ed, %bb.ak ]
  %.7.i = phi ptr [ %i.ee, %bb.am ], [ %i.du, %bb.ak ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.6.i, i64 %.sink147.i
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !66
  %i.el = zext i8 %i.ek to i32
  %i.em = or disjoint i32 %.sink143.i, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %.061113.i, i64 24
  store i32 %i.em, ptr %i.en, align 8, !tbaa !287
  %i.eo = load i32, ptr %i.l, align 8, !tbaa !227
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.l, align 8, !tbaa !227
  %i.eq = add nuw nsw i32 %.064112.i, 1           ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.061113.i, i64 32
  %exitcond.not.i = icmp eq i32 %i.eq, %i.r
  br i1 %exitcond.not.i, label %.loopexit123, label %.lr.ph.i, !llvm.loop !288

pfr_glyph_load_compound.exit.thread:              ; preds = %bb.i, %.lr.ph59.split.us.i.i.i, %bb.al, %bb.r, %bb.z, %bb.w, %bb.ae, %bb.aj, %bb.ag, %bb.ab, %bb.o, %.lr.ph.i, %bb.u, %bb.k, %bb.g, %bb.j, %bb.e
  %.ph = phi i32 [ %i.aq, %bb.k ], [ 8, %bb.e ], [ 8, %bb.al ], [ 8, %bb.j ], [ 8, %bb.g ], [ 8, %bb.u ], [ 8, %.lr.ph.i ], [ 8, %bb.o ], [ 8, %bb.ab ], [ 8, %bb.ag ], [ 8, %bb.aj ], [ 8, %bb.ae ], [ 8, %bb.w ], [ 8, %bb.z ], [ 8, %bb.r ], [ 8, %.lr.ph59.split.us.i.i.i ], [ 8, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.loopexit122.sink.split

.loopexit123:                                     ; preds = %bb.an, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @FT_Stream_ExitFrame(ptr noundef %1) #12
  %i.es = load i32, ptr %i.l, align 8, !tbaa !227 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not135 = icmp eq i32 %i.es, %i.m
  br i1 %.not135, label %.loopexit122, label %.lr.ph132

.lr.ph132:                                        ; preds = %.loopexit123
  %i.eu = sub i32 %i.es, %i.m
  %i.ev = zext i32 %i.m to i64                    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 26 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %wide.trip.count = zext i32 %i.eu to i64
  %.pre = load ptr, ptr %i.et, align 8, !tbaa !189
  %.pre149 = load i16, ptr %i.ew, align 2, !tbaa !225
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph132, %.loopexit
  %i.ey = phi i16 [ %.pre149, %.lr.ph132 ], [ %i.fn, %.loopexit ] ; 3 uses
  %i.ez = phi ptr [ %.pre, %.lr.ph132 ], [ %i.fk, %.loopexit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph132 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %i.ez, i64 %i.ev
  %i.fb = getelementptr inbounds nuw [32 x i8], ptr %i.fa, i64 %indvars.iv ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !287
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 28
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !286
  %i.fh = zext i32 %i.fg to i64
  %i.fi = call fastcc i32 @pfr_glyph_load_rec(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i64 noundef %i.fe, i64 noundef %i.fh) ; 2 uses
  %.not87 = icmp eq i32 %i.fi, 0
  br i1 %.not87, label %bb.ap, label %.loopexit122

bb.ap:                                            ; preds = %bb.ao
  %i.fj = sext i16 %i.ey to i32                   ; 2 uses
  %i.fk = load ptr, ptr %i.et, align 8, !tbaa !189 ; 2 uses
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %i.fk, i64 %i.ev
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.fl, i64 %indvars.iv ; 5 uses
  %i.fn = load i16, ptr %i.ew, align 2, !tbaa !225 ; 2 uses
  %i.fo = sext i16 %i.fn to i32                   ; 2 uses
  %i.fp = sub nsw i32 %i.fo, %i.fj                ; 5 uses
  %i.fq = load i64, ptr %i.fm, align 8, !tbaa !281 ; 2 uses
  %.not88 = icmp eq i64 %i.fq, 65536
  br i1 %.not88, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !283
  %.not89 = icmp eq i64 %i.fs, 65536
  br i1 %.not89, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ft = icmp sgt i32 %i.fp, 0
  br i1 %i.ft, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ar
  %i.fu = load ptr, ptr %i.ex, align 8, !tbaa !244
  %i.fv = sext i16 %i.ey to i64
  %i.fw = getelementptr inbounds [16 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !283
  %i.ga = insertelement <2 x i64> poison, i64 %i.fq, i64 0
  %i.gb = insertelement <2 x i64> %i.ga, i64 %i.fz, i64 1
  %i.gc = shl <2 x i64> %i.gb, splat (i64 32)
  %i.gd = ashr exact <2 x i64> %i.gc, splat (i64 32)
  %i.ge = load <2 x i32>, ptr %i.fx, align 8, !tbaa !3
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.as
  %.071127 = phi ptr [ %i.fw, %.lr.ph ], [ %i.gr, %bb.as ] ; 3 uses
  %.076126 = phi i32 [ 0, %.lr.ph ], [ %i.gq, %bb.as ]
  %i.gf = load <2 x i64>, ptr %.071127, align 8, !tbaa !131
  %i.gg = shl <2 x i64> %i.gf, splat (i64 32)
  %i.gh = ashr exact <2 x i64> %i.gg, splat (i64 32)
  %i.gi = mul nsw <2 x i64> %i.gd, %i.gh          ; 2 uses
  %i.gj = ashr <2 x i64> %i.gi, splat (i64 63)
end_hunk_1
begin_hunk_2_@pfr_glyph_load_rec:bb.a
  %.4.i96 = phi ptr [ %i.jz, %bb.bp ], [ %i.jp, %bb.bn ] ; 2 uses
  %.1118.i = phi i32 [ %i.kd, %bb.bp ], [ %i.jy, %bb.bn ] ; 2 uses
  %i.ke = sext i32 %.1118.i to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv.i
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !131
  %i.kg = lshr i32 %.1120.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i97, label %._crit_edge.i98, label %.lr.ph.i95, !llvm.loop !297

._crit_edge.i98:                                  ; preds = %bb.bq, %bb.bi
  %i.kh = phi ptr [ %i.je, %bb.bi ], [ %i.jf, %bb.bq ] ; 5 uses
  %i.ki = phi ptr [ %.phi.trans.insert.i92, %bb.bi ], [ %i.jg, %bb.bq ] ; 5 uses
  %.2177.lcssa.i = phi ptr [ %.1176.i, %bb.bi ], [ %.4.i96, %bb.bq ] ; 3 uses
  %i.kj = and i32 %i.hv, 8
  %.not148.i = icmp eq i32 %i.kj, 0
  br i1 %.not148.i, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %._crit_edge.i98
  %i.kk = getelementptr inbounds nuw i8, ptr %.2177.lcssa.i, i64 1 ; 3 uses
  %i.kl = icmp ugt ptr %i.kk, %i.h
  br i1 %i.kl, label %pfr_glyph_load_simple.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.km = load i8, ptr %.2177.lcssa.i, align 1, !tbaa !66 ; 2 uses
  %.not56.i.i.i99 = icmp eq i8 %i.km, 0
  br i1 %.not56.i.i.i99, label %pfr_extra_items_skip.exit.i106, label %.lr.ph59.i.i.i100

.lr.ph59.i.i.i100:                                ; preds = %bb.bs
  %i.kn = zext i8 %i.km to i32
  br label %.lr.ph59.split.us.i.i.i101

.lr.ph59.split.us.i.i.i101:                       ; preds = %.thread.us.i.i.i104, %.lr.ph59.i.i.i100
  %.03558.us.i.i.i102 = phi i32 [ %i.ku, %.thread.us.i.i.i104 ], [ %i.kn, %.lr.ph59.i.i.i100 ]
  %.03657.us.i.i.i103 = phi ptr [ %i.ks, %.thread.us.i.i.i104 ], [ %i.kk, %.lr.ph59.i.i.i100 ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.03657.us.i.i.i103, i64 2 ; 2 uses
  %i.kp = icmp ugt ptr %i.ko, %i.h
  br i1 %i.kp, label %pfr_glyph_load_simple.exit, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph59.split.us.i.i.i101
  %i.kq = load i8, ptr %.03657.us.i.i.i103, align 1, !tbaa !66
  %i.kr = zext i8 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kr ; 3 uses
  %i.kt = icmp ugt ptr %i.ks, %i.h
  br i1 %i.kt, label %pfr_glyph_load_simple.exit, label %.thread.us.i.i.i104

.thread.us.i.i.i104:                              ; preds = %bb.bt
  %i.ku = add nsw i32 %.03558.us.i.i.i102, -1     ; 2 uses
  %.not.us.i.i.i105 = icmp eq i32 %i.ku, 0
  br i1 %.not.us.i.i.i105, label %pfr_extra_items_skip.exit.i106, label %.lr.ph59.split.us.i.i.i101, !llvm.loop !70

pfr_extra_items_skip.exit.i106:                   ; preds = %.thread.us.i.i.i104, %bb.bs
  %.137.i.i.i = phi ptr [ %i.kk, %bb.bs ], [ %i.ks, %.thread.us.i.i.i104 ]
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %bb.bu

bb.bu:                                            ; preds = %pfr_extra_items_skip.exit.i106, %._crit_edge.i98
  %.5.i107 = phi ptr [ %.2177.lcssa.i, %._crit_edge.i98 ], [ %.137.i.i.i, %pfr_extra_items_skip.exit.i106 ]
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  store i8 0, ptr %i.kv, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kx, i8 0, i64 16, i1 false)
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 7 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.lb = trunc nuw i32 %.0116.i to i8            ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %bb.bv

bb.bv:                                            ; preds = %pfr_glyph_line_to.exit.i, %bb.bu
  %.6.i108 = phi ptr [ %.5.i107, %bb.bu ], [ %.7.lcssa315.i, %pfr_glyph_line_to.exit.i ] ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.6.i108, i64 1 ; 6 uses
  %i.lh = icmp ugt ptr %i.lg, %i.h
  br i1 %i.lh, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.li = load i8, ptr %.6.i108, align 1, !tbaa !66
  %i.lj = zext i8 %i.li to i32                    ; 3 uses
  %i.lk = and i32 %i.lj, 15                       ; 8 uses
  %i.ll = lshr i32 %i.lj, 4                       ; 2 uses
  switch i32 %i.ll, label %bb.cb [
    i32 0, label %._crit_edge216.thread317.i
    i32 1, label %.lr.ph215.preheader.i
    i32 4, label %.lr.ph215.preheader.i
    i32 5, label %.lr.ph215.preheader.i
    i32 2, label %bb.bx
    i32 3, label %bb.bz
    i32 6, label %.lr.ph215.preheader.thread.i
    i32 7, label %.lr.ph215.preheader.thread300.i
  ]

bb.bx:                                            ; preds = %bb.bw
  %.not151.i = icmp ult i32 %i.lk, %.1110.i
  br i1 %.not151.i, label %bb.by, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.by:                                            ; preds = %bb.bx
  %i.lm = load ptr, ptr %i.ki, align 8, !tbaa !188
  %i.ln = zext nneg i32 %i.lk to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.ln
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !131
  store i64 %i.lp, ptr %5, align 16, !tbaa !245
  %i.lq = load i64, ptr %i.ky, align 8, !tbaa !246
  br label %._crit_edge216.thread.sink.split.i

bb.bz:                                            ; preds = %bb.bw
  %.not150.i = icmp samesign ult i32 %i.lk, %.0116.i
  br i1 %.not150.i, label %bb.ca, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.ca:                                            ; preds = %bb.bz
  %i.lr = load i64, ptr %i.kx, align 16, !tbaa !245
  store i64 %i.lr, ptr %5, align 16, !tbaa !245
  %i.ls = load ptr, ptr %i.kh, align 8, !tbaa !296
  %i.lt = zext nneg i32 %i.lk to i64
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.lt
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !131
  br label %._crit_edge216.thread.sink.split.i

bb.cb:                                            ; preds = %bb.bw
  br label %.lr.ph215.preheader.i

.lr.ph215.preheader.i:                            ; preds = %bb.cb, %bb.bw, %bb.bw, %bb.bw
  %.ph.i = phi i1 [ true, %bb.cb ], [ false, %bb.bw ], [ false, %bb.bw ], [ false, %bb.bw ] ; 4 uses
  %.0103.ph.i = phi i32 [ 4, %bb.cb ], [ 1, %bb.bw ], [ 1, %bb.bw ], [ 1, %bb.bw ] ; 4 uses
  %i.lw = and i32 %i.lj, 3
  switch i32 %i.lw, label %.lr.ph215.preheader.i.unreachabledefault [
    i32 0, label %bb.cf
    i32 1, label %bb.cd
    i32 2, label %.lr.ph215.preheader.thread.i
    i32 3, label %.lr.ph215.preheader.thread300.i
  ]

.lr.ph215.preheader.thread300.i:                  ; preds = %.lr.ph215.preheader.i, %bb.bw
  %.0103.ph306.i = phi i32 [ %.0103.ph.i, %.lr.ph215.preheader.i ], [ 3, %bb.bw ]
  %.ph305.i = phi i1 [ %.ph.i, %.lr.ph215.preheader.i ], [ false, %bb.bw ]
  %.0104.ph304.i = phi i32 [ %i.lk, %.lr.ph215.preheader.i ], [ 3627, %bb.bw ]
  %i.lx = load i64, ptr %i.kx, align 16, !tbaa !245
  br label %bb.ci

.lr.ph215.preheader.thread.i:                     ; preds = %.lr.ph215.preheader.i, %bb.bw
  %.0103.ph299.i = phi i32 [ %.0103.ph.i, %.lr.ph215.preheader.i ], [ 3, %bb.bw ]
  %.ph297.i = phi i1 [ %.ph.i, %.lr.ph215.preheader.i ], [ false, %bb.bw ]
  %.0104.ph295.i = phi i32 [ %i.lk, %.lr.ph215.preheader.i ], [ 2958, %bb.bw ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.6.i108, i64 2 ; 2 uses
  %i.lz = icmp ugt ptr %i.ly, %i.h
  br i1 %i.lz, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph215.preheader.thread.i
  %i.ma = load i8, ptr %i.lg, align 1, !tbaa !66
  %i.mb = load i64, ptr %i.kx, align 16, !tbaa !245
  %i.mc = sext i8 %i.ma to i64
  %i.md = add nsw i64 %i.mb, %i.mc
  br label %bb.ci

bb.cd:                                            ; preds = %.lr.ph215.preheader.i
  %i.me = getelementptr inbounds nuw i8, ptr %.6.i108, i64 3 ; 2 uses
  %i.mf = icmp ugt ptr %i.me, %i.h
  br i1 %i.mf, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mg = load i8, ptr %i.lg, align 1, !tbaa !66
  %i.mh = zext i8 %i.mg to i16
  %i.mi = shl nuw i16 %i.mh, 8
  %i.mj = getelementptr inbounds nuw i8, ptr %.6.i108, i64 2
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !66
  %i.ml = zext i8 %i.mk to i16
  %i.mm = or disjoint i16 %i.mi, %i.ml
  %i.mn = sext i16 %i.mm to i64
  br label %bb.ci

bb.cf:                                            ; preds = %.lr.ph215.preheader.i
  %i.mo = getelementptr inbounds nuw i8, ptr %.6.i108, i64 2 ; 2 uses
  %i.mp = icmp ugt ptr %i.mo, %i.h
  br i1 %i.mp, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mq = load i8, ptr %i.lg, align 1, !tbaa !66  ; 2 uses
  %i.mr = zext i8 %i.mq to i32
  %.not153.peel.i = icmp ugt i32 %.1110.i, %i.mr
  br i1 %.not153.peel.i, label %bb.ch, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.ch:                                            ; preds = %bb.cg
  %i.ms = load ptr, ptr %i.ki, align 8, !tbaa !188
  %i.mt = zext i8 %i.mq to i64
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !131
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ce, %bb.cc, %.lr.ph215.preheader.thread300.i
  %.sink.i109 = phi i64 [ %i.mv, %bb.ch ], [ %i.mn, %bb.ce ], [ %i.md, %bb.cc ], [ %i.lx, %.lr.ph215.preheader.thread300.i ]
  %.0103.ph298.i = phi i32 [ %.0103.ph.i, %bb.ch ], [ %.0103.ph.i, %bb.ce ], [ %.0103.ph299.i, %bb.cc ], [ %.0103.ph306.i, %.lr.ph215.preheader.thread300.i ] ; 2 uses
  %.ph296.i = phi i1 [ %.ph.i, %bb.ch ], [ %.ph.i, %bb.ce ], [ %.ph297.i, %bb.cc ], [ %.ph305.i, %.lr.ph215.preheader.thread300.i ]
  %.0104.ph294.i = phi i32 [ %i.lk, %bb.ch ], [ %i.lk, %bb.ce ], [ %.0104.ph295.i, %bb.cc ], [ %.0104.ph304.i, %.lr.ph215.preheader.thread300.i ] ; 2 uses
  %.8.peel.i = phi ptr [ %i.mo, %bb.ch ], [ %i.me, %bb.ce ], [ %i.ly, %bb.cc ], [ %i.lg, %.lr.ph215.preheader.thread300.i ] ; 8 uses
  store i64 %.sink.i109, ptr %5, align 16, !tbaa !245
  %6 = and i32 %.0104.ph294.i, 12
  %7 = sub i32 %6, 0                              ; 2 uses
  %8 = call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 30)
  switch i32 %8, label %.lr.ph215.peel.next.i.unreachabledefault [
    i32 0, label %bb.co
    i32 1, label %bb.cm
    i32 2, label %bb.ck
    i32 3, label %bb.cj
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.mw = load i64, ptr %i.ky, align 8, !tbaa !246
  br label %bb.cr

bb.ck:                                            ; preds = %bb.ci
  %i.mx = getelementptr inbounds nuw i8, ptr %.8.peel.i, i64 1 ; 2 uses
  %i.my = icmp ugt ptr %i.mx, %i.h
  br i1 %i.my, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mz = load i8, ptr %.8.peel.i, align 1, !tbaa !66
  %i.na = load i64, ptr %i.ky, align 8, !tbaa !246
  %i.nb = sext i8 %i.mz to i64
  %i.nc = add nsw i64 %i.na, %i.nb
  br label %bb.cr

bb.cm:                                            ; preds = %bb.ci
  %i.nd = getelementptr inbounds nuw i8, ptr %.8.peel.i, i64 2 ; 2 uses
  %i.ne = icmp ugt ptr %i.nd, %i.h
  br i1 %i.ne, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nf = load i8, ptr %.8.peel.i, align 1, !tbaa !66
  %i.ng = zext i8 %i.nf to i16
  %i.nh = shl nuw i16 %i.ng, 8
  %i.ni = getelementptr inbounds nuw i8, ptr %.8.peel.i, i64 1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !66
  %i.nk = zext i8 %i.nj to i16
  %i.nl = or disjoint i16 %i.nh, %i.nk
  %i.nm = sext i16 %i.nl to i64
  br label %bb.cr

bb.co:                                            ; preds = %bb.ci
  %i.nn = getelementptr inbounds nuw i8, ptr %.8.peel.i, i64 1 ; 2 uses
  %i.no = icmp ugt ptr %i.nn, %i.h
  br i1 %i.no, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.np = load i8, ptr %.8.peel.i, align 1, !tbaa !66 ; 2 uses
  %.not154.peel.i = icmp ult i8 %i.np, %i.lb
  br i1 %.not154.peel.i, label %bb.cq, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.cq:                                            ; preds = %bb.cp
  %i.nq = load ptr, ptr %i.kh, align 8, !tbaa !296
  %i.nr = zext i8 %i.np to i64
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.nr
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !131
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cn, %bb.cl, %bb.cj
  %.sink325.i = phi i64 [ %i.nt, %bb.cq ], [ %i.nm, %bb.cn ], [ %i.nc, %bb.cl ], [ %i.mw, %bb.cj ]
  %.9.peel.i = phi ptr [ %i.nn, %bb.cq ], [ %i.nd, %bb.cn ], [ %i.mx, %bb.cl ], [ %.8.peel.i, %bb.cj ] ; 4 uses
  store i64 %.sink325.i, ptr %i.kw, align 8, !tbaa !246
  br i1 %.ph296.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.nu = getelementptr inbounds nuw i8, ptr %.9.peel.i, i64 1 ; 2 uses
  %i.nv = icmp ugt ptr %i.nu, %i.h
  br i1 %i.nv, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %.thread307.i

.thread307.i:                                     ; preds = %bb.cs
  %i.nw = load i8, ptr %.9.peel.i, align 1, !tbaa !66
  %i.nx = zext i8 %i.nw to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kx, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !299
  br label %.lr.ph215.peel.next.i

bb.ct:                                            ; preds = %bb.cr
  %i.ny = lshr i32 %.0104.ph294.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kx, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !299
  %i.nz = icmp samesign ugt i32 %.0103.ph298.i, 1
  br i1 %i.nz, label %.lr.ph215.peel.next.i, label %._crit_edge216.i

.lr.ph215.peel.next.i:                            ; preds = %bb.ct, %.thread307.i
  %.2.peel313.i = phi i32 [ 3, %.thread307.i ], [ %.0103.ph298.i, %bb.ct ] ; 2 uses
  %.2106.peel312.i = phi i32 [ %i.nx, %.thread307.i ], [ %i.ny, %bb.ct ] ; 3 uses
  %.10.peel311.i = phi ptr [ %i.nu, %.thread307.i ], [ %.9.peel.i, %bb.ct ] ; 8 uses
  %i.oa = and i32 %.2106.peel312.i, 3
  switch i32 %i.oa, label %.unreachabledefault.a [
    i32 0, label %bb.cz
    i32 1, label %bb.cx
    i32 2, label %bb.cv
    i32 3, label %bb.cu
  ]

bb.cu:                                            ; preds = %.lr.ph215.peel.next.i
  %i.ob = load i64, ptr %i.kx, align 16, !tbaa !245
  br label %bb.dc

bb.cv:                                            ; preds = %.lr.ph215.peel.next.i
  %i.oc = getelementptr inbounds nuw i8, ptr %.10.peel311.i, i64 1 ; 2 uses
  %i.od = icmp ugt ptr %i.oc, %i.h
  br i1 %i.od, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.oe = load i8, ptr %.10.peel311.i, align 1, !tbaa !66
  %i.of = load i64, ptr %i.kx, align 16, !tbaa !245
  %i.og = sext i8 %i.oe to i64
  %i.oh = add nsw i64 %i.of, %i.og
  br label %bb.dc

bb.cx:                                            ; preds = %.lr.ph215.peel.next.i
  %i.oi = getelementptr inbounds nuw i8, ptr %.10.peel311.i, i64 2 ; 2 uses
  %i.oj = icmp ugt ptr %i.oi, %i.h
  br i1 %i.oj, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ok = load i8, ptr %.10.peel311.i, align 1, !tbaa !66
  %i.ol = zext i8 %i.ok to i16
  %i.om = shl nuw i16 %i.ol, 8
  %i.on = getelementptr inbounds nuw i8, ptr %.10.peel311.i, i64 1
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !66
  %i.op = zext i8 %i.oo to i16
  %i.oq = or disjoint i16 %i.om, %i.op
  %i.or = sext i16 %i.oq to i64
  br label %bb.dc

bb.cz:                                            ; preds = %.lr.ph215.peel.next.i
  %i.os = getelementptr inbounds nuw i8, ptr %.10.peel311.i, i64 1 ; 2 uses
  %i.ot = icmp ugt ptr %i.os, %i.h
  br i1 %i.ot, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ou = load i8, ptr %.10.peel311.i, align 1, !tbaa !66 ; 2 uses
  %i.ov = zext i8 %i.ou to i32
  %.not153.i.peel = icmp ugt i32 %.1110.i, %i.ov
  br i1 %.not153.i.peel, label %bb.db, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.db:                                            ; preds = %bb.da
  %i.ow = load ptr, ptr %i.ki, align 8, !tbaa !188
  %i.ox = zext i8 %i.ou to i64
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.ox
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !131
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy, %bb.cw, %bb.cu
  %.sink326.i.peel = phi i64 [ %i.ob, %bb.cu ], [ %i.oh, %bb.cw ], [ %i.or, %bb.cy ], [ %i.oz, %bb.db ]
  %.8.i.peel = phi ptr [ %.10.peel311.i, %bb.cu ], [ %i.oc, %bb.cw ], [ %i.oi, %bb.cy ], [ %i.os, %bb.db ] ; 8 uses
  store i64 %.sink326.i.peel, ptr %i.kz, align 16, !tbaa !245
  %9 = and i32 %.2106.peel312.i, 12
  %10 = sub i32 %9, 0                             ; 2 uses
  %11 = call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 30)
  switch i32 %11, label %.unreachabledefault232 [
    i32 0, label %bb.di
    i32 1, label %bb.dg
    i32 2, label %bb.de
    i32 3, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.pa = load i64, ptr %i.ky, align 8, !tbaa !246
  br label %bb.dl

bb.de:                                            ; preds = %bb.dc
  %i.pb = getelementptr inbounds nuw i8, ptr %.8.i.peel, i64 1 ; 2 uses
  %i.pc = icmp ugt ptr %i.pb, %i.h
  br i1 %i.pc, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pd = load i8, ptr %.8.i.peel, align 1, !tbaa !66
  %i.pe = load i64, ptr %i.ky, align 8, !tbaa !246
  %i.pf = sext i8 %i.pd to i64
  %i.pg = add nsw i64 %i.pe, %i.pf
  br label %bb.dl

bb.dg:                                            ; preds = %bb.dc
  %i.ph = getelementptr inbounds nuw i8, ptr %.8.i.peel, i64 2 ; 2 uses
  %i.pi = icmp ugt ptr %i.ph, %i.h
  br i1 %i.pi, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pj = load i8, ptr %.8.i.peel, align 1, !tbaa !66
  %i.pk = zext i8 %i.pj to i16
  %i.pl = shl nuw i16 %i.pk, 8
  %i.pm = getelementptr inbounds nuw i8, ptr %.8.i.peel, i64 1
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !66
  %i.po = zext i8 %i.pn to i16
  %i.pp = or disjoint i16 %i.pl, %i.po
  %i.pq = sext i16 %i.pp to i64
  br label %bb.dl

bb.di:                                            ; preds = %bb.dc
  %i.pr = getelementptr inbounds nuw i8, ptr %.8.i.peel, i64 1 ; 2 uses
  %i.ps = icmp ugt ptr %i.pr, %i.h
  br i1 %i.ps, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pt = load i8, ptr %.8.i.peel, align 1, !tbaa !66 ; 2 uses
  %.not154.i.peel = icmp ult i8 %i.pt, %i.lb
  br i1 %.not154.i.peel, label %bb.dk, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.dk:                                            ; preds = %bb.dj
  %i.pu = load ptr, ptr %i.kh, align 8, !tbaa !296
  %i.pv = zext i8 %i.pt to i64
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.pv
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !131
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dh, %bb.df, %bb.dd
  %.sink327.i.peel = phi i64 [ %i.pa, %bb.dd ], [ %i.pg, %bb.df ], [ %i.pq, %bb.dh ], [ %i.px, %bb.dk ]
  %.9.i.peel = phi ptr [ %.8.i.peel, %bb.dd ], [ %i.pb, %bb.df ], [ %i.ph, %bb.dh ], [ %i.pr, %bb.dk ] ; 9 uses
  store i64 %.sink327.i.peel, ptr %i.lc, align 8, !tbaa !246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kx, ptr noundef nonnull align 16 dereferenceable(16) %i.kz, i64 16, i1 false), !tbaa.struct !299
  %i.py = icmp samesign ugt i32 %.2.peel313.i, 2
  br i1 %i.py, label %.lr.ph215.i.peel.next, label %._crit_edge216.i

.lr.ph215.i.peel.next:                            ; preds = %bb.dl
  %i.pz = lshr i32 %.2106.peel312.i, 4            ; 2 uses
  %.not225 = icmp eq i32 %.2.peel313.i, 3
  %i.qa = and i32 %i.pz, 3
  switch i32 %i.qa, label %.lr.ph215.i.unreachabledefault [
    i32 0, label %bb.dr
    i32 1, label %bb.dp
    i32 2, label %bb.dn
    i32 3, label %bb.dm
  ]

bb.dm:                                            ; preds = %.lr.ph215.i.peel.next
  %i.qb = load i64, ptr %i.kx, align 16, !tbaa !245
  br label %bb.du

bb.dn:                                            ; preds = %.lr.ph215.i.peel.next
  %i.qc = getelementptr inbounds nuw i8, ptr %.9.i.peel, i64 1 ; 2 uses
  %i.qd = icmp ugt ptr %i.qc, %i.h
  br i1 %i.qd, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.qe = load i8, ptr %.9.i.peel, align 1, !tbaa !66
  %i.qf = load i64, ptr %i.kx, align 16, !tbaa !245
  %i.qg = sext i8 %i.qe to i64
  %i.qh = add nsw i64 %i.qf, %i.qg
  br label %bb.du

bb.dp:                                            ; preds = %.lr.ph215.i.peel.next
  %i.qi = getelementptr inbounds nuw i8, ptr %.9.i.peel, i64 2 ; 2 uses
  %i.qj = icmp ugt ptr %i.qi, %i.h
  br i1 %i.qj, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qk = load i8, ptr %.9.i.peel, align 1, !tbaa !66
  %i.ql = zext i8 %i.qk to i16
  %i.qm = shl nuw i16 %i.ql, 8
  %i.qn = getelementptr inbounds nuw i8, ptr %.9.i.peel, i64 1
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !66
  %i.qp = zext i8 %i.qo to i16
  %i.qq = or disjoint i16 %i.qm, %i.qp
  %i.qr = sext i16 %i.qq to i64
  br label %bb.du

bb.dr:                                            ; preds = %.lr.ph215.i.peel.next
  %i.qs = getelementptr inbounds nuw i8, ptr %.9.i.peel, i64 1 ; 2 uses
  %i.qt = icmp ugt ptr %i.qs, %i.h
  br i1 %i.qt, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qu = load i8, ptr %.9.i.peel, align 1, !tbaa !66 ; 2 uses
  %i.qv = zext i8 %i.qu to i32
  %.not153.i.peel247 = icmp ugt i32 %.1110.i, %i.qv
  br i1 %.not153.i.peel247, label %bb.dt, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.dt:                                            ; preds = %bb.ds
  %i.qw = load ptr, ptr %i.ki, align 8, !tbaa !188
  %i.qx = zext i8 %i.qu to i64
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %i.qx
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !131
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dq, %bb.do, %bb.dm
  %.sink326.i.peel248 = phi i64 [ %i.qb, %bb.dm ], [ %i.qh, %bb.do ], [ %i.qr, %bb.dq ], [ %i.qz, %bb.dt ]
  %.8.i.peel249 = phi ptr [ %.9.i.peel, %bb.dm ], [ %i.qc, %bb.do ], [ %i.qi, %bb.dq ], [ %i.qs, %bb.dt ] ; 8 uses
  store i64 %.sink326.i.peel248, ptr %i.ld, align 16, !tbaa !245
  %12 = and i32 %i.pz, 12
  %13 = sub i32 %12, 0                            ; 2 uses
  %14 = call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 30)
  switch i32 %14, label %default.unreachable [
    i32 0, label %bb.ea
    i32 1, label %bb.dy
    i32 2, label %bb.dw
    i32 3, label %bb.dv
  ]

bb.dv:                                            ; preds = %bb.du
  %i.ra = load i64, ptr %i.ky, align 8, !tbaa !246
  br label %bb.ed

bb.dw:                                            ; preds = %bb.du
  %i.rb = getelementptr inbounds nuw i8, ptr %.8.i.peel249, i64 1 ; 2 uses
  %i.rc = icmp ugt ptr %i.rb, %i.h
  br i1 %i.rc, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rd = load i8, ptr %.8.i.peel249, align 1, !tbaa !66
  %i.re = load i64, ptr %i.ky, align 8, !tbaa !246
  %i.rf = sext i8 %i.rd to i64
  %i.rg = add nsw i64 %i.re, %i.rf
  br label %bb.ed

bb.dy:                                            ; preds = %bb.du
  %i.rh = getelementptr inbounds nuw i8, ptr %.8.i.peel249, i64 2 ; 2 uses
  %i.ri = icmp ugt ptr %i.rh, %i.h
  br i1 %i.ri, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rj = load i8, ptr %.8.i.peel249, align 1, !tbaa !66
  %i.rk = zext i8 %i.rj to i16
  %i.rl = shl nuw i16 %i.rk, 8
  %i.rm = getelementptr inbounds nuw i8, ptr %.8.i.peel249, i64 1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !66
  %i.ro = zext i8 %i.rn to i16
  %i.rp = or disjoint i16 %i.rl, %i.ro
  %i.rq = sext i16 %i.rp to i64
  br label %bb.ed

bb.ea:                                            ; preds = %bb.du
  %i.rr = getelementptr inbounds nuw i8, ptr %.8.i.peel249, i64 1 ; 2 uses
  %i.rs = icmp ugt ptr %i.rr, %i.h
  br i1 %i.rs, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.rt = load i8, ptr %.8.i.peel249, align 1, !tbaa !66 ; 2 uses
  %.not154.i.peel250 = icmp ult i8 %i.rt, %i.lb
  br i1 %.not154.i.peel250, label %bb.ec, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.ec:                                            ; preds = %bb.eb
  %i.ru = load ptr, ptr %i.kh, align 8, !tbaa !296
  %i.rv = zext i8 %i.rt to i64
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.rv
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !131
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dz, %bb.dx, %bb.dv
  %.sink327.i.peel251 = phi i64 [ %i.ra, %bb.dv ], [ %i.rg, %bb.dx ], [ %i.rq, %bb.dz ], [ %i.rx, %bb.ec ]
  %.9.i.peel252 = phi ptr [ %.8.i.peel249, %bb.dv ], [ %i.rb, %bb.dx ], [ %i.rh, %bb.dz ], [ %i.rr, %bb.ec ] ; 2 uses
  store i64 %.sink327.i.peel251, ptr %i.le, align 8, !tbaa !246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kx, ptr noundef nonnull align 16 dereferenceable(16) %i.ld, i64 16, i1 false), !tbaa.struct !299
  br i1 %.not225, label %._crit_edge216.i, label %.lr.ph215.i

.lr.ph215.i:                                      ; preds = %bb.ed, %bb.eh
  %.0111210.i = phi ptr [ %i.so, %bb.eh ], [ %i.lf, %bb.ed ] ; 4 uses
  %.7209.i = phi ptr [ %i.sg, %bb.eh ], [ %.9.i.peel252, %bb.ed ] ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.7209.i, i64 1 ; 3 uses
  %i.rz = icmp ugt ptr %i.ry, %i.h
  br i1 %i.rz, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph215.i
  %i.sa = load i8, ptr %.7209.i, align 1, !tbaa !66 ; 2 uses
  %i.sb = zext i8 %i.sa to i32
  %.not153.i = icmp ugt i32 %.1110.i, %i.sb
  br i1 %.not153.i, label %bb.ef, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.ef:                                            ; preds = %bb.ee
  %i.sc = load ptr, ptr %i.ki, align 8, !tbaa !188
  %i.sd = zext i8 %i.sa to i64
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.sd
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !131
  store i64 %i.sf, ptr %.0111210.i, align 8, !tbaa !245
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ry, i64 1 ; 2 uses
  %i.sh = icmp ugt ptr %i.sg, %i.h
  br i1 %i.sh, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.eg

.lr.ph215.i.unreachabledefault:                   ; preds = %.lr.ph215.i.peel.next
  unreachable

.lr.ph215.preheader.i.unreachabledefault:         ; preds = %.lr.ph215.preheader.i
  unreachable

.unreachabledefault.a:                            ; preds = %.lr.ph215.peel.next.i
  unreachable

.lr.ph215.peel.next.i.unreachabledefault:         ; preds = %bb.ci
  unreachable

.unreachabledefault232:                           ; preds = %bb.dc
  unreachable

default.unreachable:                              ; preds = %bb.du
  unreachable

bb.eg:                                            ; preds = %bb.ef
  %i.si = load i8, ptr %i.ry, align 1, !tbaa !66  ; 2 uses
  %.not154.i = icmp ult i8 %i.si, %i.lb
  br i1 %.not154.i, label %bb.eh, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.eh:                                            ; preds = %bb.eg
  %i.sj = load ptr, ptr %i.kh, align 8, !tbaa !296
  %i.sk = zext i8 %i.si to i64
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sk
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !131
  %i.sn = getelementptr inbounds nuw i8, ptr %.0111210.i, i64 8
  store i64 %i.sm, ptr %i.sn, align 8, !tbaa !246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kx, ptr noundef nonnull align 8 dereferenceable(16) %.0111210.i, i64 16, i1 false), !tbaa.struct !299
  %i.so = getelementptr inbounds nuw i8, ptr %.0111210.i, i64 16
  br label %.lr.ph215.i, !llvm.loop !300

._crit_edge216.i:                                 ; preds = %bb.ed, %bb.dl, %bb.ct
  %.7.lcssa.i = phi ptr [ %.9.peel.i, %bb.ct ], [ %.9.i.peel, %bb.dl ], [ %.9.i.peel252, %bb.ed ] ; 5 uses
  switch i32 %i.ll, label %bb.ew [
    i32 0, label %._crit_edge216.thread317.i
    i32 1, label %._crit_edge216.thread.i
    i32 2, label %._crit_edge216.thread.i
    i32 3, label %._crit_edge216.thread.i
    i32 4, label %bb.ek
    i32 5, label %bb.ek
  ]

._crit_edge216.thread317.i:                       ; preds = %._crit_edge216.i, %bb.bw
  call fastcc void @pfr_glyph_end(ptr noundef %0)
  %.pre231.pre.i = load i32, ptr %i.a, align 4, !tbaa !3
  br label %pfr_extra_items_skip.exit.thread.sink.split.i

._crit_edge216.thread.sink.split.i:               ; preds = %bb.ca, %bb.by
  %.sink329.i = phi i64 [ %i.lv, %bb.ca ], [ %i.lq, %bb.by ]
  store i64 %.sink329.i, ptr %i.kw, align 8, !tbaa !246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kx, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false)
  br label %._crit_edge216.thread.i

._crit_edge216.thread.i:                          ; preds = %._crit_edge216.thread.sink.split.i, %._crit_edge216.i, %._crit_edge216.i, %._crit_edge216.i
  %.7.lcssa316.i = phi ptr [ %.7.lcssa.i, %._crit_edge216.i ], [ %.7.lcssa.i, %._crit_edge216.i ], [ %.7.lcssa.i, %._crit_edge216.i ], [ %i.lg, %._crit_edge216.thread.sink.split.i ]
  %.val.i = load ptr, ptr %i.hq, align 8, !tbaa !181 ; 6 uses
  %.val157.i = load i8, ptr %i.kv, align 8, !tbaa !298
  %.not.i.i = icmp eq i8 %.val157.i, 0
  br i1 %.not.i.i, label %pfr_glyph_line_to.exit.i.thread, label %bb.ei

bb.ei:                                            ; preds = %._crit_edge216.thread.i
  %i.sp = getelementptr inbounds nuw i8, ptr %.val.i, i64 26
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !302
  %i.sr = sext i16 %i.sq to i32
  %i.ss = getelementptr inbounds nuw i8, ptr %.val.i, i64 98 ; 4 uses
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !303 ; 2 uses
  %i.su = sext i16 %i.st to i32
  %i.sv = add nsw i32 %i.sr, 1
  %i.sw = add nsw i32 %i.sv, %i.su
  %i.sx = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.sy = load i32, ptr %i.sx, align 8, !tbaa !304
  %.not16.i.i = icmp ugt i32 %i.sw, %i.sy
  br i1 %.not16.i.i, label %bb.ej, label %.thread.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.sz = call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %.val.i, i32 noundef 1, i32 noundef 0) #12 ; 2 uses
  %.not17.i.i = icmp eq i32 %i.sz, 0
  br i1 %.not17.i.i, label %..thread_crit_edge.i.i, label %pfr_glyph_line_to.exit.i.thread

..thread_crit_edge.i.i:                           ; preds = %bb.ej
  %.pre.i.i = load i16, ptr %i.ss, align 2, !tbaa !225
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread_crit_edge.i.i, %bb.ei
  %i.ta = phi i16 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %i.st, %bb.ei ]
  %i.tb = getelementptr inbounds nuw i8, ptr %.val.i, i64 104
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !244
  %i.td = sext i16 %i.ta to i64                   ; 2 uses
  %i.te = getelementptr inbounds [16 x i8], ptr %i.tc, i64 %i.td
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.te, ptr noundef nonnull readonly align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !299
  %i.tf = getelementptr inbounds nuw i8, ptr %.val.i, i64 112
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !305
  %i.th = getelementptr inbounds i8, ptr %i.tg, i64 %i.td
  store i8 1, ptr %i.th, align 1, !tbaa !66
  %i.ti = load i16, ptr %i.ss, align 2, !tbaa !225
  %i.tj = add i16 %i.ti, 1
  store i16 %i.tj, ptr %i.ss, align 2, !tbaa !225
  br label %pfr_glyph_line_to.exit.i

bb.ek:                                            ; preds = %._crit_edge216.i, %._crit_edge216.i
  %i.tk = load ptr, ptr %i.hq, align 8, !tbaa !181 ; 12 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 96 ; 3 uses
  %i.tm = load i8, ptr %i.kv, align 8, !tbaa !298
  %.not.i.i.i = icmp eq i8 %i.tm, 0
  br i1 %.not.i.i.i, label %pfr_glyph_close_contour.exit.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 98 ; 2 uses
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !225 ; 2 uses
  %i.tp = sext i16 %i.to to i32                   ; 2 uses
  %i.tq = add nsw i32 %i.tp, -1                   ; 5 uses
  %i.tr = load i16, ptr %i.tl, align 8, !tbaa !226 ; 4 uses
  %i.ts = icmp sgt i16 %i.tr, 0
  br i1 %i.ts, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.tt = zext nneg i16 %i.tr to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tk, i64 120
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !306
  %i.tw = add nuw nsw i64 %i.tt, 4294967295
  %i.tx = and i64 %i.tw, 4294967295
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %i.tv, i64 %i.tx
  %i.tz = load i16, ptr %i.ty, align 2, !tbaa !230
  %i.ua = sext i16 %i.tz to i32
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.024.i.i.i = phi i32 [ %i.ua, %bb.em ], [ 0, %bb.el ] ; 3 uses
  %i.ub = icmp sgt i32 %i.tq, %.024.i.i.i
  br i1 %i.ub, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tk, i64 104
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !244 ; 2 uses
  %i.ue = sext i32 %.024.i.i.i to i64
  %i.uf = getelementptr inbounds [16 x i8], ptr %i.ud, i64 %i.ue ; 2 uses
  %i.ug = sext i32 %i.tq to i64
  %i.uh = getelementptr inbounds [16 x i8], ptr %i.ud, i64 %i.ug ; 2 uses
  %i.ui = load i64, ptr %i.uf, align 8, !tbaa !245
  %i.uj = load i64, ptr %i.uh, align 8, !tbaa !245
  %i.uk = icmp eq i64 %i.ui, %i.uj
  br i1 %i.uk, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !246
  %i.un = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !246
  %i.up = icmp eq i64 %i.um, %i.uo
  br i1 %i.up, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.uq = add i16 %i.to, -1
  store i16 %i.uq, ptr %i.tn, align 2, !tbaa !225
  %i.ur = add nsw i32 %i.tp, -2
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.en
  %.1.i.i.i = phi i32 [ %i.tq, %bb.en ], [ %i.ur, %bb.eq ], [ %i.tq, %bb.ep ], [ %i.tq, %bb.eo ] ; 2 uses
  %.not28.i.i.i = icmp slt i32 %.1.i.i.i, %.024.i.i.i
  br i1 %.not28.i.i.i, label %pfr_glyph_close_contour.exit.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.us = trunc nsw i32 %.1.i.i.i to i16
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tk, i64 120
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !306
  %i.uv = add i16 %i.tr, 1
  store i16 %i.uv, ptr %i.tl, align 8, !tbaa !226
  %i.uw = sext i16 %i.tr to i64
  %i.ux = getelementptr inbounds [2 x i8], ptr %i.uu, i64 %i.uw
  store i16 %i.us, ptr %i.ux, align 2, !tbaa !230
  br label %pfr_glyph_close_contour.exit.i.i

pfr_glyph_close_contour.exit.i.i:                 ; preds = %bb.es, %bb.er, %bb.ek
  store i8 1, ptr %i.kv, align 8, !tbaa !298
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tk, i64 26
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !302
  %i.va = sext i16 %i.uz to i32
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tk, i64 98 ; 2 uses
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !303 ; 2 uses
  %i.vd = sext i16 %i.vc to i32
  %i.ve = add nsw i32 %i.va, 1
  %i.vf = add nsw i32 %i.ve, %i.vd
  %i.vg = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !304
  %.not.i160.i = icmp ugt i32 %i.vf, %i.vh
  br i1 %.not.i160.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %pfr_glyph_close_contour.exit.i.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.vj = load i16, ptr %i.vi, align 8, !tbaa !307
  %i.vk = sext i16 %i.vj to i32
  %i.vl = load i16, ptr %i.tl, align 8, !tbaa !308
  %i.vm = sext i16 %i.vl to i32
  %i.vn = add nsw i32 %i.vk, 1
  %i.vo = add nsw i32 %i.vn, %i.vm
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tk, i64 12
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !309
  %.not14.i.i = icmp ugt i32 %i.vo, %i.vq
  br i1 %.not14.i.i, label %bb.eu, label %.thread.i.i.i

bb.eu:                                            ; preds = %bb.et, %pfr_glyph_close_contour.exit.i.i
  %i.vr = call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.tk, i32 noundef 1, i32 noundef 1) #12 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.vr, 0
  br i1 %.not15.i.i, label %.thread.i162.i, label %pfr_glyph_line_to.exit.i.thread

.thread.i162.i:                                   ; preds = %bb.eu
end_hunk_2
begin_hunk_3_@pfr_glyph_load_rec:bb.a
  store i32 %.sink330.i.ph, ptr %i.a, align 4, !tbaa !3
  br label %pfr_extra_items_skip.exit.thread.sink.split.i

pfr_glyph_line_to.exit.i:                         ; preds = %bb.ew, %.thread.i.i.i, %.thread.i.i
  %.sink330.i = phi i32 [ %i.wg, %bb.ew ], [ 0, %.thread.i.i ], [ 0, %.thread.i.i.i ] ; 3 uses
  %.7.lcssa315.i = phi ptr [ %.7.lcssa.i, %bb.ew ], [ %.7.lcssa316.i, %.thread.i.i ], [ %.7.lcssa.i, %.thread.i.i.i ]
  store i32 %.sink330.i, ptr %i.a, align 4, !tbaa !3
  %.not152.i = icmp eq i32 %.sink330.i, 0
  br i1 %.not152.i, label %bb.bv, label %pfr_extra_items_skip.exit.thread.sink.split.i

pfr_extra_items_skip.exit.thread.sink.split.i:    ; preds = %pfr_glyph_line_to.exit.i, %bb.cs, %bb.cp, %bb.co, %bb.cm, %bb.ck, %bb.cg, %bb.cf, %bb.cd, %.lr.ph215.preheader.thread.i, %bb.bz, %bb.bx, %bb.bv, %bb.cv, %bb.cx, %bb.cz, %bb.da, %bb.de, %bb.dg, %bb.di, %bb.dj, %bb.eg, %bb.ef, %bb.ee, %.lr.ph215.i, %bb.dn, %bb.dp, %bb.dr, %bb.ds, %bb.dw, %bb.dy, %bb.ea, %bb.eb, %pfr_glyph_line_to.exit.i.thread, %._crit_edge216.thread317.i
  %.ph331.i = phi i32 [ %.sink330.i.ph, %pfr_glyph_line_to.exit.i.thread ], [ %.pre231.pre.i, %._crit_edge216.thread317.i ], [ 8, %bb.eg ], [ 8, %bb.eb ], [ 8, %bb.ea ], [ 8, %bb.dy ], [ 8, %bb.dw ], [ 8, %bb.ds ], [ 8, %bb.dr ], [ 8, %bb.dp ], [ 8, %bb.dn ], [ 8, %.lr.ph215.i ], [ 8, %bb.ee ], [ 8, %bb.ef ], [ 8, %bb.ck ], [ 8, %bb.cg ], [ 8, %bb.cf ], [ 8, %bb.cd ], [ 8, %.lr.ph215.preheader.thread.i ], [ 8, %bb.bv ], [ 8, %bb.bz ], [ 8, %bb.bx ], [ 8, %bb.cs ], [ 8, %bb.cp ], [ 8, %bb.co ], [ 8, %bb.cm ], [ 8, %bb.cv ], [ 8, %bb.cx ], [ 8, %bb.cz ], [ 8, %bb.da ], [ 8, %bb.de ], [ 8, %bb.dg ], [ 8, %bb.di ], [ 8, %bb.dj ], [ %.sink330.i, %pfr_glyph_line_to.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %pfr_glyph_load_simple.exit

pfr_glyph_load_simple.exit:                       ; preds = %bb.bj, %bb.bm, %bb.bo, %.lr.ph59.split.us.i.i.i101, %bb.bt, %.thread, %bb.aw, %bb.ay, %bb.bb, %bb.be, %bb.bh, %bb.br, %pfr_extra_items_skip.exit.thread.sink.split.i
  %i.wh = phi i32 [ 8, %bb.br ], [ %i.iy, %bb.bh ], [ 8, %bb.ay ], [ 8, %bb.bb ], [ %.ph331.i, %pfr_extra_items_skip.exit.thread.sink.split.i ], [ 8, %.thread ], [ 8, %bb.aw ], [ 8, %bb.be ], [ 8, %.lr.ph59.split.us.i.i.i101 ], [ 8, %bb.bt ], [ 8, %bb.bo ], [ 8, %bb.bm ], [ 8, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit122.sink.split

.loopexit122.sink.split:                          ; preds = %pfr_glyph_load_simple.exit, %pfr_glyph_load_compound.exit.thread
  %.3.ph = phi i32 [ %.ph, %pfr_glyph_load_compound.exit.thread ], [ %i.wh, %pfr_glyph_load_simple.exit ]
  call void @FT_Stream_ExitFrame(ptr noundef %1) #12
  br label %.loopexit122

.loopexit122:                                     ; preds = %.loopexit, %bb.ao, %.loopexit122.sink.split, %.loopexit123, %bb.b, %bb.a
  %.3 = phi i32 [ %i.d, %bb.a ], [ %i.e, %bb.b ], [ 0, %.loopexit123 ], [ %.3.ph, %.loopexit122.sink.split ], [ 0, %.loopexit ], [ %i.fi, %bb.ao ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pfr_glyph_end(ptr noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !298
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %pfr_glyph_close_contour.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 98 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !225  ; 2 uses
  %i.h = sext i16 %i.g to i32                     ; 2 uses
  %i.i = add nsw i32 %i.h, -1                     ; 5 uses
  %i.j = load i16, ptr %i.c, align 8, !tbaa !226  ; 4 uses
  %i.k = icmp sgt i16 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i16 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !306
  %i.o = add nuw nsw i64 %i.l, 4294967295
  %i.p = and i64 %i.o, 4294967295
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !230
  %i.s = sext i16 %i.r to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.024.i = phi i32 [ %i.s, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.t = icmp sgt i32 %i.i, %.024.i
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !244  ; 2 uses
  %i.w = sext i32 %.024.i to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = sext i32 %i.i to i64
  %i.z = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !245
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !245
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !246
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !246
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = add i16 %i.g, -1
  store i16 %i.ai, ptr %i.f, align 2, !tbaa !225
  %i.aj = add nsw i32 %i.h, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.1.i = phi i32 [ %i.i, %bb.d ], [ %i.aj, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %.not28.i = icmp slt i32 %.1.i, %.024.i
  br i1 %.not28.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = trunc nsw i32 %.1.i to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !306
  %i.an = add i16 %i.j, 1
  store i16 %i.an, ptr %i.c, align 8, !tbaa !226
  %i.ao = sext i16 %i.j to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ao
  store i16 %i.ak, ptr %i.ap, align 2, !tbaa !230
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 0, ptr %i.d, align 8, !tbaa !298
  br label %pfr_glyph_close_contour.exit

pfr_glyph_close_contour.exit:                     ; preds = %bb.a, %bb.j
  tail call void @FT_GlyphLoader_Add(ptr noundef %i.b) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pfr_glyph_curve_to(ptr %.40.val, i8 %.48.val, ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i8 %.48.val, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.40.val, i64 26
  %i.b = load i16, ptr %i.a, align 2, !tbaa !302
  %i.c = sext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %.40.val, i64 98 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !303  ; 2 uses
  %i.f = sext i16 %i.e to i32
  %i.g = add nsw i32 %i.c, 3
  %i.h = add nsw i32 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %.40.val, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !304
  %.not24 = icmp ugt i32 %i.h, %i.j
  br i1 %.not24, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %.40.val, i32 noundef 3, i32 noundef 0) #12 ; 2 uses
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %..thread_crit_edge, label %bb.d

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i16, ptr %i.d, align 2, !tbaa !225
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.l = phi i16 [ %.pre, %..thread_crit_edge ], [ %i.e, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.40.val, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !244
  %i.o = sext i16 %i.l to i64                     ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.40.val, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !305
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.o ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !299
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !299
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !299
  store i8 2, ptr %i.s, align 1, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 2, ptr %i.v, align 1, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 1, ptr %i.w, align 1, !tbaa !66
  %i.x = load i16, ptr %i.d, align 2, !tbaa !225
  %i.y = add i16 %i.x, 3
  store i16 %i.y, ptr %i.d, align 2, !tbaa !225
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %.thread
  %.0 = phi i32 [ %i.k, %bb.c ], [ 0, %.thread ], [ 8, %bb.a ]
  ret i32 %.0
}

declare hidden void @FT_GlyphLoader_Add(ptr noundef) local_unnamed_addr #5

declare hidden i32 @FT_GlyphLoader_CheckPoints(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"FT_CMapRec_", !9, i64 0, !13, i64 16}
!9 = !{!"FT_CharMapRec_", !10, i64 0, !4, i64 8, !12, i64 12, !12, i64 14}
!10 = !{!"p1 _ZTS11FT_FaceRec_", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!"p1 _ZTS17FT_CMap_ClassRec_", !11, i64 0}
!14 = !{!15, !4, i64 584}
!15 = !{!"PFR_FaceRec_", !16, i64 0, !33, i64 248, !34, i64 356, !35, i64 408}
!16 = !{!"FT_FaceRec_", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !18, i64 40, !18, i64 48, !4, i64 56, !19, i64 64, !4, i64 72, !20, i64 80, !22, i64 88, !23, i64 104, !12, i64 136, !12, i64 138, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !24, i64 152, !25, i64 160, !26, i64 168, !27, i64 176, !28, i64 184, !29, i64 192, !30, i64 200, !22, i64 216, !11, i64 232, !32, i64 240}
!17 = !{!"long", !5, i64 0}
!18 = !{!"p1 omnipotent char", !11, i64 0}
!19 = !{!"p1 _ZTS15FT_Bitmap_Size_", !11, i64 0}
!20 = !{!"p2 _ZTS14FT_CharMapRec_", !21, i64 0}
!21 = !{!"any p2 pointer", !11, i64 0}
!22 = !{!"FT_Generic_", !11, i64 0, !11, i64 8}
!23 = !{!"FT_BBox_", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!24 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !11, i64 0}
!25 = !{!"p1 _ZTS11FT_SizeRec_", !11, i64 0}
!26 = !{!"p1 _ZTS14FT_CharMapRec_", !11, i64 0}
!27 = !{!"p1 _ZTS13FT_DriverRec_", !11, i64 0}
!28 = !{!"p1 _ZTS13FT_MemoryRec_", !11, i64 0}
!29 = !{!"p1 _ZTS13FT_StreamRec_", !11, i64 0}
!30 = !{!"FT_ListRec_", !31, i64 0, !31, i64 8}
!31 = !{!"p1 _ZTS15FT_ListNodeRec_", !11, i64 0}
!32 = !{!"p1 _ZTS20FT_Face_InternalRec_", !11, i64 0}
!33 = !{!"PFR_HeaderRec_", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104}
!34 = !{!"PFR_LogFontRec_", !4, i64 0, !4, i64 4, !5, i64 8, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44}
!35 = !{!"PFR_PhyFontRec_", !28, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !23, i64 24, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !36, i64 80, !36, i64 96, !18, i64 112, !18, i64 120, !18, i64 128, !4, i64 136, !4, i64 140, !38, i64 144, !4, i64 152, !37, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !17, i64 184, !39, i64 192, !4, i64 200, !40, i64 208, !41, i64 216, !17, i64 224, !18, i64 232}
!36 = !{!"PFR_DimensionRec_", !4, i64 0, !4, i64 4, !37, i64 8}
!37 = !{!"p1 int", !11, i64 0}
!38 = !{!"p1 _ZTS14PFR_StrikeRec_", !11, i64 0}
!39 = !{!"p1 _ZTS12PFR_CharRec_", !11, i64 0}
!40 = !{!"p1 _ZTS16PFR_KernItemRec_", !11, i64 0}
!41 = !{!"p2 _ZTS16PFR_KernItemRec_", !21, i64 0}
!42 = !{!43, !4, i64 24}
!43 = !{!"PFR_CMapRec_", !8, i64 0, !4, i64 24, !39, i64 32}
!44 = !{!15, !39, i64 600}
!45 = !{!43, !39, i64 32}
!46 = !{!47, !4, i64 0}
!47 = !{!"PFR_CharRec_", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = !{!33, !4, i64 72}
!53 = !{!33, !4, i64 36}
!54 = !{!33, !4, i64 0}
!55 = !{!33, !4, i64 4}
!56 = !{!33, !4, i64 12}
!57 = !{!33, !4, i64 8}
!58 = !{!15, !4, i64 268}
!59 = !{!60, !17, i64 8}
!60 = !{!"FT_StreamRec_", !18, i64 0, !17, i64 8, !17, i64 16, !5, i64 24, !5, i64 32, !11, i64 40, !11, i64 48, !28, i64 56, !18, i64 64, !18, i64 72}
!61 = !{!16, !17, i64 0}
!62 = !{!15, !4, i64 320}
!63 = !{!34, !4, i64 0}
!64 = !{!34, !4, i64 4}
!65 = !{!60, !18, i64 64}
!66 = !{!5, !5, i64 0}
!67 = !{!34, !4, i64 28}
!68 = !{!34, !4, i64 36}
!69 = !{!34, !4, i64 32}
!70 = distinct !{!70, !49}
!71 = !{!34, !4, i64 40}
!72 = !{!34, !4, i64 44}
!73 = !{!15, !4, i64 400}
!74 = !{!15, !4, i64 396}
!75 = !{!60, !28, i64 56}
!76 = !{!35, !28, i64 0}
!77 = !{!35, !4, i64 8}
!78 = !{!35, !40, i64 208}
!79 = !{!35, !41, i64 216}
!80 = !{!35, !18, i64 232}
!81 = !{!35, !4, i64 12}
!82 = !{!35, !4, i64 16}
!83 = !{!35, !4, i64 20}
!84 = !{!35, !17, i64 24}
!85 = !{!35, !17, i64 32}
!86 = !{!35, !17, i64 40}
!87 = !{!35, !17, i64 48}
!88 = !{!18, !18, i64 0}
!89 = !{!35, !4, i64 56}
!90 = !{!35, !4, i64 60}
!91 = !{!35, !4, i64 64}
!92 = !{!35, !4, i64 68}
!93 = !{!35, !4, i64 72}
!94 = !{!35, !4, i64 152}
!95 = !{!35, !37, i64 160}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !49, !102, !103}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = distinct !{!104, !49, !102}
!105 = !{!35, !4, i64 168}
!106 = !{!35, !4, i64 172}
!107 = !{!35, !4, i64 96}
!108 = !{!35, !4, i64 80}
!109 = !{!35, !4, i64 176}
!110 = !{!35, !17, i64 184}
!111 = !{!35, !39, i64 192}
!112 = !{!47, !4, i64 4}
!113 = !{!47, !4, i64 8}
!114 = !{!47, !4, i64 12}
!115 = distinct !{!115, !49}
!116 = !{!35, !17, i64 224}
!117 = !{!16, !17, i64 8}
!118 = !{!16, !17, i64 32}
!119 = !{!16, !17, i64 16}
!120 = distinct !{!120, !49}
!121 = !{!35, !4, i64 136}
!122 = !{!35, !4, i64 200}
!123 = !{!35, !18, i64 120}
!124 = !{!16, !18, i64 40}
!125 = !{!35, !18, i64 112}
!126 = !{!35, !18, i64 128}
!127 = !{!16, !18, i64 48}
!128 = !{!16, !4, i64 56}
!129 = !{!16, !19, i64 64}
!130 = !{i64 0, i64 8, !131, i64 8, i64 8, !131, i64 16, i64 8, !131, i64 24, i64 8, !131}
!131 = !{!17, !17, i64 0}
!132 = !{!16, !12, i64 136}
!133 = !{!16, !12, i64 138}
!134 = !{!16, !12, i64 140}
!135 = !{!16, !12, i64 142}
!136 = !{!16, !28, i64 184}
!137 = !{!35, !38, i64 144}
!138 = !{!139, !4, i64 4}
!139 = !{!"PFR_StrikeRec_", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !140, i64 32}
!140 = !{!"p1 _ZTS18PFR_BitmapCharRec_", !11, i64 0}
!141 = !{!142, !12, i64 0}
!142 = !{!"FT_Bitmap_Size_", !12, i64 0, !12, i64 2, !17, i64 8, !17, i64 16, !17, i64 24}
!143 = !{!139, !4, i64 0}
!144 = !{!142, !12, i64 2}
!145 = !{!142, !17, i64 8}
!146 = !{!142, !17, i64 16}
!147 = !{!142, !17, i64 24}
!148 = distinct !{!148, !49}
!149 = distinct !{!149, !49, !102, !103}
!150 = distinct !{!150, !49, !103, !102}
!151 = !{!16, !12, i64 144}
!152 = !{!16, !12, i64 146}
!153 = !{!16, !12, i64 148}
!154 = !{!16, !12, i64 150}
!155 = !{!9, !10, i64 0}
!156 = !{!9, !12, i64 12}
!157 = !{!9, !12, i64 14}
!158 = !{!9, !4, i64 8}
!159 = !{!35, !37, i64 104}
!160 = !{!35, !4, i64 100}
!161 = !{!35, !37, i64 88}
!162 = !{!35, !4, i64 84}
!163 = !{!164, !40, i64 0}
!164 = !{!"PFR_KernItemRec_", !40, i64 0, !5, i64 8, !5, i64 9, !12, i64 10, !4, i64 12, !17, i64 16, !4, i64 24, !4, i64 28}
!165 = distinct !{!165, !49}
!166 = !{!167, !176, i64 296}
!167 = !{!"FT_GlyphSlotRec_", !168, i64 0, !10, i64 8, !24, i64 16, !4, i64 24, !22, i64 32, !169, i64 48, !17, i64 112, !17, i64 120, !170, i64 128, !4, i64 144, !171, i64 152, !4, i64 192, !4, i64 196, !172, i64 200, !4, i64 240, !175, i64 248, !11, i64 256, !17, i64 264, !17, i64 272, !17, i64 280, !11, i64 288, !176, i64 296}
!168 = !{!"p1 _ZTS14FT_LibraryRec_", !11, i64 0}
!169 = !{!"FT_Glyph_Metrics_", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56}
!170 = !{!"FT_Vector_", !17, i64 0, !17, i64 8}
!171 = !{!"FT_Bitmap_", !4, i64 0, !4, i64 4, !4, i64 8, !18, i64 16, !12, i64 24, !5, i64 26, !5, i64 27, !11, i64 32}
!172 = !{!"FT_Outline_", !12, i64 0, !12, i64 2, !173, i64 8, !18, i64 16, !174, i64 24, !4, i64 32}
!173 = !{!"p1 _ZTS10FT_Vector_", !11, i64 0}
!174 = !{!"p1 short", !11, i64 0}
!175 = !{!"p1 _ZTS15FT_SubGlyphRec_", !11, i64 0}
!176 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !11, i64 0}
!177 = !{!178, !179, i64 0}
!178 = !{!"FT_Slot_InternalRec_", !179, i64 0, !4, i64 8, !5, i64 12, !180, i64 16, !170, i64 48, !11, i64 64, !4, i64 72}
!179 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !11, i64 0}
!180 = !{!"FT_Matrix_", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!181 = !{!182, !179, i64 40}
end_hunk_3
