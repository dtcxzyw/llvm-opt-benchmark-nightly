Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/quantile?download=true
inline.NumInlined: 5688
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN7xgboost6common19HostSketchContainer19AllreduceCategoriesEPKNS_7ContextENS0_4SpanIKjLm18446744073709551615EEE:bb.a
  %i.xo = load i64, ptr %i.xm, align 8, !tbaa !65, !noalias !354
  %i.xp = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xp) #31, !noalias !354
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i75.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i75.i.i.i.i: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i74.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr14.i149.i.i.i, i64 noundef 32) #31, !noalias !354
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit77.i.i.i.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit77.i.i.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i75.i.i.i.i, %bb.ft, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15, !noalias !354
  %.val41.i.i.i.i = load i64, ptr %i.ht, align 8, !tbaa !490, !noalias !354
  %.val40.i.i.i.i = load i64, ptr %i.hu, align 8, !tbaa !490, !noalias !354
  %i.xq = add i64 %.val40.i.i.i.i, %.val41.i.i.i.i
  invoke fastcc void @_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayload10InitHeaderEPSt6vectorISt4byteSaIS4_EEmm(ptr noundef nonnull %37, i64 noundef %3, i64 noundef %i.xq)
          to label %.lr.ph.i.preheader.i.i.i unwind label %bb.fw, !noalias !354

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit77.i.i.i.i
  %i.xr = call i64 @llvm.usub.sat.i64(i64 %i.vw, i64 1)
  %i.xs = call i64 @llvm.usub.sat.i64(i64 %i.wv, i64 1)
  br label %.lr.ph.i.i.i.i

bb.fv:                                            ; preds = %bb.fs, %bb.fp
  %.pn27.pn.i.i.i.i = phi { ptr, i32 } [ %.pn27.i.i.i.i, %bb.fs ], [ %i.xi, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15, !noalias !354
  br label %bb.gt

bb.fw:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit77.i.i.i.i
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayload12AppendValuesEPSt6vectorISt4byteSaIS4_EEmNS0_4SpanIKfLm18446744073709551615EEE.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.02454.i.i.i.i = phi i64 [ %i.xw, %_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayload12AppendValuesEPSt6vectorISt4byteSaIS4_EEmNS0_4SpanIKfLm18446744073709551615EEE.exit.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15, !noalias !354
  %exitcond.not.i.i.i = icmp eq i64 %.02454.i.i.i.i, %i.vw
  br i1 %exitcond.not.i.i.i, label %.invoke.i.i.i.i, label %_ZNKSt6vectorImSaImEE2atEm.exit.i.i.i.i.i

_ZNKSt6vectorImSaImEE2atEm.exit.i.i.i.i.i:        ; preds = %.lr.ph.i.i.i.i
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %.val38.i.i.i.i, i64 %.02454.i.i.i.i
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !60, !noalias !354 ; 3 uses
  %i.xw = add nuw i64 %.02454.i.i.i.i, 1          ; 6 uses
  %exitcond799.not.i.i.i = icmp eq i64 %.02454.i.i.i.i, %i.xr
  br i1 %exitcond799.not.i.i.i, label %.invoke.i.i.i.i, label %_ZNKSt6vectorImSaImEE2atEm.exit8.i.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %_ZNKSt6vectorImSaImEE2atEm.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.xx = phi i64 [ %i.vw, %.lr.ph.i.i.i.i ], [ %i.xw, %_ZNKSt6vectorImSaImEE2atEm.exit.i.i.i.i.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.49, i64 noundef %i.xx, i64 noundef %i.vw) #29
          to label %.cont.i.i.i.i unwind label %bb.gr, !noalias !354

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_ZNKSt6vectorImSaImEE2atEm.exit8.i.i.i.i.i:       ; preds = %_ZNKSt6vectorImSaImEE2atEm.exit.i.i.i.i.i
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %.val38.i.i.i.i, i64 %i.xw
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !60, !noalias !354 ; 2 uses
  %i.ya = icmp eq i64 %i.xz, %i.xv
  br i1 %i.ya, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %_ZNKSt6vectorImSaImEE2atEm.exit8.i.i.i.i.i
  %i.yb = sub i64 %i.xz, %i.xv
  %i.yc = load ptr, ptr %i.hv, align 8, !tbaa !492, !noalias !354 ; 2 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %i.xv
  %.not.i80.i.i.i.i = icmp eq ptr %i.yc, null
  br i1 %.not.i80.i.i.i.i, label %bb.fy, label %bb.fz, !prof !55

bb.fy:                                            ; preds = %bb.fx
  call void @_ZSt9terminatev() #32, !noalias !354
  unreachable

bb.fz:                                            ; preds = %bb.fx, %_ZNKSt6vectorImSaImEE2atEm.exit8.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %_ZNKSt6vectorImSaImEE2atEm.exit8.i.i.i.i.i ], [ %i.yb, %bb.fx ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi ptr [ null, %_ZNKSt6vectorImSaImEE2atEm.exit8.i.i.i.i.i ], [ %i.yd, %bb.fx ]
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %16, align 8, !noalias !354
  store ptr %.sroa.4.0.i.i.i.i.i, ptr %i.hw, align 8, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15, !noalias !354
  %exitcond800.not.i.i.i = icmp eq i64 %.02454.i.i.i.i, %i.wv
  br i1 %exitcond800.not.i.i.i, label %.invoke135.i.i.i.i, label %_ZNKSt6vectorImSaImEE2atEm.exit.i84.i.i.i.i

.invoke135.i.i.i.i:                               ; preds = %_ZNKSt6vectorImSaImEE2atEm.exit.i84.i.i.i.i, %bb.fz
  %i.ye = phi i64 [ %i.wv, %bb.fz ], [ %i.xw, %_ZNKSt6vectorImSaImEE2atEm.exit.i84.i.i.i.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.49, i64 noundef %i.ye, i64 noundef %i.wv) #29
          to label %.cont136.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !354

.cont136.i.i.i.i:                                 ; preds = %.invoke135.i.i.i.i
  unreachable

_ZNKSt6vectorImSaImEE2atEm.exit.i84.i.i.i.i:      ; preds = %bb.fz
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %.02454.i.i.i.i
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !60, !noalias !354 ; 3 uses
  %exitcond801.not.i.i.i = icmp eq i64 %.02454.i.i.i.i, %i.xs
  br i1 %exitcond801.not.i.i.i, label %.invoke135.i.i.i.i, label %_ZNKSt6vectorImSaImEE2atEm.exit8.i86.i.i.i.i

_ZNKSt6vectorImSaImEE2atEm.exit8.i86.i.i.i.i:     ; preds = %_ZNKSt6vectorImSaImEE2atEm.exit.i84.i.i.i.i
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %i.xw
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !60, !noalias !354 ; 2 uses
  %i.yj = icmp eq i64 %i.yi, %i.yg
  br i1 %i.yj, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %_ZNKSt6vectorImSaImEE2atEm.exit8.i86.i.i.i.i
  %i.yk = sub i64 %i.yi, %i.yg
  %i.yl = load ptr, ptr %i.hx, align 8, !tbaa !492, !noalias !354 ; 2 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %i.yg
  %.not.i87.i.i.i.i = icmp eq ptr %i.yl, null
  br i1 %.not.i87.i.i.i.i, label %bb.gb, label %bb.gc, !prof !55

bb.gb:                                            ; preds = %bb.ga
  call void @_ZSt9terminatev() #32, !noalias !354
  unreachable

bb.gc:                                            ; preds = %bb.ga, %_ZNKSt6vectorImSaImEE2atEm.exit8.i86.i.i.i.i
  %.sroa.0.0.i88.i.i.i.i = phi i64 [ 0, %_ZNKSt6vectorImSaImEE2atEm.exit8.i86.i.i.i.i ], [ %i.yk, %bb.ga ] ; 3 uses
  %.sroa.4.0.i89.i.i.i.i = phi ptr [ null, %_ZNKSt6vectorImSaImEE2atEm.exit8.i86.i.i.i.i ], [ %i.ym, %bb.ga ]
  store i64 %.sroa.0.0.i88.i.i.i.i, ptr %17, align 8, !noalias !354
  store ptr %.sroa.4.0.i89.i.i.i.i, ptr %i.hy, align 8, !noalias !354
  %i.yn = load ptr, ptr %51, align 8, !tbaa !54, !noalias !354 ; 3 uses
  %i.yo = load ptr, ptr %i.hz, align 8, !tbaa !52, !noalias !354
  %.not.i.i.i.i.i.i = icmp eq ptr %i.yo, %i.yn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEE5clearEv.exit.i.i.i.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %bb.gc
  store ptr %i.yn, ptr %i.hz, align 8, !tbaa !52, !noalias !354
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit.i.i.i.i

_ZNSt6vectorIfSaIfEE5clearEv.exit.i.i.i.i:        ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i.i.i, %bb.gc
  %i.yp = add i64 %.sroa.0.0.i88.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 4 uses
  %i.yq = icmp ugt i64 %i.yp, 2305843009213693951
  br i1 %i.yq, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit.i.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29
          to label %.noexc95.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !354

.noexc95.i.i.i.i:                                 ; preds = %bb.gd
  unreachable

bb.ge:                                            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit.i.i.i.i
  %i.yr = load ptr, ptr %i.ia, align 8, !tbaa !56, !noalias !354
  %i.ys = ptrtoint ptr %i.yr to i64
  %i.yt = ptrtoint ptr %i.yn to i64
  %i.yu = sub i64 %i.ys, %i.yt
  %i.yv = ashr exact i64 %i.yu, 2
  %i.yw = icmp ult i64 %i.yv, %i.yp
  br i1 %i.yw, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.gh

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.ge
  %i.yx = shl nuw nsw i64 %i.yp, 2
  %i.yy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yx) #30
          to label %.noexc96.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !354 ; 4 uses

.noexc96.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i.i.i.i
  %i.yz = load ptr, ptr %51, align 8, !tbaa !54, !noalias !354 ; 4 uses
  %i.za = load ptr, ptr %i.hz, align 8, !tbaa !52, !noalias !354
  %i.zb = ptrtoint ptr %i.za to i64
  %i.zc = ptrtoint ptr %i.yz to i64               ; 2 uses
  %i.zd = sub i64 %i.zb, %i.zc                    ; 2 uses
  %i.ze = icmp sgt i64 %i.zd, 0
  br i1 %i.ze, label %bb.gf, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i.i.i.i.i

bb.gf:                                            ; preds = %.noexc96.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yy, ptr align 4 %i.yz, i64 %i.zd, i1 false), !noalias !354
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i.i.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i.i.i.i.i: ; preds = %bb.gf, %.noexc96.i.i.i.i
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.yz, null
  br i1 %.not.i8.i.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i.i.i.i.i, label %bb.gg

bb.gg:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i.i.i.i.i
  %i.zf = load ptr, ptr %i.ia, align 8, !tbaa !56, !noalias !354
  %i.zg = ptrtoint ptr %i.zf to i64
  %i.zh = sub i64 %i.zg, %i.zc
  call void @_ZdlPvm(ptr noundef nonnull %i.yz, i64 noundef %i.zh) #31, !noalias !354
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i.i.i.i.i: ; preds = %bb.gg, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i.i.i.i.i
  store ptr %i.yy, ptr %51, align 8, !tbaa !54, !noalias !354
  store ptr %i.yy, ptr %i.hz, align 8, !tbaa !52, !noalias !354
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.yp
  store ptr %i.zi, ptr %i.ia, align 8, !tbaa !56, !noalias !354
  %.pre.i151.i.i.i = load i64, ptr %16, align 8, !tbaa !490, !noalias !354
  %.pre94.i.i.i.i = load i64, ptr %17, align 8, !tbaa !490, !noalias !354
  br label %bb.gh

bb.gh:                                            ; preds = %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i.i.i.i.i, %bb.ge
  %i.zj = phi i64 [ %.sroa.0.0.i88.i.i.i.i, %bb.ge ], [ %.pre94.i.i.i.i, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i.i.i.i.i ]
  %i.zk = phi i64 [ %.sroa.0.0.i.i.i.i.i, %bb.ge ], [ %.pre.i151.i.i.i, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !354
  store ptr %17, ptr %9, align 8, !noalias !354
  store i64 %i.zj, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !noalias !354
  %i.zl = invoke ptr @_ZSt11__set_unionIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKfLm18446744073709551615EEELb1EEES7_St20back_insert_iteratorISt6vectorIfSaIfEEEN9__gnu_cxx5__ops15_Iter_less_iterEET1_T_SH_T0_SI_SG_T2_(ptr nonnull %16, i64 0, ptr nonnull %16, i64 %i.zk, ptr nonnull %17, i64 0, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.74") align 8 %9, i64 %i.ib)
          to label %bb.gi unwind label %.loopexit.i.i.i.i, !noalias !354 ; 0 uses

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !354
  %i.zm = load ptr, ptr %i.hz, align 8, !tbaa !52, !noalias !354 ; 2 uses
  %i.zn = load ptr, ptr %51, align 8, !tbaa !54, !noalias !354 ; 4 uses
  %i.zo = ptrtoint ptr %i.zm to i64
  %i.zp = ptrtoint ptr %i.zn to i64
  %i.zq = sub i64 %i.zo, %i.zp                    ; 2 uses
  %i.zr = ashr exact i64 %i.zq, 2
  %i.zs = shl i64 %.02454.i.i.i.i, 3              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !354
  %i.zt = add i64 %i.zs, 16                       ; 2 uses
  store i64 %i.zt, ptr %i.c, align 8, !tbaa !60, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15, !noalias !354
  %i.zu = load ptr, ptr %i.hq, align 8, !tbaa !308, !noalias !354
  %i.zv = load ptr, ptr %37, align 16, !tbaa !310, !noalias !354
  %i.zw = ptrtoint ptr %i.zu to i64
  %i.zx = ptrtoint ptr %i.zv to i64
  %i.zy = sub i64 %i.zw, %i.zx                    ; 2 uses
  store i64 %i.zy, ptr %i.d, align 8, !tbaa !60, !noalias !354
  %.not.i.i106.i.i.i.i = icmp ugt i64 %i.zt, %i.zy
  br i1 %.not.i.i106.i.i.i.i, label %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i, label %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i

_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i: ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15, !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !354
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i

_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i: ; preds = %bb.gi
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc108.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !354

.noexc108.i.i.i.i:                                ; preds = %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !61, !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15, !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !354
  %.not.i107.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %.not.i107.i.i.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %.noexc108.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !354
  %i.zz = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc.i.i.i.i.i unwind label %bb.gk, !noalias !354

.noexc.i.i.i.i.i:                                 ; preds = %bb.gj
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.zz, ptr noundef nonnull @.str, i32 noundef 246)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i unwind label %bb.gk, !noalias !354

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i:  ; preds = %.noexc.i.i.i.i.i
  %i.aaa = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i unwind label %bb.gl, !noalias !354 ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i
  %i.aab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaa, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i unwind label %bb.gl, !noalias !354 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i
  %i.aac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaa, ptr noundef nonnull @.str.53, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19.i.i.i.i.i unwind label %bb.gl, !noalias !354 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i
  %i.aad = load ptr, ptr %7, align 8, !tbaa !61, !noalias !354 ; 2 uses
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !63, !noalias !354
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !64, !noalias !354
  %i.aah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaa, ptr noundef %i.aae, i64 noundef %i.aag)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i unwind label %bb.gl, !noalias !354

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19.i.i.i.i.i
  %i.aai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aah, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22.i.i.i.i.i unwind label %bb.gl, !noalias !354 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.gn unwind label %bb.gk, !noalias !354

bb.gk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.gj
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gl:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19.i.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i
  %i.aak = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.gm unwind label %bb.gq, !noalias !354

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.aaj, %bb.gk ], [ %i.aak, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !354
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #15, !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !354
  br label %.body.i150.i.i.i

bb.gn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !354
  %.pr28.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !61, !noalias !354 ; 4 uses
  %.not.i23.i.i.i.i.i = icmp eq ptr %.pr28.i.i.i.i.i, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aal = load ptr, ptr %.pr28.i.i.i.i.i, align 8, !tbaa !63, !noalias !354 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.pr28.i.i.i.i.i, i64 16 ; 2 uses
  %i.aan = icmp eq ptr %i.aal, %i.aam
  br i1 %i.aan, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.go
  %i.aao = load i64, ptr %i.aam, align 8, !tbaa !65, !noalias !354
  %i.aap = add i64 %i.aao, 1
  call void @_ZdlPvm(ptr noundef %i.aal, i64 noundef %i.aap) #31, !noalias !354
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i: ; preds = %bb.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr28.i.i.i.i.i, i64 noundef 32) #31, !noalias !354
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i, %bb.gn, %.noexc108.i.i.i.i, %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !354
  %.val.i.i.i.i.i = load ptr, ptr %37, align 16, !tbaa !175, !noalias !354
  %i.aaq = getelementptr i8, ptr %.val.i.i.i.i.i, i64 %i.zs
  %i.aar = getelementptr i8, ptr %i.aaq, i64 8
  store i64 %i.zr, ptr %i.aar, align 1, !noalias !354
  %i.aas = icmp eq ptr %i.zm, %i.zn
  br i1 %i.aas, label %_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayload12AppendValuesEPSt6vectorISt4byteSaIS4_EEmNS0_4SpanIKfLm18446744073709551615EEE.exit.i.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i
  %i.aat = load ptr, ptr %i.hq, align 8, !tbaa !175, !noalias !354
  %i.aau = getelementptr inbounds nuw i8, ptr %i.zn, i64 %i.zq
  %i.aav = load ptr, ptr %37, align 16, !tbaa !175, !noalias !354 ; 2 uses
  %i.aaw = ptrtoint ptr %i.aat to i64
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  %i.aaz = getelementptr inbounds i8, ptr %i.aav, i64 %i.aay
  invoke void @_ZNSt6vectorISt4byteSaIS0_EE15_M_range_insertIPKS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr %i.aaz, ptr noundef nonnull %i.zn, ptr noundef nonnull %i.aau)
          to label %_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayload12AppendValuesEPSt6vectorISt4byteSaIS4_EEmNS0_4SpanIKfLm18446744073709551615EEE.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !354

bb.gq:                                            ; preds = %bb.gl
  %i.aba = landingpad { ptr, i32 }
          catch ptr null
  %i.abb = extractvalue { ptr, i32 } %i.aba, 0
  call void @__clang_call_terminate(ptr %i.abb) #32, !noalias !354
  unreachable

_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayload12AppendValuesEPSt6vectorISt4byteSaIS4_EEmNS0_4SpanIKfLm18446744073709551615EEE.exit.i.i.i.i: ; preds = %bb.gp, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !354
  %exitcond.not = icmp eq i64 %i.xw, %3
  br i1 %exitcond.not, label %bb.gx, label %.lr.ph.i.i.i.i, !llvm.loop !493

bb.gr:                                            ; preds = %.invoke.i.i.i.i
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.i.i.i.i:                                ; preds = %bb.gp, %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i, %bb.gh, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i150.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.gd, %.invoke135.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i150.i.i.i

.body.i150.i.i.i:                                 ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.gm
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %bb.gm ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !354
  br label %bb.gs

bb.gs:                                            ; preds = %.body.i150.i.i.i, %bb.gr
  %.pn30.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i150.i.i.i ], [ %i.abc, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !354
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.fw, %bb.fv, %bb.fo
  %.val44.i.i.i.i = phi ptr [ %.val44.pre.i.i.i.i, %bb.fo ], [ %.val.i.i.i.i, %bb.fv ], [ %.val.i.i.i.i, %bb.gs ], [ %.val.i.i.i.i, %bb.fw ] ; 3 uses
  %.pn30.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i137.i.i.i, %bb.fo ], [ %.pn27.pn.i.i.i.i, %bb.fv ], [ %.pn30.i.i.i.i, %bb.gs ], [ %i.xt, %bb.fw ] ; 2 uses
  %.not.i.i.i.i110.i.i.i.i = icmp eq ptr %.val44.i.i.i.i, null
  br i1 %.not.i.i.i.i110.i.i.i.i, label %_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayloadD2Ev.exit111.i.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %.val45.i.i.i.i = load ptr, ptr %i.ic, align 8, !noalias !354
  %i.abd = ptrtoint ptr %.val45.i.i.i.i to i64
  %i.abe = ptrtoint ptr %.val44.i.i.i.i to i64
  %i.abf = sub i64 %i.abd, %i.abe
  call void @_ZdlPvm(ptr noundef nonnull %.val44.i.i.i.i, i64 noundef %i.abf) #31, !noalias !354
  br label %_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayloadD2Ev.exit111.i.i.i.i

_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayloadD2Ev.exit111.i.i.i.i: ; preds = %bb.gu, %bb.gt, %bb.ff
  %.val42.i.i.i.i = phi ptr [ %.val42.pre.i.i.i.i, %bb.ff ], [ %.val38.i.i.i.i, %bb.gt ], [ %.val38.i.i.i.i, %bb.gu ] ; 3 uses
  %.pn30.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.wj, %bb.ff ], [ %.pn30.pn.pn.i.i.i.i, %bb.gt ], [ %.pn30.pn.pn.i.i.i.i, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !354
  %.not.i.i.i.i112.i.i.i.i = icmp eq ptr %.val42.i.i.i.i, null
  br i1 %.not.i.i.i.i112.i.i.i.i, label %_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayloadD2Ev.exit113.i.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayloadD2Ev.exit111.i.i.i.i
  %.val43.i.i.i.i = load ptr, ptr %i.id, align 8, !noalias !354
  %i.abg = ptrtoint ptr %.val43.i.i.i.i to i64
  %i.abh = ptrtoint ptr %.val42.i.i.i.i to i64
  %i.abi = sub i64 %i.abg, %i.abh
  call void @_ZdlPvm(ptr noundef nonnull %.val42.i.i.i.i, i64 noundef %i.abi) #31, !noalias !354
  br label %_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayloadD2Ev.exit113.i.i.i.i

_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayloadD2Ev.exit113.i.i.i.i: ; preds = %bb.gv, %_ZN7xgboost6common12_GLOBAL__N_124CategoricalReducePayloadD2Ev.exit111.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !354
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.i.i.i

bb.gw:                                            ; preds = %bb.fr, %bb.fi
  %i.abj = landingpad { ptr, i32 }
          catch ptr null
  %i.abk = extractvalue { ptr, i32 } %i.abj, 0
  call void @__clang_call_terminate(ptr %i.abk) #32, !noalias !354
end_hunk_0
