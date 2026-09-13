Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/coplanar?download=true
inline.NumInlined: 1327
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_Lm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_:bb.a
bb.ah:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !37, !range !43, !noundef !44
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = load i8, ptr %i.fc, align 2, !range !43
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i102 = select i1 %i.ff, i1 true, i1 %i.fh
  br i1 %or.cond.i102, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = load i64, ptr %4, align 16
  %i.fl = shl i64 %i.fk, 3
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fl) #31
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.aj:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load i8, ptr %i.fd, align 1, !tbaa !37, !range !43, !noundef !44
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = load i8, ptr %i.fc, align 2, !range !43
  %i.fq = trunc nuw i8 %i.fp to i1
  %or.cond.i = select i1 %i.fo, i1 true, i1 %i.fq
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load i64, ptr %4, align 16
  %i.fu = shl i64 %i.ft, 3
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fu) #31
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume

bb.al:                                            ; preds = %bb.ab
  %i.fv = add i64 %i.f, %i.d
  %spec.select.i133 = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 288230376151711744) ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 6 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !37, !range !43, !noundef !44
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = load i64, ptr %0, align 16
  %spec.select.i8.i134 = select i1 %i.fy, i64 8, i64 %i.fz ; 2 uses
  %i.ga = icmp ugt i64 %spec.select.i133, %spec.select.i8.i134
  br i1 %i.ga, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135, label %bb.aq

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135: ; preds = %bb.al
  %i.gb = shl nuw nsw i64 %spec.select.i8.i134, 2
  %.sroa.speculated16.i136 = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 %spec.select.i133)
  %.sroa.speculated.i137 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i136, i64 288230376151711744) ; 2 uses
  %i.gc = shl nuw nsw i64 %.sroa.speculated.i137, 3
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #33 ; 2 uses
  %i.ge = load i8, ptr %i.fw, align 1, !tbaa !37, !range !43, !noundef !44
  %i.gf = trunc nuw i8 %i.ge to i1                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = select i1 %i.gf, ptr %0, ptr %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 16, !tbaa !35
  %i.gl = shl i64 %i.gk, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br i1 %i.gf, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !38, !range !43, !noundef !44
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = load i64, ptr %0, align 16
  %i.gq = shl i64 %i.gp, 3
  tail call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gq) #31
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135
  store i8 0, ptr %i.fw, align 1, !tbaa !37
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i64 %spec.select.i133, ptr %i.gj, align 16, !tbaa !35
  store i64 %.sroa.speculated.i137, ptr %0, align 16, !tbaa !32
  store ptr %i.gd, ptr %i.gg, align 8, !tbaa !32
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138

bb.aq:                                            ; preds = %bb.al
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %spec.select.i133, ptr %i.gr, align 16, !tbaa !35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138: ; preds = %bb.ap, %bb.aq
  %i.gs = icmp ugt i64 %i.d, 39
  %i.gt = icmp ugt i64 %i.f, 39
  %or.cond = and i1 %i.gs, %i.gt
  br i1 %or.cond, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138
  tail call void @_ZN5boost14multiprecision8backends15setup_karatsubaILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_fixed_precisionINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_SE_(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(75) %1, ptr noundef nonnull align 16 dereferenceable(75) %2)
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !36, !range !43, !noundef !44
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !36, !range !43, !noundef !44
  %i.gy = icmp ne i8 %i.gv, %i.gx                 ; 2 uses
  %i.gz = zext i1 %i.gy to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 %i.gz, ptr %i.ha, align 8, !tbaa !36
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hc = load i64, ptr %i.hb, align 16
  %i.hd = icmp eq i64 %i.hc, 1
  %or.cond.i139 = select i1 %i.gy, i1 %i.hd, i1 false
  br i1 %or.cond.i139, label %bb.as, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.as:                                            ; preds = %bb.ar
  %i.he = load i8, ptr %i.fw, align 1, !tbaa !37, !range !43, !noundef !44
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = select i1 %i.hf, ptr %0, ptr %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !55
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.at, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.at:                                            ; preds = %bb.as
  store i8 0, ptr %i.ha, align 8, !tbaa !36
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.au:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138
  %i.hl = load i8, ptr %i.fw, align 1, !tbaa !37, !range !43, !noundef !44
  %i.hm = trunc nuw i8 %i.hl to i1
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = select i1 %i.hm, ptr %0, ptr %i.ho      ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.hr = shl nuw nsw i64 %spec.select.i133, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hp, i8 0, i64 %i.hr, i1 false)
  %.not = icmp eq i64 %i.d, 0
  %.not158 = icmp eq i64 %i.f, 0
  %or.cond200 = select i1 %.not, i1 true, i1 %.not158
  br i1 %or.cond200, label %._crit_edge154, label %.preheader.us

.preheader.us:                                    ; preds = %bb.au, %bb.ay
  %.088153.us = phi i64 [ %i.in, %bb.ay ], [ 0, %bb.au ] ; 4 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.088153.us
  %i.ht = getelementptr [8 x i8], ptr %i.hp, i64 %.088153.us
  br label %bb.av

bb.av:                                            ; preds = %.preheader.us, %bb.av
  %.0151.us = phi i64 [ 0, %.preheader.us ], [ %i.ih, %bb.av ] ; 3 uses
  %.1150.us = phi i128 [ 0, %.preheader.us ], [ %i.ig, %bb.av ]
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !55
  %i.hv = zext i64 %i.hu to i128
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0151.us
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !55
  %i.hy = zext i64 %i.hx to i128
  %i.hz = mul nuw i128 %i.hy, %i.hv
  %i.ia = add nuw i128 %i.hz, %.1150.us
  %i.ib = getelementptr [8 x i8], ptr %i.ht, i64 %.0151.us ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !55
  %i.id = zext i64 %i.ic to i128
  %i.ie = add nuw i128 %i.ia, %i.id               ; 2 uses
  %i.if = trunc i128 %i.ie to i64
  store i64 %i.if, ptr %i.ib, align 8, !tbaa !55
  %i.ig = lshr i128 %i.ie, 64                     ; 3 uses
  %i.ih = add nuw i64 %.0151.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ih, %i.f
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.av, !llvm.loop !193

bb.aw:                                            ; preds = %._crit_edge.us
  %i.ii = add i64 %i.f, %.088153.us               ; 2 uses
  %i.ij = load i64, ptr %i.hq, align 16, !tbaa !35
  %i.ik = icmp ult i64 %i.ii, %i.ij
  br i1 %i.ik, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.il = trunc nuw i128 %i.ig to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ii
  store i64 %i.il, ptr %i.im, align 8, !tbaa !55
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.us
  %i.in = add nuw i64 %.088153.us, 1              ; 2 uses
  %exitcond162.not = icmp eq i64 %i.in, %i.d
  br i1 %exitcond162.not, label %._crit_edge154, label %.preheader.us, !llvm.loop !194

._crit_edge.us:                                   ; preds = %bb.av
  %.not.us = icmp eq i128 %i.ig, 0
  br i1 %.not.us, label %bb.ay, label %bb.aw

._crit_edge154:                                   ; preds = %bb.ay, %bb.au
  %i.io = load i8, ptr %i.fw, align 1, !tbaa !37, !range !43, !noundef !44
  %i.ip = trunc nuw i8 %i.io to i1
  %i.iq = load ptr, ptr %i.hn, align 8
  %i.ir = select i1 %i.ip, ptr %0, ptr %i.iq      ; 3 uses
  %.promoted = load i64, ptr %i.hq, align 16, !tbaa !35 ; 2 uses
  %i.is = add i64 %.promoted, -1                  ; 3 uses
  %.not.i155 = icmp eq i64 %i.is, 0
  br i1 %.not.i155, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge154
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !55
  %.not2.i202 = icmp eq i64 %i.iu, 0
  br i1 %.not2.i202, label %.lr.ph203, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

.lr.ph:                                           ; preds = %.lr.ph203
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.iy
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !55
  %.not2.i = icmp eq i64 %i.iw, 0
  br i1 %.not2.i, label %.lr.ph203, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, !llvm.loop !1

.lr.ph203:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ix = phi i64 [ %i.iy, %.lr.ph ], [ %i.is, %.lr.ph.preheader ] ; 4 uses
  %i.iy = add i64 %i.ix, -1                       ; 3 uses
  %.not.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i, label %._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, label %.lr.ph, !llvm.loop !1

._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge: ; preds = %.lr.ph203
  store i64 %i.ix, ptr %i.hq, align 16, !tbaa !35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, !llvm.loop !1

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit: ; preds = %.lr.ph
  store i64 %i.ix, ptr %i.hq, align 16, !tbaa !35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, %._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, %.lr.ph.preheader
  %.lcssa.ph = phi i64 [ %.promoted, %.lr.ph.preheader ], [ 1, %._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge ], [ %i.ix, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit ]
  %i.iz = icmp eq i64 %.lcssa.ph, 1
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, %._crit_edge154
  %.lcssa = phi i1 [ true, %._crit_edge154 ], [ %i.iz, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit ]
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !36, !range !43, !noundef !44
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !36, !range !43, !noundef !44
  %i.je = icmp ne i8 %i.jb, %i.jd                 ; 2 uses
  %i.jf = zext i1 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 %i.jf, ptr %i.jg, align 8, !tbaa !36
  %or.cond.i141 = and i1 %.lcssa, %i.je
  br i1 %or.cond.i141, label %bb.az, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.az:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.jh = load i64, ptr %i.ir, align 8, !tbaa !55
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %bb.ba, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.jg, align 8, !tbaa !36
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %bb.ba, %bb.az, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %bb.at, %bb.as, %bb.ar, %bb.m, %bb.l, %bb.k, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit118
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_RKy(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(75) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !55
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !37, !range !43, !noundef !44
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = load i64, ptr %0, align 16
  %i.f = icmp ne i64 %i.e, 0
  %.not52 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %.not52, label %bb.g, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.h = load i8, ptr %i.b, align 1, !tbaa !37, !range !43, !noundef !44
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = select i1 %i.i, ptr %0, ptr %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load i64, ptr %i.m, align 16, !tbaa !35
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %i.l, i64 %i.o, i1 false)
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.q = load i8, ptr %i.p, align 2, !tbaa !38, !range !43, !noundef !44
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %0, align 16
  %i.t = shl i64 %i.s, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.t) #31
  %.pre57.pre = load i8, ptr %i.b, align 1, !tbaa !37, !range !43
  %i.u = trunc nuw i8 %.pre57.pre to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc
  store i8 0, ptr %i.b, align 1, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre57 = phi i1 [ false, %bb.e ], [ %i.u, %bb.d ]
  store i64 1, ptr %i.m, align 16, !tbaa !35
  store i64 1, ptr %0, align 16, !tbaa !32
  store ptr %i.g, ptr %i.j, align 8, !tbaa !32
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.v, align 16, !tbaa !35
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre59 = load ptr, ptr %.phi.trans.insert58, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #34
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.g, %bb.f
  %.pre-phi = phi i1 [ %i.d, %bb.g ], [ %.pre57, %bb.f ]
  %i.y = phi ptr [ %.pre59, %bb.g ], [ %i.g, %bb.f ]
  %i.z = select i1 %.pre-phi, ptr %0, ptr %i.y
  store i64 0, ptr %i.z, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.aa, align 8, !tbaa !36
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.i:                                             ; preds = %bb.a
  %.not37 = icmp eq ptr %1, %0
  br i1 %.not37, label %._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge, label %bb.j

._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge: ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 16, !tbaa !35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 16, !tbaa !35
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 288230376151711744) ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !37, !range !43, !noundef !44
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i64, ptr %0, align 16
  %spec.select.i8.i40 = select i1 %i.af, i64 8, i64 %i.ag ; 2 uses
  %i.ah = icmp ugt i64 %spec.select.i, %spec.select.i8.i40
  br i1 %i.ah, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41, label %bb.n

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41: ; preds = %bb.j
  %i.ai = shl nuw nsw i64 %spec.select.i8.i40, 2
  %.sroa.speculated16.i42 = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %spec.select.i)
  %.sroa.speculated.i43 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i42, i64 288230376151711744) ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.speculated.i43, 3
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #33 ; 3 uses
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !37, !range !43, !noundef !44
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = select i1 %i.am, ptr %0, ptr %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 16, !tbaa !35
  %i.as = shl i64 %i.ar, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br i1 %i.am, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.au = load i8, ptr %i.at, align 2, !tbaa !38, !range !43, !noundef !44
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i64, ptr %0, align 16
  %i.ax = shl i64 %i.aw, 3
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ax) #31
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread

bb.m:                                             ; preds = %bb.k, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41
  store i8 0, ptr %i.ad, align 1, !tbaa !37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread: ; preds = %bb.l, %bb.m
  store i64 %spec.select.i, ptr %i.aq, align 16, !tbaa !35
  store i64 %.sroa.speculated.i43, ptr %0, align 16, !tbaa !32
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37, !range !43, !noundef !44
  %i.ba = trunc nuw i8 %i.az to i1                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = select i1 %i.ba, ptr %0, ptr %i.ak      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.idx64 = shl nuw nsw i64 %spec.select.i, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx64
  br label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %spec.select.i, ptr %i.bf, align 16, !tbaa !35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44: ; preds = %._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge, %bb.n
  %i.bg = phi i64 [ %.pre, %._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge ], [ %spec.select.i, %bb.n ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37, !range !43, !noundef !44
  %i.bj = trunc nuw i8 %i.bi to i1                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = select i1 %i.bj, ptr %0, ptr %i.bl      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bg, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %.not3853 = icmp eq i64 %i.bg, 0
  br i1 %.not3853, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44
  %i.bp = phi ptr [ %i.be, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bo, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.bq = phi ptr [ %i.bd, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bn, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 6 uses
  %i.br = phi ptr [ %i.bc, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bm, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.bs = phi ptr [ %i.bb, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bk, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 6 uses
  %i.bt = phi i1 [ %i.ba, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bj, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.bu = phi ptr [ %i.ay, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 6 uses
  %i.bv = phi i64 [ %spec.select.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bg, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 73
end_hunk_0
