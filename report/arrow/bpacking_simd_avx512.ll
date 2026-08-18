inline.NumInlined: 11107
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 589
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 598
begin_hunk_0_@_ZN5arrow8internal12unpack_widthILi31ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %.02531, i64 16
  %i.be = load i64, ptr %i.bd, align 1            ; 3 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.bc, i64 4)
  %i.bg = getelementptr inbounds nuw i8, ptr %.02531, i64 24 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 1            ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.be, i64 6)
  %i.bj = load i64, ptr %.02531, align 1          ; 2 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bj, i64 2)
  %i.bl = insertelement <2 x i64> poison, i64 %i.bj, i64 0
  %i.bm = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bn = lshr <8 x i64> %i.bm, <i64 0, i64 31, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef>
  %i.bo = insertelement <8 x i64> %i.bn, i64 %i.bk, i64 2
  %i.bp = lshr i64 %i.bc, 29
  %i.bq = insertelement <8 x i64> %i.bo, i64 %i.bp, i64 3
  %i.br = insertelement <8 x i64> %i.bq, i64 %i.bf, i64 4
  %i.bs = lshr i64 %i.be, 27
  %i.bt = insertelement <8 x i64> %i.br, i64 %i.bs, i64 5
  %i.bu = insertelement <8 x i64> %i.bt, i64 %i.bi, i64 6
  %i.bv = lshr i64 %i.bh, 25
  %.sroa.0383.56.vec.insert.i = insertelement <8 x i64> %i.bu, i64 %i.bv, i64 7
  %i.bw = and <8 x i64> %.sroa.0383.56.vec.insert.i, splat (i64 2147483647)
  store <8 x i64> %i.bw, ptr %.02630, align 1, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %.02531, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %.02531, i64 56
  %i.bz = load <4 x i64>, ptr %i.bg, align 1
  %i.ca = load <4 x i64>, ptr %i.bx, align 1      ; 2 uses
  %i.cb = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ca, <4 x i64> %i.bz, <4 x i64> <i64 8, i64 10, i64 12, i64 14>)
  %i.cc = lshr <4 x i64> %i.ca, <i64 23, i64 21, i64 19, i64 17>
  %i.cd = shufflevector <4 x i64> %i.cb, <4 x i64> %i.cc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ce = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  %i.cf = and <8 x i64> %i.cd, splat (i64 2147483647)
  store <8 x i64> %i.cf, ptr %i.ce, align 1, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %.02531, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %.02531, i64 88
  %i.ci = load <4 x i64>, ptr %i.by, align 1
  %i.cj = load <4 x i64>, ptr %i.cg, align 1      ; 2 uses
  %i.ck = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cj, <4 x i64> %i.ci, <4 x i64> <i64 16, i64 18, i64 20, i64 22>)
  %i.cl = lshr <4 x i64> %i.cj, <i64 15, i64 13, i64 11, i64 9>
  %i.cm = shufflevector <4 x i64> %i.ck, <4 x i64> %i.cl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cn = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.co = and <8 x i64> %i.cm, splat (i64 2147483647)
  store <8 x i64> %i.co, ptr %i.cn, align 1, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %.02531, i64 96
  %i.cq = getelementptr inbounds nuw i8, ptr %.02531, i64 120
  %i.cr = load <4 x i64>, ptr %i.ch, align 1
  %i.cs = load <4 x i64>, ptr %i.cp, align 1      ; 2 uses
  %i.ct = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cs, <4 x i64> %i.cr, <4 x i64> <i64 24, i64 26, i64 28, i64 30>)
  %i.cu = lshr <4 x i64> %i.cs, <i64 7, i64 5, i64 3, i64 1>
  %i.cv = shufflevector <4 x i64> %i.ct, <4 x i64> %i.cu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cw = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.cx = and <8 x i64> %i.cv, splat (i64 2147483647)
  store <8 x i64> %i.cx, ptr %i.cw, align 1, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %.02531, i64 128
  %i.cz = getelementptr inbounds nuw i8, ptr %.02531, i64 152
  %i.da = load <4 x i64>, ptr %i.cq, align 1      ; 2 uses
  %i.db = load <4 x i64>, ptr %i.cy, align 1
  %i.dc = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.db, <4 x i64> %i.da, <4 x i64> <i64 1, i64 3, i64 5, i64 7>)
  %i.dd = lshr <4 x i64> %i.da, <i64 32, i64 30, i64 28, i64 26>
  %i.de = shufflevector <4 x i64> %i.dd, <4 x i64> %i.dc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.df = getelementptr inbounds nuw i8, ptr %.02630, i64 256
  %i.dg = and <8 x i64> %i.de, splat (i64 2147483647)
  store <8 x i64> %i.dg, ptr %i.df, align 1, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %.02531, i64 160
  %i.di = getelementptr inbounds nuw i8, ptr %.02531, i64 184
  %i.dj = load <4 x i64>, ptr %i.cz, align 1      ; 2 uses
  %i.dk = load <4 x i64>, ptr %i.dh, align 1
  %i.dl = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dk, <4 x i64> %i.dj, <4 x i64> <i64 9, i64 11, i64 13, i64 15>)
  %i.dm = lshr <4 x i64> %i.dj, <i64 24, i64 22, i64 20, i64 18>
  %i.dn = shufflevector <4 x i64> %i.dm, <4 x i64> %i.dl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.do = getelementptr inbounds nuw i8, ptr %.02630, i64 320
  %i.dp = and <8 x i64> %i.dn, splat (i64 2147483647)
  store <8 x i64> %i.dp, ptr %i.do, align 1, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %.02531, i64 192
  %i.dr = getelementptr inbounds nuw i8, ptr %.02531, i64 216 ; 2 uses
  %i.ds = load <4 x i64>, ptr %i.di, align 1      ; 2 uses
  %i.dt = load <4 x i64>, ptr %i.dq, align 1
  %i.du = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dt, <4 x i64> %i.ds, <4 x i64> <i64 17, i64 19, i64 21, i64 23>)
  %i.dv = lshr <4 x i64> %i.ds, <i64 16, i64 14, i64 12, i64 10>
  %i.dw = shufflevector <4 x i64> %i.dv, <4 x i64> %i.du, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.dx = getelementptr inbounds nuw i8, ptr %.02630, i64 384
  %i.dy = and <8 x i64> %i.dw, splat (i64 2147483647)
  store <8 x i64> %i.dy, ptr %i.dx, align 1, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %.02531, i64 224
  %i.ea = getelementptr inbounds nuw i8, ptr %.02531, i64 232
  %i.eb = getelementptr inbounds nuw i8, ptr %.02531, i64 240
  %i.ec = load <4 x i64>, ptr %i.dr, align 1
  %i.ed = load i64, ptr %i.eb, align 1
  %i.ee = load i64, ptr %i.ea, align 1
  %i.ef = load <2 x i64>, ptr %i.dz, align 1
  %i.eg = load <2 x i64>, ptr %i.dr, align 1
  %i.eh = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ef, <2 x i64> %i.eg, <2 x i64> <i64 25, i64 27>)
  %i.ei = tail call i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ee, i64 29)
  %i.ej = shufflevector <4 x i64> %i.ec, <4 x i64> poison, <8 x i32> <i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3, i32 3>
  %i.ek = shufflevector <2 x i64> %i.eh, <2 x i64> poison, <8 x i32> <i32 0, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <8 x i64> %i.ej, <8 x i64> %i.ek, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 poison, i32 6, i32 7>
  %i.em = insertelement <8 x i64> %i.el, i64 %i.ei, i64 5
  %i.en = lshr <8 x i64> %i.em, <i64 8, i64 0, i64 6, i64 0, i64 4, i64 0, i64 2, i64 33>
  %i.eo = getelementptr inbounds nuw i8, ptr %.02630, i64 448
  %i.ep = and <8 x i64> %i.en, splat (i64 2147483647)
  store <8 x i64> %i.ep, ptr %i.eo, align 1, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %.02531, i64 248 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.02630, i64 512 ; 2 uses
  %i.es = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.es, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !312
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi32ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = shl nsw i32 %2, 5
  %i.c = add nsw i32 %i.b, %3
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi ptr [ %i.s, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.02325.i = phi i32 [ %i.g, %bb.b ], [ %3, %bb.a ] ; 5 uses
  %i.e = srem i32 %.02325.i, 8                    ; 2 uses
  %i.f = sdiv i32 %.02325.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add nsw i32 %.02325.i, 32                ; 3 uses
  %i.h = add nsw i32 %.02325.i, 31
  %i.i = sdiv i32 %i.h, 8
  %i.j = sub nsw i32 %i.i, %i.f                   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  %i.l = icmp slt i32 %i.j, 5
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !19
  %i.m = sext i32 %i.f to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = sext i32 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.n, i64 %i.o, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !19
  %i.p = zext nneg i32 %i.e to i64
  %i.q = lshr i64 %.0..0..0..0..0..0..i, %i.p
  %i.r = and i64 %i.q, 4294967295
  store i64 %i.r, ptr %.026.i, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = icmp slt i32 %i.g, %i.c
  br i1 %i.t, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !313

_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.023.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02325.i, %.lr.ph.i ], [ %i.g, %bb.b ]
  %i.u = sub nsw i32 %.023.lcssa.i, %3
  %i.v = sdiv i32 %i.u, 32                        ; 3 uses
  %i.w = shl nsw i32 %i.v, 5
  %i.x = add nsw i32 %i.w, %3
  %i.y = sub nsw i32 %2, %i.v                     ; 4 uses
  %i.z = sdiv i32 %i.x, 8
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  %i.ae = sdiv i32 %i.y, 64                       ; 2 uses
  %i.af = icmp sgt i32 %i.y, 63
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit
  %.026.lcssa = phi ptr [ %i.ad, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit ], [ %i.cg, %.lr.ph ]
  %.025.lcssa = phi ptr [ %i.ab, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit ], [ %i.cf, %.lr.ph ]
  %i.ag = shl nsw i32 %i.ae, 6                    ; 2 uses
  %i.ah = sub nsw i32 %i.y, %i.ag                 ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 64
  tail call void @llvm.assume(i1 %i.ai)
  %.not = icmp eq i32 %i.y, %i.ag
  br i1 %.not, label %_ZN5arrow8internal12unpack_exactILi32ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %._crit_edge
  %i.aj = shl nuw nsw i32 %i.ah, 5
  %i.ak = zext nneg i32 %i.aj to i64
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28
  %indvars.iv = phi i64 [ 0, %.lr.ph.i28.preheader ], [ %indvars.iv.next, %.lr.ph.i28 ] ; 2 uses
  %.024.i = phi ptr [ %.026.lcssa, %.lr.ph.i28.preheader ], [ %i.ao, %.lr.ph.i28 ] ; 2 uses
  %i.al = lshr exact i64 %indvars.iv, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.al
  %i.an = load i32, ptr %i.am, align 1
  %.sroa.0.0.insert.ext = zext i32 %i.an to i64
  store i64 %.sroa.0.0.insert.ext, ptr %.024.i, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.ap = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.ap, label %.lr.ph.i28, label %_ZN5arrow8internal12unpack_exactILi32ELb0EmEEiPKhPT1_ii.exit, !llvm.loop !314

_ZN5arrow8internal12unpack_exactILi32ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.ch, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.cf, %.lr.ph ], [ %i.ab, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit ] ; 10 uses
  %.02630 = phi ptr [ %i.cg, %.lr.ph ], [ %i.ad, %_ZN5arrow8internal12unpack_exactILi32ELb1EmEEiPKhPT1_ii.exit ] ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02531, i64 24
  %4 = load i64, ptr %i.aq, align 1               ; 2 uses
  %i.ar = load <3 x i64>, ptr %.02531, align 1    ; 2 uses
  %i.as = shufflevector <3 x i64> %i.ar, <3 x i64> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2> ; 2 uses
  %i.at = lshr <4 x i64> %i.as, <i64 32, i64 0, i64 32, i64 0>
  %i.au = shufflevector <4 x i64> %i.as, <4 x i64> %i.at, <8 x i32> <i32 0, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <3 x i64> %i.ar, <3 x i64> poison, <2 x i32> <i32 2, i32 poison>
  %6 = insertelement <2 x i64> %5, i64 %4, i64 1
  %7 = lshr <2 x i64> %6, splat (i64 32)
  %8 = shufflevector <2 x i64> %7, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <8 x i64> %i.au, <8 x i64> %8, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 9>
  %10 = insertelement <8 x i64> %9, i64 %4, i64 6
  %i.av = and <8 x i64> %10, splat (i64 4294967295)
  store <8 x i64> %i.av, ptr %.02630, align 1, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %.02531, <8 x i64> <i64 32, i64 32, i64 40, i64 40, i64 48, i64 48, i64 56, i64 56>
  %i.ax = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.aw, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.ay = lshr <8 x i64> %i.ax, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.az = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  %i.ba = and <8 x i64> %i.ay, splat (i64 4294967295)
  store <8 x i64> %i.ba, ptr %i.az, align 1, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %.02531, <8 x i64> <i64 64, i64 64, i64 72, i64 72, i64 80, i64 80, i64 88, i64 88>
  %i.bc = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.bb, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.bd = lshr <8 x i64> %i.bc, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.be = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.bf = and <8 x i64> %i.bd, splat (i64 4294967295)
  store <8 x i64> %i.bf, ptr %i.be, align 1, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %.02531, <8 x i64> <i64 96, i64 96, i64 104, i64 104, i64 112, i64 112, i64 120, i64 120>
  %i.bh = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.bg, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.bi = lshr <8 x i64> %i.bh, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.bj = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.bk = and <8 x i64> %i.bi, splat (i64 4294967295)
  store <8 x i64> %i.bk, ptr %i.bj, align 1, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %.02531, <8 x i64> <i64 128, i64 128, i64 136, i64 136, i64 144, i64 144, i64 152, i64 152>
  %i.bm = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.bl, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.bn = lshr <8 x i64> %i.bm, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.bo = getelementptr inbounds nuw i8, ptr %.02630, i64 256
  %i.bp = and <8 x i64> %i.bn, splat (i64 4294967295)
  store <8 x i64> %i.bp, ptr %i.bo, align 1, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %.02531, <8 x i64> <i64 160, i64 160, i64 168, i64 168, i64 176, i64 176, i64 184, i64 184>
  %i.br = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.bq, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.bs = lshr <8 x i64> %i.br, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.bt = getelementptr inbounds nuw i8, ptr %.02630, i64 320
  %i.bu = and <8 x i64> %i.bs, splat (i64 4294967295)
  store <8 x i64> %i.bu, ptr %i.bt, align 1, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %.02531, <8 x i64> <i64 192, i64 192, i64 200, i64 200, i64 208, i64 208, i64 216, i64 216>
  %i.bw = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.bv, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.bx = lshr <8 x i64> %i.bw, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.by = getelementptr inbounds nuw i8, ptr %.02630, i64 384
  %i.bz = and <8 x i64> %i.bx, splat (i64 4294967295)
  store <8 x i64> %i.bz, ptr %i.by, align 1, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %.02531, <8 x i64> <i64 224, i64 224, i64 232, i64 232, i64 240, i64 240, i64 248, i64 248>
  %i.cb = tail call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 1 %i.ca, <8 x i1> splat (i1 true), <8 x i64> poison)
  %i.cc = lshr <8 x i64> %i.cb, <i64 0, i64 32, i64 0, i64 32, i64 0, i64 32, i64 0, i64 32>
  %i.cd = getelementptr inbounds nuw i8, ptr %.02630, i64 448
  %i.ce = and <8 x i64> %i.cc, splat (i64 4294967295)
  store <8 x i64> %i.ce, ptr %i.cd, align 1, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %.02531, i64 256 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02630, i64 512 ; 2 uses
  %i.ch = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !315
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi33ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = mul nsw i32 %2, 33
  %i.d = add nsw i32 %i.c, %3
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi ptr [ %i.t, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.02325.i = phi i32 [ %i.h, %bb.b ], [ %3, %bb.a ] ; 5 uses
  %i.f = srem i32 %.02325.i, 8                    ; 2 uses
  %i.g = sdiv i32 %.02325.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = add nsw i32 %.02325.i, 33                ; 3 uses
  %i.i = add nsw i32 %.02325.i, 32
  %i.j = sdiv i32 %i.i, 8
  %i.k = sub nsw i32 %i.j, %i.g                   ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = icmp slt i32 %i.k, 5
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !19
  %i.n = sext i32 %i.g to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = sext i32 %i.l to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %i.o, i64 %i.p, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.b, align 8, !tbaa !19
  %i.q = zext nneg i32 %i.f to i64
  %i.r = lshr i64 %.0..0..0..0..0..0..i, %i.q
  %i.s = and i64 %i.r, 8589934591
  store i64 %i.s, ptr %.026.i, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = icmp slt i32 %i.h, %i.d
  br i1 %i.u, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !316

_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.023.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02325.i, %.lr.ph.i ], [ %i.h, %bb.b ]
  %i.v = sub nsw i32 %.023.lcssa.i, %3
  %i.w = sdiv i32 %i.v, 33                        ; 3 uses
  %i.x = mul nsw i32 %i.w, 33
  %i.y = add nsw i32 %i.x, %3
  %i.z = sub nsw i32 %2, %i.w                     ; 4 uses
  %i.aa = sdiv i32 %i.y, 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab ; 2 uses
  %i.ad = sext i32 %i.w to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ad ; 2 uses
  %i.af = sdiv i32 %i.z, 64                       ; 2 uses
  %i.ag = icmp sgt i32 %i.z, 63
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit
  %.026.lcssa = phi ptr [ %i.ae, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit ], [ %i.ec, %.lr.ph ]
  %.025.lcssa = phi ptr [ %i.ac, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit ], [ %i.eb, %.lr.ph ]
  %i.ah = shl nsw i32 %i.af, 6                    ; 2 uses
  %i.ai = sub nsw i32 %i.z, %i.ah                 ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, 64
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = mul nuw nsw i32 %i.ai, 33
  %.not = icmp eq i32 %i.z, %i.ah
  br i1 %.not, label %_ZN5arrow8internal12unpack_exactILi33ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %._crit_edge, %.lr.ph.i28
  %.024.i = phi ptr [ %i.az, %.lr.ph.i28 ], [ %.026.lcssa, %._crit_edge ] ; 2 uses
  %.02223.i = phi i32 [ %i.am, %.lr.ph.i28 ], [ 0, %._crit_edge ] ; 4 uses
  %i.al = lshr i32 %.02223.i, 3                   ; 2 uses
  %i.am = add nuw nsw i32 %.02223.i, 33           ; 2 uses
  %i.an = add nuw nsw i32 %.02223.i, 32
  %i.ao = lshr i32 %i.an, 3
  %i.ap = sub nsw i32 %i.ao, %i.al                ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1
  %i.ar = icmp slt i32 %i.ap, 5
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !19
  %i.as = zext nneg i32 %i.al to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.as
  %i.au = sext i32 %i.aq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.at, i64 %i.au, i1 false)
  %.0..0..0..0..0..0..i29 = load i64, ptr %i.a, align 8, !tbaa !19
  %i.av = and i32 %.02223.i, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 %.0..0..0..0..0..0..i29, %i.aw
  %i.ay = and i64 %i.ax, 8589934591
  store i64 %i.ay, ptr %.024.i, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = icmp samesign ult i32 %i.am, %i.ak
  br i1 %i.ba, label %.lr.ph.i28, label %_ZN5arrow8internal12unpack_exactILi33ELb0EmEEiPKhPT1_ii.exit, !llvm.loop !317

_ZN5arrow8internal12unpack_exactILi33ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.ed, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.eb, %.lr.ph ], [ %i.ac, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit ] ; 17 uses
  %.02630 = phi ptr [ %i.ec, %.lr.ph ], [ %i.ae, %_ZN5arrow8internal12unpack_exactILi33ELb1EmEEiPKhPT1_ii.exit ] ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02531, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02531, i64 32
  %i.bd = load <4 x i64>, ptr %.02531, align 1    ; 2 uses
  %i.be = load <4 x i64>, ptr %i.bb, align 1      ; 3 uses
  %i.bf = load i64, ptr %i.bb, align 1
  %i.bg = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.be, <4 x i64> %i.bd, <4 x i64> <i64 31, i64 29, i64 27, i64 25>)
  %i.bh = shufflevector <4 x i64> %i.be, <4 x i64> poison, <2 x i32> <i32 poison, i32 1>
  %i.bi = insertelement <2 x i64> %i.bh, i64 %i.bf, i64 0
  %i.bj = lshr <2 x i64> %i.bi, <i64 2, i64 4>
  %i.bk = extractelement <4 x i64> %i.be, i64 2
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = shufflevector <4 x i64> %i.bg, <4 x i64> %i.bd, <8 x i32> <i32 4, i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3>
  %i.bn = shufflevector <2 x i64> %i.bj, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bo = shufflevector <8 x i64> %i.bm, <8 x i64> %i.bn, <8 x i32> <i32 0, i32 1, i32 8, i32 3, i32 9, i32 5, i32 poison, i32 7>
  %i.bp = insertelement <8 x i64> %i.bo, i64 %i.bl, i64 6
  %i.bq = and <8 x i64> %i.bp, splat (i64 8589934591)
  store <8 x i64> %i.bq, ptr %.02630, align 1, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %.02531, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %.02531, i64 64
  %i.bt = load <4 x i64>, ptr %i.bc, align 1      ; 2 uses
  %i.bu = load <4 x i64>, ptr %i.br, align 1
  %i.bv = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bu, <4 x i64> %i.bt, <4 x i64> <i64 23, i64 21, i64 19, i64 17>)
  %i.bw = lshr <4 x i64> %i.bt, <i64 8, i64 10, i64 12, i64 14>
  %i.bx = shufflevector <4 x i64> %i.bw, <4 x i64> %i.bv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.by = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  %i.bz = and <8 x i64> %i.bx, splat (i64 8589934591)
  store <8 x i64> %i.bz, ptr %i.by, align 1, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %.02531, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %.02531, i64 96
  %i.cc = load <4 x i64>, ptr %i.bs, align 1      ; 2 uses
  %i.cd = load <4 x i64>, ptr %i.ca, align 1
  %i.ce = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cd, <4 x i64> %i.cc, <4 x i64> <i64 15, i64 13, i64 11, i64 9>)
  %i.cf = lshr <4 x i64> %i.cc, <i64 16, i64 18, i64 20, i64 22>
  %i.cg = shufflevector <4 x i64> %i.cf, <4 x i64> %i.ce, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ch = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.ci = and <8 x i64> %i.cg, splat (i64 8589934591)
  store <8 x i64> %i.ci, ptr %i.ch, align 1, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %.02531, i64 104
  %i.ck = getelementptr inbounds nuw i8, ptr %.02531, i64 128
  %i.cl = load <4 x i64>, ptr %i.cb, align 1      ; 2 uses
  %i.cm = load <4 x i64>, ptr %i.cj, align 1
  %i.cn = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cm, <4 x i64> %i.cl, <4 x i64> <i64 7, i64 5, i64 3, i64 1>)
  %i.co = lshr <4 x i64> %i.cl, <i64 24, i64 26, i64 28, i64 30>
  %i.cp = shufflevector <4 x i64> %i.co, <4 x i64> %i.cn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cq = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.cr = and <8 x i64> %i.cp, splat (i64 8589934591)
end_hunk_0
