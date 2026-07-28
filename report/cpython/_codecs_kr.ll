inline.NumInlined: 15
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@euc_kr_encode:bb.a
  %i.l = icmp ult i32 %.0.i, 128
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.m = icmp slt i64 %.05066, 1
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.0.i to i8
  %i.o = load ptr, ptr %6, align 8, !tbaa !41
  store i8 %i.n, ptr %i.o, align 1, !tbaa !38
  br label %bb.q, !llvm.loop !56

bb.g:                                             ; preds = %PyUnicode_READ.exit
  %i.p = icmp ugt i32 %.0.i, 65535
  br i1 %i.p, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i64 %.05066, 2
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = lshr i32 %.0.i, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [16 x i8], ptr @cp949_encmap, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !57  ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = and i32 %.0.i, 255                       ; 3 uses
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !60
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %.not60 = icmp samesign ult i32 %i.v, %i.y
  br i1 %.not60, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.t, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !61
  %i.ab = zext i8 %i.aa to i32
  %.not61 = icmp samesign ugt i32 %i.v, %i.ab
  br i1 %.not61, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i32 %i.v, %i.y
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr [2 x i8], ptr %i.u, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !55 ; 4 uses
  %.not62 = icmp eq i16 %i.af, -1
  br i1 %.not62, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp sgt i16 %i.af, -1
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = lshr i16 %i.af, 8
  %i.ai = trunc nuw nsw i16 %i.ah to i8
  %i.aj = or disjoint i8 %i.ai, -128
  %i.ak = load ptr, ptr %6, align 8, !tbaa !41
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !38
  %i.al = trunc i16 %i.af to i8
  %i.am = or i8 %i.al, -128
  %i.an = load ptr, ptr %6, align 8, !tbaa !41
  %i.ao = getelementptr i8, ptr %i.an, i64 1
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !38
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ap = icmp samesign ult i64 %.05066, 8
  br i1 %i.ap, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %6, align 8, !tbaa !41
  store i8 -92, ptr %i.aq, align 1, !tbaa !38
  %i.ar = load ptr, ptr %6, align 8, !tbaa !41
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  store i8 -44, ptr %i.as, align 1, !tbaa !38
  %i.at = add nsw i32 %.0.i, -44032               ; 3 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !41
  %i.av = getelementptr i8, ptr %i.au, i64 2
  store i8 -92, ptr %i.av, align 1, !tbaa !38
  %i.aw = udiv i32 %i.at, 588
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr @u2cgk_choseong, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !38
  %i.ba = load ptr, ptr %6, align 8, !tbaa !41
  %i.bb = getelementptr i8, ptr %i.ba, i64 3
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !38
  %i.bc = load ptr, ptr %6, align 8, !tbaa !41
  %i.bd = getelementptr i8, ptr %i.bc, i64 4      ; 2 uses
  store ptr %i.bd, ptr %6, align 8, !tbaa !41
  store i8 -92, ptr %i.bd, align 1, !tbaa !38
  %i.be = udiv i32 %i.at, 28
  %i.bf = urem i32 %i.be, 21
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr @u2cgk_jungseong, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !38
  %i.bj = load ptr, ptr %6, align 8, !tbaa !41
  %i.bk = getelementptr i8, ptr %i.bj, i64 1
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !38
  %i.bl = load ptr, ptr %6, align 8, !tbaa !41
  %i.bm = getelementptr i8, ptr %i.bl, i64 2
  store i8 -92, ptr %i.bm, align 1, !tbaa !38
  %i.bn = urem i32 %i.at, 28
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr @u2cgk_jongseong, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.br = load ptr, ptr %6, align 8, !tbaa !41
  %i.bs = getelementptr i8, ptr %i.br, i64 3
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.f
  %.sink91 = phi i64 [ 2, %bb.n ], [ 4, %bb.p ], [ 1, %bb.f ]
  %.sink = phi i64 [ -2, %bb.n ], [ -8, %bb.p ], [ -1, %bb.f ]
  %i.bt = load i64, ptr %4, align 8, !tbaa !54
  %i.bu = add i64 %i.bt, 1                        ; 3 uses
  store i64 %i.bu, ptr %4, align 8, !tbaa !54
  %i.bv = load ptr, ptr %6, align 8, !tbaa !41
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.sink91
  store ptr %i.bw, ptr %6, align 8, !tbaa !41
  %i.bx = add nsw i64 %.05066, %.sink
  %i.by = icmp slt i64 %i.bu, %5
  br i1 %i.by, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.q, %bb.h, %bb.e, %bb.g, %bb.o, %bb.i, %bb.l, %bb.k, %bb.j, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.i ], [ -1, %bb.o ], [ 1, %bb.g ], [ -1, %bb.e ], [ 0, %bb.q ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @euc_kr_decode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread95

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !41
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %i.b = phi ptr [ %i.bt, %bb.v ], [ %.pre, %.lr.ph.preheader ] ; 9 uses
  %.06899 = phi i64 [ %i.bu, %bb.v ], [ %3, %.lr.ph.preheader ] ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !38    ; 3 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.d) #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread95, label %bb.v, !llvm.loop !62

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %.06899, 1
  br i1 %i.h, label %.thread95, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i8 %i.c, -92
  br i1 %i.i, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.b, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38
  %i.l = icmp eq i8 %i.k, -44
  br i1 %i.l, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.m = icmp samesign ult i64 %.06899, 8
  br i1 %i.m, label %.thread95, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.b, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !38
  %.not86 = icmp eq i8 %i.o, -92
  br i1 %.not86, label %bb.h, label %.thread95

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %i.b, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !38
  %.not87 = icmp eq i8 %i.q, -92
  br i1 %.not87, label %bb.i, label %.thread95

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %i.b, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !38
  %.not88 = icmp eq i8 %i.s, -92
  br i1 %.not88, label %bb.j, label %.thread95

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.b, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !38    ; 2 uses
  %i.v = add i8 %i.u, 95
  %or.cond = icmp ult i8 %i.v, 30
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = zext i8 %i.u to i64
  %5 = getelementptr i8, ptr @cgk2u_choseong, i64 %i.w
  %i.x = getelementptr i8, ptr %5, i64 -161
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38
  %i.z = zext i8 %i.y to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.065 = phi i32 [ %i.z, %bb.k ], [ 127, %bb.j ] ; 2 uses
  %i.aa = getelementptr i8, ptr %i.b, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !38  ; 2 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i8 %i.ab, 65
  %or.cond5 = icmp ult i8 %i.ad, 21
  %i.ae = add nuw nsw i32 %i.ac, 65345
  %i.af = getelementptr i8, ptr %i.b, i64 7
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38  ; 3 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = icmp eq i8 %i.ag, -44
  br i1 %i.ai, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = add i8 %i.ag, 95
  %or.cond8 = icmp ult i8 %i.aj, 30
  br i1 %or.cond8, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %6 = getelementptr i8, ptr @cgk2u_jongseong, i64 %i.ah
  %i.ak = getelementptr i8, ptr %6, i64 -161
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !38
  %i.am = zext i8 %i.al to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n
  %.0 = phi i32 [ 0, %bb.l ], [ %i.am, %bb.n ], [ 127, %bb.m ] ; 2 uses
  %i.an = icmp eq i32 %.065, 127
  %i.ao = and i32 %i.ae, 65535
  %i.ap = select i1 %or.cond5, i32 %i.ao, i32 127 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 127
  %or.cond11 = select i1 %i.an, i1 true, i1 %i.aq
  %i.ar = icmp eq i32 %.0, 127
  %or.cond14 = select i1 %or.cond11, i1 true, i1 %i.ar
  br i1 %or.cond14, label %.thread95, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = mul nuw nsw i32 %.065, 588
  %i.at = add nuw nsw i32 %i.as, 44032
  %i.au = mul nuw nsw i32 %i.ap, 28
  %i.av = add nuw nsw i32 %i.at, %i.au
  %i.aw = add nuw nsw i32 %i.av, %.0
  %i.ax = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.aw) #8
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.thread95, label %bb.v

bb.q:                                             ; preds = %bb.e, %bb.d
  %i.az = and i32 %i.d, 127
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr [16 x i8], ptr @ksx1001_decmap, i64 %i.ba ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %.thread95, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr i8, ptr %i.b, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !38
  %i.bf = xor i8 %i.be, -128                      ; 3 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr i8, ptr %i.bb, i64 8
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !65  ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %.not83 = icmp ult i8 %i.bf, %i.bi
  br i1 %.not83, label %.thread95, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr i8, ptr %i.bb, i64 9
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !66
  %.not84 = icmp ugt i8 %i.bf, %i.bl
  br i1 %.not84, label %.thread95, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = sub nsw i64 %i.bg, %i.bj
  %i.bn = getelementptr [2 x i8], ptr %i.bc, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !55 ; 2 uses
  %.not85 = icmp eq i16 %i.bo, -2
  br i1 %.not85, label %.thread95, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = zext i16 %i.bo to i32
  %i.bq = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.bp) #8
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.thread95, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p, %bb.b
  %.sink135 = phi i64 [ 1, %bb.b ], [ 8, %bb.p ], [ 2, %bb.u ]
  %.sink = phi i64 [ -1, %bb.b ], [ -8, %bb.p ], [ -2, %bb.u ]
  %i.bs = load ptr, ptr %2, align 8, !tbaa !41
  %i.bt = getelementptr i8, ptr %i.bs, i64 %.sink135 ; 2 uses
  store ptr %i.bt, ptr %2, align 8, !tbaa !41
  %i.bu = add nsw i64 %.06899, %.sink             ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph, label %.thread95

.thread95:                                        ; preds = %bb.v, %bb.u, %bb.b, %bb.q, %bb.c, %bb.t, %bb.s, %bb.r, %bb.f, %bb.g, %bb.o, %bb.i, %bb.h, %bb.p, %bb.a
  %.4 = phi i64 [ 0, %bb.a ], [ -4, %bb.u ], [ -4, %bb.b ], [ -2, %bb.f ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ -2, %bb.c ], [ 1, %bb.q ], [ -4, %bb.p ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.o ], [ 1, %bb.g ], [ 0, %bb.v ]
  ret i64 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 2) i64 @cp949_encode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, i32 %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %i.c = phi i64 [ %i.ap, %bb.n ], [ %i.a, %bb.a ] ; 3 uses
  %.03450 = phi i64 [ %i.as, %bb.n ], [ %7, %bb.a ] ; 3 uses
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %3, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !38
  %i.f = zext i8 %i.e to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr [2 x i8], ptr %3, i64 %i.c
  %i.h = load i16, ptr %i.g, align 2, !tbaa !55
  %i.i = zext i16 %i.h to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr [4 x i8], ptr %3, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 5 uses
  %i.l = icmp ult i32 %.0.i, 128
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.m = icmp slt i64 %.03450, 1
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.0.i to i8
  %i.o = load ptr, ptr %6, align 8, !tbaa !41
  store i8 %i.n, ptr %i.o, align 1, !tbaa !38
  br label %bb.n, !llvm.loop !67

bb.g:                                             ; preds = %PyUnicode_READ.exit
  %i.p = icmp ugt i32 %.0.i, 65535
  br i1 %i.p, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i64 %.03450, 2
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = lshr i32 %.0.i, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [16 x i8], ptr @cp949_encmap, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !57  ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = and i32 %.0.i, 255                       ; 3 uses
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !60
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %.not43 = icmp samesign ult i32 %i.v, %i.y
  br i1 %.not43, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.t, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !61
  %i.ab = zext i8 %i.aa to i32
  %.not44 = icmp samesign ugt i32 %i.v, %i.ab
  br i1 %.not44, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i32 %i.v, %i.y
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr [2 x i8], ptr %i.u, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !55 ; 4 uses
  %.not45 = icmp eq i16 %i.af, -1
  br i1 %.not45, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = lshr i16 %i.af, 8
  %i.ah = trunc nuw i16 %i.ag to i8
  %i.ai = or i8 %i.ah, -128
  %i.aj = load ptr, ptr %6, align 8, !tbaa !41
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !38
  %i.ak = trunc i16 %i.af to i8                   ; 2 uses
  %i.al = or i8 %i.ak, -128
  %.not4679 = icmp slt i16 %i.af, 0
  %.sink = select i1 %.not4679, i8 %i.ak, i8 %i.al
  %i.am = load ptr, ptr %6, align 8, !tbaa !41
  %i.an = getelementptr i8, ptr %i.am, i64 1
  store i8 %.sink, ptr %i.an, align 1, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %.sink76 = phi i64 [ 2, %bb.m ], [ 1, %bb.f ]
  %.sink73 = phi i64 [ -2, %bb.m ], [ -1, %bb.f ]
  %i.ao = load i64, ptr %4, align 8, !tbaa !54
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  store i64 %i.ap, ptr %4, align 8, !tbaa !54
  %i.aq = load ptr, ptr %6, align 8, !tbaa !41
  %i.ar = getelementptr i8, ptr %i.aq, i64 %.sink76
  store ptr %i.ar, ptr %6, align 8, !tbaa !41
  %i.as = add nsw i64 %.03450, %.sink73
  %i.at = icmp slt i64 %i.ap, %5
  br i1 %i.at, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.n, %bb.h, %bb.e, %bb.g, %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.g ], [ -1, %bb.e ], [ 0, %bb.n ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @cp949_decode(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
end_hunk_0
