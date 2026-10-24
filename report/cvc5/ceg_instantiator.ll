Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/ceg_instantiator?download=true
inline.NumInlined: 6626
inline.NumDeleted: 2316
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers15CegInstantiator25constructInstantiationIncENS0_12NodeTemplateILb1EEES5_RNS2_14TermPropertiesERNS2_10SolvedFormEb:bb.a

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit480: ; preds = %_ZN4cvc58internal6theory11quantifiers14TermPropertiesD2Ev.exit._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit480_crit_edge, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt13unordered_setIS3_St4hashIS3_ESt8equal_toIS3_ESaIS3_EES6_S8_SaISt4pairIKS3_SA_EEEixERSC_.exit313
  %i.vh = phi ptr [ %.pre, %_ZN4cvc58internal6theory11quantifiers14TermPropertiesD2Ev.exit._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit480_crit_edge ], [ %.pre809, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt13unordered_setIS3_St4hashIS3_ESt8equal_toIS3_ESaIS3_EES6_S8_SaISt4pairIKS3_SA_EEEixERSC_.exit313 ] ; 2 uses
  %.2 = phi i1 [ %.1, %_ZN4cvc58internal6theory11quantifiers14TermPropertiesD2Ev.exit._ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit480_crit_edge ], [ %.064784, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt13unordered_setIS3_St4hashIS3_ESt8equal_toIS3_ESaIS3_EES6_S8_SaISt4pairIKS3_SA_EEEixERSC_.exit313 ] ; 2 uses
  %i.vi = add i32 %storemerge777, 1               ; 2 uses
  %i.vj = zext i32 %i.vi to i64                   ; 2 uses
  %i.vk = load ptr, ptr %i.ij, align 8, !tbaa !100
  %i.vl = ptrtoint ptr %i.vk to i64
  %i.vm = ptrtoint ptr %i.vh to i64
  %i.vn = sub i64 %i.vl, %i.vm
  %i.vo = ashr exact i64 %i.vn, 3
  %i.vp = icmp ugt i64 %i.vo, %i.vj
  br i1 %i.vp, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit306, label %._crit_edge, !llvm.loop !744

._crit_edge:                                      ; preds = %_ZN4cvc58internal6theory11quantifiers14TermPropertiesD2Ev.exit, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit480
  %.3 = phi i1 [ %.2, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit480 ], [ %.1, %_ZN4cvc58internal6theory11quantifiers14TermPropertiesD2Ev.exit ]
  br i1 %.3, label %._crit_edge.thread, label %.thread

._crit_edge.thread:                               ; preds = %bb.az, %._crit_edge
  %i.vq = load ptr, ptr %1, align 8, !tbaa !47    ; 5 uses
  store ptr %i.vq, ptr %43, align 8, !tbaa !47
  %i.vr = load i64, ptr %i.vq, align 8            ; 3 uses
  %i.vs = lshr i64 %i.vr, 40
  %i.vt = trunc nuw nsw i64 %i.vs to i32
  %i.vu = and i32 %i.vt, 1048575                  ; 3 uses
  %i.vv = icmp samesign ult i32 %i.vu, 1048574
  br i1 %i.vv, label %bb.fd, label %bb.fe, !prof !48

bb.fd:                                            ; preds = %._crit_edge.thread
  %i.vw = add nuw nsw i32 %i.vu, 1
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = shl nuw nsw i64 %i.vx, 40
  %i.vz = and i64 %i.vr, -1152920405095219201
  %i.wa = or i64 %i.vy, %i.vz
  store i64 %i.wa, ptr %i.vq, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit485

bb.fe:                                            ; preds = %._crit_edge.thread
  %i.wb = icmp eq i32 %i.vu, 1048574
  br i1 %i.wb, label %bb.ff, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit485, !prof !49

bb.ff:                                            ; preds = %bb.fe
  %i.wc = or i64 %i.vr, 1152920405095219200
  store i64 %i.wc, ptr %i.vq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit485 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit485: ; preds = %bb.fe, %bb.fd, %bb.ff
  %i.wd = load ptr, ptr %2, align 8, !tbaa !47    ; 5 uses
  store ptr %i.wd, ptr %44, align 8, !tbaa !47
  %i.we = load i64, ptr %i.wd, align 8            ; 3 uses
  %i.wf = lshr i64 %i.we, 40
  %i.wg = trunc nuw nsw i64 %i.wf to i32
  %i.wh = and i32 %i.wg, 1048575                  ; 3 uses
  %i.wi = icmp samesign ult i32 %i.wh, 1048574
  br i1 %i.wi, label %bb.fg, label %bb.fh, !prof !48

bb.fg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit485
  %i.wj = add nuw nsw i32 %i.wh, 1
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = shl nuw nsw i64 %i.wk, 40
  %i.wm = and i64 %i.we, -1152920405095219201
  %i.wn = or i64 %i.wl, %i.wm
  store i64 %i.wn, ptr %i.wd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit487

bb.fh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit485
  %i.wo = icmp eq i32 %i.wh, 1048574
  br i1 %i.wo, label %bb.fi, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit487, !prof !49

bb.fi:                                            ; preds = %bb.fh
  %i.wp = or i64 %i.we, 1152920405095219200
  store i64 %i.wp, ptr %i.wd, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit487 unwind label %bb.fv

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit487: ; preds = %bb.fh, %bb.fg, %bb.fi
  invoke void @_ZN4cvc58internal6theory11quantifiers10SolvedForm9push_backENS0_12NodeTemplateILb1EEES5_RNS2_14TermPropertiesE(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 %43, ptr noundef nonnull align 8 %44, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.fj unwind label %bb.fw

bb.fj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit487
  %i.wq = load ptr, ptr %44, align 8, !tbaa !47   ; 3 uses
  %i.wr = load i64, ptr %i.wq, align 8            ; 3 uses
  %i.ws = and i64 %i.wr, 1152920405095219200
  %.not.i.i488 = icmp eq i64 %i.ws, 1152920405095219200
  br i1 %.not.i.i488, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit490, label %bb.fk, !prof !49

bb.fk:                                            ; preds = %bb.fj
  %i.wt = add i64 %i.wr, 1152920405095219200
  %i.wu = and i64 %i.wt, 1152920405095219200      ; 2 uses
  %i.wv = and i64 %i.wr, -1152920405095219201
  %i.ww = or disjoint i64 %i.wu, %i.wv
  store i64 %i.ww, ptr %i.wq, align 8
  %i.wx = icmp eq i64 %i.wu, 0
  br i1 %i.wx, label %bb.fl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit490, !prof !49

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit490 unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.wy = landingpad { ptr, i32 }
          catch ptr null
  %i.wz = extractvalue { ptr, i32 } %i.wy, 0
  call void @__clang_call_terminate(ptr %i.wz) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit490: ; preds = %bb.fj, %bb.fk, %bb.fl
  %i.xa = load ptr, ptr %43, align 8, !tbaa !47   ; 3 uses
  %i.xb = load i64, ptr %i.xa, align 8            ; 3 uses
  %i.xc = and i64 %i.xb, 1152920405095219200
  %.not.i.i491 = icmp eq i64 %i.xc, 1152920405095219200
  br i1 %.not.i.i491, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit493, label %bb.fn, !prof !49

bb.fn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit490
  %i.xd = add i64 %i.xb, 1152920405095219200
  %i.xe = and i64 %i.xd, 1152920405095219200      ; 2 uses
  %i.xf = and i64 %i.xb, -1152920405095219201
  %i.xg = or disjoint i64 %i.xe, %i.xf
  store i64 %i.xg, ptr %i.xa, align 8
  %i.xh = icmp eq i64 %i.xe, 0
  br i1 %i.xh, label %bb.fo, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit493, !prof !49

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit493 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.xi = landingpad { ptr, i32 }
          catch ptr null
  %i.xj = extractvalue { ptr, i32 } %i.xi, 0
  call void @__clang_call_terminate(ptr %i.xj) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit493: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit490, %bb.fn, %bb.fo
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !73 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %.not10.i.i.i.i497 = icmp eq ptr %i.xm, null
  br i1 %.not10.i.i.i.i497, label %.critedge.i507, label %.lr.ph.i.i.i.i498

.lr.ph.i.i.i.i498:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit493
  %i.xo = load ptr, ptr %1, align 8, !tbaa !47
  %i.xp = load i64, ptr %i.xo, align 8
  %i.xq = and i64 %i.xp, 1099511627775            ; 2 uses
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %.lr.ph.i.i.i.i498
  %.012.i.i.i.i499 = phi ptr [ %i.xm, %.lr.ph.i.i.i.i498 ], [ %.1.i.i.i.i504, %bb.fq ] ; 3 uses
  %.0811.i.i.i.i500 = phi ptr [ %i.xn, %.lr.ph.i.i.i.i498 ], [ %.19.i.i.i.i501, %bb.fq ]
  %i.xr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i499, i64 32
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !47
  %i.xt = load i64, ptr %i.xs, align 8
  %i.xu = and i64 %i.xt, 1099511627775
  %i.xv = icmp samesign ult i64 %i.xu, %i.xq      ; 2 uses
  %.19.i.i.i.i501 = select i1 %i.xv, ptr %.0811.i.i.i.i500, ptr %.012.i.i.i.i499 ; 6 uses
  %.1.in.v.i.i.i.i502 = select i1 %i.xv, i64 24, i64 16
  %.1.in.i.i.i.i503 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i499, i64 %.1.in.v.i.i.i.i502
  %.1.i.i.i.i504 = load ptr, ptr %.1.in.i.i.i.i503, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i.i505 = icmp eq ptr %.1.i.i.i.i504, null
  br i1 %.not.i.i.i.i505, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i, label %bb.fq, !llvm.loop !16

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i: ; preds = %bb.fq
  %i.xw = icmp eq ptr %.19.i.i.i.i501, %i.xn
  br i1 %i.xw, label %.critedge.i507, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i
  %i.xx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i501, i64 32
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !47
  %i.xz = load i64, ptr %i.xy, align 8
  %i.ya = and i64 %i.xz, 1099511627775
  %i.yb = icmp samesign ult i64 %i.xq, %i.ya
  br i1 %i.yb, label %.critedge.i507, label %bb.fs

.critedge.i507:                                   ; preds = %bb.fr, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit493
  %.08.lcssa.i.i.i11.i508 = phi ptr [ %.19.i.i.i.i501, %bb.fr ], [ %.19.i.i.i.i501, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEE11lower_boundERS7_.exit.i ], [ %i.xn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit493 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %1, ptr %6, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.yc = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.xk, ptr %.08.lcssa.i.i.i11.i508, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc509 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc509:                                        ; preds = %.critedge.i507
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.fs

bb.fs:                                            ; preds = %.noexc509, %bb.fr
  %.sroa.06.0.i506 = phi ptr [ %i.yc, %.noexc509 ], [ %.19.i.i.i.i501, %bb.fr ]
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i506, i64 40
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !210
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !208
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !208
  %i.yj = icmp eq ptr %i.yg, %i.yi
  %i.yk = zext i1 %i.yj to i32
  %i.yl = add i32 %i.ye, %i.yk
  %i.ym = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers15CegInstantiator22constructInstantiationERNS2_10SolvedFormEj(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(120) %4, i32 noundef %i.yl)
          to label %bb.ft unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ft:                                            ; preds = %bb.fs
  %.not = xor i1 %i.ym, true
  %or.cond = or i1 %5, %.not
  br i1 %or.cond, label %bb.fu, label %45

bb.fu:                                            ; preds = %bb.ft
  invoke void @_ZN4cvc58internal6theory11quantifiers10SolvedForm8pop_backERNS2_14TermPropertiesE(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fv:                                            ; preds = %bb.fi
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit487
  %i.yo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #23
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.pn111 = phi { ptr, i32 } [ %i.yo, %bb.fw ], [ %i.yn, %bb.fv ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #23
  br label %.loopexit.split-lp

45:                                               ; preds = %bb.ft, %bb.fu
  %.not2 = xor i1 %i.ym, true
  %or.cond4 = or i1 %5, %.not2
  br i1 %or.cond4, label %.thread, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %45
  %.pre810 = load ptr, ptr %37, align 8, !tbaa !99
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %37, i64 8
  %.pre811 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100
  br label %.loopexit

.thread:                                          ; preds = %._crit_edge, %45
  %i.yp = phi i1 [ %i.ym, %45 ], [ false, %._crit_edge ] ; 2 uses
  %i.yq = load ptr, ptr %i.hv, align 8, !tbaa !74 ; 2 uses
  %.not742788 = icmp eq ptr %i.yq, %i.ht
  br i1 %.not742788, label %._crit_edge790, label %.lr.ph

._crit_edge790:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit521, %.thread
  %i.yr = load ptr, ptr %i.ia, align 8, !tbaa !74 ; 2 uses
  %.not743791 = icmp eq ptr %i.yr, %i.hy
  br i1 %.not743791, label %.preheader, label %.lr.ph794

.lr.ph794:                                        ; preds = %._crit_edge790
  %i.ys = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.ge

.lr.ph:                                           ; preds = %.thread, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit521
  %.sroa.0684.0789 = phi ptr [ %i.zv, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit521 ], [ %i.yq, %.thread ] ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.0684.0789, i64 32
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0684.0789, i64 40 ; 2 uses
  %i.yv = load i32, ptr %i.yt, align 8, !tbaa !467
  %i.yw = sext i32 %i.yv to i64
  %i.yx = load ptr, ptr %i.ii, align 8, !tbaa !99
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %i.yw ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !47 ; 4 uses
  %i.za = load ptr, ptr %i.yu, align 8, !tbaa !47
  %.not.i516 = icmp eq ptr %i.yz, %i.za
  br i1 %.not.i516, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit521, label %bb.fy, !prof !49

bb.fy:                                            ; preds = %.lr.ph
  %i.zb = load i64, ptr %i.yz, align 8            ; 3 uses
  %i.zc = and i64 %i.zb, 1152920405095219200
  %.not.i.i517 = icmp eq i64 %i.zc, 1152920405095219200
  br i1 %.not.i.i517, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i518, label %bb.fz, !prof !49

bb.fz:                                            ; preds = %bb.fy
  %i.zd = add i64 %i.zb, 1152920405095219200
  %i.ze = and i64 %i.zd, 1152920405095219200      ; 2 uses
  %i.zf = and i64 %i.zb, -1152920405095219201
  %i.zg = or disjoint i64 %i.ze, %i.zf
  store i64 %i.zg, ptr %i.yz, align 8
  %i.zh = icmp eq i64 %i.ze, 0
  br i1 %i.zh, label %bb.ga, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i518, !prof !49

bb.ga:                                            ; preds = %bb.fz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yz)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i518 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i518: ; preds = %bb.ga, %bb.fz, %bb.fy
  %i.zi = load ptr, ptr %i.yu, align 8, !tbaa !47 ; 5 uses
  store ptr %i.zi, ptr %i.yy, align 8, !tbaa !47
  %i.zj = load i64, ptr %i.zi, align 8            ; 3 uses
  %i.zk = lshr i64 %i.zj, 40
  %i.zl = trunc nuw nsw i64 %i.zk to i32
  %i.zm = and i32 %i.zl, 1048575                  ; 3 uses
  %i.zn = icmp samesign ult i32 %i.zm, 1048574
  br i1 %i.zn, label %bb.gb, label %bb.gc, !prof !48

bb.gb:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i518
  %i.zo = add nuw nsw i32 %i.zm, 1
  %i.zp = zext nneg i32 %i.zo to i64
  %i.zq = shl nuw nsw i64 %i.zp, 40
  %i.zr = and i64 %i.zj, -1152920405095219201
  %i.zs = or i64 %i.zq, %i.zr
  store i64 %i.zs, ptr %i.zi, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit521

bb.gc:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i518
  %i.zt = icmp eq i32 %i.zm, 1048574
  br i1 %i.zt, label %bb.gd, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit521, !prof !49

bb.gd:                                            ; preds = %bb.gc
  %i.zu = or i64 %i.zj, 1152920405095219200
  store i64 %i.zu, ptr %i.zi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit521 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit521: ; preds = %bb.gc, %bb.gb, %.lr.ph, %bb.gd
  %i.zv = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0684.0789) #26 ; 2 uses
  %.not742 = icmp eq ptr %i.zv, %i.ht
  br i1 %.not742, label %._crit_edge790, label %.lr.ph, !llvm.loop !745

.preheader:                                       ; preds = %_ZN4cvc58internal6theory11quantifiers14TermPropertiesaSERKS3_.exit527, %._crit_edge790
  %i.zw = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !100 ; 2 uses
  %i.zy = load ptr, ptr %37, align 8, !tbaa !99   ; 2 uses
  %.not798 = icmp eq ptr %i.zx, %i.zy
  br i1 %.not798, label %.loopexit, label %.lr.ph796

.lr.ph796:                                        ; preds = %.preheader
  %i.zz = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  br label %bb.gl

bb.ge:                                            ; preds = %.lr.ph794, %_ZN4cvc58internal6theory11quantifiers14TermPropertiesaSERKS3_.exit527
  %.sroa.0679.0792 = phi ptr [ %i.yr, %.lr.ph794 ], [ %i.abg, %_ZN4cvc58internal6theory11quantifiers14TermPropertiesaSERKS3_.exit527 ] ; 4 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.0679.0792, i64 32
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !469
  %i.aac = sext i32 %i.aab to i64
  %i.aad = load ptr, ptr %i.ys, align 8, !tbaa !455
  %i.aae = getelementptr inbounds nuw [24 x i8], ptr %i.aad, i64 %i.aac ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.0679.0792, i64 48
  %i.aag = load i32, ptr %i.aaf, align 8, !tbaa !450
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i32 %i.aag, ptr %i.aah, align 8, !tbaa !450
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 16 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.0679.0792, i64 56 ; 2 uses
  %i.aak = load ptr, ptr %i.aai, align 8, !tbaa !47 ; 4 uses
  %i.aal = load ptr, ptr %i.aaj, align 8, !tbaa !47
  %.not.i.i522 = icmp eq ptr %i.aak, %i.aal
  br i1 %.not.i.i522, label %_ZN4cvc58internal6theory11quantifiers14TermPropertiesaSERKS3_.exit527, label %bb.gf, !prof !49

bb.gf:                                            ; preds = %bb.ge
  %i.aam = load i64, ptr %i.aak, align 8          ; 3 uses
  %i.aan = and i64 %i.aam, 1152920405095219200
  %.not.i.i.i523 = icmp eq i64 %i.aan, 1152920405095219200
  br i1 %.not.i.i.i523, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i524, label %bb.gg, !prof !49

bb.gg:                                            ; preds = %bb.gf
  %i.aao = add i64 %i.aam, 1152920405095219200
  %i.aap = and i64 %i.aao, 1152920405095219200    ; 2 uses
  %i.aaq = and i64 %i.aam, -1152920405095219201
  %i.aar = or disjoint i64 %i.aap, %i.aaq
  store i64 %i.aar, ptr %i.aak, align 8
  %i.aas = icmp eq i64 %i.aap, 0
  br i1 %i.aas, label %bb.gh, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i524, !prof !49

bb.gh:                                            ; preds = %bb.gg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aak)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i524 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i524: ; preds = %bb.gh, %bb.gg, %bb.gf
  %i.aat = load ptr, ptr %i.aaj, align 8, !tbaa !47 ; 5 uses
  store ptr %i.aat, ptr %i.aai, align 8, !tbaa !47
  %i.aau = load i64, ptr %i.aat, align 8          ; 3 uses
  %i.aav = lshr i64 %i.aau, 40
  %i.aaw = trunc nuw nsw i64 %i.aav to i32
  %i.aax = and i32 %i.aaw, 1048575                ; 3 uses
  %i.aay = icmp samesign ult i32 %i.aax, 1048574
  br i1 %i.aay, label %bb.gi, label %bb.gj, !prof !48

bb.gi:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i524
  %i.aaz = add nuw nsw i32 %i.aax, 1
  %i.aba = zext nneg i32 %i.aaz to i64
  %i.abb = shl nuw nsw i64 %i.aba, 40
  %i.abc = and i64 %i.aau, -1152920405095219201
  %i.abd = or i64 %i.abb, %i.abc
  store i64 %i.abd, ptr %i.aat, align 8
  br label %_ZN4cvc58internal6theory11quantifiers14TermPropertiesaSERKS3_.exit527

bb.gj:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i524
  %i.abe = icmp eq i32 %i.aax, 1048574
  br i1 %i.abe, label %bb.gk, label %_ZN4cvc58internal6theory11quantifiers14TermPropertiesaSERKS3_.exit527, !prof !49

bb.gk:                                            ; preds = %bb.gj
  %i.abf = or i64 %i.aau, 1152920405095219200
  store i64 %i.abf, ptr %i.aat, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aat)
          to label %_ZN4cvc58internal6theory11quantifiers14TermPropertiesaSERKS3_.exit527 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal6theory11quantifiers14TermPropertiesaSERKS3_.exit527: ; preds = %bb.gj, %bb.gi, %bb.ge, %bb.gk
  %i.abg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0679.0792) #26 ; 2 uses
  %.not743 = icmp eq ptr %i.abg, %i.hy
  br i1 %.not743, label %.preheader, label %bb.ge, !llvm.loop !746

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gd, %bb.ga, %bb.gh, %bb.gk, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit306, %bb.bd, %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, %bb.fs, %bb.fu, %bb.ff, %.critedge.i507
  %lpad.loopexit.split-lp929 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.gl:                                            ; preds = %.lr.ph796, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit
  %.0795 = phi i32 [ 0, %.lr.ph796 ], [ %i.abt, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit ]
  %i.abh = load ptr, ptr %i.zz, align 8, !tbaa !100
  %i.abi = getelementptr inbounds i8, ptr %i.abh, i64 -8 ; 2 uses
  store ptr %i.abi, ptr %i.zz, align 8, !tbaa !100
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !47 ; 3 uses
  %i.abk = load i64, ptr %i.abj, align 8          ; 3 uses
  %i.abl = and i64 %i.abk, 1152920405095219200
  %.not.i.i.i528 = icmp eq i64 %i.abl, 1152920405095219200
  br i1 %.not.i.i.i528, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit, label %bb.gm, !prof !49

bb.gm:                                            ; preds = %bb.gl
  %i.abm = add i64 %i.abk, 1152920405095219200
  %i.abn = and i64 %i.abm, 1152920405095219200    ; 2 uses
  %i.abo = and i64 %i.abk, -1152920405095219201
  %i.abp = or disjoint i64 %i.abn, %i.abo
  store i64 %i.abp, ptr %i.abj, align 8
  %i.abq = icmp eq i64 %i.abn, 0
  br i1 %i.abq, label %bb.gn, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit, !prof !49

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abj)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.abr = landingpad { ptr, i32 }
          catch ptr null
  %i.abs = extractvalue { ptr, i32 } %i.abr, 0
  call void @__clang_call_terminate(ptr %i.abs) #25
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8pop_backEv.exit: ; preds = %bb.gl, %bb.gm, %bb.gn
  %i.abt = add i32 %.0795, 1                      ; 2 uses
  %i.abu = zext i32 %i.abt to i64
end_hunk_0
