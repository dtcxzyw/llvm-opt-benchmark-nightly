Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestDiscoverTests?download=true
inline.NumInlined: 557
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z20cmCTestDiscoverTestsRK19cmTestDiscoveryArgsP18cmCTestTestHandlerRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EER17cmExecutionStatus:bb.a
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.vw
  store i8 0, ptr %i.vz, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.wa = load ptr, ptr %i.qy, align 8, !tbaa !15
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 32
  store ptr %i.wb, ptr %i.qy, align 8, !tbaa !15
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i301

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i.i295
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.vl, ptr noundef nonnull align 8 dereferenceable(32) %.056.i.i.i.i.i297)
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i301 unwind label %.loopexit.split-lp509.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i301: ; preds = %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i300
  %i.wc = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i297, i64 32
  %i.wd = add nsw i64 %.07.i.i.i.i.i296, -1
  %i.we = icmp sgt i64 %.07.i.i.i.i.i296, 1
  br i1 %i.we, label %.lr.ph.i.i.i.i.i295, label %.loopexit517, !llvm.loop !57

.loopexit517:                                     ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSERKS6_.exit.i.i.i.i.i301, %bb.cv
  %i.wf = load ptr, ptr %i.qz, align 8, !tbaa !84 ; 2 uses
  %i.wg = load ptr, ptr %i.ra, align 8, !tbaa !84 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not20.i = icmp eq ptr %i.wf, %i.wg
  br i1 %.not20.i, label %.loopexit513, label %.lr.ph.i306

.lr.ph.i306:                                      ; preds = %.loopexit517, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %.sroa.014.021.i = phi ptr [ %i.xl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.wf, %.loopexit517 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.rb, ptr %5, align 8, !tbaa !19
  %i.wh = load ptr, ptr %.sroa.014.021.i, align 8, !tbaa !23 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i, i64 8
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 %i.wj, ptr %i.d, align 8, !tbaa !21
  %i.wk = icmp ugt i64 %i.wj, 15
  br i1 %i.wk, label %.noexc.i.i313, label %._crit_edge.i.i.i

.noexc.i.i313:                                    ; preds = %.lr.ph.i306
  %i.wl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc314 unwind label %.loopexit.split-lp509.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc314:                                        ; preds = %.noexc.i.i313
  store ptr %i.wl, ptr %5, align 8, !tbaa !23
  %i.wm = load i64, ptr %i.d, align 8, !tbaa !21
  store i64 %i.wm, ptr %i.rb, align 8, !tbaa !24
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc314, %.lr.ph.i306
  %i.wn = phi ptr [ %i.wl, %.noexc314 ], [ %i.rb, %.lr.ph.i306 ] ; 2 uses
  switch i64 %i.wj, label %bb.db [
    i64 1, label %bb.da
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.da:                                            ; preds = %._crit_edge.i.i.i
  %i.wo = load i8, ptr %i.wh, align 1, !tbaa !24
  store i8 %i.wo, ptr %i.wn, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.db:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wn, ptr align 1 %i.wh, i64 %i.wj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.db, %bb.da, %._crit_edge.i.i.i
  %i.wp = load i64, ptr %i.d, align 8, !tbaa !21  ; 2 uses
  store i64 %i.wp, ptr %i.rc, align 8, !tbaa !25
  %i.wq = load ptr, ptr %5, align 8, !tbaa !23
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.wp
  store i8 0, ptr %i.wr, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  invoke fastcc void @_ZN12_GLOBAL__N_113RegexReplacerclENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %4, ptr nonnull readonly %9, ptr noundef align 8 %5)
          to label %bb.dc unwind label %bb.dg

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ws = load ptr, ptr %i.qy, align 8, !tbaa !15 ; 7 uses
  %i.wt = load ptr, ptr %i.qx, align 8, !tbaa !29
  %.not.i.i.i.i307 = icmp eq ptr %i.ws, %i.wt
  br i1 %.not.i.i.i.i307, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 16 ; 3 uses
  store ptr %i.wu, ptr %i.ws, align 8, !tbaa !19
  %i.wv = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.ww = icmp eq ptr %i.wv, %i.rd
  br i1 %i.ww, label %bb.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.de:                                            ; preds = %bb.dd
  %i.wx = load i64, ptr %i.re, align 8, !tbaa !25 ; 3 uses
  %i.wy = icmp ult i64 %i.wx, 16
  call void @llvm.assume(i1 %i.wy)
  %i.wz = add nuw nsw i64 %i.wx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wu, ptr noundef nonnull align 8 dereferenceable(1) %i.rd, i64 %i.wz, i1 false)
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.dd
  store ptr %i.wv, ptr %i.ws, align 8, !tbaa !23
  %i.xa = load i64, ptr %i.rd, align 8, !tbaa !24
  store i64 %i.xa, ptr %i.wu, align 8, !tbaa !24
  %.pre.i308 = load i64, ptr %i.re, align 8, !tbaa !25
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread.i

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.de
  %i.xb = phi i64 [ %.pre.i308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.wx, %bb.de ]
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  store i64 %i.xb, ptr %i.xc, align 8, !tbaa !25
  store ptr %i.rd, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %i.re, align 8, !tbaa !25
  store i8 0, ptr %i.rd, align 8, !tbaa !24
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ws, i64 32
  store ptr %i.xd, ptr %i.qy, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310

bb.df:                                            ; preds = %bb.dc
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.ws, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i unwind label %bb.dh

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i: ; preds = %bb.df
  %.pre22.i = load ptr, ptr %4, align 8, !tbaa !23 ; 2 uses
  %i.xe = icmp eq ptr %.pre22.i, %i.rd
  br i1 %i.xe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i312: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i
  %i.xf = load i64, ptr %i.rd, align 8, !tbaa !24
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %.pre22.i, i64 noundef %i.xg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.thread.i, %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i312
  %i.xh = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.xi = icmp eq ptr %i.xh, %i.rb
  br i1 %i.xi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310
  %i.xj = load i64, ptr %i.rb, align 8, !tbaa !24
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xh, i64 noundef %i.xk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i, i64 32 ; 2 uses
  %.not.i311 = icmp eq ptr %i.xl, %i.wg
  br i1 %.not.i311, label %.loopexit513, label %.lr.ph.i306, !llvm.loop !71

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

bb.dh:                                            ; preds = %bb.df
  %i.xn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xo = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.rd
  br i1 %i.xp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.dh
  %i.xq = load i64, ptr %i.rd, align 8, !tbaa !24
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %bb.dg
  %.pn.i = phi { ptr, i32 } [ %i.xm, %bb.dg ], [ %i.xn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.xn, %bb.dh ]
  %i.xs = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.xt = icmp eq ptr %i.xs, %i.rb
  br i1 %i.xt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %i.xu = load i64, ptr %i.rb, align 8, !tbaa !24
  %i.xv = add i64 %i.xu, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body315

.loopexit513:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %.loopexit517
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.xw = invoke noundef zeroext i1 @_ZN18cmCTestTestHandler7AddTestERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(4408) %1, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %bb.di unwind label %.loopexit.split-lp509.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.di:                                            ; preds = %.loopexit513
  br i1 %i.xw, label %bb.dm, label %bb.es

bb.dj:                                            ; preds = %.noexc.i261
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

bb.dk:                                            ; preds = %bb.cj
  %i.xy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xz = load ptr, ptr %27, align 8, !tbaa !23   ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.qq
  br i1 %i.ya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %bb.dk
  %i.yb = load i64, ptr %i.qq, align 8, !tbaa !24
  %34 = add i64 %i.yb, 1
  call void @_ZdlPvm(ptr noundef %i.xz, i64 noundef %34) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

bb.dl:                                            ; preds = %.noexc.i268
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit506

.body272:                                         ; preds = %bb.co, %bb.cp
  %i.yd = load ptr, ptr %29, align 8, !tbaa !23   ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.yf = icmp eq ptr %i.yd, %i.ye
  br i1 %i.yf, label %.loopexit506, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %.body272
  %i.yg = load i64, ptr %i.ye, align 8, !tbaa !24
  %i.yh = add i64 %i.yg, 1
  call void @_ZdlPvm(ptr noundef %i.yd, i64 noundef %i.yh) #20
  br label %.loopexit506

.loopexit506:                                     ; preds = %.body272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.dl
  %.pn126 = phi { ptr, i32 } [ %i.yc, %bb.dl ], [ %i.tc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %i.tc, %.body272 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.ev

.loopexit.split-lp509.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cz, %.noexc.i.i.i.i.i.i.i.i302, %.noexc.i.i313, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i277, %.loopexit513, %bb.cr
  %lpad.loopexit.split-lp943 = landingpad { ptr, i32 }
          cleanup
  br label %.body315

bb.dm:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  store ptr %i.rf, ptr %31, align 8, !tbaa !19
  %i.yi = load ptr, ptr %26, align 8, !tbaa !23   ; 2 uses
  %i.yj = load i64, ptr %i.qu, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.yj, ptr %i.c, align 8, !tbaa !21
  %i.yk = icmp ugt i64 %i.yj, 15
  br i1 %i.yk, label %.noexc.i324, label %._crit_edge.i.i323

.noexc.i324:                                      ; preds = %bb.dm
  %i.yl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc325 unwind label %bb.dx ; 2 uses

.noexc325:                                        ; preds = %.noexc.i324
  store ptr %i.yl, ptr %31, align 8, !tbaa !23
  %i.ym = load i64, ptr %i.c, align 8, !tbaa !21
  store i64 %i.ym, ptr %i.rf, align 8, !tbaa !24
  br label %._crit_edge.i.i323

._crit_edge.i.i323:                               ; preds = %.noexc325, %bb.dm
  %i.yn = phi ptr [ %i.yl, %.noexc325 ], [ %i.rf, %bb.dm ] ; 2 uses
  switch i64 %i.yj, label %bb.do [
    i64 1, label %bb.dn
    i64 0, label %bb.dp
  ]

bb.dn:                                            ; preds = %._crit_edge.i.i323
  %i.yo = load i8, ptr %i.yi, align 1, !tbaa !24
  store i8 %i.yo, ptr %i.yn, align 1, !tbaa !24
  br label %bb.dp

bb.do:                                            ; preds = %._crit_edge.i.i323
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yn, ptr align 1 %i.yi, i64 %i.yj, i1 false)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %._crit_edge.i.i323
  %i.yp = load i64, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  store i64 %i.yp, ptr %i.rg, align 8, !tbaa !25
  %i.yq = load ptr, ptr %31, align 8, !tbaa !23
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yp
  store i8 0, ptr %i.yr, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  store ptr %i.ri, ptr %i.rh, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ri, ptr noundef nonnull align 1 dereferenceable(10) @.str.7, i64 10, i1 false)
  store i64 10, ptr %i.rj, align 8, !tbaa !25
  store i8 0, ptr %i.rk, align 2, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %i.ys = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i333 unwind label %bb.dq ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i333: ; preds = %bb.dp
  store ptr %i.ys, ptr %30, align 8, !tbaa !16
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 64
  store ptr %i.yt, ptr %i.rm, align 8, !tbaa !29
  %i.yu = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %31, ptr noundef nonnull %i.rl, ptr noundef nonnull %i.ys)
          to label %bb.ds unwind label %bb.dq

bb.dq:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i333, %bb.dp
  %i.yv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yw = load ptr, ptr %30, align 8, !tbaa !16   ; 3 uses
  %.not.i.i5.i331 = icmp eq ptr %i.yw, null
  br i1 %.not.i.i5.i331, label %.body334, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.yx = load ptr, ptr %i.rm, align 8, !tbaa !29
  %i.yy = ptrtoint ptr %i.yx to i64
  %i.yz = ptrtoint ptr %i.yw to i64
  %i.za = sub i64 %i.yy, %i.yz
  call void @_ZdlPvm(ptr noundef nonnull %i.yw, i64 noundef %i.za) #20
  br label %.body334

bb.ds:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i333
  store ptr %i.yu, ptr %i.rn, align 8, !tbaa !15
  %i.zb = load ptr, ptr %i.rw, align 8, !tbaa !23 ; 2 uses
  %i.zc = icmp eq ptr %i.zb, %i.rx
  br i1 %i.zc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %bb.ds
  %i.zd = load i64, ptr %i.rx, align 8, !tbaa !24
  %i.ze = add i64 %i.zd, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.ze) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337
  %i.zf = load ptr, ptr %31, align 8, !tbaa !23   ; 2 uses
  %i.zg = icmp eq ptr %i.zf, %i.ry
  br i1 %i.zg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339
  %i.zh = load i64, ptr %i.ry, align 8, !tbaa !24
  %i.zi = add i64 %i.zh, 1
  call void @_ZdlPvm(ptr noundef %i.zf, i64 noundef %i.zi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337.1
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  %i.zj = load ptr, ptr %i.ak, align 8, !tbaa !15 ; 2 uses
  %i.zk = load ptr, ptr %i.aj, align 8, !tbaa !16 ; 2 uses
  %i.zl = ptrtoint ptr %i.zj to i64
  %i.zm = ptrtoint ptr %i.zk to i64
  %i.zn = sub i64 %i.zl, %i.zm
  %i.zo = ashr exact i64 %i.zn, 5
  %i.zp = add nsw i64 %i.zo, 2                    ; 4 uses
  %i.zq = icmp ugt i64 %i.zp, 288230376151711743
  br i1 %i.zq, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.1
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #21
          to label %.noexc355 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc355:                                        ; preds = %bb.dt
  unreachable

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339.1
  %i.zr = load ptr, ptr %i.rm, align 8, !tbaa !29
  %i.zs = load ptr, ptr %30, align 8, !tbaa !16
  %i.zt = ptrtoint ptr %i.zr to i64
  %i.zu = ptrtoint ptr %i.zs to i64               ; 2 uses
  %i.zv = sub i64 %i.zt, %i.zu
  %i.zw = ashr exact i64 %i.zv, 5
  %i.zx = icmp ult i64 %i.zw, %i.zp
  br i1 %i.zx, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i340, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit357

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i340: ; preds = %bb.du
  %i.zy = load ptr, ptr %i.rn, align 8, !tbaa !15
  %i.zz = ptrtoint ptr %i.zy to i64
  %i.aaa = sub i64 %i.zz, %i.zu
  %i.aab = shl nuw nsw i64 %i.zp, 5
  %i.aac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aab) #23
          to label %.noexc356 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc356:                                        ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i340
  %i.aad = load ptr, ptr %30, align 8, !tbaa !16  ; 5 uses
  %i.aae = load ptr, ptr %i.rn, align 8, !tbaa !15 ; 2 uses
  %.not10.i.i.i.i341 = icmp eq ptr %i.aad, %i.aae
  br i1 %.not10.i.i.i.i341, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i352, label %.lr.ph.i.i.i.i342

.lr.ph.i.i.i.i342:                                ; preds = %.noexc356, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i348
  %.012.i.i.i.i343 = phi ptr [ %i.aas, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i348 ], [ %i.aac, %.noexc356 ] ; 5 uses
  %.0911.i.i.i.i344 = phi ptr [ %i.aar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i348 ], [ %i.aad, %.noexc356 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.aaf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i343, i64 16 ; 3 uses
  store ptr %i.aaf, ptr %.012.i.i.i.i343, align 8, !tbaa !19, !alias.scope !99
  %i.aag = load ptr, ptr %.0911.i.i.i.i344, align 8, !tbaa !23, !alias.scope !100 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i344, i64 16 ; 5 uses
  %i.aai = icmp eq ptr %i.aag, %i.aah
  br i1 %i.aai, label %bb.dv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i345

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i342
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i344, i64 8
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !25, !alias.scope !100 ; 3 uses
  %i.aal = icmp ult i64 %i.aak, 16
  call void @llvm.assume(i1 %i.aal)
  %i.aam = add nuw nsw i64 %i.aak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aaf, ptr noundef nonnull align 8 dereferenceable(1) %i.aah, i64 %i.aam, i1 false), !alias.scope !101
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i345: ; preds = %.lr.ph.i.i.i.i342
  store ptr %i.aag, ptr %.012.i.i.i.i343, align 8, !tbaa !23, !alias.scope !99
  %i.aan = load i64, ptr %i.aah, align 8, !tbaa !24, !alias.scope !100
  store i64 %i.aan, ptr %i.aaf, align 8, !tbaa !24, !alias.scope !99
  %.phi.trans.insert.i.i.i.i.i346 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i344, i64 8
  %.pre.i.i.i.i.i347 = load i64, ptr %.phi.trans.insert.i.i.i.i.i346, align 8, !tbaa !25, !alias.scope !100
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i348

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i348: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i345, %bb.dv
  %i.aao = phi i64 [ %i.aak, %bb.dv ], [ %.pre.i.i.i.i.i347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i345 ]
  %i.aap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i344, i64 8
end_hunk_0
begin_hunk_1_@_Z20cmCTestDiscoverTestsRK19cmTestDiscoveryArgsP18cmCTestTestHandlerRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EER17cmExecutionStatus:bb.a
  br i1 %i.aea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382: ; preds = %bb.el
  %i.aeb = load i64, ptr %i.rq, align 8, !tbaa !24
  %i.aec = add i64 %i.aeb, 1
  call void @_ZdlPvm(ptr noundef %i.adz, i64 noundef %i.aec) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382, %bb.ek
  %.pn131 = phi { ptr, i32 } [ %i.adx, %bb.ek ], [ %i.ady, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382 ], [ %i.ady, %bb.el ] ; 2 uses
  %i.aed = load ptr, ptr %33, align 8, !tbaa !23  ; 2 uses
  %i.aee = icmp eq ptr %i.aed, %i.ro
  br i1 %i.aee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384
  %i.aef = load i64, ptr %i.ro, align 8, !tbaa !24
  %i.aeg = add i64 %i.aef, 1
  call void @_ZdlPvm(ptr noundef %i.aed, i64 noundef %i.aeg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385, %bb.ej
  %.pn131.pn = phi { ptr, i32 } [ %i.adw, %bb.ej ], [ %.pn131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385 ], [ %.pn131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %.loopexit.split-lp

bb.em:                                            ; preds = %._crit_edge
  br i1 %i.abb, label %bb.en, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit392

bb.en:                                            ; preds = %bb.em
  %i.aeh = load ptr, ptr %i.rs, align 8, !tbaa !15 ; 6 uses
  %i.aei = load ptr, ptr %i.rt, align 8, !tbaa !29
  %.not.i.i388 = icmp eq ptr %i.aeh, %i.aei
  br i1 %.not.i.i388, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeh, i64 16 ; 3 uses
  store ptr %i.aej, ptr %i.aeh, align 8, !tbaa !19
  %i.aek = load ptr, ptr %26, align 8, !tbaa !23  ; 2 uses
  %i.ael = icmp eq ptr %i.aek, %i.ru
  br i1 %i.ael, label %bb.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i389

bb.ep:                                            ; preds = %bb.eo
  %i.aem = load i64, ptr %i.qu, align 8, !tbaa !25 ; 3 uses
  %i.aen = icmp ult i64 %i.aem, 16
  call void @llvm.assume(i1 %i.aen)
  %i.aeo = add nuw nsw i64 %i.aem, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aej, ptr noundef nonnull align 8 dereferenceable(1) %i.ru, i64 %i.aeo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i389: ; preds = %bb.eo
  store ptr %i.aek, ptr %i.aeh, align 8, !tbaa !23
  %i.aep = load i64, ptr %i.ru, align 8, !tbaa !24
  store i64 %i.aep, ptr %i.aej, align 8, !tbaa !24
  %.pre664 = load i64, ptr %i.qu, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i390: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i389, %bb.ep
  %i.aeq = phi i64 [ %.pre664, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i389 ], [ %i.aem, %bb.ep ]
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  store i64 %i.aeq, ptr %i.aer, align 8, !tbaa !25
  store ptr %i.ru, ptr %26, align 8, !tbaa !23
  store i64 0, ptr %i.qu, align 8, !tbaa !25
  store i8 0, ptr %i.ru, align 8, !tbaa !24
  %i.aes = load ptr, ptr %i.rs, align 8, !tbaa !15
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 32
  store ptr %i.aet, ptr %i.rs, align 8, !tbaa !15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit392

bb.eq:                                            ; preds = %bb.en
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.aeh, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit392 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit392: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i390, %bb.eq, %bb.em
  %i.aeu = load ptr, ptr %30, align 8, !tbaa !16  ; 3 uses
  %i.aev = load ptr, ptr %i.rn, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i393 = icmp eq ptr %i.aeu, %i.aev
  br i1 %.not4.i.i.i393, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i401, label %.lr.ph.i.i.i394

.lr.ph.i.i.i394:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit392, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i397
  %.05.i.i.i395 = phi ptr [ %i.afb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i397 ], [ %i.aeu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit392 ] ; 3 uses
  %i.aew = load ptr, ptr %.05.i.i.i395, align 8, !tbaa !23 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.05.i.i.i395, i64 16 ; 2 uses
  %i.aey = icmp eq ptr %i.aew, %i.aex
  br i1 %i.aey, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i396: ; preds = %.lr.ph.i.i.i394
  %i.aez = load i64, ptr %i.aex, align 8, !tbaa !24
  %i.afa = add i64 %i.aez, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.afa) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i397

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i397: ; preds = %.lr.ph.i.i.i394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i396
  %i.afb = getelementptr inbounds nuw i8, ptr %.05.i.i.i395, i64 32 ; 2 uses
  %.not.i.i.i398 = icmp eq ptr %i.afb, %i.aev
  br i1 %.not.i.i.i398, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i399, label %.lr.ph.i.i.i394, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i399: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i397
  %.pr.i400 = load ptr, ptr %30, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i401

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i401: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i399, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit392
  %i.afc = phi ptr [ %.pr.i400, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i399 ], [ %i.aeu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit392 ] ; 3 uses
  %.not.i.i1.i402 = icmp eq ptr %i.afc, null
  br i1 %.not.i.i1.i402, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit405, label %bb.er

bb.er:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i401
  %i.afd = load ptr, ptr %i.rm, align 8, !tbaa !29
  %i.afe = ptrtoint ptr %i.afd to i64
  %i.aff = ptrtoint ptr %i.afc to i64
  %i.afg = sub i64 %i.afe, %i.aff
  call void @_ZdlPvm(ptr noundef nonnull %i.afc, i64 noundef %i.afg) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit405

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit405: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i401, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.es

bb.es:                                            ; preds = %bb.di, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit405
  %.2112 = phi i1 [ %i.abb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit405 ], [ false, %bb.di ]
  %i.afh = load ptr, ptr %28, align 8, !tbaa !16  ; 3 uses
  %i.afi = load ptr, ptr %i.qy, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i406 = icmp eq ptr %i.afh, %i.afi
  br i1 %.not4.i.i.i406, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i414, label %.lr.ph.i.i.i407

.lr.ph.i.i.i407:                                  ; preds = %bb.es, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i410
  %.05.i.i.i408 = phi ptr [ %i.afo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i410 ], [ %i.afh, %bb.es ] ; 3 uses
  %i.afj = load ptr, ptr %.05.i.i.i408, align 8, !tbaa !23 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.05.i.i.i408, i64 16 ; 2 uses
  %i.afl = icmp eq ptr %i.afj, %i.afk
  br i1 %i.afl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i410, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i409: ; preds = %.lr.ph.i.i.i407
  %i.afm = load i64, ptr %i.afk, align 8, !tbaa !24
  %i.afn = add i64 %i.afm, 1
  call void @_ZdlPvm(ptr noundef %i.afj, i64 noundef %i.afn) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i410

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i410: ; preds = %.lr.ph.i.i.i407, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i409
  %i.afo = getelementptr inbounds nuw i8, ptr %.05.i.i.i408, i64 32 ; 2 uses
  %.not.i.i.i411 = icmp eq ptr %i.afo, %i.afi
  br i1 %.not.i.i.i411, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i412, label %.lr.ph.i.i.i407, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i412: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i410
  %.pr.i413 = load ptr, ptr %28, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i414

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i414: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i412, %bb.es
  %i.afp = phi ptr [ %.pr.i413, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i412 ], [ %i.afh, %bb.es ] ; 3 uses
  %.not.i.i1.i415 = icmp eq ptr %i.afp, null
  br i1 %.not.i.i1.i415, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit418, label %bb.et

bb.et:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i414
  %i.afq = load ptr, ptr %i.qx, align 8, !tbaa !29
  %i.afr = ptrtoint ptr %i.afq to i64
  %i.afs = ptrtoint ptr %i.afp to i64
  %i.aft = sub i64 %i.afr, %i.afs
  call void @_ZdlPvm(ptr noundef nonnull %i.afp, i64 noundef %i.aft) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit418

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit418: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i414, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  %i.afu = load ptr, ptr %26, align 8, !tbaa !23  ; 2 uses
  %i.afv = icmp eq ptr %i.afu, %i.ru
  br i1 %i.afv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit418
  %i.afw = load i64, ptr %i.ru, align 8, !tbaa !24
  %i.afx = add i64 %i.afw, 1
  call void @_ZdlPvm(ptr noundef %i.afu, i64 noundef %i.afx) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i420: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit418, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br i1 %.2112, label %.thread, label %.critedge159

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i420, %_ZN5cmsys17RegularExpression4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmj.exit
  %i.afy = getelementptr inbounds nuw i8, ptr %.sroa.0499.0642, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.afy, %i.qo
  br i1 %.not, label %.critedge159, label %bb.cf

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387 ], [ %lpad.loopexit.split-lp946, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #19
  br label %bb.eu

bb.eu:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %.pn131.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn, %.loopexit.split-lp ], [ %.pn128.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %.body315

.body315:                                         ; preds = %.loopexit.split-lp509.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, %bb.eu
  %.pn131.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn.pn, %bb.eu ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i ], [ %lpad.loopexit.split-lp943, %.loopexit.split-lp509.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #19
  br label %bb.ev

bb.ev:                                            ; preds = %.body315, %.loopexit506
  %.pn131.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn.pn.pn, %.body315 ], [ %.pn126, %.loopexit506 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  %i.afz = load ptr, ptr %26, align 8, !tbaa !23  ; 2 uses
  %i.aga = icmp eq ptr %i.afz, %i.ru
  br i1 %i.aga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422.a: ; preds = %bb.ev
  %35 = load i64, ptr %i.ru, align 8, !tbaa !24
  %i.agb = add i64 %35, 1
  call void @_ZdlPvm(ptr noundef %i.afz, i64 noundef %i.agb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %bb.ev, %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317, %bb.dj
  %.pn131.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.xy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317 ], [ %i.xx, %bb.dj ], [ %.pn131.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422.a ], [ %i.xy, %bb.dk ], [ %.pn131.pn.pn.pn.pn.pn.pn, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %.loopexit.split-lp519

.critedge159:                                     ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i420
  %.not.lcssa.ph = phi i1 [ true, %.thread ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i420 ] ; 2 uses
  %.pre665 = load ptr, ptr %25, align 8, !tbaa !16 ; 3 uses
  %.pre666 = load ptr, ptr %i.qn, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i425 = icmp eq ptr %.pre665, %.pre666
  br i1 %.not4.i.i.i425, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i433, label %.lr.ph.i.i.i426

.lr.ph.i.i.i426:                                  ; preds = %.critedge159, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i429
  %.05.i.i.i427 = phi ptr [ %i.agh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i429 ], [ %.pre665, %.critedge159 ] ; 3 uses
  %i.agc = load ptr, ptr %.05.i.i.i427, align 8, !tbaa !23 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.05.i.i.i427, i64 16 ; 2 uses
  %i.age = icmp eq ptr %i.agc, %i.agd
  br i1 %i.age, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i428: ; preds = %.lr.ph.i.i.i426
  %i.agf = load i64, ptr %i.agd, align 8, !tbaa !24
  %i.agg = add i64 %i.agf, 1
  call void @_ZdlPvm(ptr noundef %i.agc, i64 noundef %i.agg) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i429

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i429: ; preds = %.lr.ph.i.i.i426, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i428
  %i.agh = getelementptr inbounds nuw i8, ptr %.05.i.i.i427, i64 32 ; 2 uses
  %.not.i.i.i430 = icmp eq ptr %i.agh, %.pre666
  br i1 %.not.i.i.i430, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i431, label %.lr.ph.i.i.i426, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i431: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i429
  %.pr.i432 = load ptr, ptr %25, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i433

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i433: ; preds = %bb.ce, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i431, %.critedge159
  %.not.lcssa912 = phi i1 [ %.not.lcssa.ph, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i431 ], [ %.not.lcssa.ph, %.critedge159 ], [ true, %bb.ce ]
  %i.agi = phi ptr [ %.pr.i432, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i431 ], [ %.pre665, %.critedge159 ], [ %i.qm, %bb.ce ] ; 3 uses
  %.not.i.i1.i434 = icmp eq ptr %i.agi, null
  br i1 %.not.i.i1.i434, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit437, label %bb.ew

bb.ew:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i433
  %i.agj = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !29
  %i.agl = ptrtoint ptr %i.agk to i64
  %i.agm = ptrtoint ptr %i.agi to i64
  %i.agn = sub i64 %i.agl, %i.agm
  call void @_ZdlPvm(ptr noundef nonnull %i.agi, i64 noundef %i.agn) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit437

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit437: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i433, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.ex

.loopexit.split-lp519:                            ; preds = %.loopexit.split-lp519.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
  %.pn131.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319 ], [ %lpad.loopexit.split-lp940, %.loopexit.split-lp519.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.ez

bb.ex:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit437, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
  %.8 = phi i1 [ %.not.lcssa912, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit437 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ]
  %i.ago = load ptr, ptr %21, align 8, !tbaa !23  ; 2 uses
  %i.agp = icmp eq ptr %i.ago, %i.oi
  br i1 %i.agp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438: ; preds = %bb.ex
  %i.agq = load i64, ptr %i.oi, align 8, !tbaa !24
  %i.agr = add i64 %i.agq, 1
  call void @_ZdlPvm(ptr noundef %i.ago, i64 noundef %i.agr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440: ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.ags = load ptr, ptr %20, align 8, !tbaa !23  ; 2 uses
  %i.agt = icmp eq ptr %i.ags, %i.og
  br i1 %i.agt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440
  %i.agu = load i64, ptr %i.og, align 8, !tbaa !24
  %i.agv = add i64 %i.agu, 1
  call void @_ZdlPvm(ptr noundef %i.ags, i64 noundef %i.agv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.agw = load ptr, ptr %19, align 8, !tbaa !16  ; 3 uses
  %i.agx = load ptr, ptr %i.li, align 8, !tbaa !15 ; 2 uses
  %.not4.i.i.i444 = icmp eq ptr %i.agw, %i.agx
  br i1 %.not4.i.i.i444, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i452, label %.lr.ph.i.i.i445

.lr.ph.i.i.i445:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i448
  %.05.i.i.i446 = phi ptr [ %i.ahd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i448 ], [ %i.agw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443 ] ; 3 uses
  %i.agy = load ptr, ptr %.05.i.i.i446, align 8, !tbaa !23 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %.05.i.i.i446, i64 16 ; 2 uses
  %i.aha = icmp eq ptr %i.agy, %i.agz
  br i1 %i.aha, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i447: ; preds = %.lr.ph.i.i.i445
  %i.ahb = load i64, ptr %i.agz, align 8, !tbaa !24
  %i.ahc = add i64 %i.ahb, 1
  call void @_ZdlPvm(ptr noundef %i.agy, i64 noundef %i.ahc) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i448

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i448: ; preds = %.lr.ph.i.i.i445, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i447
  %i.ahd = getelementptr inbounds nuw i8, ptr %.05.i.i.i446, i64 32 ; 2 uses
  %.not.i.i.i449 = icmp eq ptr %i.ahd, %i.agx
  br i1 %.not.i.i.i449, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i450, label %.lr.ph.i.i.i445, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i450: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i448
  %.pr.i451 = load ptr, ptr %19, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i452

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i452: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i450, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443
  %i.ahe = phi ptr [ %.pr.i451, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i450 ], [ %i.agw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443 ] ; 3 uses
  %.not.i.i1.i453 = icmp eq ptr %i.ahe, null
  br i1 %.not.i.i1.i453, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit456, label %bb.ey

bb.ey:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i452
  %i.ahf = load ptr, ptr %i.lk, align 8, !tbaa !29
  %i.ahg = ptrtoint ptr %i.ahf to i64
  %i.ahh = ptrtoint ptr %i.ahe to i64
  %i.ahi = sub i64 %i.ahg, %i.ahh
  call void @_ZdlPvm(ptr noundef nonnull %i.ahe, i64 noundef %i.ahi) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit456

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit456: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i452, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.fb

bb.ez:                                            ; preds = %.loopexit.split-lp519, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %bb.bz, %bb.by
  %.pn131.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp519 ], [ %.pn123.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %i.px, %bb.bz ], [ %i.pw, %bb.by ]
  %i.ahj = load ptr, ptr %21, align 8, !tbaa !23  ; 2 uses
  %i.ahk = icmp eq ptr %i.ahj, %i.oi
  br i1 %i.ahk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %bb.ez
  %i.ahl = load i64, ptr %i.oi, align 8, !tbaa !24
  %i.ahm = add i64 %i.ahl, 1
  call void @_ZdlPvm(ptr noundef %i.ahj, i64 noundef %i.ahm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.ahn = load ptr, ptr %20, align 8, !tbaa !23  ; 2 uses
  %i.aho = icmp eq ptr %i.ahn, %i.og
  br i1 %i.aho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
  %i.ahp = load i64, ptr %i.og, align 8, !tbaa !24
  %i.ahq = add i64 %i.ahp, 1
  call void @_ZdlPvm(ptr noundef %i.ahn, i64 noundef %i.ahq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %.loopexit.split-lp530

.loopexit.split-lp530:                            ; preds = %.loopexit.split-lp530.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
  %.pn131.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462 ], [ %lpad.loopexit.split-lp949.a, %.loopexit.split-lp530.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #19
  br label %.body222

.body222:                                         ; preds = %bb.bx, %bb.bg, %bb.bf, %.loopexit.split-lp530
  %.pn131.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp530 ], [ %i.pv, %bb.bx ], [ %i.lm, %bb.bg ], [ %i.lm, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.ff

.critedge:                                        ; preds = %bb.as
  %i.ahr = load ptr, ptr %18, align 8, !tbaa !37  ; 3 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i478 = icmp eq ptr %i.ahr, %i.aht
  br i1 %.not4.i.i.i478, label %_ZSt8_DestroyIPN25cmEnvironmentModification5EntryES1_EvT_S3_RSaIT0_E.exit.i490, label %.lr.ph.i.i.i479

.lr.ph.i.i.i479:                                  ; preds = %.critedge, %_ZSt8_DestroyIN25cmEnvironmentModification5EntryEEvPT_.exit.i.i.i486
  %.05.i.i.i480 = phi ptr [ %i.ail, %_ZSt8_DestroyIN25cmEnvironmentModification5EntryEEvPT_.exit.i.i.i486 ], [ %i.ahr, %.critedge ] ; 7 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.05.i.i.i480, i64 64
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !23 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.05.i.i.i480, i64 80 ; 2 uses
  %i.ahx = icmp eq ptr %i.ahv, %i.ahw
  br i1 %i.ahx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i482, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i481: ; preds = %.lr.ph.i.i.i479
  %i.ahy = load i64, ptr %i.ahw, align 8, !tbaa !24
  %i.ahz = add i64 %i.ahy, 1
  call void @_ZdlPvm(ptr noundef %i.ahv, i64 noundef %i.ahz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i482

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i482: ; preds = %.lr.ph.i.i.i479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i481
  %i.aia = getelementptr inbounds nuw i8, ptr %.05.i.i.i480, i64 32
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !23 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.05.i.i.i480, i64 48 ; 2 uses
  %i.aid = icmp eq ptr %i.aib, %i.aic
  br i1 %i.aid, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i484, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i483

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i483: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i482
  %i.aie = load i64, ptr %i.aic, align 8, !tbaa !24
  %i.aif = add i64 %i.aie, 1
  call void @_ZdlPvm(ptr noundef %i.aib, i64 noundef %i.aif) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i484

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i484: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i482, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i483
end_hunk_1
