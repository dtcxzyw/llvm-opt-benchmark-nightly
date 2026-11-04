Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sequences_rewriter?download=true
inline.NumInlined: 6229
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4cvc58internal6theory7strings17SequencesRewriter21rewriteStrEqualityExtENS0_12NodeTemplateILb1EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br i1 %.not1459, label %.preheader1407, label %.critedge575, !llvm.loop !1016

.loopexit.split-lp1409:                           ; preds = %.loopexit.split-lp1409.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eu, %bb.dv, %bb.dq
  %.pn385.pn = phi { ptr, i32 } [ %.pn385, %bb.eu ], [ %.pn379.pn, %bb.dq ], [ %.pn382.pn, %bb.dv ], [ %lpad.loopexit.split-lp1959, %.loopexit.split-lp1409.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #23
  br label %bb.fc

bb.fc:                                            ; preds = %.loopexit.split-lp1409, %bb.dl
  %.pn385.pn.pn = phi { ptr, i32 } [ %.pn385.pn, %.loopexit.split-lp1409 ], [ %i.pr, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #23
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.dk
  %.pn385.pn.pn.pn = phi { ptr, i32 } [ %.pn385.pn.pn, %bb.fc ], [ %.pn376.pn, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %bb.anw

.critedge575:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit698
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %49, i8 0, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.tk = load ptr, ptr %2, align 8, !tbaa !41, !noalias !1129 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load i64, ptr %i.tl, align 8, !noalias !1129
  %i.tn = trunc i64 %i.tm to i32
  %i.to = and i32 %i.tn, 1023                     ; 2 uses
  %i.tp = icmp eq i32 %i.to, 1023
  %i.tq = select i1 %i.tp, i32 -1, i32 %i.to
  %i.tr = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.tq)
          to label %.noexc700 unwind label %bb.fr

.noexc700:                                        ; preds = %.critedge575
  %i.ts = icmp eq i32 %i.tr, 2
  %i.tt = zext i1 %i.ts to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %i.tt
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !40, !noalias !1129 ; 5 uses
  store ptr %i.tw, ptr %50, align 8, !tbaa !41, !alias.scope !1129
  %i.tx = load i64, ptr %i.tw, align 8, !noalias !1129 ; 3 uses
  %i.ty = lshr i64 %i.tx, 40
  %i.tz = trunc nuw nsw i64 %i.ty to i32
  %i.ua = and i32 %i.tz, 1048575                  ; 3 uses
  %i.ub = icmp samesign ult i32 %i.ua, 1048574
  br i1 %i.ub, label %bb.fe, label %bb.ff, !prof !47

bb.fe:                                            ; preds = %.noexc700
  %i.uc = add nuw nsw i32 %i.ua, 1
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = shl nuw nsw i64 %i.ud, 40
  %i.uf = and i64 %i.tx, -1152920405095219201
  %i.ug = or i64 %i.ue, %i.uf
  store i64 %i.ug, ptr %i.tw, align 8, !noalias !1129
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702

bb.ff:                                            ; preds = %.noexc700
  %i.uh = icmp eq i32 %i.ua, 1048574
  br i1 %i.uh, label %bb.fg, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702, !prof !46

bb.fg:                                            ; preds = %bb.ff
  %i.ui = or i64 %i.tx, 1152920405095219200
  store i64 %i.ui, ptr %i.tw, align 8, !noalias !1129
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tw)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702 unwind label %bb.fr

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702: ; preds = %bb.ff, %bb.fe, %bb.fg
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %50, ptr noundef nonnull align 8 dereferenceable(24) %49)
          to label %bb.fh unwind label %bb.fs

bb.fh:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702
  %i.uj = load ptr, ptr %50, align 8, !tbaa !41   ; 3 uses
  %i.uk = load i64, ptr %i.uj, align 8            ; 3 uses
  %i.ul = and i64 %i.uk, 1152920405095219200
  %.not.i.i703 = icmp eq i64 %i.ul, 1152920405095219200
  br i1 %.not.i.i703, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705, label %bb.fi, !prof !46

bb.fi:                                            ; preds = %bb.fh
  %i.um = add i64 %i.uk, 1152920405095219200
  %i.un = and i64 %i.um, 1152920405095219200      ; 2 uses
  %i.uo = and i64 %i.uk, -1152920405095219201
  %i.up = or disjoint i64 %i.un, %i.uo
  store i64 %i.up, ptr %i.uj, align 8
  %i.uq = icmp eq i64 %i.un, 0
  br i1 %i.uq, label %bb.fj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705, !prof !46

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fq, %bb.fj
  %i.ur = landingpad { ptr, i32 }
          catch ptr null
  %i.us = extractvalue { ptr, i32 } %i.ur, 0
  call void @__clang_call_terminate(ptr %i.us) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705: ; preds = %bb.fh, %bb.fi, %bb.fj
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.ut = load ptr, ptr %2, align 8, !tbaa !41, !noalias !1130 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load i64, ptr %i.uu, align 8, !noalias !1130
  %i.uw = trunc i64 %i.uv to i32
  %i.ux = and i32 %i.uw, 1023                     ; 2 uses
  %i.uy = icmp eq i32 %i.ux, 1023
  %i.uz = select i1 %i.uy, i32 -1, i32 %i.ux
  %i.va = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.uz)
          to label %.noexc700.1 unwind label %bb.fr

.noexc700.1:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705
  %i.vb = icmp eq i32 %i.va, 2
  %i.vc = select i1 %i.vb, i64 2, i64 1
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ut, i64 24
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.vc
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !40, !noalias !1130 ; 5 uses
  store ptr %i.vf, ptr %50, align 8, !tbaa !41, !alias.scope !1130
  %i.vg = load i64, ptr %i.vf, align 8, !noalias !1130 ; 3 uses
  %i.vh = lshr i64 %i.vg, 40
  %i.vi = trunc nuw nsw i64 %i.vh to i32
  %i.vj = and i32 %i.vi, 1048575                  ; 3 uses
  %i.vk = icmp samesign ult i32 %i.vj, 1048574
  br i1 %i.vk, label %bb.fn, label %bb.fl, !prof !47

bb.fl:                                            ; preds = %.noexc700.1
  %i.vl = icmp eq i32 %i.vj, 1048574
  br i1 %i.vl, label %bb.fm, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1, !prof !46

bb.fm:                                            ; preds = %bb.fl
  %i.vm = or i64 %i.vg, 1152920405095219200
  store i64 %i.vm, ptr %i.vf, align 8, !noalias !1130
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vf)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1 unwind label %bb.fr

bb.fn:                                            ; preds = %.noexc700.1
  %i.vn = add nuw nsw i32 %i.vj, 1
  %i.vo = zext nneg i32 %i.vn to i64
  %i.vp = shl nuw nsw i64 %i.vo, 40
  %i.vq = and i64 %i.vg, -1152920405095219201
  %i.vr = or i64 %i.vp, %i.vq
  store i64 %i.vr, ptr %i.vf, align 8, !noalias !1130
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1: ; preds = %bb.fn, %bb.fm, %bb.fl
  %i.vs = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 9 uses
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %50, ptr noundef nonnull align 8 dereferenceable(24) %i.vs)
          to label %bb.fo unwind label %bb.fs

bb.fo:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1
  %i.vt = load ptr, ptr %50, align 8, !tbaa !41   ; 3 uses
  %i.vu = load i64, ptr %i.vt, align 8            ; 3 uses
  %i.vv = and i64 %i.vu, 1152920405095219200
  %.not.i.i703.1 = icmp eq i64 %i.vv, 1152920405095219200
  br i1 %.not.i.i703.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1, label %bb.fp, !prof !46

bb.fp:                                            ; preds = %bb.fo
  %i.vw = add i64 %i.vu, 1152920405095219200
  %i.vx = and i64 %i.vw, 1152920405095219200      ; 2 uses
  %i.vy = and i64 %i.vu, -1152920405095219201
  %i.vz = or disjoint i64 %i.vx, %i.vy
  store i64 %i.vz, ptr %i.vt, align 8
  %i.wa = icmp eq i64 %i.vx, 0
  br i1 %i.wa, label %bb.fq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1, !prof !46

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1 unwind label %bb.fk

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1: ; preds = %bb.fq, %bb.fp, %bb.fo
  %i.wb = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 11 uses
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !57
  %i.wd = load ptr, ptr %49, align 16, !tbaa !56
  %i.we = ptrtoint ptr %i.wc to i64
  %i.wf = ptrtoint ptr %i.wd to i64
  %i.wg = sub i64 %i.we, %i.wf
  %i.wh = ashr exact i64 %i.wg, 3
  %i.wi = getelementptr inbounds nuw i8, ptr %49, i64 32 ; 11 uses
  %i.wj = load ptr, ptr %i.wi, align 16, !tbaa !57
  %i.wk = load ptr, ptr %i.vs, align 8, !tbaa !56
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = sub i64 %i.wl, %i.wm
  %i.wo = ashr exact i64 %i.wn, 3
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.wo, i64 %i.wh) ; 2 uses
  %i.wp = and i64 %.sroa.speculated, 4294967295
  %.not1460 = icmp eq i64 %i.wp, 0
  %wide.trip.count = and i64 %.sroa.speculated, 4294967295
  br label %.preheader1404

bb.fr:                                            ; preds = %bb.fm, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705, %bb.fg, %.critedge575
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ans

bb.fs:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702.1, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit702
  %i.wr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %50) #23
  br label %bb.ans

.preheader1404:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1, %.thread1300
  %i.ws = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1 ], [ false, %.thread1300 ]
  %.03481448 = phi i1 [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit705.1 ], [ true, %.thread1300 ] ; 2 uses
  br i1 %.not1460, label %.thread1300, label %.lr.ph

bb.ft:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread1300, label %.lr.ph, !llvm.loop !1021

.lr.ph:                                           ; preds = %.preheader1404, %bb.ft
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ft ], [ 0, %.preheader1404 ] ; 4 uses
  %.pre = load ptr, ptr %49, align 16, !tbaa !56  ; 2 uses
  br i1 %.03481448, label %bb.fu, label %.thread1295

bb.fu:                                            ; preds = %.lr.ph
  %i.wt = load ptr, ptr %i.wb, align 8, !tbaa !57
  %i.wu = ptrtoint ptr %i.wt to i64
  %i.wv = ptrtoint ptr %.pre to i64
  %i.ww = sub i64 %i.wu, %i.wv
  %i.wx = lshr exact i64 %i.ww, 3
  %i.wy = xor i64 %indvars.iv, -1                 ; 2 uses
  %i.wz = add nsw i64 %i.wx, %i.wy
  %i.xa = load ptr, ptr %i.wi, align 16, !tbaa !57
  %i.xb = load ptr, ptr %i.vs, align 8, !tbaa !56
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = ptrtoint ptr %i.xb to i64
  %i.xe = sub i64 %i.xc, %i.xd
  %i.xf = lshr exact i64 %i.xe, 3
  %i.xg = add nsw i64 %i.xf, %i.wy
  %i.xh = and i64 %i.wz, 4294967295
  br label %.thread1295

.thread1295:                                      ; preds = %.lr.ph, %bb.fu
  %i.xi = phi i64 [ %i.xh, %bb.fu ], [ %indvars.iv, %.lr.ph ]
  %.in = phi i64 [ %i.xg, %bb.fu ], [ %indvars.iv, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.xi
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !41 ; 5 uses
  store ptr %i.xk, ptr %51, align 8, !tbaa !41
  %i.xl = load i64, ptr %i.xk, align 8            ; 3 uses
  %i.xm = lshr i64 %i.xl, 40
  %i.xn = trunc nuw nsw i64 %i.xm to i32
  %i.xo = and i32 %i.xn, 1048575                  ; 3 uses
  %i.xp = icmp samesign ult i32 %i.xo, 1048574
  br i1 %i.xp, label %bb.fv, label %bb.fw, !prof !47

bb.fv:                                            ; preds = %.thread1295
  %i.xq = add nuw nsw i32 %i.xo, 1
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = shl nuw nsw i64 %i.xr, 40
  %i.xt = and i64 %i.xl, -1152920405095219201
  %i.xu = or i64 %i.xs, %i.xt
  store i64 %i.xu, ptr %i.xk, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707

bb.fw:                                            ; preds = %.thread1295
  %i.xv = icmp eq i32 %i.xo, 1048574
  br i1 %i.xv, label %bb.fx, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707, !prof !46

bb.fx:                                            ; preds = %bb.fw
  %i.xw = or i64 %i.xl, 1152920405095219200
  store i64 %i.xw, ptr %i.xk, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707 unwind label %bb.hc

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707: ; preds = %bb.fw, %bb.fv, %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  %i.xx = and i64 %.in, 4294967295
  %i.xy = load ptr, ptr %i.vs, align 8, !tbaa !56
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.xy, i64 %i.xx
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !41 ; 5 uses
  store ptr %i.ya, ptr %52, align 8, !tbaa !41
  %i.yb = load i64, ptr %i.ya, align 8            ; 3 uses
  %i.yc = lshr i64 %i.yb, 40
  %i.yd = trunc nuw nsw i64 %i.yc to i32
  %i.ye = and i32 %i.yd, 1048575                  ; 3 uses
  %i.yf = icmp samesign ult i32 %i.ye, 1048574
  br i1 %i.yf, label %bb.fy, label %bb.fz, !prof !47

bb.fy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707
  %i.yg = add nuw nsw i32 %i.ye, 1
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = shl nuw nsw i64 %i.yh, 40
  %i.yj = and i64 %i.yb, -1152920405095219201
  %i.yk = or i64 %i.yi, %i.yj
  store i64 %i.yk, ptr %i.ya, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709

bb.fz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit707
  %i.yl = icmp eq i32 %i.ye, 1048574
  br i1 %i.yl, label %bb.ga, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709, !prof !46

bb.ga:                                            ; preds = %bb.fz
  %i.ym = or i64 %i.yb, 1152920405095219200
  store i64 %i.ym, ptr %i.ya, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ya)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709 unwind label %bb.hd

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709: ; preds = %bb.fz, %bb.fy, %bb.ga
  %i.yn = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.gb unwind label %bb.he

bb.gb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709
  br i1 %i.yn, label %bb.gc, label %.critedge584

bb.gc:                                            ; preds = %bb.gb
  %i.yo = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.gd unwind label %bb.he

bb.gd:                                            ; preds = %bb.gc
  br i1 %i.yo, label %bb.ge, label %.critedge584

bb.ge:                                            ; preds = %bb.gd
  %i.yp = load ptr, ptr %51, align 8, !tbaa !41
  store ptr %i.yp, ptr %53, align 8, !tbaa !45
  %i.yq = invoke noundef i64 @_ZN4cvc58internal6theory7strings4Word9getLengthENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %53)
          to label %bb.gf unwind label %bb.he

bb.gf:                                            ; preds = %bb.ge
  %i.yr = load ptr, ptr %52, align 8, !tbaa !41
  store ptr %i.yr, ptr %54, align 8, !tbaa !45
  %i.ys = invoke noundef i64 @_ZN4cvc58internal6theory7strings4Word9getLengthENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %54)
          to label %bb.gg unwind label %bb.he

bb.gg:                                            ; preds = %bb.gf
  %i.yt = call i64 @llvm.umin.i64(i64 %i.yq, i64 %i.ys) ; 2 uses
  %i.yu = load ptr, ptr %51, align 8, !tbaa !41   ; 2 uses
  br i1 %.03481448, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  store ptr %i.yu, ptr %55, align 8, !tbaa !45
  %i.yv = load ptr, ptr %52, align 8, !tbaa !41
  store ptr %i.yv, ptr %56, align 8, !tbaa !45
  %i.yw = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings4Word8rstrncmpENS0_12NodeTemplateILb0EEES5_m(ptr noundef nonnull align 8 %55, ptr noundef nonnull align 8 %56, i64 noundef %i.yt)
          to label %.critedge580 unwind label %bb.he

bb.gi:                                            ; preds = %bb.gg
  store ptr %i.yu, ptr %57, align 8, !tbaa !45
  %i.yx = load ptr, ptr %52, align 8, !tbaa !41
  store ptr %i.yx, ptr %58, align 8, !tbaa !45
  %i.yy = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings4Word7strncmpENS0_12NodeTemplateILb0EEES5_m(ptr noundef nonnull align 8 %57, ptr noundef nonnull align 8 %58, i64 noundef %i.yt)
          to label %.critedge580 unwind label %bb.he

.critedge580:                                     ; preds = %bb.gh, %bb.gi
  %i.yz = phi i1 [ %i.yy, %bb.gi ], [ %i.yw, %bb.gh ]
  br i1 %i.yz, label %.critedge584, label %bb.gj

bb.gj:                                            ; preds = %.critedge580
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  %i.za = invoke noundef ptr @_ZNK4cvc58internal6theory14TheoryRewriter11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.gk unwind label %bb.hf

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !49
  invoke void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %59, ptr noundef nonnull align 8 dereferenceable(3592) %i.za, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.gl unwind label %bb.hg

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.zb = load ptr, ptr %2, align 8, !tbaa !41    ; 8 uses
  store ptr %i.zb, ptr %60, align 8, !tbaa !41
  %i.zc = load i64, ptr %i.zb, align 8            ; 3 uses
  %i.zd = lshr i64 %i.zc, 40
  %i.ze = trunc nuw nsw i64 %i.zd to i32
  %i.zf = and i32 %i.ze, 1048575                  ; 3 uses
  %i.zg = icmp samesign ult i32 %i.zf, 1048574
  br i1 %i.zg, label %bb.gm, label %bb.gn, !prof !47

bb.gm:                                            ; preds = %bb.gl
  %i.zh = add nuw nsw i32 %i.zf, 1
  %i.zi = zext nneg i32 %i.zh to i64
  %i.zj = shl nuw nsw i64 %i.zi, 40
  %i.zk = and i64 %i.zc, -1152920405095219201
  %i.zl = or i64 %i.zj, %i.zk
  store i64 %i.zl, ptr %i.zb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711

bb.gn:                                            ; preds = %bb.gl
  %i.zm = icmp eq i32 %i.zf, 1048574
  br i1 %i.zm, label %bb.go, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711, !prof !46

bb.go:                                            ; preds = %bb.gn
  %i.zn = or i64 %i.zc, 1152920405095219200
  store i64 %i.zn, ptr %i.zb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711 unwind label %bb.hh

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711: ; preds = %bb.gn, %bb.gm, %bb.go
  %i.zo = load ptr, ptr %59, align 8, !tbaa !41   ; 8 uses
  store ptr %i.zo, ptr %61, align 8, !tbaa !41
  %i.zp = load i64, ptr %i.zo, align 8            ; 3 uses
  %i.zq = lshr i64 %i.zp, 40
  %i.zr = trunc nuw nsw i64 %i.zq to i32
  %i.zs = and i32 %i.zr, 1048575                  ; 3 uses
  %i.zt = icmp samesign ult i32 %i.zs, 1048574
  br i1 %i.zt, label %bb.gp, label %bb.gq, !prof !47

bb.gp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711
  %i.zu = add nuw nsw i32 %i.zs, 1
  %i.zv = zext nneg i32 %i.zu to i64
  %i.zw = shl nuw nsw i64 %i.zv, 40
  %i.zx = and i64 %i.zp, -1152920405095219201
  %i.zy = or i64 %i.zw, %i.zx
  store i64 %i.zy, ptr %i.zo, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713

bb.gq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit711
  %i.zz = icmp eq i32 %i.zs, 1048574
  br i1 %i.zz, label %bb.gr, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713, !prof !46

bb.gr:                                            ; preds = %bb.gq
  %i.aaa = or i64 %i.zp, 1152920405095219200
  store i64 %i.aaa, ptr %i.zo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713 unwind label %bb.hi

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713: ; preds = %bb.gq, %bb.gp, %bb.gr
  invoke void @_ZN4cvc58internal6theory7strings17SequencesRewriter13returnRewriteENS0_12NodeTemplateILb1EEES5_NS2_7RewriteE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nonnull align 8 poison, ptr noundef nonnull align 8 %61, i32 noundef 26)
          to label %bb.gs unwind label %bb.hj

bb.gs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713
  %i.aab = load i64, ptr %i.zo, align 8           ; 3 uses
  %i.aac = and i64 %i.aab, 1152920405095219200
  %.not.i.i714 = icmp eq i64 %i.aac, 1152920405095219200
  br i1 %.not.i.i714, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716, label %bb.gt, !prof !46

bb.gt:                                            ; preds = %bb.gs
  %i.aad = add i64 %i.aab, 1152920405095219200
  %i.aae = and i64 %i.aad, 1152920405095219200    ; 2 uses
  %i.aaf = and i64 %i.aab, -1152920405095219201
  %i.aag = or disjoint i64 %i.aae, %i.aaf
  store i64 %i.aag, ptr %i.zo, align 8
  %i.aah = icmp eq i64 %i.aae, 0
  br i1 %i.aah, label %bb.gu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716, !prof !46

bb.gu:                                            ; preds = %bb.gt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716 unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.aai = landingpad { ptr, i32 }
          catch ptr null
  %i.aaj = extractvalue { ptr, i32 } %i.aai, 0
  call void @__clang_call_terminate(ptr %i.aaj) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716: ; preds = %bb.gs, %bb.gt, %bb.gu
  %i.aak = load i64, ptr %i.zb, align 8           ; 3 uses
  %i.aal = and i64 %i.aak, 1152920405095219200
  %.not.i.i717 = icmp eq i64 %i.aal, 1152920405095219200
  br i1 %.not.i.i717, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719, label %bb.gw, !prof !46

bb.gw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716
  %i.aam = add i64 %i.aak, 1152920405095219200
  %i.aan = and i64 %i.aam, 1152920405095219200    ; 2 uses
  %i.aao = and i64 %i.aak, -1152920405095219201
  %i.aap = or disjoint i64 %i.aan, %i.aao
  store i64 %i.aap, ptr %i.zb, align 8
  %i.aaq = icmp eq i64 %i.aan, 0
  br i1 %i.aaq, label %bb.gx, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719, !prof !46

bb.gx:                                            ; preds = %bb.gw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719 unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aar = landingpad { ptr, i32 }
          catch ptr null
  %i.aas = extractvalue { ptr, i32 } %i.aar, 0
  call void @__clang_call_terminate(ptr %i.aas) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit716, %bb.gw, %bb.gx
  %i.aat = load ptr, ptr %59, align 8, !tbaa !41  ; 3 uses
  %i.aau = load i64, ptr %i.aat, align 8          ; 3 uses
  %i.aav = and i64 %i.aau, 1152920405095219200
  %.not.i.i720 = icmp eq i64 %i.aav, 1152920405095219200
  br i1 %.not.i.i720, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722, label %bb.gz, !prof !46

bb.gz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719
  %i.aaw = add i64 %i.aau, 1152920405095219200
  %i.aax = and i64 %i.aaw, 1152920405095219200    ; 2 uses
  %i.aay = and i64 %i.aau, -1152920405095219201
  %i.aaz = or disjoint i64 %i.aax, %i.aay
  store i64 %i.aaz, ptr %i.aat, align 8
  %i.aba = icmp eq i64 %i.aax, 0
  br i1 %i.aba, label %bb.ha, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722, !prof !46

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aat)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722 unwind label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.abb = landingpad { ptr, i32 }
          catch ptr null
  %i.abc = extractvalue { ptr, i32 } %i.abb, 0
  call void @__clang_call_terminate(ptr %i.abc) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit719, %bb.gz, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  %.pre1518 = load ptr, ptr %52, align 8, !tbaa !41
  br label %bb.hn

bb.hc:                                            ; preds = %bb.fx
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.hd:                                            ; preds = %bb.ga
  %i.abe = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.he:                                            ; preds = %bb.gi, %bb.gc, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit709, %bb.ge, %bb.gf, %bb.gh
  %i.abf = landingpad { ptr, i32 }
          cleanup
  br label %.critedge582

bb.hf:                                            ; preds = %bb.gj
  %i.abg = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.hg:                                            ; preds = %bb.gk
  %i.abh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.hm

bb.hh:                                            ; preds = %bb.go
  %i.abi = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hi:                                            ; preds = %bb.gr
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit713
  %i.abk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %61) #23
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.pn395 = phi { ptr, i32 } [ %i.abk, %bb.hj ], [ %i.abj, %bb.hi ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #23
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hh
  %.pn395.pn = phi { ptr, i32 } [ %.pn395, %bb.hk ], [ %i.abi, %bb.hh ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %59) #23
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hg, %bb.hf
  %.pn395.pn.pn = phi { ptr, i32 } [ %.pn395.pn, %bb.hl ], [ %i.abh, %bb.hg ], [ %i.abg, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  br label %.critedge582

.critedge584:                                     ; preds = %.critedge580, %bb.gd, %bb.gb
  %i.abl = load ptr, ptr %51, align 8, !tbaa !41
  %i.abm = load ptr, ptr %52, align 8, !tbaa !41  ; 2 uses
  %.not1370 = icmp eq ptr %i.abl, %i.abm          ; 2 uses
  %not..not1370 = xor i1 %.not1370, true
  br label %bb.hn

bb.hn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722, %.critedge584
  %i.abn = phi ptr [ %i.abm, %.critedge584 ], [ %.pre1518, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722 ] ; 3 uses
  %cond11 = phi i1 [ %.not1370, %.critedge584 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722 ]
  %.3356 = phi i1 [ %not..not1370, %.critedge584 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit722 ]
  %i.abo = load i64, ptr %i.abn, align 8          ; 3 uses
  %i.abp = and i64 %i.abo, 1152920405095219200
  %.not.i.i723 = icmp eq i64 %i.abp, 1152920405095219200
  br i1 %.not.i.i723, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725, label %bb.ho, !prof !46

bb.ho:                                            ; preds = %bb.hn
  %i.abq = add i64 %i.abo, 1152920405095219200
  %i.abr = and i64 %i.abq, 1152920405095219200    ; 2 uses
  %i.abs = and i64 %i.abo, -1152920405095219201
  %i.abt = or disjoint i64 %i.abr, %i.abs
  store i64 %i.abt, ptr %i.abn, align 8
  %i.abu = icmp eq i64 %i.abr, 0
  br i1 %i.abu, label %bb.hp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725, !prof !46

bb.hp:                                            ; preds = %bb.ho
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725 unwind label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.abv = landingpad { ptr, i32 }
          catch ptr null
  %i.abw = extractvalue { ptr, i32 } %i.abv, 0
  call void @__clang_call_terminate(ptr %i.abw) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725: ; preds = %bb.hn, %bb.ho, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  %i.abx = load ptr, ptr %51, align 8, !tbaa !41  ; 3 uses
  %i.aby = load i64, ptr %i.abx, align 8          ; 3 uses
  %i.abz = and i64 %i.aby, 1152920405095219200
  %.not.i.i726 = icmp eq i64 %i.abz, 1152920405095219200
  br i1 %.not.i.i726, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728, label %bb.hr, !prof !46

bb.hr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725
  %i.aca = add i64 %i.aby, 1152920405095219200
  %i.acb = and i64 %i.aca, 1152920405095219200    ; 2 uses
  %i.acc = and i64 %i.aby, -1152920405095219201
  %i.acd = or disjoint i64 %i.acb, %i.acc
  store i64 %i.acd, ptr %i.abx, align 8
  %i.ace = icmp eq i64 %i.acb, 0
  br i1 %i.ace, label %bb.hs, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728, !prof !46

bb.hs:                                            ; preds = %bb.hr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728 unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.acf = landingpad { ptr, i32 }
          catch ptr null
  %i.acg = extractvalue { ptr, i32 } %i.acf, 0
  call void @__clang_call_terminate(ptr %i.acg) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit725, %bb.hr, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  br i1 %cond11, label %bb.ft, label %bb.hw

.critedge582:                                     ; preds = %bb.hm, %bb.he
  %.pn395.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn395.pn.pn, %bb.hm ], [ %i.abf, %bb.he ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #23
  br label %bb.hu

bb.hu:                                            ; preds = %.critedge582, %bb.hd
  %.pn395.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn395.pn.pn.pn.pn.pn.pn, %.critedge582 ], [ %i.abe, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #23
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.hc
  %.pn395.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn395.pn.pn.pn.pn.pn.pn.pn, %bb.hu ], [ %i.abd, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  br label %bb.ans

bb.hw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit728
  br i1 %.3356, label %.thread1300, label %.loopexit1405

.thread1300:                                      ; preds = %bb.ft, %.preheader1404, %bb.hw
  br i1 %i.ws, label %.preheader1404, label %.critedge587, !llvm.loop !1022

.critedge587:                                     ; preds = %.thread1300
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  %i.ach = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.aci = icmp eq i8 %i.ach, 0
  br i1 %i.aci, label %bb.hx, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit, !prof !39

bb.hx:                                            ; preds = %.critedge587
  %i.acj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i729 = icmp eq i32 %i.acj, 0
  br i1 %.not.i.i729, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ack = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.hz unwind label %bb.ia     ; 3 uses

bb.hz:                                            ; preds = %bb.hy
  store i64 1152920405095219200, ptr %i.ack, align 8
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acl, i8 0, i64 16, i1 false)
  store ptr %i.ack, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit

bb.ia:                                            ; preds = %bb.hy
  %i.acm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %.body730

_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit:   ; preds = %.critedge587, %bb.hx, %bb.hz
  %i.acn = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  store ptr %i.acn, ptr %62, align 8, !tbaa !41
  %.sroa.gep1268 = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 7 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.acp = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.acq = getelementptr inbounds nuw i8, ptr %49, i64 32
  br label %.preheader1403

.preheader1403:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.1
  %.not = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit ], [ false, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.1 ]
  %.03361455 = phi i1 [ false, %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit ], [ true, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.1 ] ; 2 uses
  %.03371454 = phi i1 [ false, %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit ], [ %.3340, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.1 ] ; 3 uses
  %i.acr = load ptr, ptr %49, align 16, !tbaa !65
  %i.acs = load ptr, ptr %i.wb, align 8, !tbaa !65 ; 3 uses
  %i.act = icmp eq ptr %i.acr, %i.acs
  br i1 %i.act, label %.critedge, label %.lr.ph1451.preheader

.lr.ph1451.preheader:                             ; preds = %.preheader1403
  %i.acu = load ptr, ptr %i.vs, align 8, !tbaa !65
  %i.acv = load ptr, ptr %i.wi, align 16, !tbaa !65 ; 2 uses
  %i.acw = icmp eq ptr %i.acu, %i.acv
  br i1 %i.acw, label %.critedge, label %bb.ib

bb.ib:                                            ; preds = %.lr.ph1451.preheader
  %i.acx = getelementptr inbounds i8, ptr %i.acs, i64 -8 ; 2 uses
  %i.acy = getelementptr inbounds i8, ptr %i.acv, i64 -8
  %i.acz = load ptr, ptr %i.acx, align 8, !tbaa !41 ; 4 uses
  %i.ada = load ptr, ptr %i.acy, align 8, !tbaa !41
  %i.adb = icmp eq ptr %i.acz, %i.ada
  br i1 %i.adb, label %bb.ic, label %.thread1727

bb.ic:                                            ; preds = %bb.ib
  store ptr %i.acx, ptr %i.wb, align 8, !tbaa !57
  %i.adc = load i64, ptr %i.acz, align 8          ; 3 uses
  %i.add = and i64 %i.adc, 1152920405095219200
  %.not.i.i.i.peel = icmp eq i64 %i.add, 1152920405095219200
  br i1 %.not.i.i.i.peel, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel, label %bb.id, !prof !46

bb.id:                                            ; preds = %bb.ic
  %i.ade = add i64 %i.adc, 1152920405095219200
  %i.adf = and i64 %i.ade, 1152920405095219200    ; 2 uses
  %i.adg = and i64 %i.adc, -1152920405095219201
  %i.adh = or disjoint i64 %i.adf, %i.adg
  store i64 %i.adh, ptr %i.acz, align 8
  %i.adi = icmp eq i64 %i.adf, 0
  br i1 %i.adi, label %bb.ie, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel, !prof !46

bb.ie:                                            ; preds = %bb.id
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acz)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel unwind label %.loopexit.split-lp1491.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel: ; preds = %bb.ie, %bb.id, %bb.ic
  %i.adj = load ptr, ptr %i.wi, align 16, !tbaa !57
  %i.adk = getelementptr inbounds i8, ptr %i.adj, i64 -8 ; 2 uses
  store ptr %i.adk, ptr %i.wi, align 16, !tbaa !57
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !41 ; 3 uses
  %i.adm = load i64, ptr %i.adl, align 8          ; 3 uses
  %i.adn = and i64 %i.adm, 1152920405095219200
  %.not.i.i.i732.peel = icmp eq i64 %i.adn, 1152920405095219200
  br i1 %.not.i.i.i732.peel, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel, label %bb.if, !prof !46

bb.if:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel
  %i.ado = add i64 %i.adm, 1152920405095219200
  %i.adp = and i64 %i.ado, 1152920405095219200    ; 2 uses
  %i.adq = and i64 %i.adm, -1152920405095219201
  %i.adr = or disjoint i64 %i.adp, %i.adq
  store i64 %i.adr, ptr %i.adl, align 8
  %i.ads = icmp eq i64 %i.adp, 0
  br i1 %i.ads, label %bb.ig, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel, !prof !46

bb.ig:                                            ; preds = %bb.if
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.adl)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel unwind label %.loopexit.split-lp1496.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel: ; preds = %bb.ig, %bb.if, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit.peel
  %i.adt = load ptr, ptr %49, align 16, !tbaa !65
  %i.adu = load ptr, ptr %i.wb, align 8, !tbaa !65 ; 2 uses
  %i.adv = icmp eq ptr %i.adt, %i.adu
  br i1 %i.adv, label %.critedge, label %.lr.ph1451

bb.ih:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.1
  br i1 %.3340, label %bb.ku, label %bb.nz

.lr.ph1451:                                       ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733
  %i.adw = phi ptr [ %i.aez, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733 ], [ %i.adu, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733.peel ] ; 2 uses
  %i.adx = load ptr, ptr %i.vs, align 8, !tbaa !65 ; 2 uses
  %i.ady = load ptr, ptr %i.wi, align 16, !tbaa !65 ; 3 uses
  %i.adz = icmp eq ptr %i.adx, %i.ady
  br i1 %i.adz, label %bb.io, label %bb.ii

bb.ii:                                            ; preds = %.lr.ph1451
  %i.aea = getelementptr inbounds i8, ptr %i.adw, i64 -8 ; 2 uses
  %i.aeb = getelementptr inbounds i8, ptr %i.ady, i64 -8
  %i.aec = load ptr, ptr %i.aea, align 8, !tbaa !41 ; 4 uses
  %i.aed = load ptr, ptr %i.aeb, align 8, !tbaa !41
  %i.aee = icmp eq ptr %i.aec, %i.aed
  br i1 %i.aee, label %bb.ij, label %bb.io

bb.ij:                                            ; preds = %bb.ii
  store ptr %i.aea, ptr %i.wb, align 8, !tbaa !57
  %i.aef = load i64, ptr %i.aec, align 8          ; 3 uses
  %i.aeg = and i64 %i.aef, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.aeg, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit, label %bb.ik, !prof !46

bb.ik:                                            ; preds = %bb.ij
  %i.aeh = add i64 %i.aef, 1152920405095219200
  %i.aei = and i64 %i.aeh, 1152920405095219200    ; 2 uses
  %i.aej = and i64 %i.aef, -1152920405095219201
  %i.aek = or disjoint i64 %i.aei, %i.aej
  store i64 %i.aek, ptr %i.aec, align 8
  %i.ael = icmp eq i64 %i.aei, 0
  br i1 %i.ael, label %bb.il, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit, !prof !46

bb.il:                                            ; preds = %bb.ik
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aec)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit unwind label %.loopexit.split-lp1491.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp1491.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.il, %bb.ie
  %lpad.loopexit.split-lp1937 = landingpad { ptr, i32 }
          catch ptr null
  %i.aem = extractvalue { ptr, i32 } %lpad.loopexit.split-lp1937, 0
  call void @__clang_call_terminate(ptr %i.aem) #25
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit: ; preds = %bb.ij, %bb.ik, %bb.il
  %i.aen = load ptr, ptr %i.wi, align 16, !tbaa !57
  %i.aeo = getelementptr inbounds i8, ptr %i.aen, i64 -8 ; 2 uses
  store ptr %i.aeo, ptr %i.wi, align 16, !tbaa !57
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !41 ; 3 uses
  %i.aeq = load i64, ptr %i.aep, align 8          ; 3 uses
  %i.aer = and i64 %i.aeq, 1152920405095219200
  %.not.i.i.i732 = icmp eq i64 %i.aer, 1152920405095219200
  br i1 %.not.i.i.i732, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733, label %bb.im, !prof !46

bb.im:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit
  %i.aes = add i64 %i.aeq, 1152920405095219200
  %i.aet = and i64 %i.aes, 1152920405095219200    ; 2 uses
  %i.aeu = and i64 %i.aeq, -1152920405095219201
  %i.aev = or disjoint i64 %i.aet, %i.aeu
  store i64 %i.aev, ptr %i.aep, align 8
  %i.aew = icmp eq i64 %i.aet, 0
  br i1 %i.aew, label %bb.in, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733, !prof !46

bb.in:                                            ; preds = %bb.im
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aep)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733 unwind label %.loopexit.split-lp1496.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp1496.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.in, %bb.ig
  %lpad.loopexit.split-lp1940 = landingpad { ptr, i32 }
          catch ptr null
  %i.aex = extractvalue { ptr, i32 } %lpad.loopexit.split-lp1940, 0
  call void @__clang_call_terminate(ptr %i.aex) #25
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit733: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit, %bb.im, %bb.in
  %i.aey = load ptr, ptr %49, align 16, !tbaa !65
  %i.aez = load ptr, ptr %i.wb, align 8, !tbaa !65 ; 2 uses
  %i.afa = icmp eq ptr %i.aey, %i.aez
  br i1 %i.afa, label %.critedge, label %.lr.ph1451, !llvm.loop !1023

bb.io:                                            ; preds = %.lr.ph1451, %bb.ii
  %i.afb = icmp eq ptr %i.adx, %i.ady
  br i1 %i.afb, label %.critedge, label %.thread1727

.thread1727:                                      ; preds = %bb.ib, %bb.io
  %.13381450.lcssa1731 = phi i1 [ true, %bb.io ], [ %.03371454, %bb.ib ] ; 3 uses
  %.lcssa1730 = phi ptr [ %i.adw, %bb.io ], [ %i.acs, %bb.ib ]
  %i.afc = getelementptr inbounds i8, ptr %.lcssa1730, i64 -8
  %i.afd = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afc)
          to label %bb.ip unwind label %.loopexit.split-lp1399.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ip:                                            ; preds = %.thread1727
  br i1 %i.afd, label %bb.iq, label %.critedge

bb.iq:                                            ; preds = %bb.ip
  %i.afe = load ptr, ptr %i.wi, align 16, !tbaa !65
  %i.aff = getelementptr inbounds i8, ptr %i.afe, i64 -8
  %i.afg = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aff)
          to label %bb.ir unwind label %.loopexit.split-lp1399.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ir:                                            ; preds = %bb.iq
  br i1 %i.afg, label %bb.is, label %.critedge

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  %i.afh = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.afi = icmp eq i8 %i.afh, 0
  br i1 %i.afi, label %bb.it, label %bb.iw, !prof !39

bb.it:                                            ; preds = %bb.is
  %i.afj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i734 = icmp eq i32 %i.afj, 0
  br i1 %.not.i.i734, label %bb.iw, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.afk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.iv unwind label %.body735.thread ; 3 uses

.body735.thread:                                  ; preds = %bb.iu
  %i.afl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %.loopexit

bb.iv:                                            ; preds = %bb.iu
  store i64 1152920405095219200, ptr %i.afk, align 8
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afm, i8 0, i64 16, i1 false)
  store ptr %i.afk, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %bb.iw

.preheader.preheader:                             ; preds = %bb.iy
  %i.afn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #23
  br label %.loopexit

bb.iw:                                            ; preds = %bb.iv, %bb.it, %bb.is
  %i.afo = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  store ptr %i.afo, ptr %63, align 16, !tbaa !41
  %i.afp = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.afq = icmp eq i8 %i.afp, 0
  br i1 %i.afq, label %bb.ix, label %bb.ja, !prof !39

bb.ix:                                            ; preds = %bb.iw
  %i.afr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i734.1 = icmp eq i32 %i.afr, 0
  br i1 %.not.i.i734.1, label %bb.ja, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.afs = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.iz unwind label %.preheader.preheader ; 3 uses

bb.iz:                                            ; preds = %bb.iy
  store i64 1152920405095219200, ptr %i.afs, align 8
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aft, i8 0, i64 16, i1 false)
  store ptr %i.afs, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.ix, %bb.iw
  %i.afu = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !40
  store ptr %i.afu, ptr %.sroa.gep1268, align 8, !tbaa !41
  %i.afv = load ptr, ptr %i.wb, align 8, !tbaa !65
  %i.afw = getelementptr inbounds i8, ptr %i.afv, i64 -8 ; 2 uses
  %i.afx = load ptr, ptr %63, align 16, !tbaa !41 ; 4 uses
  %i.afy = load ptr, ptr %i.afw, align 8, !tbaa !41
  %.not.i738 = icmp eq ptr %i.afx, %i.afy
  br i1 %.not.i738, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743, label %bb.jb, !prof !46

bb.jb:                                            ; preds = %bb.ja
  %i.afz = load i64, ptr %i.afx, align 8          ; 3 uses
  %i.aga = and i64 %i.afz, 1152920405095219200
  %.not.i.i739 = icmp eq i64 %i.aga, 1152920405095219200
  br i1 %.not.i.i739, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740, label %bb.jc, !prof !46

bb.jc:                                            ; preds = %bb.jb
  %i.agb = add i64 %i.afz, 1152920405095219200
  %i.agc = and i64 %i.agb, 1152920405095219200    ; 2 uses
  %i.agd = and i64 %i.afz, -1152920405095219201
  %i.age = or disjoint i64 %i.agc, %i.agd
  store i64 %i.age, ptr %i.afx, align 8
  %i.agf = icmp eq i64 %i.agc, 0
  br i1 %i.agf, label %bb.jd, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740, !prof !46

bb.jd:                                            ; preds = %bb.jc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afx)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740 unwind label %bb.jp

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740: ; preds = %bb.jd, %bb.jc, %bb.jb
  %i.agg = load ptr, ptr %i.afw, align 8, !tbaa !41 ; 5 uses
  store ptr %i.agg, ptr %63, align 16, !tbaa !41
  %i.agh = load i64, ptr %i.agg, align 8          ; 3 uses
  %i.agi = lshr i64 %i.agh, 40
  %i.agj = trunc nuw nsw i64 %i.agi to i32
  %i.agk = and i32 %i.agj, 1048575                ; 3 uses
  %i.agl = icmp samesign ult i32 %i.agk, 1048574
  br i1 %i.agl, label %bb.je, label %bb.jf, !prof !47

bb.je:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740
  %i.agm = add nuw nsw i32 %i.agk, 1
  %i.agn = zext nneg i32 %i.agm to i64
  %i.ago = shl nuw nsw i64 %i.agn, 40
  %i.agp = and i64 %i.agh, -1152920405095219201
  %i.agq = or i64 %i.ago, %i.agp
  store i64 %i.agq, ptr %i.agg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743

bb.jf:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740
  %i.agr = icmp eq i32 %i.agk, 1048574
  br i1 %i.agr, label %bb.jg, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743, !prof !46

bb.jg:                                            ; preds = %bb.jf
  %i.ags = or i64 %i.agh, 1152920405095219200
  store i64 %i.ags, ptr %i.agg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743 unwind label %bb.jp

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743: ; preds = %bb.jf, %bb.je, %bb.ja, %bb.jg
  %i.agt = load ptr, ptr %63, align 16, !tbaa !41
  store ptr %i.agt, ptr %64, align 8, !tbaa !45
  %i.agu = invoke noundef i64 @_ZN4cvc58internal6theory7strings4Word9getLengthENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %64)
          to label %bb.jh unwind label %bb.jp     ; 3 uses

bb.jh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743
  %i.agv = load ptr, ptr %i.aco, align 16, !tbaa !65
  %i.agw = getelementptr inbounds i8, ptr %i.agv, i64 -8 ; 2 uses
  %i.agx = load ptr, ptr %.sroa.gep1268, align 8, !tbaa !41 ; 4 uses
  %i.agy = load ptr, ptr %i.agw, align 8, !tbaa !41
  %.not.i738.1 = icmp eq ptr %i.agx, %i.agy
  br i1 %.not.i738.1, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1, label %bb.ji, !prof !46

bb.ji:                                            ; preds = %bb.jh
  %i.agz = load i64, ptr %i.agx, align 8          ; 3 uses
  %i.aha = and i64 %i.agz, 1152920405095219200
  %.not.i.i739.1 = icmp eq i64 %i.aha, 1152920405095219200
  br i1 %.not.i.i739.1, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1, label %bb.jj, !prof !46

bb.jj:                                            ; preds = %bb.ji
  %i.ahb = add i64 %i.agz, 1152920405095219200
  %i.ahc = and i64 %i.ahb, 1152920405095219200    ; 2 uses
  %i.ahd = and i64 %i.agz, -1152920405095219201
  %i.ahe = or disjoint i64 %i.ahc, %i.ahd
  store i64 %i.ahe, ptr %i.agx, align 8
  %i.ahf = icmp eq i64 %i.ahc, 0
  br i1 %i.ahf, label %bb.jk, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1, !prof !46

bb.jk:                                            ; preds = %bb.jj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agx)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1 unwind label %bb.jp

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1: ; preds = %bb.jk, %bb.jj, %bb.ji
  %i.ahg = load ptr, ptr %i.agw, align 8, !tbaa !41 ; 5 uses
  store ptr %i.ahg, ptr %.sroa.gep1268, align 8, !tbaa !41
  %i.ahh = load i64, ptr %i.ahg, align 8          ; 3 uses
  %i.ahi = lshr i64 %i.ahh, 40
  %i.ahj = trunc nuw nsw i64 %i.ahi to i32
  %i.ahk = and i32 %i.ahj, 1048575                ; 3 uses
  %i.ahl = icmp samesign ult i32 %i.ahk, 1048574
  br i1 %i.ahl, label %bb.jn, label %bb.jl, !prof !47

bb.jl:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1
  %i.ahm = icmp eq i32 %i.ahk, 1048574
  br i1 %i.ahm, label %bb.jm, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1, !prof !46

bb.jm:                                            ; preds = %bb.jl
  %i.ahn = or i64 %i.ahh, 1152920405095219200
  store i64 %i.ahn, ptr %i.ahg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1 unwind label %bb.jp

bb.jn:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i740.1
  %i.aho = add nuw nsw i32 %i.ahk, 1
  %i.ahp = zext nneg i32 %i.aho to i64
  %i.ahq = shl nuw nsw i64 %i.ahp, 40
  %i.ahr = and i64 %i.ahh, -1152920405095219201
  %i.ahs = or i64 %i.ahq, %i.ahr
  store i64 %i.ahs, ptr %i.ahg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1: ; preds = %bb.jn, %bb.jm, %bb.jl, %bb.jh
  %i.aht = load ptr, ptr %.sroa.gep1268, align 8, !tbaa !41
  store ptr %i.aht, ptr %64, align 8, !tbaa !45
  %i.ahu = invoke noundef i64 @_ZN4cvc58internal6theory7strings4Word9getLengthENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %64)
          to label %bb.jo unwind label %bb.jp     ; 3 uses

bb.jo:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1
  %.not1374 = icmp ugt i64 %i.agu, %i.ahu         ; 6 uses
  %i.ahv = call i64 @llvm.umin.i64(i64 %i.agu, i64 %i.ahu) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #23
  %.val1376 = load ptr, ptr %63, align 16
  %.sroa.gep1268.val1377 = load ptr, ptr %.sroa.gep1268, align 8
  %i.ahw = select i1 %.not1374, ptr %.val1376, ptr %.sroa.gep1268.val1377 ; 2 uses
  br i1 %.03361455, label %bb.jr, label %bb.jq

bb.jp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743.1, %bb.jm, %bb.jk, %bb.jd, %bb.jg, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit743
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.jq:                                            ; preds = %bb.jo
  store ptr %i.ahw, ptr %66, align 8, !tbaa !45
  invoke void @_ZN4cvc58internal6theory7strings4Word6suffixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %65, ptr noundef nonnull align 8 %66, i64 noundef %i.ahv)
          to label %bb.js unwind label %bb.km

bb.jr:                                            ; preds = %bb.jo
  store ptr %i.ahw, ptr %67, align 8, !tbaa !45
  invoke void @_ZN4cvc58internal6theory7strings4Word6prefixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %65, ptr noundef nonnull align 8 %67, i64 noundef %i.ahv)
          to label %bb.js unwind label %bb.km

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %.sroa.gep1268.val1378 = load ptr, ptr %.sroa.gep1268, align 8
  %.val1379 = load ptr, ptr %63, align 16
  %i.ahy = select i1 %.not1374, ptr %.sroa.gep1268.val1378, ptr %.val1379
  %i.ahz = load ptr, ptr %65, align 8, !tbaa !41  ; 4 uses
  %i.aia = icmp eq ptr %i.ahy, %i.ahz
  %i.aib = load i64, ptr %i.ahz, align 8          ; 3 uses
  %i.aic = and i64 %i.aib, 1152920405095219200
  %.not.i.i744 = icmp eq i64 %i.aic, 1152920405095219200
  br i1 %.not.i.i744, label %.critedge589, label %bb.jt, !prof !46

bb.jt:                                            ; preds = %bb.js
  %i.aid = add i64 %i.aib, 1152920405095219200
  %i.aie = and i64 %i.aid, 1152920405095219200    ; 2 uses
  %i.aif = and i64 %i.aib, -1152920405095219201
  %i.aig = or disjoint i64 %i.aie, %i.aif
  store i64 %i.aig, ptr %i.ahz, align 8
  %i.aih = icmp eq i64 %i.aie, 0
  br i1 %i.aih, label %bb.ju, label %.critedge589, !prof !46

bb.ju:                                            ; preds = %bb.jt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahz)
          to label %.critedge589 unwind label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.aii = landingpad { ptr, i32 }
          catch ptr null
  %i.aij = extractvalue { ptr, i32 } %i.aii, 0
  call void @__clang_call_terminate(ptr %i.aij) #25
  unreachable

.critedge589:                                     ; preds = %bb.ju, %bb.jt, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  br i1 %i.aia, label %bb.jw, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757

bb.jw:                                            ; preds = %.critedge589
  %i.aik = call i64 @llvm.umax.i64(i64 %i.agu, i64 %i.ahu)
  %i.ail = sub i64 %i.aik, %i.ahv                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #23
  %.val1384 = load ptr, ptr %63, align 16
  %.sroa.gep1268.val1385 = load ptr, ptr %.sroa.gep1268, align 8
  %i.aim = select i1 %.not1374, ptr %.val1384, ptr %.sroa.gep1268.val1385 ; 2 uses
  br i1 %.03361455, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  store ptr %i.aim, ptr %69, align 8, !tbaa !45
  invoke void @_ZN4cvc58internal6theory7strings4Word6prefixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %68, ptr noundef nonnull align 8 %69, i64 noundef %i.ail)
          to label %bb.jz unwind label %.thread1318

bb.jy:                                            ; preds = %bb.jw
  store ptr %i.aim, ptr %70, align 8, !tbaa !45
  invoke void @_ZN4cvc58internal6theory7strings4Word6suffixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %68, ptr noundef nonnull align 8 %70, i64 noundef %i.ail)
          to label %bb.jz unwind label %.thread1318

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %.val1386 = load ptr, ptr %i.wb, align 8
  %.val1387 = load ptr, ptr %i.wi, align 16
  %i.ain = select i1 %.not1374, ptr %.val1386, ptr %.val1387
  %.val1388 = load ptr, ptr %49, align 16
  %.val1389 = load ptr, ptr %i.vs, align 8
  %i.aio = select i1 %.not1374, ptr %.val1388, ptr %.val1389 ; 2 uses
  %i.aip = ptrtoint ptr %i.ain to i64
  %i.aiq = ptrtoint ptr %i.aio to i64
  %i.air = sub i64 %i.aip, %i.aiq
  %i.ais = getelementptr i8, ptr %i.aio, i64 %i.air
  %i.ait = getelementptr i8, ptr %i.ais, i64 -8   ; 2 uses
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !41 ; 4 uses
  %i.aiv = load ptr, ptr %68, align 8, !tbaa !41
  %.not.i747 = icmp eq ptr %i.aiu, %i.aiv
  br i1 %.not.i747, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752, label %bb.ka, !prof !46

bb.ka:                                            ; preds = %bb.jz
  %i.aiw = load i64, ptr %i.aiu, align 8          ; 3 uses
  %i.aix = and i64 %i.aiw, 1152920405095219200
  %.not.i.i748 = icmp eq i64 %i.aix, 1152920405095219200
  br i1 %.not.i.i748, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749, label %bb.kb, !prof !46

bb.kb:                                            ; preds = %bb.ka
  %i.aiy = add i64 %i.aiw, 1152920405095219200
  %i.aiz = and i64 %i.aiy, 1152920405095219200    ; 2 uses
  %i.aja = and i64 %i.aiw, -1152920405095219201
  %i.ajb = or disjoint i64 %i.aiz, %i.aja
  store i64 %i.ajb, ptr %i.aiu, align 8
  %i.ajc = icmp eq i64 %i.aiz, 0
  br i1 %i.ajc, label %bb.kc, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749, !prof !46

bb.kc:                                            ; preds = %bb.kb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aiu)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749 unwind label %bb.kn

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749: ; preds = %bb.kc, %bb.kb, %bb.ka
  %i.ajd = load ptr, ptr %68, align 8, !tbaa !41  ; 5 uses
  store ptr %i.ajd, ptr %i.ait, align 8, !tbaa !41
  %i.aje = load i64, ptr %i.ajd, align 8          ; 3 uses
  %i.ajf = lshr i64 %i.aje, 40
  %i.ajg = trunc nuw nsw i64 %i.ajf to i32
  %i.ajh = and i32 %i.ajg, 1048575                ; 3 uses
  %i.aji = icmp samesign ult i32 %i.ajh, 1048574
  br i1 %i.aji, label %bb.kd, label %bb.ke, !prof !47

bb.kd:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749
  %i.ajj = add nuw nsw i32 %i.ajh, 1
  %i.ajk = zext nneg i32 %i.ajj to i64
  %i.ajl = shl nuw nsw i64 %i.ajk, 40
  %i.ajm = and i64 %i.aje, -1152920405095219201
  %i.ajn = or i64 %i.ajl, %i.ajm
  store i64 %i.ajn, ptr %i.ajd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752

bb.ke:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i749
  %i.ajo = icmp eq i32 %i.ajh, 1048574
  br i1 %i.ajo, label %bb.kf, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752, !prof !46

bb.kf:                                            ; preds = %bb.ke
  %i.ajp = or i64 %i.aje, 1152920405095219200
  store i64 %i.ajp, ptr %i.ajd, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752 unwind label %bb.kn

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752: ; preds = %bb.ke, %bb.kd, %bb.jz, %bb.kf
  %i.ajq = load ptr, ptr %68, align 8, !tbaa !41  ; 3 uses
  %i.ajr = load i64, ptr %i.ajq, align 8          ; 3 uses
  %i.ajs = and i64 %i.ajr, 1152920405095219200
  %.not.i.i753 = icmp eq i64 %i.ajs, 1152920405095219200
  br i1 %.not.i.i753, label %.critedge591, label %bb.kg, !prof !46

bb.kg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752
  %i.ajt = add i64 %i.ajr, 1152920405095219200
  %i.aju = and i64 %i.ajt, 1152920405095219200    ; 2 uses
  %i.ajv = and i64 %i.ajr, -1152920405095219201
  %i.ajw = or disjoint i64 %i.aju, %i.ajv
  store i64 %i.ajw, ptr %i.ajq, align 8
  %i.ajx = icmp eq i64 %i.aju, 0
  br i1 %i.ajx, label %bb.kh, label %.critedge591, !prof !46

bb.kh:                                            ; preds = %bb.kg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajq)
          to label %.critedge591 unwind label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.ajy = landingpad { ptr, i32 }
          catch ptr null
  %i.ajz = extractvalue { ptr, i32 } %i.ajy, 0
  call void @__clang_call_terminate(ptr %i.ajz) #25
  unreachable

.critedge591:                                     ; preds = %bb.kh, %bb.kg, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit752
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  %.sroa.sel1291.sroa.sel = select i1 %.not1374, ptr %i.wi, ptr %i.wb ; 2 uses
  %i.aka = load ptr, ptr %.sroa.sel1291.sroa.sel, align 8, !tbaa !57
  %i.akb = getelementptr inbounds i8, ptr %i.aka, i64 -8 ; 2 uses
  store ptr %i.akb, ptr %.sroa.sel1291.sroa.sel, align 8, !tbaa !57
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !41 ; 3 uses
  %i.akd = load i64, ptr %i.akc, align 8          ; 3 uses
  %i.ake = and i64 %i.akd, 1152920405095219200
  %.not.i.i.i756 = icmp eq i64 %i.ake, 1152920405095219200
  br i1 %.not.i.i.i756, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757, label %bb.kj, !prof !46

bb.kj:                                            ; preds = %.critedge591
  %i.akf = add i64 %i.akd, 1152920405095219200
  %i.akg = and i64 %i.akf, 1152920405095219200    ; 2 uses
  %i.akh = and i64 %i.akd, -1152920405095219201
  %i.aki = or disjoint i64 %i.akg, %i.akh
  store i64 %i.aki, ptr %i.akc, align 8
  %i.akj = icmp eq i64 %i.akg, 0
  br i1 %i.akj, label %bb.kk, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757, !prof !46

bb.kk:                                            ; preds = %bb.kj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akc)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757 unwind label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.akk = landingpad { ptr, i32 }
          catch ptr null
  %i.akl = extractvalue { ptr, i32 } %i.akk, 0
  call void @__clang_call_terminate(ptr %i.akl) #25
  unreachable

bb.km:                                            ; preds = %bb.jr, %bb.jq
  %i.akm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  br label %.loopexit.loopexit

.thread1318:                                      ; preds = %bb.jx, %bb.jy
  %i.akn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.kn:                                            ; preds = %bb.kc, %bb.kf
  %i.ako = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #23
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %.thread1318
  %.pn549.pn1316 = phi { ptr, i32 } [ %i.ako, %bb.kn ], [ %i.akn, %.thread1318 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  br label %.loopexit.loopexit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757: ; preds = %bb.kk, %bb.kj, %.critedge591, %.critedge589
  %.2339 = phi i1 [ %.13381450.lcssa1731, %.critedge589 ], [ true, %.critedge591 ], [ true, %bb.kj ], [ true, %bb.kk ]
  %i.akp = load ptr, ptr %i.acp, align 8, !tbaa !41 ; 3 uses
  %i.akq = load i64, ptr %i.akp, align 8          ; 3 uses
  %i.akr = and i64 %i.akq, 1152920405095219200
  %.not.i.i758 = icmp eq i64 %i.akr, 1152920405095219200
  br i1 %.not.i.i758, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit760, label %bb.kp, !prof !46

bb.kp:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757
  %i.aks = add i64 %i.akq, 1152920405095219200
  %i.akt = and i64 %i.aks, 1152920405095219200    ; 2 uses
  %i.aku = and i64 %i.akq, -1152920405095219201
  %i.akv = or disjoint i64 %i.akt, %i.aku
  store i64 %i.akv, ptr %i.akp, align 8
  %i.akw = icmp eq i64 %i.akt, 0
  br i1 %i.akw, label %bb.kq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit760, !prof !46

bb.kq:                                            ; preds = %bb.kp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit760 unwind label %bb.kr

bb.kr:                                            ; preds = %bb.kt, %bb.kq
  %i.akx = landingpad { ptr, i32 }
          catch ptr null
  %i.aky = extractvalue { ptr, i32 } %i.akx, 0
  call void @__clang_call_terminate(ptr %i.aky) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit760: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit757, %bb.kp, %bb.kq
  %i.akz = load ptr, ptr %63, align 16, !tbaa !41 ; 3 uses
  %i.ala = load i64, ptr %i.akz, align 8          ; 3 uses
  %i.alb = and i64 %i.ala, 1152920405095219200
  %.not.i.i758.1 = icmp eq i64 %i.alb, 1152920405095219200
  br i1 %.not.i.i758.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit760.1, label %bb.ks, !prof !46

bb.ks:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit760
  %i.alc = add i64 %i.ala, 1152920405095219200
  %i.ald = and i64 %i.alc, 1152920405095219200    ; 2 uses
  %i.ale = and i64 %i.ala, -1152920405095219201
  %i.alf = or disjoint i64 %i.ald, %i.ale
  store i64 %i.alf, ptr %i.akz, align 8
  %i.alg = icmp eq i64 %i.ald, 0
  br i1 %i.alg, label %bb.kt, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit760.1, !prof !46
end_hunk_0
