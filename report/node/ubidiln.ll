inline.NumInlined: 22
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ubidi_setLine_78(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %.not120 = icmp eq ptr %0, null
  br i1 %.not120, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 27, ptr %4, align 4
  br label %bb.ak

bb.f:                                             ; preds = %bb.d
  %i.f = icmp sgt i32 %1, -1
  %.not121 = icmp slt i32 %1, %2
  %or.cond = and i1 %i.f, %.not121
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %4, align 4
  br label %bb.ak

bb.h:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %.not122.not = icmp sgt i32 %2, %i.h
  br i1 %.not122.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %4, align 4
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.i = icmp eq ptr %3, null
  br i1 %i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %4, align 4
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.j = tail call i32 @ubidi_getParagraph_78(ptr noundef nonnull %0, i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %4) #9
  %i.k = add nsw i32 %2, -1
  %i.l = tail call i32 @ubidi_getParagraph_78(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %4) #9
  %.not123 = icmp eq i32 %i.j, %i.l
  br i1 %.not123, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %4, align 4
  br label %bb.ak

bb.n:                                             ; preds = %bb.l
  store ptr null, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext nneg i32 %1 to i64                  ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = sub nsw i32 %2, %1                       ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i32 %i.r, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.w = load i8, ptr %i.v, align 2
  %.not124 = icmp eq i8 %i.w, 0
  br i1 %.not124, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp slt i32 %1, %i.z
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.ac = load i8, ptr %i.ab, align 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ad = tail call zeroext i8 @ubidi_getParaLevelAtIndex_78(ptr noundef nonnull %0, i32 noundef %1) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ae = phi i8 [ %i.ac, %bb.p ], [ %i.ad, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 141 ; 6 uses
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 304
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 188
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 132
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i32 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 440 ; 2 uses
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %i.av = phi i32 [ %i.bc, %bb.t ], [ 0, %bb.r ]  ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ %i.o, %bb.r ] ; 2 uses
  %i.aw = load ptr, ptr %i.m, align 8
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load i16, ptr %i.ax, align 2
  %.fr133 = freeze i16 %i.ay                      ; 2 uses
  %i.az = and i16 %.fr133, -4
  %i.ba = icmp eq i16 %i.az, 8204
  br i1 %i.ba, label %bb.s, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph
  switch i16 %.fr133, label %bb.t [
    i16 8297, label %bb.s
    i16 8296, label %bb.s
    i16 8295, label %bb.s
    i16 8294, label %bb.s
    i16 8238, label %bb.s
    i16 8237, label %bb.s
    i16 8236, label %bb.s
    i16 8235, label %bb.s
    i16 8234, label %bb.s
  ]

bb.s:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %.lr.ph
  %i.bb = add nsw i32 %i.av, 1                    ; 2 uses
  store i32 %i.bb, ptr %i.ar, align 8
  br label %bb.t

bb.t:                                             ; preds = %switch.early.test, %bb.s
  %i.bc = phi i32 [ %i.av, %switch.early.test ], [ %i.bb, %bb.s ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = trunc nuw i64 %indvars.iv.next to i32
  %i.be = icmp sgt i32 %2, %i.bd
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.t
  %i.bf = load i32, ptr %i.u, align 8
  %i.bg = sub nsw i32 %i.bf, %i.bc
  store i32 %i.bg, ptr %i.u, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.o
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.o ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 120
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 296
  store i32 -1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.br = load i32, ptr %i.bq, align 8            ; 2 uses
  %.not125 = icmp eq i32 %i.br, 2
  br i1 %.not125, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i32 %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bu = load i32, ptr %i.bt, align 4            ; 3 uses
  %.not128 = icmp sgt i32 %i.bu, %1
  br i1 %.not128, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 196
  store i32 0, ptr %i.bv, align 4
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.bw = icmp slt i32 %i.bu, %2
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bx = sub nsw i32 %i.bu, %1
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 196
  store i32 %i.bx, ptr %i.by, align 4
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 196
  store i32 %i.r, ptr %i.bz, align 4
  br label %.thread

bb.aa:                                            ; preds = %bb.u
  tail call fastcc void @_ZL18setTrailingWSStartP5UBiDi(ptr noundef %3)
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 196 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4            ; 4 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cd = load i8, ptr %i.af, align 1
  %i.ce = and i8 %i.cd, 1
  br label %._crit_edge138

bb.ac:                                            ; preds = %bb.aa
  %i.cf = load i8, ptr %i.bn, align 1
  %i.cg = and i8 %i.cf, 1                         ; 4 uses
  %i.ch = icmp slt i32 %i.cb, %i.r
  br i1 %i.ch, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ci = load i8, ptr %i.af, align 1
  %i.cj = and i8 %i.ci, 1
  %.not126 = icmp eq i8 %i.cj, %i.cg
  br i1 %.not126, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i32 2, ptr %i.ck, align 8
  br label %.thread

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.cl = icmp eq i32 %i.cb, 1
  br i1 %i.cl, label %._crit_edge138, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %bb.af
  %i.cm = zext i32 %i.cb to i64
  br label %.lr.ph137

bb.ag:                                            ; preds = %.lr.ph137
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.cn = icmp eq i64 %indvars.iv.next141, %i.cm
  br i1 %i.cn, label %._crit_edge138, label %.lr.ph137, !llvm.loop !7

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %bb.ag
  %indvars.iv140 = phi i64 [ 1, %.lr.ph137.preheader ], [ %indvars.iv.next141, %bb.ag ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv140
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = and i8 %i.cp, 1
  %.not127 = icmp eq i8 %i.cq, %i.cg
  br i1 %.not127, label %bb.ag, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph137
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i32 2, ptr %i.cr, align 8
  br label %.thread

._crit_edge138:                                   ; preds = %bb.ag, %bb.af, %bb.ab
  %.sink151 = phi i8 [ %i.ce, %bb.ab ], [ %i.cg, %bb.af ], [ %i.cg, %bb.ag ] ; 2 uses
  %i.cs = zext nneg i8 %.sink151 to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i32 %i.cs, ptr %i.ct, align 8
  %i.cu = icmp eq i8 %.sink151, 0
  %i.cv = load i8, ptr %i.af, align 1             ; 2 uses
  br i1 %i.cu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge138
  %i.cw = add i8 %i.cv, 1
  %i.cx = and i8 %i.cw, -2
  store i8 %i.cx, ptr %i.af, align 1
  store i32 0, ptr %i.ca, align 4
  br label %.thread

bb.aj:                                            ; preds = %._crit_edge138
  %i.cy = or i8 %i.cv, 1
  store i8 %i.cy, ptr %i.af, align 1
  store i32 0, ptr %i.ca, align 4
  br label %.thread

.thread:                                          ; preds = %bb.ah, %bb.ae, %bb.ai, %bb.aj, %bb.w, %bb.z, %bb.y
  store ptr %0, ptr %3, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.b, %.thread, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  ret void
}

declare i32 @ubidi_getParagraph_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ubidi_getParaLevelAtIndex_78(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL18setTrailingWSStartP5UBiDi(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.h = load i8, ptr %i.g, align 1
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp ne i8 %i.l, 7
  %i.n = icmp sgt i32 %i.f, 0
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.020 = phi i32 [ %i.v, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.o = zext nneg i32 %.020 to i64
  %i.p = getelementptr i8, ptr %i.b, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = and i64 %i.t, 8248192
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %.lr.ph24, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = add nsw i32 %.020, -1
  %i.w = icmp sgt i32 %.020, 1
  br i1 %i.w, label %.lr.ph, label %.critedge2, !llvm.loop !8

.lr.ph24:                                         ; preds = %.lr.ph, %bb.c
  %.123 = phi i32 [ %i.ac, %bb.c ], [ %.020, %.lr.ph ] ; 4 uses
  %i.x = zext nneg i32 %.123 to i64
  %i.y = getelementptr i8, ptr %i.d, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, %i.h
  br i1 %i.ab, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %.lr.ph24
  %i.ac = add nsw i32 %.123, -1
  %i.ad = icmp sgt i32 %.123, 1
  br i1 %i.ad, label %.lr.ph24, label %.critedge2, !llvm.loop !9

.critedge2:                                       ; preds = %bb.b, %bb.c, %.lr.ph24, %bb.a
  %.1.lcssa.sink = phi i32 [ %i.f, %bb.a ], [ 0, %bb.c ], [ %.123, %.lr.ph24 ], [ 0, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %.1.lcssa.sink, ptr %i.ae, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local zeroext i8 @ubidi_getLevelAt_78(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not25 = icmp eq ptr %i.a, null
  br i1 %.not25, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = icmp ne ptr %i.c, %i.a
  %i.e = icmp slt i32 %1, 0
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.n, label %bb.f

bb.e:                                             ; preds = %bb.b
  %.old1 = icmp slt i32 %1, 0
  br i1 %.old1, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4
  %.not26 = icmp sgt i32 %i.g, %1
  br i1 %.not26, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load i32, ptr %i.h, align 8
  %.not27 = icmp eq i32 %i.i, 2
  br i1 %.not27, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.k = load i32, ptr %i.j, align 4
  %.not28 = icmp slt i32 %1, %i.k
  br i1 %.not28, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.m = load i8, ptr %i.l, align 2
  %.not29 = icmp eq i8 %i.m, 0
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp slt i32 %1, %i.p
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.s = load i8, ptr %i.r, align 1
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.t = tail call zeroext i8 @ubidi_getParaLevelAtIndex_78(ptr noundef nonnull %0, i32 noundef %1) #9
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = zext nneg i32 %1 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.m
  %.0 = phi i8 [ %i.y, %bb.m ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.s, %bb.k ], [ %i.t, %bb.l ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @ubidi_getLevels_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %.not42 = icmp eq ptr %0, null
  br i1 %.not42, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not43 = icmp eq ptr %i.d, null
  br i1 %.not43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  store i32 27, ptr %1, align 4
  br label %bb.r

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4              ; 5 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %1, align 4
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 5 uses
  %i.m = icmp eq i32 %i.l, %i.i
  br i1 %i.m, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i8, ptr %i.r, align 8
  %i.t = tail call signext i8 @ubidi_getMemory_78(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i8 noundef signext %i.s, i32 noundef %i.i) #9
  %.not44 = icmp eq i8 %i.t, 0
  br i1 %.not44, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = load ptr, ptr %i.p, align 8              ; 5 uses
  %i.v = icmp sgt i32 %i.l, 0
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not45 = icmp eq ptr %i.u, %i.x
  br i1 %.not45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = zext nneg i32 %i.l to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.z = sext i32 %i.l to i64
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = sub nsw i32 %i.i, %i.l
  %i.ae = sext i32 %i.ad to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 %i.ac, i64 %i.ae, i1 false)
  store i32 %i.i, ptr %i.k, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.u, ptr %i.af, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store i32 7, ptr %1, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.b, %bb.q, %bb.p, %bb.k, %bb.i, %bb.g
  %.0 = phi ptr [ null, %bb.g ], [ null, %bb.i ], [ %i.o, %bb.k ], [ %i.u, %bb.p ], [ null, %bb.q ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare signext i8 @ubidi_getMemory_78(ptr noundef, ptr noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ubidi_getLogicalRun_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %ubidi_countRuns_78.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %ubidi_countRuns_78.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not17.i = icmp eq ptr %i.d, null
  br i1 %.not17.i, label %ubidi_countRuns_78.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %bb.f, label %ubidi_countRuns_78.exit

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.h = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr nonnull poison) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 4
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.04157 = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.6.0.copyload4, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload2 = load i32, ptr %i.n, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.6.0.copyload4 = load i32, ptr %.sroa.6.0..sroa_idx3, align 4 ; 2 uses
  %i.o = and i32 %.sroa.0.0.copyload2, 2147483647 ; 2 uses
  %i.p = sub i32 %.sroa.6.0.copyload4, %.04157
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %.not48 = icmp sge i32 %1, %i.o
  %i.r = icmp slt i32 %1, %i.q
  %or.cond = select i1 %.not48, i1 %i.r, i1 false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond68 = select i1 %or.cond, i1 true, i1 %exitcond.not
  br i1 %or.cond68, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ %i.q, %.lr.ph ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.copyload, %bb.f ], [ %.sroa.0.0.copyload2, %.lr.ph ]
  %.not49 = icmp eq ptr %2, null
  br i1 %.not49, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store i32 %.1, ptr %2, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.not50 = icmp eq ptr %3, null
  br i1 %.not50, label %ubidi_countRuns_78.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp eq i32 %i.t, 3
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = lshr i32 %.sroa.0.1, 31
  %i.w = trunc nuw nsw i32 %i.v to i8
  br label %ubidi_countRuns_78.exit.sink.split

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = load i32, ptr %i.x, align 8
  %.not51 = icmp eq i32 %i.y, 2
  br i1 %.not51, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.aa = load i32, ptr %i.z, align 4
  %.not52 = icmp slt i32 %1, %i.aa
  br i1 %.not52, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.ac = load i8, ptr %i.ab, align 2
  %.not53 = icmp eq i8 %i.ac, 0
  br i1 %.not53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp slt i32 %1, %i.af
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.ai = load i8, ptr %i.ah, align 1
  br label %ubidi_countRuns_78.exit.sink.split

bb.p:                                             ; preds = %bb.n
  %i.aj = tail call zeroext i8 @ubidi_getParaLevelAtIndex_78(ptr noundef nonnull %0, i32 noundef %1) #9
  br label %ubidi_countRuns_78.exit.sink.split

bb.q:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = zext nneg i32 %1 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  br label %ubidi_countRuns_78.exit.sink.split

ubidi_countRuns_78.exit.sink.split:               ; preds = %bb.o, %bb.p, %bb.j, %bb.q
  %.sink = phi i8 [ %i.w, %bb.j ], [ %i.ao, %bb.q ], [ %i.ai, %bb.o ], [ %i.aj, %bb.p ]
  store i8 %.sink, ptr %3, align 1
  br label %ubidi_countRuns_78.exit

ubidi_countRuns_78.exit:                          ; preds = %ubidi_countRuns_78.exit.sink.split, %bb.e, %bb.d, %bb.a, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @ubidi_countRuns_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %.not16 = icmp eq ptr %0, null
  br i1 %.not16, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  store i32 27, ptr %1, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.d, %bb.f
  %i.h = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr nonnull poison) ; 0 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.l = load i32, ptr %i.k, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.a, %bb.b, %bb.i, %bb.g
  %.0 = phi i32 [ -1, %bb.g ], [ -1, %bb.a ], [ %i.l, %bb.i ], [ -1, %bb.b ], [ -1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @ubidi_getRuns_78(ptr noundef %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %.critedge159, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.h, ptr %i.i, align 8
  store i32 1, ptr %i.a, align 8
  %i.j = and i8 %i.g, 1
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw i32 %i.k, 31
  store i32 %i.l, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.p, align 8
  br label %.critedge159.thread

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4              ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4              ; 9 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph.preheader325, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi304 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vector.recur = phi <4 x i8> [ <i8 poison, i8 poison, i8 poison, i8 -2>, %vector.ph ], [ %wide.load305, %vector.body ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load = load <4 x i8>, ptr %i.x, align 1   ; 3 uses
  %wide.load305 = load <4 x i8>, ptr %i.y, align 1 ; 4 uses
  %i.z = shufflevector <4 x i8> %vector.recur, <4 x i8> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aa = shufflevector <4 x i8> %wide.load, <4 x i8> %wide.load305, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ab = icmp ne <4 x i8> %wide.load, %i.z
  %i.ac = icmp ne <4 x i8> %wide.load305, %i.aa
  %i.ad = zext <4 x i1> %i.ab to <4 x i32>
  %i.ae = zext <4 x i1> %i.ac to <4 x i32>
  %i.af = add <4 x i32> %vec.phi, %i.ad           ; 2 uses
  %i.ag = add <4 x i32> %vec.phi304, %i.ae        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ag, %i.af
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <4 x i8> %wide.load305, i64 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader325

.lr.ph.preheader325:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0132197.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ai, %middle.block ]
  %.0135196.ph = phi i8 [ -2, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader325, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader325 ] ; 2 uses
  %.0132197 = phi i32 [ %spec.select154, %.lr.ph ], [ %.0132197.ph, %.lr.ph.preheader325 ]
  %.0135196 = phi i8 [ %i.ak, %.lr.ph ], [ %.0135196.ph, %.lr.ph.preheader325 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %.not153 = icmp ne i8 %i.ak, %.0135196
  %i.al = zext i1 %.not153 to i32
  %spec.select154 = add nuw nsw i32 %.0132197, %i.al ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select154.lcssa = phi i32 [ %i.ai, %middle.block ], [ %spec.select154, %.lr.ph ] ; 2 uses
  %i.am = icmp eq i32 %spec.select154.lcssa, 1
  %i.an = icmp eq i32 %i.v, %i.r
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.e, label %._crit_edge.thread

bb.e:                                             ; preds = %._crit_edge
  %i.ao = load i8, ptr %i.t, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.ap, ptr %i.aq, align 8
  store i32 1, ptr %i.a, align 8
  %i.ar = and i8 %i.ao, 1
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw i32 %i.as, 31
  store i32 %i.at, ptr %i.ap, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %i.r, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.av, align 8
  br label %.critedge159.thread

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %.0132.lcssa250 = phi i32 [ %spec.select154.lcssa, %._crit_edge ], [ 0, %bb.d ] ; 2 uses
  %i.aw = icmp slt i32 %i.v, %i.r                 ; 3 uses
  %i.ax = zext i1 %i.aw to i32
  %spec.select155 = add nuw nsw i32 %.0132.lcssa250, %i.ax ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = mul i32 %spec.select155, 12
  %i.bd = tail call signext i8 @ubidi_getMemory_78(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, i8 noundef signext %i.bb, i32 noundef %i.bc) #9
  %.not151.not = icmp eq i8 %i.bd, 0
  br i1 %.not151.not, label %.critedge159, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread
  %i.be = load ptr, ptr %i.ay, align 8            ; 14 uses
  %i.bf = sext i32 %i.v to i64                    ; 2 uses
  %i.bg = load i8, ptr %i.t, align 1              ; 4 uses
  %spec.select156288 = tail call i8 @llvm.umin.i8(i8 %i.bg, i8 126) ; 2 uses
  %i.bh = icmp sgt i32 %i.v, 1
  br i1 %i.bh, label %.lr.ph276, label %._crit_edge277

.lr.ph276:                                        ; preds = %bb.f, %.critedge
  %indvars.iv.next223273293 = phi i64 [ %indvars.iv.next223273, %.critedge ], [ 1, %bb.f ]
  %.1145292 = phi i8 [ %.1145, %.critedge ], [ %i.bg, %bb.f ] ; 2 uses
  %spec.select156291 = phi i8 [ %spec.select156, %.critedge ], [ %spec.select156288, %bb.f ] ; 2 uses
  %i.bi = phi i8 [ %i.bu, %.critedge ], [ %i.bg, %bb.f ]
  %.1129290 = phi i32 [ %i.bn, %.critedge ], [ 0, %bb.f ] ; 3 uses
  %indvars.iv225289 = phi i64 [ %indvars.iv.next226, %.critedge ], [ 0, %bb.f ] ; 3 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next223 = add nsw i64 %indvars.iv.next223274, 1 ; 3 uses
  %i.bj = icmp slt i64 %indvars.iv.next223, %i.bf
  br i1 %i.bj, label %bb.h, label %._crit_edge277, !llvm.loop !15

bb.h:                                             ; preds = %.lr.ph276, %bb.g
  %indvars.iv.next223274 = phi i64 [ %indvars.iv.next223273293, %.lr.ph276 ], [ %indvars.iv.next223, %bb.g ] ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next223274
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, %i.bi
  br i1 %i.bm, label %bb.g, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %bb.h
  %i.bn = trunc nsw i64 %indvars.iv.next223274 to i32 ; 3 uses
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv225289 ; 3 uses
  store i32 %.1129290, ptr %i.bo, align 4
  %i.bp = sub nsw i32 %i.bn, %.1129290
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.bp, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 0, ptr %i.br, align 4
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225289, 1 ; 2 uses
  %sext306 = shl i64 %indvars.iv.next223274, 32
  %i.bs = ashr exact i64 %sext306, 32             ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.t, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1             ; 3 uses
  %spec.select156 = tail call i8 @llvm.umin.i8(i8 %i.bu, i8 %spec.select156291) ; 2 uses
  %.1145 = tail call i8 @llvm.umax.i8(i8 %i.bu, i8 %.1145292) ; 2 uses
  %indvars.iv.next223273 = add nsw i64 %i.bs, 1   ; 3 uses
  %i.bv = icmp slt i64 %indvars.iv.next223273, %i.bf
  br i1 %i.bv, label %.lr.ph276, label %._crit_edge277

._crit_edge277:                                   ; preds = %.critedge, %bb.g, %bb.f
  %indvars.iv225.lcssa = phi i64 [ %indvars.iv225289, %bb.g ], [ 0, %bb.f ], [ %indvars.iv.next226, %.critedge ] ; 2 uses
  %.1129.lcssa = phi i32 [ %.1129290, %bb.g ], [ 0, %bb.f ], [ %i.bn, %.critedge ] ; 2 uses
  %spec.select156.lcssa = phi i8 [ %spec.select156291, %bb.g ], [ %spec.select156288, %bb.f ], [ %spec.select156, %.critedge ] ; 2 uses
  %.1145.lcssa = phi i8 [ %.1145292, %bb.g ], [ %i.bg, %bb.f ], [ %.1145, %.critedge ] ; 2 uses
  %indvars.iv.next223.lcssa = phi i64 [ %indvars.iv.next223, %bb.g ], [ 1, %bb.f ], [ %indvars.iv.next223273, %.critedge ]
  %i.bw = trunc nuw nsw i64 %indvars.iv225.lcssa to i32
  %i.bx = trunc nsw i64 %indvars.iv.next223.lcssa to i32
  %i.by = and i64 %indvars.iv225.lcssa, 4294967295
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.by ; 3 uses
  store i32 %.1129.lcssa, ptr %i.bz, align 4
  %i.ca = sub nsw i32 %i.bx, %.1129.lcssa
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.ca, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 0, ptr %i.cc, align 4
  %i.cd = add nuw nsw i32 %i.bw, 1                ; 3 uses
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge277
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.ce ; 2 uses
  store i32 %i.v, ptr %i.cf, align 4
  %i.cg = sub nsw i32 %i.r, %i.v
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.cg, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.cj = load i8, ptr %i.ci, align 1
  %spec.select157 = tail call i8 @llvm.umin.i8(i8 %i.cj, i8 %spec.select156.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge277
  %.2141 = phi i8 [ %spec.select156.lcssa, %._crit_edge277 ], [ %spec.select157, %bb.i ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.be, ptr %i.ck, align 8
  store i32 %spec.select155, ptr %i.a, align 8
  %i.cl = or i8 %.2141, 1
  %.not.i = icmp ugt i8 %.1145.lcssa, %i.cl
  br i1 %.not.i, label %bb.k, label %_ZL11reorderLineP5UBiDihh.exit

bb.k:                                             ; preds = %bb.j
  %i.cm = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.cn = load i32, ptr %i.u, align 4
  %i.co = load i32, ptr %i.q, align 4
  %i.cp = icmp slt i32 %i.cn, %i.co
  %i.cq = sext i1 %i.cp to i32
  %spec.select.i = add i32 %spec.select155, %i.cq ; 6 uses
  %i.cr = add i8 %.1145.lcssa, -1                 ; 2 uses
  %.not70.not83.i = icmp ugt i8 %i.cr, %.2141
  %i.cs = icmp sgt i32 %spec.select.i, 0
  %or.cond129.i = select i1 %.not70.not83.i, i1 %i.cs, i1 false
  br i1 %or.cond129.i, label %.preheader.us.preheader.i, label %._crit_edge84.i

.preheader.us.preheader.i:                        ; preds = %bb.k
  %i.ct = zext nneg i32 %spec.select.i to i64     ; 3 uses
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.critedge.thread.us.i, %.preheader.us.preheader.i
  %i.cu = phi i8 [ %i.dm, %.critedge.thread.us.i ], [ %i.cr, %.preheader.us.preheader.i ] ; 3 uses
  br label %.lr.ph.us.i

bb.l:                                             ; preds = %.lr.ph.us.i, %bb.m
  %indvars.iv.i = phi i64 [ %i.ds, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.m ] ; 7 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cv = getelementptr inbounds [12 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cm, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = icmp ult i8 %i.cz, %i.cu
  br i1 %i.da, label %bb.m, label %.critedge.preheader.us.i

.critedge.us.i:                                   ; preds = %.lr.ph302
  %indvars.iv.next93.i = add nsw i64 %indvars.iv.next93.i301, 1 ; 2 uses
  %i.db = icmp slt i64 %indvars.iv.next93.i, %i.ct
  br i1 %i.db, label %.lr.ph302, label %.critedge2.us.i, !llvm.loop !16

.lr.ph302:                                        ; preds = %.critedge.preheader.us.i, %.critedge.us.i
  %indvars.iv.next93.i301 = phi i64 [ %indvars.iv.next93.i, %.critedge.us.i ], [ %indvars.iv.next93.i299, %.critedge.preheader.us.i ] ; 5 uses
  %indvars.iv92.i300 = phi i64 [ %indvars.iv.next93.i301, %.critedge.us.i ], [ %indvars.iv.i, %.critedge.preheader.us.i ]
  %i.dc = getelementptr inbounds [12 x i8], ptr %i.be, i64 %indvars.iv.next93.i301
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.cm, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1
  %.not73.us.i = icmp ult i8 %i.dg, %i.cu
  br i1 %.not73.us.i, label %.critedge2.us.split.loop.exit.i, label %.critedge.us.i, !llvm.loop !16

.critedge2.us.split.loop.exit.i:                  ; preds = %.lr.ph302
  %i.dh = trunc nsw i64 %indvars.iv.next93.i301 to i32
  br label %.critedge2.us.i

.critedge2.us.i:                                  ; preds = %.critedge.us.i, %.critedge.preheader.us.i, %.critedge2.us.split.loop.exit.i
  %indvars.iv92.i271 = phi i64 [ %indvars.iv92.i300, %.critedge2.us.split.loop.exit.i ], [ %indvars.iv.i, %.critedge.preheader.us.i ], [ %indvars.iv.next93.i301, %.critedge.us.i ] ; 3 uses
  %.lcssa.i = phi i32 [ %i.dh, %.critedge2.us.split.loop.exit.i ], [ %smax.i, %.critedge.preheader.us.i ], [ %smax.i, %.critedge.us.i ]
  %.lcssa122.i = trunc i64 %indvars.iv92.i271 to i32
  %i.di = icmp slt i64 %indvars.iv.i, %indvars.iv92.i271
  br i1 %i.di, label %.lr.ph81.us.i, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.lr.ph81.us.i, %.critedge2.us.i
  %i.dj = icmp ne i32 %.lcssa.i, %spec.select.i
  %i.dk = add nsw i32 %.lcssa122.i, 2             ; 2 uses
  %i.dl = icmp slt i32 %i.dk, %spec.select.i
  %or.cond.i = select i1 %i.dj, i1 %i.dl, i1 false
  br i1 %or.cond.i, label %.lr.ph.us.i, label %.critedge.thread.us.i, !llvm.loop !17

.critedge.thread.us.i:                            ; preds = %._crit_edge.us.i, %bb.m
  %i.dm = add i8 %i.cu, -1                        ; 2 uses
  %.not70.not.us.i = icmp ugt i8 %i.dm, %.2141
  br i1 %.not70.not.us.i, label %.preheader.us.i, label %._crit_edge84.i, !llvm.loop !18

.lr.ph81.us.i:                                    ; preds = %.critedge2.us.i, %.lr.ph81.us.i
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %.lr.ph81.us.i ], [ %indvars.iv.i, %.critedge2.us.i ] ; 2 uses
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph81.us.i ], [ %indvars.iv92.i271, %.critedge2.us.i ] ; 2 uses
  %i.dn = getelementptr inbounds [12 x i8], ptr %i.be, i64 %indvars.iv102.i ; 2 uses
  %.sroa.0.0.copyload331 = load <3 x i32>, ptr %i.dn, align 4
  %i.do = getelementptr inbounds [12 x i8], ptr %i.be, i64 %indvars.iv98.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dn, ptr noundef nonnull align 4 dereferenceable(12) %i.do, i64 12, i1 false)
  store <3 x i32> %.sroa.0.0.copyload331, ptr %i.do, align 4
  %indvars.iv.next103.i = add nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %indvars.iv.next99.i = add nsw i64 %indvars.iv98.i, -1 ; 2 uses
  %i.dp = icmp slt i64 %indvars.iv.next103.i, %indvars.iv.next99.i
  br i1 %i.dp, label %.lr.ph81.us.i, label %._crit_edge.us.i, !llvm.loop !19

bb.m:                                             ; preds = %bb.l
  %i.dq = icmp slt i64 %indvars.iv.next.i, %i.ct
  br i1 %i.dq, label %bb.l, label %.critedge.thread.us.i, !llvm.loop !20

.critedge.preheader.us.i:                         ; preds = %bb.l
  %indvars = trunc i64 %indvars.iv.next.i to i32
  %smax.i = tail call i32 @llvm.smax.i32(i32 %indvars, i32 %spec.select.i) ; 2 uses
  %indvars.iv.next93.i299 = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dr = icmp slt i64 %indvars.iv.next93.i299, %i.ct
  br i1 %i.dr, label %.lr.ph302, label %.critedge2.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.preheader.us.i
  %.06282.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.dk, %._crit_edge.us.i ]
  %i.ds = sext i32 %.06282.us.i to i64
  br label %bb.l

._crit_edge84.i:                                  ; preds = %.critedge.thread.us.i, %bb.k
  %i.dt = and i8 %.2141, 1
  %.not71.not.i = icmp eq i8 %i.dt, 0
  br i1 %.not71.not.i, label %_ZL11reorderLineP5UBiDihh.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge84.i
  %i.du = load i32, ptr %i.u, align 4
  %i.dv = load i32, ptr %i.q, align 4
  %i.dw = icmp eq i32 %i.du, %i.dv
  %i.dx = sext i1 %i.dw to i32
  %spec.select74.i = add nsw i32 %spec.select.i, %i.dx ; 2 uses
  %i.dy = icmp sgt i32 %spec.select74.i, 0
  br i1 %i.dy, label %.lr.ph.preheader.i, label %_ZL11reorderLineP5UBiDihh.exit

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.dz = zext nneg i32 %spec.select74.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next110.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv107.i = phi i64 [ %i.dz, %.lr.ph.preheader.i ], [ %indvars.iv.next108.i, %.lr.ph.i ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv109.i ; 2 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds [12 x i8], ptr %i.be, i64 %indvars.iv107.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %i.eb, i64 12, i1 false)
  store <3 x i32> %.sroa.0.0.copyload, ptr %i.eb, align 4
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %indvars.iv.next108.i = add nsw i64 %indvars.iv107.i, -1 ; 2 uses
  %i.ec = icmp slt i64 %indvars.iv.next110.i, %indvars.iv.next108.i
  br i1 %i.ec, label %.lr.ph.i, label %_ZL11reorderLineP5UBiDihh.exit, !llvm.loop !21

_ZL11reorderLineP5UBiDihh.exit:                   ; preds = %.lr.ph.i, %bb.j, %._crit_edge84.i, %bb.n
  %.not209 = icmp eq i32 %spec.select155, 0
  br i1 %.not209, label %._crit_edge202, label %.lr.ph201.preheader

.lr.ph201.preheader:                              ; preds = %_ZL11reorderLineP5UBiDihh.exit
  %wide.trip.count232 = zext i32 %spec.select155 to i64 ; 2 uses
  %i.ed = zext i32 %.0132.lcssa250 to i64
  %i.ee = zext i1 %i.aw to i64
  %i.ef = add nuw nsw i64 %i.ed, %i.ee
  %xtraiter = and i64 %wide.trip.count232, 1
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %.lr.ph201.epil.preheader, label %.lr.ph201.preheader.new

.lr.ph201.preheader.new:                          ; preds = %.lr.ph201.preheader
  %unroll_iter = and i64 %wide.trip.count232, 4294967294
  br label %.lr.ph201

.lr.ph201:                                        ; preds = %.lr.ph201, %.lr.ph201.preheader.new
  %indvars.iv228 = phi i64 [ 0, %.lr.ph201.preheader.new ], [ %indvars.iv.next229.1, %.lr.ph201 ] ; 3 uses
  %.0127200 = phi i32 [ 0, %.lr.ph201.preheader.new ], [ %i.ff, %.lr.ph201 ]
  %niter = phi i64 [ 0, %.lr.ph201.preheader.new ], [ %niter.next.1, %.lr.ph201 ]
  %i.eh = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv228 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4            ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.t, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = and i8 %i.el, 1
  %i.en = zext nneg i8 %i.em to i32
  %i.eo = shl nuw i32 %i.en, 31
  %i.ep = or i32 %i.eo, %i.ei
  store i32 %i.ep, ptr %i.eh, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = add nsw i32 %i.er, %.0127200            ; 2 uses
  store i32 %i.es, ptr %i.eq, align 4
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv228 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4            ; 2 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %i.t, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = and i8 %i.ey, 1
  %i.fa = zext nneg i8 %i.ez to i32
  %i.fb = shl nuw i32 %i.fa, 31
  %i.fc = or i32 %i.fb, %i.ev
  store i32 %i.fc, ptr %i.eu, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = add nsw i32 %i.fe, %i.es                ; 3 uses
  store i32 %i.ff, ptr %i.fd, align 4
  %indvars.iv.next229.1 = add nuw nsw i64 %indvars.iv228, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge202.loopexit.unr-lcssa, label %.lr.ph201, !llvm.loop !22

._crit_edge202.loopexit.unr-lcssa:                ; preds = %.lr.ph201
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge202, label %.lr.ph201.epil.preheader

.lr.ph201.epil.preheader:                         ; preds = %._crit_edge202.loopexit.unr-lcssa, %.lr.ph201.preheader
  %indvars.iv228.epil.init = phi i64 [ 0, %.lr.ph201.preheader ], [ %indvars.iv.next229.1, %._crit_edge202.loopexit.unr-lcssa ]
  %.0127200.epil.init = phi i32 [ 0, %.lr.ph201.preheader ], [ %i.ff, %._crit_edge202.loopexit.unr-lcssa ]
  %lcmp.mod329 = trunc i32 %spec.select155 to i1
  tail call void @llvm.assume(i1 %lcmp.mod329)
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv228.epil.init ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 4            ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %i.t, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = and i8 %i.fk, 1
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = shl nuw i32 %i.fm, 31
  %i.fo = or i32 %i.fn, %i.fh
  store i32 %i.fo, ptr %i.fg, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = add nsw i32 %i.fq, %.0127200.epil.init
  store i32 %i.fr, ptr %i.fp, align 4
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %.lr.ph201.epil.preheader, %._crit_edge202.loopexit.unr-lcssa, %_ZL11reorderLineP5UBiDihh.exit
  %i.fs = icmp samesign ult i32 %i.cd, %spec.select155
  br i1 %i.fs, label %bb.o, label %.critedge159.thread

bb.o:                                             ; preds = %._crit_edge202
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = and i8 %i.fu, 1                         ; 2 uses
  %i.fw = zext nneg i8 %i.fv to i32
  %.not152 = icmp eq i8 %i.fv, 0
  %i.fx = shl nuw i32 %i.fw, 31
  %i.fy = zext nneg i32 %i.cd to i64
  %i.fz = select i1 %.not152, i64 %i.fy, i64 0
  %i.ga = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = or i32 %i.fx, %i.gb
  store i32 %i.gc, ptr %i.ga, align 4
  br label %.critedge159.thread

.critedge159.thread:                              ; preds = %bb.e, %._crit_edge202, %bb.o, %bb.c
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ge = load i32, ptr %i.gd, align 4            ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph205, label %.loopexit

.lr.ph205:                                        ; preds = %.critedge159.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = zext nneg i32 %i.ge to i64
  %.idx = shl nuw nsw i64 %i.gi, 3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.idx
  %i.gk = getelementptr i8, ptr %0, i64 304
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph205, %_ZL22getRunFromLogicalIndexP5UBiDii.exit
  %.0138203 = phi ptr [ %i.gh, %.lr.ph205 ], [ %i.hc, %_ZL22getRunFromLogicalIndexP5UBiDii.exit ] ; 3 uses
  %i.gl = load i32, ptr %.0138203, align 4        ; 2 uses
  %.val165 = load i32, ptr %i.a, align 8          ; 2 uses
  %.val166 = load ptr, ptr %i.gk, align 8         ; 2 uses
  %i.gm = icmp sgt i32 %.val165, 0
  br i1 %i.gm, label %.lr.ph.preheader.i167, label %._crit_edge.i

.lr.ph.preheader.i167:                            ; preds = %bb.p
  %wide.trip.count.i = zext nneg i32 %.val165 to i64
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %bb.r, %.lr.ph.preheader.i167
  %indvars.iv.i169 = phi i64 [ 0, %.lr.ph.preheader.i167 ], [ %indvars.iv.next.i171, %bb.r ] ; 3 uses
  %.03.i = phi i32 [ 0, %.lr.ph.preheader.i167 ], [ %i.gp, %bb.r ]
  %i.gn = getelementptr inbounds nuw [12 x i8], ptr %.val166, i64 %indvars.iv.i169 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4            ; 2 uses
  %i.gq = load i32, ptr %i.gn, align 4
  %i.gr = and i32 %i.gq, 2147483647               ; 2 uses
  %.not.i170 = icmp slt i32 %i.gl, %i.gr
  br i1 %.not.i170, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i168
  %i.gs = sub i32 %i.gp, %.03.i
  %i.gt = add nsw i32 %i.gs, %i.gr
  %i.gu = icmp slt i32 %i.gl, %i.gt
  br i1 %i.gu, label %_ZL22getRunFromLogicalIndexP5UBiDii.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i168
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i171, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i168, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.p, %bb.r
  tail call void @abort() #10
  unreachable

_ZL22getRunFromLogicalIndexP5UBiDii.exit:         ; preds = %bb.q
  %i.gv = getelementptr inbounds nuw i8, ptr %.0138203, i64 4
  %i.gw = load i32, ptr %i.gv, align 4
  %sext184 = shl i64 %indvars.iv.i169, 32
  %i.gx = ashr exact i64 %sext184, 32
  %i.gy = getelementptr inbounds [12 x i8], ptr %.val166, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = or i32 %i.ha, %i.gw
  store i32 %i.hb, ptr %i.gz, align 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.0138203, i64 8 ; 2 uses
  %i.hd = icmp ult ptr %i.hc, %i.gj
  br i1 %i.hd, label %bb.p, label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %_ZL22getRunFromLogicalIndexP5UBiDii.exit, %.critedge159.thread
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %bb.s, label %.critedge159

bb.s:                                             ; preds = %.loopexit
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8            ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.hk = load i32, ptr %i.hj, align 4            ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %.idx210 = shl nsw i64 %i.hl, 1
  %i.hm = getelementptr inbounds i8, ptr %i.hi, i64 %.idx210
  %i.hn = icmp sgt i32 %i.hk, 0
  br i1 %i.hn, label %.lr.ph208, label %.critedge159

.lr.ph208:                                        ; preds = %bb.s
  %i.ho = ptrtoint ptr %i.hi to i64
  %i.hp = getelementptr i8, ptr %0, i64 304
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph208, %bb.x
  %.0206 = phi ptr [ %i.hi, %.lr.ph208 ], [ %i.il, %bb.x ] ; 3 uses
  %i.hq = load i16, ptr %.0206, align 2
  %.fr183 = freeze i16 %i.hq                      ; 2 uses
  %i.hr = and i16 %.fr183, -4
  %i.hs = icmp eq i16 %i.hr, 8204
  br i1 %i.hs, label %bb.u, label %switch.early.test

switch.early.test:                                ; preds = %bb.t
  switch i16 %.fr183, label %bb.x [
    i16 8297, label %bb.u
    i16 8296, label %bb.u
    i16 8295, label %bb.u
end_hunk_0
begin_hunk_1_@ubidi_getVisualMap_78:bb.a
    i16 8236, label %.lr.ph178.split.1
    i16 8235, label %.lr.ph178.split.1
    i16 8234, label %.lr.ph178.split.1
  ]

bb.x:                                             ; preds = %switch.early.test
  %i.it = add nsw i32 %.2125176, 1
  %i.iu = sext i32 %.2125176 to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.iu
  %i.iw = trunc nuw nsw i64 %i.in to i32
  store i32 %i.iw, ptr %i.iv, align 4
  br label %.lr.ph178.split.1

.lr.ph178.split.1:                                ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %.lr.ph178.split, %bb.x
  %.3126 = phi i32 [ %.2125176, %switch.early.test ], [ %i.it, %bb.x ], [ %.2125176, %.lr.ph178.split ], [ %.2125176, %switch.early.test ], [ %.2125176, %switch.early.test ], [ %.2125176, %switch.early.test ], [ %.2125176, %switch.early.test ], [ %.2125176, %switch.early.test ], [ %.2125176, %switch.early.test ], [ %.2125176, %switch.early.test ], [ %.2125176, %switch.early.test ] ; 12 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ix = add nuw nsw i64 %indvars.iv.next, %i.hz ; 2 uses
  %i.iy = load ptr, ptr %i.gc, align 8
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %i.ix
  %i.ja = load i16, ptr %i.iz, align 2
  %.fr161.1 = freeze i16 %i.ja                    ; 2 uses
  %i.jb = and i16 %.fr161.1, -4
  %i.jc = icmp eq i16 %i.jb, 8204
  br i1 %i.jc, label %bb.z, label %switch.early.test.1

switch.early.test.1:                              ; preds = %.lr.ph178.split.1
  switch i16 %.fr161.1, label %bb.y [
    i16 8297, label %bb.z
    i16 8296, label %bb.z
    i16 8295, label %bb.z
    i16 8294, label %bb.z
    i16 8238, label %bb.z
    i16 8237, label %bb.z
    i16 8236, label %bb.z
    i16 8235, label %bb.z
    i16 8234, label %bb.z
  ]

bb.y:                                             ; preds = %switch.early.test.1
  %i.jd = add nsw i32 %.3126, 1
  %i.je = sext i32 %.3126 to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.je
  %i.jg = trunc nuw nsw i64 %i.ix to i32
  store i32 %i.jg, ptr %i.jf, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %.lr.ph178.split.1
  %.3126.1 = phi i32 [ %.3126, %switch.early.test.1 ], [ %i.jd, %bb.y ], [ %.3126, %.lr.ph178.split.1 ], [ %.3126, %switch.early.test.1 ], [ %.3126, %switch.early.test.1 ], [ %.3126, %switch.early.test.1 ], [ %.3126, %switch.early.test.1 ], [ %.3126, %switch.early.test.1 ], [ %.3126, %switch.early.test.1 ], [ %.3126, %switch.early.test.1 ], [ %.3126, %switch.early.test.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit162.loopexit351.unr-lcssa, label %.lr.ph178.split, !llvm.loop !78

.loopexit162.loopexit:                            ; preds = %.lr.ph181.prol.loopexit, %.lr.ph181, %middle.block314
  %indvars.iv.next230.lcssa = phi i64 [ %i.gs, %middle.block314 ], [ %indvars.iv.next230.lcssa353.unr, %.lr.ph181.prol.loopexit ], [ %indvars.iv.next230.3, %.lr.ph181 ]
  %i.jh = trunc nsw i64 %indvars.iv.next230.lcssa to i32
  br label %.loopexit162

.loopexit162.loopexit351.unr-lcssa:               ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit162, label %.lr.ph178.split.epil.preheader

.lr.ph178.split.epil.preheader:                   ; preds = %.loopexit162.loopexit351.unr-lcssa, %.lr.ph178.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph178.split.preheader ], [ %indvars.iv.next.1, %.loopexit162.loopexit351.unr-lcssa ]
  %.2125176.epil.init = phi i32 [ %.0123184, %.lr.ph178.split.preheader ], [ %.3126.1, %.loopexit162.loopexit351.unr-lcssa ] ; 12 uses
  %lcmp.mod359 = trunc i32 %i.gg to i1
  tail call void @llvm.assume(i1 %lcmp.mod359)
  %i.ji = add nuw nsw i64 %indvars.iv.epil.init, %i.hz ; 2 uses
  %i.jj = load ptr, ptr %i.gc, align 8
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %i.ji
  %i.jl = load i16, ptr %i.jk, align 2
  %.fr161.epil = freeze i16 %i.jl                 ; 2 uses
  %i.jm = and i16 %.fr161.epil, -4
  %i.jn = icmp eq i16 %i.jm, 8204
  br i1 %i.jn, label %.loopexit162, label %switch.early.test.epil

switch.early.test.epil:                           ; preds = %.lr.ph178.split.epil.preheader
  switch i16 %.fr161.epil, label %bb.aa [
    i16 8297, label %.loopexit162
    i16 8296, label %.loopexit162
    i16 8295, label %.loopexit162
    i16 8294, label %.loopexit162
    i16 8238, label %.loopexit162
    i16 8237, label %.loopexit162
    i16 8236, label %.loopexit162
    i16 8235, label %.loopexit162
    i16 8234, label %.loopexit162
  ]

bb.aa:                                            ; preds = %switch.early.test.epil
  %i.jo = add nsw i32 %.2125176.epil.init, 1
  %i.jp = sext i32 %.2125176.epil.init to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jp
  %i.jr = trunc nuw nsw i64 %i.ji to i32
  store i32 %i.jr, ptr %i.jq, align 4
  br label %.loopexit162

.loopexit162:                                     ; preds = %.loopexit162.loopexit351.unr-lcssa, %bb.aa, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %.lr.ph178.split.epil.preheader, %bb.w, %bb.s, %.loopexit162.loopexit, %bb.u, %.preheader
  %.4127 = phi i32 [ %.3126.us, %bb.w ], [ %i.gf, %bb.s ], [ %.0123184, %.preheader ], [ %.0123184, %bb.u ], [ %i.jh, %.loopexit162.loopexit ], [ %.3126.1, %.loopexit162.loopexit351.unr-lcssa ], [ %.2125176.epil.init, %switch.early.test.epil ], [ %i.jo, %bb.aa ], [ %.2125176.epil.init, %.lr.ph178.split.epil.preheader ], [ %.2125176.epil.init, %switch.early.test.epil ], [ %.2125176.epil.init, %switch.early.test.epil ], [ %.2125176.epil.init, %switch.early.test.epil ], [ %.2125176.epil.init, %switch.early.test.epil ], [ %.2125176.epil.init, %switch.early.test.epil ], [ %.2125176.epil.init, %switch.early.test.epil ], [ %.2125176.epil.init, %switch.early.test.epil ], [ %.2125176.epil.init, %switch.early.test.epil ]
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit, label %bb.s, !llvm.loop !79

.loopexit.sink.split:                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sink = phi i32 [ 1, %bb.c ], [ 27, %bb.d ], [ 27, %bb.f ], [ 27, %bb.g ]
  store i32 %.sink, ptr %2, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit162, %bb.p, %.loopexit.sink.split, %bb.j, %bb.r, %._crit_edge192, %bb.h, %bb.q, %bb.a, %bb.b, %ubidi_countRuns_78.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ubidi_invertMap_78(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp sgt i32 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.041 = phi i32 [ %.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02740 = phi i32 [ %spec.select, %.lr.ph ], [ -1, %.lr.ph.preheader ]
  %.02939 = phi ptr [ %i.f, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %i.f = getelementptr inbounds i8, ptr %.02939, i64 -4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %.02740) ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  %i.i = zext i1 %i.h to i32
  %.1 = add nuw nsw i32 %.041, %i.i               ; 2 uses
  %i.j = icmp ugt ptr %i.f, %0
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph
  %.not = icmp sgt i32 %.1, %spec.select
  br i1 %.not, label %.lr.ph46.preheader, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = add nsw i32 %spec.select, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %1, i8 -1, i64 %i.m, i1 false)
  br label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %._crit_edge, %bb.b
  br label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %bb.d
  %.13044 = phi ptr [ %i.n, %bb.d ], [ %i.e, %.lr.ph46.preheader ]
  %.03143 = phi i32 [ %i.q, %bb.d ], [ %2, %.lr.ph46.preheader ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.13044, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  %i.q = add nsw i32 %.03143, -1                  ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph46
  %i.r = zext nneg i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r
  store i32 %i.q, ptr %i.s, align 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph46, %bb.c
  %i.t = icmp sgt i32 %.03143, 1
  br i1 %i.t, label %.lr.ph46, label %.loopexit, !llvm.loop !81

.loopexit:                                        ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !6, !13, !12}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6, !12, !13}
!28 = distinct !{!28, !6, !13, !12}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6, !12, !13}
!31 = distinct !{!31, !6, !13, !12}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6, !12, !13}
!36 = distinct !{!36, !6, !13, !12}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6, !12, !13}
!46 = distinct !{!46, !6, !13, !12}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6, !12, !13}
!53 = distinct !{!53, !6, !13, !12}
!54 = distinct !{!54, !6, !12, !13}
!55 = distinct !{!55, !6, !13, !12}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6, !12, !13}
!58 = distinct !{!58, !6, !13, !12}
!59 = distinct !{!59, !6}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6, !12, !13}
!62 = distinct !{!62, !6, !13, !12}
!63 = distinct !{!63, !6}
!64 = distinct !{!64, !6, !12, !13}
!65 = distinct !{!65, !6, !13, !12}
!66 = distinct !{!66, !6, !12, !13}
!67 = distinct !{!67, !6, !13, !12}
!68 = distinct !{!68, !6}
!69 = distinct !{!69, !6, !12, !13}
!70 = distinct !{!70, !6, !13, !12}
!71 = distinct !{!71, !6, !12, !13}
!72 = distinct !{!72, !6, !12}
!73 = distinct !{!73, !6}
!74 = distinct !{!74, !6, !12, !13}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !6, !12}
!78 = distinct !{!78, !6}
!79 = distinct !{!79, !6}
!80 = distinct !{!80, !6}
!81 = distinct !{!81, !6}
end_hunk_1
