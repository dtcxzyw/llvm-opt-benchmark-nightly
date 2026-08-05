inline.NumInlined: 249
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v86bigint13ProcessorImpl12ToStringImplEPcPjNS0_6DigitsEibb:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 72) #13
  br label %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i

bb.g:                                             ; preds = %bb.f
  %.promoted.i.i.i = load i32, ptr %i.dh, align 8 ; 2 uses
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.dq = load ptr, ptr %i.de, align 8
  %i.dr = zext i32 %.promoted.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dr, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.i ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.ds = and i64 %indvars.iv.next.i.i.i, 4294967295
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.ds
  %.0.copyload.i.i.i27.i.i = load i64, ptr %i.dt, align 1
  %i.du = icmp eq i64 %.0.copyload.i.i.i27.i.i, 0
  br i1 %i.du, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %indvars.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  store i32 %indvars.i.i.i, ptr %i.dh, align 8
  %.not.i.i.i = icmp eq i32 %indvars.i.i.i, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.h, !llvm.loop !5

.loopexit.i.i:                                    ; preds = %bb.i, %bb.h, %bb.g
  %i.dv = load i32, ptr %.sroa.29.0..sroa_idx41.i.i, align 8 ; 3 uses
  %i.dw = add i32 %i.dv, -1
  %i.dx = load ptr, ptr %i.cw, align 8            ; 3 uses
  %i.dy = zext i32 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dy
  %.0.copyload.i.i.i28.i.i = load i64, ptr %i.dz, align 1
  %i.ea = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i28.i.i, i1 false)
  %i.eb = trunc nuw nsw i64 %i.ea to i32          ; 2 uses
  store i32 %i.eb, ptr %.02640.i.i, align 8
  tail call void @_ZN2v86bigint9LeftShiftENS0_8RWDigitsENS0_6DigitsEi(ptr %i.dx, i32 %i.dv, ptr %i.dx, i32 %i.dv, i32 noundef %i.eb) #11
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_114RecursionLevel14ComputeInverseEPNS0_13ProcessorImplEj(ptr noundef nonnull align 8 dereferenceable(72) %.02640.i.i, ptr noundef nonnull %0, i32 noundef 0)
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.de, align 8 ; 2 uses
  %.sroa.29.0.copyload.i.i = load i32, ptr %i.dh, align 8 ; 3 uses
  %i.ec = add i32 %.sroa.29.0.copyload.i.i, -1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %i.ed
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ee, align 1
  %i.ef = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i.i.i, i1 false)
  %i.eg = trunc nuw nsw i64 %i.ef to i32          ; 2 uses
  %i.eh = shl i32 %.sroa.29.0.copyload.i.i, 7
  %i.ei = shl nuw nsw i32 %i.eg, 1
  %i.ej = xor i32 %i.ei, -1
  %i.ek = add i32 %i.eh, %i.ej
  %.not.i.i15 = icmp ugt i32 %i.ek, %i.ch
  br i1 %.not.i.i15, label %._crit_edge.i.i, label %bb.f, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit
  %.026.lcssa.i.i = phi ptr [ %i.ci, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %i.cx, %.loopexit.i.i ] ; 2 uses
  %.sroa.08.0.copyload.lcssa.i.i = phi ptr [ %i.cp, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %.sroa.08.0.copyload.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.29.0.copyload.lcssa.i.i = phi i32 [ 1, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %.sroa.29.0.copyload.i.i, %.loopexit.i.i ] ; 2 uses
  %.lcssa.i.i = phi i32 [ %i.cs, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %i.eg, %.loopexit.i.i ] ; 2 uses
  store i32 %.lcssa.i.i, ptr %.026.lcssa.i.i, align 8
  tail call void @_ZN2v86bigint9LeftShiftENS0_8RWDigitsENS0_6DigitsEi(ptr nonnull %.sroa.08.0.copyload.lcssa.i.i, i32 %.sroa.29.0.copyload.lcssa.i.i, ptr nonnull %.sroa.08.0.copyload.lcssa.i.i, i32 %.sroa.29.0.copyload.lcssa.i.i, i32 noundef %.lcssa.i.i) #11
  br label %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i

_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i: ; preds = %._crit_edge.i.i, %.thread.i.i
  %.2.i.i = phi ptr [ null, %.thread.i.i ], [ %.026.lcssa.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8
  %i.en = icmp eq i32 %i.em, 1
  br i1 %i.en, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i
  %i.eo = call fastcc noundef ptr @_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12ProcessLevelEPNS1_14RecursionLevelENS0_6DigitsEPcb(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef %.2.i.i, ptr %3, i32 %i.u, ptr noundef %i.k, i1 noundef zeroext true)
  store ptr %i.eo, ptr %i.l, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i
  %.not.i1.i = icmp eq ptr %.2.i.i, null
  br i1 %.not.i1.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit, label %_ZNKSt14default_deleteIN2v86bigint12_GLOBAL__N_114RecursionLevelEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2v86bigint12_GLOBAL__N_114RecursionLevelEEclEPS3_.exit.i.i: ; preds = %bb.k
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_114RecursionLevelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.2.i.i) #11
  call void @_ZdlPvm(ptr noundef nonnull %.2.i.i, i64 noundef 72) #13
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN2v86bigint12_GLOBAL__N_114RecursionLevelEEclEPS3_.exit.i.i
  %i.ep = load i32, ptr %i.el, align 8
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.y, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit._ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit_crit_edge

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit._ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit_crit_edge: ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit
  %.promoted.i.pre = load ptr, ptr %i.l, align 8
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit

.preheader129:                                    ; preds = %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread, %.preheader129
  %.013.i.i18 = phi i64 [ %spec.select.i.i22, %.preheader129 ], [ 1, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ]
  %.0812.i.i19 = phi i64 [ %i.et, %.preheader129 ], [ %i.cc, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ] ; 2 uses
  %.0911.i.i20 = phi i64 [ %i.eu, %.preheader129 ], [ %i.bx, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ] ; 3 uses
  %i.er = and i64 %.0812.i.i19, 1
  %.not10.i.i21 = icmp eq i64 %i.er, 0
  %i.es = select i1 %.not10.i.i21, i64 1, i64 %.0911.i.i20
  %spec.select.i.i22 = mul i64 %i.es, %.013.i.i18 ; 3 uses
  %i.et = lshr i64 %.0812.i.i19, 1                ; 2 uses
  %i.eu = mul i64 %.0911.i.i20, %.0911.i.i20
  %.not.i.i23 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i23, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit24, label %.preheader129, !llvm.loop !10

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit24: ; preds = %.preheader129
  store i64 %spec.select.i.i22, ptr %i.m, align 8
  switch i32 %i.u, label %bb.o [
    i32 0, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit24
  %i.ev = getelementptr inbounds i8, ptr %i.k, i64 -1 ; 3 uses
  store ptr %i.ev, ptr %i.l, align 8
  store i8 48, ptr %i.ev, align 1
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit

bb.m:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit24
  %.0.copyload.i.i.i25 = load i64, ptr %3, align 1 ; 3 uses
  %i.ew = icmp eq i32 %5, 10
  br i1 %i.ew, label %bb.n, label %.preheader.i.i

bb.n:                                             ; preds = %bb.m
  %.not5.i.i.i = icmp eq i64 %.0.copyload.i.i.i25, 0
  br i1 %.not5.i.i.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %bb.n, %.lr.ph.i.i.i27
  %.07.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i27 ], [ %i.k, %bb.n ]
  %.046.i.i.i = phi i64 [ %i.fb, %.lr.ph.i.i.i27 ], [ %.0.copyload.i.i.i25, %bb.n ] ; 3 uses
  %i.ex = urem i64 %.046.i.i.i, 10
  %i.ey = trunc nuw nsw i64 %i.ex to i8
  %i.ez = or disjoint i8 %i.ey, 48
  %i.fa = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -1 ; 3 uses
  store i8 %i.ez, ptr %i.fa, align 1
  %i.fb = udiv i64 %.046.i.i.i, 10
  %.not.i.i.i28 = icmp ult i64 %.046.i.i.i, 10
  br i1 %.not.i.i.i28, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i, label %.lr.ph.i.i.i27, !llvm.loop !12

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.08.i.i = phi i64 [ %i.fg, %.preheader.i.i ], [ %.0.copyload.i.i.i25, %bb.m ] ; 3 uses
  %.0.i.i = phi ptr [ %i.ff, %.preheader.i.i ], [ %i.k, %bb.m ]
  %i.fc = urem i64 %.08.i.i, %i.bx
  %i.fd = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 3 uses
  store i8 %i.fe, ptr %i.ff, align 1
  %i.fg = udiv i64 %.08.i.i, %i.bx
  %.not.i.i26 = icmp ult i64 %.08.i.i, %i.bx
  br i1 %.not.i.i26, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i, label %.preheader.i.i, !llvm.loop !13

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i: ; preds = %.preheader.i.i, %.lr.ph.i.i.i27, %bb.n
  %.09.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i27 ], [ %i.k, %bb.n ], [ %i.ff, %.preheader.i.i ] ; 2 uses
  store ptr %.09.i.i, ptr %i.l, align 8
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit

bb.o:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit24
  %i.fh = zext i32 %i.u to i64
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %i.fj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fi) #12 ; 7 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.i, %bb.o
  %.pre.i.i = phi i32 [ %5, %bb.o ], [ %i.ht, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 3 uses
  %i.fk = phi i32 [ %.zext.i, %bb.o ], [ %i.hu, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 3 uses
  %i.fl = phi ptr [ %i.k, %bb.o ], [ %i.hw, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 8 uses
  %i.fm = phi i32 [ %5, %bb.o ], [ %i.hv, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 2 uses
  %.sroa.8.0.i = phi i32 [ %i.u, %bb.o ], [ %.sroa.8.1.lcssa.i, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 5 uses
  %.sroa.010.0.i = phi ptr [ %3, %bb.o ], [ %i.fj, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 10
  br i1 %i.fn, label %.lr.ph.preheader.i.i, label %bb.q

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.fo = zext i32 %.sroa.8.0.i to i64            ; 2 uses
  br label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %.lr.ph.i.i33, %.lr.ph.preheader.i.i
  %indvars.iv.i.i34 = phi i64 [ %i.fo, %.lr.ph.preheader.i.i ], [ %i.fp, %.lr.ph.i.i33 ]
  %.01926.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.fy, %.lr.ph.i.i33 ]
  %i.fp = add nsw i64 %indvars.iv.i.i34, -1       ; 4 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.0.i, i64 %i.fp
  %.0.copyload.i.i.i.i35 = load i64, ptr %i.fq, align 1 ; 2 uses
  %i.fr = call i64 @llvm.fshl.i64(i64 %.01926.i.i, i64 %.0.copyload.i.i.i.i35, i64 32) ; 2 uses
  %i.fs = udiv i64 %i.fr, 1000000000
  %i.ft = urem i64 %i.fr, 1000000000
  %i.fu = shl nuw nsw i64 %i.ft, 32
  %i.fv = and i64 %.0.copyload.i.i.i.i35, 4294967295
  %i.fw = or disjoint i64 %i.fu, %i.fv            ; 2 uses
  %i.fx = udiv i64 %i.fw, 1000000000
  %i.fy = urem i64 %i.fw, 1000000000              ; 2 uses
  %i.fz = shl nuw i64 %i.fs, 32
  %i.ga = or i64 %i.fx, %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fp
  store i64 %i.ga, ptr %i.gb, align 4
  %.not.wide.i.i = icmp eq i64 %i.fp, 0
  br i1 %.not.wide.i.i, label %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i, label %.lr.ph.i.i33, !llvm.loop !14

_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i: ; preds = %.lr.ph.i.i33
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.fy to i32 ; 6 uses
  %i.gc = urem i32 %.lhs.trunc.i.i, 10
  %i.gd = trunc nuw nsw i32 %i.gc to i8
  %i.ge = or disjoint i8 %i.gd, 48
  %i.gf = getelementptr inbounds i8, ptr %i.fl, i64 -1
  store i8 %i.ge, ptr %i.gf, align 1
  %i.gg = getelementptr inbounds i8, ptr %i.fl, i64 -5
  %i.gh = insertelement <4 x i32> poison, i32 %.lhs.trunc.i.i, i64 0
  %9 = shufflevector <4 x i32> %i.gh, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = udiv <4 x i32> %9, <i32 10000, i32 1000, i32 100, i32 10>
  %i.gi = urem <4 x i32> %10, splat (i32 10)
  %i.gj = trunc nuw nsw <4 x i32> %i.gi to <4 x i8>
  %i.gk = or disjoint <4 x i8> %i.gj, splat (i8 48)
  store <4 x i8> %i.gk, ptr %i.gg, align 1
  %i.gl = udiv i32 %.lhs.trunc.i.i, 100000
  %.lhs.trunc50.i.i = trunc nuw nsw i32 %i.gl to i16
  %i.gm = urem i16 %.lhs.trunc50.i.i, 10
  %i.gn = trunc nuw nsw i16 %i.gm to i8
  %i.go = or disjoint i8 %i.gn, 48
  %i.gp = getelementptr inbounds i8, ptr %i.fl, i64 -6
  store i8 %i.go, ptr %i.gp, align 1
  %i.gq = udiv i32 %.lhs.trunc.i.i, 1000000
  %.lhs.trunc54.i.i = trunc nuw nsw i32 %i.gq to i16
  %i.gr = urem i16 %.lhs.trunc54.i.i, 10
  %i.gs = trunc nuw nsw i16 %i.gr to i8
  %i.gt = or disjoint i8 %i.gs, 48
  %i.gu = getelementptr inbounds i8, ptr %i.fl, i64 -7
  store i8 %i.gt, ptr %i.gu, align 1
  %i.gv = udiv i32 %.lhs.trunc.i.i, 10000000
  %.lhs.trunc58.i.i = trunc nuw nsw i32 %i.gv to i8
  %i.gw = urem i8 %.lhs.trunc58.i.i, 10
  %i.gx = or disjoint i8 %i.gw, 48
  %i.gy = getelementptr inbounds i8, ptr %i.fl, i64 -8
  store i8 %i.gx, ptr %i.gy, align 1
  %i.gz = udiv i32 %.lhs.trunc.i.i, 100000000
  %i.ha = trunc nuw nsw i32 %i.gz to i8
  %i.hb = or disjoint i8 %i.ha, 48
  %i.hc = getelementptr inbounds i8, ptr %i.fl, i64 -9 ; 3 uses
  store i8 %i.hb, ptr %i.hc, align 1
  store ptr %i.hc, ptr %i.l, align 8
  br label %.lr.ph.i17.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @_ZN2v86bigint13ProcessorImpl12DivideSingleENS0_8RWDigitsEPmNS0_6DigitsEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.fj, i32 %.sroa.8.0.i, ptr noundef nonnull %i.a, ptr %.sroa.010.0.i, i32 %.sroa.8.0.i, i64 noundef %spec.select.i.i22) #11
  %i.hd = icmp sgt i32 %i.fk, 0
  br i1 %i.hd, label %.lr.ph.i16.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i

.lr.ph.i16.i:                                     ; preds = %bb.q
  %i.he = load i64, ptr %i.a, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i16.i
  %i.hf = phi i32 [ %.pre.i.i, %.lr.ph.i16.i ], [ %i.hl, %bb.r ]
  %.010.i.i = phi i32 [ 0, %.lr.ph.i16.i ], [ %i.ho, %bb.r ]
  %.069.i.i = phi ptr [ %i.fl, %.lr.ph.i16.i ], [ %i.hk, %bb.r ]
  %.078.i.i = phi i64 [ %i.he, %.lr.ph.i16.i ], [ %i.hn, %bb.r ] ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = urem i64 %.078.i.i, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = getelementptr inbounds i8, ptr %.069.i.i, i64 -1 ; 3 uses
  store i8 %i.hj, ptr %i.hk, align 1
  %i.hl = load i32, ptr %i.d, align 8             ; 4 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = udiv i64 %.078.i.i, %i.hm
  %i.ho = add nuw nsw i32 %.010.i.i, 1            ; 2 uses
  %i.hp = load i32, ptr %i.f, align 8             ; 2 uses
  %i.hq = icmp slt i32 %i.ho, %i.hp
  br i1 %i.hq, label %bb.r, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i, !llvm.loop !15

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i: ; preds = %bb.r, %bb.q
  %.pre.i.i83 = phi i32 [ %.pre.i.i, %bb.q ], [ %i.hl, %bb.r ]
  %i.hr = phi i32 [ %i.fk, %bb.q ], [ %i.hp, %bb.r ]
  %i.hs = phi i32 [ %i.fm, %bb.q ], [ %i.hl, %bb.r ]
  %.06.lcssa.i.i = phi ptr [ %i.fl, %bb.q ], [ %i.hk, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.pre.i29 = zext i32 %.sroa.8.0.i to i64
  br label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i, %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i
  %i.ht = phi i32 [ %.pre.i.i, %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i ], [ %.pre.i.i83, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i ] ; 3 uses
  %i.hu = phi i32 [ %i.fk, %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i ], [ %i.hr, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i ]
  %i.hv = phi i32 [ 10, %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i ], [ %i.hs, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i ]
  %.pre-phi.i = phi i64 [ %i.fo, %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i ], [ %.pre.i29, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i ]
  %i.hw = phi ptr [ %i.hc, %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i ], [ %.06.lcssa.i.i, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i ] ; 4 uses
  %indvars.iv.next.i51.i = add nsw i64 %.pre-phi.i, -1 ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next.i51.i
  %.0.copyload.i.i.i1952.i = load i64, ptr %i.hx, align 1
  %i.hy = icmp eq i64 %.0.copyload.i.i.i1952.i, 0
  br i1 %i.hy, label %.lr.ph.i30.preheader, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i

.lr.ph.i30.preheader:                             ; preds = %.lr.ph.i17.i
  %indvars.i.i31157 = trunc i64 %indvars.iv.next.i51.i to i32 ; 2 uses
  %.not.i20.i158 = icmp eq i32 %indvars.i.i31157, 0
  br i1 %.not.i20.i158, label %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i, label %.lr.ph161, !llvm.loop !5

.lr.ph161:                                        ; preds = %.lr.ph.i30.preheader
  br label %bb.s, !llvm.loop !5

bb.s:                                             ; preds = %.lr.ph161, %.lr.ph.i30
  %indvars.i.i31160 = phi i32 [ %indvars.i.i31157, %.lr.ph161 ], [ %indvars.i.i31, %.lr.ph.i30 ]
  %indvars.iv.next.i53.i159 = phi i64 [ %indvars.iv.next.i51.i, %.lr.ph161 ], [ %indvars.iv.next.i.i32, %.lr.ph.i30 ]
  %indvars.iv.next.i.i32 = add nsw i64 %indvars.iv.next.i53.i159, -1 ; 3 uses
  %i.hz = and i64 %indvars.iv.next.i.i32, 4294967295
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.hz
  %.0.copyload.i.i.i19.i = load i64, ptr %i.ia, align 1
  %i.ib = icmp eq i64 %.0.copyload.i.i.i19.i, 0
  br i1 %i.ib, label %.lr.ph.i30, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i, !llvm.loop !5

.lr.ph.i30:                                       ; preds = %bb.s
  %indvars.i.i31 = trunc i64 %indvars.iv.next.i.i32 to i32 ; 2 uses
  %.not.i20.i = icmp eq i32 %indvars.i.i31, 0
  br i1 %.not.i20.i, label %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i, label %bb.s, !llvm.loop !5

_ZN2v86bigint6Digits9NormalizeEv.exit.i:          ; preds = %bb.s, %.lr.ph.i17.i
  %.sroa.8.1.lcssa.i = phi i32 [ %.sroa.8.0.i, %.lr.ph.i17.i ], [ %indvars.i.i31160, %bb.s ] ; 2 uses
  %i.ic = icmp ugt i32 %.sroa.8.1.lcssa.i, 1
  br i1 %i.ic, label %bb.p, label %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i, !llvm.loop !16

_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i:   ; preds = %.lr.ph.i30.preheader, %_ZN2v86bigint6Digits9NormalizeEv.exit.i, %.lr.ph.i30
  %.0.copyload.i.i = load i64, ptr %i.fj, align 4 ; 3 uses
  %i.id = icmp eq i32 %i.ht, 10
  br i1 %i.id, label %bb.t, label %.preheader.i21.i

bb.t:                                             ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i
  %.not5.i.i26.i = icmp eq i64 %.0.copyload.i.i, 0
  br i1 %.not5.i.i26.i, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit.i, label %.lr.ph.i.i27.i

.lr.ph.i.i27.i:                                   ; preds = %bb.t, %.lr.ph.i.i27.i
  %.07.i.i28.i = phi ptr [ %i.ih, %.lr.ph.i.i27.i ], [ %i.hw, %bb.t ]
  %.046.i.i29.i = phi i64 [ %i.ii, %.lr.ph.i.i27.i ], [ %.0.copyload.i.i, %bb.t ] ; 3 uses
  %i.ie = urem i64 %.046.i.i29.i, 10
  %i.if = trunc nuw nsw i64 %i.ie to i8
  %i.ig = or disjoint i8 %i.if, 48
  %i.ih = getelementptr inbounds i8, ptr %.07.i.i28.i, i64 -1 ; 3 uses
  store i8 %i.ig, ptr %i.ih, align 1
  %i.ii = udiv i64 %.046.i.i29.i, 10
  %.not.i.i30.i = icmp ult i64 %.046.i.i29.i, 10
  br i1 %.not.i.i30.i, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit.i, label %.lr.ph.i.i27.i, !llvm.loop !12

.preheader.i21.i:                                 ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i, %.preheader.i21.i
  %i.ij = phi i32 [ %i.ip, %.preheader.i21.i ], [ %i.ht, %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i ]
  %.08.i22.i = phi i64 [ %i.ir, %.preheader.i21.i ], [ %.0.copyload.i.i, %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i ] ; 3 uses
  %.0.i23.i = phi ptr [ %i.io, %.preheader.i21.i ], [ %i.hw, %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i ]
  %i.ik = sext i32 %i.ij to i64
  %i.il = urem i64 %.08.i22.i, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1
  %i.io = getelementptr inbounds i8, ptr %.0.i23.i, i64 -1 ; 3 uses
  store i8 %i.in, ptr %i.io, align 1
  %i.ip = load i32, ptr %i.d, align 8             ; 2 uses
  %i.iq = sext i32 %i.ip to i64                   ; 2 uses
  %i.ir = udiv i64 %.08.i22.i, %i.iq
  %.not.i24.i = icmp ult i64 %.08.i22.i, %i.iq
  br i1 %.not.i24.i, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit.i, label %.preheader.i21.i, !llvm.loop !13

_ZN2v86bigint13ScratchDigitsD2Ev.exit.i:          ; preds = %.preheader.i21.i, %.lr.ph.i.i27.i, %bb.t
  %.09.i25.i = phi ptr [ %i.ih, %.lr.ph.i.i27.i ], [ %i.hw, %bb.t ], [ %i.io, %.preheader.i21.i ] ; 2 uses
  store ptr %.09.i25.i, ptr %i.l, align 8
  call void @_ZdaPv(ptr noundef nonnull %i.fj) #13
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit: ; preds = %bb.e, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit._ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit_crit_edge, %_ZN2v86bigint13ScratchDigitsD2Ev.exit.i, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i, %bb.l, %._crit_edge49.i
  %.promoted.i = phi ptr [ %.promoted.i.pre, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit._ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit_crit_edge ], [ %.promoted.i.pre84, %._crit_edge49.i ], [ %.09.i25.i, %_ZN2v86bigint13ScratchDigitsD2Ev.exit.i ], [ %.09.i.i, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i ], [ %i.ev, %bb.l ], [ %i.bv, %bb.e ] ; 5 uses
  %i.is = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.it = icmp ult ptr %.promoted.i, %i.is
  br i1 %i.it, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit
  %.promoted11.i = ptrtoaddr ptr %.promoted.i to i64
  %i.iu = ptrtoaddr ptr %i.is to i64
  %i.iv = sub i64 %i.iu, %.promoted11.i
  %scevgep.i = getelementptr i8, ptr %.promoted.i, i64 %i.iv
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.u, %.lr.ph.preheader.i
  %i.iw = phi ptr [ %i.iz, %bb.u ], [ %.promoted.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = icmp eq i8 %i.ix, 48
  br i1 %i.iy, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph.i37
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 1 ; 3 uses
  store ptr %i.iz, ptr %i.l, align 8
  %exitcond.not.i = icmp eq ptr %i.iz, %i.is
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i37, !llvm.loop !17

.critedge.i:                                      ; preds = %bb.u, %.lr.ph.i37, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit
  %i.ja = phi ptr [ %.promoted.i, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit ], [ %i.iw, %.lr.ph.i37 ], [ %scevgep.i, %bb.u ] ; 2 uses
  %i.jb = load i8, ptr %i.g, align 4, !range !18, !noundef !19
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.critedge.i
  %i.jd = getelementptr inbounds i8, ptr %i.ja, i64 -1 ; 2 uses
  store ptr %i.jd, ptr %i.l, align 8
  store i8 45, ptr %i.jd, align 1
  %.pre.i36 = load ptr, ptr %i.l, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge.i
  %i.je = phi ptr [ %.pre.i36, %bb.v ], [ %i.ja, %.critedge.i ] ; 3 uses
  %i.jf = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.jg = icmp ugt ptr %i.je, %i.jf
  br i1 %i.jg, label %bb.x, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter6FinishEv.exit

bb.x:                                             ; preds = %bb.w
  %i.jh = load ptr, ptr %i.i, align 8
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.je to i64               ; 2 uses
end_hunk_0
