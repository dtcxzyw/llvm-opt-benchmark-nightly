Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1193
loop-unroll.NumRuntimeUnrolled: 419
loop-unroll.NumUnrolled: 1634
begin_hunk_0_@helper_sve_umulh_zpzz_h:bb.a
bb.aa:                                            ; preds = %bb.z
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_umulh_zpzz_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.n
  %.018 = phi i64 [ 0, %bb.a ], [ %.lcssa, %bb.n ] ; 8 uses
  %i.h = ashr i64 %.018, 3
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2              ; 4 uses
  %i.k = and i16 %i.j, 1
  %.not = icmp eq i16 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 %.018
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds i8, ptr %2, i64 %.018
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.m to i64
  %i.q = zext i32 %i.o to i64
  %i.r = mul nuw i64 %i.q, %i.p
  %i.s = lshr i64 %i.r, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = getelementptr inbounds i8, ptr %0, i64 %.018
  store i32 %i.t, ptr %i.u, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = add i64 %.018, 4                         ; 5 uses
  %i.w = and i64 %i.v, 15
  %.not17 = icmp eq i64 %i.w, 0
  br i1 %.not17, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = and i16 %i.j, 16
  %.not.1 = icmp eq i16 %i.x, 0
  br i1 %.not.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.v
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.v
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = zext i32 %i.z to i64
  %i.ad = zext i32 %i.ab to i64
  %i.ae = mul nuw i64 %i.ad, %i.ac
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.v
  store i32 %i.ag, ptr %i.ah, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = add i64 %.018, 8                        ; 5 uses
  %i.aj = and i64 %i.ai, 15
  %.not17.1 = icmp eq i64 %i.aj, 0
  br i1 %.not17.1, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = and i16 %i.j, 256
  %.not.2 = icmp eq i16 %i.ak, 0
  br i1 %.not.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ai
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.am to i64
  %i.aq = zext i32 %i.ao to i64
  %i.ar = mul nuw i64 %i.aq, %i.ap
  %i.as = lshr i64 %i.ar, 32
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.ai
  store i32 %i.at, ptr %i.au, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.av = add i64 %.018, 12                       ; 5 uses
  %i.aw = and i64 %i.av, 15
  %.not17.2 = icmp eq i64 %i.aw, 0
  br i1 %.not17.2, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = and i16 %i.j, 4096
  %.not.3 = icmp eq i16 %i.ax, 0
  br i1 %.not.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %i.av
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %i.av
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.az to i64
  %i.bd = zext i32 %i.bb to i64
  %i.be = mul nuw i64 %i.bd, %i.bc
  %i.bf = lshr i64 %i.be, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.av
  store i32 %i.bg, ptr %i.bh, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = add i64 %.018, 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.d
  %.lcssa = phi i64 [ %i.v, %bb.d ], [ %i.ai, %bb.g ], [ %i.av, %bb.j ], [ %i.bi, %bb.m ] ; 2 uses
  %i.bj = icmp slt i64 %.lcssa, %i.g
  br i1 %i.bj, label %bb.b, label %bb.o, !llvm.loop !169

bb.o:                                             ; preds = %bb.n
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_umulh_zpzz_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %4, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %.v.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.017 = phi i64 [ 0, %bb.a ], [ %i.s, %bb.d ]   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %.017
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.017
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.017
  %i.l = load i64, ptr %i.k, align 8
  %i.m = zext i64 %i.j to i128
  %i.n = zext i64 %i.l to i128
  %i.o = mul nuw i128 %i.n, %i.m
  %i.p = lshr i128 %i.o, 64
  %i.q = trunc nuw i128 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017
  store i64 %i.q, ptr %i.r, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = add nuw nsw i64 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.e
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !170

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sadalp_zpzz_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.z
  %.018 = phi i64 [ 0, %bb.a ], [ %.lcssa, %bb.z ] ; 12 uses
  %i.h = ashr i64 %.018, 3
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2              ; 8 uses
  %i.k = and i16 %i.j, 1
  %.not = icmp eq i16 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 %.018
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %.018
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.m to i32
  %sext.i = shl i32 %i.p, 24
  %i.q = ashr exact i32 %sext.i, 24
  %5 = ashr i16 %i.m, 8
  %6 = trunc nsw i32 %i.q to i16
  %7 = add i16 %5, %i.o
  %8 = add i16 %7, %6
  %i.r = getelementptr inbounds i8, ptr %0, i64 %.018
  store i16 %8, ptr %i.r, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = add i64 %.018, 2                         ; 5 uses
  %i.t = and i64 %i.s, 15
  %.not17 = icmp eq i64 %i.t, 0
  br i1 %.not17, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = and i16 %i.j, 4
  %.not.1 = icmp eq i16 %i.u, 0
  br i1 %.not.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.w = load i16, ptr %i.v, align 2              ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.s
  %i.y = load i16, ptr %i.x, align 2
  %i.z = zext i16 %i.w to i32
  %sext.i.1 = shl i32 %i.z, 24
  %i.aa = ashr exact i32 %sext.i.1, 24
  %9 = ashr i16 %i.w, 8
  %10 = trunc nsw i32 %i.aa to i16
  %11 = add i16 %9, %i.y
  %12 = add i16 %11, %10
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.s
  store i16 %12, ptr %i.ab, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = add i64 %.018, 4                        ; 5 uses
  %i.ad = and i64 %i.ac, 15
  %.not17.1 = icmp eq i64 %i.ad, 0
  br i1 %.not17.1, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = and i16 %i.j, 16
  %.not.2 = icmp eq i16 %i.ae, 0
  br i1 %.not.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ac
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ac
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ag to i32
  %sext.i.2 = shl i32 %i.aj, 24
  %i.ak = ashr exact i32 %sext.i.2, 24
  %13 = ashr i16 %i.ag, 8
  %14 = trunc nsw i32 %i.ak to i16
  %15 = add i16 %13, %i.ai
  %16 = add i16 %15, %14
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ac
  store i16 %16, ptr %i.al, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = add i64 %.018, 6                        ; 5 uses
  %i.an = and i64 %i.am, 15
  %.not17.2 = icmp eq i64 %i.an, 0
  br i1 %.not17.2, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = and i16 %i.j, 64
  %.not.3 = icmp eq i16 %i.ao, 0
  br i1 %.not.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.am
  %i.aq = load i16, ptr %i.ap, align 2            ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.am
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = zext i16 %i.aq to i32
  %sext.i.3 = shl i32 %i.at, 24
  %i.au = ashr exact i32 %sext.i.3, 24
  %17 = ashr i16 %i.aq, 8
  %18 = trunc nsw i32 %i.au to i16
  %19 = add i16 %17, %i.as
  %20 = add i16 %19, %18
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.am
  store i16 %20, ptr %i.av, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = add i64 %.018, 8                        ; 5 uses
  %i.ax = and i64 %i.aw, 15
  %.not17.3 = icmp eq i64 %i.ax, 0
  br i1 %.not17.3, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = and i16 %i.j, 256
  %.not.4 = icmp eq i16 %i.ay, 0
  br i1 %.not.4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds i8, ptr %1, i64 %i.aw
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.aw
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.ba to i32
  %sext.i.4 = shl i32 %i.bd, 24
  %i.be = ashr exact i32 %sext.i.4, 24
  %21 = ashr i16 %i.ba, 8
  %22 = trunc nsw i32 %i.be to i16
  %23 = add i16 %21, %i.bc
  %24 = add i16 %23, %22
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %i.aw
  store i16 %24, ptr %i.bf, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bg = add i64 %.018, 10                       ; 5 uses
  %i.bh = and i64 %i.bg, 15
  %.not17.4 = icmp eq i64 %i.bh, 0
  br i1 %.not17.4, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = and i16 %i.j, 1024
  %.not.5 = icmp eq i16 %i.bi, 0
  br i1 %.not.5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %i.bg
  %i.bk = load i16, ptr %i.bj, align 2            ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.bg
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = zext i16 %i.bk to i32
  %sext.i.5 = shl i32 %i.bn, 24
  %i.bo = ashr exact i32 %sext.i.5, 24
  %25 = ashr i16 %i.bk, 8
  %26 = trunc nsw i32 %i.bo to i16
  %27 = add i16 %25, %i.bm
  %28 = add i16 %27, %26
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bg
  store i16 %28, ptr %i.bp, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bq = add i64 %.018, 12                       ; 5 uses
  %i.br = and i64 %i.bq, 15
  %.not17.5 = icmp eq i64 %i.br, 0
  br i1 %.not17.5, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = and i16 %i.j, 4096
  %.not.6 = icmp eq i16 %i.bs, 0
  br i1 %.not.6, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds i8, ptr %1, i64 %i.bq
  %i.bu = load i16, ptr %i.bt, align 2            ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %2, i64 %i.bq
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = zext i16 %i.bu to i32
  %sext.i.6 = shl i32 %i.bx, 24
  %i.by = ashr exact i32 %sext.i.6, 24
  %29 = ashr i16 %i.bu, 8
  %30 = trunc nsw i32 %i.by to i16
  %31 = add i16 %29, %i.bw
  %32 = add i16 %31, %30
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.bq
  store i16 %32, ptr %i.bz, align 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ca = add i64 %.018, 14                       ; 5 uses
  %i.cb = and i64 %i.ca, 15
  %.not17.6 = icmp eq i64 %i.cb, 0
  br i1 %.not17.6, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = and i16 %i.j, 16384
  %.not.7 = icmp eq i16 %i.cc, 0
  br i1 %.not.7, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds i8, ptr %1, i64 %i.ca
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %2, i64 %i.ca
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.ce to i32
  %sext.i.7 = shl i32 %i.ch, 24
  %i.ci = ashr exact i32 %sext.i.7, 24
  %33 = ashr i16 %i.ce, 8
  %34 = trunc nsw i32 %i.ci to i16
  %35 = add i16 %33, %i.cg
  %36 = add i16 %35, %34
  %i.cj = getelementptr inbounds i8, ptr %0, i64 %i.ca
  store i16 %36, ptr %i.cj, align 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ck = add i64 %.018, 16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d
  %.lcssa = phi i64 [ %i.s, %bb.d ], [ %i.ac, %bb.g ], [ %i.am, %bb.j ], [ %i.aw, %bb.m ], [ %i.bg, %bb.p ], [ %i.bq, %bb.s ], [ %i.ca, %bb.v ], [ %i.ck, %bb.y ] ; 2 uses
  %i.cl = icmp slt i64 %.lcssa, %i.g
  br i1 %i.cl, label %bb.b, label %bb.aa, !llvm.loop !171

bb.aa:                                            ; preds = %bb.z
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sadalp_zpzz_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.n
  %.018 = phi i64 [ 0, %bb.a ], [ %.lcssa, %bb.n ] ; 8 uses
  %i.h = ashr i64 %.018, 3
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2              ; 4 uses
  %i.k = and i16 %i.j, 1
  %.not = icmp eq i16 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 %.018
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %.018
  %i.o = load i32, ptr %i.n, align 4
  %sext.i = shl i32 %i.m, 16
  %i.p = ashr exact i32 %sext.i, 16
  %i.q = ashr i32 %i.m, 16
  %i.r = add i32 %i.q, %i.o
  %i.s = add i32 %i.r, %i.p
  %i.t = getelementptr inbounds i8, ptr %0, i64 %.018
  store i32 %i.s, ptr %i.t, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = add i64 %.018, 4                         ; 5 uses
  %i.v = and i64 %i.u, 15
  %.not17 = icmp eq i64 %i.v, 0
  br i1 %.not17, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = and i16 %i.j, 16
  %.not.1 = icmp eq i16 %i.w, 0
  br i1 %.not.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.u
  %i.aa = load i32, ptr %i.z, align 4
  %sext.i.1 = shl i32 %i.y, 16
  %i.ab = ashr exact i32 %sext.i.1, 16
  %i.ac = ashr i32 %i.y, 16
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = add i32 %i.ad, %i.ab
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.u
  store i32 %i.ae, ptr %i.af, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = add i64 %.018, 8                        ; 5 uses
  %i.ah = and i64 %i.ag, 15
  %.not17.1 = icmp eq i64 %i.ah, 0
  br i1 %.not17.1, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = and i16 %i.j, 256
  %.not.2 = icmp eq i16 %i.ai, 0
  br i1 %.not.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %i.ag
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.ag
  %i.am = load i32, ptr %i.al, align 4
  %sext.i.2 = shl i32 %i.ak, 16
  %i.an = ashr exact i32 %sext.i.2, 16
  %i.ao = ashr i32 %i.ak, 16
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = add i32 %i.ap, %i.an
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.ag
  store i32 %i.aq, ptr %i.ar, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = add i64 %.018, 12                       ; 5 uses
  %i.at = and i64 %i.as, 15
  %.not17.2 = icmp eq i64 %i.at, 0
  br i1 %.not17.2, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = and i16 %i.j, 4096
  %.not.3 = icmp eq i16 %i.au, 0
  br i1 %.not.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds i8, ptr %1, i64 %i.as
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.as
  %i.ay = load i32, ptr %i.ax, align 4
  %sext.i.3 = shl i32 %i.aw, 16
  %i.az = ashr exact i32 %sext.i.3, 16
  %i.ba = ashr i32 %i.aw, 16
  %i.bb = add i32 %i.ba, %i.ay
  %i.bc = add i32 %i.bb, %i.az
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %i.as
  store i32 %i.bc, ptr %i.bd, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.be = add i64 %.018, 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.d
  %.lcssa = phi i64 [ %i.u, %bb.d ], [ %i.ag, %bb.g ], [ %i.as, %bb.j ], [ %i.be, %bb.m ] ; 2 uses
  %i.bf = icmp slt i64 %.lcssa, %i.g
  br i1 %i.bf, label %bb.b, label %bb.o, !llvm.loop !172

bb.o:                                             ; preds = %bb.n
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sadalp_zpzz_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %4, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %.v.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.017 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.d ]   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %.017
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.017
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.017
  %i.l = load i64, ptr %i.k, align 8
  %sext.i = shl i64 %i.j, 32
  %i.m = ashr exact i64 %sext.i, 32
  %i.n = ashr i64 %i.j, 32
  %i.o = add i64 %i.n, %i.l
  %i.p = add i64 %i.o, %i.m
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017
  store i64 %i.p, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.r = add nuw nsw i64 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.e
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !173

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_uadalp_zpzz_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.z
  %.018 = phi i64 [ 0, %bb.a ], [ %.lcssa, %bb.z ] ; 12 uses
  %i.h = ashr i64 %.018, 3
end_hunk_0
