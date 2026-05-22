inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@codeCompare:bb.a

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.j
  store i32 %spec.select.i.i, ptr %i.am, align 4, !tbaa !147
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !136
  %i.ax = icmp sgt i32 %spec.select.i.i, %i.an
  br i1 %i.ax, label %bb.l, label %resizeOpArray.exit.i.i

bb.l:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.ay = sext i32 %i.an to i64
  %i.az = getelementptr inbounds [24 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = sub nsw i32 %spec.select.i.i, %i.an
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = mul nuw nsw i64 %i.bb, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.az, i8 0, i64 %i.bc, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.l, %sqlite3DbRealloc.exit.i.i.i, %bb.k, %bb.i
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !106
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 42
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp4.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.ak, align 8, !tbaa !135
  br label %bb.m

bb.m:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %binaryCompareP5.exit
  %i.bg = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.al, %binaryCompareP5.exit ]
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.ak, align 8, !tbaa !135
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !136
  %i.bk = sext i32 %i.al to i64
  %i.bl = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.bk ; 6 uses
  %i.bm = trunc i32 %3 to i8
  store i8 %i.bm, ptr %i.bl, align 8, !tbaa !137
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %5, ptr %i.bn, align 4, !tbaa !141
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %6, ptr %i.bo, align 8, !tbaa !140
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 %4, ptr %i.bp, align 4, !tbaa !190
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr null, ptr %i.bq, align 8, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 0, ptr %i.br, align 1, !tbaa !191
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 339
  store i8 0, ptr %i.bs, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp4.exit

sqlite3VdbeAddOp4.exit:                           ; preds = %resizeOpArray.exit.i.i, %bb.m
  %.0.i.i14 = phi i32 [ %i.al, %bb.m ], [ 0, %resizeOpArray.exit.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !136 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %sqlite3VdbeChangeP4.exit, label %bb.n

bb.n:                                             ; preds = %sqlite3VdbeAddOp4.exit
  %i.bw = load ptr, ptr %i.aj, align 8, !tbaa !106
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 42
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !129
  %.not.i15 = icmp eq i8 %i.by, 0
  br i1 %.not.i15, label %bb.o, label %sqlite3VdbeChangeP4.exit

bb.o:                                             ; preds = %bb.n
  %i.bz = icmp slt i32 %.0.i.i14, 0
  br i1 %i.bz, label %bb.p, label %sqlite3VdbeChangeP4.exit.sink.split

bb.p:                                             ; preds = %bb.o
  %i.ca = load i32, ptr %i.ak, align 8, !tbaa !135 ; 2 uses
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = icmp slt i32 %i.ca, 1
  br i1 %i.cc, label %sqlite3VdbeChangeP4.exit, label %sqlite3VdbeChangeP4.exit.sink.split

sqlite3VdbeChangeP4.exit.sink.split:              ; preds = %bb.p, %bb.o
  %.0.i = phi i32 [ %i.cb, %bb.p ], [ %.0.i.i14, %bb.o ]
  %i.cd = zext nneg i32 %.0.i to i64
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !191
  %i.ch = sext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !37
  tail call fastcc void @freeP4(i32 noundef %i.ch, ptr noundef %i.cj)
  %i.ck = icmp eq ptr %i.a, null
  store ptr %i.a, ptr %i.ci, align 8
  %spec.select = select i1 %i.ck, i8 0, i8 -4
  store i8 %spec.select, ptr %i.cf, align 1, !tbaa !191
  br label %sqlite3VdbeChangeP4.exit

sqlite3VdbeChangeP4.exit:                         ; preds = %sqlite3VdbeChangeP4.exit.sink.split, %sqlite3VdbeAddOp4.exit, %bb.n, %bb.p
  %i.cl = load ptr, ptr %i.ai, align 8, !tbaa !367 ; 3 uses
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %sqlite3VdbeChangeP5.exit, label %bb.q

bb.q:                                             ; preds = %sqlite3VdbeChangeP4.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !136 ; 2 uses
  %.not5.i = icmp eq ptr %i.cn, null
  br i1 %.not5.i, label %sqlite3VdbeChangeP5.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !135
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [24 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -21
  store i8 %i.ah, ptr %i.cs, align 1, !tbaa !139
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %sqlite3VdbeChangeP4.exit, %bb.q, %bb.r
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @sqlite3VtabOverloadFunction(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(ret: address, provenance) %1, i32 noundef range(i32 1, -2147483648) %2, ptr noundef readonly captures(address_is_null) %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.c = icmp eq ptr %3, null
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %3, align 8, !tbaa !1319
  %.not = icmp eq i8 %i.d, -107
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1589 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 105
  %i.i = load i8, ptr %i.h, align 1, !tbaa !366
  %.not48 = icmp eq i8 %i.i, 0
  br i1 %.not48, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !405  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1849
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.p) #45
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.r, 1                          ; 2 uses
  %i.t = tail call ptr @sqlite3_malloc(i32 noundef %i.s) ; 6 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %sqlite3DbStrDup.exit.thread, label %sqlite3DbStrDup.exit

sqlite3DbStrDup.exit.thread:                      ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.u, align 2, !tbaa !129
  br label %.critedge

sqlite3DbStrDup.exit:                             ; preds = %bb.f
  %i.v = sext i32 %i.s to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.p, i64 %i.v, i1 false)
  %i.w = load i8, ptr %i.t, align 1, !tbaa !37    ; 2 uses
  %.not5055 = icmp eq i8 %i.w, 0
  br i1 %.not5055, label %sqlite3_free.exit, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3DbStrDup.exit, %.lr.ph
  %i.x = phi i8 [ %i.ac, %.lr.ph ], [ %i.w, %sqlite3DbStrDup.exit ]
  %.056 = phi ptr [ %i.ab, %.lr.ph ], [ %i.t, %sqlite3DbStrDup.exit ] ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  store i8 %i.aa, ptr %.056, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %.056, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37  ; 2 uses
  %.not50 = icmp eq i8 %i.ac, 0
  br i1 %.not50, label %sqlite3_free.exit, label %.lr.ph, !llvm.loop !1850

sqlite3_free.exit:                                ; preds = %.lr.ph, %sqlite3DbStrDup.exit
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !1849
  %i.ae = call i32 %i.ad(ptr noundef nonnull %i.k, i32 noundef %2, ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #46
  %i.af = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !28
  %sext.i = shl i64 %i.ag, 32
  %i.ah = ashr exact i64 %sext.i, 32
  %i.ai = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.aj = sub nsw i64 %i.ai, %i.ah
  store i64 %i.aj, ptr @mem.5, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %i.af) #46
  %i.ak = icmp eq i32 %i.ae, 0
  br i1 %i.ak, label %.critedge, label %bb.g

bb.g:                                             ; preds = %sqlite3_free.exit
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #45
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = add i32 %i.am, 56                       ; 3 uses
  %.not.i.i51 = icmp eq ptr %0, null
  br i1 %.not.i.i51, label %sqlite3DbMallocRaw.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !129
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ar = call ptr @sqlite3_malloc(i32 noundef %i.an) ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.ao, align 2, !tbaa !129
  br label %.critedge

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.g
  %i.at = call ptr @sqlite3_malloc(i32 noundef %i.an) ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %sqlite3DbMallocRaw.exit.i, %bb.i
  %.0.i11.i = phi ptr [ %i.at, %sqlite3DbMallocRaw.exit.i ], [ %i.ar, %bb.i ] ; 7 uses
  %i.au = zext i32 %i.an to i64
  %4 = add nsw i64 %i.au, -56
  %.narrow = icmp ugt i32 %i.am, -57
  %i.av = select i1 %.narrow, i64 0, i64 %4
  %i.aw = getelementptr i8, ptr %.0.i11.i, i64 56
  call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.av, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i11.i, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !1851
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 48
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #45
  %i.az = add i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %i.p, i64 %i.az, i1 false)
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !346
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 24
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !485
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !346
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !225
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 4 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !484
  %i.bg = or i8 %i.bf, 4
  store i8 %i.bg, ptr %i.be, align 4, !tbaa !484
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.j, %sqlite3DbMallocRaw.exit.i, %sqlite3DbStrDup.exit.thread, %sqlite3_free.exit, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.k
  %.041 = phi ptr [ %1, %bb.c ], [ %1, %bb.a ], [ %1, %bb.b ], [ %1, %bb.d ], [ %1, %bb.e ], [ %1, %sqlite3_free.exit ], [ %.0.i11.i, %bb.k ], [ %1, %sqlite3DbStrDup.exit.thread ], [ %1, %sqlite3DbMallocRaw.exit.i ], [ %1, %bb.j ], [ %1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret ptr %.041
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeOffset(ptr noundef nonnull captures(none) %0, ptr noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1661 ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = icmp ne i32 %2, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %sqlite3VdbeJumpHere.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !135  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !147  ; 6 uses
  %.not.i.i = icmp sgt i32 %i.h, %i.f
  br i1 %.not.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not23.i.i = icmp eq i32 %i.h, 0
  %i.i = shl nsw i32 %i.h, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.i ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 42 ; 2 uses
  %i.m = load i8, ptr %i.l, align 2, !tbaa !129
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %resizeOpArray.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = mul i32 %spec.select.i.i, 24
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.q = tail call ptr @sqlite3_realloc(ptr noundef %i.p, i32 noundef %i.o) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %bb.e, label %sqlite3DbRealloc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.l, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.d
  store i32 %spec.select.i.i, ptr %i.g, align 4, !tbaa !147
  store ptr %i.q, ptr %i.k, align 8, !tbaa !136
  %i.r = icmp sgt i32 %spec.select.i.i, %i.h
  br i1 %i.r, label %bb.f, label %resizeOpArray.exit.i.i

bb.f:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.s = sext i32 %i.h to i64
  %i.t = getelementptr inbounds [24 x i8], ptr %i.q, i64 %i.s
  %i.u = sub nsw i32 %spec.select.i.i, %i.h
  %i.v = zext nneg i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.v, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.w, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.f, %sqlite3DbRealloc.exit.i.i.i, %bb.e, %bb.c
  %i.x = load ptr, ptr %0, align 8, !tbaa !106
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 42
  %i.z = load i8, ptr %i.y, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.z, 0
  %.pre33 = load i32, ptr %i.e, align 8, !tbaa !135 ; 2 uses
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i, %bb.b
  %i.aa = phi i32 [ %i.f, %bb.b ], [ %.pre33, %resizeOpArray.exit.i.i ]
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.e, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.ae = sext i32 %i.f to i64
  %i.af = getelementptr inbounds [24 x i8], ptr %i.ad, i64 %i.ae ; 6 uses
  store i8 40, ptr %i.af, align 8, !tbaa !137
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %i.b, ptr %i.ag, align 4, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 -1, ptr %i.ah, align 8, !tbaa !140
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !190
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 0, ptr %i.ak, align 1, !tbaa !191
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 339
  store i8 0, ptr %i.al, align 1, !tbaa !104
  %.pre = load i32, ptr %i.e, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %resizeOpArray.exit.i.i, %resizeOpArray.exit._crit_edge.i.i
  %i.am = phi i32 [ %.pre33, %resizeOpArray.exit.i.i ], [ %.pre, %resizeOpArray.exit._crit_edge.i.i ] ; 4 uses
  %i.an = load i32, ptr %i.a, align 4, !tbaa !1661
  %i.ao = load i32, ptr %i.g, align 4, !tbaa !147 ; 6 uses
  %.not.i.i11 = icmp sgt i32 %i.ao, %i.am
  br i1 %.not.i.i11, label %resizeOpArray.exit._crit_edge.i.i17, label %bb.g

bb.g:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %.not23.i.i12 = icmp eq i32 %i.ao, 0
  %i.ap = shl nsw i32 %i.ao, 1
  %spec.select.i.i13 = select i1 %.not23.i.i12, i32 42, i32 %i.ap ; 4 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 42 ; 2 uses
  %i.at = load i8, ptr %i.as, align 2, !tbaa !129
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.h, label %resizeOpArray.exit.i.i14

bb.h:                                             ; preds = %bb.g
  %i.av = mul i32 %spec.select.i.i13, 24
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !136
  %i.ax = tail call ptr @sqlite3_realloc(ptr noundef %i.aw, i32 noundef %i.av) ; 3 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i19, label %bb.i, label %sqlite3DbRealloc.exit.i.i.i20

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.as, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i14

sqlite3DbRealloc.exit.i.i.i20:                    ; preds = %bb.h
  store i32 %spec.select.i.i13, ptr %i.g, align 4, !tbaa !147
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !136
  %i.ay = icmp sgt i32 %spec.select.i.i13, %i.ao
  br i1 %i.ay, label %bb.j, label %resizeOpArray.exit.i.i14

bb.j:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i20
  %i.az = sext i32 %i.ao to i64
  %i.ba = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %i.az
  %i.bb = sub nsw i32 %spec.select.i.i13, %i.ao
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = mul nuw nsw i64 %i.bc, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ba, i8 0, i64 %i.bd, i1 false)
  br label %resizeOpArray.exit.i.i14

resizeOpArray.exit.i.i14:                         ; preds = %bb.j, %sqlite3DbRealloc.exit.i.i.i20, %bb.i, %bb.g
  %i.be = load ptr, ptr %0, align 8, !tbaa !106
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 42
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !129
  %.not24.i.i15 = icmp eq i8 %i.bg, 0
  %.pre35 = load i32, ptr %i.e, align 8, !tbaa !135 ; 2 uses
  br i1 %.not24.i.i15, label %resizeOpArray.exit._crit_edge.i.i17, label %sqlite3VdbeAddOp1.exit

resizeOpArray.exit._crit_edge.i.i17:              ; preds = %resizeOpArray.exit.i.i14, %sqlite3VdbeAddOp2.exit
  %i.bh = phi i32 [ %i.am, %sqlite3VdbeAddOp2.exit ], [ %.pre35, %resizeOpArray.exit.i.i14 ]
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.e, align 8, !tbaa !135
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !136
  %i.bl = sext i32 %i.am to i64
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.bl ; 4 uses
  store i8 21, ptr %i.bm, align 8, !tbaa !137
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 %i.an, ptr %i.bn, align 4, !tbaa !141
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 0, ptr %i.bp, align 1, !tbaa !191
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.bq, align 1, !tbaa !104
  %.pre34 = load i32, ptr %i.e, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %resizeOpArray.exit.i.i14, %resizeOpArray.exit._crit_edge.i.i17
  %i.br = phi i32 [ %.pre34, %resizeOpArray.exit._crit_edge.i.i17 ], [ %.pre35, %resizeOpArray.exit.i.i14 ] ; 3 uses
  %.0.i.i16 = phi i32 [ %i.am, %resizeOpArray.exit._crit_edge.i.i17 ], [ 0, %resizeOpArray.exit.i.i14 ] ; 3 uses
  %i.bs = load i32, ptr %i.g, align 4, !tbaa !147 ; 6 uses
  %.not.i.i21 = icmp sgt i32 %i.bs, %i.br
  br i1 %.not.i.i21, label %resizeOpArray.exit._crit_edge.i.i27, label %bb.k

bb.k:                                             ; preds = %sqlite3VdbeAddOp1.exit
  %.not23.i.i22 = icmp eq i32 %i.bs, 0
  %i.bt = shl nsw i32 %i.bs, 1
  %spec.select.i.i23 = select i1 %.not23.i.i22, i32 42, i32 %i.bt ; 4 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 42 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !129
end_hunk_0
