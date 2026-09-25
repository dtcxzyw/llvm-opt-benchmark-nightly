Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blendfillrect?download=true
begin_hunk_0_@SDL_BlendFillRect_XRGB8888:bb.a
  %i.se = mul nuw nsw i32 %i.rt, %i.ql
  %.lhs.trunc667 = trunc nuw i32 %i.se to i16
  %i.sf = udiv i16 %.lhs.trunc667, 255
  %.zext668 = zext nneg i16 %i.sf to i32
  %i.sg = mul nuw nsw i32 %i.rt, %i.b
  %i.sh = udiv i32 %i.sg, 255
  %i.si = add nuw nsw i32 %i.sh, %.zext668
  %spec.store.select21 = tail call i32 @llvm.umin.i32(i32 %i.si, i32 255)
  %i.sj = shl nuw nsw i32 %spec.store.select20, 16
  %i.sk = shl nuw nsw i32 %spec.store.select36, 8
  %i.sl = or disjoint i32 %i.sj, %i.sk
  %i.sm = or disjoint i32 %i.sl, %spec.store.select21
  store i32 %i.sm, ptr %.2617, align 4
  %i.sn = getelementptr inbounds nuw i8, ptr %.2617, i64 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af
  %.2622 = phi i32 [ %.1621, %bb.af ], [ %i.qh, %bb.ad ]
  %.3618 = phi ptr [ %i.sn, %bb.af ], [ %.0615692, %bb.ad ] ; 3 uses
  %i.so = load i32, ptr %.3618, align 4           ; 3 uses
  %i.sp = lshr i32 %i.so, 16
  %i.sq = and i32 %i.sp, 255                      ; 2 uses
  %i.sr = lshr i32 %i.so, 8
  %i.ss = and i32 %i.sr, 255                      ; 2 uses
  %i.st = and i32 %i.so, 255                      ; 2 uses
  %i.su = mul nuw nsw i32 %i.sq, %i.qj
  %.lhs.trunc669 = trunc nuw i32 %i.su to i16
  %i.sv = udiv i16 %.lhs.trunc669, 255
  %.zext670 = zext nneg i16 %i.sv to i32
  %i.sw = mul nuw nsw i32 %i.sq, %i.b
  %i.sx = udiv i32 %i.sw, 255
  %i.sy = add nuw nsw i32 %i.sx, %.zext670
  %spec.store.select22 = tail call i32 @llvm.umin.i32(i32 %i.sy, i32 255)
  %i.sz = mul nuw nsw i32 %i.ss, %i.qk
  %.lhs.trunc671 = trunc nuw i32 %i.sz to i16
  %i.ta = udiv i16 %.lhs.trunc671, 255
  %.zext672 = zext nneg i16 %i.ta to i32
  %i.tb = mul nuw nsw i32 %i.ss, %i.b
  %i.tc = udiv i32 %i.tb, 255
  %i.td = add nuw nsw i32 %i.tc, %.zext672
  %spec.store.select37 = tail call i32 @llvm.umin.i32(i32 %i.td, i32 255)
  %i.te = mul nuw nsw i32 %i.st, %i.ql
  %.lhs.trunc673 = trunc nuw i32 %i.te to i16
  %i.tf = udiv i16 %.lhs.trunc673, 255
  %.zext674 = zext nneg i16 %i.tf to i32
  %i.tg = mul nuw nsw i32 %i.st, %i.b
  %i.th = udiv i32 %i.tg, 255
  %i.ti = add nuw nsw i32 %i.th, %.zext674
  %spec.store.select23 = tail call i32 @llvm.umin.i32(i32 %i.ti, i32 255)
  %i.tj = shl nuw nsw i32 %spec.store.select22, 16
  %i.tk = shl nuw nsw i32 %spec.store.select37, 8
  %i.tl = or disjoint i32 %i.tj, %i.tk
  %i.tm = or disjoint i32 %i.tl, %spec.store.select23
  store i32 %i.tm, ptr %.3618, align 4
  %i.tn = getelementptr inbounds nuw i8, ptr %.3618, i64 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  %.3623 = phi i32 [ %.2622, %bb.ag ], [ %i.qh, %bb.ad ] ; 2 uses
  %.4619 = phi ptr [ %i.tn, %bb.ag ], [ %.0615692, %bb.ad ] ; 3 uses
  %i.to = load i32, ptr %.4619, align 4           ; 3 uses
  %i.tp = lshr i32 %i.to, 16
  %i.tq = and i32 %i.tp, 255                      ; 2 uses
  %i.tr = lshr i32 %i.to, 8
  %i.ts = and i32 %i.tr, 255                      ; 2 uses
  %i.tt = and i32 %i.to, 255                      ; 2 uses
  %i.tu = mul nuw nsw i32 %i.tq, %i.qj
  %.lhs.trunc675 = trunc nuw i32 %i.tu to i16
  %i.tv = udiv i16 %.lhs.trunc675, 255
  %.zext676 = zext nneg i16 %i.tv to i32
  %i.tw = mul nuw nsw i32 %i.tq, %i.b
  %i.tx = udiv i32 %i.tw, 255
  %i.ty = add nuw nsw i32 %i.tx, %.zext676
  %spec.store.select24 = tail call i32 @llvm.umin.i32(i32 %i.ty, i32 255)
  %i.tz = mul nuw nsw i32 %i.ts, %i.qk
  %.lhs.trunc677 = trunc nuw i32 %i.tz to i16
  %i.ua = udiv i16 %.lhs.trunc677, 255
  %.zext678 = zext nneg i16 %i.ua to i32
  %i.ub = mul nuw nsw i32 %i.ts, %i.b
  %i.uc = udiv i32 %i.ub, 255
  %i.ud = add nuw nsw i32 %i.uc, %.zext678
  %spec.store.select38 = tail call i32 @llvm.umin.i32(i32 %i.ud, i32 255)
  %i.ue = mul nuw nsw i32 %i.tt, %i.ql
  %.lhs.trunc679 = trunc nuw i32 %i.ue to i16
  %i.uf = udiv i16 %.lhs.trunc679, 255
  %.zext680 = zext nneg i16 %i.uf to i32
  %i.ug = mul nuw nsw i32 %i.tt, %i.b
  %i.uh = udiv i32 %i.ug, 255
  %i.ui = add nuw nsw i32 %i.uh, %.zext680
  %spec.store.select25 = tail call i32 @llvm.umin.i32(i32 %i.ui, i32 255)
  %i.uj = shl nuw nsw i32 %spec.store.select24, 16
  %i.uk = shl nuw nsw i32 %spec.store.select38, 8
  %i.ul = or disjoint i32 %i.uj, %i.uk
  %i.um = or disjoint i32 %i.ul, %spec.store.select25
  store i32 %i.um, ptr %.4619, align 4
  %i.un = getelementptr inbounds nuw i8, ptr %.4619, i64 4 ; 2 uses
  %i.uo = add nsw i32 %.3623, -1
  %i.up = icmp sgt i32 %.3623, 1
  br i1 %i.up, label %bb.ae, label %bb.ai, !llvm.loop !36

bb.ai:                                            ; preds = %bb.ah
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.qm
  %.not = icmp eq i32 %i.qn, 0
  br i1 %.not, label %.loopexit, label %bb.ad, !llvm.loop !37

bb.aj:                                            ; preds = %.split, %bb.a
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.us = load i32, ptr %i.ur, align 4            ; 2 uses
  %.not634705 = icmp eq i32 %i.us, 0
  br i1 %.not634705, label %.loopexit, label %.lr.ph707

.lr.ph707:                                        ; preds = %bb.aj
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uu = load ptr, ptr %i.ut, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.uw = load i32, ptr %i.uv, align 4
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.uy = load i32, ptr %i.ux, align 8
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.va = load ptr, ptr %i.uz, align 8
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 5
  %i.vc = load i8, ptr %i.vb, align 1
  %i.vd = zext i8 %i.vc to i32
  %i.ve = sdiv i32 %i.uy, %i.vd                   ; 2 uses
  %i.vf = mul nsw i32 %i.uw, %i.ve
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.uu, i64 %i.vg
  %i.vi = load i32, ptr %1, align 4
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vm = load i32, ptr %i.vl, align 4            ; 3 uses
  %i.vn = sub nsw i32 %i.ve, %i.vm
  %i.vo = add nsw i32 %i.vm, 3
  %i.vp = sdiv i32 %i.vo, 4                       ; 4 uses
  %i.vq = and i32 %i.vm, 3
  %i.vr = zext i8 %3 to i32
  %i.vs = zext i8 %4 to i32
  %i.vt = zext i8 %5 to i32
  %i.vu = shl nuw nsw i32 %i.vr, 16
  %i.vv = shl nuw nsw i32 %i.vs, 8
  %i.vw = or disjoint i32 %i.vv, %i.vu
  %i.vx = or disjoint i32 %i.vw, %i.vt            ; 4 uses
  %i.vy = sext i32 %i.vn to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph707, %bb.ap
  %.in716 = phi i32 [ %i.us, %.lr.ph707 ], [ %i.vz, %bb.ap ]
  %.0589706 = phi ptr [ %i.vk, %.lr.ph707 ], [ %i.wg, %bb.ap ] ; 4 uses
  %i.vz = add nsw i32 %.in716, -1                 ; 2 uses
  switch i32 %i.vq, label %default.unreachable [
    i32 0, label %bb.al
    i32 3, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ao
  %.1590 = phi ptr [ %.0589706, %bb.ak ], [ %i.wd, %bb.ao ] ; 2 uses
  %.0585 = phi i32 [ %i.vp, %bb.ak ], [ %i.we, %bb.ao ]
  store i32 %i.vx, ptr %.1590, align 4
  %i.wa = getelementptr inbounds nuw i8, ptr %.1590, i64 4
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.2591 = phi ptr [ %i.wa, %bb.al ], [ %.0589706, %bb.ak ] ; 2 uses
  %.1586 = phi i32 [ %.0585, %bb.al ], [ %i.vp, %bb.ak ]
  store i32 %i.vx, ptr %.2591, align 4
  %i.wb = getelementptr inbounds nuw i8, ptr %.2591, i64 4
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  %.3592 = phi ptr [ %i.wb, %bb.am ], [ %.0589706, %bb.ak ] ; 2 uses
  %.2587 = phi i32 [ %.1586, %bb.am ], [ %i.vp, %bb.ak ]
  store i32 %i.vx, ptr %.3592, align 4
  %i.wc = getelementptr inbounds nuw i8, ptr %.3592, i64 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.an
  %.4593 = phi ptr [ %i.wc, %bb.an ], [ %.0589706, %bb.ak ] ; 2 uses
  %.3588 = phi i32 [ %.2587, %bb.an ], [ %i.vp, %bb.ak ] ; 2 uses
  store i32 %i.vx, ptr %.4593, align 4
  %i.wd = getelementptr inbounds nuw i8, ptr %.4593, i64 4 ; 2 uses
  %i.we = add nsw i32 %.3588, -1
  %i.wf = icmp sgt i32 %.3588, 1
  br i1 %i.wf, label %bb.al, label %bb.ap, !llvm.loop !38

bb.ap:                                            ; preds = %bb.ao
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %i.vy
  %.not634 = icmp eq i32 %i.vz, 0
  br i1 %.not634, label %.loopexit, label %bb.ak, !llvm.loop !39

.loopexit:                                        ; preds = %bb.ai, %bb.ab, %bb.u, %bb.n, %bb.g, %bb.ap, %bb.ac, %bb.v, %bb.o, %bb.h, %bb.b, %bb.aj
  ret i1 true
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @SDL_BlendFillRect_ARGB8888(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %6 to i32                        ; 4 uses
  %i.b = xor i32 %i.a, 255                        ; 44 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.aj

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.e, label %bb.aj [
    i32 0, label %bb.b
    i32 4, label %bb.h
    i32 1, label %bb.o
    i32 5, label %bb.o
    i32 2, label %bb.v
    i32 3, label %bb.ac
  ]

bb.b:                                             ; preds = %.split
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not677746 = icmp eq i32 %i.g, 0
  br i1 %.not677746, label %.loopexit, label %.lr.ph748

.lr.ph748:                                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = sdiv i32 %i.m, %i.r                      ; 2 uses
  %i.t = mul nsw i32 %i.k, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.u
  %i.w = load i32, ptr %1, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = sub nsw i32 %i.s, %i.aa
  %i.ac = add nsw i32 %i.aa, 3
  %i.ad = sdiv i32 %i.ac, 4                       ; 4 uses
  %i.ae = and i32 %i.aa, 3
  %i.af = zext i8 %3 to i32
  %i.ag = insertelement <2 x i8> poison, i8 %4, i64 0 ; 2 uses
  %i.ah = insertelement <2 x i8> %i.ag, i8 %3, i64 1
  %i.ai = insertelement <2 x i8> poison, i8 %5, i64 0 ; 2 uses
  %i.aj = insertelement <2 x i8> %i.ai, i8 %3, i64 1
  %i.ak = sext i32 %i.ab to i64
  %i.al = insertelement <4 x i32> poison, i32 %i.af, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.a, i64 3 ; 2 uses
  %i.an = insertelement <2 x i8> %i.ag, i8 %5, i64 1 ; 2 uses
  %i.ao = shufflevector <2 x i8> %i.an, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ap = zext <4 x i8> %i.ao to <4 x i32>
  %i.aq = shufflevector <4 x i32> %i.am, <4 x i32> %i.ap, <4 x i32> <i32 5, i32 4, i32 2, i32 3>
  %i.ar = shufflevector <2 x i8> %i.an, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.as = zext <4 x i8> %i.ar to <4 x i32>
  %i.at = shufflevector <4 x i32> %i.am, <4 x i32> %i.as, <4 x i32> <i32 5, i32 4, i32 2, i32 3>
  %i.au = shufflevector <2 x i8> %i.aj, <2 x i8> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.av = insertelement <4 x i8> %i.au, i8 %4, i64 1
  %i.aw = insertelement <4 x i8> %i.av, i8 %6, i64 3
  %i.ax = zext <4 x i8> %i.aw to <4 x i32>
  %i.ay = shufflevector <2 x i8> %i.ai, <2 x i8> %i.ah, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.az = insertelement <4 x i8> %i.ay, i8 %6, i64 3
  %i.ba = zext <4 x i8> %i.az to <4 x i32>
  br label %.lr.ph748.split

.lr.ph748.split:                                  ; preds = %.lr.ph748, %bb.g
  %.in759 = phi i32 [ %i.bb, %bb.g ], [ %i.g, %.lr.ph748 ]
  %.0613747 = phi ptr [ %i.by, %bb.g ], [ %i.y, %.lr.ph748 ] ; 4 uses
  %i.bb = add nsw i32 %.in759, -1                 ; 2 uses
  switch i32 %i.ae, label %.lr.ph748.split.unreachabledefault [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph748.split, %bb.f
  %.0614 = phi i32 [ %i.ad, %.lr.ph748.split ], [ %i.bw, %bb.f ]
  %.1 = phi ptr [ %.0613747, %.lr.ph748.split ], [ %i.bv, %bb.f ] ; 3 uses
  %7 = load i32, ptr %.1, align 4                 ; 4 uses
  %8 = lshr i32 %7, 24
  %9 = lshr i32 %7, 16
  %10 = lshr i32 %7, 8
  %11 = and i32 %9, 255
  %12 = and i32 %10, 255
  %13 = and i32 %7, 255
  %14 = mul nuw nsw i32 %8, %i.b
  %15 = mul nuw nsw i32 %11, %i.b
  %16 = mul nuw nsw i32 %12, %i.b
  %17 = mul nuw nsw i32 %13, %i.b
  %18 = insertelement <4 x i32> poison, i32 %17, i64 0
  %19 = insertelement <4 x i32> %18, i32 %16, i64 1
  %20 = insertelement <4 x i32> %19, i32 %15, i64 2
  %21 = insertelement <4 x i32> %20, i32 %14, i64 3
  %i.bc = udiv <4 x i32> %21, splat (i32 255)
  %i.bd = add nuw nsw <4 x i32> %i.bc, %i.aq
  %i.be = shl <4 x i32> %i.bd, <i32 0, i32 8, i32 16, i32 24>
  %i.bf = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.be)
  store i32 %i.bf, ptr %.1, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph748.split, %bb.c
  %.1615 = phi i32 [ %.0614, %bb.c ], [ %i.ad, %.lr.ph748.split ]
  %.2 = phi ptr [ %i.bg, %bb.c ], [ %.0613747, %.lr.ph748.split ] ; 3 uses
  %22 = load i32, ptr %.2, align 4                ; 4 uses
  %23 = lshr i32 %22, 24
  %24 = lshr i32 %22, 16
  %25 = lshr i32 %22, 8
  %26 = and i32 %24, 255
  %27 = and i32 %25, 255
  %28 = and i32 %22, 255
  %29 = mul nuw nsw i32 %23, %i.b
  %30 = mul nuw nsw i32 %26, %i.b
  %31 = mul nuw nsw i32 %27, %i.b
  %32 = mul nuw nsw i32 %28, %i.b
  %33 = insertelement <4 x i32> poison, i32 %32, i64 0
  %34 = insertelement <4 x i32> %33, i32 %31, i64 1
  %35 = insertelement <4 x i32> %34, i32 %30, i64 2
  %36 = insertelement <4 x i32> %35, i32 %29, i64 3
  %i.bh = udiv <4 x i32> %36, splat (i32 255)
  %i.bi = add nuw nsw <4 x i32> %i.bh, %i.at
  %i.bj = shl <4 x i32> %i.bi, <i32 0, i32 8, i32 16, i32 24>
  %i.bk = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bj)
  store i32 %i.bk, ptr %.2, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.2, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph748.split, %bb.d
  %.2616 = phi i32 [ %.1615, %bb.d ], [ %i.ad, %.lr.ph748.split ]
  %.3 = phi ptr [ %i.bl, %bb.d ], [ %.0613747, %.lr.ph748.split ] ; 3 uses
  %37 = load i32, ptr %.3, align 4                ; 4 uses
  %38 = lshr i32 %37, 24
  %39 = lshr i32 %37, 16
  %40 = lshr i32 %37, 8
  %41 = and i32 %39, 255
  %42 = and i32 %40, 255
  %43 = and i32 %37, 255
  %44 = mul nuw nsw i32 %38, %i.b
  %45 = mul nuw nsw i32 %41, %i.b
  %46 = mul nuw nsw i32 %42, %i.b
  %47 = mul nuw nsw i32 %43, %i.b
  %48 = insertelement <4 x i32> poison, i32 %47, i64 0
  %49 = insertelement <4 x i32> %48, i32 %46, i64 1
  %50 = insertelement <4 x i32> %49, i32 %45, i64 2
  %51 = insertelement <4 x i32> %50, i32 %44, i64 3
  %i.bm = udiv <4 x i32> %51, splat (i32 255)
  %i.bn = add nuw nsw <4 x i32> %i.bm, %i.ax
  %i.bo = shl <4 x i32> %i.bn, <i32 0, i32 8, i32 16, i32 24>
  %i.bp = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bo)
  store i32 %i.bp, ptr %.3, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.3, i64 4
  br label %bb.f

.lr.ph748.split.unreachabledefault:               ; preds = %.lr.ph748.split
  unreachable

default.unreachable:                              ; preds = %bb.ad, %bb.w, %bb.p, %bb.i, %bb.ak
  unreachable

bb.f:                                             ; preds = %.lr.ph748.split, %bb.e
  %.3617 = phi i32 [ %.2616, %bb.e ], [ %i.ad, %.lr.ph748.split ] ; 2 uses
  %.4 = phi ptr [ %i.bq, %bb.e ], [ %.0613747, %.lr.ph748.split ] ; 3 uses
  %52 = load i32, ptr %.4, align 4                ; 4 uses
  %53 = lshr i32 %52, 24
  %54 = lshr i32 %52, 16
  %55 = lshr i32 %52, 8
  %56 = and i32 %54, 255
  %57 = and i32 %55, 255
  %58 = and i32 %52, 255
  %59 = mul nuw nsw i32 %53, %i.b
  %60 = mul nuw nsw i32 %56, %i.b
  %61 = mul nuw nsw i32 %57, %i.b
  %62 = mul nuw nsw i32 %58, %i.b
  %63 = insertelement <4 x i32> poison, i32 %62, i64 0
  %64 = insertelement <4 x i32> %63, i32 %61, i64 1
  %65 = insertelement <4 x i32> %64, i32 %60, i64 2
  %66 = insertelement <4 x i32> %65, i32 %59, i64 3
  %i.br = udiv <4 x i32> %66, splat (i32 255)
  %i.bs = add nuw nsw <4 x i32> %i.br, %i.ba
  %i.bt = shl <4 x i32> %i.bs, <i32 0, i32 8, i32 16, i32 24>
  %i.bu = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bt)
  store i32 %i.bu, ptr %.4, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.bw = add nsw i32 %.3617, -1
  %i.bx = icmp sgt i32 %.3617, 1
  br i1 %i.bx, label %bb.c, label %bb.g, !llvm.loop !40

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ak
  %.not677 = icmp eq i32 %i.bb, 0
  br i1 %.not677, label %.loopexit, label %.lr.ph748.split, !llvm.loop !41

bb.h:                                             ; preds = %.split
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %.not676743 = icmp eq i32 %i.ca, 0
  br i1 %.not676743, label %.loopexit, label %.lr.ph745

.lr.ph745:                                        ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 5
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i32
  %i.cm = sdiv i32 %i.cg, %i.cl                   ; 2 uses
  %i.cn = mul nsw i32 %i.ce, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.co
  %i.cq = load i32, ptr %1, align 4
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load i32, ptr %i.ct, align 4            ; 3 uses
  %i.cv = sub nsw i32 %i.cm, %i.cu
  %i.cw = add nsw i32 %i.cu, 3
  %i.cx = sdiv i32 %i.cw, 4                       ; 4 uses
  %i.cy = and i32 %i.cu, 3
  %i.cz = zext i8 %3 to i32
  %i.da = insertelement <2 x i8> poison, i8 %4, i64 0 ; 2 uses
  %i.db = insertelement <2 x i8> %i.da, i8 %3, i64 1
  %i.dc = insertelement <2 x i8> poison, i8 %5, i64 0 ; 2 uses
  %i.dd = insertelement <2 x i8> %i.dc, i8 %3, i64 1
  %i.de = sext i32 %i.cv to i64
  %i.df = insertelement <4 x i32> poison, i32 %i.cz, i64 2
  %i.dg = insertelement <4 x i32> %i.df, i32 %i.a, i64 3 ; 2 uses
  %i.dh = insertelement <2 x i8> %i.da, i8 %5, i64 1 ; 2 uses
  %i.di = shufflevector <2 x i8> %i.dh, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = zext <4 x i8> %i.di to <4 x i32>
  %i.dk = shufflevector <4 x i32> %i.dg, <4 x i32> %i.dj, <4 x i32> <i32 5, i32 4, i32 2, i32 3>
  %i.dl = shufflevector <2 x i8> %i.dh, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = zext <4 x i8> %i.dl to <4 x i32>
  %i.dn = shufflevector <4 x i32> %i.dg, <4 x i32> %i.dm, <4 x i32> <i32 5, i32 4, i32 2, i32 3>
  %i.do = shufflevector <2 x i8> %i.dd, <2 x i8> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.dp = insertelement <4 x i8> %i.do, i8 %4, i64 1
  %i.dq = insertelement <4 x i8> %i.dp, i8 %6, i64 3
  %i.dr = zext <4 x i8> %i.dq to <4 x i32>
  %i.ds = shufflevector <2 x i8> %i.dc, <2 x i8> %i.db, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.dt = insertelement <4 x i8> %i.ds, i8 %6, i64 3
  %i.du = zext <4 x i8> %i.dt to <4 x i32>
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph745, %bb.n
  %.in758 = phi i32 [ %i.ca, %.lr.ph745 ], [ %i.dv, %bb.n ]
  %.0619744 = phi ptr [ %i.cs, %.lr.ph745 ], [ %i.es, %bb.n ] ; 4 uses
  %i.dv = add nsw i32 %.in758, -1                 ; 2 uses
  switch i32 %i.cy, label %default.unreachable [
    i32 0, label %bb.j
    i32 3, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i, %bb.m
  %.0624 = phi i32 [ %i.cx, %bb.i ], [ %i.eq, %bb.m ]
  %.1620 = phi ptr [ %.0619744, %bb.i ], [ %i.ep, %bb.m ] ; 3 uses
  %67 = load i32, ptr %.1620, align 4             ; 4 uses
  %68 = lshr i32 %67, 24
  %69 = lshr i32 %67, 16
  %70 = lshr i32 %67, 8
  %71 = and i32 %69, 255
  %72 = and i32 %70, 255
  %73 = and i32 %67, 255
  %74 = mul nuw nsw i32 %68, %i.b
  %75 = mul nuw nsw i32 %71, %i.b
  %76 = mul nuw nsw i32 %72, %i.b
  %77 = mul nuw nsw i32 %73, %i.b
  %78 = insertelement <4 x i32> poison, i32 %77, i64 0
  %79 = insertelement <4 x i32> %78, i32 %76, i64 1
  %80 = insertelement <4 x i32> %79, i32 %75, i64 2
  %81 = insertelement <4 x i32> %80, i32 %74, i64 3
  %i.dw = udiv <4 x i32> %81, splat (i32 255)
  %i.dx = add nuw nsw <4 x i32> %i.dw, %i.dk
  %i.dy = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dx, <4 x i32> splat (i32 255))
  %i.dz = trunc nuw <4 x i32> %i.dy to <4 x i8>
  store <4 x i8> %i.dz, ptr %.1620, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.1620, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1625 = phi i32 [ %.0624, %bb.j ], [ %i.cx, %bb.i ]
  %.2621 = phi ptr [ %i.ea, %bb.j ], [ %.0619744, %bb.i ] ; 3 uses
  %82 = load i32, ptr %.2621, align 4             ; 4 uses
  %83 = lshr i32 %82, 24
  %84 = lshr i32 %82, 16
  %85 = lshr i32 %82, 8
  %86 = and i32 %84, 255
  %87 = and i32 %85, 255
  %88 = and i32 %82, 255
  %89 = mul nuw nsw i32 %83, %i.b
  %90 = mul nuw nsw i32 %86, %i.b
  %91 = mul nuw nsw i32 %87, %i.b
  %92 = mul nuw nsw i32 %88, %i.b
  %93 = insertelement <4 x i32> poison, i32 %92, i64 0
  %94 = insertelement <4 x i32> %93, i32 %91, i64 1
  %95 = insertelement <4 x i32> %94, i32 %90, i64 2
  %96 = insertelement <4 x i32> %95, i32 %89, i64 3
  %i.eb = udiv <4 x i32> %96, splat (i32 255)
  %i.ec = add nuw nsw <4 x i32> %i.eb, %i.dn
  %i.ed = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ec, <4 x i32> splat (i32 255))
  %i.ee = trunc nuw <4 x i32> %i.ed to <4 x i8>
  store <4 x i8> %i.ee, ptr %.2621, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.2621, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.2626 = phi i32 [ %.1625, %bb.k ], [ %i.cx, %bb.i ]
  %.3622 = phi ptr [ %i.ef, %bb.k ], [ %.0619744, %bb.i ] ; 3 uses
  %97 = load i32, ptr %.3622, align 4             ; 4 uses
  %98 = lshr i32 %97, 24
  %99 = lshr i32 %97, 16
  %100 = lshr i32 %97, 8
  %101 = and i32 %99, 255
  %102 = and i32 %100, 255
  %103 = and i32 %97, 255
  %104 = mul nuw nsw i32 %98, %i.b
  %105 = mul nuw nsw i32 %101, %i.b
  %106 = mul nuw nsw i32 %102, %i.b
  %107 = mul nuw nsw i32 %103, %i.b
  %108 = insertelement <4 x i32> poison, i32 %107, i64 0
  %109 = insertelement <4 x i32> %108, i32 %106, i64 1
  %110 = insertelement <4 x i32> %109, i32 %105, i64 2
  %111 = insertelement <4 x i32> %110, i32 %104, i64 3
  %i.eg = udiv <4 x i32> %111, splat (i32 255)
  %i.eh = add nuw nsw <4 x i32> %i.eg, %i.dr
  %i.ei = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.eh, <4 x i32> splat (i32 255))
  %i.ej = trunc nuw <4 x i32> %i.ei to <4 x i8>
  store <4 x i8> %i.ej, ptr %.3622, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %.3622, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.3627 = phi i32 [ %.2626, %bb.l ], [ %i.cx, %bb.i ] ; 2 uses
  %.4623 = phi ptr [ %i.ek, %bb.l ], [ %.0619744, %bb.i ] ; 3 uses
  %112 = load i32, ptr %.4623, align 4            ; 4 uses
  %113 = lshr i32 %112, 24
  %114 = lshr i32 %112, 16
  %115 = lshr i32 %112, 8
  %116 = and i32 %114, 255
  %117 = and i32 %115, 255
  %118 = and i32 %112, 255
  %119 = mul nuw nsw i32 %113, %i.b
  %120 = mul nuw nsw i32 %116, %i.b
  %121 = mul nuw nsw i32 %117, %i.b
  %122 = mul nuw nsw i32 %118, %i.b
  %123 = insertelement <4 x i32> poison, i32 %122, i64 0
  %124 = insertelement <4 x i32> %123, i32 %121, i64 1
  %125 = insertelement <4 x i32> %124, i32 %120, i64 2
  %126 = insertelement <4 x i32> %125, i32 %119, i64 3
  %i.el = udiv <4 x i32> %126, splat (i32 255)
  %i.em = add nuw nsw <4 x i32> %i.el, %i.du
  %i.en = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.em, <4 x i32> splat (i32 255))
  %i.eo = trunc nuw <4 x i32> %i.en to <4 x i8>
  store <4 x i8> %i.eo, ptr %.4623, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %.4623, i64 4 ; 2 uses
  %i.eq = add nsw i32 %.3627, -1
  %i.er = icmp sgt i32 %.3627, 1
  br i1 %i.er, label %bb.j, label %bb.n, !llvm.loop !42

bb.n:                                             ; preds = %bb.m
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.de
  %.not676 = icmp eq i32 %i.dv, 0
  br i1 %.not676, label %.loopexit, label %bb.i, !llvm.loop !43

bb.o:                                             ; preds = %.split, %.split
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.eu = load i32, ptr %i.et, align 4            ; 2 uses
  %.not675740 = icmp eq i32 %i.eu, 0
  br i1 %.not675740, label %.loopexit, label %.lr.ph742

.lr.ph742:                                        ; preds = %bb.o
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 5
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i32
  %i.fg = sdiv i32 %i.fa, %i.ff                   ; 2 uses
  %i.fh = mul nsw i32 %i.ey, %i.fg
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fi
  %i.fk = load i32, ptr %1, align 4
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fo = load i32, ptr %i.fn, align 4            ; 3 uses
  %i.fp = sub nsw i32 %i.fg, %i.fo
  %i.fq = add nsw i32 %i.fo, 3
  %i.fr = sdiv i32 %i.fq, 4                       ; 4 uses
  %i.fs = and i32 %i.fo, 3
  %i.ft = zext i8 %3 to i32                       ; 4 uses
  %i.fu = zext i8 %4 to i32                       ; 4 uses
  %i.fv = zext i8 %5 to i32                       ; 4 uses
  %i.fw = sext i32 %i.fp to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph742, %bb.u
  %.in757 = phi i32 [ %i.eu, %.lr.ph742 ], [ %i.fx, %bb.u ]
  %.0639741 = phi ptr [ %i.fm, %.lr.ph742 ], [ %i.im, %bb.u ] ; 4 uses
  %i.fx = add nsw i32 %.in757, -1                 ; 2 uses
  switch i32 %i.fs, label %default.unreachable [
    i32 0, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p, %bb.t
  %.0644 = phi i32 [ %i.fr, %bb.p ], [ %i.ik, %bb.t ]
  %.1640 = phi ptr [ %.0639741, %bb.p ], [ %i.ij, %bb.t ] ; 3 uses
  %i.fy = load i32, ptr %.1640, align 4           ; 4 uses
  %i.fz = lshr i32 %i.fy, 16
  %i.ga = and i32 %i.fz, 255
  %i.gb = lshr i32 %i.fy, 8
  %i.gc = and i32 %i.gb, 255
  %i.gd = and i32 %i.fy, 255
  %i.ge = and i32 %i.fy, -16777216
  %i.gf = add nuw nsw i32 %i.ga, %i.ft
  %spec.store.select31 = tail call i32 @llvm.umin.i32(i32 %i.gf, i32 255)
  %i.gg = add nuw nsw i32 %i.gc, %i.fu
  %spec.store.select10 = tail call i32 @llvm.umin.i32(i32 %i.gg, i32 255)
  %i.gh = add nuw nsw i32 %i.gd, %i.fv
  %spec.store.select43 = tail call i32 @llvm.umin.i32(i32 %i.gh, i32 255)
  %i.gi = shl nuw nsw i32 %spec.store.select31, 16
  %i.gj = or disjoint i32 %i.gi, %i.ge
  %i.gk = shl nuw nsw i32 %spec.store.select10, 8
  %i.gl = or disjoint i32 %i.gj, %i.gk
  %i.gm = or disjoint i32 %i.gl, %spec.store.select43
  store i32 %i.gm, ptr %.1640, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %.1640, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1645 = phi i32 [ %.0644, %bb.q ], [ %i.fr, %bb.p ]
  %.2641 = phi ptr [ %i.gn, %bb.q ], [ %.0639741, %bb.p ] ; 3 uses
  %i.go = load i32, ptr %.2641, align 4           ; 4 uses
  %i.gp = lshr i32 %i.go, 16
  %i.gq = and i32 %i.gp, 255
  %i.gr = lshr i32 %i.go, 8
  %i.gs = and i32 %i.gr, 255
  %i.gt = and i32 %i.go, 255
  %i.gu = and i32 %i.go, -16777216
  %i.gv = add nuw nsw i32 %i.gq, %i.ft
  %spec.store.select11 = tail call i32 @llvm.umin.i32(i32 %i.gv, i32 255)
  %i.gw = add nuw nsw i32 %i.gs, %i.fu
  %spec.store.select32 = tail call i32 @llvm.umin.i32(i32 %i.gw, i32 255)
  %i.gx = add nuw nsw i32 %i.gt, %i.fv
  %spec.store.select12 = tail call i32 @llvm.umin.i32(i32 %i.gx, i32 255)
  %i.gy = shl nuw nsw i32 %spec.store.select11, 16
  %i.gz = or disjoint i32 %i.gy, %i.gu
  %i.ha = shl nuw nsw i32 %spec.store.select32, 8
  %i.hb = or disjoint i32 %i.gz, %i.ha
  %i.hc = or disjoint i32 %i.hb, %spec.store.select12
  store i32 %i.hc, ptr %.2641, align 4
  %i.hd = getelementptr inbounds nuw i8, ptr %.2641, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %.2646 = phi i32 [ %.1645, %bb.r ], [ %i.fr, %bb.p ]
  %.3642 = phi ptr [ %i.hd, %bb.r ], [ %.0639741, %bb.p ] ; 3 uses
  %i.he = load i32, ptr %.3642, align 4           ; 4 uses
  %i.hf = lshr i32 %i.he, 16
  %i.hg = and i32 %i.hf, 255
  %i.hh = lshr i32 %i.he, 8
  %i.hi = and i32 %i.hh, 255
  %i.hj = and i32 %i.he, 255
  %i.hk = and i32 %i.he, -16777216
  %i.hl = add nuw nsw i32 %i.hg, %i.ft
  %spec.store.select13 = tail call i32 @llvm.umin.i32(i32 %i.hl, i32 255)
  %i.hm = add nuw nsw i32 %i.hi, %i.fu
  %spec.store.select33 = tail call i32 @llvm.umin.i32(i32 %i.hm, i32 255)
  %i.hn = add nuw nsw i32 %i.hj, %i.fv
  %spec.store.select14 = tail call i32 @llvm.umin.i32(i32 %i.hn, i32 255)
  %i.ho = shl nuw nsw i32 %spec.store.select13, 16
  %i.hp = or disjoint i32 %i.ho, %i.hk
  %i.hq = shl nuw nsw i32 %spec.store.select33, 8
  %i.hr = or disjoint i32 %i.hp, %i.hq
  %i.hs = or disjoint i32 %i.hr, %spec.store.select14
  store i32 %i.hs, ptr %.3642, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %.3642, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s
  %.3647 = phi i32 [ %.2646, %bb.s ], [ %i.fr, %bb.p ] ; 2 uses
  %.4643 = phi ptr [ %i.ht, %bb.s ], [ %.0639741, %bb.p ] ; 3 uses
  %i.hu = load i32, ptr %.4643, align 4           ; 4 uses
  %i.hv = lshr i32 %i.hu, 16
  %i.hw = and i32 %i.hv, 255
  %i.hx = lshr i32 %i.hu, 8
  %i.hy = and i32 %i.hx, 255
  %i.hz = and i32 %i.hu, 255
  %i.ia = and i32 %i.hu, -16777216
  %i.ib = add nuw nsw i32 %i.hw, %i.ft
  %spec.store.select15 = tail call i32 @llvm.umin.i32(i32 %i.ib, i32 255)
  %i.ic = add nuw nsw i32 %i.hy, %i.fu
  %spec.store.select34 = tail call i32 @llvm.umin.i32(i32 %i.ic, i32 255)
  %i.id = add nuw nsw i32 %i.hz, %i.fv
  %spec.store.select16 = tail call i32 @llvm.umin.i32(i32 %i.id, i32 255)
  %i.ie = shl nuw nsw i32 %spec.store.select15, 16
  %i.if = or disjoint i32 %i.ie, %i.ia
  %i.ig = shl nuw nsw i32 %spec.store.select34, 8
  %i.ih = or disjoint i32 %i.if, %i.ig
  %i.ii = or disjoint i32 %i.ih, %spec.store.select16
  store i32 %i.ii, ptr %.4643, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %.4643, i64 4 ; 2 uses
  %i.ik = add nsw i32 %.3647, -1
  %i.il = icmp sgt i32 %.3647, 1
  br i1 %i.il, label %bb.q, label %bb.u, !llvm.loop !44

bb.u:                                             ; preds = %bb.t
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.fw
  %.not675 = icmp eq i32 %i.fx, 0
  br i1 %.not675, label %.loopexit, label %bb.p, !llvm.loop !45

bb.v:                                             ; preds = %.split
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.io = load i32, ptr %i.in, align 4            ; 2 uses
  %.not674737 = icmp eq i32 %i.io, 0
  br i1 %.not674737, label %.loopexit, label %.lr.ph739

.lr.ph739:                                        ; preds = %bb.v
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iu = load i32, ptr %i.it, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 5
  %i.iy = load i8, ptr %i.ix, align 1
  %i.iz = zext i8 %i.iy to i32
  %i.ja = sdiv i32 %i.iu, %i.iz                   ; 2 uses
  %i.jb = mul nsw i32 %i.is, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.jc
  %i.je = load i32, ptr %1, align 4
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ji = load i32, ptr %i.jh, align 4            ; 3 uses
  %i.jj = sub nsw i32 %i.ja, %i.ji
  %i.jk = add nsw i32 %i.ji, 3
  %i.jl = sdiv i32 %i.jk, 4                       ; 4 uses
  %i.jm = and i32 %i.ji, 3
end_hunk_0
