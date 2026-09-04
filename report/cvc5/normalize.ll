Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/normalize?download=true
inline.NumInlined: 4351
inline.NumDeleted: 1781
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.wr, align 8, !tbaa !69
  %i.ws = getelementptr inbounds nuw i8, ptr %25, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ws, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.wt = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 2 uses
  store ptr %i.wt, ptr %26, align 8, !tbaa !129
  %i.wu = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  store i64 1, ptr %i.wu, align 8, !tbaa !130
  %i.wv = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %26, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ww, align 8, !tbaa !69
  %i.wx = getelementptr inbounds nuw i8, ptr %26, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %i.wy = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  store ptr %i.wy, ptr %27, align 8, !tbaa !227
  %i.wz = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  store i64 1, ptr %i.wz, align 8, !tbaa !228
  %i.xa = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %27, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xb, align 8, !tbaa !69
  %i.xc = getelementptr inbounds nuw i8, ptr %27, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 0, ptr %i.c, align 1, !tbaa !84
  %i.xd = load ptr, ptr %10, align 8, !tbaa !475  ; 4 uses
  %i.xe = load ptr, ptr %i.ic, align 8, !tbaa !475 ; 2 uses
  %.not476669 = icmp eq ptr %i.xd, %i.xe
  br i1 %.not476669, label %._crit_edge678, label %.lr.ph672

.lr.ph672:                                        ; preds = %bb.dy
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ea

._crit_edge673:                                   ; preds = %._crit_edge668
  %.pre774 = load ptr, ptr %10, align 8, !tbaa !475 ; 3 uses
  %.pre775 = load ptr, ptr %i.ic, align 8, !tbaa !475 ; 3 uses
  %.not477674 = icmp eq ptr %.pre774, %.pre775
  br i1 %.not477674, label %._crit_edge678, label %.lr.ph677

.lr.ph677:                                        ; preds = %._crit_edge673
  %i.xg = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.ep

bb.dz:                                            ; preds = %bb.dx, %._crit_edge663
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.ea:                                            ; preds = %.lr.ph672, %._crit_edge668
  %.sroa.0408.0670 = phi ptr [ %i.xd, %.lr.ph672 ], [ %i.xl, %._crit_edge668 ] ; 3 uses
  %i.xi = load ptr, ptr %.sroa.0408.0670, align 8, !tbaa !207 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.sroa.0408.0670, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !207 ; 2 uses
  %.not482664 = icmp eq ptr %i.xi, %i.xk
  br i1 %.not482664, label %._crit_edge668, label %.lr.ph667

._crit_edge668:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.ea
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.0408.0670, i64 24 ; 2 uses
  %.not476 = icmp eq ptr %i.xl, %i.xe
  br i1 %.not476, label %._crit_edge673, label %bb.ea

.lr.ph667:                                        ; preds = %bb.ea, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.sroa.0404.0665 = phi ptr [ %i.yu, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %i.xi, %bb.ea ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.xm = load ptr, ptr %.sroa.0404.0665, align 8, !tbaa !127
  %i.xn = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.eb unwind label %bb.em

bb.eb:                                            ; preds = %.lr.ph667
  %i.xo = load ptr, ptr %i.xf, align 8, !tbaa !485
  invoke void @_ZN4cvc58internal13preprocessing6passes6renameERKNS0_12NodeTemplateILb1EEERSt13unordered_mapIS4_S4_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S4_EEESG_RS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_S8_ISM_ESA_ISM_ESaISC_IKSM_SM_EEEPNS0_11NodeManagerEPNS1_24PreprocessingPassContextERNS0_26NormalizeSortNodeConverterERb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.xm, ptr noundef nonnull align 8 dereferenceable(56) %25, ptr noundef nonnull align 8 dereferenceable(56) %26, ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef %i.xn, ptr noundef %i.xo, ptr noundef nonnull align 8 dereferenceable(304) %24, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.ec unwind label %bb.em

bb.ec:                                            ; preds = %bb.eb
  %i.xp = load ptr, ptr %.sroa.0404.0665, align 8, !tbaa !127 ; 2 uses
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !78 ; 4 uses
  %i.xr = load ptr, ptr %28, align 8, !tbaa !78   ; 9 uses
  %.not.i212 = icmp eq ptr %i.xq, %i.xr
  br i1 %.not.i212, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.ed, !prof !80

bb.ed:                                            ; preds = %bb.ec
  %i.xs = load i64, ptr %i.xq, align 8            ; 3 uses
  %i.xt = and i64 %i.xs, 1152920405095219200
  %.not.i.i213 = icmp eq i64 %i.xt, 1152920405095219200
  br i1 %.not.i.i213, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214, label %bb.ee, !prof !80

bb.ee:                                            ; preds = %bb.ed
  %i.xu = add i64 %i.xs, 1152920405095219200
  %i.xv = and i64 %i.xu, 1152920405095219200      ; 2 uses
  %i.xw = and i64 %i.xs, -1152920405095219201
  %i.xx = or disjoint i64 %i.xv, %i.xw
  store i64 %i.xx, ptr %i.xq, align 8
  %i.xy = icmp eq i64 %i.xv, 0
  br i1 %i.xy, label %bb.ef, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214, !prof !80

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xq)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214 unwind label %bb.en

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214: ; preds = %bb.ef, %bb.ee, %bb.ed
  store ptr %i.xr, ptr %i.xp, align 8, !tbaa !78
  %i.xz = load i64, ptr %i.xr, align 8            ; 3 uses
  %i.ya = lshr i64 %i.xz, 40
  %i.yb = trunc nuw nsw i64 %i.ya to i32
  %i.yc = and i32 %i.yb, 1048575                  ; 3 uses
  %i.yd = icmp samesign ult i32 %i.yc, 1048574
  br i1 %i.yd, label %bb.eg, label %bb.eh, !prof !79

bb.eg:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214
  %i.ye = add nuw nsw i32 %i.yc, 1
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = shl nuw nsw i64 %i.yf, 40
  %i.yh = and i64 %i.xz, -1152920405095219201
  %i.yi = or i64 %i.yg, %i.yh
  store i64 %i.yi, ptr %i.xr, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.eh:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214
  %i.yj = icmp eq i32 %i.yc, 1048574
  br i1 %i.yj, label %bb.ei, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !80

bb.ei:                                            ; preds = %bb.eh
  %i.yk = or i64 %i.xz, 1152920405095219200
  store i64 %i.yk, ptr %i.xr, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.en

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.eh, %bb.eg, %bb.ec, %bb.ei
  %i.yl = load i64, ptr %i.xr, align 8            ; 3 uses
  %i.ym = and i64 %i.yl, 1152920405095219200
  %.not.i.i217 = icmp eq i64 %i.ym, 1152920405095219200
  br i1 %.not.i.i217, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ej, !prof !80

bb.ej:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.yn = add i64 %i.yl, 1152920405095219200
  %i.yo = and i64 %i.yn, 1152920405095219200      ; 2 uses
  %i.yp = and i64 %i.yl, -1152920405095219201
  %i.yq = or disjoint i64 %i.yo, %i.yp
  store i64 %i.yq, ptr %i.xr, align 8
  %i.yr = icmp eq i64 %i.yo, 0
  br i1 %i.yr, label %bb.ek, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !80

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ys = landingpad { ptr, i32 }
          catch ptr null
  %i.yt = extractvalue { ptr, i32 } %i.ys, 0
  call void @__clang_call_terminate(ptr %i.yt) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.ej, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0404.0665, i64 8 ; 2 uses
  %.not482 = icmp eq ptr %i.yu, %i.xk
  br i1 %.not482, label %._crit_edge668, label %.lr.ph667

bb.em:                                            ; preds = %bb.eb, %.lr.ph667
  %i.yv = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.en:                                            ; preds = %bb.ei, %bb.ef
  %i.yw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #23
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.pn110 = phi { ptr, i32 } [ %i.yw, %bb.en ], [ %i.yv, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body376

._crit_edge678.loopexit:                          ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit"
  %.pre777.pre = load ptr, ptr %10, align 8, !tbaa !475
  %.pre779.pre = load ptr, ptr %i.ic, align 8, !tbaa !475
  br label %._crit_edge678

._crit_edge678:                                   ; preds = %bb.dy, %._crit_edge678.loopexit, %._crit_edge673
  %.pre779 = phi ptr [ %.pre779.pre, %._crit_edge678.loopexit ], [ %.pre775, %._crit_edge673 ], [ %i.xd, %bb.dy ] ; 3 uses
  %.pre777 = phi ptr [ %.pre777.pre, %._crit_edge678.loopexit ], [ %.pre774, %._crit_edge673 ], [ %i.xd, %bb.dy ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  %i.yx = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 2 uses
  store ptr %i.yx, ptr %29, align 8, !tbaa !129
  %i.yy = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  store i64 1, ptr %i.yy, align 8, !tbaa !130
  %i.yz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %29, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.za, align 8, !tbaa !69
  %i.zb = getelementptr inbounds nuw i8, ptr %29, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zb, i8 0, i64 16, i1 false)
  %i.zc = load i8, ptr %i.c, align 1, !tbaa !84, !range !97, !noundef !98
  %i.zd = trunc nuw i8 %i.zc to i1
  %.not478684 = icmp ne ptr %.pre777, %.pre779
  %or.cond.not = select i1 %i.zd, i1 %.not478684, i1 false
  br i1 %or.cond.not, label %.lr.ph687, label %.loopexit

bb.ep:                                            ; preds = %.lr.ph677, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit"
  %.sroa.0400.0675 = phi ptr [ %.pre774, %.lr.ph677 ], [ %i.aff, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit" ] ; 3 uses
  %i.ze = load ptr, ptr %.sroa.0400.0675, align 8, !tbaa !207 ; 73 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.sroa.0400.0675, i64 8
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !207 ; 8 uses
  %.not.i.i219 = icmp eq ptr %i.ze, %i.zg
  br i1 %.not.i.i219, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit", label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.zh = ptrtoint ptr %i.zg to i64
  %i.zi = ptrtoint ptr %i.ze to i64               ; 2 uses
  %i.zj = sub i64 %i.zh, %i.zi                    ; 2 uses
  %i.zk = ashr exact i64 %i.zj, 3
  %i.zl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.zk, i1 true)
  %i.zm = shl nuw nsw i64 %i.zl, 1
  %i.zn = xor i64 %i.zm, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_SK_T0_T1_"(ptr %i.ze, ptr %i.zg, i64 noundef %i.zn, ptr nonnull %27)
          to label %.noexc223 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc223:                                        ; preds = %bb.eq
  %i.zo = icmp sgt i64 %i.zj, 128
  br i1 %i.zo, label %bb.er, label %.preheader.i.i

bb.er:                                            ; preds = %.noexc223
  %i.zp = getelementptr inbounds nuw i8, ptr %i.ze, i64 128 ; 2 uses
  %.sroa.0.018.i.i.i = getelementptr i8, ptr %i.ze, i64 8 ; 16 uses
  %i.zq = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.018.i.i.i, ptr %i.ze)
          to label %.noexc224 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc224:                                        ; preds = %bb.er
  br i1 %i.zq, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.peel.i.i.i, label %bb.es

bb.es:                                            ; preds = %.noexc224
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.018.i.i.i, ptr nonnull %27)
          to label %.peel.next.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.peel.i.i.i: ; preds = %.noexc224
  %i.zr = load <2 x ptr>, ptr %i.ze, align 8, !tbaa !127
  %i.zs = shufflevector <2 x ptr> %i.zr, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.zs, ptr %i.ze, align 8, !tbaa !127
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.es, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.peel.i.i.i
  %.sroa.0.021.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 16 ; 3 uses
  %i.zt = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.i.i, ptr %i.ze)
          to label %.noexc226 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc226:                                        ; preds = %.peel.next.i.i.i
  br i1 %i.zt, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i, label %bb.et

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i: ; preds = %.noexc226
  %i.zu = load ptr, ptr %.sroa.0.021.i.ptr.i.i, align 8, !tbaa !127
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ze, i64 16, i1 false)
  store ptr %i.zu, ptr %i.ze, align 8, !tbaa !127
  br label %.peel.next.i.1.i.i

bb.et:                                            ; preds = %.noexc226
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.i.i, ptr nonnull %27)
          to label %.peel.next.i.1.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next.i.1.i.i:                               ; preds = %bb.et, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i
  %.sroa.0.021.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 24 ; 3 uses
  %i.zv = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.1.i.i, ptr %i.ze)
          to label %.noexc228 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc228:                                        ; preds = %.peel.next.i.1.i.i
  br i1 %i.zv, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i.i, label %bb.eu

bb.eu:                                            ; preds = %.noexc228
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.1.i.i, ptr nonnull %27)
          to label %.peel.next.i.2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i.i: ; preds = %.noexc228
  %i.zw = load ptr, ptr %.sroa.0.021.i.ptr.1.i.i, align 8, !tbaa !127
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ze, i64 24, i1 false)
  store ptr %i.zw, ptr %i.ze, align 8, !tbaa !127
  br label %.peel.next.i.2.i.i

.peel.next.i.2.i.i:                               ; preds = %bb.eu, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i.i
  %.sroa.0.021.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 32 ; 3 uses
  %i.zx = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.2.i.i, ptr %i.ze)
          to label %.noexc230 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc230:                                        ; preds = %.peel.next.i.2.i.i
  br i1 %i.zx, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.2.i.i, label %bb.ev

bb.ev:                                            ; preds = %.noexc230
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.2.i.i, ptr nonnull %27)
          to label %.peel.next.i.3.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.2.i.i: ; preds = %.noexc230
  %i.zy = load ptr, ptr %.sroa.0.021.i.ptr.2.i.i, align 8, !tbaa !127
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ze, i64 32, i1 false)
  store ptr %i.zy, ptr %i.ze, align 8, !tbaa !127
  br label %.peel.next.i.3.i.i

.peel.next.i.3.i.i:                               ; preds = %bb.ev, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.2.i.i
  %.sroa.0.021.i.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 40 ; 3 uses
  %i.zz = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.3.i.i, ptr %i.ze)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232:                                        ; preds = %.peel.next.i.3.i.i
  br i1 %i.zz, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.3.i.i, label %bb.ew

bb.ew:                                            ; preds = %.noexc232
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.3.i.i, ptr nonnull %27)
          to label %.peel.next.i.4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.3.i.i: ; preds = %.noexc232
  %i.aaa = load ptr, ptr %.sroa.0.021.i.ptr.3.i.i, align 8, !tbaa !127
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ze, i64 40, i1 false)
  store ptr %i.aaa, ptr %i.ze, align 8, !tbaa !127
  br label %.peel.next.i.4.i.i

.peel.next.i.4.i.i:                               ; preds = %bb.ew, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.3.i.i
  %.sroa.0.021.i.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 48 ; 3 uses
  %i.aab = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.4.i.i, ptr %i.ze)
          to label %.noexc234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc234:                                        ; preds = %.peel.next.i.4.i.i
  br i1 %i.aab, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.4.i.i, label %bb.ex

bb.ex:                                            ; preds = %.noexc234
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.4.i.i, ptr nonnull %27)
          to label %.peel.next.i.5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.4.i.i: ; preds = %.noexc234
  %i.aac = load ptr, ptr %.sroa.0.021.i.ptr.4.i.i, align 8, !tbaa !127
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ze, i64 48, i1 false)
  store ptr %i.aac, ptr %i.ze, align 8, !tbaa !127
  br label %.peel.next.i.5.i.i

.peel.next.i.5.i.i:                               ; preds = %bb.ex, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.4.i.i
  %.sroa.0.021.i.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 56 ; 3 uses
  %i.aad = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.5.i.i, ptr %i.ze)
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %.peel.next.i.5.i.i
  br i1 %i.aad, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.5.i.i, label %bb.ey

bb.ey:                                            ; preds = %.noexc236
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.5.i.i, ptr nonnull %27)
          to label %.peel.next.i.6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.5.i.i: ; preds = %.noexc236
  %i.aae = load ptr, ptr %.sroa.0.021.i.ptr.5.i.i, align 8, !tbaa !127
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ze, i64 56, i1 false)
  store ptr %i.aae, ptr %i.ze, align 8, !tbaa !127
  br label %.peel.next.i.6.i.i

.peel.next.i.6.i.i:                               ; preds = %bb.ey, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.5.i.i
  %.sroa.0.021.i.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 64 ; 3 uses
  %i.aaf = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.6.i.i, ptr %i.ze)
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc238:                                        ; preds = %.peel.next.i.6.i.i
  br i1 %i.aaf, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.6.i.i, label %bb.ez

bb.ez:                                            ; preds = %.noexc238
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.6.i.i, ptr nonnull %27)
          to label %.peel.next.i.7.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.6.i.i: ; preds = %.noexc238
  %i.aag = load ptr, ptr %.sroa.0.021.i.ptr.6.i.i, align 8, !tbaa !127
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ze, i64 64, i1 false)
  store ptr %i.aag, ptr %i.ze, align 8, !tbaa !127
  br label %.peel.next.i.7.i.i

.peel.next.i.7.i.i:                               ; preds = %bb.ez, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.6.i.i
  %.sroa.0.021.i.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 72 ; 3 uses
  %i.aah = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.7.i.i, ptr %i.ze)
          to label %.noexc240 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc240:                                        ; preds = %.peel.next.i.7.i.i
  br i1 %i.aah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.7.i.i, label %bb.fa

bb.fa:                                            ; preds = %.noexc240
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.7.i.i, ptr nonnull %27)
          to label %.peel.next.i.8.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.7.i.i: ; preds = %.noexc240
  %i.aai = load ptr, ptr %.sroa.0.021.i.ptr.7.i.i, align 8, !tbaa !127
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.018.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ze, i64 72, i1 false)
  store ptr %i.aai, ptr %i.ze, align 8, !tbaa !127
  br label %.peel.next.i.8.i.i

.peel.next.i.8.i.i:                               ; preds = %bb.fa, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.7.i.i
  %.sroa.0.021.i.ptr.8.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 80 ; 3 uses
  %i.aaj = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EclINS_17__normal_iteratorIPPNS5_8NodeInfoESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %27, ptr nonnull %.sroa.0.021.i.ptr.8.i.i, ptr %i.ze)
          to label %.noexc242 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc242:                                        ; preds = %.peel.next.i.8.i.i
  br i1 %i.aaj, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.8.i.i, label %bb.fb

bb.fb:                                            ; preds = %.noexc242
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.ptr.8.i.i, ptr nonnull %27)
          to label %.peel.next.i.9.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.8.i.i: ; preds = %.noexc242
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal13preprocessing6passes9Normalize13applyInternalEPNS1_17AssertionPipelineE:bb.a
  br i1 %i.adk, label %.noexc.i.i.i.i379, label %._crit_edge.i.i.i.i.i378

.noexc.i.i.i.i379:                                ; preds = %.noexc381
  %i.adl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.adg, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i380 unwind label %bb.fq ; 2 uses

.noexc.i380:                                      ; preds = %.noexc.i.i.i.i379
  store ptr %i.adl, ptr %i.adg, align 8, !tbaa !57
  %i.adm = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.adm, ptr %i.adh, align 8, !tbaa !56
  br label %._crit_edge.i.i.i.i.i378

._crit_edge.i.i.i.i.i378:                         ; preds = %.noexc.i380, %.noexc381
  %i.adn = phi ptr [ %i.adl, %.noexc.i380 ], [ %i.adh, %.noexc381 ] ; 2 uses
  switch i64 %i.adj, label %bb.fp [
    i64 1, label %bb.fo
    i64 0, label %.noexc375
  ]

bb.fo:                                            ; preds = %._crit_edge.i.i.i.i.i378
  %i.ado = load i8, ptr %i.adi, align 1, !tbaa !56
  store i8 %i.ado, ptr %i.adn, align 1, !tbaa !56
  br label %.noexc375

bb.fp:                                            ; preds = %._crit_edge.i.i.i.i.i378
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adn, ptr align 1 %i.adi, i64 %i.adj, i1 false)
  br label %.noexc375

bb.fq:                                            ; preds = %.noexc.i.i.i.i379
  %i.adp = landingpad { ptr, i32 }
          catch ptr null
  %i.adq = extractvalue { ptr, i32 } %i.adp, 0
  %i.adr = call ptr @__cxa_begin_catch(ptr %i.adq) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.adf, i64 noundef 80) #24
  invoke void @__cxa_rethrow() #26
          to label %bb.ft unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ads = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body376 unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.adt = landingpad { ptr, i32 }
          catch ptr null
  %i.adu = extractvalue { ptr, i32 } %i.adt, 0
  call void @__clang_call_terminate(ptr %i.adu) #25
  unreachable

bb.ft:                                            ; preds = %bb.fq
  unreachable

.noexc375:                                        ; preds = %bb.fp, %bb.fo, %._crit_edge.i.i.i.i.i378
  %i.adv = load i64, ptr %i.a, align 8, !tbaa !99 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adf, i64 16
  store i64 %i.adv, ptr %i.adw, align 8, !tbaa !55
  %i.adx = load ptr, ptr %i.adg, align 8, !tbaa !57
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.adv
  store i8 0, ptr %i.ady, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adf, i64 40
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adf, i64 56 ; 2 uses
  store ptr %i.aea, ptr %i.adz, align 8, !tbaa !52
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adf, i64 48
  store i64 0, ptr %i.aeb, align 8, !tbaa !55
  store i8 0, ptr %i.aea, align 8, !tbaa !56
  store ptr %i.adf, ptr %i.xg, align 8, !tbaa !233
  %i.aec = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %27, i64 noundef %i.acc, i64 noundef %i.aby, ptr noundef nonnull %i.adf, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i unwind label %bb.fu

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %.noexc375
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.noexc346

bb.fu:                                            ; preds = %.noexc375
  %i.aed = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body376

.noexc346:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i, %bb.fk, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %.pn.i368 = phi ptr [ %i.aec, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %.0.us.i.i.i372, %bb.fk ], [ %.0.i.i.i364, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i ] ; 2 uses
  %.1.i369 = getelementptr inbounds nuw i8, ptr %.pn.i368, i64 40 ; 2 uses
  %i.aee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(32) %i.abu)
          to label %.noexc347 unwind label %.loopexit489 ; 3 uses

.noexc347:                                        ; preds = %.noexc346
  %i.aef = getelementptr inbounds nuw i8, ptr %.pn.i368, i64 48
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !55 ; 6 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !55 ; 2 uses
  %i.aej = icmp eq i64 %i.aeg, %i.aei
  br i1 %i.aej, label %bb.fv, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i

bb.fv:                                            ; preds = %.noexc347
  %i.aek = icmp eq i64 %i.aeg, 0
  br i1 %i.aek, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread26.i.i.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i: ; preds = %bb.fv
  %i.ael = load ptr, ptr %i.aee, align 8, !tbaa !57
  %i.aem = load ptr, ptr %.1.i369, align 8, !tbaa !57
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.aem, ptr %i.ael, i64 %i.aeg)
  %.not29.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not29.i.i.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread26.i.i.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %.noexc347
  %.lcssa.i.i.i = phi i64 [ %i.aei, %.noexc347 ], [ %i.aeg, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i ] ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.lcssa.i.i.i, i64 %i.aeg) ; 2 uses
  %i.aen = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aen, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i
  %i.aeo = load ptr, ptr %i.aee, align 8, !tbaa !57
  %i.aep = load ptr, ptr %.1.i369, align 8, !tbaa !57
  %i.aeq = call i32 @memcmp(ptr noundef %i.aep, ptr noundef %i.aeo, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i345 = icmp eq i32 %i.aeq, 0
  br i1 %.not.i.i.i.i.i345, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %.noexc257

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i
  %i.aer = sub i64 %i.aeg, %.lcssa.i.i.i
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aer, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %.noexc257

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread26.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %bb.fv
  %i.aes = add nuw i64 %.02034.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aes, %.sroa.speculated.i.i.i343
  br i1 %exitcond.not.i.i.i, label %.noexc257.thread, label %.lr.ph.i.i.i344, !llvm.loop !23

.noexc257:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aeq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.aet = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.aet, label %bb.fw, label %.noexc257.thread

bb.fw:                                            ; preds = %.noexc257
  %i.aeu = load ptr, ptr %.sroa.0.021.i.i, align 8, !tbaa !127
  %i.aev = ptrtoint ptr %.sroa.0.021.i.i to i64
  %i.aew = sub i64 %i.aev, %i.zi                  ; 3 uses
  %i.aex = ashr exact i64 %i.aew, 3               ; 2 uses
  %i.aey = icmp sgt i64 %i.aex, 1
  br i1 %i.aey, label %bb.fx, label %bb.fy, !prof !79

bb.fx:                                            ; preds = %bb.fw
  %i.aez = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 16
  %i.afa = sub nsw i64 0, %i.aex
  %i.afb = getelementptr inbounds [8 x i8], ptr %i.aez, i64 %i.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.afb, ptr noundef nonnull align 8 dereferenceable(1) %i.ze, i64 %i.aew, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i

bb.fy:                                            ; preds = %bb.fw
  %i.afc = icmp eq i64 %i.aew, 8
  br i1 %i.afc, label %bb.fz, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i

bb.fz:                                            ; preds = %bb.fy
  %i.afd = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 8
  %i.afe = load ptr, ptr %i.ze, align 8, !tbaa !127
  store ptr %i.afe, ptr %i.afd, align 8, !tbaa !127
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i: ; preds = %bb.fz, %bb.fy, %bb.fx
  store ptr %i.aeu, ptr %i.ze, align 8, !tbaa !127
  br label %.noexc258

.noexc257.thread:                                 ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread26.i.i.i, %.peel.next.i.i, %.noexc257
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_T0_"(ptr nonnull %.sroa.0.021.i.i, ptr nonnull %27)
          to label %.noexc258 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc258:                                        ; preds = %.noexc257.thread, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 2 uses
  %.not.i7.i = icmp eq ptr %.sroa.0.0.i.i, %i.zg
  br i1 %.not.i7.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit", label %.peel.next.i.i, !llvm.loop !471

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEEZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EvT_SH_T0_.exit": ; preds = %.noexc258, %.noexc254, %.noexc256, %.preheader.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4cvc58internal13preprocessing6passes8NodeInfoESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS5_9Normalize13applyInternalEPNS4_17AssertionPipelineEE3$_2EEEvT_SK_T0_.exit.i.i", %bb.ep
  %i.aff = getelementptr inbounds nuw i8, ptr %.sroa.0400.0675, i64 24 ; 2 uses
  %.not477 = icmp eq ptr %i.aff, %.pre775
  br i1 %.not477, label %._crit_edge678.loopexit, label %bb.ep

.loopexit489:                                     ; preds = %.noexc346, %.loopexit26.i367
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body376

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i.i221
  %lpad.loopexit490 = landingpad { ptr, i32 }
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
  %.sroa.0396.0685 = phi ptr [ %i.afj, %._crit_edge683 ], [ %.pre777, %._crit_edge678 ] ; 3 uses
  %i.afg = load ptr, ptr %.sroa.0396.0685, align 8, !tbaa !207 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.0396.0685, i64 8
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !207 ; 2 uses
  %.not481679 = icmp eq ptr %i.afg, %i.afi
  br i1 %.not481679, label %._crit_edge683, label %.lr.ph682

._crit_edge683:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267, %.lr.ph687
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.0396.0685, i64 24 ; 2 uses
  %.not478 = icmp eq ptr %i.afj, %.pre779
  br i1 %.not478, label %.loopexit.loopexit, label %.lr.ph687

.lr.ph682:                                        ; preds = %.lr.ph687, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267
  %.sroa.0392.0680 = phi ptr [ %i.agr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267 ], [ %i.afg, %.lr.ph687 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.afk = load ptr, ptr %.sroa.0392.0680, align 8, !tbaa !127
  %i.afl = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ga unwind label %bb.gl

bb.ga:                                            ; preds = %.lr.ph682
  invoke void @_ZN4cvc58internal13preprocessing6passes9renameQidERKNS0_12NodeTemplateILb1EEERSt13unordered_mapIS4_S4_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S4_EEERS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_S8_ISM_ESA_ISM_ESaISC_IKSM_SM_EEEPNS0_11NodeManagerE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %i.afk, ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef %i.afl)
          to label %bb.gb unwind label %bb.gl

bb.gb:                                            ; preds = %bb.ga
  %i.afm = load ptr, ptr %.sroa.0392.0680, align 8, !tbaa !127 ; 2 uses
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !78 ; 4 uses
  %i.afo = load ptr, ptr %30, align 8, !tbaa !78  ; 9 uses
  %.not.i259 = icmp eq ptr %i.afn, %i.afo
  br i1 %.not.i259, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264, label %bb.gc, !prof !80

bb.gc:                                            ; preds = %bb.gb
  %i.afp = load i64, ptr %i.afn, align 8          ; 3 uses
  %i.afq = and i64 %i.afp, 1152920405095219200
  %.not.i.i260 = icmp eq i64 %i.afq, 1152920405095219200
  br i1 %.not.i.i260, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261, label %bb.gd, !prof !80

bb.gd:                                            ; preds = %bb.gc
  %i.afr = add i64 %i.afp, 1152920405095219200
  %i.afs = and i64 %i.afr, 1152920405095219200    ; 2 uses
  %i.aft = and i64 %i.afp, -1152920405095219201
  %i.afu = or disjoint i64 %i.afs, %i.aft
  store i64 %i.afu, ptr %i.afn, align 8
  %i.afv = icmp eq i64 %i.afs, 0
  br i1 %i.afv, label %bb.ge, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261, !prof !80

bb.ge:                                            ; preds = %bb.gd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afn)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261 unwind label %bb.gm

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261: ; preds = %bb.ge, %bb.gd, %bb.gc
  store ptr %i.afo, ptr %i.afm, align 8, !tbaa !78
  %i.afw = load i64, ptr %i.afo, align 8          ; 3 uses
  %i.afx = lshr i64 %i.afw, 40
  %i.afy = trunc nuw nsw i64 %i.afx to i32
  %i.afz = and i32 %i.afy, 1048575                ; 3 uses
  %i.aga = icmp samesign ult i32 %i.afz, 1048574
  br i1 %i.aga, label %bb.gf, label %bb.gg, !prof !79

bb.gf:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261
  %i.agb = add nuw nsw i32 %i.afz, 1
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = shl nuw nsw i64 %i.agc, 40
  %i.age = and i64 %i.afw, -1152920405095219201
  %i.agf = or i64 %i.agd, %i.age
  store i64 %i.agf, ptr %i.afo, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264

bb.gg:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i261
  %i.agg = icmp eq i32 %i.afz, 1048574
  br i1 %i.agg, label %bb.gh, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264, !prof !80

bb.gh:                                            ; preds = %bb.gg
  %i.agh = or i64 %i.afw, 1152920405095219200
  store i64 %i.agh, ptr %i.afo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264 unwind label %bb.gm

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264: ; preds = %bb.gg, %bb.gf, %bb.gb, %bb.gh
  %i.agi = load i64, ptr %i.afo, align 8          ; 3 uses
  %i.agj = and i64 %i.agi, 1152920405095219200
  %.not.i.i265 = icmp eq i64 %i.agj, 1152920405095219200
  br i1 %.not.i.i265, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267, label %bb.gi, !prof !80

bb.gi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264
  %i.agk = add i64 %i.agi, 1152920405095219200
  %i.agl = and i64 %i.agk, 1152920405095219200    ; 2 uses
  %i.agm = and i64 %i.agi, -1152920405095219201
  %i.agn = or disjoint i64 %i.agl, %i.agm
  store i64 %i.agn, ptr %i.afo, align 8
  %i.ago = icmp eq i64 %i.agl, 0
  br i1 %i.ago, label %bb.gj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267, !prof !80

bb.gj:                                            ; preds = %bb.gi
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267 unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.agp = landingpad { ptr, i32 }
          catch ptr null
  %i.agq = extractvalue { ptr, i32 } %i.agp, 0
  call void @__clang_call_terminate(ptr %i.agq) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit267: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit264, %bb.gi, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  %i.agr = getelementptr inbounds nuw i8, ptr %.sroa.0392.0680, i64 8 ; 2 uses
  %.not481 = icmp eq ptr %i.agr, %i.afi
  br i1 %.not481, label %._crit_edge683, label %.lr.ph682

bb.gl:                                            ; preds = %bb.ga, %.lr.ph682
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gh, %bb.ge
  %i.agt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #23
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.pn107 = phi { ptr, i32 } [ %i.agt, %bb.gm ], [ %i.ags, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.im

.loopexit.loopexit:                               ; preds = %._crit_edge683
  %.pre776 = load ptr, ptr %10, align 8, !tbaa !475
  %.pre778 = load ptr, ptr %i.ic, align 8, !tbaa !475
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge678
  %i.agu = phi ptr [ %.pre778, %.loopexit.loopexit ], [ %.pre779, %._crit_edge678 ] ; 2 uses
  %i.agv = phi ptr [ %.pre776, %.loopexit.loopexit ], [ %.pre777, %._crit_edge678 ] ; 2 uses
  %.not479694 = icmp eq ptr %i.agv, %i.agu
  br i1 %.not479694, label %._crit_edge699.thread, label %.lr.ph698

._crit_edge699.thread:                            ; preds = %.loopexit
  %i.agw = load ptr, ptr %i.g, align 8, !tbaa !134 ; 2 uses
  %i.agx = load ptr, ptr %i.e, align 8, !tbaa !147 ; 2 uses
  %i.agy = ptrtoint ptr %i.agw to i64
  %i.agz = ptrtoint ptr %i.agx to i64
  %i.aha = sub i64 %i.agy, %i.agz
  %i.ahb = ashr exact i64 %i.aha, 3
  br label %bb.gp

._crit_edge699:                                   ; preds = %._crit_edge693
  %i.ahc = load ptr, ptr %i.g, align 8, !tbaa !134 ; 2 uses
  %i.ahd = load ptr, ptr %i.e, align 8, !tbaa !147 ; 2 uses
  %i.ahe = ptrtoint ptr %i.ahc to i64
  %i.ahf = ptrtoint ptr %i.ahd to i64
  %i.ahg = sub i64 %i.ahe, %i.ahf
  %i.ahh = ashr exact i64 %i.ahg, 3               ; 3 uses
  %i.ahi = icmp ugt i64 %.1.lcssa, %i.ahh
  br i1 %i.ahi, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %._crit_edge699
  %i.ahj = sub nuw i64 %.1.lcssa, %i.ahh
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ahj)
          to label %_ZN4cvc58internal13preprocessing17AssertionPipeline6resizeEm.exit unwind label %bb.il

bb.gp:                                            ; preds = %._crit_edge699.thread, %._crit_edge699
  %i.ahk = phi i64 [ %i.ahb, %._crit_edge699.thread ], [ %i.ahh, %._crit_edge699 ]
  %i.ahl = phi ptr [ %i.agx, %._crit_edge699.thread ], [ %i.ahd, %._crit_edge699 ]
  %i.ahm = phi ptr [ %i.agw, %._crit_edge699.thread ], [ %i.ahc, %._crit_edge699 ] ; 2 uses
  %.0.lcssa1010 = phi i64 [ 0, %._crit_edge699.thread ], [ %.1.lcssa, %._crit_edge699 ] ; 2 uses
  %i.ahn = icmp ult i64 %.0.lcssa1010, %i.ahk
  br i1 %i.ahn, label %bb.gq, label %_ZN4cvc58internal13preprocessing17AssertionPipeline6resizeEm.exit

bb.gq:                                            ; preds = %bb.gp
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %i.ahl, i64 %.0.lcssa1010 ; 3 uses
  %.not.i.i.i268 = icmp eq ptr %i.ahm, %i.aho
  br i1 %.not.i.i.i268, label %_ZN4cvc58internal13preprocessing17AssertionPipeline6resizeEm.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.gq, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ahz, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.aho, %bb.gq ] ; 2 uses
  %i.ahp = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !78 ; 3 uses
  %i.ahq = load i64, ptr %i.ahp, align 8          ; 3 uses
  %i.ahr = and i64 %i.ahq, 1152920405095219200
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ahr, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i.i, label %bb.gr, !prof !80

bb.gr:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ahs = add i64 %i.ahq, 1152920405095219200
  %i.aht = and i64 %i.ahs, 1152920405095219200    ; 2 uses
  %i.ahu = and i64 %i.ahq, -1152920405095219201
  %i.ahv = or disjoint i64 %i.aht, %i.ahu
  store i64 %i.ahv, ptr %i.ahp, align 8
  %i.ahw = icmp eq i64 %i.aht, 0
  br i1 %i.ahw, label %bb.gs, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i.i, !prof !80

bb.gs:                                            ; preds = %bb.gr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahp)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i.i unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ahx = landingpad { ptr, i32 }
          catch ptr null
  %i.ahy = extractvalue { ptr, i32 } %i.ahx, 0
  call void @__clang_call_terminate(ptr %i.ahy) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.gs, %bb.gr, %.lr.ph.i.i.i.i.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i269 = icmp eq ptr %i.ahz, %i.ahm
  br i1 %.not.i.i.i.i.i269, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.aho, ptr %i.g, align 8, !tbaa !134
  br label %_ZN4cvc58internal13preprocessing17AssertionPipeline6resizeEm.exit

.lr.ph698:                                        ; preds = %.loopexit, %._crit_edge693
  %.0696 = phi i64 [ %.1.lcssa, %._crit_edge693 ], [ 0, %.loopexit ] ; 2 uses
  %.sroa.0388.0695 = phi ptr [ %i.aid, %._crit_edge693 ], [ %i.agv, %.loopexit ] ; 3 uses
  %i.aia = load ptr, ptr %.sroa.0388.0695, align 8, !tbaa !207 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %.sroa.0388.0695, i64 8
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !207 ; 2 uses
  %.not480688 = icmp eq ptr %i.aia, %i.aic
  br i1 %.not480688, label %._crit_edge693, label %.lr.ph692

._crit_edge693:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274, %.lr.ph698
  %.1.lcssa = phi i64 [ %.0696, %.lr.ph698 ], [ %i.aie, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274 ] ; 4 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.sroa.0388.0695, i64 24 ; 2 uses
  %.not479 = icmp eq ptr %i.aid, %i.agu
  br i1 %.not479, label %._crit_edge699, label %.lr.ph698

.lr.ph692:                                        ; preds = %.lr.ph698, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274
  %.1690 = phi i64 [ %i.aie, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274 ], [ %.0696, %.lr.ph698 ] ; 2 uses
  %.sroa.0384.0689 = phi ptr [ %i.ajd, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274 ], [ %i.aia, %.lr.ph698 ] ; 2 uses
  %i.aie = add i64 %.1690, 1                      ; 2 uses
  %i.aif = load ptr, ptr %.sroa.0384.0689, align 8, !tbaa !127
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !78 ; 5 uses
  store ptr %i.aig, ptr %31, align 8, !tbaa !78
  %i.aih = load i64, ptr %i.aig, align 8          ; 3 uses
  %i.aii = lshr i64 %i.aih, 40
  %i.aij = trunc nuw nsw i64 %i.aii to i32
  %i.aik = and i32 %i.aij, 1048575                ; 3 uses
  %i.ail = icmp samesign ult i32 %i.aik, 1048574
  br i1 %i.ail, label %bb.gu, label %bb.gv, !prof !79

bb.gu:                                            ; preds = %.lr.ph692
  %i.aim = add nuw nsw i32 %i.aik, 1
  %i.ain = zext nneg i32 %i.aim to i64
  %i.aio = shl nuw nsw i64 %i.ain, 40
  %i.aip = and i64 %i.aih, -1152920405095219201
  %i.aiq = or i64 %i.aio, %i.aip
  store i64 %i.aiq, ptr %i.aig, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.gv:                                            ; preds = %.lr.ph692
  %i.air = icmp eq i32 %i.aik, 1048574
  br i1 %i.air, label %bb.gw, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !80

bb.gw:                                            ; preds = %bb.gv
  %i.ais = or i64 %i.aih, 1152920405095219200
  store i64 %i.ais, ptr %i.aig, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aig)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.hb

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.gv, %bb.gu, %bb.gw
  invoke void @_ZN4cvc58internal13preprocessing17AssertionPipeline7replaceEmNS0_12NodeTemplateILb1EEEPNS0_14ProofGeneratorENS0_7TrustIdE(ptr noundef nonnull align 8 dereferenceable(208) %1, i64 noundef %.1690, ptr noundef nonnull align 8 %31, ptr noundef null, i32 noundef 73)
          to label %bb.gx unwind label %bb.hc

bb.gx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ait = load ptr, ptr %31, align 8, !tbaa !78  ; 3 uses
  %i.aiu = load i64, ptr %i.ait, align 8          ; 3 uses
  %i.aiv = and i64 %i.aiu, 1152920405095219200
  %.not.i.i272 = icmp eq i64 %i.aiv, 1152920405095219200
  br i1 %.not.i.i272, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274, label %bb.gy, !prof !80

bb.gy:                                            ; preds = %bb.gx
  %i.aiw = add i64 %i.aiu, 1152920405095219200
  %i.aix = and i64 %i.aiw, 1152920405095219200    ; 2 uses
  %i.aiy = and i64 %i.aiu, -1152920405095219201
  %i.aiz = or disjoint i64 %i.aix, %i.aiy
  store i64 %i.aiz, ptr %i.ait, align 8
  %i.aja = icmp eq i64 %i.aix, 0
  br i1 %i.aja, label %bb.gz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274, !prof !80

bb.gz:                                            ; preds = %bb.gy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ait)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ajb = landingpad { ptr, i32 }
          catch ptr null
  %i.ajc = extractvalue { ptr, i32 } %i.ajb, 0
  call void @__clang_call_terminate(ptr %i.ajc) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274: ; preds = %bb.gx, %bb.gy, %bb.gz
  %i.ajd = getelementptr inbounds nuw i8, ptr %.sroa.0384.0689, i64 8 ; 2 uses
  %.not480 = icmp eq ptr %i.ajd, %i.aic
  br i1 %.not480, label %._crit_edge693, label %.lr.ph692

bb.hb:                                            ; preds = %bb.gw
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.hc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ajf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #23
  br label %bb.im

_ZN4cvc58internal13preprocessing17AssertionPipeline6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.gq, %bb.gp, %bb.go
  %i.ajg = load ptr, ptr %i.yz, align 8, !tbaa !131 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ajg, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i275

.lr.ph.i.i.i.i275:                                ; preds = %_ZN4cvc58internal13preprocessing17AssertionPipeline6resizeEm.exit, %.noexc.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ajh, %.noexc.i.i.i ], [ %i.ajg, %_ZN4cvc58internal13preprocessing17AssertionPipeline6resizeEm.exit ] ; 2 uses
  %i.ajh = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !87 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE18_M_deallocate_nodeEPS9_(ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef nonnull %.06.i.i.i.i)
          to label %.noexc.i.i.i unwind label %bb.hd

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i275
  %.not.i.i.i.i276 = icmp eq ptr %i.ajh, null
  br i1 %.not.i.i.i.i276, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i275, !llvm.loop !11

bb.hd:                                            ; preds = %.lr.ph.i.i.i.i275
  %i.aji = landingpad { ptr, i32 }
          catch ptr null
  %i.ajj = extractvalue { ptr, i32 } %i.aji, 0
  call void @__clang_call_terminate(ptr %i.ajj) #25
  unreachable

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.noexc.i.i.i, %_ZN4cvc58internal13preprocessing17AssertionPipeline6resizeEm.exit
  %i.ajk = load ptr, ptr %29, align 8, !tbaa !129
  %i.ajl = load i64, ptr %i.yy, align 8, !tbaa !130
  %i.ajm = shl i64 %i.ajl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ajk, i8 0, i64 %i.ajm, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yz, i8 0, i64 16, i1 false)
  %i.ajn = load ptr, ptr %29, align 8, !tbaa !129 ; 2 uses
  %i.ajo = icmp eq ptr %i.ajn, %i.yx
  br i1 %i.ajo, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit, label %bb.he

end_hunk_1
begin_hunk_2_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEEbELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESG_IJEEEEEPS9_DpOT_:bb.a
bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.v

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !191    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNKSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !180
  store ptr null, ptr %i.r, align 8, !tbaa !179
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !180
  store ptr null, ptr %2, align 8, !tbaa !182
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !180, !alias.scope !590, !noalias !589
  store ptr null, ptr %i.t, align 8, !tbaa !179, !alias.scope !590, !noalias !589
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !180, !alias.scope !589, !noalias !590
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !182, !alias.scope !590, !noalias !589
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !17

_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !180, !alias.scope !592, !noalias !591
  store ptr null, ptr %i.y, align 8, !tbaa !179, !alias.scope !592, !noalias !591
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !180, !alias.scope !591, !noalias !592
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !182, !alias.scope !592, !noalias !591
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !17

_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !176
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #24
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !191
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !175
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !176
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoELN9__gnu_cxx12_Lock_policyE2EEC2IS4_St14default_deleteIS4_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !179
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS5_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSD_m.exit.i

_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS5_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSD_m.exit.i: ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS8_EEEOSt10unique_ptrIT_T0_E.exit unwind label %bb.p ; 13 uses

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS8_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS5_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSD_m.exit.i
  %i.e = load ptr, ptr %1, align 8, !tbaa !127
  store ptr null, ptr %1, align 8, !tbaa !127
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8, !tbaa !184
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !185
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !594
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !179  ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21, label %bb.b

bb.b:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS8_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.f, align 8, !tbaa !92
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !179
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %.pr.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 8 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !184
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !185
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #23, !inline_history !593
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #23, !inline_history !593
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i9.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !92
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !80

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.j
  store ptr %i.d, ptr %i.b, align 8, !tbaa !179
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS8_EEEOSt10unique_ptrIT_T0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21
  store i32 0, ptr %i.ab, align 8, !tbaa !184
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !185
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !32
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !32
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i7 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !92
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !80

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS5_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSD_m.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #23
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !596  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN4cvc58internal13preprocessing6passes8NodeInfoEEclEPS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4cvc58internal13preprocessing6passes8NodeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.b) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 136) #24
  br label %_ZNKSt14default_deleteIN4cvc58internal13preprocessing6passes8NodeInfoEEclEPS4_.exit

_ZNKSt14default_deleteIN4cvc58internal13preprocessing6passes8NodeInfoEEclEPS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS5_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN4cvc58internal13preprocessing6passes8NodeInfoESt14default_deleteIS4_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !598  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN4cvc58internal13preprocessing6passes8NodeInfoEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !56
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(68) @_ZTSSt14default_deleteIN4cvc58internal13preprocessing6passes8NodeInfoEE) #23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSK_10_Hash_nodeISI_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !249
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !173
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !277
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #23 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !249
  invoke void @__cxa_rethrow() #26
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !173
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %2, ptr %i.t, align 8, !tbaa !91
  %i.u = load ptr, ptr %0, align 8, !tbaa !172    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87
  store ptr %i.x, ptr %3, align 8, !tbaa !87
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !89
  store ptr %3, ptr %i.y, align 8, !tbaa !87
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10shared_ptrIN4cvc58internal13preprocessing6passes8NodeInfoEESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSK_10_Hash_nodeISI_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !240
  store ptr %i.aa, ptr %3, align 8, !tbaa !87
  store ptr %3, ptr %i.z, align 8, !tbaa !240
  %i.ab = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
end_hunk_2
