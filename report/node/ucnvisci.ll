Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ucnvisci?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL10_ISCIIOpenP10UConverterP18UConverterLoadArgsP10UErrorCode:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 -2, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 65535, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = and i32 %i.i, 15                         ; 2 uses
  %i.k = icmp samesign ult i32 %i.j, 9
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [12 x i8], ptr @_ZL17lookupInitialData, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %.tr = trunc i32 %i.n to i16
  %i.o = shl i16 %.tr, 7                          ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i16 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 %i.o, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i16 %i.o, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.t, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.t, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 26 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(15) %i.y, ptr noundef nonnull align 1 dereferenceable(15) @.str, i64 15, i1 false) #9
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #10
  %i.aa = trunc i32 %i.i to i8
  %i.ab = and i8 %i.aa, 15
  %i.ac = or disjoint i8 %i.ab, 48
  %sext = shl i64 %i.z, 32                        ; 2 uses
  %i.ad = ashr exact i64 %sext, 32
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 %i.ad
  store i8 %i.ac, ptr %i.ae, align 1
  %sext31 = add i64 %sext, 4294967296
  %i.af = ashr exact i64 %sext31, 32
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 %i.af
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 0, ptr %i.ah, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @uprv_free_78(ptr noundef nonnull %i.c) #9
  store ptr null, ptr %i.d, align 8
  store i32 1, ptr %2, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL11_ISCIICloseP10UConverter(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.d = load i8, ptr %i.c, align 2
  %.not4 = icmp eq i8 %i.d, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @uprv_free_78(ptr noundef nonnull %i.b) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL11_ISCIIResetP10UConverter21UConverterResetChoice(ptr nofree noundef captures(none) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 13 uses
  %i.c = icmp slt i32 %1, 2
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 65535, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i16, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.j, ptr %i.k, align 4
  store i16 -2, ptr %i.b, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.l, align 4
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.s = load i16, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.s, ptr %i.t, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 0, ptr %i.v, align 1
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 19 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 25 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %1, align 4
  br label %bb.ed

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 17 uses
  %i.o = load i32, ptr %1, align 4                ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  %i.q = icmp ult ptr %i.k, %i.d
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph.lr.ph, label %.loopexit841

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 44 ; 15 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 34 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 25 ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer.backedge
  %.0607.ph898 = phi ptr [ %i.j, %.lr.ph.lr.ph ], [ %.0607.ph.be, %.outer.backedge ] ; 18 uses
  %.0625.ph897 = phi ptr [ %i.k, %.lr.ph.lr.ph ], [ %i.cn, %.outer.backedge ] ; 4 uses
  %i.z = icmp ult ptr %.0607.ph898, %i.f
  br i1 %i.z, label %.lr.ph.split.us, label %.loopexit841.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.pre = load i16, ptr %i.m, align 2             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0625.ph897, i64 1 ; 15 uses
  %i.ab = load i8, ptr %.0625.ph897, align 1      ; 13 uses
  switch i16 %.pre, label %.loopexit842.split.us [
    i16 239, label %bb.d
    i16 240, label %.split877.us
    i16 217, label %13
  ]

.lr.ph.split.us.jt65534:                          ; preds = %.split873.us
  %i.ac = getelementptr inbounds nuw i8, ptr %.0625.ph897, i64 2
  %i.ad = load i8, ptr %i.aa, align 1
  br label %.loopexit842.split.us

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.ae = add i8 %i.ab, -66
  %or.cond.us = icmp ult i8 %i.ae, 10
  br i1 %or.cond.us, label %bb.e, label %2

bb.e:                                             ; preds = %bb.d
  %i.af = and i8 %i.ab, 15
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @_ZL11lookupTable, i64 %i.ag ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 4
  %i.aj = shl i16 %i.ai, 7
  store i16 %i.aj, ptr %i.t, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = zext i16 %i.al to i32
  br label %.split.us

2:                                                ; preds = %bb.d
  %3 = icmp eq i8 %i.ab, 64
  br i1 %3, label %.sink.split.a, label %bb.f

.sink.split.a:                                    ; preds = %2
  %4 = load i16, ptr %i.s, align 4
  store i16 %4, ptr %i.t, align 4
  %5 = load i32, ptr %i.u, align 4
  br label %.split.us

bb.f:                                             ; preds = %2
  %6 = add i8 %i.ab, -33
  %i.an = icmp ult i8 %6, 31
  br i1 %i.an, label %.split873.us, label %7

7:                                                ; preds = %bb.f
  store i32 12, ptr %1, align 4
  store i16 -2, ptr %i.m, align 2
  br label %bb.dp

.split.us:                                        ; preds = %bb.e, %.sink.split.a
  %.sink = phi i32 [ %5, %.sink.split.a ], [ %i.am, %bb.e ]
  store i32 %.sink, ptr %i.v, align 4
  br label %.split873.us

.split873.us:                                     ; preds = %.split.us, %bb.f
  store i16 -2, ptr %i.m, align 2
  %i.ao = load i32, ptr %1, align 4               ; 2 uses
  %8 = icmp slt i32 %i.ao, 1
  %9 = icmp ult ptr %i.aa, %i.d
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %.lr.ph.split.us.jt65534, label %.loopexit841, !llvm.loop !6

.split877.us:                                     ; preds = %.lr.ph.split.us
  %11 = add i8 %i.ab, 95
  %12 = icmp ult i8 %11, 78
  br i1 %12, label %bb.g, label %bb.t

bb.g:                                             ; preds = %.split877.us
  switch i8 %i.ab, label %bb.s [
    i8 -65, label %bb.h
    i8 -72, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ap = icmp eq i8 %i.ab, -65
  %i.aq = select i1 %i.ap, i32 2416, i32 2386     ; 2 uses
  %i.ar = and i32 %i.aq, 114
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZL13validityTable, i64 %i.as
  %i.au = load i8, ptr %i.at, align 2
  %i.av = zext i8 %i.au to i32
  %i.aw = load i32, ptr %i.v, align 4
  %i.ax = and i32 %i.aw, %i.av
  %.not735 = icmp eq i32 %i.ax, 0
  br i1 %.not735, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 -2, ptr %i.m, align 4
  %i.ay = load i32, ptr %i.w, align 4             ; 2 uses
  %.not736 = icmp eq i32 %i.ay, 0
  br i1 %.not736, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.e, align 8
  %i.ba = icmp ult ptr %.0607.ph898, %i.az
  %i.bb = trunc i32 %i.ay to i16                  ; 2 uses
  br i1 %i.ba, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.0607.ph898, i64 2 ; 2 uses
  store i16 %i.bb, ptr %.0607.ph898, align 2
  %i.bd = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not741 = icmp eq ptr %i.bd, null
  br i1 %.not741, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = ptrtoint ptr %i.aa to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = xor i64 %i.bg, -1
  %i.bi = add i64 %i.bh, %i.bf
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.bk, ptr %i.x, align 8
  store i32 %i.bj, ptr %i.bd, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 93 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1             ; 2 uses
  %i.bp = add i8 %i.bo, 1
  store i8 %i.bp, ptr %i.bn, align 1
  %i.bq = sext i8 %i.bo to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bq
  store i16 %i.bb, ptr %i.br, align 2
  store i32 15, ptr %1, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.1608 = phi ptr [ %i.bc, %bb.l ], [ %i.bc, %bb.k ], [ %.0607.ph898, %bb.m ]
  store i32 0, ptr %i.w, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.2609 = phi ptr [ %.1608, %bb.n ], [ %.0607.ph898, %bb.i ] ; 4 uses
  %i.bs = load i16, ptr %i.t, align 4
  %i.bt = load ptr, ptr %i.e, align 8
  %i.bu = icmp ult ptr %.2609, %i.bt
  %i.bv = trunc nuw nsw i32 %i.aq to i16
  %i.bw = add i16 %i.bs, %i.bv                    ; 2 uses
  br i1 %i.bu, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %.2609, i64 2 ; 2 uses
  store i16 %i.bw, ptr %.2609, align 2
  %i.by = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not742 = icmp eq ptr %i.by, null
  br i1 %.not742, label %.outer.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.a, align 8
  %i.ca = ptrtoint ptr %i.aa to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = add i32 %i.cd, -2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store ptr %i.cf, ptr %i.x, align 8
  store i32 %i.ce, ptr %i.by, align 4
  br label %.outer.backedge

bb.r:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 93 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1             ; 2 uses
  %i.ck = add i8 %i.cj, 1
  store i8 %i.ck, ptr %i.ci, align 1
  %i.cl = sext i8 %i.cj to i64
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.cl
  store i16 %i.bw, ptr %i.cm, align 2
  store i32 15, ptr %1, align 4
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.thread813.thread, %bb.dn, %bb.cg, %bb.cf, %bb.ce, %bb.ae, %bb.ar, %bb.r, %bb.q, %bb.p, %bb.cu, %bb.bt
  %i.cn = phi ptr [ %i.ee, %.thread813.thread ], [ %i.ee, %bb.dn ], [ %i.ee, %bb.cg ], [ %i.ee, %bb.cf ], [ %i.ee, %bb.ce ], [ %i.ee, %bb.ae ], [ %i.ee, %bb.ar ], [ %i.aa, %bb.r ], [ %i.aa, %bb.q ], [ %i.aa, %bb.p ], [ %i.ee, %bb.cu ], [ %i.ee, %bb.bt ] ; 3 uses
  %.0607.ph.be = phi ptr [ %.25830, %.thread813.thread ], [ %.25830, %bb.dn ], [ %.18, %bb.cg ], [ %i.mb, %bb.cf ], [ %i.mb, %bb.ce ], [ %.7614, %bb.ae ], [ %.10617, %bb.ar ], [ %.2609, %bb.r ], [ %i.bx, %bb.q ], [ %i.bx, %bb.p ], [ %.21, %bb.cu ], [ %.16623, %bb.bt ] ; 2 uses
  %i.co = load i32, ptr %1, align 4               ; 2 uses
  %i.cp = icmp slt i32 %i.co, 1
  %i.cq = icmp ult ptr %i.cn, %i.d
  %i.cr = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %i.cr, label %.lr.ph, label %.loopexit841, !llvm.loop !6

bb.s:                                             ; preds = %bb.g, %bb.h
  store i32 10, ptr %1, align 4
  br label %bb.dp

bb.t:                                             ; preds = %.split877.us
  store i16 -2, ptr %i.m, align 2
  store i32 12, ptr %1, align 4
  br label %bb.dp

13:                                               ; preds = %.lr.ph.split.us
  %.not670 = icmp eq i8 %i.ab, -24
  %14 = load i32, ptr %i.w, align 4               ; 2 uses
  %.not = icmp eq i32 %14, 0
  %.pre907 = load ptr, ptr %i.e, align 8          ; 2 uses
  br i1 %.not, label %bb.z, label %bb.u

bb.u:                                             ; preds = %13
  %i.cs = icmp ult ptr %.0607.ph898, %.pre907
  %i.ct = trunc i32 %14 to i16                    ; 2 uses
  br i1 %i.cs, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %.0607.ph898, i64 2 ; 2 uses
  store i16 %i.ct, ptr %.0607.ph898, align 2
  %i.cv = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not669 = icmp eq ptr %i.cv, null
  br i1 %.not669, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = load ptr, ptr %i.a, align 8
  %i.cx = ptrtoint ptr %i.aa to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = xor i64 %i.cy, -1
  %i.da = add i64 %i.cz, %i.cx
  %i.db = trunc i64 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store ptr %i.dc, ptr %i.x, align 8
  store i32 %i.db, ptr %i.cv, align 4
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.dd = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 93 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1             ; 2 uses
  %i.dh = add i8 %i.dg, 1
  store i8 %i.dh, ptr %i.df, align 1
  %i.di = sext i8 %i.dg to i64
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.di
  store i16 %i.ct, ptr %i.dj, align 2
  store i32 15, ptr %1, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.4611 = phi ptr [ %i.cu, %bb.w ], [ %i.cu, %bb.v ], [ %.0607.ph898, %bb.x ]
  store i32 0, ptr %i.w, align 4
  %.pre932 = load ptr, ptr %i.e, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %13
  %i.dk = phi ptr [ %.pre932, %bb.y ], [ %.pre907, %13 ]
  %.5612 = phi ptr [ %.4611, %bb.y ], [ %.0607.ph898, %13 ] ; 4 uses
  %i.dl = icmp ult ptr %.5612, %i.dk
  %i.dm = select i1 %.not670, i16 32, i16 8205    ; 2 uses
  br i1 %i.dl, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %.5612, i64 2 ; 2 uses
  store i16 %i.dm, ptr %.5612, align 2
  %i.do = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not671 = icmp eq ptr %i.do, null
  br i1 %.not671, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dp = load ptr, ptr %i.a, align 8
  %i.dq = ptrtoint ptr %i.aa to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = trunc i64 %i.ds to i32
  %i.du = add i32 %i.dt, -2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store ptr %i.dv, ptr %i.x, align 8
  store i32 %i.du, ptr %i.do, align 4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.dw = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 144
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 93 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1             ; 2 uses
  %i.ea = add i8 %i.dz, 1
  store i8 %i.ea, ptr %i.dy, align 1
  %i.eb = sext i8 %i.dz to i64
  %i.ec = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.eb
  store i16 %i.dm, ptr %i.ec, align 2
  store i32 15, ptr %1, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %.6613 = phi ptr [ %i.dn, %bb.ab ], [ %i.dn, %bb.aa ], [ %.5612, %bb.ac ]
  store i16 -2, ptr %i.m, align 4
  br label %.loopexit842.split.us

.loopexit842.split.us:                            ; preds = %.lr.ph.split.us, %.lr.ph.split.us.jt65534, %bb.ad
  %i.ed = phi i8 [ %i.ab, %bb.ad ], [ %i.ad, %.lr.ph.split.us.jt65534 ], [ %i.ab, %.lr.ph.split.us ] ; 10 uses
  %i.ee = phi ptr [ %i.aa, %bb.ad ], [ %i.ac, %.lr.ph.split.us.jt65534 ], [ %i.aa, %.lr.ph.split.us ] ; 22 uses
  %i.ef = phi i16 [ -2, %bb.ad ], [ -2, %.lr.ph.split.us.jt65534 ], [ %.pre, %.lr.ph.split.us ] ; 6 uses
  %.7614 = phi ptr [ %.6613, %bb.ad ], [ %.0607.ph898, %.lr.ph.split.us.jt65534 ], [ %.0607.ph898, %.lr.ph.split.us ] ; 28 uses
  switch i8 %i.ed, label %.thread810 [
    i8 -39, label %bb.ae
    i8 -16, label %bb.ae
    i8 -17, label %bb.ae
    i8 -22, label %bb.as
    i8 -24, label %bb.au
    i8 10, label %bb.aw
    i8 13, label %bb.aw
    i8 -32, label %.preheader.preheader
    i8 -23, label %bb.ax
  ]

.preheader.preheader:                             ; preds = %.loopexit842.split.us
  %i.eg = and i16 %i.ef, 255
  %i.eh = icmp ne i16 %i.eg, 164
  %i.ei = load i32, ptr %i.v, align 4             ; 2 uses
  %i.ej = and i32 %i.ei, 128
  %.not693 = icmp eq i32 %i.ej, 0
  %or.cond1021 = select i1 %i.eh, i1 true, i1 %.not693
  br i1 %or.cond1021, label %.loopexit, label %.thread813.thread.sink.split

bb.ae:                                            ; preds = %.loopexit842.split.us, %.loopexit842.split.us, %.loopexit842.split.us
  %i.ek = zext i8 %i.ed to i16
  store i16 %i.ek, ptr %i.m, align 2
  %i.el = load i32, ptr %i.n, align 8             ; 2 uses
  %.not694 = icmp eq i32 %i.el, 65535
  br i1 %.not694, label %.outer.backedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.em = load i32, ptr %i.w, align 4             ; 2 uses
  %.not695 = icmp eq i32 %i.em, 0
  br i1 %.not695, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = load ptr, ptr %i.e, align 8
  %i.eo = icmp ult ptr %.7614, %i.en
  %i.ep = trunc i32 %i.em to i16                  ; 2 uses
  br i1 %i.eo, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.eq = getelementptr inbounds nuw i8, ptr %.7614, i64 2 ; 2 uses
  store i16 %i.ep, ptr %.7614, align 2
  %i.er = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not700 = icmp eq ptr %i.er, null
  br i1 %.not700, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = load ptr, ptr %i.a, align 8
  %i.et = ptrtoint ptr %i.ee to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = xor i64 %i.eu, -1
  %i.ew = add i64 %i.ev, %i.et
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store ptr %i.ey, ptr %i.x, align 8
  store i32 %i.ex, ptr %i.er, align 4
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.ez = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 144
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 93 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1             ; 2 uses
  %i.fd = add i8 %i.fc, 1
  store i8 %i.fd, ptr %i.fb, align 1
  %i.fe = sext i8 %i.fc to i64
  %i.ff = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.fe
  store i16 %i.ep, ptr %i.ff, align 2
  store i32 15, ptr %1, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %bb.aj
  %.8615 = phi ptr [ %i.eq, %bb.ai ], [ %i.eq, %bb.ah ], [ %.7614, %bb.aj ]
  store i32 0, ptr %i.w, align 4
  %.pre937 = load i32, ptr %i.n, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.af, %bb.ak
  %i.fg = phi i32 [ %.pre937, %bb.ak ], [ %i.el, %bb.af ]
  %.9616 = phi ptr [ %.8615, %bb.ak ], [ %.7614, %bb.af ] ; 4 uses
  %.fr = freeze i32 %i.fg                         ; 8 uses
  %i.fh = icmp slt i32 %.fr, 161
  br i1 %i.fh, label %bb.an, label %switch.early.test799

switch.early.test799:                             ; preds = %bb.al
  switch i32 %.fr, label %bb.am [
    i32 8205, label %bb.an
    i32 8204, label %bb.an
    i32 2405, label %bb.an
    i32 2404, label %bb.an
  ]

bb.am:                                            ; preds = %switch.early.test799
  %i.fi = load i16, ptr %i.t, align 4
  %i.fj = zext i16 %i.fi to i32
  %i.fk = add nuw nsw i32 %.fr, %i.fj             ; 2 uses
  store i32 %i.fk, ptr %i.n, align 8
  br label %bb.an

bb.an:                                            ; preds = %switch.early.test799, %switch.early.test799, %switch.early.test799, %switch.early.test799, %bb.al, %bb.am
  %i.fl = phi i32 [ %.fr, %switch.early.test799 ], [ %.fr, %switch.early.test799 ], [ %.fr, %switch.early.test799 ], [ %.fr, %switch.early.test799 ], [ %.fr, %bb.al ], [ %i.fk, %bb.am ]
  %i.fm = load ptr, ptr %i.e, align 8
  %i.fn = icmp ult ptr %.9616, %i.fm
  %i.fo = trunc i32 %i.fl to i16                  ; 2 uses
  br i1 %i.fn, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fp = getelementptr inbounds nuw i8, ptr %.9616, i64 2 ; 2 uses
  store i16 %i.fo, ptr %.9616, align 2
  %i.fq = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not705 = icmp eq ptr %i.fq, null
  br i1 %.not705, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = load ptr, ptr %i.a, align 8
  %i.fs = ptrtoint ptr %i.ee to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = add i32 %i.fv, -2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store ptr %i.fx, ptr %i.x, align 8
  store i32 %i.fw, ptr %i.fq, align 4
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.fy = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 144
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 93 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1             ; 2 uses
  %i.gc = add i8 %i.gb, 1
  store i8 %i.gc, ptr %i.ga, align 1
  %i.gd = sext i8 %i.gb to i64
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.gd
  store i16 %i.fo, ptr %i.ge, align 2
  store i32 15, ptr %1, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %bb.ap, %bb.aq
  %.10617 = phi ptr [ %i.fp, %bb.ap ], [ %i.fp, %bb.ao ], [ %.9616, %bb.aq ]
  store i32 65535, ptr %i.n, align 8
  br label %.outer.backedge

bb.as:                                            ; preds = %.loopexit842.split.us
  %i.gf = icmp eq i16 %i.ef, 234
  br i1 %i.gf, label %.thread813.thread.sink.split, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gg = load i32, ptr %i.v, align 4
  %i.gh = and i32 %i.gg, 128
  %i.gi = icmp eq i32 %i.gh, 0
  %spec.select = select i1 %i.gi, i32 65535, i32 2404
  br label %bb.ck

end_hunk_0
begin_hunk_1_@_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 93 ; 2 uses
  %i.ps = load i8, ptr %i.pr, align 1             ; 2 uses
  %i.pt = add i8 %i.ps, 1
  store i8 %i.pt, ptr %i.pr, align 1
  %i.pu = sext i8 %i.ps to i64
  %i.pv = getelementptr inbounds [2 x i8], ptr %i.pq, i64 %i.pu
  store i16 %i.pf, ptr %i.pv, align 2
  store i32 15, ptr %1, align 4
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cv, %bb.cw, %bb.cx
  %.22 = phi ptr [ %i.pg, %bb.cw ], [ %i.pg, %bb.cv ], [ %.7614, %bb.cx ]
  store i32 0, ptr %i.w, align 4
  %.pre939 = load i16, ptr %i.t, align 4
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %_ZL14isPNJConsonanti.exit.thread
  %i.pw = phi i16 [ %.pre939, %bb.cy ], [ %i.nn, %_ZL14isPNJConsonanti.exit.thread ] ; 2 uses
  %.23 = phi ptr [ %.22, %bb.cy ], [ %.7614, %_ZL14isPNJConsonanti.exit.thread ] ; 9 uses
  %i.px = icmp eq i16 %i.pw, 256                  ; 2 uses
  %i.py = icmp eq i32 %.15.ph, 2306
  %or.cond784 = select i1 %i.px, i1 %i.py, i1 false
  br i1 %or.cond784, label %bb.da, label %bb.de

bb.da:                                            ; preds = %bb.cz
  %i.pz = load i32, ptr %i.n, align 8
  %.fr837 = freeze i32 %i.pz                      ; 4 uses
  %i.qa = add nsw i32 %.fr837, 256                ; 3 uses
  %i.qb = add i32 %.fr837, -2384
  %or.cond.i803 = icmp ult i32 %i.qb, -80
  br i1 %or.cond.i803, label %_ZL14isPNJConsonanti.exit807.thread, label %_ZL15isPNJBindiTippii.exit

_ZL15isPNJBindiTippii.exit:                       ; preds = %bb.da
  %i.qc = zext nneg i32 %i.qa to i64
  %i.qd = getelementptr i8, ptr @_ZL6pnjMap, i64 %i.qc
  %i.qe = getelementptr i8, ptr %i.qd, i64 -2560
  %i.qf = load i8, ptr %i.qe, align 1
  %.not715 = icmp ult i8 %i.qf, 2
  br i1 %.not715, label %_ZL14isPNJConsonanti.exit807.thread, label %switch.early.test800

switch.early.test800:                             ; preds = %_ZL15isPNJBindiTippii.exit
  store i32 %i.qa, ptr %i.n, align 8
  %i.qg = load ptr, ptr %i.e, align 8
  %i.qh = icmp ult ptr %.23, %i.qg
  %i.qi = trunc nuw i32 %i.qa to i16              ; 2 uses
  br i1 %i.qh, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %switch.early.test800
  %i.qj = getelementptr inbounds nuw i8, ptr %.23, i64 2 ; 2 uses
  store i16 %i.qi, ptr %.23, align 2
  %i.qk = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not726 = icmp eq ptr %i.qk, null
  br i1 %.not726, label %bb.dm, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ql = load ptr, ptr %i.a, align 8
  %i.qm = ptrtoint ptr %i.ee to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = trunc i64 %i.qo to i32
  %i.qq = add i32 %i.qp, -2
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  store ptr %i.qr, ptr %i.x, align 8
  store i32 %i.qq, ptr %i.qk, align 4
  br label %bb.dm

bb.dd:                                            ; preds = %switch.early.test800
  %i.qs = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 144
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 93 ; 2 uses
  %i.qv = load i8, ptr %i.qu, align 1             ; 2 uses
  %i.qw = add i8 %i.qv, 1
  store i8 %i.qw, ptr %i.qu, align 1
  %i.qx = sext i8 %i.qv to i64
  %i.qy = getelementptr inbounds [2 x i8], ptr %i.qt, i64 %i.qx
  store i16 %i.qi, ptr %i.qy, align 2
  store i32 15, ptr %1, align 4
  br label %bb.dm

bb.de:                                            ; preds = %bb.cz
  %i.qz = icmp eq i32 %.15.ph, 2381
  %or.cond789 = select i1 %i.px, i1 %i.qz, i1 false
  %.pr826.pre = load i32, ptr %i.n, align 8       ; 5 uses
  br i1 %or.cond789, label %bb.df, label %_ZL14isPNJConsonanti.exit807.thread

bb.df:                                            ; preds = %bb.de
  %i.ra = add nuw nsw i32 %.pr826.pre, 256        ; 2 uses
  %i.rb = add i32 %.pr826.pre, -2384
  %or.cond.i805 = icmp ult i32 %i.rb, -80
  br i1 %or.cond.i805, label %_ZL14isPNJConsonanti.exit807.thread, label %_ZL14isPNJConsonanti.exit807

_ZL14isPNJConsonanti.exit807:                     ; preds = %bb.df
  %i.rc = zext nneg i32 %i.ra to i64
  %i.rd = getelementptr i8, ptr @_ZL6pnjMap, i64 %i.rc
  %i.re = getelementptr i8, ptr %i.rd, i64 -2560
  %i.rf = load i8, ptr %i.re, align 1
  %i.rg = and i8 %i.rf, 1
  %.not716 = icmp eq i8 %i.rg, 0
  br i1 %.not716, label %_ZL14isPNJConsonanti.exit807.thread, label %bb.dg

bb.dg:                                            ; preds = %_ZL14isPNJConsonanti.exit807
  store i32 %i.ra, ptr %i.w, align 4
  br label %bb.dm

_ZL14isPNJConsonanti.exit807.thread:              ; preds = %bb.de, %_ZL14isPNJConsonanti.exit807, %_ZL15isPNJBindiTippii.exit, %bb.da, %bb.df
  %i.rh = phi i32 [ %.pr826.pre, %bb.df ], [ %.fr837, %bb.da ], [ %.fr837, %_ZL15isPNJBindiTippii.exit ], [ %.pr826.pre, %_ZL14isPNJConsonanti.exit807 ], [ %.pr826.pre, %bb.de ]
  %.fr838 = freeze i32 %i.rh                      ; 8 uses
  %i.ri = icmp slt i32 %.fr838, 161
  br i1 %i.ri, label %bb.di, label %switch.early.test801

switch.early.test801:                             ; preds = %_ZL14isPNJConsonanti.exit807.thread
  switch i32 %.fr838, label %bb.dh [
    i32 8205, label %bb.di
    i32 8204, label %bb.di
    i32 2405, label %bb.di
    i32 2404, label %bb.di
  ]

bb.dh:                                            ; preds = %switch.early.test801
  %i.rj = zext i16 %i.pw to i32
  %i.rk = add nuw nsw i32 %.fr838, %i.rj          ; 2 uses
  store i32 %i.rk, ptr %i.n, align 8
  br label %bb.di

bb.di:                                            ; preds = %switch.early.test801, %switch.early.test801, %switch.early.test801, %switch.early.test801, %_ZL14isPNJConsonanti.exit807.thread, %bb.dh
  %i.rl = phi i32 [ %.fr838, %switch.early.test801 ], [ %.fr838, %switch.early.test801 ], [ %.fr838, %switch.early.test801 ], [ %.fr838, %switch.early.test801 ], [ %.fr838, %_ZL14isPNJConsonanti.exit807.thread ], [ %i.rk, %bb.dh ]
  %i.rm = load ptr, ptr %i.e, align 8
  %i.rn = icmp ult ptr %.23, %i.rm
  %i.ro = trunc i32 %i.rl to i16                  ; 2 uses
  br i1 %i.rn, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.rp = getelementptr inbounds nuw i8, ptr %.23, i64 2 ; 2 uses
  store i16 %i.ro, ptr %.23, align 2
  %i.rq = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not721 = icmp eq ptr %i.rq, null
  br i1 %.not721, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.rr = load ptr, ptr %i.a, align 8
  %i.rs = ptrtoint ptr %i.ee to i64
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = sub i64 %i.rs, %i.rt
  %i.rv = trunc i64 %i.ru to i32
  %i.rw = add i32 %i.rv, -2
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  store ptr %i.rx, ptr %i.x, align 8
  store i32 %i.rw, ptr %i.rq, align 4
  br label %bb.dm

bb.dl:                                            ; preds = %bb.di
  %i.ry = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 144
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 93 ; 2 uses
  %i.sb = load i8, ptr %i.sa, align 1             ; 2 uses
  %i.sc = add i8 %i.sb, 1
  store i8 %i.sc, ptr %i.sa, align 1
  %i.sd = sext i8 %i.sb to i64
  %i.se = getelementptr inbounds [2 x i8], ptr %i.rz, i64 %i.sd
  store i16 %i.ro, ptr %i.se, align 2
  store i32 15, ptr %1, align 4
  br label %bb.dm

bb.dm:                                            ; preds = %bb.db, %bb.dc, %bb.dd, %bb.dl, %bb.dk, %bb.dj, %bb.dg
  %.24 = phi ptr [ %i.qj, %bb.dc ], [ %i.qj, %bb.db ], [ %.23, %bb.dd ], [ %.23, %bb.dg ], [ %i.rp, %bb.dk ], [ %i.rp, %bb.dj ], [ %.23, %bb.dl ]
  %.16 = phi i32 [ 2416, %bb.dc ], [ 2416, %bb.db ], [ 2416, %bb.dd ], [ 2381, %bb.dg ], [ %.15.ph, %bb.dk ], [ %.15.ph, %bb.dj ], [ %.15.ph, %bb.dl ]
  store i32 65535, ptr %i.n, align 8
  br label %.thread813

.thread813:                                       ; preds = %bb.bv, %bb.dm, %bb.ck
  %.25 = phi ptr [ %.24, %bb.dm ], [ %.7614, %bb.ck ], [ %.7614, %bb.bv ] ; 2 uses
  %.17 = phi i32 [ %.16, %bb.dm ], [ %.15.ph, %bb.ck ], [ %i.kt, %bb.bv ] ; 2 uses
  %.not727 = icmp eq i32 %.17, 65535
  br i1 %.not727, label %bb.do, label %.thread813.thread

.thread813.thread.sink.split:                     ; preds = %.preheader.preheader, %bb.as
  %.17831.ph = phi i32 [ 2405, %bb.as ], [ 2308, %.preheader.preheader ]
  store i16 -2, ptr %i.m, align 2
  br label %.thread813.thread

.thread813.thread:                                ; preds = %.thread813.thread.sink.split, %.thread813
  %.17831 = phi i32 [ %.17, %.thread813 ], [ %.17831.ph, %.thread813.thread.sink.split ]
  %.25830 = phi ptr [ %.25, %.thread813 ], [ %.7614, %.thread813.thread.sink.split ] ; 2 uses
  store i32 %.17831, ptr %i.n, align 8
  %i.sf = load i8, ptr %i.y, align 1
  %.not728 = icmp eq i8 %i.sf, 0
  br i1 %.not728, label %.outer.backedge, label %bb.dn

bb.dn:                                            ; preds = %.thread813.thread
  %i.sg = load i16, ptr %i.s, align 4
  store i16 %i.sg, ptr %i.t, align 4
  %i.sh = load i32, ptr %i.u, align 4
  store i32 %i.sh, ptr %i.v, align 4
  store i8 0, ptr %i.y, align 1
  br label %.outer.backedge

bb.do:                                            ; preds = %.thread813
  store i32 10, ptr %1, align 4
  br label %bb.dp

bb.dp:                                            ; preds = %bb.s, %bb.t, %bb.do, %7
  %i.si = phi i8 [ %i.ab, %bb.s ], [ %i.ab, %bb.t ], [ %i.ed, %bb.do ], [ %i.ab, %7 ]
  %i.sj = phi ptr [ %i.aa, %bb.s ], [ %i.aa, %bb.t ], [ %i.ee, %bb.do ], [ %i.aa, %7 ]
  %.26 = phi ptr [ %.0607.ph898, %bb.s ], [ %.0607.ph898, %bb.t ], [ %.25, %bb.do ], [ %.0607.ph898, %7 ]
  %i.sk = load ptr, ptr %i.g, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 65
  store i8 %i.si, ptr %i.sl, align 1
  %i.sm = load ptr, ptr %i.g, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 64
  store i8 1, ptr %i.sn, align 8
  %.pre941 = load i32, ptr %1, align 4
  br label %.loopexit841

.loopexit841.thread:                              ; preds = %.lr.ph
  store i32 15, ptr %1, align 4
  br label %bb.ec

.loopexit841:                                     ; preds = %.outer.backedge, %.split873.us, %bb.c, %bb.dp
  %i.so = phi i32 [ %.pre941, %bb.dp ], [ %i.o, %bb.c ], [ %i.ao, %.split873.us ], [ %i.co, %.outer.backedge ]
  %.1626 = phi ptr [ %i.sj, %bb.dp ], [ %i.k, %bb.c ], [ %i.aa, %.split873.us ], [ %i.cn, %.outer.backedge ] ; 5 uses
  %.27 = phi ptr [ %.26, %bb.dp ], [ %i.j, %bb.c ], [ %.0607.ph898, %.split873.us ], [ %.0607.ph.be, %.outer.backedge ] ; 7 uses
  %i.sp = icmp sgt i32 %i.so, 0
  br i1 %i.sp, label %bb.ec, label %bb.dq

bb.dq:                                            ; preds = %.loopexit841
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.sr = load i8, ptr %i.sq, align 2
  %.not744 = icmp ne i8 %i.sr, 0
  %i.ss = icmp eq ptr %.1626, %i.d
  %or.cond794 = select i1 %.not744, i1 %i.ss, i1 false
  br i1 %or.cond794, label %bb.dr, label %bb.ec

bb.dr:                                            ; preds = %bb.dq
  %i.st = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.su = load i16, ptr %i.m, align 2             ; 2 uses
  switch i16 %i.su, label %bb.dt [
    i16 239, label %bb.ds
    i16 240, label %bb.ds
    i16 217, label %bb.ds
  ]

bb.ds:                                            ; preds = %bb.dr, %bb.dr, %bb.dr
  %i.sv = trunc nuw i16 %i.su to i8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 65
  store i8 %i.sv, ptr %i.sw, align 1
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 64
  store i8 1, ptr %i.sx, align 8
  store i16 -2, ptr %i.m, align 2
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.sy = getelementptr inbounds nuw i8, ptr %i.st, i64 64
  store i8 0, ptr %i.sy, align 8
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.sz = load i32, ptr %i.n, align 8
  %.fr839 = freeze i32 %i.sz                      ; 9 uses
  %.not745 = icmp eq i32 %.fr839, 65535
  br i1 %.not745, label %bb.ec, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ta = icmp slt i32 %.fr839, 161
  br i1 %i.ta, label %bb.dx, label %switch.early.test802

switch.early.test802:                             ; preds = %bb.dv
  switch i32 %.fr839, label %bb.dw [
    i32 8205, label %bb.dx
    i32 8204, label %bb.dx
    i32 2405, label %bb.dx
    i32 2404, label %bb.dx
  ]

bb.dw:                                            ; preds = %switch.early.test802
  %i.tb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.tc = load i16, ptr %i.tb, align 4
  %i.td = zext i16 %i.tc to i32
  %i.te = add nuw nsw i32 %.fr839, %i.td          ; 2 uses
  store i32 %i.te, ptr %i.n, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %switch.early.test802, %switch.early.test802, %switch.early.test802, %switch.early.test802, %bb.dv, %bb.dw
  %i.tf = phi i32 [ %.fr839, %switch.early.test802 ], [ %.fr839, %switch.early.test802 ], [ %.fr839, %switch.early.test802 ], [ %.fr839, %switch.early.test802 ], [ %.fr839, %bb.dv ], [ %i.te, %bb.dw ]
  %i.tg = load ptr, ptr %i.e, align 8
  %i.th = icmp ult ptr %.27, %i.tg
  %i.ti = trunc i32 %i.tf to i16                  ; 2 uses
  br i1 %i.th, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.tj = getelementptr inbounds nuw i8, ptr %.27, i64 2 ; 2 uses
  store i16 %i.ti, ptr %.27, align 2
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.tl = load ptr, ptr %i.tk, align 8            ; 3 uses
  %.not750 = icmp eq ptr %i.tl, null
  br i1 %.not750, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.tm = load ptr, ptr %i.a, align 8
  %i.tn = ptrtoint ptr %i.d to i64
  %i.to = ptrtoint ptr %i.tm to i64
  %i.tp = xor i64 %i.to, -1
  %i.tq = add i64 %i.tp, %i.tn
  %i.tr = trunc i64 %i.tq to i32
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  store ptr %i.ts, ptr %i.tk, align 8
  store i32 %i.tr, ptr %i.tl, align 4
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dx
  %i.tt = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 144
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 93 ; 2 uses
  %i.tw = load i8, ptr %i.tv, align 1             ; 2 uses
  %i.tx = add i8 %i.tw, 1
  store i8 %i.tx, ptr %i.tv, align 1
  %i.ty = sext i8 %i.tw to i64
  %i.tz = getelementptr inbounds [2 x i8], ptr %i.tu, i64 %i.ty
  store i16 %i.ti, ptr %i.tz, align 2
  store i32 15, ptr %1, align 4
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dy, %bb.dz, %bb.ea
  %.28 = phi ptr [ %i.tj, %bb.dz ], [ %i.tj, %bb.dy ], [ %.27, %bb.ea ]
  store i32 65535, ptr %i.n, align 8
  br label %bb.ec

bb.ec:                                            ; preds = %.loopexit841.thread, %bb.du, %bb.eb, %bb.dq, %.loopexit841
  %.1626985 = phi ptr [ %.1626, %bb.dq ], [ %.1626, %.loopexit841 ], [ %.1626, %bb.eb ], [ %.1626, %bb.du ], [ %.0625.ph897, %.loopexit841.thread ]
  %.30 = phi ptr [ %.27, %bb.dq ], [ %.27, %.loopexit841 ], [ %.28, %bb.eb ], [ %.27, %bb.du ], [ %.0607.ph898, %.loopexit841.thread ]
  store ptr %.30, ptr %i.b, align 8
  store ptr %.1626985, ptr %i.a, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL42UConverter_fromUnicode_ISCII_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = icmp ult ptr %i.h, %i.f
  %or.cond472 = select i1 %i.k, i1 true, i1 %i.l
  %i.m = icmp ult ptr %i.d, %i.b
  %or.cond473 = select i1 %or.cond472, i1 true, i1 %i.m
  br i1 %or.cond473, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %1, align 4
  br label %bb.bu

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6 ; 6 uses
  %i.s = load i16, ptr %i.r, align 2
  %i.t = lshr i16 %i.s, 7
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.preheader, label %bb.br

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ult ptr %i.b, %i.d
  br i1 %i.w, label %.lr.ph.lr.ph, label %.loopexit

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer.backedge
  %.0378.ph558 = phi i16 [ %i.t, %.lr.ph.lr.ph ], [ %.0378.ph.be, %.outer.backedge ] ; 5 uses
  %.0392.ph557 = phi ptr [ %i.o, %.lr.ph.lr.ph ], [ %.0392.ph.be, %.outer.backedge ]
  %.0399.ph556 = phi ptr [ %i.f, %.lr.ph.lr.ph ], [ %.0399.ph.be, %.outer.backedge ]
  %.0418.ph555 = phi ptr [ %i.b, %.lr.ph.lr.ph ], [ %i.bv, %.outer.backedge ]
  %i.aa = zext nneg i16 %.0378.ph558 to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr @_ZL17lookupInitialData, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %.0392545 = phi ptr [ %.0392.ph557, %.lr.ph ], [ %.0392.be, %.backedge ] ; 5 uses
  %.0399544 = phi ptr [ %.0399.ph556, %.lr.ph ], [ %.0399.be, %.backedge ] ; 6 uses
  %.0418543 = phi ptr [ %.0418.ph555, %.lr.ph ], [ %i.bv, %.backedge ] ; 6 uses
  %i.ad = load ptr, ptr %i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.af, 10
  br i1 %i.ag, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.ac, align 4            ; 4 uses
  store i32 0, ptr %i.ae, align 8
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = ptrtoint ptr %.0418543 to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 1
  %i.an = trunc i64 %i.am to i32
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  %i.ap = icmp ult ptr %.0399544, %i.h
  br i1 %i.ap, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.0399544, i64 1 ; 5 uses
  store i8 -17, ptr %.0399544, align 1
  %.not447 = icmp eq ptr %.0392545, null
end_hunk_1
