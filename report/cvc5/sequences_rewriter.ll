Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sequences_rewriter?download=true
inline.NumInlined: 6229
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4cvc58internal6theory7strings17SequencesRewriter21rewriteStrEqualityExtENS0_12NodeTemplateILb1EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br i1 %.not1462, label %.preheader1408, label %.critedge575, !llvm.loop !1014

bb.fg:                                            ; preds = %.loopexit1409, %.loopexit.split-lp, %bb.ey, %bb.dz, %bb.du
  %.pn385.pn = phi { ptr, i32 } [ %.pn385, %bb.ey ], [ %.pn379.pn, %bb.du ], [ %.pn382.pn, %bb.dz ], [ %lpad.loopexit, %.loopexit1409 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #23
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.dp
  %.pn385.pn.pn = phi { ptr, i32 } [ %.pn385.pn, %bb.fg ], [ %i.pu, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #23
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.do
  %.pn385.pn.pn.pn = phi { ptr, i32 } [ %.pn385.pn.pn, %bb.fh ], [ %.pn376.pn, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %bb.aqd

.critedge575:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit698
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %49, i8 0, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  %i.tn = load ptr, ptr %2, align 8, !tbaa !41, !noalias !1126 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tp = load i64, ptr %i.to, align 8, !noalias !1126
  %i.tq = trunc i64 %i.tp to i32
  %i.tr = and i32 %i.tq, 1023                     ; 2 uses
  %i.ts = icmp eq i32 %i.tr, 1023
  %i.tt = select i1 %i.ts, i32 -1, i32 %i.tr
  %i.tu = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.tt)
          to label %.noexc700 unwind label %bb.fw

.noexc700:                                        ; preds = %.critedge575
  %i.tv = icmp eq i32 %i.tu, 2
  %i.tw = zext i1 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.tw
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !40, !noalias !1126 ; 5 uses
  store ptr %i.tz, ptr %50, align 8, !tbaa !41, !alias.scope !1126
  %i.ua = load i64, ptr %i.tz, align 8, !noalias !1126 ; 3 uses
  %i.ub = lshr i64 %i.ua, 40
  %i.uc = trunc nuw nsw i64 %i.ub to i32
  %i.ud = and i32 %i.uc, 1048575                  ; 3 uses
  %i.ue = icmp samesign ult i32 %i.ud, 1048574
  br i1 %i.ue, label %bb.fj, label %bb.fk, !prof !47

bb.fj:                                            ; preds = %.noexc700
  %i.uf = add nuw nsw i32 %i.ud, 1
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = shl nuw nsw i64 %i.ug, 40
  %i.ui = and i64 %i.ua, -1152920405095219201
  %i.uj = or i64 %i.uh, %i.ui
  store i64 %i.uj, ptr %i.tz, align 8, !noalias !1126
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702

bb.fk:                                            ; preds = %.noexc700
  %i.uk = icmp eq i32 %i.ud, 1048574
  br i1 %i.uk, label %bb.fl, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702, !prof !46

bb.fl:                                            ; preds = %bb.fk
  %i.ul = or i64 %i.ua, 1152920405095219200
  store i64 %i.ul, ptr %i.tz, align 8, !noalias !1126
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tz)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702 unwind label %bb.fw

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702: ; preds = %bb.fk, %bb.fj, %bb.fl
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %50, ptr noundef nonnull align 8 dereferenceable(24) %49)
          to label %bb.fm unwind label %bb.fx

bb.fm:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702
  %i.um = load ptr, ptr %50, align 8, !tbaa !41   ; 3 uses
  %i.un = load i64, ptr %i.um, align 8            ; 3 uses
  %i.uo = and i64 %i.un, 1152920405095219200
  %.not.i.i703 = icmp eq i64 %i.uo, 1152920405095219200
  br i1 %.not.i.i703, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705, label %bb.fn, !prof !46

bb.fn:                                            ; preds = %bb.fm
  %i.up = add i64 %i.un, 1152920405095219200
  %i.uq = and i64 %i.up, 1152920405095219200      ; 2 uses
  %i.ur = and i64 %i.un, -1152920405095219201
  %i.us = or disjoint i64 %i.uq, %i.ur
  store i64 %i.us, ptr %i.um, align 8
  %i.ut = icmp eq i64 %i.uq, 0
  br i1 %i.ut, label %bb.fo, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705, !prof !46

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.um)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fv, %bb.fo
  %i.uu = landingpad { ptr, i32 }
          catch ptr null
  %i.uv = extractvalue { ptr, i32 } %i.uu, 0
  call void @__clang_call_terminate(ptr %i.uv) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705: ; preds = %bb.fm, %bb.fn, %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.uw = load ptr, ptr %2, align 8, !tbaa !41, !noalias !1127 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load i64, ptr %i.ux, align 8, !noalias !1127
  %i.uz = trunc i64 %i.uy to i32
  %i.va = and i32 %i.uz, 1023                     ; 2 uses
  %i.vb = icmp eq i32 %i.va, 1023
  %i.vc = select i1 %i.vb, i32 -1, i32 %i.va
  %i.vd = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.vc)
          to label %.noexc700.1 unwind label %bb.fw

.noexc700.1:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705
  %i.ve = icmp eq i32 %i.vd, 2
  %i.vf = select i1 %i.ve, i64 2, i64 1
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uw, i64 24
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.vg, i64 %i.vf
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !40, !noalias !1127 ; 5 uses
  store ptr %i.vi, ptr %50, align 8, !tbaa !41, !alias.scope !1127
  %i.vj = load i64, ptr %i.vi, align 8, !noalias !1127 ; 3 uses
  %i.vk = lshr i64 %i.vj, 40
  %i.vl = trunc nuw nsw i64 %i.vk to i32
  %i.vm = and i32 %i.vl, 1048575                  ; 3 uses
  %i.vn = icmp samesign ult i32 %i.vm, 1048574
  br i1 %i.vn, label %bb.fs, label %bb.fq, !prof !47

bb.fq:                                            ; preds = %.noexc700.1
  %i.vo = icmp eq i32 %i.vm, 1048574
  br i1 %i.vo, label %bb.fr, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1, !prof !46

bb.fr:                                            ; preds = %bb.fq
  %i.vp = or i64 %i.vj, 1152920405095219200
  store i64 %i.vp, ptr %i.vi, align 8, !noalias !1127
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vi)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1 unwind label %bb.fw

bb.fs:                                            ; preds = %.noexc700.1
  %i.vq = add nuw nsw i32 %i.vm, 1
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = shl nuw nsw i64 %i.vr, 40
  %i.vt = and i64 %i.vj, -1152920405095219201
  %i.vu = or i64 %i.vs, %i.vt
  store i64 %i.vu, ptr %i.vi, align 8, !noalias !1127
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1: ; preds = %bb.fs, %bb.fr, %bb.fq
  %i.vv = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 9 uses
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %50, ptr noundef nonnull align 8 dereferenceable(24) %i.vv)
          to label %bb.ft unwind label %bb.fx

bb.ft:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1
  %i.vw = load ptr, ptr %50, align 8, !tbaa !41   ; 3 uses
  %i.vx = load i64, ptr %i.vw, align 8            ; 3 uses
  %i.vy = and i64 %i.vx, 1152920405095219200
  %.not.i.i703.1 = icmp eq i64 %i.vy, 1152920405095219200
  br i1 %.not.i.i703.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1, label %bb.fu, !prof !46

bb.fu:                                            ; preds = %bb.ft
  %i.vz = add i64 %i.vx, 1152920405095219200
  %i.wa = and i64 %i.vz, 1152920405095219200      ; 2 uses
  %i.wb = and i64 %i.vx, -1152920405095219201
  %i.wc = or disjoint i64 %i.wa, %i.wb
  store i64 %i.wc, ptr %i.vw, align 8
  %i.wd = icmp eq i64 %i.wa, 0
  br i1 %i.wd, label %bb.fv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1, !prof !46

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1 unwind label %bb.fp

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1: ; preds = %bb.fv, %bb.fu, %bb.ft
  %i.we = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 11 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !57
  %i.wg = load ptr, ptr %49, align 16, !tbaa !56
  %i.wh = ptrtoint ptr %i.wf to i64
  %i.wi = ptrtoint ptr %i.wg to i64
  %i.wj = sub i64 %i.wh, %i.wi
  %i.wk = ashr exact i64 %i.wj, 3
  %i.wl = getelementptr inbounds nuw i8, ptr %49, i64 32 ; 11 uses
  %i.wm = load ptr, ptr %i.wl, align 16, !tbaa !57
  %i.wn = load ptr, ptr %i.vv, align 8, !tbaa !56
  %i.wo = ptrtoint ptr %i.wm to i64
  %i.wp = ptrtoint ptr %i.wn to i64
  %i.wq = sub i64 %i.wo, %i.wp
  %i.wr = ashr exact i64 %i.wq, 3
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.wr, i64 %i.wk) ; 2 uses
  %i.ws = and i64 %.sroa.speculated, 4294967295
  %.not1463 = icmp eq i64 %i.ws, 0
  %wide.trip.count = and i64 %.sroa.speculated, 4294967295
  br label %.preheader1405

bb.fw:                                            ; preds = %bb.fr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705, %bb.fl, %.critedge575
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %bb.apz

bb.fx:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %50) #23
  br label %bb.apz

.preheader1405:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1, %.thread1307
  %i.wv = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1 ], [ false, %.thread1307 ] ; 3 uses
  br i1 %.not1463, label %.thread1307, label %.lr.ph

bb.fy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread1307, label %.lr.ph, !llvm.loop !1018

.lr.ph:                                           ; preds = %.preheader1405, %bb.fy
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.fy ], [ 0, %.preheader1405 ] ; 4 uses
  %.pre = load ptr, ptr %49, align 16, !tbaa !56  ; 2 uses
  br i1 %i.wv, label %.thread1302, label %bb.fz

bb.fz:                                            ; preds = %.lr.ph
  %i.ww = load ptr, ptr %i.we, align 8, !tbaa !57
  %i.wx = ptrtoint ptr %i.ww to i64
  %i.wy = ptrtoint ptr %.pre to i64
  %i.wz = sub i64 %i.wx, %i.wy
  %i.xa = lshr exact i64 %i.wz, 3
  %i.xb = xor i64 %indvars.iv, -1                 ; 2 uses
  %i.xc = add nsw i64 %i.xa, %i.xb
  %i.xd = load ptr, ptr %i.wl, align 16, !tbaa !57
  %i.xe = load ptr, ptr %i.vv, align 8, !tbaa !56
  %i.xf = ptrtoint ptr %i.xd to i64
  %i.xg = ptrtoint ptr %i.xe to i64
  %i.xh = sub i64 %i.xf, %i.xg
  %i.xi = lshr exact i64 %i.xh, 3
  %i.xj = add nsw i64 %i.xi, %i.xb
  %i.xk = and i64 %i.xc, 4294967295
  br label %.thread1302

.thread1302:                                      ; preds = %.lr.ph, %bb.fz
  %i.xl = phi i64 [ %i.xk, %bb.fz ], [ %indvars.iv, %.lr.ph ]
  %.in = phi i64 [ %i.xj, %bb.fz ], [ %indvars.iv, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.xl
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !41 ; 5 uses
  store ptr %i.xn, ptr %51, align 8, !tbaa !41
  %i.xo = load i64, ptr %i.xn, align 8            ; 3 uses
  %i.xp = lshr i64 %i.xo, 40
  %i.xq = trunc nuw nsw i64 %i.xp to i32
  %i.xr = and i32 %i.xq, 1048575                  ; 3 uses
  %i.xs = icmp samesign ult i32 %i.xr, 1048574
  br i1 %i.xs, label %bb.ga, label %bb.gb, !prof !47

bb.ga:                                            ; preds = %.thread1302
  %i.xt = add nuw nsw i32 %i.xr, 1
  %i.xu = zext nneg i32 %i.xt to i64
  %i.xv = shl nuw nsw i64 %i.xu, 40
  %i.xw = and i64 %i.xo, -1152920405095219201
  %i.xx = or i64 %i.xv, %i.xw
  store i64 %i.xx, ptr %i.xn, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707

bb.gb:                                            ; preds = %.thread1302
  %i.xy = icmp eq i32 %i.xr, 1048574
  br i1 %i.xy, label %bb.gc, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707, !prof !46

bb.gc:                                            ; preds = %bb.gb
  %i.xz = or i64 %i.xo, 1152920405095219200
  store i64 %i.xz, ptr %i.xn, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707 unwind label %bb.hh

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707: ; preds = %bb.gb, %bb.ga, %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  %i.ya = and i64 %.in, 4294967295
  %i.yb = load ptr, ptr %i.vv, align 8, !tbaa !56
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %i.ya
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !41 ; 5 uses
  store ptr %i.yd, ptr %52, align 8, !tbaa !41
  %i.ye = load i64, ptr %i.yd, align 8            ; 3 uses
  %i.yf = lshr i64 %i.ye, 40
  %i.yg = trunc nuw nsw i64 %i.yf to i32
  %i.yh = and i32 %i.yg, 1048575                  ; 3 uses
  %i.yi = icmp samesign ult i32 %i.yh, 1048574
  br i1 %i.yi, label %bb.gd, label %bb.ge, !prof !47

bb.gd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707
  %i.yj = add nuw nsw i32 %i.yh, 1
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = shl nuw nsw i64 %i.yk, 40
  %i.ym = and i64 %i.ye, -1152920405095219201
  %i.yn = or i64 %i.yl, %i.ym
  store i64 %i.yn, ptr %i.yd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709

bb.ge:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707
  %i.yo = icmp eq i32 %i.yh, 1048574
  br i1 %i.yo, label %bb.gf, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709, !prof !46

bb.gf:                                            ; preds = %bb.ge
  %i.yp = or i64 %i.ye, 1152920405095219200
  store i64 %i.yp, ptr %i.yd, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709 unwind label %bb.hi

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709: ; preds = %bb.ge, %bb.gd, %bb.gf
  %i.yq = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.gg unwind label %bb.hj

bb.gg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709
  br i1 %i.yq, label %bb.gh, label %.critedge584

bb.gh:                                            ; preds = %bb.gg
  %i.yr = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.gi unwind label %bb.hj

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.yr, label %bb.gj, label %.critedge584

bb.gj:                                            ; preds = %bb.gi
  %i.ys = load ptr, ptr %51, align 8, !tbaa !41
  store ptr %i.ys, ptr %53, align 8, !tbaa !45
  %i.yt = invoke noundef i64 @_ZN4cvc58internal6theory7strings4Word9getLengthENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %53)
          to label %bb.gk unwind label %bb.hk

bb.gk:                                            ; preds = %bb.gj
  %i.yu = load ptr, ptr %52, align 8, !tbaa !41
  store ptr %i.yu, ptr %54, align 8, !tbaa !45
  %i.yv = invoke noundef i64 @_ZN4cvc58internal6theory7strings4Word9getLengthENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %54)
          to label %bb.gl unwind label %bb.hl

bb.gl:                                            ; preds = %bb.gk
  %i.yw = call i64 @llvm.umin.i64(i64 %i.yt, i64 %i.yv) ; 2 uses
  %i.yx = load ptr, ptr %51, align 8, !tbaa !41   ; 2 uses
  br i1 %i.wv, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  store ptr %i.yx, ptr %55, align 8, !tbaa !45
  %i.yy = load ptr, ptr %52, align 8, !tbaa !41
  store ptr %i.yy, ptr %56, align 8, !tbaa !45
  %i.yz = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings4Word8rstrncmpENS0_12NodeTemplateILb0EEES5_m(ptr noundef nonnull align 8 %55, ptr noundef nonnull align 8 %56, i64 noundef %i.yw)
          to label %.critedge580 unwind label %bb.hn

bb.gn:                                            ; preds = %bb.gl
  store ptr %i.yx, ptr %57, align 8, !tbaa !45
  %i.za = load ptr, ptr %52, align 8, !tbaa !41
  store ptr %i.za, ptr %58, align 8, !tbaa !45
  %i.zb = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings4Word7strncmpENS0_12NodeTemplateILb0EEES5_m(ptr noundef nonnull align 8 %57, ptr noundef nonnull align 8 %58, i64 noundef %i.yw)
          to label %.critedge580 unwind label %bb.hm

.critedge580:                                     ; preds = %bb.gm, %bb.gn
  %i.zc = phi i1 [ %i.zb, %bb.gn ], [ %i.yz, %bb.gm ]
  br i1 %i.zc, label %.critedge584, label %bb.go

bb.go:                                            ; preds = %.critedge580
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  %i.zd = invoke noundef ptr @_ZNK4cvc58internal6theory14TheoryRewriter11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.gp unwind label %bb.ho

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !49
  invoke void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %59, ptr noundef nonnull align 8 dereferenceable(3592) %i.zd, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.gq unwind label %bb.hp

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ze = load ptr, ptr %2, align 8, !tbaa !41    ; 8 uses
  store ptr %i.ze, ptr %60, align 8, !tbaa !41
  %i.zf = load i64, ptr %i.ze, align 8            ; 3 uses
  %i.zg = lshr i64 %i.zf, 40
  %i.zh = trunc nuw nsw i64 %i.zg to i32
  %i.zi = and i32 %i.zh, 1048575                  ; 3 uses
  %i.zj = icmp samesign ult i32 %i.zi, 1048574
  br i1 %i.zj, label %bb.gr, label %bb.gs, !prof !47

bb.gr:                                            ; preds = %bb.gq
  %i.zk = add nuw nsw i32 %i.zi, 1
  %i.zl = zext nneg i32 %i.zk to i64
  %i.zm = shl nuw nsw i64 %i.zl, 40
  %i.zn = and i64 %i.zf, -1152920405095219201
  %i.zo = or i64 %i.zm, %i.zn
  store i64 %i.zo, ptr %i.ze, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711

bb.gs:                                            ; preds = %bb.gq
  %i.zp = icmp eq i32 %i.zi, 1048574
  br i1 %i.zp, label %bb.gt, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711, !prof !46

bb.gt:                                            ; preds = %bb.gs
  %i.zq = or i64 %i.zf, 1152920405095219200
  store i64 %i.zq, ptr %i.ze, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ze)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711 unwind label %bb.hq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711: ; preds = %bb.gs, %bb.gr, %bb.gt
  %i.zr = load ptr, ptr %59, align 8, !tbaa !41   ; 8 uses
  store ptr %i.zr, ptr %61, align 8, !tbaa !41
  %i.zs = load i64, ptr %i.zr, align 8            ; 3 uses
  %i.zt = lshr i64 %i.zs, 40
  %i.zu = trunc nuw nsw i64 %i.zt to i32
  %i.zv = and i32 %i.zu, 1048575                  ; 3 uses
  %i.zw = icmp samesign ult i32 %i.zv, 1048574
  br i1 %i.zw, label %bb.gu, label %bb.gv, !prof !47

bb.gu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711
  %i.zx = add nuw nsw i32 %i.zv, 1
  %i.zy = zext nneg i32 %i.zx to i64
  %i.zz = shl nuw nsw i64 %i.zy, 40
  %i.aaa = and i64 %i.zs, -1152920405095219201
  %i.aab = or i64 %i.zz, %i.aaa
  store i64 %i.aab, ptr %i.zr, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713

bb.gv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711
  %i.aac = icmp eq i32 %i.zv, 1048574
  br i1 %i.aac, label %bb.gw, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713, !prof !46

bb.gw:                                            ; preds = %bb.gv
  %i.aad = or i64 %i.zs, 1152920405095219200
  store i64 %i.aad, ptr %i.zr, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713 unwind label %bb.hr

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713: ; preds = %bb.gv, %bb.gu, %bb.gw
  invoke void @_ZN4cvc58internal6theory7strings17SequencesRewriter13returnRewriteENS0_12NodeTemplateILb1EEES5_NS2_7RewriteE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nonnull align 8 poison, ptr noundef nonnull align 8 %61, i32 noundef 26)
          to label %bb.gx unwind label %bb.hs

bb.gx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713
  %i.aae = load i64, ptr %i.zr, align 8           ; 3 uses
  %i.aaf = and i64 %i.aae, 1152920405095219200
  %.not.i.i714 = icmp eq i64 %i.aaf, 1152920405095219200
  br i1 %.not.i.i714, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716, label %bb.gy, !prof !46

bb.gy:                                            ; preds = %bb.gx
  %i.aag = add i64 %i.aae, 1152920405095219200
  %i.aah = and i64 %i.aag, 1152920405095219200    ; 2 uses
  %i.aai = and i64 %i.aae, -1152920405095219201
  %i.aaj = or disjoint i64 %i.aah, %i.aai
  store i64 %i.aaj, ptr %i.zr, align 8
  %i.aak = icmp eq i64 %i.aah, 0
  br i1 %i.aak, label %bb.gz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716, !prof !46

bb.gz:                                            ; preds = %bb.gy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aal = landingpad { ptr, i32 }
          catch ptr null
  %i.aam = extractvalue { ptr, i32 } %i.aal, 0
  call void @__clang_call_terminate(ptr %i.aam) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716: ; preds = %bb.gx, %bb.gy, %bb.gz
  %i.aan = load i64, ptr %i.ze, align 8           ; 3 uses
  %i.aao = and i64 %i.aan, 1152920405095219200
  %.not.i.i717 = icmp eq i64 %i.aao, 1152920405095219200
  br i1 %.not.i.i717, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719, label %bb.hb, !prof !46

bb.hb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716
  %i.aap = add i64 %i.aan, 1152920405095219200
  %i.aaq = and i64 %i.aap, 1152920405095219200    ; 2 uses
  %i.aar = and i64 %i.aan, -1152920405095219201
  %i.aas = or disjoint i64 %i.aaq, %i.aar
  store i64 %i.aas, ptr %i.ze, align 8
  %i.aat = icmp eq i64 %i.aaq, 0
  br i1 %i.aat, label %bb.hc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719, !prof !46

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ze)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719 unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aau = landingpad { ptr, i32 }
          catch ptr null
  %i.aav = extractvalue { ptr, i32 } %i.aau, 0
  call void @__clang_call_terminate(ptr %i.aav) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716, %bb.hb, %bb.hc
  %i.aaw = load ptr, ptr %59, align 8, !tbaa !41  ; 3 uses
  %i.aax = load i64, ptr %i.aaw, align 8          ; 3 uses
  %i.aay = and i64 %i.aax, 1152920405095219200
  %.not.i.i720 = icmp eq i64 %i.aay, 1152920405095219200
  br i1 %.not.i.i720, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722, label %bb.he, !prof !46

bb.he:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719
  %i.aaz = add i64 %i.aax, 1152920405095219200
  %i.aba = and i64 %i.aaz, 1152920405095219200    ; 2 uses
  %i.abb = and i64 %i.aax, -1152920405095219201
  %i.abc = or disjoint i64 %i.aba, %i.abb
  store i64 %i.abc, ptr %i.aaw, align 8
  %i.abd = icmp eq i64 %i.aba, 0
  br i1 %i.abd, label %bb.hf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722, !prof !46

bb.hf:                                            ; preds = %bb.he
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aaw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722 unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.abe = landingpad { ptr, i32 }
          catch ptr null
  %i.abf = extractvalue { ptr, i32 } %i.abe, 0
  call void @__clang_call_terminate(ptr %i.abf) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719, %bb.he, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  %.pre1516 = load ptr, ptr %52, align 8, !tbaa !41
  br label %bb.hw

bb.hh:                                            ; preds = %bb.gc
  %i.abg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.hi:                                            ; preds = %bb.gf
  %i.abh = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

bb.hj:                                            ; preds = %bb.gh, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709
  %i.abi = landingpad { ptr, i32 }
          cleanup
  br label %.critedge582

bb.hk:                                            ; preds = %bb.gj
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %.critedge582

bb.hl:                                            ; preds = %bb.gk
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %.critedge582

bb.hm:                                            ; preds = %bb.gn
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %.critedge582

bb.hn:                                            ; preds = %bb.gm
  %i.abm = landingpad { ptr, i32 }
          cleanup
  br label %.critedge582

bb.ho:                                            ; preds = %bb.go
  %i.abn = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.hp:                                            ; preds = %bb.gp
  %i.abo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.hv

bb.hq:                                            ; preds = %bb.gt
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.hr:                                            ; preds = %bb.gw
  %i.abq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ht

bb.hs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713
  %i.abr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %61) #23
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.pn395 = phi { ptr, i32 } [ %i.abr, %bb.hs ], [ %i.abq, %bb.hr ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #23
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hq
  %.pn395.pn = phi { ptr, i32 } [ %.pn395, %bb.ht ], [ %i.abp, %bb.hq ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %59) #23
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.hp, %bb.ho
  %.pn395.pn.pn = phi { ptr, i32 } [ %.pn395.pn, %bb.hu ], [ %i.abo, %bb.hp ], [ %i.abn, %bb.ho ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  br label %.critedge582

.critedge584:                                     ; preds = %.critedge580, %bb.gi, %bb.gg
  %i.abs = load ptr, ptr %51, align 8, !tbaa !41
  %i.abt = load ptr, ptr %52, align 8, !tbaa !41  ; 2 uses
  %.not1377 = icmp eq ptr %i.abs, %i.abt          ; 2 uses
  %not..not1377 = xor i1 %.not1377, true
  br label %bb.hw

bb.hw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722, %.critedge584
  %i.abu = phi ptr [ %i.abt, %.critedge584 ], [ %.pre1516, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722 ] ; 3 uses
  %cond11 = phi i1 [ %.not1377, %.critedge584 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722 ]
  %.3356 = phi i1 [ %not..not1377, %.critedge584 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722 ]
  %i.abv = load i64, ptr %i.abu, align 8          ; 3 uses
  %i.abw = and i64 %i.abv, 1152920405095219200
  %.not.i.i723 = icmp eq i64 %i.abw, 1152920405095219200
  br i1 %.not.i.i723, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725, label %bb.hx, !prof !46

bb.hx:                                            ; preds = %bb.hw
  %i.abx = add i64 %i.abv, 1152920405095219200
  %i.aby = and i64 %i.abx, 1152920405095219200    ; 2 uses
  %i.abz = and i64 %i.abv, -1152920405095219201
  %i.aca = or disjoint i64 %i.aby, %i.abz
  store i64 %i.aca, ptr %i.abu, align 8
  %i.acb = icmp eq i64 %i.aby, 0
  br i1 %i.acb, label %bb.hy, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725, !prof !46

bb.hy:                                            ; preds = %bb.hx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725 unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.acc = landingpad { ptr, i32 }
          catch ptr null
  %i.acd = extractvalue { ptr, i32 } %i.acc, 0
  call void @__clang_call_terminate(ptr %i.acd) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725: ; preds = %bb.hw, %bb.hx, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  %i.ace = load ptr, ptr %51, align 8, !tbaa !41  ; 3 uses
  %i.acf = load i64, ptr %i.ace, align 8          ; 3 uses
  %i.acg = and i64 %i.acf, 1152920405095219200
  %.not.i.i726 = icmp eq i64 %i.acg, 1152920405095219200
  br i1 %.not.i.i726, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728, label %bb.ia, !prof !46

bb.ia:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725
  %i.ach = add i64 %i.acf, 1152920405095219200
  %i.aci = and i64 %i.ach, 1152920405095219200    ; 2 uses
  %i.acj = and i64 %i.acf, -1152920405095219201
  %i.ack = or disjoint i64 %i.aci, %i.acj
  store i64 %i.ack, ptr %i.ace, align 8
  %i.acl = icmp eq i64 %i.aci, 0
  br i1 %i.acl, label %bb.ib, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728, !prof !46

bb.ib:                                            ; preds = %bb.ia
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ace)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728 unwind label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.acm = landingpad { ptr, i32 }
          catch ptr null
  %i.acn = extractvalue { ptr, i32 } %i.acm, 0
  call void @__clang_call_terminate(ptr %i.acn) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725, %bb.ia, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  br i1 %cond11, label %bb.fy, label %bb.if

.critedge582:                                     ; preds = %bb.hm, %bb.hk, %bb.hv, %bb.hn, %bb.hl, %bb.hj
  %.pn395.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abi, %bb.hj ], [ %i.abj, %bb.hk ], [ %i.abk, %bb.hl ], [ %.pn395.pn.pn, %bb.hv ], [ %i.abm, %bb.hn ], [ %i.abl, %bb.hm ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #23
  br label %bb.id

bb.id:                                            ; preds = %.critedge582, %bb.hi
  %.pn395.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn395.pn.pn.pn.pn.pn.pn, %.critedge582 ], [ %i.abh, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #23
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.hh
  %.pn395.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn395.pn.pn.pn.pn.pn.pn.pn, %bb.id ], [ %i.abg, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  br label %bb.apz

bb.if:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728
  br i1 %.3356, label %.thread1307, label %.loopexit1406

.thread1307:                                      ; preds = %bb.fy, %.preheader1405, %bb.if
  br i1 %i.wv, label %.preheader1405, label %.critedge587, !llvm.loop !1019

.critedge587:                                     ; preds = %.thread1307
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  %i.aco = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.acp = icmp eq i8 %i.aco, 0
  br i1 %i.acp, label %bb.ig, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit, !prof !39

bb.ig:                                            ; preds = %.critedge587
  %i.acq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i729 = icmp eq i32 %i.acq, 0
  br i1 %.not.i.i729, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.acr = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.ii unwind label %bb.ij     ; 3 uses

bb.ii:                                            ; preds = %bb.ih
  store i64 1152920405095219200, ptr %i.acr, align 8
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acs, i8 0, i64 16, i1 false)
  store ptr %i.acr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit

bb.ij:                                            ; preds = %bb.ih
  %i.act = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %.body730

_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit:   ; preds = %.critedge587, %bb.ig, %bb.ii
  %i.acu = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  store ptr %i.acu, ptr %62, align 8, !tbaa !41
  %.sroa.gep1275 = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 7 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.acw = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.acx = getelementptr inbounds nuw i8, ptr %49, i64 32
  br label %.preheader1404

.preheader1404:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.1
  %.not = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit ], [ false, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.1 ] ; 3 uses
  %.03371457 = phi i1 [ false, %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit ], [ %.3340, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.1 ] ; 3 uses
  %i.acy = load ptr, ptr %49, align 16, !tbaa !65
  %i.acz = load ptr, ptr %i.we, align 8, !tbaa !65 ; 3 uses
  %i.ada = icmp eq ptr %i.acy, %i.acz
  br i1 %i.ada, label %.critedge, label %.lr.ph1454.preheader

.lr.ph1454.preheader:                             ; preds = %.preheader1404
  %i.adb = load ptr, ptr %i.vv, align 8, !tbaa !65
  %i.adc = load ptr, ptr %i.wl, align 16, !tbaa !65 ; 2 uses
  %i.add = icmp eq ptr %i.adb, %i.adc
  br i1 %i.add, label %.critedge, label %bb.ik

bb.ik:                                            ; preds = %.lr.ph1454.preheader
  %i.ade = getelementptr inbounds i8, ptr %i.acz, i64 -8 ; 2 uses
  %i.adf = getelementptr inbounds i8, ptr %i.adc, i64 -8
  %i.adg = load ptr, ptr %i.ade, align 8, !tbaa !41 ; 4 uses
  %i.adh = load ptr, ptr %i.adf, align 8, !tbaa !41
  %i.adi = icmp eq ptr %i.adg, %i.adh
  br i1 %i.adi, label %bb.il, label %.thread1725

bb.il:                                            ; preds = %bb.ik
  store ptr %i.ade, ptr %i.we, align 8, !tbaa !57
  %i.adj = load i64, ptr %i.adg, align 8          ; 3 uses
  %i.adk = and i64 %i.adj, 1152920405095219200
  %.not.i.i.i.peel = icmp eq i64 %i.adk, 1152920405095219200
  br i1 %.not.i.i.i.peel, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel, label %bb.im, !prof !46

bb.im:                                            ; preds = %bb.il
  %i.adl = add i64 %i.adj, 1152920405095219200
  %i.adm = and i64 %i.adl, 1152920405095219200    ; 2 uses
  %i.adn = and i64 %i.adj, -1152920405095219201
  %i.ado = or disjoint i64 %i.adm, %i.adn
  store i64 %i.ado, ptr %i.adg, align 8
  %i.adp = icmp eq i64 %i.adm, 0
  br i1 %i.adp, label %bb.in, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel, !prof !46

bb.in:                                            ; preds = %bb.im
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.adg)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel unwind label %.loopexit.split-lp1488

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel: ; preds = %bb.in, %bb.im, %bb.il
  %i.adq = load ptr, ptr %i.wl, align 16, !tbaa !57
  %i.adr = getelementptr inbounds i8, ptr %i.adq, i64 -8 ; 2 uses
  store ptr %i.adr, ptr %i.wl, align 16, !tbaa !57
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !41 ; 3 uses
  %i.adt = load i64, ptr %i.ads, align 8          ; 3 uses
  %i.adu = and i64 %i.adt, 1152920405095219200
  %.not.i.i.i732.peel = icmp eq i64 %i.adu, 1152920405095219200
  br i1 %.not.i.i.i732.peel, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel, label %bb.io, !prof !46

bb.io:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel
  %i.adv = add i64 %i.adt, 1152920405095219200
  %i.adw = and i64 %i.adv, 1152920405095219200    ; 2 uses
  %i.adx = and i64 %i.adt, -1152920405095219201
  %i.ady = or disjoint i64 %i.adw, %i.adx
  store i64 %i.ady, ptr %i.ads, align 8
  %i.adz = icmp eq i64 %i.adw, 0
  br i1 %i.adz, label %bb.ip, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel, !prof !46

bb.ip:                                            ; preds = %bb.io
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ads)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel unwind label %.loopexit.split-lp1492

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel: ; preds = %bb.ip, %bb.io, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel
  %i.aea = load ptr, ptr %49, align 16, !tbaa !65
  %i.aeb = load ptr, ptr %i.we, align 8, !tbaa !65 ; 2 uses
  %i.aec = icmp eq ptr %i.aea, %i.aeb
  br i1 %i.aec, label %.critedge, label %.lr.ph1454

bb.iq:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.1
  br i1 %.3340, label %bb.lj, label %bb.or

.lr.ph1454:                                       ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733
  %i.aed = phi ptr [ %i.afg, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733 ], [ %i.aeb, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel ] ; 2 uses
  %i.aee = load ptr, ptr %i.vv, align 8, !tbaa !65 ; 2 uses
  %i.aef = load ptr, ptr %i.wl, align 16, !tbaa !65 ; 3 uses
  %i.aeg = icmp eq ptr %i.aee, %i.aef
  br i1 %i.aeg, label %bb.ja, label %bb.ir

bb.ir:                                            ; preds = %.lr.ph1454
  %i.aeh = getelementptr inbounds i8, ptr %i.aed, i64 -8 ; 2 uses
  %i.aei = getelementptr inbounds i8, ptr %i.aef, i64 -8
  %i.aej = load ptr, ptr %i.aeh, align 8, !tbaa !41 ; 4 uses
  %i.aek = load ptr, ptr %i.aei, align 8, !tbaa !41
  %i.ael = icmp eq ptr %i.aej, %i.aek
  br i1 %i.ael, label %bb.is, label %bb.ja

bb.is:                                            ; preds = %bb.ir
  store ptr %i.aeh, ptr %i.we, align 8, !tbaa !57
  %i.aem = load i64, ptr %i.aej, align 8          ; 3 uses
  %i.aen = and i64 %i.aem, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.aen, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit, label %bb.it, !prof !46

bb.it:                                            ; preds = %bb.is
  %i.aeo = add i64 %i.aem, 1152920405095219200
  %i.aep = and i64 %i.aeo, 1152920405095219200    ; 2 uses
  %i.aeq = and i64 %i.aem, -1152920405095219201
  %i.aer = or disjoint i64 %i.aep, %i.aeq
  store i64 %i.aer, ptr %i.aej, align 8
  %i.aes = icmp eq i64 %i.aep, 0
  br i1 %i.aes, label %bb.iu, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit, !prof !46

bb.iu:                                            ; preds = %bb.it
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aej)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit unwind label %.loopexit1487

.loopexit1487:                                    ; preds = %bb.iu
  %lpad.loopexit1489 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.iv

.loopexit.split-lp1488:                           ; preds = %bb.in
  %lpad.loopexit.split-lp1490 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.iv

bb.iv:                                            ; preds = %.loopexit.split-lp1488, %.loopexit1487
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit1489, %.loopexit1487 ], [ %lpad.loopexit.split-lp1490, %.loopexit.split-lp1488 ]
  %i.aet = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.aet) #25
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit: ; preds = %bb.is, %bb.it, %bb.iu
  %i.aeu = load ptr, ptr %i.wl, align 16, !tbaa !57
  %i.aev = getelementptr inbounds i8, ptr %i.aeu, i64 -8 ; 2 uses
  store ptr %i.aev, ptr %i.wl, align 16, !tbaa !57
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !41 ; 3 uses
  %i.aex = load i64, ptr %i.aew, align 8          ; 3 uses
  %i.aey = and i64 %i.aex, 1152920405095219200
  %.not.i.i.i732 = icmp eq i64 %i.aey, 1152920405095219200
  br i1 %.not.i.i.i732, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733, label %bb.iw, !prof !46

bb.iw:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit
  %i.aez = add i64 %i.aex, 1152920405095219200
  %i.afa = and i64 %i.aez, 1152920405095219200    ; 2 uses
  %i.afb = and i64 %i.aex, -1152920405095219201
  %i.afc = or disjoint i64 %i.afa, %i.afb
  store i64 %i.afc, ptr %i.aew, align 8
  %i.afd = icmp eq i64 %i.afa, 0
  br i1 %i.afd, label %bb.ix, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733, !prof !46

bb.ix:                                            ; preds = %bb.iw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aew)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733 unwind label %.loopexit1491

.loopexit1491:                                    ; preds = %bb.ix
  %lpad.loopexit1493 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.iy

.loopexit.split-lp1492:                           ; preds = %bb.ip
  %lpad.loopexit.split-lp1494 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.iy

bb.iy:                                            ; preds = %.loopexit.split-lp1492, %.loopexit1491
  %lpad.phi1495 = phi { ptr, i32 } [ %lpad.loopexit1493, %.loopexit1491 ], [ %lpad.loopexit.split-lp1494, %.loopexit.split-lp1492 ]
  %i.afe = extractvalue { ptr, i32 } %lpad.phi1495, 0
  call void @__clang_call_terminate(ptr %i.afe) #25
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit, %bb.iw, %bb.ix
  %i.aff = load ptr, ptr %49, align 16, !tbaa !65
  %i.afg = load ptr, ptr %i.we, align 8, !tbaa !65 ; 2 uses
  %i.afh = icmp eq ptr %i.aff, %i.afg
  br i1 %i.afh, label %.critedge, label %.lr.ph1454, !llvm.loop !1020

bb.iz:                                            ; preds = %bb.jc, %.thread1725
  %i.afi = landingpad { ptr, i32 }
          cleanup
  br label %bb.apr

bb.ja:                                            ; preds = %.lr.ph1454, %bb.ir
  %i.afj = icmp eq ptr %i.aee, %i.aef
  br i1 %i.afj, label %.critedge, label %.thread1725

.thread1725:                                      ; preds = %bb.ik, %bb.ja
  %.13381453.lcssa1729 = phi i1 [ true, %bb.ja ], [ %.03371457, %bb.ik ] ; 3 uses
  %.lcssa1728 = phi ptr [ %i.aed, %bb.ja ], [ %i.acz, %bb.ik ]
  %i.afk = getelementptr inbounds i8, ptr %.lcssa1728, i64 -8
  %i.afl = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afk)
          to label %bb.jb unwind label %bb.iz

bb.jb:                                            ; preds = %.thread1725
  br i1 %i.afl, label %bb.jc, label %.critedge

bb.jc:                                            ; preds = %bb.jb
  %i.afm = load ptr, ptr %i.wl, align 16, !tbaa !65
  %i.afn = getelementptr inbounds i8, ptr %i.afm, i64 -8
  %i.afo = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afn)
          to label %bb.jd unwind label %bb.iz

bb.jd:                                            ; preds = %bb.jc
  br i1 %i.afo, label %bb.je, label %.critedge

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  %i.afp = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.afq = icmp eq i8 %i.afp, 0
  br i1 %i.afq, label %bb.jf, label %bb.ji, !prof !39

bb.jf:                                            ; preds = %bb.je
  %i.afr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i734 = icmp eq i32 %i.afr, 0
  br i1 %.not.i.i734, label %bb.ji, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.afs = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.jh unwind label %.body735.thread ; 3 uses

.body735.thread:                                  ; preds = %bb.jg
  %i.aft = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %.loopexit

bb.jh:                                            ; preds = %bb.jg
  store i64 1152920405095219200, ptr %i.afs, align 8
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afs, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afu, i8 0, i64 16, i1 false)
  store ptr %i.afs, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %bb.ji

.preheader.preheader:                             ; preds = %bb.jk
  %i.afv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #23
  br label %.loopexit

bb.ji:                                            ; preds = %bb.jh, %bb.jf, %bb.je
  %i.afw = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  store ptr %i.afw, ptr %63, align 16, !tbaa !41
  %i.afx = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.afy = icmp eq i8 %i.afx, 0
  br i1 %i.afy, label %bb.jj, label %bb.jm, !prof !39

bb.jj:                                            ; preds = %bb.ji
  %i.afz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i734.1 = icmp eq i32 %i.afz, 0
  br i1 %.not.i.i734.1, label %bb.jm, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.aga = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.jl unwind label %.preheader.preheader ; 3 uses

bb.jl:                                            ; preds = %bb.jk
  store i64 1152920405095219200, ptr %i.aga, align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agb, i8 0, i64 16, i1 false)
  store ptr %i.aga, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jj, %bb.ji
  %i.agc = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  store ptr %i.agc, ptr %.sroa.gep1275, align 8, !tbaa !41
  %i.agd = load ptr, ptr %i.we, align 8, !tbaa !65
  %i.age = getelementptr inbounds i8, ptr %i.agd, i64 -8 ; 2 uses
  %i.agf = load ptr, ptr %63, align 16, !tbaa !41 ; 4 uses
  %i.agg = load ptr, ptr %i.age, align 8, !tbaa !41
  %.not.i738 = icmp eq ptr %i.agf, %i.agg
  br i1 %.not.i738, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743, label %bb.jn, !prof !46

bb.jn:                                            ; preds = %bb.jm
  %i.agh = load i64, ptr %i.agf, align 8          ; 3 uses
  %i.agi = and i64 %i.agh, 1152920405095219200
  %.not.i.i739 = icmp eq i64 %i.agi, 1152920405095219200
  br i1 %.not.i.i739, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740, label %bb.jo, !prof !46

bb.jo:                                            ; preds = %bb.jn
  %i.agj = add i64 %i.agh, 1152920405095219200
  %i.agk = and i64 %i.agj, 1152920405095219200    ; 2 uses
  %i.agl = and i64 %i.agh, -1152920405095219201
  %i.agm = or disjoint i64 %i.agk, %i.agl
  store i64 %i.agm, ptr %i.agf, align 8
  %i.agn = icmp eq i64 %i.agk, 0
  br i1 %i.agn, label %bb.jp, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740, !prof !46

bb.jp:                                            ; preds = %bb.jo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agf)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740 unwind label %bb.kb

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740: ; preds = %bb.jp, %bb.jo, %bb.jn
  %i.ago = load ptr, ptr %i.age, align 8, !tbaa !41 ; 5 uses
  store ptr %i.ago, ptr %63, align 16, !tbaa !41
  %i.agp = load i64, ptr %i.ago, align 8          ; 3 uses
  %i.agq = lshr i64 %i.agp, 40
  %i.agr = trunc nuw nsw i64 %i.agq to i32
  %i.ags = and i32 %i.agr, 1048575                ; 3 uses
  %i.agt = icmp samesign ult i32 %i.ags, 1048574
  br i1 %i.agt, label %bb.jq, label %bb.jr, !prof !47

bb.jq:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740
  %i.agu = add nuw nsw i32 %i.ags, 1
  %i.agv = zext nneg i32 %i.agu to i64
  %i.agw = shl nuw nsw i64 %i.agv, 40
  %i.agx = and i64 %i.agp, -1152920405095219201
  %i.agy = or i64 %i.agw, %i.agx
  store i64 %i.agy, ptr %i.ago, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743

bb.jr:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740
  %i.agz = icmp eq i32 %i.ags, 1048574
  br i1 %i.agz, label %bb.js, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743, !prof !46

bb.js:                                            ; preds = %bb.jr
  %i.aha = or i64 %i.agp, 1152920405095219200
  store i64 %i.aha, ptr %i.ago, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ago)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743 unwind label %bb.kb

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743: ; preds = %bb.jr, %bb.jq, %bb.jm, %bb.js
  %i.ahb = load ptr, ptr %63, align 16, !tbaa !41
  store ptr %i.ahb, ptr %64, align 8, !tbaa !45
  %i.ahc = invoke noundef i64 @_ZN4cvc58internal6theory7strings4Word9getLengthENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %64)
          to label %bb.jt unwind label %bb.kc     ; 3 uses

bb.jt:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743
  %i.ahd = load ptr, ptr %i.acv, align 16, !tbaa !65
  %i.ahe = getelementptr inbounds i8, ptr %i.ahd, i64 -8 ; 2 uses
  %i.ahf = load ptr, ptr %.sroa.gep1275, align 8, !tbaa !41 ; 4 uses
  %i.ahg = load ptr, ptr %i.ahe, align 8, !tbaa !41
  %.not.i738.1 = icmp eq ptr %i.ahf, %i.ahg
  br i1 %.not.i738.1, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1, label %bb.ju, !prof !46

bb.ju:                                            ; preds = %bb.jt
  %i.ahh = load i64, ptr %i.ahf, align 8          ; 3 uses
  %i.ahi = and i64 %i.ahh, 1152920405095219200
  %.not.i.i739.1 = icmp eq i64 %i.ahi, 1152920405095219200
  br i1 %.not.i.i739.1, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1, label %bb.jv, !prof !46

bb.jv:                                            ; preds = %bb.ju
  %i.ahj = add i64 %i.ahh, 1152920405095219200
  %i.ahk = and i64 %i.ahj, 1152920405095219200    ; 2 uses
  %i.ahl = and i64 %i.ahh, -1152920405095219201
  %i.ahm = or disjoint i64 %i.ahk, %i.ahl
  store i64 %i.ahm, ptr %i.ahf, align 8
  %i.ahn = icmp eq i64 %i.ahk, 0
  br i1 %i.ahn, label %bb.jw, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1, !prof !46

bb.jw:                                            ; preds = %bb.jv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahf)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1 unwind label %bb.kb

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1: ; preds = %bb.jw, %bb.jv, %bb.ju
  %i.aho = load ptr, ptr %i.ahe, align 8, !tbaa !41 ; 5 uses
  store ptr %i.aho, ptr %.sroa.gep1275, align 8, !tbaa !41
  %i.ahp = load i64, ptr %i.aho, align 8          ; 3 uses
  %i.ahq = lshr i64 %i.ahp, 40
  %i.ahr = trunc nuw nsw i64 %i.ahq to i32
  %i.ahs = and i32 %i.ahr, 1048575                ; 3 uses
  %i.aht = icmp samesign ult i32 %i.ahs, 1048574
  br i1 %i.aht, label %bb.jz, label %bb.jx, !prof !47

bb.jx:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1
  %i.ahu = icmp eq i32 %i.ahs, 1048574
  br i1 %i.ahu, label %bb.jy, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1, !prof !46

bb.jy:                                            ; preds = %bb.jx
  %i.ahv = or i64 %i.ahp, 1152920405095219200
  store i64 %i.ahv, ptr %i.aho, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aho)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1 unwind label %bb.kb

bb.jz:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1
  %i.ahw = add nuw nsw i32 %i.ahs, 1
  %i.ahx = zext nneg i32 %i.ahw to i64
  %i.ahy = shl nuw nsw i64 %i.ahx, 40
  %i.ahz = and i64 %i.ahp, -1152920405095219201
  %i.aia = or i64 %i.ahy, %i.ahz
  store i64 %i.aia, ptr %i.aho, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1: ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jt
  %i.aib = load ptr, ptr %.sroa.gep1275, align 8, !tbaa !41
  store ptr %i.aib, ptr %64, align 8, !tbaa !45
  %i.aic = invoke noundef i64 @_ZN4cvc58internal6theory7strings4Word9getLengthENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %64)
          to label %bb.ka unwind label %bb.kc     ; 3 uses

bb.ka:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1
  %.not1381 = icmp ugt i64 %i.ahc, %i.aic         ; 6 uses
  %i.aid = call i64 @llvm.umin.i64(i64 %i.ahc, i64 %i.aic) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #23
  %.val1383 = load ptr, ptr %63, align 16
  %.sroa.gep1275.val1384 = load ptr, ptr %.sroa.gep1275, align 8
  %i.aie = select i1 %.not1381, ptr %.val1383, ptr %.sroa.gep1275.val1384 ; 2 uses
  br i1 %.not, label %bb.kd, label %bb.ke

bb.kb:                                            ; preds = %bb.jy, %bb.jw, %bb.js, %bb.jp
  %i.aif = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.kc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743
  %i.aig = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.kd:                                            ; preds = %bb.ka
  store ptr %i.aie, ptr %66, align 8, !tbaa !45
  invoke void @_ZN4cvc58internal6theory7strings4Word6suffixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %65, ptr noundef nonnull align 8 %66, i64 noundef %i.aid)
          to label %bb.kf unwind label %bb.la

bb.ke:                                            ; preds = %bb.ka
  store ptr %i.aie, ptr %67, align 8, !tbaa !45
  invoke void @_ZN4cvc58internal6theory7strings4Word6prefixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %65, ptr noundef nonnull align 8 %67, i64 noundef %i.aid)
          to label %bb.kf unwind label %bb.kz

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %.sroa.gep1275.val1385 = load ptr, ptr %.sroa.gep1275, align 8
  %.val1386 = load ptr, ptr %63, align 16
  %i.aih = select i1 %.not1381, ptr %.sroa.gep1275.val1385, ptr %.val1386
  %i.aii = load ptr, ptr %65, align 8, !tbaa !41  ; 4 uses
  %i.aij = icmp eq ptr %i.aih, %i.aii
  %i.aik = load i64, ptr %i.aii, align 8          ; 3 uses
  %i.ail = and i64 %i.aik, 1152920405095219200
  %.not.i.i744 = icmp eq i64 %i.ail, 1152920405095219200
  br i1 %.not.i.i744, label %.critedge589, label %bb.kg, !prof !46

bb.kg:                                            ; preds = %bb.kf
  %i.aim = add i64 %i.aik, 1152920405095219200
  %i.ain = and i64 %i.aim, 1152920405095219200    ; 2 uses
  %i.aio = and i64 %i.aik, -1152920405095219201
  %i.aip = or disjoint i64 %i.ain, %i.aio
  store i64 %i.aip, ptr %i.aii, align 8
  %i.aiq = icmp eq i64 %i.ain, 0
  br i1 %i.aiq, label %bb.kh, label %.critedge589, !prof !46

bb.kh:                                            ; preds = %bb.kg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aii)
          to label %.critedge589 unwind label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.air = landingpad { ptr, i32 }
          catch ptr null
  %i.ais = extractvalue { ptr, i32 } %i.air, 0
  call void @__clang_call_terminate(ptr %i.ais) #25
  unreachable

.critedge589:                                     ; preds = %bb.kh, %bb.kg, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  br i1 %i.aij, label %bb.kj, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757

bb.kj:                                            ; preds = %.critedge589
  %i.ait = call i64 @llvm.umax.i64(i64 %i.ahc, i64 %i.aic)
  %i.aiu = sub i64 %i.ait, %i.aid                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #23
  %.val1391 = load ptr, ptr %63, align 16
  %.sroa.gep1275.val1392 = load ptr, ptr %.sroa.gep1275, align 8
  %i.aiv = select i1 %.not1381, ptr %.val1391, ptr %.sroa.gep1275.val1392 ; 2 uses
  br i1 %.not, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  store ptr %i.aiv, ptr %69, align 8, !tbaa !45
  invoke void @_ZN4cvc58internal6theory7strings4Word6prefixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %68, ptr noundef nonnull align 8 %69, i64 noundef %i.aiu)
          to label %bb.km unwind label %.thread1320

bb.kl:                                            ; preds = %bb.kj
  store ptr %i.aiv, ptr %70, align 8, !tbaa !45
  invoke void @_ZN4cvc58internal6theory7strings4Word6suffixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %68, ptr noundef nonnull align 8 %70, i64 noundef %i.aiu)
          to label %bb.km unwind label %.thread1325

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %.val1393 = load ptr, ptr %i.we, align 8
  %.val1394 = load ptr, ptr %i.wl, align 16
  %i.aiw = select i1 %.not1381, ptr %.val1393, ptr %.val1394
  %.val1395 = load ptr, ptr %49, align 16
  %.val1396 = load ptr, ptr %i.vv, align 8
  %i.aix = select i1 %.not1381, ptr %.val1395, ptr %.val1396 ; 2 uses
  %i.aiy = ptrtoint ptr %i.aiw to i64
  %i.aiz = ptrtoint ptr %i.aix to i64
  %i.aja = sub i64 %i.aiy, %i.aiz
  %i.ajb = getelementptr i8, ptr %i.aix, i64 %i.aja
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 -8   ; 2 uses
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !41 ; 4 uses
  %i.aje = load ptr, ptr %68, align 8, !tbaa !41
  %.not.i747 = icmp eq ptr %i.ajd, %i.aje
  br i1 %.not.i747, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752, label %bb.kn, !prof !46

bb.kn:                                            ; preds = %bb.km
  %i.ajf = load i64, ptr %i.ajd, align 8          ; 3 uses
  %i.ajg = and i64 %i.ajf, 1152920405095219200
  %.not.i.i748 = icmp eq i64 %i.ajg, 1152920405095219200
  br i1 %.not.i.i748, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749, label %bb.ko, !prof !46

bb.ko:                                            ; preds = %bb.kn
  %i.ajh = add i64 %i.ajf, 1152920405095219200
  %i.aji = and i64 %i.ajh, 1152920405095219200    ; 2 uses
  %i.ajj = and i64 %i.ajf, -1152920405095219201
  %i.ajk = or disjoint i64 %i.aji, %i.ajj
  store i64 %i.ajk, ptr %i.ajd, align 8
  %i.ajl = icmp eq i64 %i.aji, 0
  br i1 %i.ajl, label %bb.kp, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749, !prof !46

bb.kp:                                            ; preds = %bb.ko
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajd)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749 unwind label %bb.lc

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749: ; preds = %bb.kp, %bb.ko, %bb.kn
  %i.ajm = load ptr, ptr %68, align 8, !tbaa !41  ; 5 uses
  store ptr %i.ajm, ptr %i.ajc, align 8, !tbaa !41
  %i.ajn = load i64, ptr %i.ajm, align 8          ; 3 uses
  %i.ajo = lshr i64 %i.ajn, 40
  %i.ajp = trunc nuw nsw i64 %i.ajo to i32
  %i.ajq = and i32 %i.ajp, 1048575                ; 3 uses
  %i.ajr = icmp samesign ult i32 %i.ajq, 1048574
  br i1 %i.ajr, label %bb.kq, label %bb.kr, !prof !47

bb.kq:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749
  %i.ajs = add nuw nsw i32 %i.ajq, 1
  %i.ajt = zext nneg i32 %i.ajs to i64
  %i.aju = shl nuw nsw i64 %i.ajt, 40
  %i.ajv = and i64 %i.ajn, -1152920405095219201
  %i.ajw = or i64 %i.aju, %i.ajv
  store i64 %i.ajw, ptr %i.ajm, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752

bb.kr:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749
  %i.ajx = icmp eq i32 %i.ajq, 1048574
  br i1 %i.ajx, label %bb.ks, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752, !prof !46

bb.ks:                                            ; preds = %bb.kr
  %i.ajy = or i64 %i.ajn, 1152920405095219200
  store i64 %i.ajy, ptr %i.ajm, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752 unwind label %bb.lc

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752: ; preds = %bb.kr, %bb.kq, %bb.km, %bb.ks
  %i.ajz = load ptr, ptr %68, align 8, !tbaa !41  ; 3 uses
  %i.aka = load i64, ptr %i.ajz, align 8          ; 3 uses
  %i.akb = and i64 %i.aka, 1152920405095219200
  %.not.i.i753 = icmp eq i64 %i.akb, 1152920405095219200
  br i1 %.not.i.i753, label %.critedge591, label %bb.kt, !prof !46

bb.kt:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752
  %i.akc = add i64 %i.aka, 1152920405095219200
  %i.akd = and i64 %i.akc, 1152920405095219200    ; 2 uses
  %i.ake = and i64 %i.aka, -1152920405095219201
  %i.akf = or disjoint i64 %i.akd, %i.ake
  store i64 %i.akf, ptr %i.ajz, align 8
  %i.akg = icmp eq i64 %i.akd, 0
  br i1 %i.akg, label %bb.ku, label %.critedge591, !prof !46

bb.ku:                                            ; preds = %bb.kt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajz)
          to label %.critedge591 unwind label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.akh = landingpad { ptr, i32 }
          catch ptr null
  %i.aki = extractvalue { ptr, i32 } %i.akh, 0
  call void @__clang_call_terminate(ptr %i.aki) #25
  unreachable

.critedge591:                                     ; preds = %bb.ku, %bb.kt, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  %.sroa.sel1298.sroa.sel = select i1 %.not1381, ptr %i.wl, ptr %i.we ; 2 uses
  %i.akj = load ptr, ptr %.sroa.sel1298.sroa.sel, align 8, !tbaa !57
  %i.akk = getelementptr inbounds i8, ptr %i.akj, i64 -8 ; 2 uses
  store ptr %i.akk, ptr %.sroa.sel1298.sroa.sel, align 8, !tbaa !57
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !41 ; 3 uses
  %i.akm = load i64, ptr %i.akl, align 8          ; 3 uses
  %i.akn = and i64 %i.akm, 1152920405095219200
  %.not.i.i.i756 = icmp eq i64 %i.akn, 1152920405095219200
  br i1 %.not.i.i.i756, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757, label %bb.kw, !prof !46

bb.kw:                                            ; preds = %.critedge591
  %i.ako = add i64 %i.akm, 1152920405095219200
  %i.akp = and i64 %i.ako, 1152920405095219200    ; 2 uses
  %i.akq = and i64 %i.akm, -1152920405095219201
  %i.akr = or disjoint i64 %i.akp, %i.akq
  store i64 %i.akr, ptr %i.akl, align 8
  %i.aks = icmp eq i64 %i.akp, 0
  br i1 %i.aks, label %bb.kx, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757, !prof !46

bb.kx:                                            ; preds = %bb.kw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akl)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757 unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.akt = landingpad { ptr, i32 }
          catch ptr null
  %i.aku = extractvalue { ptr, i32 } %i.akt, 0
  call void @__clang_call_terminate(ptr %i.aku) #25
  unreachable

bb.kz:                                            ; preds = %bb.ke
  %i.akv = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.la:                                            ; preds = %bb.kd
  %i.akw = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.lb:                                            ; preds = %bb.kz, %bb.la
  %.pn5471312 = phi { ptr, i32 } [ %i.akv, %bb.kz ], [ %i.akw, %bb.la ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  br label %.loopexit.loopexit

.thread1320:                                      ; preds = %bb.kk
  %i.akx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

.thread1325:                                      ; preds = %bb.kl
  %i.aky = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.lc:                                            ; preds = %bb.kp, %bb.ks
  %i.akz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #23
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %.thread1320, %.thread1325
  %.pn549.pn1323 = phi { ptr, i32 } [ %i.akz, %bb.lc ], [ %i.aky, %.thread1325 ], [ %i.akx, %.thread1320 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  br label %.loopexit.loopexit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757: ; preds = %bb.kx, %bb.kw, %.critedge591, %.critedge589
  %.2339 = phi i1 [ %.13381453.lcssa1729, %.critedge589 ], [ true, %.critedge591 ], [ true, %bb.kw ], [ true, %bb.kx ]
  %i.ala = load ptr, ptr %i.acw, align 8, !tbaa !41 ; 3 uses
  %i.alb = load i64, ptr %i.ala, align 8          ; 3 uses
  %i.alc = and i64 %i.alb, 1152920405095219200
  %.not.i.i758 = icmp eq i64 %i.alc, 1152920405095219200
  br i1 %.not.i.i758, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit760, label %bb.le, !prof !46

bb.le:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757
  %i.ald = add i64 %i.alb, 1152920405095219200
  %i.ale = and i64 %i.ald, 1152920405095219200    ; 2 uses
  %i.alf = and i64 %i.alb, -1152920405095219201
  %i.alg = or disjoint i64 %i.ale, %i.alf
  store i64 %i.alg, ptr %i.ala, align 8
  %i.alh = icmp eq i64 %i.ale, 0
  br i1 %i.alh, label %bb.lf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit760, !prof !46

bb.lf:                                            ; preds = %bb.le
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ala)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit760 unwind label %bb.lg

bb.lg:                                            ; preds = %bb.li, %bb.lf
  %i.ali = landingpad { ptr, i32 }
          catch ptr null
  %i.alj = extractvalue { ptr, i32 } %i.ali, 0
  call void @__clang_call_terminate(ptr %i.alj) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit760: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757, %bb.le, %bb.lf
end_hunk_0
