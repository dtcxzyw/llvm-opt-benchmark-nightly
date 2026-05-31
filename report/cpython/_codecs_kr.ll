inline.NumInlined: 15
inline.NumDeleted: 11
begin_hunk_0_@johab_encode:bb.a
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

bb.j:                                             ; preds = %bb.i
  %.lhs.trunc = trunc nuw nsw i32 %i.r to i16     ; 3 uses
  %i.s = udiv i16 %.lhs.trunc, 588
  %i.t = zext nneg i16 %i.s to i64
  %i.u = getelementptr i8, ptr @u2johabidx_choseong, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !38
  %i.w = zext i8 %i.v to i16
  %i.x = shl i16 %i.w, 10
  %i.y = udiv i16 %.lhs.trunc, 28
  %i.z = urem i16 %i.y, 21
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr i8, ptr @u2johabidx_jungseong, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !38
  %i.ad = zext i8 %i.ac to i16
  %i.ae = shl nuw nsw i16 %i.ad, 5
  %i.af = urem i16 %.lhs.trunc, 28
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = getelementptr i8, ptr @u2johabidx_jongseong, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !38
  %i.aj = zext i8 %i.ai to i16
  %i.ak = or i16 %i.x, %i.ae
  %i.al = or i16 %i.ak, %i.aj
  %i.am = or i16 %i.al, -32768
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.an = add nsw i32 %.0.i, -12593
  %or.cond3 = icmp ult i32 %i.an, 51
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = zext nneg i32 %.0.i to i64
  %i.ap = getelementptr [2 x i8], ptr @u2johabjamo, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -25186
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !55
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.as = lshr i32 %.0.i, 8
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr [16 x i8], ptr @cp949_encmap, i64 %i.at ; 3 uses
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !57 ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = and i32 %.0.i, 255                      ; 3 uses
  %i.ax = getelementptr i8, ptr %i.au, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !60
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %.not90 = icmp samesign ult i32 %i.aw, %i.az
  br i1 %.not90, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr i8, ptr %i.au, i64 9
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !61
  %i.bc = zext i8 %i.bb to i32
  %.not91 = icmp samesign ugt i32 %i.aw, %i.bc
  br i1 %.not91, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = sub nsw i32 %i.aw, %i.az
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr [2 x i8], ptr %i.av, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !55 ; 8 uses
  %.not92 = icmp eq i16 %i.bg, -1
  br i1 %.not92, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = lshr i16 %i.bg, 8
  %i.bi = add i16 %i.bg, -8448
  %or.cond6 = icmp ult i16 %i.bi, 3072
  br i1 %or.cond6, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = add i16 %i.bg, -18944
  %or.cond9 = icmp ult i16 %i.bj, 13312
  %.mask = and i16 %i.bg, 255                     ; 2 uses
  %i.bk = icmp samesign ugt i16 %.mask, 32
  %or.cond12 = select i1 %or.cond9, i1 %i.bk, i1 false
  br i1 %or.cond12, label %bb.t, label %.thread

bb.s:                                             ; preds = %bb.q
  %.mask93 = and i16 %i.bg, 255                   ; 2 uses
  %.old11 = icmp samesign ugt i16 %.mask93, 32
  br i1 %.old11, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.r, %bb.s
  %.pre-phi = phi i16 [ %.mask, %bb.r ], [ %.mask93, %bb.s ]
  %i.bl = icmp samesign ult i16 %.pre-phi, 127
  br i1 %i.bl, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.bm = zext nneg i16 %i.bg to i32
  %i.bn = icmp samesign ult i16 %i.bg, 18944
  %.v104 = select i1 %i.bn, i16 401, i16 374
  %i.bo = add nuw nsw i16 %.v104, %i.bh           ; 2 uses
  %i.bp = and i16 %i.bo, 1
  %.not94 = icmp eq i16 %i.bp, 0
  %i.bq = select i1 %.not94, i32 0, i32 94
  %i.br = add nuw nsw i32 %i.bm, 223
  %i.bs = add nuw nsw i32 %i.br, %i.bq            ; 2 uses
  %i.bt = lshr i16 %i.bo, 1
  %i.bu = trunc i16 %i.bt to i8
  %i.bv = load ptr, ptr %6, align 8, !tbaa !41
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !38
  %i.bw = and i32 %i.bs, 254
  %i.bx = icmp samesign ult i32 %i.bw, 78
  %.v = select i1 %i.bx, i32 49, i32 67
  %i.by = add nuw nsw i32 %.v, %i.bs
  %i.bz = trunc i32 %i.by to i8
  %i.ca = load ptr, ptr %6, align 8, !tbaa !41
  %i.cb = getelementptr i8, ptr %i.ca, i64 1
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !38
  br label %bb.w, !llvm.loop !69

bb.v:                                             ; preds = %bb.j, %bb.l
  %.077 = phi i16 [ %i.am, %bb.j ], [ %i.ar, %bb.l ] ; 2 uses
  %i.cc = lshr i16 %.077, 8
  %i.cd = trunc nuw i16 %i.cc to i8
  %i.ce = load ptr, ptr %6, align 8, !tbaa !41
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !38
  %i.cf = trunc i16 %.077 to i8
  %i.cg = load ptr, ptr %6, align 8, !tbaa !41
  %i.ch = getelementptr i8, ptr %i.cg, i64 1
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !38
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.f
  %.sink135 = phi i64 [ 2, %bb.u ], [ 2, %bb.v ], [ 1, %bb.f ]
  %.sink = phi i64 [ -2, %bb.u ], [ -2, %bb.v ], [ -1, %bb.f ]
  %i.ci = load i64, ptr %4, align 8, !tbaa !54
  %i.cj = add i64 %i.ci, 1                        ; 3 uses
  store i64 %i.cj, ptr %4, align 8, !tbaa !54
  %i.ck = load ptr, ptr %6, align 8, !tbaa !41
  %i.cl = getelementptr i8, ptr %i.ck, i64 %.sink135
  store ptr %i.cl, ptr %6, align 8, !tbaa !41
  %i.cm = add nsw i64 %.074105, %.sink
  %i.cn = icmp slt i64 %i.cj, %5
  br i1 %i.cn, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.w, %bb.r, %bb.e, %bb.g, %bb.h, %bb.t, %bb.s, %bb.p, %bb.o, %bb.n, %bb.m, %bb.a
  %.3 = phi i64 [ 0, %bb.a ], [ 1, %bb.r ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.s ], [ 1, %bb.t ], [ -1, %bb.h ], [ 1, %bb.g ], [ -1, %bb.e ], [ 0, %bb.w ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4, 2) i64 @johab_decode(ptr readnone captures(none) %0, ptr readnone captures(none) %1, ptr noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.thread128

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !41
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %i.b = phi ptr [ %i.cw, %bb.y ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.096133 = phi i64 [ %i.cx, %bb.y ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !38    ; 9 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = zext nneg i8 %i.c to i32
  %i.f = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.e) #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread128, label %bb.y, !llvm.loop !70

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %.096133, 1
  br i1 %i.h, label %.thread128, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.b, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !38
  %.fr = freeze i8 %i.j                           ; 8 uses
  %i.k = icmp samesign ult i8 %i.c, -40
  br i1 %i.k, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.l = lshr i8 %i.c, 2
  %i.m = and i8 %i.l, 31                          ; 3 uses
  %i.n = shl i8 %i.c, 3
  %i.o = lshr i8 %.fr, 5
  %.masked = and i8 %i.n, 24
  %i.p = or disjoint i8 %i.o, %.masked            ; 2 uses
  %i.q = and i8 %.fr, 31                          ; 4 uses
  %i.r = zext nneg i8 %i.m to i64                 ; 2 uses
  %i.s = getelementptr i8, ptr @johabidx_choseong, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !38
  %i.u = zext nneg i8 %i.p to i64                 ; 3 uses
  %i.v = getelementptr i8, ptr @johabidx_jungseong, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38
  %i.x = zext nneg i8 %i.q to i64                 ; 3 uses
  %i.y = getelementptr i8, ptr @johabidx_jongseong, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !38
  %i.aa = zext i8 %i.t to i32
  %i.ab = add nsw i8 %i.m, -21
  %i.ac = icmp ult i8 %i.ab, -20
  %i.ad = zext i8 %i.w to i32
  %i.ae = lshr i64 3271754499, %i.u
  %i.af = trunc i64 %i.ae to i1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.af
  %i.ag = lshr i64 3221487617, %i.x
  %i.ah = trunc i64 %i.ag to i1
  %or.cond6 = select i1 %or.cond, i1 true, i1 %i.ah
  br i1 %or.cond6, label %.thread128, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i8 %i.m, 1
  %i.aj = icmp eq i8 %i.p, 2                      ; 2 uses
  br i1 %i.ai, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp eq i8 %i.q, 1                      ; 2 uses
  br i1 %i.aj, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 12288) #8
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.thread128, label %bb.y

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr @johabjamo_jongseong, i64 %i.x
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !38
  %i.ap = zext i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.ap, 12544
  %i.ar = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.aq) #8
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.thread128, label %bb.y

bb.k:                                             ; preds = %bb.g
  br i1 %i.ak, label %bb.l, label %.thread128

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr i8, ptr @johabjamo_jungseong, i64 %i.u
  %i.au = load i8, ptr %i.at, align 1, !tbaa !38
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.av, 12544
  %i.ax = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.aw) #8
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.thread128, label %bb.y

bb.m:                                             ; preds = %bb.f
  br i1 %i.aj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.az = icmp eq i8 %i.q, 1
  br i1 %i.az, label %bb.o, label %.thread128

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr i8, ptr @johabjamo_choseong, i64 %i.r
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !38
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.bc, 12544
  %i.be = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.bd) #8
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.thread128, label %bb.y

bb.p:                                             ; preds = %bb.m
  %i.bg = mul nuw nsw i32 %i.aa, 588
  %i.bh = add nuw nsw i32 %i.bg, 44032
  %i.bi = mul nuw nsw i32 %i.ad, 28
  %i.bj = add nuw nsw i32 %i.bh, %i.bi
  %i.bk = icmp eq i8 %i.q, 1
  %narrow = select i1 %i.bk, i8 0, i8 %i.z
  %i.bl = zext i8 %narrow to i32
  %i.bm = add nuw nsw i32 %i.bj, %i.bl
  %i.bn = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.bm) #8
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %.thread128, label %bb.y

bb.q:                                             ; preds = %bb.d
  %i.bp = icmp ult i8 %.fr, 49
  br i1 %i.bp, label %.thread128, label %switch.early.test

switch.early.test:                                ; preds = %bb.q
  switch i8 %i.c, label %bb.r [
    i8 -1, label %.thread128
    i8 -2, label %.thread128
    i8 -3, label %.thread128
    i8 -4, label %.thread128
    i8 -5, label %.thread128
    i8 -6, label %.thread128
    i8 -33, label %.thread128
  ]

bb.r:                                             ; preds = %switch.early.test
  %i.bq = icmp ult i8 %.fr, -111
  %or.cond15 = icmp slt i8 %.fr, -111
  %i.br = and i8 %.fr, 127
  %i.bs = icmp eq i8 %i.br, 127
  %or.cond118 = or i1 %or.cond15, %i.bs
  br i1 %or.cond118, label %.thread128, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = icmp eq i8 %i.c, -38
  %i.bu = add i8 %.fr, 95
  %i.bv = icmp ult i8 %i.bu, 51
  %or.cond21 = and i1 %i.bt, %i.bv
  br i1 %or.cond21, label %.thread128, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = icmp samesign ult i8 %i.c, -32
  %i.bx = shl nsw i8 %i.c, 1
  %.v132 = select i1 %i.bw, i8 78, i8 105
  %i.by = add nsw i8 %.v132, %i.bx
  %.v = select i1 %i.bq, i8 -49, i8 -67
  %i.bz = add i8 %.v, %.fr                        ; 2 uses
  %i.ca = icmp ugt i8 %i.bz, 93                   ; 2 uses
  %i.cb = zext i1 %i.ca to i8
  %i.cc = add nsw i8 %i.by, %i.cb
  %i.cd = sext i8 %i.cc to i64
  %i.ce = getelementptr [16 x i8], ptr @ksx1001_decmap, i64 %i.cd ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 528
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %.thread128, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = select i1 %i.ca, i8 -61, i8 33
  %i.ci = add i8 %i.ch, %i.bz                     ; 3 uses
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = getelementptr i8, ptr %i.ce, i64 536
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !65  ; 2 uses
  %i.cm = zext i8 %i.cl to i64
  %.not114 = icmp ult i8 %i.ci, %i.cl
  br i1 %.not114, label %.thread128, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr i8, ptr %i.ce, i64 537
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !66
  %.not115 = icmp ugt i8 %i.ci, %i.co
  br i1 %.not115, label %.thread128, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = sub nsw i64 %i.cj, %i.cm
  %i.cq = getelementptr [2 x i8], ptr %i.cg, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !55 ; 2 uses
  %.not116 = icmp eq i16 %i.cr, -2
  br i1 %.not116, label %.thread128, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = zext i16 %i.cr to i32
  %i.ct = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.cs) #8
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %.thread128, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.l, %bb.i, %bb.j, %bb.p, %bb.o, %bb.b
  %.sink189 = phi i64 [ 1, %bb.b ], [ 2, %bb.l ], [ 2, %bb.o ], [ 2, %bb.p ], [ 2, %bb.j ], [ 2, %bb.i ], [ 2, %bb.x ]
  %.sink = phi i64 [ -1, %bb.b ], [ -2, %bb.l ], [ -2, %bb.o ], [ -2, %bb.p ], [ -2, %bb.j ], [ -2, %bb.i ], [ -2, %bb.x ]
  %i.cv = load ptr, ptr %2, align 8, !tbaa !41
  %i.cw = getelementptr i8, ptr %i.cv, i64 %.sink189 ; 2 uses
  store ptr %i.cw, ptr %2, align 8, !tbaa !41
  %i.cx = add nsw i64 %.096133, %.sink            ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %.lr.ph, label %.thread128

.thread128:                                       ; preds = %bb.y, %bb.b, %bb.r, %bb.c, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.q, %bb.s, %bb.n, %bb.e, %bb.i, %bb.j, %bb.l, %bb.k, %bb.o, %bb.p, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.a
  %.5 = phi i64 [ 0, %bb.a ], [ -4, %bb.b ], [ 1, %bb.n ], [ 1, %bb.s ], [ 1, %bb.q ], [ 1, %switch.early.test ], [ 1, %switch.early.test ], [ 1, %switch.early.test ], [ 1, %switch.early.test ], [ 1, %switch.early.test ], [ 1, %switch.early.test ], [ 1, %switch.early.test ], [ 1, %bb.e ], [ -2, %bb.c ], [ 1, %bb.r ], [ -4, %bb.x ], [ -4, %bb.p ], [ -4, %bb.o ], [ 1, %bb.k ], [ -4, %bb.l ], [ -4, %bb.j ], [ -4, %bb.i ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 0, %bb.y ]
  ret i64 %.5
}

declare i32 @_PyUnicodeWriter_WriteChar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 8}
!11 = !{!"_cjk_mod_state", !7, i64 0, !7, i64 4, !12, i64 8, !14, i64 16}
!12 = !{!"p1 _ZTS8dbcs_map", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS16_multibyte_codec", !13, i64 0}
!15 = !{!11, !14, i64 16}
!16 = !{!17, !18, i64 8}
!17 = !{!"_object", !8, i64 0, !18, i64 8}
!18 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!19 = !{!20, !22, i64 168}
!20 = !{!"_typeobject", !21, i64 0, !23, i64 24, !22, i64 32, !22, i64 40, !13, i64 48, !22, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !22, i64 168, !23, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !22, i64 208, !13, i64 216, !13, i64 224, !24, i64 232, !25, i64 240, !26, i64 248, !18, i64 256, !27, i64 264, !13, i64 272, !13, i64 280, !22, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !27, i64 336, !27, i64 344, !27, i64 352, !13, i64 360, !27, i64 368, !13, i64 376, !7, i64 384, !13, i64 392, !13, i64 400, !8, i64 408, !28, i64 410}
!21 = !{!"PyVarObject", !17, i64 0, !22, i64 16}
!22 = !{!"long", !8, i64 0}
!23 = !{!"p1 omnipotent char", !13, i64 0}
!24 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!25 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!26 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!27 = !{!"p1 _ZTS7_object", !13, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = !{!27, !27, i64 0}
!30 = !{!11, !7, i64 4}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!34, !23, i64 0}
!34 = !{!"_multibyte_codec", !23, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !35, i64 72}
!35 = !{!"p1 _ZTS14_cjk_mod_state", !13, i64 0}
!36 = !{!37, !14, i64 0}
!37 = !{!"", !14, i64 0, !27, i64 8}
!38 = !{!8, !8, i64 0}
!39 = !{!37, !27, i64 8}
!40 = !{!11, !7, i64 0}
!41 = !{!23, !23, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"p1 _ZTS10unim_index", !13, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 _ZTS10dbcs_index", !13, i64 0}
!46 = !{!13, !13, i64 0}
!47 = !{!34, !35, i64 72}
!48 = distinct !{!48, !32}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !32}
!52 = !{!53, !23, i64 0}
!53 = !{!"dbcs_map", !23, i64 0, !43, i64 8, !45, i64 16}
!54 = !{!22, !22, i64 0}
!55 = !{!28, !28, i64 0}
!56 = distinct !{!56, !32}
!57 = !{!58, !59, i64 0}
!58 = !{!"unim_index", !59, i64 0, !8, i64 8, !8, i64 9}
!59 = !{!"p1 short", !13, i64 0}
!60 = !{!58, !8, i64 8}
!61 = !{!58, !8, i64 9}
!62 = distinct !{!62, !32}
!63 = !{!64, !59, i64 0}
!64 = !{!"dbcs_index", !59, i64 0, !8, i64 8, !8, i64 9}
!65 = !{!64, !8, i64 8}
!66 = !{!64, !8, i64 9}
!67 = distinct !{!67, !32}
!68 = distinct !{!68, !32}
!69 = distinct !{!69, !32}
!70 = distinct !{!70, !32}
end_hunk_0
