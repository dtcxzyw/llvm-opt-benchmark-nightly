Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unique_rows?download=true
inline.NumInlined: 2208
inline.NumDeleted: 1026
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_:bb.a
bb.ah:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !97, !range !98, !noundef !99
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = load i8, ptr %i.fc, align 2, !range !98
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i102 = select i1 %i.ff, i1 true, i1 %i.fh
  br i1 %or.cond.i102, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = load i64, ptr %4, align 16
  %i.fl = shl i64 %i.fk, 3
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fl) #31
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.aj:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load i8, ptr %i.fd, align 1, !tbaa !97, !range !98, !noundef !99
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = load i8, ptr %i.fc, align 2, !range !98
  %i.fq = trunc nuw i8 %i.fp to i1
  %or.cond.i = select i1 %i.fo, i1 true, i1 %i.fq
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load i64, ptr %4, align 16
  %i.fu = shl i64 %i.ft, 3
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fu) #31
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

bb.al:                                            ; preds = %bb.ab
  %i.fv = add i64 %i.f, %i.d
  %spec.select.i133 = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 288230376151711744) ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 6 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !97, !range !98, !noundef !99
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = load i64, ptr %0, align 16
  %spec.select.i8.i134 = select i1 %i.fy, i64 2, i64 %i.fz ; 2 uses
  %i.ga = icmp ugt i64 %spec.select.i133, %spec.select.i8.i134
  br i1 %i.ga, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135, label %bb.aq

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135: ; preds = %bb.al
  %i.gb = shl nuw nsw i64 %spec.select.i8.i134, 2
  %.sroa.speculated16.i136 = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 %spec.select.i133)
  %.sroa.speculated.i137 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i136, i64 288230376151711744) ; 2 uses
  %i.gc = shl nuw nsw i64 %.sroa.speculated.i137, 3
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #30 ; 2 uses
  %i.ge = load i8, ptr %i.fw, align 1, !tbaa !97, !range !98, !noundef !99
  %i.gf = trunc nuw i8 %i.ge to i1                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = select i1 %i.gf, ptr %0, ptr %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 16, !tbaa !96
  %i.gl = shl i64 %i.gk, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br i1 %i.gf, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !108, !range !98, !noundef !99
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = load i64, ptr %0, align 16
  %i.gq = shl i64 %i.gp, 3
  tail call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gq) #31
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135
  store i8 0, ptr %i.fw, align 1, !tbaa !97
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i64 %spec.select.i133, ptr %i.gj, align 16, !tbaa !96
  store i64 %.sroa.speculated.i137, ptr %0, align 16, !tbaa !48
  store ptr %i.gd, ptr %i.gg, align 8, !tbaa !48
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138

bb.aq:                                            ; preds = %bb.al
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i133, ptr %i.gr, align 16, !tbaa !96
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138: ; preds = %bb.ap, %bb.aq
  %i.gs = icmp ugt i64 %i.d, 39
  %i.gt = icmp ugt i64 %i.f, 39
  %or.cond = and i1 %i.gs, %i.gt
  br i1 %or.cond, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138
  tail call void @_ZN5boost14multiprecision8backends15setup_karatsubaILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_fixed_precisionINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_SE_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2)
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !103, !range !98, !noundef !99
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !103, !range !98, !noundef !99
  %i.gy = icmp ne i8 %i.gv, %i.gx                 ; 2 uses
  %i.gz = zext i1 %i.gy to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.gz, ptr %i.ha, align 8, !tbaa !103
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hc = load i64, ptr %i.hb, align 16
  %i.hd = icmp eq i64 %i.hc, 1
  %or.cond.i139 = select i1 %i.gy, i1 %i.hd, i1 false
  br i1 %or.cond.i139, label %bb.as, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.as:                                            ; preds = %bb.ar
  %i.he = load i8, ptr %i.fw, align 1, !tbaa !97, !range !98, !noundef !99
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = select i1 %i.hf, ptr %0, ptr %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !101
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.at, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.at:                                            ; preds = %bb.as
  store i8 0, ptr %i.ha, align 8, !tbaa !103
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.au:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138
  %i.hl = load i8, ptr %i.fw, align 1, !tbaa !97, !range !98, !noundef !99
  %i.hm = trunc nuw i8 %i.hl to i1
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = select i1 %i.hm, ptr %0, ptr %i.ho      ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
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
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !101
  %i.hv = zext i64 %i.hu to i128
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0151.us
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !101
  %i.hy = zext i64 %i.hx to i128
  %i.hz = mul nuw i128 %i.hy, %i.hv
  %i.ia = add nuw i128 %i.hz, %.1150.us
  %i.ib = getelementptr [8 x i8], ptr %i.ht, i64 %.0151.us ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !101
  %i.id = zext i64 %i.ic to i128
  %i.ie = add nuw i128 %i.ia, %i.id               ; 2 uses
  %i.if = trunc i128 %i.ie to i64
  store i64 %i.if, ptr %i.ib, align 8, !tbaa !101
  %i.ig = lshr i128 %i.ie, 64                     ; 3 uses
  %i.ih = add nuw i64 %.0151.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ih, %i.f
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.av, !llvm.loop !326

bb.aw:                                            ; preds = %._crit_edge.us
  %i.ii = add i64 %i.f, %.088153.us               ; 2 uses
  %i.ij = load i64, ptr %i.hq, align 16, !tbaa !96
  %i.ik = icmp ult i64 %i.ii, %i.ij
  br i1 %i.ik, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.il = trunc nuw i128 %i.ig to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ii
  store i64 %i.il, ptr %i.im, align 8, !tbaa !101
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.us
  %i.in = add nuw i64 %.088153.us, 1              ; 2 uses
  %exitcond162.not = icmp eq i64 %i.in, %i.d
  br i1 %exitcond162.not, label %._crit_edge154, label %.preheader.us, !llvm.loop !327

._crit_edge.us:                                   ; preds = %bb.av
  %.not.us = icmp eq i128 %i.ig, 0
  br i1 %.not.us, label %bb.ay, label %bb.aw

._crit_edge154:                                   ; preds = %bb.ay, %bb.au
  %i.io = load i8, ptr %i.fw, align 1, !tbaa !97, !range !98, !noundef !99
  %i.ip = trunc nuw i8 %i.io to i1
  %i.iq = load ptr, ptr %i.hn, align 8
  %i.ir = select i1 %i.ip, ptr %0, ptr %i.iq      ; 3 uses
  %.promoted = load i64, ptr %i.hq, align 16, !tbaa !96 ; 2 uses
  %i.is = add i64 %.promoted, -1                  ; 3 uses
  %.not.i155 = icmp eq i64 %i.is, 0
  br i1 %.not.i155, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge154
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !101
  %.not2.i202 = icmp eq i64 %i.iu, 0
  br i1 %.not2.i202, label %.lr.ph203, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

.lr.ph:                                           ; preds = %.lr.ph203
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.iy
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !101
  %.not2.i = icmp eq i64 %i.iw, 0
  br i1 %.not2.i, label %.lr.ph203, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, !llvm.loop !6

.lr.ph203:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ix = phi i64 [ %i.iy, %.lr.ph ], [ %i.is, %.lr.ph.preheader ] ; 4 uses
  %i.iy = add i64 %i.ix, -1                       ; 3 uses
  %.not.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i, label %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, label %.lr.ph, !llvm.loop !6

._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge: ; preds = %.lr.ph203
  store i64 %i.ix, ptr %i.hq, align 16, !tbaa !96
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, !llvm.loop !6

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit: ; preds = %.lr.ph
  store i64 %i.ix, ptr %i.hq, align 16, !tbaa !96
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, %.lr.ph.preheader
  %.lcssa.ph = phi i64 [ %.promoted, %.lr.ph.preheader ], [ 1, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge ], [ %i.ix, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit ]
  %i.iz = icmp eq i64 %.lcssa.ph, 1
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, %._crit_edge154
  %.lcssa = phi i1 [ true, %._crit_edge154 ], [ %i.iz, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit ]
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !103, !range !98, !noundef !99
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !103, !range !98, !noundef !99
  %i.je = icmp ne i8 %i.jb, %i.jd                 ; 2 uses
  %i.jf = zext i1 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.jf, ptr %i.jg, align 8, !tbaa !103
  %or.cond.i141 = and i1 %.lcssa, %i.je
  br i1 %or.cond.i141, label %bb.az, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.az:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.jh = load i64, ptr %i.ir, align 8, !tbaa !101
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %bb.ba, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.jg, align 8, !tbaa !103
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %bb.ba, %bb.az, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %bb.at, %bb.as, %bb.ar, %bb.m, %bb.l, %bb.k, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit118
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15setup_karatsubaILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_fixed_precisionINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_SE_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [300 x i64], align 16             ; 4 uses
  %3 = alloca %"struct.boost::multiprecision::backends::cpp_int_base<0, 18446744073709551615, boost::multiprecision::signed_magnitude, boost::multiprecision::unchecked, std::allocator<unsigned long long>>::scoped_shared_storage", align 8 ; 10 uses
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_base<0, 18446744073709551615, boost::multiprecision::signed_magnitude, boost::multiprecision::unchecked, std::allocator<unsigned long long>>::scoped_shared_storage", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 16, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !96
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.e) ; 2 uses
  %i.g = mul i64 %i.f, 5                          ; 5 uses
  %i.h = icmp ult i64 %i.g, 300
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.a, ptr %3, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.g, ptr %i.i, align 8, !tbaa !328
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.k, align 8, !tbaa !329
  invoke void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 8 dereferenceable(25) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.k, align 8, !tbaa !329, !range !98, !noundef !99
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8, !tbaa !115
  %i.o = load i64, ptr %i.i, align 8, !tbaa !328
  %i.p = shl i64 %i.o, 3
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #31
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i8, ptr %i.k, align 8, !tbaa !329, !range !98, !noundef !99
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %3, align 8, !tbaa !115
  %i.u = load i64, ptr %i.i, align 8, !tbaa !328
  %i.v = shl i64 %i.u, 3
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #31
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.g, ptr %i.w, align 8, !tbaa !328
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.x, align 8, !tbaa !116
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i8 0, ptr %i.y, align 8, !tbaa !329
  %i.z = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.z, label %bb.h, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit, !prof !330

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.aa, label %.noexc.i, label %.noexc5.i

.noexc.i:                                         ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc5.i:                                        ; preds = %bb.h
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit: ; preds = %bb.g
  %i.ab = mul i64 %i.f, 40
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #30
  store ptr %i.ac, ptr %4, align 8, !tbaa !115
  invoke void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit
  %i.ad = load i8, ptr %i.y, align 8, !tbaa !329, !range !98, !noundef !99
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %4, align 8, !tbaa !115
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !328
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #31
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.m

bb.k:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load i8, ptr %i.y, align 8, !tbaa !329, !range !98, !noundef !99
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %4, align 8, !tbaa !115
  %i.am = load i64, ptr %i.w, align 8, !tbaa !328
  %i.an = shl i64 %i.am, 3
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #31
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.n

bb.m:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit
  ret void

bb.n:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21
  %.pn = phi { ptr, i32 } [ %i.q, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21 ], [ %i.ai, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %5 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %7 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %8 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 18 uses
  %9 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 14 uses
  %10 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 14 uses
  %11 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %12 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %13 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 16, !tbaa !96  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !96  ; 5 uses
  %i.f = icmp ult i64 %i.c, 40
  %i.g = icmp ult i64 %i.e, 40
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2)
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.e) ; 5 uses
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = add nuw i64 %i.i, 1                      ; 11 uses
  %i.k = icmp ult i64 %i.j, %i.c                  ; 2 uses
  %.sroa.speculated134 = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.c) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.m = load i8, ptr %i.l, align 1, !tbaa !97, !range !98, !noundef !99
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %i.n, ptr %1, ptr %i.p         ; 3 uses
end_hunk_0
