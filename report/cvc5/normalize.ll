inline.NumInlined: 4351
inline.NumDeleted: 1781
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineE:bb.a
  store ptr %i.wq, ptr %26, align 8, !tbaa !166
  %i.wr = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  store i64 1, ptr %i.wr, align 8, !tbaa !168
  %i.ws = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %26, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ws, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.wt, align 8, !tbaa !28
  %i.wu = getelementptr inbounds nuw i8, ptr %26, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wu, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %i.wv = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  store ptr %i.wv, ptr %27, align 8, !tbaa !391
  %i.ww = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  store i64 1, ptr %i.ww, align 8, !tbaa !393
  %i.wx = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %27, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.wy, align 8, !tbaa !28
  %i.wz = getelementptr inbounds nuw i8, ptr %27, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wz, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 0, ptr %i.c, align 1, !tbaa !42
  %i.xa = load ptr, ptr %10, align 8, !tbaa !339  ; 4 uses
  %i.xb = load ptr, ptr %i.hz, align 8, !tbaa !339 ; 2 uses
  %.not476669 = icmp eq ptr %i.xa, %i.xb
  br i1 %.not476669, label %._crit_edge678, label %.lr.ph672

.lr.ph672:                                        ; preds = %bb.dy
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ea

._crit_edge673:                                   ; preds = %._crit_edge668
  %.pre774.a = load ptr, ptr %10, align 8, !tbaa !339 ; 3 uses
  %.pre775.a = load ptr, ptr %i.hz, align 8, !tbaa !339 ; 3 uses
  %.not477674 = icmp eq ptr %.pre774.a, %.pre775.a
  br i1 %.not477674, label %._crit_edge678, label %.lr.ph677

.lr.ph677:                                        ; preds = %._crit_edge673
  %i.xd = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.ep

bb.dz:                                            ; preds = %bb.dx, %._crit_edge663
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.ea:                                            ; preds = %.lr.ph672, %._crit_edge668
  %.sroa.0408.0670 = phi ptr [ %i.xa, %.lr.ph672 ], [ %i.xi, %._crit_edge668 ] ; 3 uses
  %i.xf = load ptr, ptr %.sroa.0408.0670, align 8, !tbaa !356 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.0408.0670, i64 8
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !356 ; 2 uses
  %.not482664 = icmp eq ptr %i.xf, %i.xh
  br i1 %.not482664, label %._crit_edge668, label %.lr.ph667

._crit_edge668:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.ea
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.0408.0670, i64 24 ; 2 uses
  %.not476.a = icmp eq ptr %i.xi, %i.xb
  br i1 %.not476.a, label %._crit_edge673, label %bb.ea

.lr.ph667:                                        ; preds = %bb.ea, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.sroa.0404.0665 = phi ptr [ %i.yr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %i.xf, %bb.ea ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.xj = load ptr, ptr %.sroa.0404.0665, align 8, !tbaa !161
  %i.xk = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.eb unwind label %bb.em

bb.eb:                                            ; preds = %.lr.ph667
  %i.xl = load ptr, ptr %i.xc, align 8, !tbaa !394
  invoke void @_ZN4cvc58internal13preprocessing6passes6renameERKNS0_12NodeTemplateILb1EEERSt13unordered_mapIS4_S4_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S4_EEESG_RS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_S8_ISM_ESA_ISM_ESaISC_IKSM_SM_EEEPNS0_11NodeManagerEPNS1_24PreprocessingPassContextERNS0_26NormalizeSortNodeConverterERb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.xj, ptr noundef nonnull align 8 dereferenceable(56) %25, ptr noundef nonnull align 8 dereferenceable(56) %26, ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef %i.xk, ptr noundef %i.xl, ptr noundef nonnull align 8 dereferenceable(304) %24, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.ec unwind label %bb.em

bb.ec:                                            ; preds = %bb.eb
  %i.xm = load ptr, ptr %.sroa.0404.0665, align 8, !tbaa !161 ; 2 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !35 ; 4 uses
  %i.xo = load ptr, ptr %28, align 8, !tbaa !35   ; 9 uses
  %.not.i212 = icmp eq ptr %i.xn, %i.xo
  br i1 %.not.i212, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.ed, !prof !39

bb.ed:                                            ; preds = %bb.ec
  %i.xp = load i64, ptr %i.xn, align 8            ; 3 uses
  %i.xq = and i64 %i.xp, 1152920405095219200
  %.not.i.i213 = icmp eq i64 %i.xq, 1152920405095219200
  br i1 %.not.i.i213, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214, label %bb.ee, !prof !39

bb.ee:                                            ; preds = %bb.ed
  %i.xr = add i64 %i.xp, 1152920405095219200
  %i.xs = and i64 %i.xr, 1152920405095219200      ; 2 uses
  %i.xt = and i64 %i.xp, -1152920405095219201
  %i.xu = or disjoint i64 %i.xs, %i.xt
  store i64 %i.xu, ptr %i.xn, align 8
  %i.xv = icmp eq i64 %i.xs, 0
  br i1 %i.xv, label %bb.ef, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214, !prof !39

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xn)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214 unwind label %bb.en

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214: ; preds = %bb.ef, %bb.ee, %bb.ed
  store ptr %i.xo, ptr %i.xm, align 8, !tbaa !35
  %i.xw = load i64, ptr %i.xo, align 8            ; 3 uses
  %i.xx = lshr i64 %i.xw, 40
  %i.xy = trunc nuw nsw i64 %i.xx to i32
  %i.xz = and i32 %i.xy, 1048575                  ; 3 uses
  %i.ya = icmp samesign ult i32 %i.xz, 1048574
  br i1 %i.ya, label %bb.eg, label %bb.eh, !prof !38

bb.eg:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214
  %i.yb = add nuw nsw i32 %i.xz, 1
  %i.yc = zext nneg i32 %i.yb to i64
  %i.yd = shl nuw nsw i64 %i.yc, 40
  %i.ye = and i64 %i.xw, -1152920405095219201
  %i.yf = or i64 %i.yd, %i.ye
  store i64 %i.yf, ptr %i.xo, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.eh:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214
  %i.yg = icmp eq i32 %i.xz, 1048574
  br i1 %i.yg, label %bb.ei, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !39

bb.ei:                                            ; preds = %bb.eh
  %i.yh = or i64 %i.xw, 1152920405095219200
  store i64 %i.yh, ptr %i.xo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.en

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.eh, %bb.eg, %bb.ec, %bb.ei
  %i.yi = load i64, ptr %i.xo, align 8            ; 3 uses
  %i.yj = and i64 %i.yi, 1152920405095219200
  %.not.i.i217 = icmp eq i64 %i.yj, 1152920405095219200
  br i1 %.not.i.i217, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ej, !prof !39

bb.ej:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.yk = add i64 %i.yi, 1152920405095219200
  %i.yl = and i64 %i.yk, 1152920405095219200      ; 2 uses
  %i.ym = and i64 %i.yi, -1152920405095219201
  %i.yn = or disjoint i64 %i.yl, %i.ym
  store i64 %i.yn, ptr %i.xo, align 8
  %i.yo = icmp eq i64 %i.yl, 0
  br i1 %i.yo, label %bb.ek, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !39

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.yp = landingpad { ptr, i32 }
          catch ptr null
  %i.yq = extractvalue { ptr, i32 } %i.yp, 0
  call void @__clang_call_terminate(ptr %i.yq) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.ej, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.0404.0665, i64 8 ; 2 uses
  %.not482 = icmp eq ptr %i.yr, %i.xh
  br i1 %.not482, label %._crit_edge668, label %.lr.ph667

bb.em:                                            ; preds = %bb.eb, %.lr.ph667
  %i.ys = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.en:                                            ; preds = %bb.ei, %bb.ef
  %i.yt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #23
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.pn110 = phi { ptr, i32 } [ %i.yt, %bb.en ], [ %i.ys, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body376

._crit_edge678.loopexit:                          ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit"
  %.pre777.pre = load ptr, ptr %10, align 8, !tbaa !339
  %.pre779.pre = load ptr, ptr %i.hz, align 8, !tbaa !339
  br label %._crit_edge678

._crit_edge678:                                   ; preds = %bb.dy, %._crit_edge678.loopexit, %._crit_edge673
  %.pre779 = phi ptr [ %.pre779.pre, %._crit_edge678.loopexit ], [ %.pre775.a, %._crit_edge673 ], [ %i.xa, %bb.dy ] ; 3 uses
  %.pre777 = phi ptr [ %.pre777.pre, %._crit_edge678.loopexit ], [ %.pre774.a, %._crit_edge673 ], [ %i.xa, %bb.dy ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  %i.yu = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 2 uses
  store ptr %i.yu, ptr %29, align 8, !tbaa !166
  %i.yv = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  store i64 1, ptr %i.yv, align 8, !tbaa !168
  %i.yw = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %29, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.yx, align 8, !tbaa !28
  %i.yy = getelementptr inbounds nuw i8, ptr %29, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yy, i8 0, i64 16, i1 false)
  %i.yz = load i8, ptr %i.c, align 1, !tbaa !42, !range !66, !noundef !67
  %i.za = trunc nuw i8 %i.yz to i1
  %.not478684 = icmp ne ptr %.pre777, %.pre779
  %or.cond.not = select i1 %i.za, i1 %.not478684, i1 false
  br i1 %or.cond.not, label %.lr.ph687, label %.loopexit

bb.ep:                                            ; preds = %.lr.ph677, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit"
  %.sroa.0400.0675 = phi ptr [ %.pre774.a, %.lr.ph677 ], [ %i.aez, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit" ] ; 3 uses
  %i.zb = load ptr, ptr %.sroa.0400.0675, align 8, !tbaa !356 ; 73 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.0400.0675, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !356 ; 8 uses
  %.not.i.i219 = icmp eq ptr %i.zb, %i.zd
  br i1 %.not.i.i219, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit", label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ze = ptrtoint ptr %i.zd to i64
  %i.zf = ptrtoint ptr %i.zb to i64               ; 2 uses
  %i.zg = sub i64 %i.ze, %i.zf                    ; 2 uses
  %i.zh = ashr exact i64 %i.zg, 3
  %i.zi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.zh, i1 true)
  %i.zj = shl nuw nsw i64 %i.zi, 1
  %i.zk = xor i64 %i.zj, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_SK_T0_T1_"(ptr %i.zb, ptr %i.zd, i64 noundef %i.zk, ptr nonnull %27)
          to label %.noexc223 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc223:                                        ; preds = %bb.eq
  %i.zl = icmp sgt i64 %i.zg, 128
  br i1 %i.zl, label %bb.er, label %.preheader.i.i

bb.er:                                            ; preds = %.noexc223
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zb, i64 128 ; 2 uses
  %.sroa.0.018.i.i.i = getelementptr i8, ptr %i.zb, i64 8 ; 16 uses
  %i.zn = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.018.i.i.i, ptr %i.zb)
          to label %.noexc224.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc224.a:                                      ; preds = %bb.er
  br i1 %i.zn, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.peel.i.i.i, label %bb.es

bb.es:                                            ; preds = %.noexc224.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.018.i.i.i, ptr nonnull %27)
          to label %.peel.next.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.peel.i.i.i: ; preds = %.noexc224.a
  %i.zo = load <2 x ptr>, ptr %i.zb, align 8, !tbaa !161
  %i.zp = shufflevector <2 x ptr> %i.zo, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.zp, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.es, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.peel.i.i.i
  %.sroa.0.021.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 16 ; 3 uses
  %i.zq = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.i.i, ptr %i.zb)
          to label %.noexc226.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc226.a:                                      ; preds = %.peel.next.i.i.i
  br i1 %i.zq, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i, label %bb.et

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i: ; preds = %.noexc226.a
  %i.zr = load ptr, ptr %.sroa.0.021.i.ptr.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.zb, i64 16, i1 false)
  store ptr %i.zr, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.1.i.i

bb.et:                                            ; preds = %.noexc226.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.i.i, ptr nonnull %27)
          to label %.peel.next.i.1.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next.i.1.i.i:                               ; preds = %bb.et, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i
  %.sroa.0.021.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 24 ; 3 uses
  %i.zs = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.1.i.i, ptr %i.zb)
          to label %.noexc228.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc228.a:                                      ; preds = %.peel.next.i.1.i.i
  br i1 %i.zs, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i.i, label %bb.eu

bb.eu:                                            ; preds = %.noexc228.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.1.i.i, ptr nonnull %27)
          to label %.peel.next.i.2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i.i: ; preds = %.noexc228.a
  %i.zt = load ptr, ptr %.sroa.0.021.i.ptr.1.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.zb, i64 24, i1 false)
  store ptr %i.zt, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.2.i.i

.peel.next.i.2.i.i:                               ; preds = %bb.eu, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i.i
  %.sroa.0.021.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 32 ; 3 uses
  %i.zu = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.2.i.i, ptr %i.zb)
          to label %.noexc230.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc230.a:                                      ; preds = %.peel.next.i.2.i.i
  br i1 %i.zu, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.2.i.i, label %bb.ev

bb.ev:                                            ; preds = %.noexc230.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.2.i.i, ptr nonnull %27)
          to label %.peel.next.i.3.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.2.i.i: ; preds = %.noexc230.a
  %i.zv = load ptr, ptr %.sroa.0.021.i.ptr.2.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.zb, i64 32, i1 false)
  store ptr %i.zv, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.3.i.i

.peel.next.i.3.i.i:                               ; preds = %bb.ev, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.2.i.i
  %.sroa.0.021.i.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 40 ; 3 uses
  %i.zw = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.3.i.i, ptr %i.zb)
          to label %.noexc232.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232.a:                                      ; preds = %.peel.next.i.3.i.i
  br i1 %i.zw, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.3.i.i, label %bb.ew

bb.ew:                                            ; preds = %.noexc232.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.3.i.i, ptr nonnull %27)
          to label %.peel.next.i.4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.3.i.i: ; preds = %.noexc232.a
  %i.zx = load ptr, ptr %.sroa.0.021.i.ptr.3.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.zb, i64 40, i1 false)
  store ptr %i.zx, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.4.i.i

.peel.next.i.4.i.i:                               ; preds = %bb.ew, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.3.i.i
  %.sroa.0.021.i.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 48 ; 3 uses
  %i.zy = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.4.i.i, ptr %i.zb)
          to label %.noexc234.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc234.a:                                      ; preds = %.peel.next.i.4.i.i
  br i1 %i.zy, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.4.i.i, label %bb.ex

bb.ex:                                            ; preds = %.noexc234.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.4.i.i, ptr nonnull %27)
          to label %.peel.next.i.5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.4.i.i: ; preds = %.noexc234.a
  %i.zz = load ptr, ptr %.sroa.0.021.i.ptr.4.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.zb, i64 48, i1 false)
  store ptr %i.zz, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.5.i.i

.peel.next.i.5.i.i:                               ; preds = %bb.ex, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.4.i.i
  %.sroa.0.021.i.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 56 ; 3 uses
  %i.aaa = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.5.i.i, ptr %i.zb)
          to label %.noexc236.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc236.a:                                      ; preds = %.peel.next.i.5.i.i
  br i1 %i.aaa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.5.i.i, label %bb.ey

bb.ey:                                            ; preds = %.noexc236.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.5.i.i, ptr nonnull %27)
          to label %.peel.next.i.6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.5.i.i: ; preds = %.noexc236.a
  %i.aab = load ptr, ptr %.sroa.0.021.i.ptr.5.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.zb, i64 56, i1 false)
  store ptr %i.aab, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.6.i.i

.peel.next.i.6.i.i:                               ; preds = %bb.ey, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.5.i.i
  %.sroa.0.021.i.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 64 ; 3 uses
  %i.aac = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.6.i.i, ptr %i.zb)
          to label %.noexc238.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc238.a:                                      ; preds = %.peel.next.i.6.i.i
  br i1 %i.aac, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.6.i.i, label %bb.ez

bb.ez:                                            ; preds = %.noexc238.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.6.i.i, ptr nonnull %27)
          to label %.peel.next.i.7.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.6.i.i: ; preds = %.noexc238.a
  %i.aad = load ptr, ptr %.sroa.0.021.i.ptr.6.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.zb, i64 64, i1 false)
  store ptr %i.aad, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.7.i.i

.peel.next.i.7.i.i:                               ; preds = %bb.ez, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.6.i.i
  %.sroa.0.021.i.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 72 ; 3 uses
  %i.aae = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.7.i.i, ptr %i.zb)
          to label %.noexc240.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc240.a:                                      ; preds = %.peel.next.i.7.i.i
  br i1 %i.aae, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.7.i.i, label %bb.fa

bb.fa:                                            ; preds = %.noexc240.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.7.i.i, ptr nonnull %27)
          to label %.peel.next.i.8.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.7.i.i: ; preds = %.noexc240.a
  %i.aaf = load ptr, ptr %.sroa.0.021.i.ptr.7.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.zb, i64 72, i1 false)
  store ptr %i.aaf, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.8.i.i

.peel.next.i.8.i.i:                               ; preds = %bb.fa, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.7.i.i
  %.sroa.0.021.i.ptr.8.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 80 ; 3 uses
  %i.aag = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.8.i.i, ptr %i.zb)
          to label %.noexc242.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc242.a:                                      ; preds = %.peel.next.i.8.i.i
  br i1 %i.aag, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.8.i.i, label %bb.fb

bb.fb:                                            ; preds = %.noexc242.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.8.i.i, ptr nonnull %27)
          to label %.peel.next.i.9.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.8.i.i: ; preds = %.noexc242.a
  %i.aah = load ptr, ptr %.sroa.0.021.i.ptr.8.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.zb, i64 80, i1 false)
  store ptr %i.aah, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.9.i.i

.peel.next.i.9.i.i:                               ; preds = %bb.fb, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.8.i.i
  %.sroa.0.021.i.ptr.9.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 88 ; 3 uses
  %i.aai = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.9.i.i, ptr %i.zb)
          to label %.noexc244.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc244.a:                                      ; preds = %.peel.next.i.9.i.i
  br i1 %i.aai, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.9.i.i, label %bb.fc

bb.fc:                                            ; preds = %.noexc244.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.9.i.i, ptr nonnull %27)
          to label %.peel.next.i.10.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.9.i.i: ; preds = %.noexc244.a
  %i.aaj = load ptr, ptr %.sroa.0.021.i.ptr.9.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.zb, i64 88, i1 false)
  store ptr %i.aaj, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.10.i.i

.peel.next.i.10.i.i:                              ; preds = %bb.fc, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.9.i.i
  %.sroa.0.021.i.ptr.10.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 96 ; 3 uses
  %i.aak = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.10.i.i, ptr %i.zb)
          to label %.noexc246.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc246.a:                                      ; preds = %.peel.next.i.10.i.i
  br i1 %i.aak, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.10.i.i, label %bb.fd

bb.fd:                                            ; preds = %.noexc246.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.10.i.i, ptr nonnull %27)
          to label %.peel.next.i.11.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.10.i.i: ; preds = %.noexc246.a
  %i.aal = load ptr, ptr %.sroa.0.021.i.ptr.10.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.zb, i64 96, i1 false)
  store ptr %i.aal, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.11.i.i

.peel.next.i.11.i.i:                              ; preds = %bb.fd, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.10.i.i
  %.sroa.0.021.i.ptr.11.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 104 ; 3 uses
  %i.aam = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.11.i.i, ptr %i.zb)
          to label %.noexc248.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc248.a:                                      ; preds = %.peel.next.i.11.i.i
  br i1 %i.aam, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.11.i.i, label %bb.fe

bb.fe:                                            ; preds = %.noexc248.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.11.i.i, ptr nonnull %27)
          to label %.peel.next.i.12.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.11.i.i: ; preds = %.noexc248.a
  %i.aan = load ptr, ptr %.sroa.0.021.i.ptr.11.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.zb, i64 104, i1 false)
  store ptr %i.aan, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.12.i.i

.peel.next.i.12.i.i:                              ; preds = %bb.fe, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.11.i.i
  %.sroa.0.021.i.ptr.12.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 112 ; 3 uses
  %i.aao = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.12.i.i, ptr %i.zb)
          to label %.noexc250.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc250.a:                                      ; preds = %.peel.next.i.12.i.i
  br i1 %i.aao, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.12.i.i, label %bb.ff

bb.ff:                                            ; preds = %.noexc250.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.12.i.i, ptr nonnull %27)
          to label %.peel.next.i.13.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.12.i.i: ; preds = %.noexc250.a
  %i.aap = load ptr, ptr %.sroa.0.021.i.ptr.12.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.zb, i64 112, i1 false)
  store ptr %i.aap, ptr %i.zb, align 8, !tbaa !161
  br label %.peel.next.i.13.i.i

.peel.next.i.13.i.i:                              ; preds = %bb.ff, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.12.i.i
  %.sroa.0.021.i.ptr.13.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 120 ; 3 uses
  %i.aaq = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.13.i.i, ptr %i.zb)
          to label %.noexc252.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc252.a:                                      ; preds = %.peel.next.i.13.i.i
  br i1 %i.aaq, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.13.i.i, label %bb.fg

bb.fg:                                            ; preds = %.noexc252.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.13.i.i, ptr nonnull %27)
          to label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_SK_T0_.exit.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.13.i.i: ; preds = %.noexc252.a
  %i.aar = load ptr, ptr %.sroa.0.021.i.ptr.13.i.i, align 8, !tbaa !161
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.zb, i64 120, i1 false)
  store ptr %i.aar, ptr %i.zb, align 8, !tbaa !161
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_SK_T0_.exit.i.i"

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_SK_T0_.exit.i.i": ; preds = %bb.fg, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.13.i.i
  %.not7.i.i.i.i = icmp eq ptr %i.zm, %i.zd
  br i1 %.not7.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit", label %.lr.ph.i.i.i.i221

.lr.ph.i.i.i.i221:                                ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_SK_T0_.exit.i.i", %.noexc254.a
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.aas, %.noexc254.a ], [ %i.zm, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_SK_T0_.exit.i.i" ] ; 2 uses
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.08.i.i.i.i, ptr nonnull %27)
          to label %.noexc254.a unwind label %.loopexit.split-lp.loopexit

.noexc254.a:                                      ; preds = %.lr.ph.i.i.i.i221
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i222 = icmp eq ptr %i.aas, %i.zd
  br i1 %.not.i.i.i.i222, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit", label %.lr.ph.i.i.i.i221, !llvm.loop !401

.preheader.i.i:                                   ; preds = %.noexc223
  %.sroa.0.018.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 8 ; 4 uses
  %.not19.i.i = icmp eq ptr %.sroa.0.018.i.i, %i.zd
  br i1 %.not19.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit", label %.lr.ph.i.i220

.lr.ph.i.i220:                                    ; preds = %.preheader.i.i
  %i.aat = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.018.i.i, ptr %i.zb)
          to label %.noexc255.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc255.a:                                      ; preds = %.lr.ph.i.i220
  br i1 %i.aat, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.peel.i.i, label %bb.fh

bb.fh:                                            ; preds = %.noexc255.a
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.018.i.i, ptr nonnull %27)
          to label %.noexc256.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.peel.i.i: ; preds = %.noexc255.a
  %i.aau = load <2 x ptr>, ptr %i.zb, align 8, !tbaa !161
  %i.aav = shufflevector <2 x ptr> %i.aau, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.aav, ptr %i.zb, align 8, !tbaa !161
  br label %.noexc256.a

.noexc256.a:                                      ; preds = %bb.fh, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.peel.i.i
  %.sroa.0.0.peel.i.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 16 ; 2 uses
  %.not.peel.i.i = icmp eq ptr %.sroa.0.0.peel.i.i, %i.zd
  br i1 %.not.peel.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit", label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.noexc256.a, %.noexc258
  %.sroa.0.021.i.i = phi ptr [ %.sroa.0.0.i.i, %.noexc258 ], [ %.sroa.0.0.peel.i.i, %.noexc256.a ] ; 6 uses
  %.pn20.i.i = phi ptr [ %.sroa.0.021.i.i, %.noexc258 ], [ %.sroa.0.018.i.i, %.noexc256.a ] ; 2 uses
  %i.aaw = load ptr, ptr %.sroa.0.021.i.i, align 8, !tbaa !161 ; 2 uses
  %i.aax = load ptr, ptr %i.zb, align 8, !tbaa !161 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 104 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaw, i64 112
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !155
  %i.abb = load ptr, ptr %i.aay, align 8, !tbaa !151
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = ptrtoint ptr %i.abb to i64
  %i.abe = sub i64 %i.abc, %i.abd
  %i.abf = sdiv exact i64 %i.abe, 40
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aax, i64 104 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aax, i64 112
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !155
  %i.abj = load ptr, ptr %i.abg, align 8, !tbaa !151
  %i.abk = ptrtoint ptr %i.abi to i64
  %i.abl = ptrtoint ptr %i.abj to i64
  %i.abm = sub i64 %i.abk, %i.abl
  %i.abn = sdiv exact i64 %i.abm, 40
  %.sroa.speculated.i.i.i343 = call i64 @llvm.umin.i64(i64 %i.abn, i64 %i.abf) ; 2 uses
  %.not33.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i343, 0
  br i1 %.not33.not.i.i.i, label %.noexc257.thread, label %.lr.ph.i.i.i344

.lr.ph.i.i.i344:                                  ; preds = %.peel.next.i.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread26.i.i.i
  %.02034.i.i.i = phi i64 [ %i.aep, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread26.i.i.i ], [ 0, %.peel.next.i.i ] ; 3 uses
  %i.abo = load ptr, ptr %i.aay, align 8, !tbaa !151
  %i.abp = getelementptr inbounds nuw [40 x i8], ptr %i.abo, i64 %.02034.i.i.i ; 4 uses
  %i.abq = load ptr, ptr %i.abg, align 8, !tbaa !151
  %i.abr = getelementptr inbounds nuw [40 x i8], ptr %i.abq, i64 %.02034.i.i.i
  %i.abs = load ptr, ptr %i.abp, align 8, !tbaa !16
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 8 ; 3 uses
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !12
  %i.abv = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.abs, i64 noundef %i.abu, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i unwind label %bb.fi ; 4 uses

bb.fi:                                            ; preds = %.lr.ph.i.i.i344
  %i.abw = landingpad { ptr, i32 }
          catch ptr null
  %i.abx = extractvalue { ptr, i32 } %i.abw, 0
  call void @__clang_call_terminate(ptr %i.abx) #25
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i: ; preds = %.lr.ph.i.i.i344
  %i.aby = load i64, ptr %i.ww, align 8, !tbaa !393 ; 3 uses
  %i.abz = urem i64 %i.abv, %i.aby                ; 4 uses
  %i.aca = load ptr, ptr %27, align 8, !tbaa !391
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %i.abz
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i359 = icmp eq ptr %i.acc, null
  br i1 %.not.i.i.i359, label %.loopexit26.i367, label %bb.fj

bb.fj:                                            ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !49 ; 3 uses
  %i.ace = load i64, ptr %i.abt, align 8
  %.fr22.i.i.i360 = freeze i64 %i.ace             ; 3 uses
  %i.acf = icmp eq i64 %.fr22.i.i.i360, 0
  %i.acg = load ptr, ptr %i.abp, align 8
  %.phi.trans.insert25.i.i.i361 = getelementptr inbounds nuw i8, ptr %i.acd, i64 72
  %.pre26.i.i.i362 = load i64, ptr %.phi.trans.insert25.i.i.i361, align 8, !tbaa !53 ; 2 uses
  br i1 %i.acf, label %.split.us.i.i.i371, label %.split.i.i.i363

.split.us.i.i.i371:                               ; preds = %bb.fj, %bb.fl
  %i.ach = phi i64 [ %i.aco, %bb.fl ], [ %.pre26.i.i.i362, %bb.fj ]
  %.0.us.i.i.i372 = phi ptr [ %i.acm, %bb.fl ], [ %i.acd, %bb.fj ] ; 3 uses
  %i.aci = icmp eq i64 %i.abv, %i.ach
  br i1 %i.aci, label %bb.fk, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i

bb.fk:                                            ; preds = %.split.us.i.i.i371
  %i.acj = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i372, i64 16
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !12
  %i.acl = icmp eq i64 %i.ack, 0
  br i1 %i.acl, label %.noexc346, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i: ; preds = %bb.fk, %.split.us.i.i.i371
  %i.acm = load ptr, ptr %.0.us.i.i.i372, align 8, !tbaa !49 ; 3 uses
  %.not18.us.i.i.i373 = icmp eq ptr %i.acm, null
  br i1 %.not18.us.i.i.i373, label %.loopexit26.i367, label %bb.fl

bb.fl:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 72
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !53 ; 2 uses
  %i.acp = urem i64 %i.aco, %i.aby
  %.not19.us.i.i.i374 = icmp eq i64 %i.acp, %i.abz
  br i1 %.not19.us.i.i.i374, label %.split.us.i.i.i371, label %.loopexit26.i367, !llvm.loop !402

.split.i.i.i363:                                  ; preds = %bb.fj, %bb.fn
  %i.acq = phi i64 [ %i.ada, %bb.fn ], [ %.pre26.i.i.i362, %bb.fj ]
  %.0.i.i.i364 = phi ptr [ %i.acy, %bb.fn ], [ %i.acd, %bb.fj ] ; 4 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.0.i.i.i364, i64 8
  %i.acs = icmp eq i64 %i.abv, %i.acq
  br i1 %i.acs, label %bb.fm, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i

bb.fm:                                            ; preds = %.split.i.i.i363
  %i.act = getelementptr inbounds nuw i8, ptr %.0.i.i.i364, i64 16
  %i.acu = load i64, ptr %i.act, align 8, !tbaa !12
  %i.acv = icmp eq i64 %.fr22.i.i.i360, %i.acu
  br i1 %i.acv, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i: ; preds = %bb.fm
  %i.acw = load ptr, ptr %i.acr, align 8, !tbaa !16
  %bcmp.i.i.i.i.i.i.i370 = call i32 @bcmp(ptr %i.acg, ptr %i.acw, i64 %.fr22.i.i.i360)
  %i.acx = icmp eq i32 %bcmp.i.i.i.i.i.i.i370, 0
  br i1 %i.acx, label %.noexc346, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i, %bb.fm, %.split.i.i.i363
  %i.acy = load ptr, ptr %.0.i.i.i364, align 8, !tbaa !49 ; 3 uses
  %.not18.i.i.i365 = icmp eq ptr %i.acy, null
  br i1 %.not18.i.i.i365, label %.loopexit26.i367, label %bb.fn

bb.fn:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 72
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !53 ; 2 uses
  %i.adb = urem i64 %i.ada, %i.aby
  %.not19.i.i.i366 = icmp eq i64 %i.adb, %i.abz
  br i1 %.not19.i.i.i366, label %.split.i.i.i363, label %.loopexit26.i367, !llvm.loop !402

.loopexit26.i367:                                 ; preds = %bb.fn, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i, %bb.fl, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %27, ptr %2, align 8, !tbaa !403
  %i.adc = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
          to label %.noexc381 unwind label %.loopexit489 ; 10 uses

.noexc381:                                        ; preds = %.loopexit26.i367
  store ptr null, ptr %i.adc, align 8, !tbaa !49
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 8 ; 4 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 24 ; 3 uses
  store ptr %i.ade, ptr %i.add, align 8, !tbaa !8
  %i.adf = load ptr, ptr %i.abp, align 8, !tbaa !16 ; 2 uses
  %i.adg = load i64, ptr %i.abt, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.adg, ptr %i.a, align 8, !tbaa !71
  %i.adh = icmp ugt i64 %i.adg, 15
  br i1 %i.adh, label %.noexc.i.i.i.i379, label %._crit_edge.i.i.i.i.i378

.noexc.i.i.i.i379:                                ; preds = %.noexc381
  %i.adi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.add, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i380 unwind label %bb.fq ; 2 uses

.noexc.i380:                                      ; preds = %.noexc.i.i.i.i379
  store ptr %i.adi, ptr %i.add, align 8, !tbaa !16
  %i.adj = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.adj, ptr %i.ade, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i378

._crit_edge.i.i.i.i.i378:                         ; preds = %.noexc.i380, %.noexc381
  %i.adk = phi ptr [ %i.adi, %.noexc.i380 ], [ %i.ade, %.noexc381 ] ; 2 uses
  switch i64 %i.adg, label %bb.fp [
    i64 1, label %bb.fo
    i64 0, label %.noexc375
  ]

bb.fo:                                            ; preds = %._crit_edge.i.i.i.i.i378
  %i.adl = load i8, ptr %i.adf, align 1, !tbaa !15
  store i8 %i.adl, ptr %i.adk, align 1, !tbaa !15
  br label %.noexc375

bb.fp:                                            ; preds = %._crit_edge.i.i.i.i.i378
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adk, ptr align 1 %i.adf, i64 %i.adg, i1 false)
  br label %.noexc375

bb.fq:                                            ; preds = %.noexc.i.i.i.i379
  %i.adm = landingpad { ptr, i32 }
          catch ptr null
  %i.adn = extractvalue { ptr, i32 } %i.adm, 0
  %i.ado = call ptr @__cxa_begin_catch(ptr %i.adn) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.adc, i64 noundef 80) #24
  invoke void @__cxa_rethrow() #26
          to label %bb.ft unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.adp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body376 unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.adq = landingpad { ptr, i32 }
          catch ptr null
  %i.adr = extractvalue { ptr, i32 } %i.adq, 0
  call void @__clang_call_terminate(ptr %i.adr) #25
  unreachable

bb.ft:                                            ; preds = %bb.fq
  unreachable

.noexc375:                                        ; preds = %bb.fp, %bb.fo, %._crit_edge.i.i.i.i.i378
  %i.ads = load i64, ptr %i.a, align 8, !tbaa !71 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  store i64 %i.ads, ptr %i.adt, align 8, !tbaa !12
  %i.adu = load ptr, ptr %i.add, align 8, !tbaa !16
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.ads
  store i8 0, ptr %i.adv, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adc, i64 40
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adc, i64 56 ; 2 uses
  store ptr %i.adx, ptr %i.adw, align 8, !tbaa !8
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adc, i64 48
  store i64 0, ptr %i.ady, align 8, !tbaa !12
  store i8 0, ptr %i.adx, align 8, !tbaa !15
  store ptr %i.adc, ptr %i.xd, align 8, !tbaa !407
  %i.adz = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %27, i64 noundef %i.abz, i64 noundef %i.abv, ptr noundef nonnull %i.adc, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i unwind label %bb.fu

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %.noexc375
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.noexc346

bb.fu:                                            ; preds = %.noexc375
  %i.aea = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body376

.noexc346:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i, %bb.fk, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %.pn.i368 = phi ptr [ %i.adz, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %.0.us.i.i.i372, %bb.fk ], [ %.0.i.i.i364, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i ] ; 2 uses
  %.1.i369 = getelementptr inbounds nuw i8, ptr %.pn.i368, i64 40 ; 2 uses
  %i.aeb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(32) %i.abr)
          to label %.noexc347 unwind label %.loopexit489 ; 3 uses

.noexc347:                                        ; preds = %.noexc346
  %i.aec = getelementptr inbounds nuw i8, ptr %.pn.i368, i64 48
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !12 ; 6 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !12 ; 2 uses
  %i.aeg = icmp eq i64 %i.aed, %i.aef
  br i1 %i.aeg, label %bb.fv, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i

bb.fv:                                            ; preds = %.noexc347
  %i.aeh = icmp eq i64 %i.aed, 0
  br i1 %i.aeh, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread26.i.i.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i: ; preds = %bb.fv
  %i.aei = load ptr, ptr %i.aeb, align 8, !tbaa !16
  %i.aej = load ptr, ptr %.1.i369, align 8, !tbaa !16
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.aej, ptr %i.aei, i64 %i.aed)
  %.not29.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not29.i.i.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread26.i.i.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %.noexc347
  %.lcssa.i.i.i = phi i64 [ %i.aef, %.noexc347 ], [ %i.aed, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i ] ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.lcssa.i.i.i, i64 %i.aed) ; 2 uses
  %i.aek = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aek, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i
  %i.ael = load ptr, ptr %i.aeb, align 8, !tbaa !16
  %i.aem = load ptr, ptr %.1.i369, align 8, !tbaa !16
  %i.aen = call i32 @memcmp(ptr noundef %i.aem, ptr noundef %i.ael, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i345 = icmp eq i32 %i.aen, 0
  br i1 %.not.i.i.i.i.i345, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %.noexc257

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i
  %i.aeo = sub i64 %i.aed, %.lcssa.i.i.i
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aeo, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %.noexc257

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread26.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %bb.fv
  %i.aep = add nuw i64 %.02034.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aep, %.sroa.speculated.i.i.i343
  br i1 %exitcond.not.i.i.i, label %.noexc257.thread, label %.lr.ph.i.i.i344, !llvm.loop !408

.noexc257:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aen, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.aeq = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.aeq, label %bb.fw, label %.noexc257.thread

bb.fw:                                            ; preds = %.noexc257
  %i.aer = load ptr, ptr %.sroa.0.021.i.i, align 8, !tbaa !161
  %i.aes = ptrtoint ptr %.sroa.0.021.i.i to i64
  %i.aet = sub i64 %i.aes, %i.zf                  ; 3 uses
  %i.aeu = ashr exact i64 %i.aet, 3               ; 2 uses
  %i.aev = icmp sgt i64 %i.aeu, 1
  br i1 %i.aev, label %bb.fx, label %32, !prof !38

bb.fx:                                            ; preds = %bb.fw
  %i.aew = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 16
  %i.aex = sub nsw i64 0, %i.aeu
  %i.aey = getelementptr inbounds [8 x i8], ptr %i.aew, i64 %i.aex
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aey, ptr noundef nonnull align 8 dereferenceable(1) %i.zb, i64 %i.aet, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i

32:                                               ; preds = %bb.fw
  %33 = icmp eq i64 %i.aet, 8
  br i1 %33, label %34, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 8
  %36 = load ptr, ptr %i.zb, align 8, !tbaa !161
  store ptr %36, ptr %35, align 8, !tbaa !161
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i: ; preds = %34, %32, %bb.fx
  store ptr %i.aer, ptr %i.zb, align 8, !tbaa !161
  br label %.noexc258

.noexc257.thread:                                 ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread26.i.i.i, %.peel.next.i.i, %.noexc257
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.i, ptr nonnull %27)
          to label %.noexc258 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc258:                                        ; preds = %.noexc257.thread, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 2 uses
  %.not.i7.i = icmp eq ptr %.sroa.0.0.i.i, %i.zd
  br i1 %.not.i7.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit", label %.peel.next.i.i, !llvm.loop !409

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit": ; preds = %.noexc258, %.noexc254.a, %.noexc256.a, %.preheader.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_SK_T0_.exit.i.i", %bb.ep
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.0400.0675, i64 24 ; 2 uses
  %.not477.a = icmp eq ptr %i.aez, %.pre775.a
  br i1 %.not477.a, label %._crit_edge678.loopexit, label %bb.ep

.loopexit489:                                     ; preds = %.noexc346, %.loopexit26.i367
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body376

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i.i221
  %lpad.loopexit490.a = landingpad { ptr, i32 }
          cleanup
  br label %.body376

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.noexc257.thread
  %lpad.loopexit493 = landingpad { ptr, i32 }
          cleanup
  br label %.body376

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.eq, %bb.er, %bb.es, %.peel.next.i.i.i, %bb.et, %.peel.next.i.1.i.i, %bb.eu, %.peel.next.i.2.i.i, %bb.ev, %.peel.next.i.3.i.i, %bb.ew, %.peel.next.i.4.i.i, %bb.ex, %.peel.next.i.5.i.i, %bb.ey, %.peel.next.i.6.i.i, %bb.ez, %.peel.next.i.7.i.i, %bb.fa, %.peel.next.i.8.i.i, %bb.fb, %.peel.next.i.9.i.i, %bb.fc, %.peel.next.i.10.i.i, %bb.fd, %.peel.next.i.11.i.i, %bb.fe, %.peel.next.i.12.i.i, %bb.ff, %.peel.next.i.13.i.i, %bb.fg, %.lr.ph.i.i220, %bb.fh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body376

.lr.ph687:                                        ; preds = %._crit_edge678, %._crit_edge683
  %.sroa.0396.0685 = phi ptr [ %i.afd, %._crit_edge683 ], [ %.pre777, %._crit_edge678 ] ; 3 uses
  %i.afa = load ptr, ptr %.sroa.0396.0685, align 8, !tbaa !356 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0396.0685, i64 8
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !356 ; 2 uses
  %.not481679 = icmp eq ptr %i.afa, %i.afc
  br i1 %.not481679, label %._crit_edge683, label %.lr.ph682

._crit_edge683:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267, %.lr.ph687
  %i.afd = getelementptr inbounds nuw i8, ptr %.sroa.0396.0685, i64 24 ; 2 uses
  %.not478.a = icmp eq ptr %i.afd, %.pre779
  br i1 %.not478.a, label %.loopexit.loopexit, label %.lr.ph687

.lr.ph682:                                        ; preds = %.lr.ph687, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267
  %.sroa.0392.0680 = phi ptr [ %i.agl, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267 ], [ %i.afa, %.lr.ph687 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.afe = load ptr, ptr %.sroa.0392.0680, align 8, !tbaa !161
  %i.aff = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.fy unwind label %bb.gj

bb.fy:                                            ; preds = %.lr.ph682
  invoke void @_ZN4cvc58internal13preprocessing6passes9renameQidERKNS0_12NodeTemplateILb1EEERSt13unordered_mapIS4_S4_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S4_EEERS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_S8_ISM_ESA_ISM_ESaISC_IKSM_SM_EEEPNS0_11NodeManagerE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %i.afe, ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef %i.aff)
          to label %bb.fz unwind label %bb.gj

bb.fz:                                            ; preds = %bb.fy
  %i.afg = load ptr, ptr %.sroa.0392.0680, align 8, !tbaa !161 ; 2 uses
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !35 ; 4 uses
  %i.afi = load ptr, ptr %30, align 8, !tbaa !35  ; 9 uses
  %.not.i259 = icmp eq ptr %i.afh, %i.afi
  br i1 %.not.i259, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264, label %bb.ga, !prof !39

bb.ga:                                            ; preds = %bb.fz
  %i.afj = load i64, ptr %i.afh, align 8          ; 3 uses
  %i.afk = and i64 %i.afj, 1152920405095219200
  %.not.i.i260 = icmp eq i64 %i.afk, 1152920405095219200
  br i1 %.not.i.i260, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261, label %bb.gb, !prof !39

bb.gb:                                            ; preds = %bb.ga
  %i.afl = add i64 %i.afj, 1152920405095219200
  %i.afm = and i64 %i.afl, 1152920405095219200    ; 2 uses
  %i.afn = and i64 %i.afj, -1152920405095219201
  %i.afo = or disjoint i64 %i.afm, %i.afn
  store i64 %i.afo, ptr %i.afh, align 8
  %i.afp = icmp eq i64 %i.afm, 0
  br i1 %i.afp, label %bb.gc, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261, !prof !39

bb.gc:                                            ; preds = %bb.gb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afh)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261 unwind label %bb.gk

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261: ; preds = %bb.gc, %bb.gb, %bb.ga
  store ptr %i.afi, ptr %i.afg, align 8, !tbaa !35
  %i.afq = load i64, ptr %i.afi, align 8          ; 3 uses
  %i.afr = lshr i64 %i.afq, 40
  %i.afs = trunc nuw nsw i64 %i.afr to i32
  %i.aft = and i32 %i.afs, 1048575                ; 3 uses
  %i.afu = icmp samesign ult i32 %i.aft, 1048574
  br i1 %i.afu, label %bb.gd, label %bb.ge, !prof !38

bb.gd:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261
  %i.afv = add nuw nsw i32 %i.aft, 1
  %i.afw = zext nneg i32 %i.afv to i64
  %i.afx = shl nuw nsw i64 %i.afw, 40
  %i.afy = and i64 %i.afq, -1152920405095219201
  %i.afz = or i64 %i.afx, %i.afy
  store i64 %i.afz, ptr %i.afi, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264

bb.ge:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261
  %i.aga = icmp eq i32 %i.aft, 1048574
  br i1 %i.aga, label %bb.gf, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264, !prof !39

bb.gf:                                            ; preds = %bb.ge
  %i.agb = or i64 %i.afq, 1152920405095219200
  store i64 %i.agb, ptr %i.afi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264 unwind label %bb.gk

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264: ; preds = %bb.ge, %bb.gd, %bb.fz, %bb.gf
  %i.agc = load i64, ptr %i.afi, align 8          ; 3 uses
  %i.agd = and i64 %i.agc, 1152920405095219200
  %.not.i.i265 = icmp eq i64 %i.agd, 1152920405095219200
  br i1 %.not.i.i265, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267, label %bb.gg, !prof !39

bb.gg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264
  %i.age = add i64 %i.agc, 1152920405095219200
  %i.agf = and i64 %i.age, 1152920405095219200    ; 2 uses
  %i.agg = and i64 %i.agc, -1152920405095219201
  %i.agh = or disjoint i64 %i.agf, %i.agg
  store i64 %i.agh, ptr %i.afi, align 8
  %i.agi = icmp eq i64 %i.agf, 0
  br i1 %i.agi, label %bb.gh, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267, !prof !39

bb.gh:                                            ; preds = %bb.gg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267 unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.agj = landingpad { ptr, i32 }
          catch ptr null
  %i.agk = extractvalue { ptr, i32 } %i.agj, 0
  call void @__clang_call_terminate(ptr %i.agk) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264, %bb.gg, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.0392.0680, i64 8 ; 2 uses
  %.not481 = icmp eq ptr %i.agl, %i.afc
  br i1 %.not481, label %._crit_edge683, label %.lr.ph682

bb.gj:                                            ; preds = %bb.fy, %.lr.ph682
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gf, %bb.gc
  %i.agn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #23
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %.pn107 = phi { ptr, i32 } [ %i.agn, %bb.gk ], [ %i.agm, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.ik

.loopexit.loopexit:                               ; preds = %._crit_edge683
  %.pre776 = load ptr, ptr %10, align 8, !tbaa !339
  %.pre778 = load ptr, ptr %i.hz, align 8, !tbaa !339
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge678
  %i.ago = phi ptr [ %.pre778, %.loopexit.loopexit ], [ %.pre779, %._crit_edge678 ] ; 2 uses
  %i.agp = phi ptr [ %.pre776, %.loopexit.loopexit ], [ %.pre777, %._crit_edge678 ] ; 2 uses
  %.not479694 = icmp eq ptr %i.agp, %i.ago
  br i1 %.not479694, label %._crit_edge699.thread, label %.lr.ph698

._crit_edge699.thread:                            ; preds = %.loopexit
  %i.agq = load ptr, ptr %i.g, align 8, !tbaa !171 ; 2 uses
  %i.agr = load ptr, ptr %i.e, align 8, !tbaa !234 ; 2 uses
  %i.ags = ptrtoint ptr %i.agq to i64
  %i.agt = ptrtoint ptr %i.agr to i64
  %i.agu = sub i64 %i.ags, %i.agt
  %i.agv = ashr exact i64 %i.agu, 3
  br label %bb.gn

._crit_edge699:                                   ; preds = %._crit_edge693
  %i.agw = load ptr, ptr %i.g, align 8, !tbaa !171 ; 2 uses
  %i.agx = load ptr, ptr %i.e, align 8, !tbaa !234 ; 2 uses
  %i.agy = ptrtoint ptr %i.agw to i64
  %i.agz = ptrtoint ptr %i.agx to i64
  %i.aha = sub i64 %i.agy, %i.agz
  %i.ahb = ashr exact i64 %i.aha, 3               ; 3 uses
  %i.ahc = icmp ugt i64 %.1.lcssa, %i.ahb
  br i1 %i.ahc, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %._crit_edge699
  %i.ahd = sub nuw i64 %.1.lcssa, %i.ahb
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ahd)
          to label %_ZN4cvc58internal13preprocessing17AssertionPipeline6resizeEm.exit unwind label %bb.ij

bb.gn:                                            ; preds = %._crit_edge699.thread, %._crit_edge699
  %i.ahe = phi i64 [ %i.agv, %._crit_edge699.thread ], [ %i.ahb, %._crit_edge699 ]
end_hunk_0
