Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vcrypto_helper?download=true
inline.NumInlined: 368
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@helper_vgmul_vv:bb.a
  %i.g = add nuw nsw i32 %i.f, 8
  %i.h = trunc i64 %.val to i32
  %i.i = lshr i32 %i.h, 3
  %i.j = and i32 %i.i, 7
  %i.k = shl i32 %3, 18
  %i.l = ashr i32 %i.k, 29
  %reass.sub = sub nsw i32 %i.l, %i.j
  %i.m = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.n = add nsw i32 %i.m, 2
  %i.o = shl nuw nsw i32 %i.g, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4620 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4616 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8              ; 3 uses
  %.not = icmp ult i32 %i.q, %i.s
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.t = lshr i32 %i.q, 2
  %i.u = lshr i32 %i.s, 2
  %i.v = icmp samesign ult i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.w = lshr i32 %i.q, 2
  %i.x = zext nneg i32 %i.w to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.lcssa = phi i32 [ %i.s, %bb.b ], [ %i.df, %bb.d ]
  %i.y = shl i32 %.lcssa, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.y, i32 noundef %i.o) #12
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.z = shl nuw nsw i64 %indvars.iv, 1           ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load <2 x i64>, ptr %i.aa, align 8      ; 2 uses
  %i.ae = shl <2 x i64> %i.ad, splat (i64 1)
  %i.af = and <2 x i64> %i.ae, splat (i64 -6148914691236517206)
  %i.ag = lshr <2 x i64> %i.ad, splat (i64 1)
  %i.ah = and <2 x i64> %i.ag, splat (i64 6148914691236517205)
  %i.ai = or disjoint <2 x i64> %i.af, %i.ah      ; 2 uses
  %i.aj = shl <2 x i64> %i.ai, splat (i64 2)
  %i.ak = and <2 x i64> %i.aj, splat (i64 -3689348814741910324)
  %i.al = lshr <2 x i64> %i.ai, splat (i64 2)
  %i.am = and <2 x i64> %i.al, splat (i64 3689348814741910323)
  %i.an = or disjoint <2 x i64> %i.ak, %i.am      ; 2 uses
  %i.ao = shl <2 x i64> %i.an, splat (i64 4)
  %i.ap = and <2 x i64> %i.ao, splat (i64 -1085102592571150096)
  %i.aq = lshr <2 x i64> %i.an, splat (i64 4)
  %i.ar = and <2 x i64> %i.aq, splat (i64 1085102592571150095)
  %i.as = or disjoint <2 x i64> %i.ap, %i.ar
  store <2 x i64> %i.as, ptr %i.a, align 16
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = shl i64 %i.au, 1
  %i.aw = and i64 %i.av, -6148914691236517206
  %i.ax = lshr i64 %i.au, 1
  %i.ay = and i64 %i.ax, 6148914691236517205
  %i.az = or disjoint i64 %i.aw, %i.ay            ; 2 uses
  %i.ba = shl i64 %i.az, 2
  %i.bb = and i64 %i.ba, -3689348814741910324
  %i.bc = lshr i64 %i.az, 2
  %i.bd = and i64 %i.bc, 3689348814741910323
  %i.be = or disjoint i64 %i.bb, %i.bd            ; 2 uses
  %i.bf = shl i64 %i.be, 4
  %i.bg = and i64 %i.bf, -1085102592571150096
  %i.bh = lshr i64 %i.be, 4
  %i.bi = and i64 %i.bh, 1085102592571150095
  %i.bj = or disjoint i64 %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ab
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = shl i64 %i.bl, 1
  %i.bn = and i64 %i.bm, -6148914691236517206
  %i.bo = lshr i64 %i.bl, 1
  %i.bp = and i64 %i.bo, 6148914691236517205
  %i.bq = or disjoint i64 %i.bn, %i.bp            ; 2 uses
  %i.br = shl i64 %i.bq, 2
  %i.bs = and i64 %i.br, -3689348814741910324
  %i.bt = lshr i64 %i.bq, 2
  %i.bu = and i64 %i.bt, 3689348814741910323
  %i.bv = or disjoint i64 %i.bs, %i.bu            ; 2 uses
  %i.bw = shl i64 %i.bv, 4
  %i.bx = and i64 %i.bw, -1085102592571150096
  %i.by = lshr i64 %i.bv, 4
  %i.bz = and i64 %i.by, 1085102592571150095
  %i.ca = or disjoint i64 %i.bx, %i.bz
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.cb = shl i64 %.sroa.0.1, 1
  %i.cc = and i64 %i.cb, -6148914691236517206
  %i.cd = lshr i64 %.sroa.0.1, 1
  %i.ce = and i64 %i.cd, 6148914691236517205
  %i.cf = or disjoint i64 %i.cc, %i.ce            ; 2 uses
  %i.cg = shl i64 %i.cf, 2
  %i.ch = and i64 %i.cg, -3689348814741910324
  %i.ci = lshr i64 %i.cf, 2
  %i.cj = and i64 %i.ci, 3689348814741910323
  %i.ck = or disjoint i64 %i.ch, %i.cj            ; 2 uses
  %i.cl = shl i64 %i.ck, 4
  %i.cm = and i64 %i.cl, -1085102592571150096
  %i.cn = lshr i64 %i.ck, 4
  %i.co = and i64 %i.cn, 1085102592571150095
  %i.cp = or disjoint i64 %i.cm, %i.co
  store i64 %i.cp, ptr %i.aa, align 8
  %i.cq = shl i64 %.sroa.6.1, 1
  %i.cr = and i64 %i.cq, -6148914691236517206
  %i.cs = lshr i64 %.sroa.6.1, 1
  %i.ct = and i64 %i.cs, 6148914691236517205
  %i.cu = or disjoint i64 %i.cr, %i.ct            ; 2 uses
  %i.cv = shl i64 %i.cu, 2
  %i.cw = and i64 %i.cv, -3689348814741910324
  %i.cx = lshr i64 %i.cu, 2
  %i.cy = and i64 %i.cx, 3689348814741910323
  %i.cz = or disjoint i64 %i.cw, %i.cy            ; 2 uses
  %i.da = shl i64 %i.cz, 4
  %i.db = and i64 %i.da, -1085102592571150096
  %i.dc = lshr i64 %i.cz, 4
  %i.dd = and i64 %i.dc, 1085102592571150095
  %i.de = or disjoint i64 %i.db, %i.dd
  store i64 %i.de, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.r, align 8             ; 2 uses
  %i.dg = lshr i32 %i.df, 2
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = icmp samesign ult i64 %indvars.iv.next, %i.dh
  br i1 %i.di, label %bb.c, label %._crit_edge, !llvm.loop !116

bb.e:                                             ; preds = %bb.c, %bb.e
  %.054 = phi i32 [ 0, %bb.c ], [ %i.dw, %bb.e ]  ; 3 uses
  %.sroa.6.053 = phi i64 [ 0, %bb.c ], [ %.sroa.6.1, %bb.e ]
  %.sroa.0.052 = phi i64 [ 0, %bb.c ], [ %.sroa.0.1, %bb.e ]
  %.sroa.10.051 = phi i64 [ %i.ca, %bb.c ], [ %i.dt, %bb.e ] ; 3 uses
  %.sroa.08.050 = phi i64 [ %i.bj, %bb.c ], [ %.sroa.08.1, %bb.e ] ; 3 uses
  %i.dj = lshr i32 %.054, 6
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = and i32 %.054, 63
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dm, %i.dp
  %.not47 = icmp eq i64 %i.dq, 0                  ; 2 uses
  %i.dr = select i1 %.not47, i64 0, i64 %.sroa.08.050
  %.sroa.0.1 = xor i64 %i.dr, %.sroa.0.052        ; 3 uses
  %i.ds = select i1 %.not47, i64 0, i64 %.sroa.10.051
  %.sroa.6.1 = xor i64 %i.ds, %.sroa.6.053        ; 3 uses
  %i.dt = tail call i64 @llvm.fshl.i64(i64 %.sroa.10.051, i64 %.sroa.08.050, i64 1)
  %i.du = shl i64 %.sroa.08.050, 1                ; 2 uses
  %i.dv = xor i64 %i.du, 135
  %.not4849 = icmp slt i64 %.sroa.10.051, 0
  %.sroa.08.1 = select i1 %.not4849, i64 %i.dv, i64 %i.du
  %i.dw = add nuw nsw i32 %.054, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dw, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !117

bb.f:                                             ; preds = %bb.a, %._crit_edge
  store i32 0, ptr %i.p, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsm4k_vi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %.sroa.14 = alloca [4 x i32], align 16          ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4620 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4616 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i32 %i.e, 2                         ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 4608
  %.val = load i64, ptr %i.g, align 16
  %i.h = shl i32 %4, 3
  %i.i = and i32 %i.h, 2040
  %i.j = add nuw nsw i32 %i.i, 8
  %i.k = trunc i64 %.val to i32
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 7
  %i.n = shl i32 %4, 18
  %i.o = ashr i32 %i.n, 29
  %reass.sub = sub nsw i32 %i.o, %i.m
  %i.p = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.q = add nsw i32 %i.p, 2
  %i.r = shl nuw nsw i32 %i.j, %i.q
  %.not = icmp ult i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.b, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = lshr i32 %i.c, 2                         ; 3 uses
  %i.t = icmp samesign ult i32 %i.s, %i.f
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.u = shl i32 %2, 2
  %i.v = and i32 %i.u, 28
  %5 = lshr i32 %i.c, 2
  %6 = zext nneg i32 %5 to i64
  %i.w = and i32 %i.c, -4                         ; 2 uses
  %i.x = add i32 %i.w, 4
  %i.y = sub nuw nsw i32 -4, %i.w
  %i.z = or disjoint i32 %i.y, 3
  %i.aa = zext nneg i32 %i.v to i64               ; 4 uses
  %i.ab = sub nuw nsw i32 %i.f, %i.s
  %wide.trip.count = zext nneg i32 %i.ab to i64
  %.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @sm4_ck, i64 %i.aa
  %i.ad = load i32, ptr %i.ac, align 16
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @sm4_ck, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @sm4_ck, i64 %i.aa
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @sm4_ck, i64 %i.aa
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %.sroa.14.4..sroa_idx105 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 4
  %.sroa.14.8..sroa_idx106 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 8
  %.sroa.14.12..sroa_idx107 = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 12
  br label %.preheader60.preheader

._crit_edge.loopexit:                             ; preds = %.preheader60.preheader
  %.pre = load i32, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.an = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.c ]
  store i32 0, ptr %i.b, align 4
  %i.ao = lshr i32 %4, 14
  %i.ap = and i32 %i.ao, 1
  %i.aq = shl i32 %i.an, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.r) #12
  br label %bb.d

.preheader60.preheader:                           ; preds = %.lr.ph, %.preheader60.preheader
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.preheader60.preheader ] ; 4 uses
  %.05765 = phi i32 [ %i.s, %.lr.ph ], [ %11, %.preheader60.preheader ] ; 2 uses
  %i.ar = add nuw i64 %indvar, %6
  %7 = shl nuw i64 %i.ar, 4                       ; 2 uses
  %scevgep75 = getelementptr i8, ptr %0, i64 %7
  %indvar.tr = trunc i64 %indvar to i32
  %8 = shl i32 %indvar.tr, 2
  %i.as = add i32 %8, %i.x
  %9 = shl nuw i32 %.05765, 2
  %10 = or disjoint i32 %9, 1
  %umax77 = tail call i32 @llvm.umax.i32(i32 %i.as, i32 %10)
  %indvar.tr.a = trunc i64 %indvar to i32
  %i.at = shl i32 %indvar.tr.a, 2
  %i.au = sub i32 %i.z, %i.at
  %i.av = add i32 %umax77, %i.au                  ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 4                ; 3 uses
  %scevgep = getelementptr nuw i8, ptr %1, i64 %7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  %i.az = icmp ugt i32 %i.av, 2
  %i.ba = sub nsw i64 12, %i.ax
  %i.bb = select i1 %i.az, i64 0, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.a, i64 %i.ay
  call void @llvm.memset.p0.i64(ptr align 4 %i.bc, i8 0, i64 %i.bb, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.ay, i1 false)
  %.0..sroa.0.0.copyload = load i32, ptr %i.a, align 16
  %.4..sroa.5.0.copyload = load i32, ptr %.4..sroa_idx, align 4 ; 2 uses
  %.8..sroa.7.0.copyload = load i32, ptr %.8..sroa_idx, align 8 ; 3 uses
  %.12..sroa.10.0.copyload = load i32, ptr %.12..sroa_idx, align 4 ; 4 uses
  %i.bd = xor i32 %.4..sroa.5.0.copyload, %i.ad
  %i.be = xor i32 %i.bd, %.8..sroa.7.0.copyload
  %i.bf = xor i32 %i.be, %.12..sroa.10.0.copyload ; 4 uses
  %i.bg = and i32 %i.bf, 255
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = lshr i32 %i.bf, 8
  %i.bm = and i32 %i.bl, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 8
  %i.bs = or disjoint i32 %i.br, %i.bk
  %i.bt = lshr i32 %i.bf, 16
  %i.bu = and i32 %i.bt, 255
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 16
  %i.ca = or disjoint i32 %i.bs, %i.bz
  %i.cb = lshr i32 %i.bf, 24
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw i32 %i.cf, 24
  %i.ch = or disjoint i32 %i.ca, %i.cg            ; 5 uses
  %i.ci = tail call noundef i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 13)
  %i.cj = tail call noundef i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 23)
  %i.ck = xor i32 %.0..sroa.0.0.copyload, %i.cj
  %i.cl = xor i32 %i.ck, %i.ci
  %i.cm = xor i32 %i.cl, %i.ch                    ; 4 uses
  store i32 %i.cm, ptr %.sroa.14, align 16
  %i.cn = xor i32 %.8..sroa.7.0.copyload, %i.ag
  %i.co = xor i32 %i.cn, %.12..sroa.10.0.copyload
  %i.cp = xor i32 %i.co, %i.cm                    ; 4 uses
  %i.cq = and i32 %i.cp, 255
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i32
  %i.cv = lshr i32 %i.cp, 8
  %i.cw = and i32 %i.cv, 255
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 8
  %i.dc = or disjoint i32 %i.db, %i.cu
  %i.dd = lshr i32 %i.cp, 16
  %i.de = and i32 %i.dd, 255
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 16
  %i.dk = or disjoint i32 %i.dc, %i.dj
  %i.dl = lshr i32 %i.cp, 24
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw i32 %i.dp, 24
  %i.dr = or disjoint i32 %i.dk, %i.dq            ; 5 uses
  %i.ds = tail call noundef i32 @llvm.fshl.i32(i32 %i.dr, i32 %i.dr, i32 13)
  %i.dt = tail call noundef i32 @llvm.fshl.i32(i32 %i.dr, i32 %i.dr, i32 23)
  %i.du = xor i32 %i.dt, %i.ds
  %i.dv = xor i32 %i.du, %.4..sroa.5.0.copyload
  %i.dw = xor i32 %i.dv, %i.dr                    ; 3 uses
  store i32 %i.dw, ptr %.sroa.14.4..sroa_idx105, align 4
  %i.dx = xor i32 %.12..sroa.10.0.copyload, %i.aj
  %i.dy = xor i32 %i.dx, %i.cm
  %i.dz = xor i32 %i.dy, %i.dw                    ; 4 uses
  %i.ea = and i32 %i.dz, 255
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i32
  %i.ef = lshr i32 %i.dz, 8
  %i.eg = and i32 %i.ef, 255
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = zext i8 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 8
  %i.em = or disjoint i32 %i.el, %i.ee
  %i.en = lshr i32 %i.dz, 16
  %i.eo = and i32 %i.en, 255
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 16
  %i.eu = or disjoint i32 %i.em, %i.et
  %i.ev = lshr i32 %i.dz, 24
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw i32 %i.ez, 24
  %i.fb = or disjoint i32 %i.eu, %i.fa            ; 5 uses
  %i.fc = tail call noundef i32 @llvm.fshl.i32(i32 %i.fb, i32 %i.fb, i32 13)
  %i.fd = tail call noundef i32 @llvm.fshl.i32(i32 %i.fb, i32 %i.fb, i32 23)
  %i.fe = xor i32 %i.fd, %i.fc
  %i.ff = xor i32 %i.fe, %.8..sroa.7.0.copyload
  %i.fg = xor i32 %i.ff, %i.fb                    ; 2 uses
  store i32 %i.fg, ptr %.sroa.14.8..sroa_idx106, align 8
  %i.fh = xor i32 %i.cm, %i.am
  %i.fi = xor i32 %i.fh, %i.dw
  %i.fj = xor i32 %i.fi, %i.fg                    ; 4 uses
  %i.fk = and i32 %i.fj, 255
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i32
  %i.fp = lshr i32 %i.fj, 8
  %i.fq = and i32 %i.fp, 255
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = zext i8 %i.ft to i32
  %i.fv = shl nuw nsw i32 %i.fu, 8
  %i.fw = or disjoint i32 %i.fv, %i.fo
  %i.fx = lshr i32 %i.fj, 16
  %i.fy = and i32 %i.fx, 255
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = zext i8 %i.gb to i32
  %i.gd = shl nuw nsw i32 %i.gc, 16
  %i.ge = or disjoint i32 %i.fw, %i.gd
  %i.gf = lshr i32 %i.fj, 24
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = zext i8 %i.gi to i32
  %i.gk = shl nuw i32 %i.gj, 24
  %i.gl = or disjoint i32 %i.ge, %i.gk            ; 5 uses
  %i.gm = tail call noundef i32 @llvm.fshl.i32(i32 %i.gl, i32 %i.gl, i32 13)
  %i.gn = tail call noundef i32 @llvm.fshl.i32(i32 %i.gl, i32 %i.gl, i32 23)
  %i.go = xor i32 %i.gn, %i.gm
  %i.gp = xor i32 %i.go, %.12..sroa.10.0.copyload
  %i.gq = xor i32 %i.gp, %i.gl
  store i32 %i.gq, ptr %.sroa.14.12..sroa_idx107, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep75, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.14, i64 %i.ay, i1 false)
  %11 = add nuw nsw i32 %.05765, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader60.preheader, !llvm.loop !118

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsm4r_vv(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 5 uses
  %i.b = alloca [8 x i32], align 16               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4620 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4616 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i32 %i.f, 2                         ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 4608
  %.val = load i64, ptr %i.h, align 16
  %i.i = shl i32 %3, 3
  %i.j = and i32 %i.i, 2040
  %i.k = add nuw nsw i32 %i.j, 8
  %i.l = trunc i64 %.val to i32
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 7
  %i.o = shl i32 %3, 18
  %i.p = ashr i32 %i.o, 29
  %reass.sub = sub nsw i32 %i.p, %i.n
  %i.q = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.r = add nsw i32 %i.q, 2
  %i.s = shl nuw nsw i32 %i.k, %i.r
  %.not = icmp ult i32 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = lshr i32 %i.d, 2                         ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, %i.g
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %4 = lshr i32 %i.d, 2
  %5 = zext nneg i32 %4 to i64
  %i.v = and i32 %i.d, -4                         ; 2 uses
  %i.w = add i32 %i.v, 4
  %i.x = sub nuw nsw i32 -4, %i.v
  %i.y = or disjoint i32 %i.x, 3
  %scevgep60 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = sub nuw nsw i32 %i.g, %i.t
  %wide.trip.count = zext nneg i32 %i.z to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.aa = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.c ]
  store i32 0, ptr %i.c, align 4
  %i.ab = lshr i32 %3, 14
  %i.ac = and i32 %i.ab, 1
  %i.ad = shl i32 %i.aa, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.s) #12
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %.lr.ph ] ; 4 uses
  %.04651 = phi i32 [ %i.t, %.lr.ph.preheader ], [ %10, %.lr.ph ] ; 2 uses
  %i.ae = add nuw i64 %indvar, %5
  %6 = shl nuw i64 %i.ae, 4                       ; 2 uses
  %scevgep59 = getelementptr i8, ptr %0, i64 %6   ; 2 uses
  %indvar.tr = trunc i64 %indvar to i32
  %7 = shl i32 %indvar.tr, 2
  %i.af = add i32 %7, %i.w
  %8 = shl nuw i32 %.04651, 2
  %9 = or disjoint i32 %8, 1
  %umax61 = tail call i32 @llvm.umax.i32(i32 %i.af, i32 %9)
  %indvar.tr.a = trunc i64 %indvar to i32
  %i.ag = shl i32 %indvar.tr.a, 2
  %i.ah = sub i32 %i.y, %i.ag
  %i.ai = add i32 %umax61, %i.ah                  ; 3 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 3 uses
  %i.al = add nuw nsw i64 %i.ak, 4                ; 5 uses
  %scevgep = getelementptr nuw i8, ptr %1, i64 %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.am = icmp ugt i32 %i.ai, 2
  %i.an = sub nsw i64 12, %i.ak
  %i.ao = select i1 %i.am, i64 0, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.a, i64 %i.al
  call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %i.ao, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.al, i1 false)
  %i.aq = icmp ugt i32 %i.ai, 6
  %i.ar = sub nsw i64 28, %i.ak
  %i.as = select i1 %i.aq, i64 0, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.b, i64 %i.al
  call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 0, i64 %i.as, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(1) %scevgep59, i64 %i.al, i1 false)
  call fastcc void @do_sm4_round(ptr noundef %i.a, ptr noundef %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep59, ptr noundef nonnull align 16 dereferenceable(1) %scevgep60, i64 %i.al, i1 false)
  %10 = add nuw nsw i32 %.04651, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !119

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @do_sm4_round(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) initializes((16, 32)) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = load i32, ptr %0, align 4
  %i.h = xor i32 %i.b, %i.g
  %i.i = xor i32 %i.h, %i.d
  %i.j = xor i32 %i.i, %i.f                       ; 4 uses
  %i.k = and i32 %i.j, 255
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = lshr i32 %i.j, 8
  %i.q = and i32 %i.p, 255
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.v, %i.o
  %i.x = lshr i32 %i.j, 16
  %i.y = and i32 %i.x, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = or disjoint i32 %i.w, %i.ad
  %i.af = lshr i32 %i.j, 24
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw i32 %i.aj, 24
  %i.al = or disjoint i32 %i.ae, %i.ak            ; 9 uses
  %i.am = load i32, ptr %1, align 4
  %i.an = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 2)
  %i.ao = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 10)
  %i.ap = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 18)
  %i.aq = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 24)
  %i.ar = xor i32 %i.am, %i.ao
  %i.as = xor i32 %i.ar, %i.an
  %i.at = xor i32 %i.as, %i.ap
  %i.au = xor i32 %i.at, %i.aq
  %i.av = xor i32 %i.au, %i.al                    ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = xor i32 %i.d, %i.ay
  %i.ba = xor i32 %i.az, %i.f
  %i.bb = xor i32 %i.ba, %i.av                    ; 4 uses
  %i.bc = and i32 %i.bb, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = lshr i32 %i.bb, 8
  %i.bi = and i32 %i.bh, 255
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = or disjoint i32 %i.bn, %i.bg
  %i.bp = lshr i32 %i.bb, 16
  %i.bq = and i32 %i.bp, 255
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 16
  %i.bw = or disjoint i32 %i.bo, %i.bv
  %i.bx = lshr i32 %i.bb, 24
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw i32 %i.cb, 24
  %i.cd = or disjoint i32 %i.bw, %i.cc            ; 9 uses
  %i.ce = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 2)
  %i.cf = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 10)
  %i.cg = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 18)
  %i.ch = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 24)
  %i.ci = xor i32 %i.cf, %i.ce
  %i.cj = xor i32 %i.ci, %i.cg
  %i.ck = xor i32 %i.cj, %i.ch
  %i.cl = xor i32 %i.ck, %i.b
  %i.cm = xor i32 %i.cl, %i.cd                    ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.cm, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = xor i32 %i.f, %i.cp
  %i.cr = xor i32 %i.cq, %i.av
  %i.cs = xor i32 %i.cr, %i.cm                    ; 4 uses
  %i.ct = and i32 %i.cs, 255
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i32
  %i.cy = lshr i32 %i.cs, 8
  %i.cz = and i32 %i.cy, 255
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 8
  %i.df = or disjoint i32 %i.de, %i.cx
  %i.dg = lshr i32 %i.cs, 16
  %i.dh = and i32 %i.dg, 255
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 16
  %i.dn = or disjoint i32 %i.df, %i.dm
  %i.do = lshr i32 %i.cs, 24
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl nuw i32 %i.ds, 24
  %i.du = or disjoint i32 %i.dn, %i.dt            ; 9 uses
  %i.dv = load i32, ptr %i.c, align 4
  %i.dw = tail call noundef i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 2)
  %i.dx = tail call noundef i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 10)
  %i.dy = tail call noundef i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 18)
  %i.dz = tail call noundef i32 @llvm.fshl.i32(i32 %i.du, i32 %i.du, i32 24)
  %i.ea = xor i32 %i.dv, %i.dx
  %i.eb = xor i32 %i.ea, %i.dw
  %i.ec = xor i32 %i.eb, %i.dy
  %i.ed = xor i32 %i.ec, %i.dz
  %i.ee = xor i32 %i.ed, %i.du                    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.ee, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = xor i32 %i.av, %i.eh
  %i.ej = xor i32 %i.ei, %i.cm
  %i.ek = xor i32 %i.ej, %i.ee                    ; 4 uses
  %i.el = and i32 %i.ek, 255
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i32
  %i.eq = lshr i32 %i.ek, 8
  %i.er = and i32 %i.eq, 255
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 8
  %i.ex = or disjoint i32 %i.ew, %i.ep
  %i.ey = lshr i32 %i.ek, 16
  %i.ez = and i32 %i.ey, 255
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 16
  %i.ff = or disjoint i32 %i.ex, %i.fe
  %i.fg = lshr i32 %i.ek, 24
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = zext i8 %i.fj to i32
  %i.fl = shl nuw i32 %i.fk, 24
  %i.fm = or disjoint i32 %i.ff, %i.fl            ; 9 uses
  %i.fn = load i32, ptr %i.e, align 4
  %i.fo = tail call noundef i32 @llvm.fshl.i32(i32 %i.fm, i32 %i.fm, i32 2)
  %i.fp = tail call noundef i32 @llvm.fshl.i32(i32 %i.fm, i32 %i.fm, i32 10)
  %i.fq = tail call noundef i32 @llvm.fshl.i32(i32 %i.fm, i32 %i.fm, i32 18)
  %i.fr = tail call noundef i32 @llvm.fshl.i32(i32 %i.fm, i32 %i.fm, i32 24)
  %i.fs = xor i32 %i.fn, %i.fp
  %i.ft = xor i32 %i.fs, %i.fo
  %i.fu = xor i32 %i.ft, %i.fq
  %i.fv = xor i32 %i.fu, %i.fr
  %i.fw = xor i32 %i.fv, %i.fm
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.fw, ptr %i.fx, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsm4r_vs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %i.b = alloca [8 x i32], align 16               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4620 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4616 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i32 %i.f, 2                         ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 4608
  %.val = load i64, ptr %i.h, align 16
  %i.i = shl i32 %3, 3
  %i.j = and i32 %i.i, 2040
  %i.k = add nuw nsw i32 %i.j, 8
  %i.l = trunc i64 %.val to i32
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 7
  %i.o = shl i32 %3, 18
  %i.p = ashr i32 %i.o, 29
  %reass.sub = sub nsw i32 %i.p, %i.n
  %i.q = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.r = add nsw i32 %i.q, 2
  %i.s = shl nuw nsw i32 %i.k, %i.r
  %.not = icmp ult i32 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = lshr i32 %i.d, 2                         ; 2 uses
  %i.u = icmp samesign ult i32 %i.t, %i.g
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.v = and i32 %i.d, -4                         ; 2 uses
  %i.w = add i32 %i.v, 4
  %i.x = xor i32 %i.v, -1
  %scevgep55 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %4 = lshr i32 %i.d, 2
  %wide.trip.count = zext nneg i32 %4 to i64
  %5 = sub nuw nsw i32 %i.g, %i.t
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.y = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.c ]
  store i32 0, ptr %i.c, align 4
  %i.z = lshr i32 %3, 14
  %i.aa = and i32 %i.z, 1
  %i.ab = shl i32 %i.y, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.s) #12
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv61 = phi i64 [ %wide.trip.count, %.lr.ph.preheader ], [ %indvars.iv.next62, %.lr.ph ] ; 2 uses
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %.lr.ph ] ; 3 uses
  %6 = trunc nuw nsw i64 %indvars.iv61 to i32
  %7 = shl i32 %6, 2                              ; 2 uses
  %i.ac = zext i32 %7 to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %scevgep54 = getelementptr i8, ptr %0, i64 %i.ad ; 2 uses
  %8 = shl nuw i32 %indvar, 2
  %i.ae = add i32 %i.w, %8
  %9 = or disjoint i32 %7, 1
  %umax56 = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 %9)
  %i.af = shl i32 %indvar, 2
  %i.ag = sub i32 %i.x, %i.af
  %i.ah = add i32 %umax56, %i.ag                  ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2                ; 2 uses
  %i.ak = add nuw nsw i64 %i.aj, 4                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.al = icmp ugt i32 %i.ah, 6
  %i.am = sub nsw i64 28, %i.aj
  %i.an = select i1 %i.al, i64 0, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.b, i64 %i.ak
  call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %i.an, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(1) %scevgep54, i64 %i.ak, i1 false)
  call fastcc void @do_sm4_round(ptr noundef %i.a, ptr noundef %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep54, ptr noundef nonnull align 16 dereferenceable(1) %scevgep55, i64 %i.ak, i1 false)
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvar.next = add nuw nsw i32 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %indvar.next, %5
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !120

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bitreverse.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesenc_SB_SR_AK_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #11 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesenc_SB_SR_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64>, <2 x i64>) #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesdec_ISB_ISR_AK_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #11 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesdec_ISB_ISR_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64>, <2 x i64>) #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesenc_SB_SR_MC_AK_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #11 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesenc_SB_SR_MC_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64>, <2 x i64>) #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesdec_ISB_ISR_AK_IMC_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #11 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  %i.b = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.a)
  store <2 x i64> %i.b, ptr %0, align 16
  ret void
}

declare void @aesdec_ISB_ISR_AK_IMC_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.bitreverse.v16i8(<16 x i8>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.bitreverse.v8i8(<8 x i8>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bitreverse.v8i16(<8 x i16>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bitreverse.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bitreverse.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.ctlz.v16i8(<16 x i8>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.ctlz.v8i8(<8 x i8>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.ctlz.v8i16(<8 x i16>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.cttz.v16i8(<16 x i8>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.cttz.v8i8(<8 x i8>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.cttz.v8i16(<8 x i16>, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.ctpop.v16i8(<16 x i8>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.ctpop.v8i8(<8 x i8>) #9

end_hunk_0
