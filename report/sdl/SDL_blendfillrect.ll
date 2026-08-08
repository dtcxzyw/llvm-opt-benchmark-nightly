begin_hunk_0_@SDL_BlendFillRect_XRGB8888:bb.a
  %spec.store.select36 = tail call i32 @llvm.umin.i32(i32 %i.sd, i32 255)
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
  store i32 %i.sm, ptr %.2607, align 4
  %i.sn = getelementptr inbounds nuw i8, ptr %.2607, i64 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af
  %.2612 = phi i32 [ %.1611, %bb.af ], [ %i.qh, %bb.ad ]
  %.3608 = phi ptr [ %i.sn, %bb.af ], [ %.0605692, %bb.ad ] ; 3 uses
  %i.so = load i32, ptr %.3608, align 4           ; 3 uses
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
  store i32 %i.tm, ptr %.3608, align 4
  %i.tn = getelementptr inbounds nuw i8, ptr %.3608, i64 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  %.3613 = phi i32 [ %.2612, %bb.ag ], [ %i.qh, %bb.ad ] ; 2 uses
  %.4609 = phi ptr [ %i.tn, %bb.ag ], [ %.0605692, %bb.ad ] ; 3 uses
  %i.to = load i32, ptr %.4609, align 4           ; 3 uses
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
  store i32 %i.um, ptr %.4609, align 4
  %i.un = getelementptr inbounds nuw i8, ptr %.4609, i64 4 ; 2 uses
  %i.uo = add nsw i32 %.3613, -1
  %i.up = icmp sgt i32 %.3613, 1
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
  %.0619706 = phi ptr [ %i.vk, %.lr.ph707 ], [ %i.wg, %bb.ap ] ; 4 uses
  %i.vz = add nsw i32 %.in716, -1                 ; 2 uses
  switch i32 %i.vq, label %default.unreachable [
    i32 0, label %bb.al
    i32 3, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ao
  %.1620 = phi ptr [ %.0619706, %bb.ak ], [ %i.wd, %bb.ao ] ; 2 uses
  %.0615 = phi i32 [ %i.vp, %bb.ak ], [ %i.we, %bb.ao ]
  store i32 %i.vx, ptr %.1620, align 4
  %i.wa = getelementptr inbounds nuw i8, ptr %.1620, i64 4
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.2621 = phi ptr [ %i.wa, %bb.al ], [ %.0619706, %bb.ak ] ; 2 uses
  %.1616 = phi i32 [ %.0615, %bb.al ], [ %i.vp, %bb.ak ]
  store i32 %i.vx, ptr %.2621, align 4
  %i.wb = getelementptr inbounds nuw i8, ptr %.2621, i64 4
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  %.3622 = phi ptr [ %i.wb, %bb.am ], [ %.0619706, %bb.ak ] ; 2 uses
  %.2617 = phi i32 [ %.1616, %bb.am ], [ %i.vp, %bb.ak ]
  store i32 %i.vx, ptr %.3622, align 4
  %i.wc = getelementptr inbounds nuw i8, ptr %.3622, i64 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.an
  %.4623 = phi ptr [ %i.wc, %bb.an ], [ %.0619706, %bb.ak ] ; 2 uses
  %.3618 = phi i32 [ %.2617, %bb.an ], [ %i.vp, %bb.ak ] ; 2 uses
  store i32 %i.vx, ptr %.4623, align 4
  %i.wd = getelementptr inbounds nuw i8, ptr %.4623, i64 4 ; 2 uses
  %i.we = add nsw i32 %.3618, -1
  %i.wf = icmp sgt i32 %.3618, 1
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
  %i.a = zext i8 %6 to i32                        ; 7 uses
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
  %i.af = zext i8 %3 to i32                       ; 3 uses
  %7 = insertelement <4 x i8> poison, i8 %4, i64 0
  %8 = insertelement <4 x i8> %7, i8 %3, i64 1
  %9 = zext i8 %5 to i32                          ; 4 uses
  %i.ag = sext i32 %i.ab to i64
  %i.ah = insertelement <4 x i32> poison, i32 %9, i64 0
  %10 = zext i8 %4 to i32
  %11 = zext i8 %4 to i32
  %12 = zext i8 %4 to i32
  %i.ai = zext <4 x i8> %8 to <4 x i32>
  %13 = shufflevector <4 x i32> %i.ah, <4 x i32> %i.ai, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %14 = insertelement <4 x i32> %13, i32 %i.a, i64 3
  br label %.lr.ph748.split

.lr.ph748.split:                                  ; preds = %.lr.ph748, %bb.g
  %.in759 = phi i32 [ %i.aj, %bb.g ], [ %i.g, %.lr.ph748 ]
  %.0613747 = phi ptr [ %i.ck, %bb.g ], [ %i.y, %.lr.ph748 ] ; 4 uses
  %i.aj = add nsw i32 %.in759, -1                 ; 2 uses
  switch i32 %i.ae, label %.lr.ph748.split.unreachabledefault [
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph748.split, %bb.f
  %.0614 = phi i32 [ %i.ad, %.lr.ph748.split ], [ %i.ci, %bb.f ]
  %.1 = phi ptr [ %.0613747, %.lr.ph748.split ], [ %i.ch, %bb.f ] ; 3 uses
  %i.ak = load i32, ptr %.1, align 4              ; 4 uses
  %i.al = lshr i32 %i.ak, 16
  %15 = and i32 %i.al, 255
  %i.am = lshr i32 %i.ak, 8
  %i.an = and i32 %i.am, 255
  %i.ao = and i32 %i.ak, 255
  %16 = lshr i32 %i.ak, 24
  %i.ap = mul nuw nsw i32 %15, %i.b
  %17 = udiv i32 %i.ap, 255
  %18 = add nuw nsw i32 %17, %i.af
  %i.aq = mul nuw nsw i32 %i.an, %i.b
  %19 = udiv i32 %i.aq, 255
  %20 = add nuw nsw i32 %19, %10
  %i.ar = mul nuw nsw i32 %i.ao, %i.b
  %21 = udiv i32 %i.ar, 255
  %22 = add nuw nsw i32 %21, %9
  %i.as = mul nuw nsw i32 %16, %i.b
  %23 = udiv i32 %i.as, 255
  %24 = add nuw nsw i32 %23, %i.a
  %25 = shl i32 %24, 24
  %26 = shl nuw nsw i32 %18, 16
  %27 = shl nuw nsw i32 %20, 8
  %28 = or disjoint i32 %25, %22
  %29 = or i32 %28, %26
  %30 = or i32 %29, %27
  store i32 %30, ptr %.1, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph748.split, %bb.c
  %.1615 = phi i32 [ %.0614, %bb.c ], [ %i.ad, %.lr.ph748.split ]
  %.2 = phi ptr [ %i.at, %bb.c ], [ %.0613747, %.lr.ph748.split ] ; 3 uses
  %i.au = load i32, ptr %.2, align 4              ; 4 uses
  %i.av = lshr i32 %i.au, 16
  %31 = and i32 %i.av, 255
  %i.aw = lshr i32 %i.au, 8
  %i.ax = and i32 %i.aw, 255
  %i.ay = and i32 %i.au, 255
  %32 = lshr i32 %i.au, 24
  %i.az = mul nuw nsw i32 %31, %i.b
  %33 = udiv i32 %i.az, 255
  %34 = add nuw nsw i32 %33, %i.af
  %i.ba = mul nuw nsw i32 %i.ax, %i.b
  %35 = udiv i32 %i.ba, 255
  %36 = add nuw nsw i32 %35, %11
  %i.bb = mul nuw nsw i32 %i.ay, %i.b
  %37 = udiv i32 %i.bb, 255
  %38 = add nuw nsw i32 %37, %9
  %i.bc = mul nuw nsw i32 %32, %i.b
  %39 = udiv i32 %i.bc, 255
  %40 = add nuw nsw i32 %39, %i.a
  %41 = shl i32 %40, 24
  %42 = shl nuw nsw i32 %34, 16
  %43 = shl nuw nsw i32 %36, 8
  %44 = or disjoint i32 %41, %38
  %45 = or i32 %44, %42
  %46 = or i32 %45, %43
  store i32 %46, ptr %.2, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.2, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph748.split, %bb.d
  %.2616 = phi i32 [ %.1615, %bb.d ], [ %i.ad, %.lr.ph748.split ]
  %.3 = phi ptr [ %i.bd, %bb.d ], [ %.0613747, %.lr.ph748.split ] ; 3 uses
  %i.be = load i32, ptr %.3, align 4              ; 4 uses
  %i.bf = lshr i32 %i.be, 16
  %47 = and i32 %i.bf, 255
  %i.bg = lshr i32 %i.be, 8
  %i.bh = and i32 %i.bg, 255
  %i.bi = and i32 %i.be, 255
  %48 = lshr i32 %i.be, 24
  %i.bj = mul nuw nsw i32 %47, %i.b
  %49 = udiv i32 %i.bj, 255
  %50 = add nuw nsw i32 %49, %i.af
  %i.bk = mul nuw nsw i32 %i.bh, %i.b
  %51 = udiv i32 %i.bk, 255
  %52 = add nuw nsw i32 %51, %12
  %i.bl = mul nuw nsw i32 %i.bi, %i.b
  %53 = udiv i32 %i.bl, 255
  %54 = add nuw nsw i32 %53, %9
  %i.bm = mul nuw nsw i32 %48, %i.b
  %55 = udiv i32 %i.bm, 255
  %56 = add nuw nsw i32 %55, %i.a
  %57 = shl i32 %56, 24
  %58 = shl nuw nsw i32 %50, 16
  %59 = shl nuw nsw i32 %52, 8
  %60 = or disjoint i32 %57, %54
  %61 = or i32 %60, %58
  %62 = or i32 %61, %59
  store i32 %62, ptr %.3, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.3, i64 4
  br label %bb.f

.lr.ph748.split.unreachabledefault:               ; preds = %.lr.ph748.split
  unreachable

default.unreachable:                              ; preds = %bb.ad, %bb.w, %bb.p, %bb.i, %bb.ak
  unreachable

bb.f:                                             ; preds = %.lr.ph748.split, %bb.e
  %.3617 = phi i32 [ %.2616, %bb.e ], [ %i.ad, %.lr.ph748.split ] ; 2 uses
  %.4 = phi ptr [ %i.bn, %bb.e ], [ %.0613747, %.lr.ph748.split ] ; 3 uses
  %i.bo = load i32, ptr %.4, align 4              ; 4 uses
  %i.bp = lshr i32 %i.bo, 24
  %i.bq = lshr i32 %i.bo, 16
  %i.br = lshr i32 %i.bo, 8
  %i.bs = and i32 %i.bq, 255
  %i.bt = and i32 %i.br, 255
  %i.bu = and i32 %i.bo, 255
  %i.bv = mul nuw nsw i32 %i.bp, %i.b
  %i.bw = mul nuw nsw i32 %i.bs, %i.b
  %i.bx = mul nuw nsw i32 %i.bt, %i.b
  %i.by = mul nuw nsw i32 %i.bu, %i.b
  %i.bz = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bx, i64 1
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bw, i64 2
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.bv, i64 3
  %i.cd = udiv <4 x i32> %i.cc, splat (i32 255)
  %i.ce = add nuw nsw <4 x i32> %i.cd, %14
  %i.cf = shl <4 x i32> %i.ce, <i32 0, i32 8, i32 16, i32 24>
  %i.cg = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cf)
  store i32 %i.cg, ptr %.4, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.ci = add nsw i32 %.3617, -1
  %i.cj = icmp sgt i32 %.3617, 1
  br i1 %i.cj, label %bb.c, label %bb.g, !llvm.loop !40

bb.g:                                             ; preds = %bb.f
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ag
  %.not677 = icmp eq i32 %i.aj, 0
  br i1 %.not677, label %.loopexit, label %.lr.ph748.split, !llvm.loop !41

bb.h:                                             ; preds = %.split
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cm = load i32, ptr %i.cl, align 4            ; 2 uses
  %.not676743 = icmp eq i32 %i.cm, 0
  br i1 %.not676743, label %.loopexit, label %.lr.ph745

.lr.ph745:                                        ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 5
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i32
  %i.cy = sdiv i32 %i.cs, %i.cx                   ; 2 uses
  %i.cz = mul nsw i32 %i.cq, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.da
  %i.dc = load i32, ptr %1, align 4
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load i32, ptr %i.df, align 4            ; 3 uses
  %i.dh = sub nsw i32 %i.cy, %i.dg
  %i.di = add nsw i32 %i.dg, 3
  %i.dj = sdiv i32 %i.di, 4                       ; 4 uses
  %i.dk = and i32 %i.dg, 3
  %i.dl = zext i8 %3 to i32
  %i.dm = insertelement <2 x i8> poison, i8 %4, i64 0 ; 2 uses
  %i.dn = insertelement <2 x i8> %i.dm, i8 %3, i64 1
  %i.do = insertelement <2 x i8> poison, i8 %5, i64 0 ; 2 uses
  %i.dp = insertelement <2 x i8> %i.do, i8 %3, i64 1
  %i.dq = sext i32 %i.dh to i64
  %i.dr = insertelement <4 x i32> poison, i32 %i.dl, i64 2
  %i.ds = insertelement <4 x i32> %i.dr, i32 %i.a, i64 3 ; 2 uses
  %i.dt = insertelement <2 x i8> %i.dm, i8 %5, i64 1 ; 2 uses
  %i.du = shufflevector <2 x i8> %i.dt, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dv = zext <4 x i8> %i.du to <4 x i32>
  %i.dw = shufflevector <4 x i32> %i.ds, <4 x i32> %i.dv, <4 x i32> <i32 5, i32 4, i32 2, i32 3>
  %i.dx = shufflevector <2 x i8> %i.dt, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dy = zext <4 x i8> %i.dx to <4 x i32>
  %i.dz = shufflevector <4 x i32> %i.ds, <4 x i32> %i.dy, <4 x i32> <i32 5, i32 4, i32 2, i32 3>
  %i.ea = shufflevector <2 x i8> %i.dp, <2 x i8> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.eb = insertelement <4 x i8> %i.ea, i8 %4, i64 1
  %i.ec = insertelement <4 x i8> %i.eb, i8 %6, i64 3
  %i.ed = zext <4 x i8> %i.ec to <4 x i32>
  %i.ee = shufflevector <2 x i8> %i.do, <2 x i8> %i.dn, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ef = insertelement <4 x i8> %i.ee, i8 %6, i64 3
  %i.eg = zext <4 x i8> %i.ef to <4 x i32>
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph745, %bb.n
  %.in758 = phi i32 [ %i.cm, %.lr.ph745 ], [ %i.eh, %bb.n ]
  %.0619744 = phi ptr [ %i.de, %.lr.ph745 ], [ %i.hq, %bb.n ] ; 4 uses
  %i.eh = add nsw i32 %.in758, -1                 ; 2 uses
  switch i32 %i.dk, label %default.unreachable [
    i32 0, label %bb.j
    i32 3, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i, %bb.m
  %.0624 = phi i32 [ %i.dj, %bb.i ], [ %i.ho, %bb.m ]
  %.1620 = phi ptr [ %.0619744, %bb.i ], [ %i.hn, %bb.m ] ; 3 uses
  %i.ei = load i32, ptr %.1620, align 4           ; 4 uses
  %i.ej = lshr i32 %i.ei, 24
  %i.ek = lshr i32 %i.ei, 16
  %i.el = lshr i32 %i.ei, 8
  %i.em = and i32 %i.ek, 255
  %i.en = and i32 %i.el, 255
  %i.eo = and i32 %i.ei, 255
  %i.ep = mul nuw nsw i32 %i.ej, %i.b
  %i.eq = mul nuw nsw i32 %i.em, %i.b
  %i.er = mul nuw nsw i32 %i.en, %i.b
  %i.es = mul nuw nsw i32 %i.eo, %i.b
  %i.et = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %i.eu = insertelement <4 x i32> %i.et, i32 %i.er, i64 1
  %i.ev = insertelement <4 x i32> %i.eu, i32 %i.eq, i64 2
  %i.ew = insertelement <4 x i32> %i.ev, i32 %i.ep, i64 3
  %i.ex = udiv <4 x i32> %i.ew, splat (i32 255)
  %i.ey = add nuw nsw <4 x i32> %i.ex, %i.dw
  %i.ez = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ey, <4 x i32> splat (i32 255))
  %i.fa = shl nuw <4 x i32> %i.ez, <i32 0, i32 8, i32 16, i32 24>
  %i.fb = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fa)
  store i32 %i.fb, ptr %.1620, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.1620, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1625 = phi i32 [ %.0624, %bb.j ], [ %i.dj, %bb.i ]
  %.2621 = phi ptr [ %i.fc, %bb.j ], [ %.0619744, %bb.i ] ; 3 uses
  %i.fd = load i32, ptr %.2621, align 4           ; 4 uses
  %i.fe = lshr i32 %i.fd, 24
  %i.ff = lshr i32 %i.fd, 16
  %i.fg = lshr i32 %i.fd, 8
  %i.fh = and i32 %i.ff, 255
  %i.fi = and i32 %i.fg, 255
  %i.fj = and i32 %i.fd, 255
  %i.fk = mul nuw nsw i32 %i.fe, %i.b
  %i.fl = mul nuw nsw i32 %i.fh, %i.b
  %i.fm = mul nuw nsw i32 %i.fi, %i.b
  %i.fn = mul nuw nsw i32 %i.fj, %i.b
  %i.fo = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %i.fp = insertelement <4 x i32> %i.fo, i32 %i.fm, i64 1
  %i.fq = insertelement <4 x i32> %i.fp, i32 %i.fl, i64 2
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.fk, i64 3
  %i.fs = udiv <4 x i32> %i.fr, splat (i32 255)
  %i.ft = add nuw nsw <4 x i32> %i.fs, %i.dz
  %i.fu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ft, <4 x i32> splat (i32 255))
  %i.fv = shl nuw <4 x i32> %i.fu, <i32 0, i32 8, i32 16, i32 24>
  %i.fw = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fv)
  store i32 %i.fw, ptr %.2621, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %.2621, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.2626 = phi i32 [ %.1625, %bb.k ], [ %i.dj, %bb.i ]
  %.3622 = phi ptr [ %i.fx, %bb.k ], [ %.0619744, %bb.i ] ; 3 uses
  %i.fy = load i32, ptr %.3622, align 4           ; 4 uses
  %i.fz = lshr i32 %i.fy, 24
  %i.ga = lshr i32 %i.fy, 16
  %i.gb = lshr i32 %i.fy, 8
  %i.gc = and i32 %i.ga, 255
  %i.gd = and i32 %i.gb, 255
  %i.ge = and i32 %i.fy, 255
  %i.gf = mul nuw nsw i32 %i.fz, %i.b
  %i.gg = mul nuw nsw i32 %i.gc, %i.b
  %i.gh = mul nuw nsw i32 %i.gd, %i.b
  %i.gi = mul nuw nsw i32 %i.ge, %i.b
  %i.gj = insertelement <4 x i32> poison, i32 %i.gi, i64 0
  %i.gk = insertelement <4 x i32> %i.gj, i32 %i.gh, i64 1
  %i.gl = insertelement <4 x i32> %i.gk, i32 %i.gg, i64 2
  %i.gm = insertelement <4 x i32> %i.gl, i32 %i.gf, i64 3
  %i.gn = udiv <4 x i32> %i.gm, splat (i32 255)
  %i.go = add nuw nsw <4 x i32> %i.gn, %i.ed
  %i.gp = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.go, <4 x i32> splat (i32 255))
  %i.gq = shl nuw <4 x i32> %i.gp, <i32 0, i32 8, i32 16, i32 24>
  %i.gr = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.gq)
  store i32 %i.gr, ptr %.3622, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %.3622, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.3627 = phi i32 [ %.2626, %bb.l ], [ %i.dj, %bb.i ] ; 2 uses
  %.4623 = phi ptr [ %i.gs, %bb.l ], [ %.0619744, %bb.i ] ; 3 uses
  %i.gt = load i32, ptr %.4623, align 4           ; 4 uses
  %i.gu = lshr i32 %i.gt, 24
  %i.gv = lshr i32 %i.gt, 16
  %i.gw = lshr i32 %i.gt, 8
  %i.gx = and i32 %i.gv, 255
  %i.gy = and i32 %i.gw, 255
  %i.gz = and i32 %i.gt, 255
  %i.ha = mul nuw nsw i32 %i.gu, %i.b
  %i.hb = mul nuw nsw i32 %i.gx, %i.b
  %i.hc = mul nuw nsw i32 %i.gy, %i.b
  %i.hd = mul nuw nsw i32 %i.gz, %i.b
  %i.he = insertelement <4 x i32> poison, i32 %i.hd, i64 0
  %i.hf = insertelement <4 x i32> %i.he, i32 %i.hc, i64 1
  %i.hg = insertelement <4 x i32> %i.hf, i32 %i.hb, i64 2
  %i.hh = insertelement <4 x i32> %i.hg, i32 %i.ha, i64 3
  %i.hi = udiv <4 x i32> %i.hh, splat (i32 255)
  %i.hj = add nuw nsw <4 x i32> %i.hi, %i.eg
  %i.hk = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hj, <4 x i32> splat (i32 255))
  %i.hl = shl nuw <4 x i32> %i.hk, <i32 0, i32 8, i32 16, i32 24>
  %i.hm = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hl)
  store i32 %i.hm, ptr %.4623, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %.4623, i64 4 ; 2 uses
  %i.ho = add nsw i32 %.3627, -1
  %i.hp = icmp sgt i32 %.3627, 1
  br i1 %i.hp, label %bb.j, label %bb.n, !llvm.loop !42

bb.n:                                             ; preds = %bb.m
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.dq
  %.not676 = icmp eq i32 %i.eh, 0
  br i1 %.not676, label %.loopexit, label %bb.i, !llvm.loop !43

bb.o:                                             ; preds = %.split, %.split
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.hs = load i32, ptr %i.hr, align 4            ; 2 uses
  %.not675740 = icmp eq i32 %i.hs, 0
  br i1 %.not675740, label %.loopexit, label %.lr.ph742

end_hunk_0
