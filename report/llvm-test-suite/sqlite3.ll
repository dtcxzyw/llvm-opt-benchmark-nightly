inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 107
begin_hunk_0_@createTableStmt:bb.a

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.0.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.i, %bb.c ], [ %.0.i, %bb.b ]
  %i.j = add nsw i32 %.1.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i, i64 1
  br label %bb.b, !llvm.loop !1566

identLength.exit:                                 ; preds = %bb.b
  %i.l = add i32 %.05368, 2
  %i.m = add i32 %i.l, %.0.i                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399  ; 2 uses
  %.not61 = icmp eq ptr %i.o, null
  br i1 %.not61, label %bb.f, label %bb.e

bb.e:                                             ; preds = %identLength.exit
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #42
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.m, 1
  %i.s = add i32 %i.r, %i.q
  br label %bb.f

bb.f:                                             ; preds = %identLength.exit, %bb.e
  %.154 = phi i32 [ %i.s, %bb.e ], [ %i.m, %identLength.exit ] ; 2 uses
  %i.t = add nuw nsw i32 %.05567, 1               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.069, i64 40
  %exitcond.not = icmp eq i32 %i.t, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1567

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.v = add i32 %.154, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.053.lcssa = phi i32 [ 2, %bb.a ], [ %i.v, %._crit_edge.loopexit ]
  %i.w = load ptr, ptr %1, align 8, !tbaa !402
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %.05.i62 = phi ptr [ %i.w, %._crit_edge ], [ %i.aa, %bb.i ] ; 2 uses
  %.0.i63 = phi i32 [ 0, %._crit_edge ], [ %i.z, %bb.i ] ; 3 uses
  %i.x = load i8, ptr %.05.i62, align 1, !tbaa !37
  switch i8 %i.x, label %bb.i [
    i8 0, label %identLength.exit65
    i8 34, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %.0.i63, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i64 = phi i32 [ %i.y, %bb.h ], [ %.0.i63, %bb.g ]
  %i.z = add nsw i32 %.1.i64, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i62, i64 1
  br label %bb.g, !llvm.loop !1566

identLength.exit65:                               ; preds = %bb.g
  %i.ab = add i32 %.053.lcssa, %.0.i63            ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 50                  ; 3 uses
  %.str.344..str.347 = select i1 %i.ac, ptr @.str.344, ptr @.str.347
  %.str.345..str.348 = select i1 %i.ac, ptr @.str.345, ptr @.str.348
  %i.ad = mul nsw i32 %i.d, 6
  %i.ae = add nsw i32 %i.ad, 35
  %i.af = add nsw i32 %i.ae, %i.ab                ; 7 uses
  %i.ag = tail call ptr @sqlite3_malloc(i32 noundef %i.af) ; 15 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %identLength.exit65
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.ai, align 2, !tbaa !129
  br label %bb.p

bb.k:                                             ; preds = %identLength.exit65
  %.not = icmp eq i32 %2, 0
  %i.aj = select i1 %.not, ptr @.str.350, ptr @.str.349
  %i.ak = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.aj) ; 0 uses
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #42
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %i.a, align 4, !tbaa !4
  %i.an = load ptr, ptr %1, align 8, !tbaa !402
  call fastcc void @identPut(ptr noundef %i.ag, ptr noundef %i.a, ptr noundef %i.an)
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ap = add nsw i32 %i.ao, 1                    ; 4 uses
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 %i.aq
  store i8 40, ptr %i.ar, align 1, !tbaa !37
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !261 ; 3 uses
  %i.at = load i32, ptr %i.c, align 8, !tbaa !254
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph75.preheader, label %._crit_edge76

.lr.ph75.preheader:                               ; preds = %bb.k
  %.str.21..str.346 = select i1 %i.ac, ptr @.str.21, ptr @.str.346
  %i.av = sub nsw i32 %i.af, %i.ap
  %i.aw = sext i32 %i.ap to i64
  %i.ax = getelementptr inbounds i8, ptr %i.ag, i64 %i.aw ; 2 uses
  %i.ay = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.av, ptr noundef nonnull %i.ax, ptr noundef nonnull %.str.21..str.346) ; 0 uses
  %i.az = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #42
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add i32 %i.ap, %i.ba
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !4
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !264
  call fastcc void @identPut(ptr noundef %i.ag, ptr noundef %i.a, ptr noundef %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !399 ; 3 uses
  %.not60.peel = icmp eq ptr %i.be, null
  br i1 %.not60.peel, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph75.preheader
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.bg = add nsw i32 %i.bf, 1                    ; 3 uses
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds i8, ptr %i.ag, i64 %i.bh
  store i8 32, ptr %i.bi, align 1, !tbaa !37
  %i.bj = sub nsw i32 %i.af, %i.bg
  %i.bk = sext i32 %i.bg to i64
  %i.bl = getelementptr inbounds i8, ptr %i.ag, i64 %i.bk
  %i.bm = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.bj, ptr noundef nonnull %i.bl, ptr noundef nonnull @.str, ptr noundef nonnull %i.be) ; 0 uses
  %i.bn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #42
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = add i32 %i.bg, %i.bo
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph75.preheader
  %i.bq = load i32, ptr %i.c, align 8, !tbaa !254
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %.lr.ph75, label %._crit_edge76.loopexit

.lr.ph75:                                         ; preds = %bb.m, %bb.o
  %.173.pn = phi ptr [ %.173, %bb.o ], [ %i.as, %bb.m ] ; 2 uses
  %.15671 = phi i32 [ %i.co, %bb.o ], [ 1, %bb.m ]
  %.173 = getelementptr inbounds nuw i8, ptr %.173.pn, i64 40 ; 2 uses
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.bt = sub nsw i32 %i.af, %i.bs
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds i8, ptr %i.ag, i64 %i.bu ; 2 uses
  %i.bw = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.bt, ptr noundef nonnull %i.bv, ptr noundef nonnull %.str.344..str.347) ; 0 uses
  %i.bx = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bv) #42
  %i.by = trunc i64 %i.bx to i32
  %i.bz = add i32 %i.bs, %i.by
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !4
  %i.ca = load ptr, ptr %.173, align 8, !tbaa !264
  call fastcc void @identPut(ptr noundef %i.ag, ptr noundef %i.a, ptr noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %.173.pn, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !399 ; 3 uses
  %.not60 = icmp eq ptr %i.cc, null
  br i1 %.not60, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph75
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1                    ; 3 uses
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds i8, ptr %i.ag, i64 %i.cf
  store i8 32, ptr %i.cg, align 1, !tbaa !37
  %i.ch = sub nsw i32 %i.af, %i.ce
  %i.ci = sext i32 %i.ce to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ci
  %i.ck = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.ch, ptr noundef nonnull %i.cj, ptr noundef nonnull @.str, ptr noundef nonnull %i.cc) ; 0 uses
  %i.cl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cc) #42
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = add i32 %i.ce, %i.cm
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !4
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph75, %bb.n
  %i.co = add nuw nsw i32 %.15671, 1              ; 2 uses
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !254
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph75, label %._crit_edge76.loopexit, !llvm.loop !1568

._crit_edge76.loopexit:                           ; preds = %bb.o, %bb.m
  %.pre = load i32, ptr %i.a, align 4, !tbaa !4
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %bb.k
  %i.cr = phi i32 [ %.pre, %._crit_edge76.loopexit ], [ %i.ap, %bb.k ] ; 2 uses
  %i.cs = sub nsw i32 %i.af, %i.cr
  %i.ct = sext i32 %i.cr to i64
  %i.cu = getelementptr inbounds i8, ptr %i.ag, i64 %i.ct
  %i.cv = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.cs, ptr noundef nonnull %i.cu, ptr noundef nonnull @.str, ptr noundef nonnull %.str.345..str.348) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge76, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret ptr %i.ag
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3NestedParse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #5 {
bb.a:
  %i.a = alloca [350 x i8], align 16              ; 4 uses
  %2 = alloca %struct.StrAccum, align 8           ; 11 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i32, ptr %i.b, align 8, !tbaa !252
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.d = load ptr, ptr %0, align 8, !tbaa !244    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %i.a, ptr %2, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 350, ptr %i.g, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 2 uses
  store i8 1, ptr %i.h, align 1, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.i, align 2, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i8 0, ptr %i.j, align 8, !tbaa !36
  call fastcc void @vxprintf(ptr noundef %2, i32 noundef 1, ptr noundef readonly %1, ptr noundef nonnull %3)
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !31   ; 5 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %sqlite3StrAccumFinish.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !37
  %i.o = load i8, ptr %i.h, align 1, !tbaa !34
  %.not15.i.i = icmp eq i8 %i.o, 0
  br i1 %.not15.i.i, label %sqlite3StrAccumFinish.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.q = icmp eq ptr %i.k, %i.p
  br i1 %i.q, label %bb.e, label %sqlite3StrAccumFinish.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.l, 1                      ; 2 uses
  %i.s = call ptr @sqlite3_malloc(i32 noundef %i.r) ; 3 uses
  %.not16.i.i = icmp eq ptr %i.s, null
  br i1 %.not16.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = sext i32 %i.r to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %sqlite3StrAccumFinish.exit.i

bb.g:                                             ; preds = %bb.e
  store i8 1, ptr %i.j, align 8, !tbaa !36
  br label %sqlite3StrAccumFinish.exit.i

sqlite3StrAccumFinish.exit.i:                     ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %i.u = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ null, %bb.g ], [ %i.s, %bb.f ], [ null, %bb.b ] ; 3 uses
  %i.v = load i8, ptr %i.j, align 8, !tbaa !36
  %i.w = icmp ne i8 %i.v, 0
  %i.x = icmp ne ptr %i.d, null
  %or.cond.i = and i1 %i.x, %i.w
  br i1 %or.cond.i, label %bb.h, label %sqlite3VMPrintf.exit

bb.h:                                             ; preds = %sqlite3StrAccumFinish.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 42
  store i8 1, ptr %i.y, align 2, !tbaa !129
  br label %sqlite3VMPrintf.exit

sqlite3VMPrintf.exit:                             ; preds = %sqlite3StrAccumFinish.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.z = icmp eq ptr %i.u, null
  br i1 %i.z, label %bb.i, label %sqlite3_free.exit

bb.i:                                             ; preds = %sqlite3VMPrintf.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !244
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 42
  store i8 1, ptr %i.ab, align 2, !tbaa !129
  br label %bb.j

sqlite3_free.exit:                                ; preds = %sqlite3VMPrintf.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 35 ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !380
  %i.ae = add i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !380
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %.sroa.0.0.copyload = load <168 x i8>, ptr %i.af, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.af, i8 0, i64 168, i1 false)
  %i.ag = call fastcc i32 @sqlite3RunParser(ptr noundef nonnull %0, ptr noundef nonnull %i.u, ptr noundef null) ; 0 uses
  %i.ah = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28
  %sext.i = shl i64 %i.ai, 32
  %i.aj = ashr exact i64 %sext.i, 32
  %i.ak = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.al = sub nsw i64 %i.ak, %i.aj
  store i64 %i.al, ptr @mem.5, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %i.ah) #43
  store <168 x i8> %.sroa.0.0.copyload, ptr %i.af, align 8
  %i.am = load i8, ptr %i.ac, align 1, !tbaa !380
  %i.an = add i8 %i.am, -1
  store i8 %i.an, ptr %i.ac, align 1, !tbaa !380
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %sqlite3_free.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ChangeCookie(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1483  ; 2 uses
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = add i8 %i.b, -1                          ; 2 uses
  store i8 %i.d, ptr %i.a, align 1, !tbaa !1483
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  br label %sqlite3GetTempReg.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1297
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !1297
  br label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !244
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !367  ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !235
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds [48 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !236
  %i.t = load i32, ptr %i.s, align 8, !tbaa !280
  %i.u = add nsw i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 6 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !135  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 28 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !147  ; 6 uses
  %.not.i.i = icmp sgt i32 %i.y, %i.w
  br i1 %.not.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %sqlite3GetTempReg.exit
  %.not23.i.i = icmp eq i32 %i.y, 0
  %i.z = shl nsw i32 %i.y, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.z ; 4 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 42 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !129
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %resizeOpArray.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.af = mul i32 %spec.select.i.i, 24
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.ah = tail call ptr @sqlite3_realloc(ptr noundef %i.ag, i32 noundef %i.af) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %bb.f, label %sqlite3DbRealloc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.ac, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.e
  store i32 %spec.select.i.i, ptr %i.x, align 4, !tbaa !147
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !136
  %i.ai = icmp sgt i32 %spec.select.i.i, %i.y
  br i1 %i.ai, label %bb.g, label %resizeOpArray.exit.i.i

bb.g:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.aj = sext i32 %i.y to i64
  %i.ak = getelementptr inbounds [24 x i8], ptr %i.ah, i64 %i.aj
  %i.al = sub nsw i32 %spec.select.i.i, %i.y
  %i.am = zext nneg i32 %i.al to i64
  %i.an = mul nuw nsw i64 %i.am, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ak, i8 0, i64 %i.an, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.g, %sqlite3DbRealloc.exit.i.i.i, %bb.f, %bb.d
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 42
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.aq, 0
  %.pre14 = load i32, ptr %i.v, align 8, !tbaa !135 ; 2 uses
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i, %sqlite3GetTempReg.exit
  %i.ar = phi i32 [ %i.w, %sqlite3GetTempReg.exit ], [ %.pre14, %resizeOpArray.exit.i.i ]
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.v, align 8, !tbaa !135
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !136
  %i.av = sext i32 %i.w to i64
  %i.aw = getelementptr inbounds [24 x i8], ptr %i.au, i64 %i.av ; 6 uses
  store i8 46, ptr %i.aw, align 8, !tbaa !137
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %i.u, ptr %i.ax, align 4, !tbaa !141
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %.0.i, ptr %i.ay, align 8, !tbaa !140
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !190
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 0, ptr %i.bb, align 1, !tbaa !191
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 339
  store i8 0, ptr %i.bc, align 1, !tbaa !104
  %.pre = load i32, ptr %i.v, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %resizeOpArray.exit.i.i, %resizeOpArray.exit._crit_edge.i.i
  %i.bd = phi i32 [ %.pre14, %resizeOpArray.exit.i.i ], [ %.pre, %resizeOpArray.exit._crit_edge.i.i ] ; 3 uses
  %i.be = load i32, ptr %i.x, align 4, !tbaa !147 ; 6 uses
  %.not.i11 = icmp sgt i32 %i.be, %i.bd
  br i1 %.not.i11, label %bb.l, label %bb.h

bb.h:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %.not23.i = icmp eq i32 %i.be, 0
  %i.bf = shl nsw i32 %i.be, 1
  %spec.select.i = select i1 %.not23.i, i32 42, i32 %i.bf ; 4 uses
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !106
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 42 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !129
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %resizeOpArray.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bl = mul i32 %spec.select.i, 24
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !136
  %i.bn = tail call ptr @sqlite3_realloc(ptr noundef %i.bm, i32 noundef %i.bl) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %bb.j, label %sqlite3DbRealloc.exit.i.i

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.bi, align 2, !tbaa !129
  br label %resizeOpArray.exit.i

sqlite3DbRealloc.exit.i.i:                        ; preds = %bb.i
  store i32 %spec.select.i, ptr %i.x, align 4, !tbaa !147
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !136
  %i.bo = icmp sgt i32 %spec.select.i, %i.be
  br i1 %i.bo, label %bb.k, label %resizeOpArray.exit.i

bb.k:                                             ; preds = %sqlite3DbRealloc.exit.i.i
  %i.bp = sext i32 %i.be to i64
  %i.bq = getelementptr inbounds [24 x i8], ptr %i.bn, i64 %i.bp
  %i.br = sub nsw i32 %spec.select.i, %i.be
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = mul nuw nsw i64 %i.bs, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bq, i8 0, i64 %i.bt, i1 false)
  br label %resizeOpArray.exit.i

resizeOpArray.exit.i:                             ; preds = %bb.k, %sqlite3DbRealloc.exit.i.i, %bb.j, %bb.h
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 42
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !129
  %.not24.i = icmp eq i8 %i.bw, 0
  br i1 %.not24.i, label %resizeOpArray.exit._crit_edge.i, label %sqlite3VdbeAddOp3.exit

resizeOpArray.exit._crit_edge.i:                  ; preds = %resizeOpArray.exit.i
  %.pre.i = load i32, ptr %i.v, align 8, !tbaa !135
  br label %bb.l

bb.l:                                             ; preds = %resizeOpArray.exit._crit_edge.i, %sqlite3VdbeAddOp2.exit
  %i.bx = phi i32 [ %.pre.i, %resizeOpArray.exit._crit_edge.i ], [ %i.bd, %sqlite3VdbeAddOp2.exit ]
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.v, align 8, !tbaa !135
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !136
  %i.cb = sext i32 %i.bd to i64
  %i.cc = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %i.cb ; 6 uses
  store i8 3, ptr %i.cc, align 8, !tbaa !137
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %1, ptr %i.cd, align 4, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 0, ptr %i.ce, align 8, !tbaa !140
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 %.0.i, ptr %i.cf, align 4, !tbaa !190
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr null, ptr %i.cg, align 8, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store i8 0, ptr %i.ch, align 1, !tbaa !191
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 339
  store i8 0, ptr %i.ci, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %resizeOpArray.exit.i, %bb.l
  %.not.i13 = icmp eq i32 %.0.i, 0
  br i1 %.not.i13, label %sqlite3ReleaseTempReg.exit, label %bb.m

bb.m:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.cj = load i8, ptr %i.a, align 1, !tbaa !1483 ; 3 uses
end_hunk_0
begin_hunk_1_@sqlite3FindInIndex:bb.a
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.t, label %sqlite3VdbeUsesBtree.exit

bb.t:                                             ; preds = %sqlite3SchemaToIndex.exit
  %i.bn = or i32 %i.bk, %i.bi
  store i32 %i.bn, ptr %i.bj, align 8, !tbaa !281
  br label %sqlite3VdbeUsesBtree.exit

sqlite3VdbeUsesBtree.exit:                        ; preds = %sqlite3SchemaToIndex.exit, %bb.t
  %i.bo = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %i.ao, i32 noundef 9, i32 noundef %i.as) ; 3 uses
  %i.bp = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.ao, i32 noundef 46, i32 noundef 1, i32 noundef %i.as) ; 0 uses
  tail call fastcc void @sqlite3OpenTable(ptr noundef nonnull %0, i32 noundef %i.b, i32 noundef %.1.i, ptr noundef %i.av, i32 noundef 12)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !135 ; 2 uses
  %i.bs = icmp sgt i32 %i.bo, -1
  %i.bt = icmp sgt i32 %i.br, %i.bo
  %or.cond.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i, label %bb.u, label %.critedge.thread124

bb.u:                                             ; preds = %sqlite3VdbeUsesBtree.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %.critedge.thread124, label %.critedge.thread124.sink.split

bb.v:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1198
  %i.by = tail call fastcc ptr @sqlite3BinaryCompareCollSeq(ptr noundef nonnull %0, ptr noundef %i.bx, ptr noundef nonnull %i.ac)
  %i.bz = load ptr, ptr %i.n, align 8, !tbaa !1215
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1226 ; 2 uses
  %i.cc = tail call fastcc signext i8 @comparisonAffinity(ptr noundef nonnull %1) ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !261
  %i.cf = zext nneg i32 %i.an to i64
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 34
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !1310
  %i.cj = icmp eq i8 %i.ci, %i.cc
  %i.ck = icmp eq i8 %i.cc, 98
  %i.cl = or i1 %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %.089129 = load ptr, ptr %i.cm, align 8, !tbaa !268 ; 2 uses
  %i.cn = icmp ne ptr %.089129, null
  %or.cond3130 = select i1 %i.cn, i1 %i.cl, i1 false
  br i1 %or.cond3130, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.not105 = icmp eq i32 %2, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %sqlite3VdbeJumpHere.exit121
  %.089131 = phi ptr [ %.089129, %.lr.ph ], [ %.089, %sqlite3VdbeJumpHere.exit121 ] ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.089131, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !271
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = icmp eq i32 %i.cw, %i.an
  br i1 %i.cx, label %bb.x, label %sqlite3VdbeJumpHere.exit121

bb.x:                                             ; preds = %bb.w
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !235
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !236
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 145
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !240
  %i.dd = getelementptr inbounds nuw i8, ptr %.089131, i64 80
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1317
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !72
  %i.dg = tail call fastcc ptr @sqlite3FindCollSeq(ptr noundef %i.al, i8 noundef zeroext %i.dc, ptr noundef %i.df, i32 noundef -1, i32 noundef 0)
  %i.dh = icmp eq ptr %i.by, %i.dg
  br i1 %i.dh, label %bb.y, label %sqlite3VdbeJumpHere.exit121

bb.y:                                             ; preds = %bb.x
  br i1 %.not105, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr inbounds nuw i8, ptr %.089131, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !269
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.aa, label %sqlite3VdbeJumpHere.exit121

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %.089131, i64 44
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !1075
  %.not106 = icmp eq i8 %i.dm, 0
  br i1 %.not106, label %sqlite3VdbeJumpHere.exit121, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.dn = load i32, ptr %i.cp, align 8, !tbaa !1297
  %i.do = add nsw i32 %i.dn, 1                    ; 3 uses
  store i32 %i.do, ptr %i.cp, align 8, !tbaa !1297
  %i.dp = tail call fastcc ptr @sqlite3IndexKeyinfo(ptr noundef nonnull %0, ptr noundef nonnull %.089131)
  %i.dq = getelementptr inbounds nuw i8, ptr %.089131, i64 64
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !389 ; 2 uses
  %.not.i107 = icmp eq ptr %i.dr, null
  br i1 %.not.i107, label %sqlite3SchemaToIndex.exit116, label %.preheader.i108

.preheader.i108:                                  ; preds = %bb.ab
  %i.ds = load i32, ptr %i.cq, align 8, !tbaa !278 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.i110, label %sqlite3SchemaToIndex.exit116

.lr.ph.i110:                                      ; preds = %.preheader.i108
  %i.du = load ptr, ptr %i.co, align 8, !tbaa !235
  %wide.trip.count.i111 = zext nneg i32 %i.ds to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i110
  %indvars.iv.i112 = phi i64 [ 0, %.lr.ph.i110 ], [ %indvars.iv.next.i113, %bb.ad ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %i.du, i64 %indvars.iv.i112
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !236
  %i.dy = icmp eq ptr %i.dx, %i.dr
  br i1 %i.dy, label %.loopexit.loopexit.split.loop.exit13.i115, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, %wide.trip.count.i111
  br i1 %exitcond.not.i114, label %sqlite3SchemaToIndex.exit116, label %bb.ac, !llvm.loop !279

.loopexit.loopexit.split.loop.exit13.i115:        ; preds = %bb.ac
  %i.dz = trunc nuw nsw i64 %indvars.iv.i112 to i32
  br label %sqlite3SchemaToIndex.exit116

sqlite3SchemaToIndex.exit116:                     ; preds = %bb.ad, %bb.ab, %.preheader.i108, %.loopexit.loopexit.split.loop.exit13.i115
  %.1.i109 = phi i32 [ -1000000, %bb.ab ], [ 0, %.preheader.i108 ], [ %i.dz, %.loopexit.loopexit.split.loop.exit13.i115 ], [ %i.ds, %bb.ad ] ; 2 uses
  %i.ea = shl nuw i32 1, %.1.i109                 ; 2 uses
  %i.eb = load i32, ptr %i.cr, align 8, !tbaa !281 ; 2 uses
  %i.ec = and i32 %i.eb, %i.ea
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.ae, label %sqlite3VdbeUsesBtree.exit117

bb.ae:                                            ; preds = %sqlite3SchemaToIndex.exit116
  %i.ee = or i32 %i.eb, %i.ea
  store i32 %i.ee, ptr %i.cr, align 8, !tbaa !281
  br label %sqlite3VdbeUsesBtree.exit117

sqlite3VdbeUsesBtree.exit117:                     ; preds = %sqlite3SchemaToIndex.exit116, %bb.ae
  %i.ef = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %i.ao, i32 noundef 9, i32 noundef %i.do) ; 3 uses
  %i.eg = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.ao, i32 noundef 46, i32 noundef 1, i32 noundef %i.do) ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.089131, i64 40
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !1065
  %i.ej = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %i.ao, i32 noundef 12, i32 noundef %i.b, i32 noundef %i.ei, i32 noundef %.1.i109, ptr noundef %i.dp, i32 noundef -9) ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.089131, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !269
  %i.em = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.ao, i32 noundef 97, i32 noundef %i.b, i32 noundef %i.el) ; 0 uses
  %i.en = load i32, ptr %i.cs, align 8, !tbaa !135 ; 2 uses
  %i.eo = icmp sgt i32 %i.ef, -1
  %i.ep = icmp sgt i32 %i.en, %i.ef
  %or.cond.i119 = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond.i119, label %bb.af, label %.critedge.thread124

bb.af:                                            ; preds = %sqlite3VdbeUsesBtree.exit117
  %i.eq = load ptr, ptr %i.ct, align 8, !tbaa !136 ; 2 uses
  %.not.i.i120 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i120, label %.critedge.thread124, label %.critedge.thread124.sink.split

sqlite3VdbeJumpHere.exit121:                      ; preds = %bb.w, %bb.x, %bb.z, %bb.aa
  %i.er = getelementptr inbounds nuw i8, ptr %.089131, i64 56
  %.089 = load ptr, ptr %i.er, align 8, !tbaa !268 ; 2 uses
  %.not161 = icmp eq ptr %.089, null
  br i1 %.not161, label %.critedge.thread, label %bb.w, !llvm.loop !1834

.critedge.thread:                                 ; preds = %sqlite3VdbeJumpHere.exit121, %bb.v, %bb.f, %bb.g, %bb.i, %bb.k, %bb.l, %bb.a, %bb.o, %bb.n, %bb.m, %bb.j, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  tail call fastcc void @sqlite3CodeSubselect(ptr noundef %0, ptr noundef %1)
  br label %bb.ag

.critedge.thread124.sink.split:                   ; preds = %bb.af, %bb.u
  %.sink160 = phi i32 [ %i.bo, %bb.u ], [ %i.ef, %bb.af ]
  %.sink158 = phi ptr [ %i.bv, %bb.u ], [ %i.eq, %bb.af ]
  %.sink = phi i32 [ %i.br, %bb.u ], [ %i.en, %bb.af ]
  %.3126.ph = phi i32 [ 1, %bb.u ], [ 3, %bb.af ]
  %i.es = zext nneg i32 %.sink160 to i64
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %.sink158, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 %.sink, ptr %i.eu, align 8, !tbaa !140
  br label %.critedge.thread124

.critedge.thread124:                              ; preds = %.critedge.thread124.sink.split, %bb.af, %sqlite3VdbeUsesBtree.exit117, %bb.u, %sqlite3VdbeUsesBtree.exit
  %.3126 = phi i32 [ 3, %bb.af ], [ 1, %sqlite3VdbeUsesBtree.exit ], [ 1, %bb.u ], [ 3, %sqlite3VdbeUsesBtree.exit117 ], [ %.3126.ph, %.critedge.thread124.sink.split ]
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.b, ptr %i.ev, align 8, !tbaa !1330
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge.thread124, %.critedge.thread
  %.4 = phi i32 [ 2, %.critedge.thread ], [ %.3126, %.critedge.thread124 ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3CodeSubselect(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.sroa.6 = alloca { ptr, [1 x ptr] }, align 8   ; 5 uses
  %2 = alloca %struct.SelectDest, align 4         ; 8 uses
  %3 = alloca %struct.SelectDest, align 4         ; 9 uses
  %i.b = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef %0) ; 48 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3VdbeJumpHere.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !1335
  %i.f = and i16 %i.e, 32
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.c, label %sqlite3VdbeAddOp2.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1499
  %.not83 = icmp eq ptr %i.h, null
  br i1 %.not83, label %bb.d, label %sqlite3VdbeAddOp2.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1297
  %i.k = add nsw i32 %i.j, 1                      ; 3 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !1297
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 6 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !135  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !147  ; 6 uses
  %.not.i.i = icmp sgt i32 %i.o, %i.m
  br i1 %.not.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not23.i.i = icmp eq i32 %i.o, 0
  %i.p = shl nsw i32 %i.o, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.p ; 4 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 42 ; 2 uses
  %i.t = load i8, ptr %i.s, align 2, !tbaa !129
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %resizeOpArray.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.v = mul i32 %spec.select.i.i, 24
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !136
  %i.x = tail call ptr @sqlite3_realloc(ptr noundef %i.w, i32 noundef %i.v) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %bb.g, label %sqlite3DbRealloc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.s, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.f
  store i32 %spec.select.i.i, ptr %i.n, align 4, !tbaa !147
  store ptr %i.x, ptr %i.r, align 8, !tbaa !136
  %i.y = icmp sgt i32 %spec.select.i.i, %i.o
  br i1 %i.y, label %bb.h, label %resizeOpArray.exit.i.i

bb.h:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.z = sext i32 %i.o to i64
  %i.aa = getelementptr inbounds [24 x i8], ptr %i.x, i64 %i.z
  %i.ab = sub nsw i32 %spec.select.i.i, %i.o
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.ad, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.h, %sqlite3DbRealloc.exit.i.i.i, %bb.g, %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 42
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !129
  %.not24.i.i = icmp eq i8 %i.ag, 0
  %.pre203 = load i32, ptr %i.l, align 8, !tbaa !135 ; 2 uses
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp1.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i, %bb.d
  %i.ah = phi i32 [ %i.m, %bb.d ], [ %.pre203, %resizeOpArray.exit.i.i ]
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.l, align 8, !tbaa !135
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.al = sext i32 %i.m to i64
  %i.am = getelementptr inbounds [24 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  store i8 9, ptr %i.am, align 8, !tbaa !137
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.k, ptr %i.an, align 4, !tbaa !141
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 0, ptr %i.ap, align 1, !tbaa !191
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.aq, align 1, !tbaa !104
  %.pre = load i32, ptr %i.l, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %resizeOpArray.exit.i.i, %resizeOpArray.exit._crit_edge.i.i
  %i.ar = phi i32 [ %.pre203, %resizeOpArray.exit.i.i ], [ %.pre, %resizeOpArray.exit._crit_edge.i.i ] ; 4 uses
  %i.as = load i32, ptr %i.n, align 4, !tbaa !147 ; 6 uses
  %.not.i.i98 = icmp sgt i32 %i.as, %i.ar
  br i1 %.not.i.i98, label %bb.m, label %bb.i

bb.i:                                             ; preds = %sqlite3VdbeAddOp1.exit
  %.not23.i.i99 = icmp eq i32 %i.as, 0
  %i.at = shl nsw i32 %i.as, 1
  %spec.select.i.i100 = select i1 %.not23.i.i99, i32 42, i32 %i.at ; 4 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 42 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !129
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %resizeOpArray.exit.i.i101

bb.j:                                             ; preds = %bb.i
  %i.az = mul i32 %spec.select.i.i100, 24
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !136
  %i.bb = tail call ptr @sqlite3_realloc(ptr noundef %i.ba, i32 noundef %i.az) ; 3 uses
  %.not.i.i.i.i106 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i106, label %bb.k, label %sqlite3DbRealloc.exit.i.i.i107

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.aw, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i101

sqlite3DbRealloc.exit.i.i.i107:                   ; preds = %bb.j
  store i32 %spec.select.i.i100, ptr %i.n, align 4, !tbaa !147
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !136
  %i.bc = icmp sgt i32 %spec.select.i.i100, %i.as
  br i1 %i.bc, label %bb.l, label %resizeOpArray.exit.i.i101

bb.l:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i107
  %i.bd = sext i32 %i.as to i64
  %i.be = getelementptr inbounds [24 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = sub nsw i32 %spec.select.i.i100, %i.as
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = mul nuw nsw i64 %i.bg, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.be, i8 0, i64 %i.bh, i1 false)
  br label %resizeOpArray.exit.i.i101

resizeOpArray.exit.i.i101:                        ; preds = %bb.l, %sqlite3DbRealloc.exit.i.i.i107, %bb.k, %bb.i
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 42
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !129
  %.not24.i.i102 = icmp eq i8 %i.bk, 0
  br i1 %.not24.i.i102, label %resizeOpArray.exit._crit_edge.i.i104, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i104:             ; preds = %resizeOpArray.exit.i.i101
  %.pre.i.i105 = load i32, ptr %i.l, align 8, !tbaa !135
  br label %bb.m

bb.m:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i104, %sqlite3VdbeAddOp1.exit
  %i.bl = phi i32 [ %.pre.i.i105, %resizeOpArray.exit._crit_edge.i.i104 ], [ %i.ar, %sqlite3VdbeAddOp1.exit ]
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.l, align 8, !tbaa !135
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !136
  %i.bp = sext i32 %i.ar to i64
  %i.bq = getelementptr inbounds [24 x i8], ptr %i.bo, i64 %i.bp ; 6 uses
  store i8 46, ptr %i.bq, align 8, !tbaa !137
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 1, ptr %i.br, align 4, !tbaa !141
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.k, ptr %i.bs, align 8, !tbaa !140
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !190
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr null, ptr %i.bu, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 0, ptr %i.bv, align 1, !tbaa !191
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  store i8 0, ptr %i.bw, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.m, %resizeOpArray.exit.i.i101, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.ar, %bb.m ], [ 0, %resizeOpArray.exit.i.i101 ] ; 6 uses
  %i.bx = load i8, ptr %1, align 8, !tbaa !1311   ; 2 uses
  switch i8 %i.bx, label %bb.cc [
    i8 64, label %bb.n
    i8 17, label %bb.bm
    i8 110, label %bb.bm
  ]

bb.n:                                             ; preds = %sqlite3VdbeAddOp2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.o, %bb.n
  %.tr.i.in = phi ptr [ %i.by, %bb.n ], [ %i.ce, %bb.o ]
  %.tr.i = load ptr, ptr %.tr.i.in, align 8, !tbaa !1332 ; 5 uses
  %i.bz = load i8, ptr %.tr.i, align 8, !tbaa !1311
  switch i8 %i.bz, label %bb.q [
    i8 110, label %bb.o
    i8 31, label %bb.p
  ]

bb.o:                                             ; preds = %tailrecurse.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1210
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1212
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1201
  br label %tailrecurse.i

bb.p:                                             ; preds = %tailrecurse.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %.val.i = load ptr, ptr %i.cf, align 8, !tbaa !77
  %i.cg = getelementptr i8, ptr %.tr.i, i64 48
  %.val7.i = load i32, ptr %i.cg, align 8
  %i.ch = tail call fastcc signext i8 @sqlite3AffinityType(ptr %.val.i, i32 %.val7.i), !inline_history !1562
  br label %sqlite3ExprAffinity.exit

bb.q:                                             ; preds = %tailrecurse.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr.i, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !1563
  br label %sqlite3ExprAffinity.exit

sqlite3ExprAffinity.exit:                         ; preds = %bb.p, %bb.q
  %.0.i = phi i8 [ %i.cj, %bb.q ], [ %i.ch, %bb.p ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !1298 ; 3 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !1298
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  store i32 %i.cl, ptr %i.cn, align 8, !tbaa !1330
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 14 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !135 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 8 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !147 ; 6 uses
  %.not.i.i108 = icmp sgt i32 %i.cr, %i.cp
  br i1 %.not.i.i108, label %resizeOpArray.exit._crit_edge.i.i114, label %bb.r

bb.r:                                             ; preds = %sqlite3ExprAffinity.exit
  %.not23.i.i109 = icmp eq i32 %i.cr, 0
  %i.cs = shl nsw i32 %i.cr, 1
  %spec.select.i.i110 = select i1 %.not23.i.i109, i32 42, i32 %i.cs ; 4 uses
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 42 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !129
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.s, label %resizeOpArray.exit.i.i111

bb.s:                                             ; preds = %bb.r
  %i.cy = mul i32 %spec.select.i.i110, 24
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !136
  %i.da = tail call ptr @sqlite3_realloc(ptr noundef %i.cz, i32 noundef %i.cy) ; 3 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i116, label %bb.t, label %sqlite3DbRealloc.exit.i.i.i117

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.cv, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i111

sqlite3DbRealloc.exit.i.i.i117:                   ; preds = %bb.s
  store i32 %spec.select.i.i110, ptr %i.cq, align 4, !tbaa !147
  store ptr %i.da, ptr %i.cu, align 8, !tbaa !136
  %i.db = icmp sgt i32 %spec.select.i.i110, %i.cr
  br i1 %i.db, label %bb.u, label %resizeOpArray.exit.i.i111

bb.u:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i117
  %i.dc = sext i32 %i.cr to i64
  %i.dd = getelementptr inbounds [24 x i8], ptr %i.da, i64 %i.dc
  %i.de = sub nsw i32 %spec.select.i.i110, %i.cr
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = mul nuw nsw i64 %i.df, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dd, i8 0, i64 %i.dg, i1 false)
  br label %resizeOpArray.exit.i.i111

resizeOpArray.exit.i.i111:                        ; preds = %bb.u, %sqlite3DbRealloc.exit.i.i.i117, %bb.t, %bb.r
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 42
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !129
  %.not24.i.i112 = icmp eq i8 %i.dj, 0
  %.pre205 = load i32, ptr %i.co, align 8, !tbaa !135 ; 2 uses
  br i1 %.not24.i.i112, label %resizeOpArray.exit._crit_edge.i.i114, label %sqlite3VdbeAddOp1.exit118

resizeOpArray.exit._crit_edge.i.i114:             ; preds = %resizeOpArray.exit.i.i111, %sqlite3ExprAffinity.exit
  %i.dk = phi i32 [ %i.cp, %sqlite3ExprAffinity.exit ], [ %.pre205, %resizeOpArray.exit.i.i111 ]
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.co, align 8, !tbaa !135
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !136
  %i.do = sext i32 %i.cp to i64
  %i.dp = getelementptr inbounds [24 x i8], ptr %i.dn, i64 %i.do ; 4 uses
  store i8 111, ptr %i.dp, align 8, !tbaa !137
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.cl, ptr %i.dq, align 4, !tbaa !141
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store i8 0, ptr %i.ds, align 1, !tbaa !191
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.dt, align 1, !tbaa !104
  %.pre204 = load i32, ptr %i.co, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp1.exit118

sqlite3VdbeAddOp1.exit118:                        ; preds = %resizeOpArray.exit.i.i111, %resizeOpArray.exit._crit_edge.i.i114
  %i.du = phi i32 [ %.pre204, %resizeOpArray.exit._crit_edge.i.i114 ], [ %.pre205, %resizeOpArray.exit.i.i111 ] ; 3 uses
  %.0.i.i113 = phi i32 [ %i.cp, %resizeOpArray.exit._crit_edge.i.i114 ], [ 0, %resizeOpArray.exit.i.i111 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i8 0, i64 16, i1 false)
  %i.dv = load i32, ptr %i.cn, align 8, !tbaa !1330
  %i.dw = load i32, ptr %i.cq, align 4, !tbaa !147 ; 6 uses
  %.not.i.i119 = icmp sgt i32 %i.dw, %i.du
  br i1 %.not.i.i119, label %bb.z, label %bb.v

bb.v:                                             ; preds = %sqlite3VdbeAddOp1.exit118
  %.not23.i.i120 = icmp eq i32 %i.dw, 0
  %i.dx = shl nsw i32 %i.dw, 1
  %spec.select.i.i121 = select i1 %.not23.i.i120, i32 42, i32 %i.dx ; 4 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 42 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !129
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.w, label %resizeOpArray.exit.i.i122

bb.w:                                             ; preds = %bb.v
  %i.ed = mul i32 %spec.select.i.i121, 24
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !136
  %i.ef = tail call ptr @sqlite3_realloc(ptr noundef %i.ee, i32 noundef %i.ed) ; 3 uses
  %.not.i.i.i.i127 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i127, label %bb.x, label %sqlite3DbRealloc.exit.i.i.i128

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.ea, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i122

sqlite3DbRealloc.exit.i.i.i128:                   ; preds = %bb.w
  store i32 %spec.select.i.i121, ptr %i.cq, align 4, !tbaa !147
  store ptr %i.ef, ptr %i.dz, align 8, !tbaa !136
  %i.eg = icmp sgt i32 %spec.select.i.i121, %i.dw
  br i1 %i.eg, label %bb.y, label %resizeOpArray.exit.i.i122

bb.y:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i128
  %i.eh = sext i32 %i.dw to i64
  %i.ei = getelementptr inbounds [24 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = sub nsw i32 %spec.select.i.i121, %i.dw
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = mul nuw nsw i64 %i.ek, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ei, i8 0, i64 %i.el, i1 false)
  br label %resizeOpArray.exit.i.i122

resizeOpArray.exit.i.i122:                        ; preds = %bb.y, %sqlite3DbRealloc.exit.i.i.i128, %bb.x, %bb.v
  %i.em = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 42
  %i.eo = load i8, ptr %i.en, align 2, !tbaa !129
  %.not24.i.i123 = icmp eq i8 %i.eo, 0
  br i1 %.not24.i.i123, label %resizeOpArray.exit._crit_edge.i.i125, label %sqlite3VdbeAddOp2.exit129

resizeOpArray.exit._crit_edge.i.i125:             ; preds = %resizeOpArray.exit.i.i122
  %.pre.i.i126 = load i32, ptr %i.co, align 8, !tbaa !135
  br label %bb.z

bb.z:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i125, %sqlite3VdbeAddOp1.exit118
  %i.ep = phi i32 [ %.pre.i.i126, %resizeOpArray.exit._crit_edge.i.i125 ], [ %i.du, %sqlite3VdbeAddOp1.exit118 ]
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.co, align 8, !tbaa !135
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !136
  %i.et = sext i32 %i.du to i64
  %i.eu = getelementptr inbounds [24 x i8], ptr %i.es, i64 %i.et ; 6 uses
  store i8 97, ptr %i.eu, align 8, !tbaa !137
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 %i.dv, ptr %i.ev, align 4, !tbaa !141
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i32 1, ptr %i.ew, align 8, !tbaa !140
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i32 0, ptr %i.ex, align 4, !tbaa !190
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr null, ptr %i.ey, align 8, !tbaa !37
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store i8 0, ptr %i.ez, align 1, !tbaa !191
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  store i8 0, ptr %i.fa, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit129

sqlite3VdbeAddOp2.exit129:                        ; preds = %resizeOpArray.exit.i.i122, %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1210 ; 2 uses
  %.not85 = icmp eq ptr %i.fc, null
  br i1 %.not85, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %sqlite3VdbeAddOp2.exit129
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.fd = load i32, ptr %i.cn, align 8, !tbaa !1330
  store i8 7, ptr %2, align 4, !tbaa !1408
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !1410
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.fg, align 4, !tbaa !1412
  store i8 %.0.i, ptr %i.ff, align 1, !tbaa !1411
  %i.fh = call fastcc i32 @sqlite3Select(ptr noundef nonnull %0, ptr noundef nonnull %i.fc, ptr noundef %2, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.not90 = icmp eq i32 %i.fh, 0
  br i1 %.not90, label %bb.ab, label %.critedge94

bb.ab:                                            ; preds = %bb.aa
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !1210
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1212 ; 3 uses
  %.not91 = icmp eq ptr %i.fj, null
  br i1 %.not91, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !1204
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fm = load ptr, ptr %i.by, align 8, !tbaa !1198
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1201
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1205
  %i.fq = tail call fastcc ptr @sqlite3BinaryCompareCollSeq(ptr noundef nonnull %0, ptr noundef %i.fm, ptr noundef %i.fp) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %sqlite3ReleaseTempReg.exit158

bb.af:                                            ; preds = %sqlite3VdbeAddOp2.exit129
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1200 ; 3 uses
  %.not86 = icmp eq ptr %i.fs, null
  br i1 %.not86, label %sqlite3ReleaseTempReg.exit158, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not87 = icmp eq i8 %.0.i, 0
  %spec.select = select i1 %.not87, i8 98, i8 %.0.i
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 7 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !1483 ; 3 uses
  %.not.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i, label %sqlite3GetTempReg.exit.thread, label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit.thread:                    ; preds = %bb.ag
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !1297
  %i.fx = add nsw i32 %i.fw, 1                    ; 2 uses
  store i32 %i.fx, ptr %i.fv, align 8, !tbaa !1297
  br label %bb.ai

sqlite3GetTempReg.exit:                           ; preds = %bb.ag
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fz = add i8 %i.fu, -1                        ; 3 uses
  store i8 %i.fz, ptr %i.ft, align 1, !tbaa !1483
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !4  ; 2 uses
  %.not.i131 = icmp eq i8 %i.fz, 0
  br i1 %.not.i131, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %sqlite3GetTempReg.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ge = add i8 %i.fu, -2                        ; 2 uses
  store i8 %i.ge, ptr %i.ft, align 1, !tbaa !1483
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !4
  br label %sqlite3GetTempReg.exit133

bb.ai:                                            ; preds = %sqlite3GetTempReg.exit.thread, %sqlite3GetTempReg.exit
  %.0.i130250 = phi i32 [ %i.fx, %sqlite3GetTempReg.exit.thread ], [ %i.gc, %sqlite3GetTempReg.exit ]
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !1297
  %i.gk = add nsw i32 %i.gj, 1                    ; 2 uses
  store i32 %i.gk, ptr %i.gi, align 8, !tbaa !1297
  br label %sqlite3GetTempReg.exit133

sqlite3GetTempReg.exit133:                        ; preds = %bb.ah, %bb.ai
  %.0.i130249 = phi i32 [ %i.gc, %bb.ah ], [ %.0.i130250, %bb.ai ] ; 4 uses
  %.0.i132 = phi i32 [ %i.gh, %bb.ah ], [ %i.gk, %bb.ai ] ; 4 uses
  %i.gl = load i32, ptr %i.fs, align 8, !tbaa !1204 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sqlite3GetTempReg.exit133
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !1201
  %i.gp = getelementptr i8, ptr %i.b, i64 32      ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 339 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %sqlite3VdbeAddOp2.exit155
  %.1199 = phi i32 [ %.0, %.lr.ph ], [ %.2, %sqlite3VdbeAddOp2.exit155 ] ; 3 uses
  %.078198 = phi i32 [ %i.gl, %.lr.ph ], [ %i.kj, %sqlite3VdbeAddOp2.exit155 ] ; 2 uses
  %.079197 = phi ptr [ %i.go, %.lr.ph ], [ %i.kk, %sqlite3VdbeAddOp2.exit155 ] ; 2 uses
  %i.gr = load ptr, ptr %.079197, align 8, !tbaa !1205 ; 2 uses
  %.not88 = icmp eq i32 %.1199, 0
  br i1 %.not88, label %sqlite3VdbeChangeToNoop.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i32 1, ptr %i.a, align 4, !tbaa !4
  %i.gs = call fastcc i32 @walkExprTree(ptr noundef %i.gr, ptr noundef nonnull @exprNodeIsConstant, ptr noundef nonnull %i.a) ; 0 uses
  %i.gt = load i32, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %.not89 = icmp eq i32 %i.gt, 0
  br i1 %.not89, label %bb.al, label %sqlite3VdbeChangeToNoop.exit

bb.al:                                            ; preds = %bb.ak
end_hunk_1
begin_hunk_2_@sqlite3CodeSubselect:bb.a
  %i.iq = icmp slt i32 %.0.i.i140, 0
  br i1 %i.iq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ir = load i32, ptr %i.co, align 8, !tbaa !135 ; 2 uses
  %i.is = add nsw i32 %i.ir, -1
  %i.it = icmp slt i32 %i.ir, 1
  br i1 %i.it, label %sqlite3VdbeChangeP4.exit186, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0.i185 = phi i32 [ %i.is, %bb.at ], [ %.0.i.i140, %bb.as ]
  %i.iu = zext nneg i32 %.0.i185 to i64
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %i.il, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 1 ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !191
  %i.iy = sext i8 %i.ix to i32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 3 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !37
  call fastcc void @freeP4(i32 noundef %i.iy, ptr noundef %i.ja)
  store ptr null, ptr %i.iz, align 8, !tbaa !37
  %i.jb = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.jc = call ptr @sqlite3_malloc(i32 noundef 2) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i, label %sqlite3StrNDup.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 %spec.select, ptr %i.jc, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  store i8 0, ptr %i.jd, align 1, !tbaa !37
  br label %sqlite3DbStrNDup.exit.i

sqlite3StrNDup.exit.i.i:                          ; preds = %bb.au
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 42
  store i8 1, ptr %i.je, align 2, !tbaa !129
  br label %sqlite3DbStrNDup.exit.i

sqlite3DbStrNDup.exit.i:                          ; preds = %sqlite3StrNDup.exit.i.i, %bb.av
  store ptr %i.jc, ptr %i.iz, align 8, !tbaa !37
  store i8 -1, ptr %i.iw, align 1, !tbaa !191
  br label %sqlite3VdbeChangeP4.exit186

sqlite3VdbeChangeP4.exit186:                      ; preds = %sqlite3VdbeAddOp4.exit, %bb.ar, %bb.at, %sqlite3DbStrNDup.exit.i
  %i.jf = load i32, ptr %i.cn, align 8, !tbaa !1330
  %i.jg = load i32, ptr %i.co, align 8, !tbaa !135 ; 3 uses
  %i.jh = load i32, ptr %i.cq, align 4, !tbaa !147 ; 6 uses
  %.not.i.i145 = icmp sgt i32 %i.jh, %i.jg
  br i1 %.not.i.i145, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %sqlite3VdbeChangeP4.exit186
  %.not23.i.i146 = icmp eq i32 %i.jh, 0
  %i.ji = shl nsw i32 %i.jh, 1
  %spec.select.i.i147 = select i1 %.not23.i.i146, i32 42, i32 %i.ji ; 4 uses
  %i.jj = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 42 ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !129
  %i.jm = icmp eq i8 %i.jl, 0
  br i1 %i.jm, label %bb.ax, label %resizeOpArray.exit.i.i148

bb.ax:                                            ; preds = %bb.aw
  %i.jn = mul i32 %spec.select.i.i147, 24
  %i.jo = load ptr, ptr %i.gp, align 8, !tbaa !136
  %i.jp = call ptr @sqlite3_realloc(ptr noundef %i.jo, i32 noundef %i.jn) ; 3 uses
  %.not.i.i.i.i153 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i153, label %bb.ay, label %sqlite3DbRealloc.exit.i.i.i154

bb.ay:                                            ; preds = %bb.ax
  store i8 1, ptr %i.jk, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i148

sqlite3DbRealloc.exit.i.i.i154:                   ; preds = %bb.ax
  store i32 %spec.select.i.i147, ptr %i.cq, align 4, !tbaa !147
  store ptr %i.jp, ptr %i.gp, align 8, !tbaa !136
  %i.jq = icmp sgt i32 %spec.select.i.i147, %i.jh
  br i1 %i.jq, label %bb.az, label %resizeOpArray.exit.i.i148

bb.az:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i154
  %i.jr = sext i32 %i.jh to i64
  %i.js = getelementptr inbounds [24 x i8], ptr %i.jp, i64 %i.jr
  %i.jt = sub nsw i32 %spec.select.i.i147, %i.jh
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = mul nuw nsw i64 %i.ju, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.js, i8 0, i64 %i.jv, i1 false)
  br label %resizeOpArray.exit.i.i148

resizeOpArray.exit.i.i148:                        ; preds = %bb.az, %sqlite3DbRealloc.exit.i.i.i154, %bb.ay, %bb.aw
  %i.jw = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 42
  %i.jy = load i8, ptr %i.jx, align 2, !tbaa !129
  %.not24.i.i149 = icmp eq i8 %i.jy, 0
  br i1 %.not24.i.i149, label %resizeOpArray.exit._crit_edge.i.i151, label %sqlite3VdbeAddOp2.exit155

resizeOpArray.exit._crit_edge.i.i151:             ; preds = %resizeOpArray.exit.i.i148
  %.pre.i.i152 = load i32, ptr %i.co, align 8, !tbaa !135
  br label %bb.ba

bb.ba:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i151, %sqlite3VdbeChangeP4.exit186
  %i.jz = phi i32 [ %.pre.i.i152, %resizeOpArray.exit._crit_edge.i.i151 ], [ %i.jg, %sqlite3VdbeChangeP4.exit186 ]
  %i.ka = add nsw i32 %i.jz, 1
  store i32 %i.ka, ptr %i.co, align 8, !tbaa !135
  %i.kb = load ptr, ptr %i.gp, align 8, !tbaa !136
  %i.kc = sext i32 %i.jg to i64
  %i.kd = getelementptr inbounds [24 x i8], ptr %i.kb, i64 %i.kc ; 6 uses
  store i8 103, ptr %i.kd, align 8, !tbaa !137
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  store i32 %i.jf, ptr %i.ke, align 4, !tbaa !141
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i32 %.0.i132, ptr %i.kf, align 8, !tbaa !140
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  store i32 0, ptr %i.kg, align 4, !tbaa !190
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store ptr null, ptr %i.kh, align 8, !tbaa !37
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  store i8 0, ptr %i.ki, align 1, !tbaa !191
  store i8 0, ptr %i.gq, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit155

sqlite3VdbeAddOp2.exit155:                        ; preds = %resizeOpArray.exit.i.i148, %bb.ba
  %i.kj = add nsw i32 %.078198, -1
  %i.kk = getelementptr inbounds nuw i8, ptr %.079197, i64 24
  %i.kl = icmp sgt i32 %.078198, 1
  br i1 %i.kl, label %bb.aj, label %._crit_edge, !llvm.loop !1835

._crit_edge:                                      ; preds = %sqlite3VdbeAddOp2.exit155, %sqlite3GetTempReg.exit133
  %.1.lcssa = phi i32 [ %.0, %sqlite3GetTempReg.exit133 ], [ %.2, %sqlite3VdbeAddOp2.exit155 ] ; 3 uses
  %.not.i156 = icmp eq i32 %.0.i130249, 0
  br i1 %.not.i156, label %sqlite3ReleaseTempReg.exit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  %i.km = load i8, ptr %i.ft, align 1, !tbaa !1483 ; 3 uses
  %i.kn = icmp ult i8 %i.km, 8
  br i1 %i.kn, label %bb.bc, label %sqlite3ReleaseTempReg.exit

bb.bc:                                            ; preds = %bb.bb
  %i.ko = zext nneg i8 %i.km to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kq = add nuw nsw i8 %i.km, 1
  store i8 %i.kq, ptr %i.ft, align 1, !tbaa !1483
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ko
  store i32 %.0.i130249, ptr %i.kr, align 4, !tbaa !4
  br label %sqlite3ReleaseTempReg.exit

sqlite3ReleaseTempReg.exit:                       ; preds = %._crit_edge, %bb.bb, %bb.bc
  %.not.i157 = icmp eq i32 %.0.i132, 0
  br i1 %.not.i157, label %sqlite3ReleaseTempReg.exit158, label %bb.bd

bb.bd:                                            ; preds = %sqlite3ReleaseTempReg.exit
  %i.ks = load i8, ptr %i.ft, align 1, !tbaa !1483 ; 3 uses
  %i.kt = icmp ult i8 %i.ks, 8
  br i1 %i.kt, label %bb.be, label %sqlite3ReleaseTempReg.exit158

bb.be:                                            ; preds = %bb.bd
  %i.ku = zext nneg i8 %i.ks to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kw = add nuw nsw i8 %i.ks, 1
  store i8 %i.kw, ptr %i.ft, align 1, !tbaa !1483
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.ku
  store i32 %.0.i132, ptr %i.kx, align 4, !tbaa !4
  br label %sqlite3ReleaseTempReg.exit158

sqlite3ReleaseTempReg.exit158:                    ; preds = %bb.be, %bb.bd, %sqlite3ReleaseTempReg.exit, %bb.ae, %bb.af
  %.3 = phi i32 [ %.0, %bb.ae ], [ %.0, %bb.af ], [ %.1.lcssa, %sqlite3ReleaseTempReg.exit ], [ %.1.lcssa, %bb.bd ], [ %.1.lcssa, %bb.be ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !136 ; 2 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %sqlite3VdbeChangeP4.exit, label %bb.bf

bb.bf:                                            ; preds = %sqlite3ReleaseTempReg.exit158
  %i.lb = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 42
  %i.ld = load i8, ptr %i.lc, align 2, !tbaa !129
  %.not.i159 = icmp eq i8 %i.ld, 0
  br i1 %.not.i159, label %bb.bg, label %sqlite3VdbeChangeP4.exit

bb.bg:                                            ; preds = %bb.bf
  %i.le = icmp slt i32 %.0.i.i113, 0
  br i1 %i.le, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lf = load i32, ptr %i.co, align 8, !tbaa !135 ; 2 uses
  %i.lg = add nsw i32 %i.lf, -1
  %i.lh = icmp slt i32 %i.lf, 1
  br i1 %i.lh, label %sqlite3VdbeChangeP4.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0.i160 = phi i32 [ %i.lg, %bb.bh ], [ %.0.i.i113, %bb.bg ]
  %i.li = zext nneg i32 %.0.i160 to i64
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %i.kz, i64 %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 1 ; 2 uses
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !191
  %i.lm = sext i8 %i.ll to i32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 3 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !37
  call fastcc void @freeP4(i32 noundef %i.lm, ptr noundef %i.lo)
  store ptr null, ptr %i.ln, align 8, !tbaa !37
  %i.lp = call ptr @sqlite3_malloc(i32 noundef 33) ; 5 uses
  store ptr %i.lp, ptr %i.ln, align 8, !tbaa !37
  %.not56.i = icmp eq ptr %i.lp, null
  br i1 %.not56.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store <12 x i8> zeroinitializer, ptr %i.lp, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.lq = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 42
  store i8 1, ptr %i.lr, align 2, !tbaa !129
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %storemerge.i = phi i8 [ 0, %bb.bk ], [ -6, %bb.bj ]
  store i8 %storemerge.i, ptr %i.lk, align 1, !tbaa !191
  br label %sqlite3VdbeChangeP4.exit

sqlite3VdbeChangeP4.exit:                         ; preds = %sqlite3ReleaseTempReg.exit158, %bb.bf, %bb.bh, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.cc

bb.bm:                                            ; preds = %sqlite3VdbeAddOp2.exit, %sqlite3VdbeAddOp2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !1210 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !1297
  %i.lw = add nsw i32 %i.lv, 1                    ; 3 uses
  store i32 %i.lw, ptr %i.lu, align 8, !tbaa !1297
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !1410
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.ly, align 1, !tbaa !1411
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.lz, align 4, !tbaa !1412
  %i.ma = icmp eq i8 %i.bx, 110
  %i.mb = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  br i1 %i.ma, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  store i8 6, ptr %3, align 4, !tbaa !1408
  %i.md = load i32, ptr %i.mb, align 8, !tbaa !135 ; 4 uses
  %i.me = load i32, ptr %i.mc, align 4, !tbaa !147 ; 6 uses
  %.not.i.i161 = icmp sgt i32 %i.me, %i.md
  br i1 %.not.i.i161, label %sqlite3VdbeAddOp2.exit171.sink.split, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.not23.i.i162 = icmp eq i32 %i.me, 0
  %i.mf = shl nsw i32 %i.me, 1
  %spec.select.i.i163 = select i1 %.not23.i.i162, i32 42, i32 %i.mf ; 4 uses
  %i.mg = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.mh = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 42 ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 2, !tbaa !129
  %i.mk = icmp eq i8 %i.mj, 0
  br i1 %i.mk, label %bb.bp, label %resizeOpArray.exit.i.i164

bb.bp:                                            ; preds = %bb.bo
  %i.ml = mul i32 %spec.select.i.i163, 24
  %i.mm = load ptr, ptr %i.mh, align 8, !tbaa !136
  %i.mn = tail call ptr @sqlite3_realloc(ptr noundef %i.mm, i32 noundef %i.ml) ; 3 uses
  %.not.i.i.i.i169 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i.i169, label %bb.bq, label %sqlite3DbRealloc.exit.i.i.i170

bb.bq:                                            ; preds = %bb.bp
  store i8 1, ptr %i.mi, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i164

sqlite3DbRealloc.exit.i.i.i170:                   ; preds = %bb.bp
  store i32 %spec.select.i.i163, ptr %i.mc, align 4, !tbaa !147
  store ptr %i.mn, ptr %i.mh, align 8, !tbaa !136
  %i.mo = icmp sgt i32 %spec.select.i.i163, %i.me
  br i1 %i.mo, label %bb.br, label %resizeOpArray.exit.i.i164

bb.br:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i170
  %i.mp = sext i32 %i.me to i64
  %i.mq = getelementptr inbounds [24 x i8], ptr %i.mn, i64 %i.mp
  %i.mr = sub nsw i32 %spec.select.i.i163, %i.me
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = mul nuw nsw i64 %i.ms, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mq, i8 0, i64 %i.mt, i1 false)
  br label %resizeOpArray.exit.i.i164

resizeOpArray.exit.i.i164:                        ; preds = %bb.br, %sqlite3DbRealloc.exit.i.i.i170, %bb.bq, %bb.bo
  %i.mu = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 42
  %i.mw = load i8, ptr %i.mv, align 2, !tbaa !129
  %.not24.i.i165 = icmp eq i8 %i.mw, 0
  br i1 %.not24.i.i165, label %sqlite3VdbeAddOp2.exit171.sink.split.sink.split, label %sqlite3VdbeAddOp2.exit171

bb.bs:                                            ; preds = %bb.bm
  store i8 3, ptr %3, align 4, !tbaa !1408
  %i.mx = load i32, ptr %i.mb, align 8, !tbaa !135 ; 4 uses
  %i.my = load i32, ptr %i.mc, align 4, !tbaa !147 ; 6 uses
  %.not.i.i172 = icmp sgt i32 %i.my, %i.mx
  br i1 %.not.i.i172, label %sqlite3VdbeAddOp2.exit171.sink.split, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not23.i.i173 = icmp eq i32 %i.my, 0
  %i.mz = shl nsw i32 %i.my, 1
  %spec.select.i.i174 = select i1 %.not23.i.i173, i32 42, i32 %i.mz ; 4 uses
  %i.na = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.nb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 42 ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 2, !tbaa !129
  %i.ne = icmp eq i8 %i.nd, 0
  br i1 %i.ne, label %bb.bu, label %resizeOpArray.exit.i.i175

bb.bu:                                            ; preds = %bb.bt
  %i.nf = mul i32 %spec.select.i.i174, 24
  %i.ng = load ptr, ptr %i.nb, align 8, !tbaa !136
  %i.nh = tail call ptr @sqlite3_realloc(ptr noundef %i.ng, i32 noundef %i.nf) ; 3 uses
  %.not.i.i.i.i180 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i.i180, label %bb.bv, label %sqlite3DbRealloc.exit.i.i.i181

bb.bv:                                            ; preds = %bb.bu
  store i8 1, ptr %i.nc, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i175

sqlite3DbRealloc.exit.i.i.i181:                   ; preds = %bb.bu
  store i32 %spec.select.i.i174, ptr %i.mc, align 4, !tbaa !147
  store ptr %i.nh, ptr %i.nb, align 8, !tbaa !136
  %i.ni = icmp sgt i32 %spec.select.i.i174, %i.my
  br i1 %i.ni, label %bb.bw, label %resizeOpArray.exit.i.i175

bb.bw:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i181
  %i.nj = sext i32 %i.my to i64
  %i.nk = getelementptr inbounds [24 x i8], ptr %i.nh, i64 %i.nj
  %i.nl = sub nsw i32 %spec.select.i.i174, %i.my
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = mul nuw nsw i64 %i.nm, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.nk, i8 0, i64 %i.nn, i1 false)
  br label %resizeOpArray.exit.i.i175

resizeOpArray.exit.i.i175:                        ; preds = %bb.bw, %sqlite3DbRealloc.exit.i.i.i181, %bb.bv, %bb.bt
  %i.no = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 42
  %i.nq = load i8, ptr %i.np, align 2, !tbaa !129
  %.not24.i.i176 = icmp eq i8 %i.nq, 0
  br i1 %.not24.i.i176, label %sqlite3VdbeAddOp2.exit171.sink.split.sink.split, label %sqlite3VdbeAddOp2.exit171

sqlite3VdbeAddOp2.exit171.sink.split.sink.split:  ; preds = %resizeOpArray.exit.i.i175, %resizeOpArray.exit.i.i164
  %.sink260.ph = phi i32 [ %i.md, %resizeOpArray.exit.i.i164 ], [ %i.mx, %resizeOpArray.exit.i.i175 ]
  %.sink.ph = phi i8 [ 112, %resizeOpArray.exit.i.i164 ], [ 46, %resizeOpArray.exit.i.i175 ]
  %.pre.i.i179 = load i32, ptr %i.mb, align 8, !tbaa !135
  br label %sqlite3VdbeAddOp2.exit171.sink.split

sqlite3VdbeAddOp2.exit171.sink.split:             ; preds = %sqlite3VdbeAddOp2.exit171.sink.split.sink.split, %bb.bs, %bb.bn
  %.sink263 = phi i32 [ %i.md, %bb.bn ], [ %i.mx, %bb.bs ], [ %.pre.i.i179, %sqlite3VdbeAddOp2.exit171.sink.split.sink.split ]
  %.sink260 = phi i32 [ %i.md, %bb.bn ], [ %i.mx, %bb.bs ], [ %.sink260.ph, %sqlite3VdbeAddOp2.exit171.sink.split.sink.split ]
  %.sink = phi i8 [ 112, %bb.bn ], [ 46, %bb.bs ], [ %.sink.ph, %sqlite3VdbeAddOp2.exit171.sink.split.sink.split ]
  %i.nr = add nsw i32 %.sink263, 1
  store i32 %i.nr, ptr %i.mb, align 8, !tbaa !135
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !136
  %i.nu = sext i32 %.sink260 to i64
  %i.nv = getelementptr inbounds [24 x i8], ptr %i.nt, i64 %i.nu ; 6 uses
  store i8 %.sink, ptr %i.nv, align 8, !tbaa !137
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  store i32 0, ptr %i.nw, align 4, !tbaa !141
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store i32 %i.lw, ptr %i.nx, align 8, !tbaa !140
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  store i32 0, ptr %i.ny, align 4, !tbaa !190
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store ptr null, ptr %i.nz, align 8, !tbaa !37
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 1
  store i8 0, ptr %i.oa, align 1, !tbaa !191
  %i.ob = getelementptr inbounds nuw i8, ptr %i.b, i64 339
  store i8 0, ptr %i.ob, align 1, !tbaa !104
  br label %sqlite3VdbeAddOp2.exit171

sqlite3VdbeAddOp2.exit171:                        ; preds = %sqlite3VdbeAddOp2.exit171.sink.split, %resizeOpArray.exit.i.i175, %resizeOpArray.exit.i.i164
  %i.oc = getelementptr inbounds nuw i8, ptr %i.lt, i64 80 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !1221
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.od)
  %.val = load ptr, ptr %0, align 8, !tbaa !244   ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i187, label %sqlite3DbMallocRaw.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %sqlite3VdbeAddOp2.exit171
  %i.oe = getelementptr inbounds nuw i8, ptr %.val, i64 42 ; 2 uses
  %i.of = load i8, ptr %i.oe, align 2, !tbaa !129
  %i.og = icmp eq i8 %i.of, 0
  br i1 %i.og, label %bb.by, label %sqlite3Expr.exit

bb.by:                                            ; preds = %bb.bx
  %i.oh = tail call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i8 1, ptr %i.oe, align 2, !tbaa !129
  br label %sqlite3Expr.exit

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %sqlite3VdbeAddOp2.exit171
  %i.oj = tail call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %.not.i.i189 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i189, label %sqlite3Expr.exit, label %bb.ca

bb.ca:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i, %bb.by
  %.0.i11.i.i = phi ptr [ %i.oj, %sqlite3DbMallocRaw.exit.i.i ], [ %i.oh, %bb.by ] ; 8 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(119) %i.ok, i8 0, i64 119, i1 false)
  store i8 124, ptr %.0.i11.i.i, align 8, !tbaa !1311
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ol, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.om, align 8, !tbaa !1312
  %i.on = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 56
  %i.oo = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull align 8 dereferenceable(16) @sqlite3CodeSubselect.one, i64 16, i1 false), !tbaa.struct !1313
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull align 8 dereferenceable(16) @sqlite3CodeSubselect.one, i64 16, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 112
  store i32 1, ptr %i.op, align 8, !tbaa !1314
  br label %sqlite3Expr.exit

sqlite3Expr.exit:                                 ; preds = %bb.bx, %bb.bz, %sqlite3DbMallocRaw.exit.i.i, %bb.ca
  %.0.i188 = phi ptr [ %.0.i11.i.i, %bb.ca ], [ null, %sqlite3DbMallocRaw.exit.i.i ], [ null, %bb.bz ], [ null, %bb.bx ]
  store ptr %.0.i188, ptr %i.oc, align 8, !tbaa !1221
  %i.oq = call fastcc i32 @sqlite3Select(ptr noundef nonnull %0, ptr noundef nonnull %i.lt, ptr noundef %3, ptr noundef null, i32 noundef 0, ptr noundef null)
  %.not84 = icmp eq i32 %i.oq, 0
  br i1 %.not84, label %bb.cb, label %.critedge96

bb.cb:                                            ; preds = %sqlite3Expr.exit
  %i.or = load i32, ptr %i.lx, align 4, !tbaa !1410
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %i.or, ptr %i.os, align 4, !tbaa !1360
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %sqlite3VdbeChangeP4.exit, %sqlite3VdbeAddOp2.exit
  %.5 = phi i32 [ %.0, %sqlite3VdbeAddOp2.exit ], [ %.3, %sqlite3VdbeChangeP4.exit ], [ %.0, %bb.cb ] ; 4 uses
  %.not92 = icmp eq i32 %.5, 0
  br i1 %.not92, label %sqlite3VdbeJumpHere.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !135 ; 2 uses
  %i.ov = icmp sgt i32 %.5, 0
  %i.ow = icmp sge i32 %i.ou, %.5
  %or.cond.i = select i1 %i.ov, i1 %i.ow, i1 false
  br i1 %or.cond.i, label %bb.ce, label %sqlite3VdbeJumpHere.exit

bb.ce:                                            ; preds = %bb.cd
  %i.ox = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !136 ; 2 uses
  %.not.i.i183 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i183, label %sqlite3VdbeJumpHere.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.oz = zext nneg i32 %.5 to i64
  %i.pa = getelementptr [24 x i8], ptr %i.oy, i64 %i.oz
  %i.pb = getelementptr i8, ptr %i.pa, i64 -16
  store i32 %i.ou, ptr %i.pb, align 8, !tbaa !140
  br label %sqlite3VdbeJumpHere.exit

.critedge94:                                      ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %sqlite3VdbeJumpHere.exit

.critedge96:                                      ; preds = %sqlite3Expr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %.critedge96, %.critedge94, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3ExprCodeTarget(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %3 = alloca %struct.Expr, align 8               ; 6 uses
  %4 = alloca %struct.Expr, align 8               ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !367  ; 98 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store i32 0, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  store i32 0, ptr %i.c, align 4, !tbaa !4
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %sqlite3ReleaseTempReg.exit468, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %1, align 8, !tbaa !1311    ; 5 uses
  %i.j = zext nneg i8 %i.i to i32
  switch i8 %i.i, label %sqlite3VdbeAddOp3.exitthread-pre-split [
    i8 -105, label %bb.d
    i8 -107, label %bb.h
    i8 124, label %bb.k
    i8 125, label %bb.l
    i8 88, label %bb.m
    i8 92, label %.thread
    i8 126, label %bb.s
    i8 -128, label %bb.t
    i8 127, label %bb.v
    i8 31, label %bb.w
    i8 71, label %bb.x
    i8 70, label %bb.x
    i8 69, label %bb.x
    i8 72, label %bb.x
    i8 67, label %bb.x
    i8 68, label %bb.x
    i8 61, label %bb.ah
    i8 60, label %bb.ah
    i8 78, label %bb.ah
    i8 80, label %bb.ah
    i8 79, label %bb.ah
    i8 82, label %bb.ah
    i8 74, label %bb.ah
    i8 75, label %bb.ah
    i8 81, label %bb.ah
    i8 76, label %bb.ah
    i8 77, label %bb.ah
    i8 83, label %bb.ah
    i8 85, label %bb.aw
    i8 87, label %bb.bd
    i8 16, label %bb.bd
    i8 65, label %bb.bj
    i8 66, label %bb.bj
    i8 -106, label %bb.ce
    i8 -104, label %bb.ch
    i8 -108, label %bb.ch
    i8 17, label %bb.dm
    i8 110, label %bb.dm
    i8 64, label %bb.do
    i8 63, label %bb.ed
    i8 86, label %bb.ek
    i8 -127, label %bb.el
    i8 48, label %bb.fi
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1836 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1473
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1312
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.l, align 8, !tbaa !1485
  %.not355 = icmp eq i8 %i.s, 0
  br i1 %.not355, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !1799
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !1484
  %.not356 = icmp eq i8 %i.w, 0
  br i1 %.not356, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1472
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1474
  %i.ab = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %i.f, i32 noundef 2, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %2) ; 0 uses
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1330 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1360
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1837
  %i.aj = add nsw i32 %i.ai, %i.ag
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1581
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1360
  tail call fastcc void @sqlite3ExprCodeGetColumn(ptr noundef %i.f, ptr noundef %i.al, i32 noundef %i.an, i32 noundef %i.ad, i32 noundef %2)
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.k:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1197
  tail call fastcc void @codeInteger(ptr noundef %i.f, ptr noundef %i.ap, i32 noundef 0, i32 noundef %2)
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.l:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1197
  tail call fastcc void @codeReal(ptr noundef %i.f, ptr noundef %i.ar, i32 noundef 0, i32 noundef %2)
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

bb.m:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %0, align 8, !tbaa !244
  tail call fastcc void @sqlite3DequoteExpr(ptr noundef %i.as, ptr noundef nonnull %1)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1197
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %i.f, i32 noundef 88, i32 noundef 0, i32 noundef %2, i32 noundef 0, ptr noundef %i.au, i32 noundef %i.ax) ; 0 uses
  br label %sqlite3VdbeAddOp3.exitthread-pre-split

.thread:                                          ; preds = %bb.b, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !135 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !147 ; 6 uses
  %.not.i.i643 = icmp sgt i32 %i.bc, %i.ba
  br i1 %.not.i.i643, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.thread
  %.not23.i.i644 = icmp eq i32 %i.bc, 0
  %i.bd = shl nsw i32 %i.bc, 1
  %spec.select.i.i645 = select i1 %.not23.i.i644, i32 42, i32 %i.bd ; 4 uses
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 42 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !129
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %resizeOpArray.exit.i.i646

bb.o:                                             ; preds = %bb.n
  %i.bj = mul i32 %spec.select.i.i645, 24
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !136
  %i.bl = tail call ptr @sqlite3_realloc(ptr noundef %i.bk, i32 noundef %i.bj) ; 3 uses
  %.not.i.i.i.i650 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i650, label %bb.p, label %sqlite3DbRealloc.exit.i.i.i651

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.bg, align 2, !tbaa !129
  br label %resizeOpArray.exit.i.i646

sqlite3DbRealloc.exit.i.i.i651:                   ; preds = %bb.o
  store i32 %spec.select.i.i645, ptr %i.bb, align 4, !tbaa !147
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !136
  %i.bm = icmp sgt i32 %spec.select.i.i645, %i.bc
  br i1 %i.bm, label %bb.q, label %resizeOpArray.exit.i.i646

bb.q:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i651
  %i.bn = sext i32 %i.bc to i64
  %i.bo = getelementptr inbounds [24 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = sub nsw i32 %spec.select.i.i645, %i.bc
  %i.bq = zext nneg i32 %i.bp to i64
end_hunk_2
