inline.NumInlined: 15
inline.NumDeleted: 11
begin_hunk_0_@euc_kr_decode:bb.a
  %i.z = getelementptr i8, ptr @cgk2u_choseong, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !38
  %i.ab = zext i8 %i.aa to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.065 = phi i32 [ %i.ab, %bb.k ], [ 127, %bb.j ] ; 2 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38  ; 2 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = add i8 %i.ad, 65
  %or.cond5 = icmp ult i8 %i.af, 21
  %i.ag = add nuw nsw i32 %i.ae, 65345
  %i.ah = getelementptr i8, ptr %i.b, i64 7
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !38  ; 3 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = icmp eq i8 %i.ai, -44
  br i1 %i.ak, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add i8 %i.ai, 95
  %or.cond8 = icmp ult i8 %i.al, 30
  br i1 %or.cond8, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = add nuw nsw i64 %i.aj, 4294967135
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr i8, ptr @cgk2u_jongseong, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !38
  %i.aq = zext i8 %i.ap to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n
  %.0 = phi i32 [ 0, %bb.l ], [ %i.aq, %bb.n ], [ 127, %bb.m ] ; 2 uses
  %i.ar = icmp eq i32 %.065, 127
  %i.as = and i32 %i.ag, 65535
  %i.at = select i1 %or.cond5, i32 %i.as, i32 127 ; 2 uses
  %i.au = icmp eq i32 %i.at, 127
  %or.cond11 = select i1 %i.ar, i1 true, i1 %i.au
  %i.av = icmp eq i32 %.0, 127
  %or.cond14 = select i1 %or.cond11, i1 true, i1 %i.av
  br i1 %or.cond14, label %.thread95, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = mul nuw nsw i32 %.065, 588
  %i.ax = add nuw nsw i32 %i.aw, 44032
  %i.ay = mul nuw nsw i32 %i.at, 28
  %i.az = add nuw nsw i32 %i.ax, %i.ay
  %i.ba = add nuw nsw i32 %i.az, %.0
  %i.bb = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ba) #8
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.thread95, label %bb.v

bb.q:                                             ; preds = %bb.e, %bb.d
  %i.bd = and i32 %i.d, 127
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr [16 x i8], ptr @ksx1001_decmap, i64 %i.be ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %.thread95, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr i8, ptr %i.b, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !38
  %i.bj = xor i8 %i.bi, -128                      ; 3 uses
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr i8, ptr %i.bf, i64 8
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !65  ; 2 uses
  %i.bn = zext i8 %i.bm to i64
  %.not83 = icmp ult i8 %i.bj, %i.bm
  br i1 %.not83, label %.thread95, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr i8, ptr %i.bf, i64 9
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !66
  %.not84 = icmp ugt i8 %i.bj, %i.bp
  br i1 %.not84, label %.thread95, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = sub nsw i64 %i.bk, %i.bn
  %i.br = getelementptr [2 x i8], ptr %i.bg, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !55 ; 2 uses
  %.not85 = icmp eq i16 %i.bs, -2
  br i1 %.not85, label %.thread95, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = zext i16 %i.bs to i32
  %i.bu = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.bt) #8
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.thread95, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p, %bb.b
  %.sink135 = phi i64 [ 1, %bb.b ], [ 8, %bb.p ], [ 2, %bb.u ]
  %.sink = phi i64 [ -1, %bb.b ], [ -8, %bb.p ], [ -2, %bb.u ]
  %i.bw = load ptr, ptr %2, align 8, !tbaa !41
  %i.bx = getelementptr i8, ptr %i.bw, i64 %.sink135 ; 2 uses
  store ptr %i.bx, ptr %2, align 8, !tbaa !41
  %i.by = add nsw i64 %.06899, %.sink             ; 2 uses
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %.lr.ph, label %.thread95

.thread95:                                        ; preds = %bb.v, %bb.u, %bb.b, %bb.q, %bb.c, %bb.t, %bb.s, %bb.r, %bb.f, %bb.g, %bb.o, %bb.i, %bb.h, %bb.p, %bb.a
  %.4 = phi i64 [ 0, %bb.a ], [ -4, %bb.u ], [ -4, %bb.b ], [ -2, %bb.f ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.t ], [ -2, %bb.c ], [ 1, %bb.q ], [ -4, %bb.p ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.o ], [ 1, %bb.g ], [ 0, %bb.v ]
  ret i64 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 2) i64 @cp949_encode(ptr readnone captures(none) %0, ptr readnone captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef captures(none) %4, i64 noundef %5, ptr noundef captures(none) %6, i64 noundef %7, i32 %8) #6 {
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
  %.not4679 = icmp slt i16 %i.af, -128
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
define internal range(i64 -4, 2) i64 @cp949_decode(ptr readnone captures(none) %0, ptr readnone captures(none) %1, ptr noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !41
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %i.b = phi ptr [ %i.at, %bb.n ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %.03254 = phi i64 [ %i.au, %bb.n ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !38    ; 3 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.d) #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.n, !llvm.loop !68

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %.03254, 1
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %i.d, 127
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr [16 x i8], ptr @ksx1001_decmap, i64 %i.j ; 3 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !63  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.b, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !38
  %i.o = xor i8 %i.n, -128                        ; 3 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr %i.k, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !65    ; 2 uses
  %i.s = zext i8 %i.r to i64
  %.not44 = icmp ult i8 %i.o, %i.r
  br i1 %.not44, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.k, i64 9
  %i.u = load i8, ptr %i.t, align 1, !tbaa !66
  %.not45 = icmp ugt i8 %i.o, %i.u
  br i1 %.not45, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = sub nsw i64 %i.p, %i.s
  %i.w = getelementptr [2 x i8], ptr %i.l, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !55   ; 2 uses
  %.not46 = icmp eq i16 %i.x, -2
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = zext i16 %i.x to i32
  %i.z = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.y) #8
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread, label %bb.n

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.ab = zext i8 %i.c to i64
  %i.ac = getelementptr [16 x i8], ptr @cp949ext_decmap, i64 %i.ab ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !63 ; 2 uses
  %.not47 = icmp eq ptr %i.ad, null
  br i1 %.not47, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %i.b, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !38  ; 3 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.ac, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !65  ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %.not48 = icmp ult i8 %i.af, %i.ai
  br i1 %.not48, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.ac, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !66
  %.not49 = icmp ugt i8 %i.af, %i.al
  br i1 %.not49, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = sub nsw i64 %i.ag, %i.aj
  %i.an = getelementptr [2 x i8], ptr %i.ad, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !55 ; 2 uses
  %.not50 = icmp eq i16 %i.ao, -2
  br i1 %.not50, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = zext i16 %i.ao to i32
  %i.aq = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ap) #8
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h, %bb.b
  %.sink80 = phi i64 [ 1, %bb.b ], [ 2, %bb.h ], [ 2, %bb.m ]
  %.sink = phi i64 [ -1, %bb.b ], [ -2, %bb.h ], [ -2, %bb.m ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !41
  %i.at = getelementptr i8, ptr %i.as, i64 %.sink80 ; 2 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !41
  %i.au = add nsw i64 %.03254, %.sink             ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.n, %bb.m, %bb.b, %bb.c, %bb.h, %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ -4, %bb.m ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ -4, %bb.h ], [ -2, %bb.c ], [ -4, %bb.b ], [ 0, %bb.n ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 2) i64 @johab_encode(ptr readnone captures(none) %0, ptr readnone captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef captures(none) %4, i64 noundef %5, ptr noundef captures(none) %6, i64 noundef %7, i32 %8) #6 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.b = icmp slt i64 %i.a, %5
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.w
  %i.c = phi i64 [ %i.cj, %bb.w ], [ %i.a, %bb.a ] ; 3 uses
  %.074105 = phi i64 [ %i.cm, %bb.w ], [ %7, %bb.a ] ; 3 uses
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
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ] ; 8 uses
  %i.l = icmp ult i32 %.0.i, 128
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.m = icmp slt i64 %.074105, 1
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i32 %.0.i to i8
  %i.o = load ptr, ptr %6, align 8, !tbaa !41
  store i8 %i.n, ptr %i.o, align 1, !tbaa !38
  br label %bb.w, !llvm.loop !69

bb.g:                                             ; preds = %PyUnicode_READ.exit
  %i.p = icmp ugt i32 %.0.i, 65535
  br i1 %i.p, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i64 %.074105, 2
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %.0.i, -44032                ; 2 uses
  %or.cond = icmp ult i32 %i.r, 11172
  br i1 %or.cond, label %bb.j, label %bb.k

end_hunk_0
