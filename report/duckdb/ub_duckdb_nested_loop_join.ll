inline.NumInlined: 4299
inline.NumDeleted: 574
begin_hunk_0_@_ZN6duckdbL14MarkJoinSwitchINS_9NotEqualsEEEvRNS_6VectorES3_mmPb:bb.a

bb.ew:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i257
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.up) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259:    ; preds = %bb.ew, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i257, %bb.es, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i254
  %i.vf = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i260 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i.i1.i53.i260, label %_ZN6duckdbL17TemplatedMarkJoinIlNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 4 uses
  %i.vi = load atomic i64, ptr %i.vh acquire, align 8 ; 2 uses
  %i.vj = icmp eq i64 %i.vi, 4294967297
  %i.vk = trunc i64 %i.vi to i32                  ; 2 uses
  br i1 %i.vj, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  store i32 0, ptr %i.vh, align 8, !tbaa !78
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 12
  store i32 0, ptr %i.vl, align 4, !tbaa !80
  %i.vm = load ptr, ptr %i.vg, align 8, !tbaa !81
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #17, !inline_history !180
  %i.vp = load ptr, ptr %i.vg, align 8, !tbaa !81
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vr = load ptr, ptr %i.vq, align 8
  call void %i.vr(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #17, !inline_history !180
  br label %_ZN6duckdbL17TemplatedMarkJoinIlNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.ez:                                            ; preds = %bb.ex
  %i.vs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i261 = icmp eq i8 %i.vs, 0
  br i1 %.not.i.i.i.i.i2.i54.i261, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vt = add nsw i32 %i.vk, -1
  store i32 %i.vt, ptr %i.vh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262

bb.fb:                                            ; preds = %bb.ez
  %i.vu = atomicrmw volatile add ptr %i.vh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262: ; preds = %bb.fb, %bb.fa
  %.0.i.i.i.i.i.i4.i56.i263 = phi i32 [ %i.vk, %bb.fa ], [ %i.vu, %bb.fb ]
  %i.vv = icmp eq i32 %.0.i.i.i.i.i.i4.i56.i263, 1
  br i1 %i.vv, label %bb.fc, label %_ZN6duckdbL17TemplatedMarkJoinIlNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit, !prof !84

bb.fc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #17
  br label %_ZN6duckdbL17TemplatedMarkJoinIlNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.fd:                                            ; preds = %bb.du
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fe:                                            ; preds = %bb.dw, %bb.dv
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.ff:                                            ; preds = %bb.dx
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fg:                                            ; preds = %bb.dy
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fe
  %.pn.pn.pn.pn.pn.pn.i220 = phi { ptr, i32 } [ %i.vx, %bb.fe ], [ %i.vy, %bb.ff ], [ %i.vz, %bb.fg ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %24) #17
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fd
  %.pn.pn.pn.pn.pn.pn.pn.i219 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i220, %bb.fh ], [ %i.vw, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %common.resume

_ZN6duckdbL17TemplatedMarkJoinIlNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259, %bb.ey, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %bb.ue

bb.fj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.fk unwind label %bb.gs

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %21)
          to label %bb.fl unwind label %bb.gt

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.fm unwind label %bb.gt

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_9hugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %21)
          to label %bb.fn unwind label %bb.gu

bb.fn:                                            ; preds = %bb.fm
  %i.wa = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !95
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_9hugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i unwind label %bb.gv

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i: ; preds = %bb.fn
  %i.wc = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !95
  %.not.i295 = icmp eq i64 %2, 0
  br i1 %.not.i295, label %._crit_edge.i302, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i
  %i.we = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.not76.i = icmp eq i64 %3, 0
  %i.wf = getelementptr inbounds nuw i8, ptr %22, i64 16
  br i1 %.not76.i, label %._crit_edge.i302, label %.lr.ph71.split.us.i

.lr.ph71.split.us.i:                              ; preds = %.lr.ph71.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i
  %.03669.us.i = phi i64 [ %i.xm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i ], [ 0, %.lr.ph71.i ] ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %4, i64 %.03669.us.i ; 2 uses
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !72, !range !74, !noundef !75
  %i.wi = trunc nuw i8 %i.wh to i1
  br i1 %i.wi, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, label %bb.fo

bb.fo:                                            ; preds = %.lr.ph71.split.us.i
  %i.wj = load ptr, ptr %21, align 8, !tbaa !127
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i296 = icmp eq ptr %i.wk, null
  br i1 %.not.i.us.i296, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %.03669.us.i
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !3
  %i.wn = zext i32 %i.wm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297: ; preds = %bb.fp, %bb.fo
  %i.wo = phi i64 [ %i.wn, %bb.fp ], [ %.03669.us.i, %bb.fo ] ; 3 uses
  %i.wp = load ptr, ptr %i.we, align 8, !tbaa !128 ; 2 uses
  %.not.i58.us.i = icmp eq ptr %i.wp, null
  br i1 %.not.i58.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299, label %bb.fq

bb.fq:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297
  %i.wq = lshr i64 %i.wo, 6
  %i.wr = and i64 %i.wo, 63
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.wq
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !7
  %i.wu = shl nuw i64 1, %i.wr
  %i.wv = and i64 %i.wt, %i.wu
  %.not.us.i298 = icmp eq i64 %i.wv, 0
  br i1 %.not.us.i298, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299

bb.fr:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i
  %.03568.us.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299 ], [ %i.xl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i ] ; 3 uses
  %i.ww = load ptr, ptr %22, align 8, !tbaa !127
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i300 = icmp eq ptr %i.wx, null
  br i1 %.not.i59.us.i300, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %.03568.us.i
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !3
  %i.xa = zext i32 %i.wz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i: ; preds = %bb.fs, %bb.fr
  %i.xb = phi i64 [ %i.xa, %bb.fs ], [ %.03568.us.i, %bb.fr ] ; 3 uses
  %i.xc = load ptr, ptr %i.wf, align 8, !tbaa !128 ; 2 uses
  %.not.i61.us.i = icmp eq ptr %i.xc, null
  br i1 %.not.i61.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i
  %i.xd = lshr i64 %i.xb, 6
  %i.xe = and i64 %i.xb, 63
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.xd
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !7
  %i.xh = shl nuw i64 1, %i.xe
  %i.xi = and i64 %i.xg, %i.xh
  %.not67.us.i = icmp eq i64 %i.xi, 0
  br i1 %.not67.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %i.wd, i64 %i.xb
  %i.xk = invoke noundef zeroext i1 @_ZNK6duckdb9hugeint_teqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.xn, ptr noundef nonnull align 8 dereferenceable(16) %i.xj)
          to label %bb.ft unwind label %.split.us.i

bb.ft:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301
  br i1 %i.xk, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i, label %33

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i: ; preds = %bb.ft, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i
  %i.xl = add nuw i64 %.03568.us.i, 1             ; 2 uses
  %exitcond.not.i322 = icmp eq i64 %i.xl, %3
  br i1 %exitcond.not.i322, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, label %bb.fr, !llvm.loop !181

33:                                               ; preds = %bb.ft
  store i8 1, ptr %i.wg, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i, %33, %bb.fq, %.lr.ph71.split.us.i
  %i.xm = add nuw i64 %.03669.us.i, 1             ; 2 uses
  %exitcond79.not.i = icmp eq i64 %i.xm, %2
  br i1 %exitcond79.not.i, label %._crit_edge.i302, label %.lr.ph71.split.us.i, !llvm.loop !182

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299: ; preds = %bb.fq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297
  %i.xn = getelementptr inbounds nuw [16 x i8], ptr %i.wb, i64 %i.wo
  br label %bb.fr

.split.us.i:                                      ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

._crit_edge.i302:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, %.lr.ph71.i, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i
  %i.xp = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i303 = icmp eq ptr %i.xq, null
  br i1 %.not.i.i.i.i.i.i303, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307, label %bb.fu

bb.fu:                                            ; preds = %._crit_edge.i302
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8 ; 4 uses
  %i.xs = load atomic i64, ptr %i.xr acquire, align 8 ; 2 uses
  %i.xt = icmp eq i64 %i.xs, 4294967297
  %i.xu = trunc i64 %i.xs to i32                  ; 2 uses
  br i1 %i.xt, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 0, ptr %i.xr, align 8, !tbaa !78
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 12
  store i32 0, ptr %i.xv, align 4, !tbaa !80
  %i.xw = load ptr, ptr %i.xq, align 8, !tbaa !81
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  %i.xy = load ptr, ptr %i.xx, align 8
  call void %i.xy(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #17, !inline_history !183
  %i.xz = load ptr, ptr %i.xq, align 8, !tbaa !81
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8
  call void %i.yb(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #17, !inline_history !183
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307

bb.fw:                                            ; preds = %bb.fu
  %i.yc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i304 = icmp eq i8 %i.yc, 0
  br i1 %.not.i.i.i.i.i.i.i304, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.yd = add nsw i32 %i.xu, -1
  store i32 %i.yd, ptr %i.xr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305

bb.fy:                                            ; preds = %bb.fw
  %i.ye = atomicrmw volatile add ptr %i.xr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i.i.i306 = phi i32 [ %i.xu, %bb.fx ], [ %i.ye, %bb.fy ]
  %i.yf = icmp eq i32 %.0.i.i.i.i.i.i.i.i306, 1
  br i1 %i.yf, label %bb.fz, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307, !prof !84

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307:      ; preds = %bb.fz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305, %bb.fv, %._crit_edge.i302
  %i.yg = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i308 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i.i.i1.i.i308, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312, label %bb.ga

bb.ga:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8 ; 4 uses
  %i.yj = load atomic i64, ptr %i.yi acquire, align 8 ; 2 uses
  %i.yk = icmp eq i64 %i.yj, 4294967297
  %i.yl = trunc i64 %i.yj to i32                  ; 2 uses
  br i1 %i.yk, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  store i32 0, ptr %i.yi, align 8, !tbaa !78
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yh, i64 12
  store i32 0, ptr %i.ym, align 4, !tbaa !80
  %i.yn = load ptr, ptr %i.yh, align 8, !tbaa !81
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yp = load ptr, ptr %i.yo, align 8
  call void %i.yp(ptr noundef nonnull align 8 dereferenceable(16) %i.yh) #17, !inline_history !184
  %i.yq = load ptr, ptr %i.yh, align 8, !tbaa !81
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  %i.ys = load ptr, ptr %i.yr, align 8
  call void %i.ys(ptr noundef nonnull align 8 dereferenceable(16) %i.yh) #17, !inline_history !184
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312

bb.gc:                                            ; preds = %bb.ga
  %i.yt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i309 = icmp eq i8 %i.yt, 0
  br i1 %.not.i.i.i.i.i2.i.i309, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.yu = add nsw i32 %i.yl, -1
  store i32 %i.yu, ptr %i.yi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310

bb.ge:                                            ; preds = %bb.gc
  %i.yv = atomicrmw volatile add ptr %i.yi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310: ; preds = %bb.ge, %bb.gd
  %.0.i.i.i.i.i.i4.i.i311 = phi i32 [ %i.yl, %bb.gd ], [ %i.yv, %bb.ge ]
  %i.yw = icmp eq i32 %.0.i.i.i.i.i.i4.i.i311, 1
  br i1 %i.yw, label %bb.gf, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312, !prof !84

bb.gf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yh) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312:    ; preds = %bb.gf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310, %bb.gb, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  %i.yx = getelementptr inbounds nuw i8, ptr %21, i64 64
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i313 = icmp eq ptr %i.yy, null
  br i1 %.not.i.i.i.i.i48.i313, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317, label %bb.gg

bb.gg:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8 ; 4 uses
  %i.za = load atomic i64, ptr %i.yz acquire, align 8 ; 2 uses
  %i.zb = icmp eq i64 %i.za, 4294967297
  %i.zc = trunc i64 %i.za to i32                  ; 2 uses
  br i1 %i.zb, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  store i32 0, ptr %i.yz, align 8, !tbaa !78
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yy, i64 12
  store i32 0, ptr %i.zd, align 4, !tbaa !80
  %i.ze = load ptr, ptr %i.yy, align 8, !tbaa !81
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8
  call void %i.zg(ptr noundef nonnull align 8 dereferenceable(16) %i.yy) #17, !inline_history !183
  %i.zh = load ptr, ptr %i.yy, align 8, !tbaa !81
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  %i.zj = load ptr, ptr %i.zi, align 8
  call void %i.zj(ptr noundef nonnull align 8 dereferenceable(16) %i.yy) #17, !inline_history !183
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317

bb.gi:                                            ; preds = %bb.gg
  %i.zk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i314 = icmp eq i8 %i.zk, 0
  br i1 %.not.i.i.i.i.i.i49.i314, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.zl = add nsw i32 %i.zc, -1
  store i32 %i.zl, ptr %i.yz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315

bb.gk:                                            ; preds = %bb.gi
  %i.zm = atomicrmw volatile add ptr %i.yz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315: ; preds = %bb.gk, %bb.gj
  %.0.i.i.i.i.i.i.i51.i316 = phi i32 [ %i.zc, %bb.gj ], [ %i.zm, %bb.gk ]
  %i.zn = icmp eq i32 %.0.i.i.i.i.i.i.i51.i316, 1
  br i1 %i.zn, label %bb.gl, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317, !prof !84

bb.gl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yy) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317:    ; preds = %bb.gl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315, %bb.gh, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312
  %i.zo = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i318 = icmp eq ptr %i.zp, null
  br i1 %.not.i.i.i.i1.i53.i318, label %_ZN6duckdbL17TemplatedMarkJoinINS_9hugeint_tENS_9NotEqualsEEEvRNS_6VectorES4_mmPb.exit, label %bb.gm

bb.gm:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 8 ; 4 uses
  %i.zr = load atomic i64, ptr %i.zq acquire, align 8 ; 2 uses
  %i.zs = icmp eq i64 %i.zr, 4294967297
  %i.zt = trunc i64 %i.zr to i32                  ; 2 uses
  br i1 %i.zs, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  store i32 0, ptr %i.zq, align 8, !tbaa !78
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zp, i64 12
  store i32 0, ptr %i.zu, align 4, !tbaa !80
  %i.zv = load ptr, ptr %i.zp, align 8, !tbaa !81
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.zx = load ptr, ptr %i.zw, align 8
  call void %i.zx(ptr noundef nonnull align 8 dereferenceable(16) %i.zp) #17, !inline_history !184
  %i.zy = load ptr, ptr %i.zp, align 8, !tbaa !81
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 24
  %i.aaa = load ptr, ptr %i.zz, align 8
  call void %i.aaa(ptr noundef nonnull align 8 dereferenceable(16) %i.zp) #17, !inline_history !184
  br label %_ZN6duckdbL17TemplatedMarkJoinINS_9hugeint_tENS_9NotEqualsEEEvRNS_6VectorES4_mmPb.exit

bb.go:                                            ; preds = %bb.gm
  %i.aab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i319 = icmp eq i8 %i.aab, 0
  br i1 %.not.i.i.i.i.i2.i54.i319, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aac = add nsw i32 %i.zt, -1
  store i32 %i.aac, ptr %i.zq, align 8, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZN6duckdbL14MarkJoinSwitchINS_9NotEqualsEEEvRNS_6VectorES3_mmPb:bb.a

bb.mt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i583
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avw) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585:    ; preds = %bb.mt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i583, %bb.mp, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i580
  %i.awm = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i586 = icmp eq ptr %i.awn, null
  br i1 %.not.i.i.i.i1.i53.i586, label %_ZN6duckdbL17TemplatedMarkJoinImNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit, label %bb.mu

bb.mu:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 8 ; 4 uses
  %i.awp = load atomic i64, ptr %i.awo acquire, align 8 ; 2 uses
  %i.awq = icmp eq i64 %i.awp, 4294967297
  %i.awr = trunc i64 %i.awp to i32                ; 2 uses
  br i1 %i.awq, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  store i32 0, ptr %i.awo, align 8, !tbaa !78
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awn, i64 12
  store i32 0, ptr %i.aws, align 4, !tbaa !80
  %i.awt = load ptr, ptr %i.awn, align 8, !tbaa !81
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.awv = load ptr, ptr %i.awu, align 8
  call void %i.awv(ptr noundef nonnull align 8 dereferenceable(16) %i.awn) #17, !inline_history !200
  %i.aww = load ptr, ptr %i.awn, align 8, !tbaa !81
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 24
  %i.awy = load ptr, ptr %i.awx, align 8
  call void %i.awy(ptr noundef nonnull align 8 dereferenceable(16) %i.awn) #17, !inline_history !200
  br label %_ZN6duckdbL17TemplatedMarkJoinImNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.mw:                                            ; preds = %bb.mu
  %i.awz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i587 = icmp eq i8 %i.awz, 0
  br i1 %.not.i.i.i.i.i2.i54.i587, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.axa = add nsw i32 %i.awr, -1
  store i32 %i.axa, ptr %i.awo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588

bb.my:                                            ; preds = %bb.mw
  %i.axb = atomicrmw volatile add ptr %i.awo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588: ; preds = %bb.my, %bb.mx
  %.0.i.i.i.i.i.i4.i56.i589 = phi i32 [ %i.awr, %bb.mx ], [ %i.axb, %bb.my ]
  %i.axc = icmp eq i32 %.0.i.i.i.i.i.i4.i56.i589, 1
  br i1 %i.axc, label %bb.mz, label %_ZN6duckdbL17TemplatedMarkJoinImNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit, !prof !84

bb.mz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awn) #17
  br label %_ZN6duckdbL17TemplatedMarkJoinImNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.na:                                            ; preds = %bb.lr
  %i.axd = landingpad { ptr, i32 }
          cleanup
  br label %bb.nf

bb.nb:                                            ; preds = %bb.lt, %bb.ls
  %i.axe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.nc:                                            ; preds = %bb.lu
  %i.axf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.nd:                                            ; preds = %bb.lv
  %i.axg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc, %bb.nb
  %.pn.pn.pn.pn.pn.pn.i546 = phi { ptr, i32 } [ %i.axe, %bb.nb ], [ %i.axf, %bb.nc ], [ %i.axg, %bb.nd ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %14) #17
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.na
  %.pn.pn.pn.pn.pn.pn.pn.i545 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i546, %bb.ne ], [ %i.axd, %bb.na ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %common.resume

_ZN6duckdbL17TemplatedMarkJoinImNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585, %bb.mv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588, %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.ue

bb.ng:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.nh unwind label %bb.op

bb.nh:                                            ; preds = %bb.ng
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.ni unwind label %bb.oq

bb.ni:                                            ; preds = %bb.nh
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.nj unwind label %bb.oq

bb.nj:                                            ; preds = %bb.ni
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10uhugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.nk unwind label %bb.or

bb.nk:                                            ; preds = %bb.nj
  %i.axh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !95
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10uhugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i unwind label %bb.os

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i: ; preds = %bb.nk
  %i.axj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !95
  %.not.i621 = icmp eq i64 %2, 0
  br i1 %.not.i621, label %._crit_edge.i641, label %.lr.ph71.i622

.lr.ph71.i622:                                    ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i
  %i.axl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.not76.i623 = icmp eq i64 %3, 0
  %i.axm = getelementptr inbounds nuw i8, ptr %12, i64 16
  br i1 %.not76.i623, label %._crit_edge.i641, label %.lr.ph71.split.us.i624

.lr.ph71.split.us.i624:                           ; preds = %.lr.ph71.i622, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639
  %.03669.us.i625 = phi i64 [ %i.ayt, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639 ], [ 0, %.lr.ph71.i622 ] ; 4 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %4, i64 %.03669.us.i625 ; 2 uses
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !72, !range !74, !noundef !75
  %i.axp = trunc nuw i8 %i.axo to i1
  br i1 %i.axp, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, label %bb.nl

bb.nl:                                            ; preds = %.lr.ph71.split.us.i624
  %i.axq = load ptr, ptr %11, align 8, !tbaa !127
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i626 = icmp eq ptr %i.axr, null
  br i1 %.not.i.us.i626, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %.03669.us.i625
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !3
  %i.axu = zext i32 %i.axt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627: ; preds = %bb.nm, %bb.nl
  %i.axv = phi i64 [ %i.axu, %bb.nm ], [ %.03669.us.i625, %bb.nl ] ; 3 uses
  %i.axw = load ptr, ptr %i.axl, align 8, !tbaa !128 ; 2 uses
  %.not.i58.us.i628 = icmp eq ptr %i.axw, null
  br i1 %.not.i58.us.i628, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630, label %bb.nn

bb.nn:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627
  %i.axx = lshr i64 %i.axv, 6
  %i.axy = and i64 %i.axv, 63
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr %i.axw, i64 %i.axx
  %i.aya = load i64, ptr %i.axz, align 8, !tbaa !7
  %i.ayb = shl nuw i64 1, %i.axy
  %i.ayc = and i64 %i.aya, %i.ayb
  %.not.us.i629 = icmp eq i64 %i.ayc, 0
  br i1 %.not.us.i629, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630

bb.no:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661
  %.03568.us.i631 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630 ], [ %i.ays, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661 ] ; 3 uses
  %i.ayd = load ptr, ptr %12, align 8, !tbaa !127
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i632 = icmp eq ptr %i.aye, null
  br i1 %.not.i59.us.i632, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %.03568.us.i631
  %i.ayg = load i32, ptr %i.ayf, align 4, !tbaa !3
  %i.ayh = zext i32 %i.ayg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633: ; preds = %bb.np, %bb.no
  %i.ayi = phi i64 [ %i.ayh, %bb.np ], [ %.03568.us.i631, %bb.no ] ; 3 uses
  %i.ayj = load ptr, ptr %i.axm, align 8, !tbaa !128 ; 2 uses
  %.not.i61.us.i634 = icmp eq ptr %i.ayj, null
  br i1 %.not.i61.us.i634, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633
  %i.ayk = lshr i64 %i.ayi, 6
  %i.ayl = and i64 %i.ayi, 63
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr %i.ayj, i64 %i.ayk
  %i.ayn = load i64, ptr %i.aym, align 8, !tbaa !7
  %i.ayo = shl nuw i64 1, %i.ayl
  %i.ayp = and i64 %i.ayn, %i.ayo
  %.not67.us.i636 = icmp eq i64 %i.ayp, 0
  br i1 %.not67.us.i636, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633
  %i.ayq = getelementptr inbounds nuw [16 x i8], ptr %i.axk, i64 %i.ayi
  %i.ayr = invoke noundef zeroext i1 @_ZNK6duckdb10uhugeint_teqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ayu, ptr noundef nonnull align 8 dereferenceable(16) %i.ayq)
          to label %bb.nq unwind label %.split.us.i638

bb.nq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637
  br i1 %i.ayr, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661, label %34

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661: ; preds = %bb.nq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635
  %i.ays = add nuw i64 %.03568.us.i631, 1         ; 2 uses
  %exitcond.not.i662 = icmp eq i64 %i.ays, %3
  br i1 %exitcond.not.i662, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, label %bb.no, !llvm.loop !201

34:                                               ; preds = %bb.nq
  store i8 1, ptr %i.axn, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661, %34, %bb.nn, %.lr.ph71.split.us.i624
  %i.ayt = add nuw i64 %.03669.us.i625, 1         ; 2 uses
  %exitcond79.not.i640 = icmp eq i64 %i.ayt, %2
  br i1 %exitcond79.not.i640, label %._crit_edge.i641, label %.lr.ph71.split.us.i624, !llvm.loop !202

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630: ; preds = %bb.nn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627
  %i.ayu = getelementptr inbounds nuw [16 x i8], ptr %i.axi, i64 %i.axv
  br label %bb.no

.split.us.i638:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637
  %i.ayv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

._crit_edge.i641:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, %.lr.ph71.i622, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i
  %i.ayw = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i642 = icmp eq ptr %i.ayx, null
  br i1 %.not.i.i.i.i.i.i642, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646, label %bb.nr

bb.nr:                                            ; preds = %._crit_edge.i641
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8 ; 4 uses
  %i.ayz = load atomic i64, ptr %i.ayy acquire, align 8 ; 2 uses
  %i.aza = icmp eq i64 %i.ayz, 4294967297
  %i.azb = trunc i64 %i.ayz to i32                ; 2 uses
  br i1 %i.aza, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %bb.nr
  store i32 0, ptr %i.ayy, align 8, !tbaa !78
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayx, i64 12
  store i32 0, ptr %i.azc, align 4, !tbaa !80
  %i.azd = load ptr, ptr %i.ayx, align 8, !tbaa !81
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 16
  %i.azf = load ptr, ptr %i.aze, align 8
  call void %i.azf(ptr noundef nonnull align 8 dereferenceable(16) %i.ayx) #17, !inline_history !203
  %i.azg = load ptr, ptr %i.ayx, align 8, !tbaa !81
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 24
  %i.azi = load ptr, ptr %i.azh, align 8
  call void %i.azi(ptr noundef nonnull align 8 dereferenceable(16) %i.ayx) #17, !inline_history !203
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646

bb.nt:                                            ; preds = %bb.nr
  %i.azj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i643 = icmp eq i8 %i.azj, 0
  br i1 %.not.i.i.i.i.i.i.i643, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.azk = add nsw i32 %i.azb, -1
  store i32 %i.azk, ptr %i.ayy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644

bb.nv:                                            ; preds = %bb.nt
  %i.azl = atomicrmw volatile add ptr %i.ayy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644: ; preds = %bb.nv, %bb.nu
  %.0.i.i.i.i.i.i.i.i645 = phi i32 [ %i.azb, %bb.nu ], [ %i.azl, %bb.nv ]
  %i.azm = icmp eq i32 %.0.i.i.i.i.i.i.i.i645, 1
  br i1 %i.azm, label %bb.nw, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646, !prof !84

bb.nw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ayx) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646:      ; preds = %bb.nw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644, %bb.ns, %._crit_edge.i641
  %i.azn = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i647 = icmp eq ptr %i.azo, null
  br i1 %.not.i.i.i.i1.i.i647, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651, label %bb.nx

bb.nx:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 8 ; 4 uses
  %i.azq = load atomic i64, ptr %i.azp acquire, align 8 ; 2 uses
  %i.azr = icmp eq i64 %i.azq, 4294967297
  %i.azs = trunc i64 %i.azq to i32                ; 2 uses
  br i1 %i.azr, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  store i32 0, ptr %i.azp, align 8, !tbaa !78
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azo, i64 12
  store i32 0, ptr %i.azt, align 4, !tbaa !80
  %i.azu = load ptr, ptr %i.azo, align 8, !tbaa !81
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 16
  %i.azw = load ptr, ptr %i.azv, align 8
  call void %i.azw(ptr noundef nonnull align 8 dereferenceable(16) %i.azo) #17, !inline_history !204
  %i.azx = load ptr, ptr %i.azo, align 8, !tbaa !81
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 24
  %i.azz = load ptr, ptr %i.azy, align 8
  call void %i.azz(ptr noundef nonnull align 8 dereferenceable(16) %i.azo) #17, !inline_history !204
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651

bb.nz:                                            ; preds = %bb.nx
  %i.baa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i648 = icmp eq i8 %i.baa, 0
  br i1 %.not.i.i.i.i.i2.i.i648, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.bab = add nsw i32 %i.azs, -1
  store i32 %i.bab, ptr %i.azp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649

bb.ob:                                            ; preds = %bb.nz
  %i.bac = atomicrmw volatile add ptr %i.azp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649: ; preds = %bb.ob, %bb.oa
  %.0.i.i.i.i.i.i4.i.i650 = phi i32 [ %i.azs, %bb.oa ], [ %i.bac, %bb.ob ]
  %i.bad = icmp eq i32 %.0.i.i.i.i.i.i4.i.i650, 1
  br i1 %i.bad, label %bb.oc, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651, !prof !84

bb.oc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.azo) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651:    ; preds = %bb.oc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649, %bb.ny, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.bae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i652 = icmp eq ptr %i.baf, null
  br i1 %.not.i.i.i.i.i48.i652, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656, label %bb.od

bb.od:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 8 ; 4 uses
  %i.bah = load atomic i64, ptr %i.bag acquire, align 8 ; 2 uses
  %i.bai = icmp eq i64 %i.bah, 4294967297
  %i.baj = trunc i64 %i.bah to i32                ; 2 uses
  br i1 %i.bai, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  store i32 0, ptr %i.bag, align 8, !tbaa !78
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baf, i64 12
  store i32 0, ptr %i.bak, align 4, !tbaa !80
  %i.bal = load ptr, ptr %i.baf, align 8, !tbaa !81
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 16
  %i.ban = load ptr, ptr %i.bam, align 8
  call void %i.ban(ptr noundef nonnull align 8 dereferenceable(16) %i.baf) #17, !inline_history !203
  %i.bao = load ptr, ptr %i.baf, align 8, !tbaa !81
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 24
  %i.baq = load ptr, ptr %i.bap, align 8
  call void %i.baq(ptr noundef nonnull align 8 dereferenceable(16) %i.baf) #17, !inline_history !203
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656

bb.of:                                            ; preds = %bb.od
  %i.bar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i653 = icmp eq i8 %i.bar, 0
  br i1 %.not.i.i.i.i.i.i49.i653, label %bb.oh, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.bas = add nsw i32 %i.baj, -1
  store i32 %i.bas, ptr %i.bag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654

bb.oh:                                            ; preds = %bb.of
  %i.bat = atomicrmw volatile add ptr %i.bag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654: ; preds = %bb.oh, %bb.og
  %.0.i.i.i.i.i.i.i51.i655 = phi i32 [ %i.baj, %bb.og ], [ %i.bat, %bb.oh ]
  %i.bau = icmp eq i32 %.0.i.i.i.i.i.i.i51.i655, 1
  br i1 %i.bau, label %bb.oi, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656, !prof !84

bb.oi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.baf) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656:    ; preds = %bb.oi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654, %bb.oe, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651
  %i.bav = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i657 = icmp eq ptr %i.baw, null
  br i1 %.not.i.i.i.i1.i53.i657, label %_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_9NotEqualsEEEvRNS_6VectorES4_mmPb.exit, label %bb.oj

bb.oj:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 8 ; 4 uses
  %i.bay = load atomic i64, ptr %i.bax acquire, align 8 ; 2 uses
  %i.baz = icmp eq i64 %i.bay, 4294967297
  %i.bba = trunc i64 %i.bay to i32                ; 2 uses
  br i1 %i.baz, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  store i32 0, ptr %i.bax, align 8, !tbaa !78
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baw, i64 12
  store i32 0, ptr %i.bbb, align 4, !tbaa !80
  %i.bbc = load ptr, ptr %i.baw, align 8, !tbaa !81
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 16
  %i.bbe = load ptr, ptr %i.bbd, align 8
  call void %i.bbe(ptr noundef nonnull align 8 dereferenceable(16) %i.baw) #17, !inline_history !204
  %i.bbf = load ptr, ptr %i.baw, align 8, !tbaa !81
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbf, i64 24
  %i.bbh = load ptr, ptr %i.bbg, align 8
  call void %i.bbh(ptr noundef nonnull align 8 dereferenceable(16) %i.baw) #17, !inline_history !204
  br label %_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_9NotEqualsEEEvRNS_6VectorES4_mmPb.exit

bb.ol:                                            ; preds = %bb.oj
  %i.bbi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i658 = icmp eq i8 %i.bbi, 0
  br i1 %.not.i.i.i.i.i2.i54.i658, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.bbj = add nsw i32 %i.bba, -1
  store i32 %i.bbj, ptr %i.bax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i659

bb.on:                                            ; preds = %bb.ol
  %i.bbk = atomicrmw volatile add ptr %i.bax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i659

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i659: ; preds = %bb.on, %bb.om
  %.0.i.i.i.i.i.i4.i56.i660 = phi i32 [ %i.bba, %bb.om ], [ %i.bbk, %bb.on ]
  %i.bbl = icmp eq i32 %.0.i.i.i.i.i.i4.i56.i660, 1
  br i1 %i.bbl, label %bb.oo, label %_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_9NotEqualsEEEvRNS_6VectorES4_mmPb.exit, !prof !84

bb.oo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i659
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.baw) #17
  br label %_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_9NotEqualsEEEvRNS_6VectorES4_mmPb.exit

bb.op:                                            ; preds = %bb.ng
  %i.bbm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ou

bb.oq:                                            ; preds = %bb.ni, %bb.nh
  %i.bbn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.or:                                            ; preds = %bb.nj
  %i.bbo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.os:                                            ; preds = %bb.nk
  %i.bbp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.ot:                                            ; preds = %bb.os, %bb.or, %bb.oq, %.split.us.i638
  %.pn.pn.pn.pn.pn.pn.i620 = phi { ptr, i32 } [ %i.bbn, %bb.oq ], [ %i.bbo, %bb.or ], [ %i.bbp, %bb.os ], [ %i.ayv, %.split.us.i638 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %12) #17
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.op
  %.pn.pn.pn.pn.pn.pn.pn.i619 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i620, %bb.ot ], [ %i.bbm, %bb.op ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %common.resume

_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_9NotEqualsEEEvRNS_6VectorES4_mmPb.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656, %bb.ok, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i659, %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ue

bb.ov:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.ow unwind label %bb.qe

bb.ow:                                            ; preds = %bb.ov
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.ox unwind label %bb.qf

bb.ox:                                            ; preds = %bb.ow
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.oy unwind label %bb.qf

bb.oy:                                            ; preds = %bb.ox
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.oz unwind label %bb.qg

bb.oz:                                            ; preds = %bb.oy
  %i.bbq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !95
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataIfEEPKT_RKS0_.exit47.i unwind label %bb.qh

_ZN6duckdb19UnifiedVectorFormat7GetDataIfEEPKT_RKS0_.exit47.i: ; preds = %bb.oz
  %i.bbs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bbt = load ptr, ptr %i.bbs, align 8, !tbaa !95
  %.not.i665 = icmp eq i64 %2, 0
  br i1 %.not.i665, label %._crit_edge.i685, label %.lr.ph71.i666

.lr.ph71.i666:                                    ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataIfEEPKT_RKS0_.exit47.i
  %i.bbu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.not76.i667 = icmp eq i64 %3, 0
  %i.bbv = getelementptr inbounds nuw i8, ptr %10, i64 16
  br i1 %.not76.i667, label %._crit_edge.i685, label %.lr.ph71.split.us.i668

.lr.ph71.split.us.i668:                           ; preds = %.lr.ph71.i666, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683
  %.03669.us.i669 = phi i64 [ %i.bdc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683 ], [ 0, %.lr.ph71.i666 ] ; 4 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %4, i64 %.03669.us.i669 ; 2 uses
  %i.bbx = load i8, ptr %i.bbw, align 1, !tbaa !72, !range !74, !noundef !75
  %i.bby = trunc nuw i8 %i.bbx to i1
  br i1 %i.bby, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683, label %bb.pa

bb.pa:                                            ; preds = %.lr.ph71.split.us.i668
  %i.bbz = load ptr, ptr %9, align 8, !tbaa !127
  %i.bca = load ptr, ptr %i.bbz, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i670 = icmp eq ptr %i.bca, null
  br i1 %.not.i.us.i670, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i671, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bcb = getelementptr inbounds nuw [4 x i8], ptr %i.bca, i64 %.03669.us.i669
  %i.bcc = load i32, ptr %i.bcb, align 4, !tbaa !3
  %i.bcd = zext i32 %i.bcc to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i671

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i671: ; preds = %bb.pb, %bb.pa
  %i.bce = phi i64 [ %i.bcd, %bb.pb ], [ %.03669.us.i669, %bb.pa ] ; 3 uses
  %i.bcf = load ptr, ptr %i.bbu, align 8, !tbaa !128 ; 2 uses
  %.not.i58.us.i672 = icmp eq ptr %i.bcf, null
  br i1 %.not.i58.us.i672, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i674, label %bb.pc

bb.pc:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i671
  %i.bcg = lshr i64 %i.bce, 6
  %i.bch = and i64 %i.bce, 63
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %i.bcf, i64 %i.bcg
  %i.bcj = load i64, ptr %i.bci, align 8, !tbaa !7
  %i.bck = shl nuw i64 1, %i.bch
  %i.bcl = and i64 %i.bcj, %i.bck
  %.not.us.i673 = icmp eq i64 %i.bcl, 0
  br i1 %.not.us.i673, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i674

bb.pd:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i674, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705
  %.03568.us.i675 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i674 ], [ %i.bdb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705 ] ; 3 uses
  %i.bcm = load ptr, ptr %10, align 8, !tbaa !127
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i676 = icmp eq ptr %i.bcn, null
  br i1 %.not.i59.us.i676, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i677, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %i.bcn, i64 %.03568.us.i675
  %i.bcp = load i32, ptr %i.bco, align 4, !tbaa !3
  %i.bcq = zext i32 %i.bcp to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i677

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i677: ; preds = %bb.pe, %bb.pd
  %i.bcr = phi i64 [ %i.bcq, %bb.pe ], [ %.03568.us.i675, %bb.pd ] ; 3 uses
  %i.bcs = load ptr, ptr %i.bbv, align 8, !tbaa !128 ; 2 uses
  %.not.i61.us.i678 = icmp eq ptr %i.bcs, null
  br i1 %.not.i61.us.i678, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i681, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i679

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i679: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i677
  %i.bct = lshr i64 %i.bcr, 6
  %i.bcu = and i64 %i.bcr, 63
  %i.bcv = getelementptr inbounds nuw [8 x i8], ptr %i.bcs, i64 %i.bct
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !7
  %i.bcx = shl nuw i64 1, %i.bcu
  %i.bcy = and i64 %i.bcw, %i.bcx
  %.not67.us.i680 = icmp eq i64 %i.bcy, 0
  br i1 %.not67.us.i680, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i681

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i681: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i679, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i677
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.bbt, i64 %i.bcr
  %i.bda = invoke noundef zeroext i1 @_ZN6duckdb6Equals9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.bdd, ptr noundef nonnull align 4 dereferenceable(4) %i.bcz)
          to label %bb.pf unwind label %.split.us.i682

bb.pf:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i681
  br i1 %i.bda, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705, label %35

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705: ; preds = %bb.pf, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i679
  %i.bdb = add nuw i64 %.03568.us.i675, 1         ; 2 uses
  %exitcond.not.i706 = icmp eq i64 %i.bdb, %3
  br i1 %exitcond.not.i706, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683, label %bb.pd, !llvm.loop !205

35:                                               ; preds = %bb.pf
  store i8 1, ptr %i.bbw, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705, %35, %bb.pc, %.lr.ph71.split.us.i668
  %i.bdc = add nuw i64 %.03669.us.i669, 1         ; 2 uses
  %exitcond79.not.i684 = icmp eq i64 %i.bdc, %2
  br i1 %exitcond79.not.i684, label %._crit_edge.i685, label %.lr.ph71.split.us.i668, !llvm.loop !206

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i674: ; preds = %bb.pc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i671
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %i.bbr, i64 %i.bce
  br label %bb.pd

.split.us.i682:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i681
  %i.bde = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

._crit_edge.i685:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683, %.lr.ph71.i666, %_ZN6duckdb19UnifiedVectorFormat7GetDataIfEEPKT_RKS0_.exit47.i
  %i.bdf = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i686 = icmp eq ptr %i.bdg, null
  br i1 %.not.i.i.i.i.i.i686, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690, label %bb.pg

bb.pg:                                            ; preds = %._crit_edge.i685
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 8 ; 4 uses
  %i.bdi = load atomic i64, ptr %i.bdh acquire, align 8 ; 2 uses
  %i.bdj = icmp eq i64 %i.bdi, 4294967297
  %i.bdk = trunc i64 %i.bdi to i32                ; 2 uses
  br i1 %i.bdj, label %bb.ph, label %bb.pi

bb.ph:                                            ; preds = %bb.pg
  store i32 0, ptr %i.bdh, align 8, !tbaa !78
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdg, i64 12
  store i32 0, ptr %i.bdl, align 4, !tbaa !80
  %i.bdm = load ptr, ptr %i.bdg, align 8, !tbaa !81
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 16
  %i.bdo = load ptr, ptr %i.bdn, align 8
  call void %i.bdo(ptr noundef nonnull align 8 dereferenceable(16) %i.bdg) #17, !inline_history !207
  %i.bdp = load ptr, ptr %i.bdg, align 8, !tbaa !81
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 24
  %i.bdr = load ptr, ptr %i.bdq, align 8
  call void %i.bdr(ptr noundef nonnull align 8 dereferenceable(16) %i.bdg) #17, !inline_history !207
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690

bb.pi:                                            ; preds = %bb.pg
  %i.bds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i687 = icmp eq i8 %i.bds, 0
  br i1 %.not.i.i.i.i.i.i.i687, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.bdt = add nsw i32 %i.bdk, -1
  store i32 %i.bdt, ptr %i.bdh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i688

bb.pk:                                            ; preds = %bb.pi
  %i.bdu = atomicrmw volatile add ptr %i.bdh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i688

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i688: ; preds = %bb.pk, %bb.pj
  %.0.i.i.i.i.i.i.i.i689 = phi i32 [ %i.bdk, %bb.pj ], [ %i.bdu, %bb.pk ]
  %i.bdv = icmp eq i32 %.0.i.i.i.i.i.i.i.i689, 1
  br i1 %i.bdv, label %bb.pl, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690, !prof !84

bb.pl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i688
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdg) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690:      ; preds = %bb.pl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i688, %bb.ph, %._crit_edge.i685
  %i.bdw = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i691 = icmp eq ptr %i.bdx, null
  br i1 %.not.i.i.i.i1.i.i691, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695, label %bb.pm

bb.pm:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 8 ; 4 uses
  %i.bdz = load atomic i64, ptr %i.bdy acquire, align 8 ; 2 uses
  %i.bea = icmp eq i64 %i.bdz, 4294967297
  %i.beb = trunc i64 %i.bdz to i32                ; 2 uses
  br i1 %i.bea, label %bb.pn, label %bb.po

bb.pn:                                            ; preds = %bb.pm
  store i32 0, ptr %i.bdy, align 8, !tbaa !78
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bdx, i64 12
  store i32 0, ptr %i.bec, align 4, !tbaa !80
  %i.bed = load ptr, ptr %i.bdx, align 8, !tbaa !81
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 16
  %i.bef = load ptr, ptr %i.bee, align 8
  call void %i.bef(ptr noundef nonnull align 8 dereferenceable(16) %i.bdx) #17, !inline_history !208
  %i.beg = load ptr, ptr %i.bdx, align 8, !tbaa !81
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 24
  %i.bei = load ptr, ptr %i.beh, align 8
  call void %i.bei(ptr noundef nonnull align 8 dereferenceable(16) %i.bdx) #17, !inline_history !208
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695

bb.po:                                            ; preds = %bb.pm
  %i.bej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i692 = icmp eq i8 %i.bej, 0
  br i1 %.not.i.i.i.i.i2.i.i692, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.bek = add nsw i32 %i.beb, -1
  store i32 %i.bek, ptr %i.bdy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i693

bb.pq:                                            ; preds = %bb.po
  %i.bel = atomicrmw volatile add ptr %i.bdy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i693

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i693: ; preds = %bb.pq, %bb.pp
  %.0.i.i.i.i.i.i4.i.i694 = phi i32 [ %i.beb, %bb.pp ], [ %i.bel, %bb.pq ]
  %i.bem = icmp eq i32 %.0.i.i.i.i.i.i4.i.i694, 1
  br i1 %i.bem, label %bb.pr, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695, !prof !84

bb.pr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i693
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdx) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695:    ; preds = %bb.pr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i693, %bb.pn, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.ben = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i696 = icmp eq ptr %i.beo, null
  br i1 %.not.i.i.i.i.i48.i696, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700, label %bb.ps

bb.ps:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 8 ; 4 uses
  %i.beq = load atomic i64, ptr %i.bep acquire, align 8 ; 2 uses
  %i.ber = icmp eq i64 %i.beq, 4294967297
  %i.bes = trunc i64 %i.beq to i32                ; 2 uses
  br i1 %i.ber, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps
  store i32 0, ptr %i.bep, align 8, !tbaa !78
  %i.bet = getelementptr inbounds nuw i8, ptr %i.beo, i64 12
  store i32 0, ptr %i.bet, align 4, !tbaa !80
  %i.beu = load ptr, ptr %i.beo, align 8, !tbaa !81
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 16
  %i.bew = load ptr, ptr %i.bev, align 8
  call void %i.bew(ptr noundef nonnull align 8 dereferenceable(16) %i.beo) #17, !inline_history !207
  %i.bex = load ptr, ptr %i.beo, align 8, !tbaa !81
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 24
  %i.bez = load ptr, ptr %i.bey, align 8
  call void %i.bez(ptr noundef nonnull align 8 dereferenceable(16) %i.beo) #17, !inline_history !207
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700

bb.pu:                                            ; preds = %bb.ps
  %i.bfa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i697 = icmp eq i8 %i.bfa, 0
  br i1 %.not.i.i.i.i.i.i49.i697, label %bb.pw, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.bfb = add nsw i32 %i.bes, -1
  store i32 %i.bfb, ptr %i.bep, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i698

bb.pw:                                            ; preds = %bb.pu
  %i.bfc = atomicrmw volatile add ptr %i.bep, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i698

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i698: ; preds = %bb.pw, %bb.pv
  %.0.i.i.i.i.i.i.i51.i699 = phi i32 [ %i.bes, %bb.pv ], [ %i.bfc, %bb.pw ]
  %i.bfd = icmp eq i32 %.0.i.i.i.i.i.i.i51.i699, 1
  br i1 %i.bfd, label %bb.px, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700, !prof !84

bb.px:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i698
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.beo) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700:    ; preds = %bb.px, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i698, %bb.pt, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695
  %i.bfe = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i701 = icmp eq ptr %i.bff, null
  br i1 %.not.i.i.i.i1.i53.i701, label %_ZN6duckdbL17TemplatedMarkJoinIfNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit, label %bb.py

bb.py:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 8 ; 4 uses
  %i.bfh = load atomic i64, ptr %i.bfg acquire, align 8 ; 2 uses
  %i.bfi = icmp eq i64 %i.bfh, 4294967297
  %i.bfj = trunc i64 %i.bfh to i32                ; 2 uses
  br i1 %i.bfi, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %bb.py
  store i32 0, ptr %i.bfg, align 8, !tbaa !78
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bff, i64 12
  store i32 0, ptr %i.bfk, align 4, !tbaa !80
  %i.bfl = load ptr, ptr %i.bff, align 8, !tbaa !81
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 16
  %i.bfn = load ptr, ptr %i.bfm, align 8
  call void %i.bfn(ptr noundef nonnull align 8 dereferenceable(16) %i.bff) #17, !inline_history !208
  %i.bfo = load ptr, ptr %i.bff, align 8, !tbaa !81
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 24
  %i.bfq = load ptr, ptr %i.bfp, align 8
  call void %i.bfq(ptr noundef nonnull align 8 dereferenceable(16) %i.bff) #17, !inline_history !208
  br label %_ZN6duckdbL17TemplatedMarkJoinIfNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.qa:                                            ; preds = %bb.py
  %i.bfr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i702 = icmp eq i8 %i.bfr, 0
  br i1 %.not.i.i.i.i.i2.i54.i702, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.bfs = add nsw i32 %i.bfj, -1
  store i32 %i.bfs, ptr %i.bfg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i703

bb.qc:                                            ; preds = %bb.qa
  %i.bft = atomicrmw volatile add ptr %i.bfg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i703

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i703: ; preds = %bb.qc, %bb.qb
  %.0.i.i.i.i.i.i4.i56.i704 = phi i32 [ %i.bfj, %bb.qb ], [ %i.bft, %bb.qc ]
  %i.bfu = icmp eq i32 %.0.i.i.i.i.i.i4.i56.i704, 1
  br i1 %i.bfu, label %bb.qd, label %_ZN6duckdbL17TemplatedMarkJoinIfNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit, !prof !84

bb.qd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i703
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bff) #17
  br label %_ZN6duckdbL17TemplatedMarkJoinIfNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.qe:                                            ; preds = %bb.ov
  %i.bfv = landingpad { ptr, i32 }
          cleanup
  br label %bb.qj

bb.qf:                                            ; preds = %bb.ox, %bb.ow
  %i.bfw = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qg:                                            ; preds = %bb.oy
  %i.bfx = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qh:                                            ; preds = %bb.oz
  %i.bfy = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.qg, %bb.qf, %.split.us.i682
  %.pn.pn.pn.pn.pn.pn.i664 = phi { ptr, i32 } [ %i.bfw, %bb.qf ], [ %i.bfx, %bb.qg ], [ %i.bfy, %bb.qh ], [ %i.bde, %.split.us.i682 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #17
  br label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.qe
  %.pn.pn.pn.pn.pn.pn.pn.i663 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i664, %bb.qi ], [ %i.bfv, %bb.qe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %common.resume

_ZN6duckdbL17TemplatedMarkJoinIfNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700, %bb.pz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i703, %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ue

bb.qk:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.ql unwind label %bb.rt

bb.ql:                                            ; preds = %bb.qk
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.qm unwind label %bb.ru

bb.qm:                                            ; preds = %bb.ql
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.qn unwind label %bb.ru

bb.qn:                                            ; preds = %bb.qm
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.qo unwind label %bb.rv

bb.qo:                                            ; preds = %bb.qn
  %i.bfz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bga = load ptr, ptr %i.bfz, align 8, !tbaa !95
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataIdEEPKT_RKS0_.exit47.i unwind label %bb.rw

_ZN6duckdb19UnifiedVectorFormat7GetDataIdEEPKT_RKS0_.exit47.i: ; preds = %bb.qo
  %i.bgb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !95
  %.not.i709 = icmp eq i64 %2, 0
  br i1 %.not.i709, label %._crit_edge.i729, label %.lr.ph71.i710

.lr.ph71.i710:                                    ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataIdEEPKT_RKS0_.exit47.i
  %i.bgd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.not76.i711 = icmp eq i64 %3, 0
  %i.bge = getelementptr inbounds nuw i8, ptr %8, i64 16
  br i1 %.not76.i711, label %._crit_edge.i729, label %.lr.ph71.split.us.i712

.lr.ph71.split.us.i712:                           ; preds = %.lr.ph71.i710, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727
  %.03669.us.i713 = phi i64 [ %i.bhl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727 ], [ 0, %.lr.ph71.i710 ] ; 4 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %4, i64 %.03669.us.i713 ; 2 uses
  %i.bgg = load i8, ptr %i.bgf, align 1, !tbaa !72, !range !74, !noundef !75
  %i.bgh = trunc nuw i8 %i.bgg to i1
  br i1 %i.bgh, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727, label %bb.qp

bb.qp:                                            ; preds = %.lr.ph71.split.us.i712
  %i.bgi = load ptr, ptr %7, align 8, !tbaa !127
  %i.bgj = load ptr, ptr %i.bgi, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i714 = icmp eq ptr %i.bgj, null
  br i1 %.not.i.us.i714, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i715, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.bgj, i64 %.03669.us.i713
  %i.bgl = load i32, ptr %i.bgk, align 4, !tbaa !3
  %i.bgm = zext i32 %i.bgl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i715

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i715: ; preds = %bb.qq, %bb.qp
  %i.bgn = phi i64 [ %i.bgm, %bb.qq ], [ %.03669.us.i713, %bb.qp ] ; 3 uses
  %i.bgo = load ptr, ptr %i.bgd, align 8, !tbaa !128 ; 2 uses
  %.not.i58.us.i716 = icmp eq ptr %i.bgo, null
  br i1 %.not.i58.us.i716, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i718, label %bb.qr

bb.qr:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i715
  %i.bgp = lshr i64 %i.bgn, 6
  %i.bgq = and i64 %i.bgn, 63
  %i.bgr = getelementptr inbounds nuw [8 x i8], ptr %i.bgo, i64 %i.bgp
  %i.bgs = load i64, ptr %i.bgr, align 8, !tbaa !7
  %i.bgt = shl nuw i64 1, %i.bgq
  %i.bgu = and i64 %i.bgs, %i.bgt
  %.not.us.i717 = icmp eq i64 %i.bgu, 0
  br i1 %.not.us.i717, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i718

bb.qs:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i718, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749
  %.03568.us.i719 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i718 ], [ %i.bhk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749 ] ; 3 uses
  %i.bgv = load ptr, ptr %8, align 8, !tbaa !127
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i720 = icmp eq ptr %i.bgw, null
  br i1 %.not.i59.us.i720, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i721, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bgw, i64 %.03568.us.i719
  %i.bgy = load i32, ptr %i.bgx, align 4, !tbaa !3
  %i.bgz = zext i32 %i.bgy to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i721

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i721: ; preds = %bb.qt, %bb.qs
  %i.bha = phi i64 [ %i.bgz, %bb.qt ], [ %.03568.us.i719, %bb.qs ] ; 3 uses
  %i.bhb = load ptr, ptr %i.bge, align 8, !tbaa !128 ; 2 uses
  %.not.i61.us.i722 = icmp eq ptr %i.bhb, null
  br i1 %.not.i61.us.i722, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i725, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i723

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i723: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i721
  %i.bhc = lshr i64 %i.bha, 6
  %i.bhd = and i64 %i.bha, 63
  %i.bhe = getelementptr inbounds nuw [8 x i8], ptr %i.bhb, i64 %i.bhc
  %i.bhf = load i64, ptr %i.bhe, align 8, !tbaa !7
  %i.bhg = shl nuw i64 1, %i.bhd
  %i.bhh = and i64 %i.bhf, %i.bhg
  %.not67.us.i724 = icmp eq i64 %i.bhh, 0
  br i1 %.not67.us.i724, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i725

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i725: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i723, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i721
  %i.bhi = getelementptr inbounds nuw [8 x i8], ptr %i.bgc, i64 %i.bha
  %i.bhj = invoke noundef zeroext i1 @_ZN6duckdb6Equals9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.bhm, ptr noundef nonnull align 8 dereferenceable(8) %i.bhi)
          to label %bb.qu unwind label %.split.us.i726

bb.qu:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i725
  br i1 %i.bhj, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749, label %36

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749: ; preds = %bb.qu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i723
  %i.bhk = add nuw i64 %.03568.us.i719, 1         ; 2 uses
  %exitcond.not.i750 = icmp eq i64 %i.bhk, %3
  br i1 %exitcond.not.i750, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727, label %bb.qs, !llvm.loop !209

36:                                               ; preds = %bb.qu
  store i8 1, ptr %i.bgf, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749, %36, %bb.qr, %.lr.ph71.split.us.i712
  %i.bhl = add nuw i64 %.03669.us.i713, 1         ; 2 uses
  %exitcond79.not.i728 = icmp eq i64 %i.bhl, %2
  br i1 %exitcond79.not.i728, label %._crit_edge.i729, label %.lr.ph71.split.us.i712, !llvm.loop !210

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i718: ; preds = %bb.qr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i715
  %i.bhm = getelementptr inbounds nuw [8 x i8], ptr %i.bga, i64 %i.bgn
  br label %bb.qs

.split.us.i726:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i725
  %i.bhn = landingpad { ptr, i32 }
          cleanup
  br label %bb.rx

._crit_edge.i729:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727, %.lr.ph71.i710, %_ZN6duckdb19UnifiedVectorFormat7GetDataIdEEPKT_RKS0_.exit47.i
  %i.bho = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.bhp = load ptr, ptr %i.bho, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i730 = icmp eq ptr %i.bhp, null
  br i1 %.not.i.i.i.i.i.i730, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734, label %bb.qv

bb.qv:                                            ; preds = %._crit_edge.i729
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 8 ; 4 uses
  %i.bhr = load atomic i64, ptr %i.bhq acquire, align 8 ; 2 uses
  %i.bhs = icmp eq i64 %i.bhr, 4294967297
  %i.bht = trunc i64 %i.bhr to i32                ; 2 uses
  br i1 %i.bhs, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  store i32 0, ptr %i.bhq, align 8, !tbaa !78
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhp, i64 12
  store i32 0, ptr %i.bhu, align 4, !tbaa !80
  %i.bhv = load ptr, ptr %i.bhp, align 8, !tbaa !81
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 16
  %i.bhx = load ptr, ptr %i.bhw, align 8
  call void %i.bhx(ptr noundef nonnull align 8 dereferenceable(16) %i.bhp) #17, !inline_history !211
  %i.bhy = load ptr, ptr %i.bhp, align 8, !tbaa !81
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 24
  %i.bia = load ptr, ptr %i.bhz, align 8
  call void %i.bia(ptr noundef nonnull align 8 dereferenceable(16) %i.bhp) #17, !inline_history !211
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734

bb.qx:                                            ; preds = %bb.qv
  %i.bib = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i731 = icmp eq i8 %i.bib, 0
  br i1 %.not.i.i.i.i.i.i.i731, label %bb.qz, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.bic = add nsw i32 %i.bht, -1
  store i32 %i.bic, ptr %i.bhq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i732

bb.qz:                                            ; preds = %bb.qx
  %i.bid = atomicrmw volatile add ptr %i.bhq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i732

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i732: ; preds = %bb.qz, %bb.qy
  %.0.i.i.i.i.i.i.i.i733 = phi i32 [ %i.bht, %bb.qy ], [ %i.bid, %bb.qz ]
  %i.bie = icmp eq i32 %.0.i.i.i.i.i.i.i.i733, 1
  br i1 %i.bie, label %bb.ra, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734, !prof !84

bb.ra:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i732
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bhp) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734:      ; preds = %bb.ra, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i732, %bb.qw, %._crit_edge.i729
  %i.bif = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.big = load ptr, ptr %i.bif, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i735 = icmp eq ptr %i.big, null
  br i1 %.not.i.i.i.i1.i.i735, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739, label %bb.rb

bb.rb:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 8 ; 4 uses
  %i.bii = load atomic i64, ptr %i.bih acquire, align 8 ; 2 uses
  %i.bij = icmp eq i64 %i.bii, 4294967297
  %i.bik = trunc i64 %i.bii to i32                ; 2 uses
  br i1 %i.bij, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %bb.rb
  store i32 0, ptr %i.bih, align 8, !tbaa !78
  %i.bil = getelementptr inbounds nuw i8, ptr %i.big, i64 12
  store i32 0, ptr %i.bil, align 4, !tbaa !80
  %i.bim = load ptr, ptr %i.big, align 8, !tbaa !81
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bim, i64 16
  %i.bio = load ptr, ptr %i.bin, align 8
  call void %i.bio(ptr noundef nonnull align 8 dereferenceable(16) %i.big) #17, !inline_history !212
  %i.bip = load ptr, ptr %i.big, align 8, !tbaa !81
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bip, i64 24
  %i.bir = load ptr, ptr %i.biq, align 8
  call void %i.bir(ptr noundef nonnull align 8 dereferenceable(16) %i.big) #17, !inline_history !212
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739

bb.rd:                                            ; preds = %bb.rb
  %i.bis = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i736 = icmp eq i8 %i.bis, 0
  br i1 %.not.i.i.i.i.i2.i.i736, label %bb.rf, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.bit = add nsw i32 %i.bik, -1
  store i32 %i.bit, ptr %i.bih, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i737

bb.rf:                                            ; preds = %bb.rd
  %i.biu = atomicrmw volatile add ptr %i.bih, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i737

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i737: ; preds = %bb.rf, %bb.re
  %.0.i.i.i.i.i.i4.i.i738 = phi i32 [ %i.bik, %bb.re ], [ %i.biu, %bb.rf ]
  %i.biv = icmp eq i32 %.0.i.i.i.i.i.i4.i.i738, 1
  br i1 %i.biv, label %bb.rg, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739, !prof !84

bb.rg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i737
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.big) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739:    ; preds = %bb.rg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i737, %bb.rc, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.biw = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i740 = icmp eq ptr %i.bix, null
  br i1 %.not.i.i.i.i.i48.i740, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744, label %bb.rh

bb.rh:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 8 ; 4 uses
  %i.biz = load atomic i64, ptr %i.biy acquire, align 8 ; 2 uses
  %i.bja = icmp eq i64 %i.biz, 4294967297
  %i.bjb = trunc i64 %i.biz to i32                ; 2 uses
  br i1 %i.bja, label %bb.ri, label %bb.rj

bb.ri:                                            ; preds = %bb.rh
  store i32 0, ptr %i.biy, align 8, !tbaa !78
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bix, i64 12
  store i32 0, ptr %i.bjc, align 4, !tbaa !80
  %i.bjd = load ptr, ptr %i.bix, align 8, !tbaa !81
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 16
  %i.bjf = load ptr, ptr %i.bje, align 8
  call void %i.bjf(ptr noundef nonnull align 8 dereferenceable(16) %i.bix) #17, !inline_history !211
  %i.bjg = load ptr, ptr %i.bix, align 8, !tbaa !81
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjg, i64 24
  %i.bji = load ptr, ptr %i.bjh, align 8
  call void %i.bji(ptr noundef nonnull align 8 dereferenceable(16) %i.bix) #17, !inline_history !211
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744

bb.rj:                                            ; preds = %bb.rh
  %i.bjj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i741 = icmp eq i8 %i.bjj, 0
  br i1 %.not.i.i.i.i.i.i49.i741, label %bb.rl, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.bjk = add nsw i32 %i.bjb, -1
  store i32 %i.bjk, ptr %i.biy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i742

bb.rl:                                            ; preds = %bb.rj
  %i.bjl = atomicrmw volatile add ptr %i.biy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i742

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i742: ; preds = %bb.rl, %bb.rk
  %.0.i.i.i.i.i.i.i51.i743 = phi i32 [ %i.bjb, %bb.rk ], [ %i.bjl, %bb.rl ]
  %i.bjm = icmp eq i32 %.0.i.i.i.i.i.i.i51.i743, 1
  br i1 %i.bjm, label %bb.rm, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744, !prof !84

bb.rm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i742
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bix) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744:    ; preds = %bb.rm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i742, %bb.ri, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739
  %i.bjn = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i745 = icmp eq ptr %i.bjo, null
  br i1 %.not.i.i.i.i1.i53.i745, label %_ZN6duckdbL17TemplatedMarkJoinIdNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit, label %bb.rn

bb.rn:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 8 ; 4 uses
  %i.bjq = load atomic i64, ptr %i.bjp acquire, align 8 ; 2 uses
  %i.bjr = icmp eq i64 %i.bjq, 4294967297
  %i.bjs = trunc i64 %i.bjq to i32                ; 2 uses
  br i1 %i.bjr, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  store i32 0, ptr %i.bjp, align 8, !tbaa !78
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjo, i64 12
  store i32 0, ptr %i.bjt, align 4, !tbaa !80
  %i.bju = load ptr, ptr %i.bjo, align 8, !tbaa !81
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 16
  %i.bjw = load ptr, ptr %i.bjv, align 8
  call void %i.bjw(ptr noundef nonnull align 8 dereferenceable(16) %i.bjo) #17, !inline_history !212
  %i.bjx = load ptr, ptr %i.bjo, align 8, !tbaa !81
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjx, i64 24
  %i.bjz = load ptr, ptr %i.bjy, align 8
  call void %i.bjz(ptr noundef nonnull align 8 dereferenceable(16) %i.bjo) #17, !inline_history !212
  br label %_ZN6duckdbL17TemplatedMarkJoinIdNS_9NotEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.rp:                                            ; preds = %bb.rn
  %i.bka = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i746 = icmp eq i8 %i.bka, 0
  br i1 %.not.i.i.i.i.i2.i54.i746, label %bb.rr, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.bkb = add nsw i32 %i.bjs, -1
  store i32 %i.bkb, ptr %i.bjp, align 8, !tbaa !3
end_hunk_1
begin_hunk_2_@_ZN6duckdbL14MarkJoinSwitchINS_9NotEqualsEEEvRNS_6VectorES3_mmPb:bb.a
  %i.bkn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bko = load ptr, ptr %i.bkn, align 8
  %.fr.i754 = freeze ptr %i.bko                   ; 3 uses
  %.not.i58.i755 = icmp eq ptr %.fr.i754, null    ; 2 uses
  %.not113.i = icmp eq i64 %3, 0
  %i.bkp = load ptr, ptr %6, align 8              ; 2 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bkr = load ptr, ptr %i.bkq, align 8
  %.fr114.i = freeze ptr %i.bkr                   ; 3 uses
  br i1 %.not113.i, label %._crit_edge.i763, label %.lr.ph75.split.us.i

.lr.ph75.split.us.i:                              ; preds = %.lr.ph75.i
  %.not.i61.i756 = icmp eq ptr %.fr114.i, null
  br i1 %.not.i61.i756, label %.lr.ph75.split.us.split.us.i, label %.lr.ph75.split.us.split.i

.lr.ph75.split.us.split.us.i:                     ; preds = %.lr.ph75.split.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i789
  %.03673.us.us.i = phi i64 [ %i.blg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i789 ], [ 0, %.lr.ph75.split.us.i ] ; 4 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %4, i64 %.03673.us.us.i ; 2 uses
  %i.bkt = load i8, ptr %i.bks, align 1, !tbaa !72, !range !74, !noundef !75
  %i.bku = trunc nuw i8 %i.bkt to i1
  br i1 %i.bku, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i789, label %bb.se

bb.se:                                            ; preds = %.lr.ph75.split.us.split.us.i
  %i.bkv = load ptr, ptr %i.bkm, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.us.i784 = icmp eq ptr %i.bkv, null
  br i1 %.not.i.us.us.i784, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %.03673.us.us.i
  %i.bkx = load i32, ptr %i.bkw, align 4, !tbaa !3
  %i.bky = zext i32 %i.bkx to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785: ; preds = %bb.sf, %bb.se
  %i.bkz = phi i64 [ %i.bky, %bb.sf ], [ %.03673.us.us.i, %bb.se ] ; 3 uses
  br i1 %.not.i58.i755, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787, label %bb.sg

bb.sg:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785
  %i.bla = lshr i64 %i.bkz, 6
  %i.blb = and i64 %i.bkz, 63
  %i.blc = getelementptr inbounds nuw [8 x i8], ptr %.fr.i754, i64 %i.bla
  %i.bld = load i64, ptr %i.blc, align 8, !tbaa !7
  %i.ble = shl nuw i64 1, %i.blb
  %i.blf = and i64 %i.bld, %i.ble
  %.not.us.us.i786 = icmp eq i64 %i.blf, 0
  br i1 %.not.us.us.i786, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i789, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i789: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us94.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.us104.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.us.us.us.i, %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us.us.us.i, %bb.sg, %.lr.ph75.split.us.split.us.i
  %i.blg = add nuw i64 %.03673.us.us.i, 1         ; 2 uses
  %exitcond127.not.i = icmp eq i64 %i.blg, %2
  br i1 %exitcond127.not.i, label %._crit_edge.i763, label %.lr.ph75.split.us.split.us.i, !llvm.loop !213

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787: ; preds = %bb.sg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785
  %i.blh = load ptr, ptr %i.bkp, align 8, !tbaa !110 ; 3 uses
  %.not.i59.us.us.i788 = icmp eq ptr %i.blh, null ; 2 uses
  %i.bli = getelementptr inbounds nuw [16 x i8], ptr %i.bkj, i64 %i.bkz ; 2 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bli, i64 8 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.us.us.us.i = load i64, ptr %i.bli, align 1
  %.0.copyload.i.i.i.i.i.i.us.us.us.fr.i = freeze i64 %.0.copyload.i.i.i.i.i.i.us.us.us.i ; 5 uses
  %i.blk = trunc i64 %.0.copyload.i.i.i.i.i.i.us.us.us.fr.i to i32
  %i.bll = icmp ult i32 %i.blk, 13
  %i.blm = and i64 %.0.copyload.i.i.i.i.i.i.us.us.us.fr.i, 4294967295
  br i1 %i.bll, label %.lr.ph.split.us.split.us.us.us.i, label %.lr.ph.split.us.split.us97.us.i

.lr.ph.split.us.split.us97.us.i:                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us94.us.i
  %.03572.us.us88.us.i = phi i64 [ %i.blx, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us94.us.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787 ] ; 3 uses
  br i1 %.not.i59.us.us.i788, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us89.us.i, label %bb.sh

bb.sh:                                            ; preds = %.lr.ph.split.us.split.us97.us.i
  %i.bln = getelementptr inbounds nuw [4 x i8], ptr %i.blh, i64 %.03572.us.us88.us.i
  %i.blo = load i32, ptr %i.bln, align 4, !tbaa !3
  %i.blp = zext i32 %i.blo to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us89.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us89.us.i: ; preds = %bb.sh, %.lr.ph.split.us.split.us97.us.i
  %i.blq = phi i64 [ %i.blp, %bb.sh ], [ %.03572.us.us88.us.i, %.lr.ph.split.us.split.us97.us.i ]
  %i.blr = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %i.blq ; 2 uses
  %.0.copyload.i12.i.i.i.i.i.us.us90.us.i = load i64, ptr %i.blr, align 1
  %.not.i.i.i.i.i64.us.us91.us.i = icmp eq i64 %.0.copyload.i.i.i.i.i.i.us.us.us.fr.i, %.0.copyload.i12.i.i.i.i.i.us.us90.us.i
  br i1 %.not.i.i.i.i.i64.us.us91.us.i, label %bb.si, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us.us.us.i

bb.si:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us89.us.i
  %.0.copyload.i13.i.i.i.i.i.us.us92.us.i = load i64, ptr %i.blj, align 1 ; 2 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 8
  %.0.copyload.i14.i.i.i.i.i.us.us93.us.i = load i64, ptr %i.bls, align 1 ; 2 uses
  %i.blt = icmp eq i64 %.0.copyload.i13.i.i.i.i.i.us.us92.us.i, %.0.copyload.i14.i.i.i.i.i.us.us93.us.i
  br i1 %i.blt, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us94.us.i, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.blu = inttoptr i64 %.0.copyload.i14.i.i.i.i.i.us.us93.us.i to ptr
  %i.blv = inttoptr i64 %.0.copyload.i13.i.i.i.i.i.us.us92.us.i to ptr
  %bcmp.i.i.i.i.i.us.us.us.i = call i32 @bcmp(ptr %i.blv, ptr %i.blu, i64 %i.blm)
  %i.blw = icmp eq i32 %bcmp.i.i.i.i.i.us.us.us.i, 0
  br i1 %i.blw, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us94.us.i, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us.us.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us94.us.i: ; preds = %bb.sj, %bb.si
  %i.blx = add nuw i64 %.03572.us.us88.us.i, 1    ; 2 uses
  %exitcond124.not.i = icmp eq i64 %i.blx, %3
  br i1 %exitcond124.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i789, label %.lr.ph.split.us.split.us97.us.i, !llvm.loop !214

_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us.us.us.i: ; preds = %bb.sj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us89.us.i, %bb.sk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us98.us.i, %bb.sl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.us.i
  store i8 1, ptr %i.bks, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i789

.lr.ph.split.us.split.us.us.us.i:                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787
  br i1 %.not.i59.us.us.i788, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us98.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us98.us.i: ; preds = %.lr.ph.split.us.split.us.us.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.us104.us.i
  %.03572.us.us.us99.us.i = phi i64 [ %i.bme, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.us104.us.i ], [ 0, %.lr.ph.split.us.split.us.us.us.i ] ; 2 uses
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %i.blh, i64 %.03572.us.us.us99.us.i
  %i.blz = load i32, ptr %i.bly, align 4, !tbaa !3
  %i.bma = zext i32 %i.blz to i64
  %i.bmb = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %i.bma ; 2 uses
  %.0.copyload.i12.i.i.i.i.i.us.us.us100.us.i = load i64, ptr %i.bmb, align 1
  %.not.i.i.i.i.i64.us.us.us101.us.i = icmp eq i64 %.0.copyload.i.i.i.i.i.i.us.us.us.fr.i, %.0.copyload.i12.i.i.i.i.i.us.us.us100.us.i
  br i1 %.not.i.i.i.i.i64.us.us.us101.us.i, label %bb.sk, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us.us.us.i

bb.sk:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us98.us.i
  %.0.copyload.i13.i.i.i.i.i.us.us.us102.us.i = load i64, ptr %i.blj, align 1
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 8
  %.0.copyload.i14.i.i.i.i.i.us.us.us103.us.i = load i64, ptr %i.bmc, align 1
  %i.bmd = icmp eq i64 %.0.copyload.i13.i.i.i.i.i.us.us.us102.us.i, %.0.copyload.i14.i.i.i.i.i.us.us.us103.us.i
  br i1 %i.bmd, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.us104.us.i, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us.us.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.us104.us.i: ; preds = %bb.sk
  %i.bme = add nuw i64 %.03572.us.us.us99.us.i, 1 ; 2 uses
  %exitcond125.not.i = icmp eq i64 %i.bme, %3
  br i1 %exitcond125.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i789, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us98.us.i, !llvm.loop !214

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.us.i: ; preds = %.lr.ph.split.us.split.us.us.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.us.us.us.i
  %.03572.us.us.us.us.us.i = phi i64 [ %i.bmi, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.us.us.us.i ], [ 0, %.lr.ph.split.us.split.us.us.us.i ] ; 2 uses
  %i.bmf = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %.03572.us.us.us.us.us.i ; 2 uses
  %.0.copyload.i12.i.i.i.i.i.us.us.us.us.us.i = load i64, ptr %i.bmf, align 1
  %.not.i.i.i.i.i64.us.us.us.us.us.i = icmp eq i64 %.0.copyload.i.i.i.i.i.i.us.us.us.fr.i, %.0.copyload.i12.i.i.i.i.i.us.us.us.us.us.i
  br i1 %.not.i.i.i.i.i64.us.us.us.us.us.i, label %bb.sl, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us.us.us.i

bb.sl:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.us.i
  %.0.copyload.i13.i.i.i.i.i.us.us.us.us.us.i = load i64, ptr %i.blj, align 1
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmf, i64 8
  %.0.copyload.i14.i.i.i.i.i.us.us.us.us.us.i = load i64, ptr %i.bmg, align 1
  %i.bmh = icmp eq i64 %.0.copyload.i13.i.i.i.i.i.us.us.us.us.us.i, %.0.copyload.i14.i.i.i.i.i.us.us.us.us.us.i
  br i1 %i.bmh, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.us.us.us.i, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us.us.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.us.us.us.i: ; preds = %bb.sl
  %i.bmi = add nuw i64 %.03572.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %i.bmi, %3
  br i1 %exitcond126.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i789, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.us.i, !llvm.loop !214

.lr.ph75.split.us.split.i:                        ; preds = %.lr.ph75.split.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us86.i
  %.03673.us.i = phi i64 [ %i.bnq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us86.i ], [ 0, %.lr.ph75.split.us.i ] ; 4 uses
  %i.bmj = getelementptr inbounds nuw i8, ptr %4, i64 %.03673.us.i ; 2 uses
  %i.bmk = load i8, ptr %i.bmj, align 1, !tbaa !72, !range !74, !noundef !75
  %i.bml = trunc nuw i8 %i.bmk to i1
  br i1 %i.bml, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us86.i, label %bb.sm

bb.sm:                                            ; preds = %.lr.ph75.split.us.split.i
  %i.bmm = load ptr, ptr %i.bkm, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i757 = icmp eq ptr %i.bmm, null
  br i1 %.not.i.us.i757, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.bmn = getelementptr inbounds nuw [4 x i8], ptr %i.bmm, i64 %.03673.us.i
  %i.bmo = load i32, ptr %i.bmn, align 4, !tbaa !3
  %i.bmp = zext i32 %i.bmo to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758: ; preds = %bb.sn, %bb.sm
  %i.bmq = phi i64 [ %i.bmp, %bb.sn ], [ %.03673.us.i, %bb.sm ] ; 3 uses
  br i1 %.not.i58.i755, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760, label %bb.so

bb.so:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758
  %i.bmr = lshr i64 %i.bmq, 6
  %i.bms = and i64 %i.bmq, 63
  %i.bmt = getelementptr inbounds nuw [8 x i8], ptr %.fr.i754, i64 %i.bmr
  %i.bmu = load i64, ptr %i.bmt, align 8, !tbaa !7
  %i.bmv = shl nuw i64 1, %i.bms
  %i.bmw = and i64 %i.bmu, %i.bmv
  %.not.us.i759 = icmp eq i64 %i.bmw, 0
  br i1 %.not.us.i759, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us86.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us77.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i
  %.03572.us76.i = phi i64 [ %i.bnp, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760 ] ; 2 uses
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %i.bnr, i64 %.03572.us76.i
  %i.bmy = load i32, ptr %i.bmx, align 4, !tbaa !3
  %i.bmz = zext i32 %i.bmy to i64                 ; 3 uses
  %i.bna = lshr i64 %i.bmz, 6
  %i.bnb = and i64 %i.bmz, 63
  %i.bnc = getelementptr inbounds nuw [8 x i8], ptr %.fr114.i, i64 %i.bna
  %i.bnd = load i64, ptr %i.bnc, align 8, !tbaa !7
  %i.bne = shl nuw i64 1, %i.bnb
  %i.bnf = and i64 %i.bne, %i.bnd
  %.not71.us.i = icmp eq i64 %i.bnf, 0
  br i1 %.not71.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us77.i
  %i.bng = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %i.bmz ; 2 uses
  %.0.copyload.i.i.i.i.i.i.us78.i = load i64, ptr %i.bns, align 1 ; 3 uses
  %.0.copyload.i12.i.i.i.i.i.us79.i = load i64, ptr %i.bng, align 1
  %.not.i.i.i.i.i64.us80.i = icmp eq i64 %.0.copyload.i.i.i.i.i.i.us78.i, %.0.copyload.i12.i.i.i.i.i.us79.i
  %i.bnh = trunc i64 %.0.copyload.i.i.i.i.i.i.us78.i to i32
  br i1 %.not.i.i.i.i.i64.us80.i, label %bb.sp, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us85.i

bb.sp:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762
  %.0.copyload.i13.i.i.i.i.i.us81.i = load i64, ptr %i.bnt, align 1 ; 2 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bng, i64 8
  %.0.copyload.i14.i.i.i.i.i.us82.i = load i64, ptr %i.bni, align 1 ; 2 uses
  %i.bnj = icmp eq i64 %.0.copyload.i13.i.i.i.i.i.us81.i, %.0.copyload.i14.i.i.i.i.i.us82.i
  %i.bnk = inttoptr i64 %.0.copyload.i13.i.i.i.i.i.us81.i to ptr
  %i.bnl = inttoptr i64 %.0.copyload.i14.i.i.i.i.i.us82.i to ptr
  br i1 %i.bnj, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.bnm = icmp ult i32 %i.bnh, 13
  br i1 %i.bnm, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us85.i, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.bnn = and i64 %.0.copyload.i.i.i.i.i.i.us78.i, 4294967295
  %bcmp.i.i.i.i.i.us83.i = call i32 @bcmp(ptr %i.bnk, ptr %i.bnl, i64 %i.bnn)
  %i.bno = icmp eq i32 %bcmp.i.i.i.i.i.us83.i, 0
  br i1 %i.bno, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us85.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i: ; preds = %bb.sr, %bb.sp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us77.i
  %i.bnp = add nuw i64 %.03572.us76.i, 1          ; 2 uses
  %exitcond.not.i783 = icmp eq i64 %i.bnp, %3
  br i1 %exitcond.not.i783, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us86.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us77.i, !llvm.loop !214

_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us85.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762, %bb.sq, %bb.sr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us, %bb.st, %bb.su
  store i8 1, ptr %i.bmj, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us86.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us86.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i.us, %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us85.i, %bb.so, %.lr.ph75.split.us.split.i
  %i.bnq = add nuw i64 %.03673.us.i, 1            ; 2 uses
  %exitcond123.not.i = icmp eq i64 %i.bnq, %2
  br i1 %exitcond123.not.i, label %._crit_edge.i763, label %.lr.ph75.split.us.split.i, !llvm.loop !213

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760: ; preds = %bb.so, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758
  %i.bnr = load ptr, ptr %i.bkp, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i761 = icmp eq ptr %i.bnr, null
  %i.bns = getelementptr inbounds nuw [16 x i8], ptr %i.bkj, i64 %i.bmq ; 3 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 8 ; 2 uses
  br i1 %.not.i59.us.i761, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us77.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us77.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us77.i.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i.us
  %.03572.us76.i.us = phi i64 [ %i.boj, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i.us ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760 ] ; 4 uses
  %i.bnu = lshr i64 %.03572.us76.i.us, 6
  %i.bnv = and i64 %.03572.us76.i.us, 63
  %i.bnw = getelementptr inbounds nuw [8 x i8], ptr %.fr114.i, i64 %i.bnu
  %i.bnx = load i64, ptr %i.bnw, align 8, !tbaa !7
  %i.bny = shl nuw i64 1, %i.bnv
  %i.bnz = and i64 %i.bny, %i.bnx
  %.not71.us.i.us = icmp eq i64 %i.bnz, 0
  br i1 %.not71.us.i.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us77.i.us
  %i.boa = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %.03572.us76.i.us ; 2 uses
  %.0.copyload.i.i.i.i.i.i.us78.i.us = load i64, ptr %i.bns, align 1 ; 3 uses
  %.0.copyload.i12.i.i.i.i.i.us79.i.us = load i64, ptr %i.boa, align 1
  %.not.i.i.i.i.i64.us80.i.us = icmp eq i64 %.0.copyload.i.i.i.i.i.i.us78.i.us, %.0.copyload.i12.i.i.i.i.i.us79.i.us
  %i.bob = trunc i64 %.0.copyload.i.i.i.i.i.i.us78.i.us to i32
  br i1 %.not.i.i.i.i.i64.us80.i.us, label %bb.ss, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us85.i

bb.ss:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us
  %.0.copyload.i13.i.i.i.i.i.us81.i.us = load i64, ptr %i.bnt, align 1 ; 2 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %i.boa, i64 8
  %.0.copyload.i14.i.i.i.i.i.us82.i.us = load i64, ptr %i.boc, align 1 ; 2 uses
  %i.bod = icmp eq i64 %.0.copyload.i13.i.i.i.i.i.us81.i.us, %.0.copyload.i14.i.i.i.i.i.us82.i.us
  %i.boe = inttoptr i64 %.0.copyload.i13.i.i.i.i.i.us81.i.us to ptr
  %i.bof = inttoptr i64 %.0.copyload.i14.i.i.i.i.i.us82.i.us to ptr
  br i1 %i.bod, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i.us, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.bog = icmp ult i32 %i.bob, 13
  br i1 %i.bog, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us85.i, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.boh = and i64 %.0.copyload.i.i.i.i.i.i.us78.i.us, 4294967295
  %bcmp.i.i.i.i.i.us83.i.us = call i32 @bcmp(ptr %i.boe, ptr %i.bof, i64 %i.boh)
  %i.boi = icmp eq i32 %bcmp.i.i.i.i.i.us83.i.us, 0
  br i1 %i.boi, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i.us, label %_ZN6duckdb26ComparisonOperationWrapperINS_9NotEqualsEE9OperationINS_8string_tEEEbRKT_S7_bb.exit.split.us85.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us85.i.us: ; preds = %bb.su, %bb.ss, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us77.i.us
  %i.boj = add nuw i64 %.03572.us76.i.us, 1       ; 2 uses
  %exitcond.not.i783.us = icmp eq i64 %i.boj, %3
  br i1 %exitcond.not.i783.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us86.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us77.i.us, !llvm.loop !214

._crit_edge.i763:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us86.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i789, %.lr.ph75.i, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit47.i
  %i.bok = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bol = load ptr, ptr %i.bok, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i764 = icmp eq ptr %i.bol, null
  br i1 %.not.i.i.i.i.i.i764, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768, label %bb.sv

bb.sv:                                            ; preds = %._crit_edge.i763
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bol, i64 8 ; 4 uses
  %i.bon = load atomic i64, ptr %i.bom acquire, align 8 ; 2 uses
  %i.boo = icmp eq i64 %i.bon, 4294967297
  %i.bop = trunc i64 %i.bon to i32                ; 2 uses
  br i1 %i.boo, label %bb.sw, label %bb.sx

bb.sw:                                            ; preds = %bb.sv
  store i32 0, ptr %i.bom, align 8, !tbaa !78
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bol, i64 12
  store i32 0, ptr %i.boq, align 4, !tbaa !80
  %i.bor = load ptr, ptr %i.bol, align 8, !tbaa !81
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 16
  %i.bot = load ptr, ptr %i.bos, align 8
  call void %i.bot(ptr noundef nonnull align 8 dereferenceable(16) %i.bol) #17, !inline_history !215
  %i.bou = load ptr, ptr %i.bol, align 8, !tbaa !81
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bou, i64 24
  %i.bow = load ptr, ptr %i.bov, align 8
  call void %i.bow(ptr noundef nonnull align 8 dereferenceable(16) %i.bol) #17, !inline_history !215
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768

bb.sx:                                            ; preds = %bb.sv
  %i.box = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i765 = icmp eq i8 %i.box, 0
  br i1 %.not.i.i.i.i.i.i.i765, label %bb.sz, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.boy = add nsw i32 %i.bop, -1
  store i32 %i.boy, ptr %i.bom, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766

bb.sz:                                            ; preds = %bb.sx
  %i.boz = atomicrmw volatile add ptr %i.bom, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766: ; preds = %bb.sz, %bb.sy
  %.0.i.i.i.i.i.i.i.i767 = phi i32 [ %i.bop, %bb.sy ], [ %i.boz, %bb.sz ]
  %i.bpa = icmp eq i32 %.0.i.i.i.i.i.i.i.i767, 1
  br i1 %i.bpa, label %bb.ta, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768, !prof !84

bb.ta:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bol) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768:      ; preds = %bb.ta, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766, %bb.sw, %._crit_edge.i763
  %i.bpb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i769 = icmp eq ptr %i.bpc, null
  br i1 %.not.i.i.i.i1.i.i769, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773, label %bb.tb

bb.tb:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 8 ; 4 uses
  %i.bpe = load atomic i64, ptr %i.bpd acquire, align 8 ; 2 uses
  %i.bpf = icmp eq i64 %i.bpe, 4294967297
  %i.bpg = trunc i64 %i.bpe to i32                ; 2 uses
  br i1 %i.bpf, label %bb.tc, label %bb.td

bb.tc:                                            ; preds = %bb.tb
  store i32 0, ptr %i.bpd, align 8, !tbaa !78
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpc, i64 12
  store i32 0, ptr %i.bph, align 4, !tbaa !80
  %i.bpi = load ptr, ptr %i.bpc, align 8, !tbaa !81
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 16
  %i.bpk = load ptr, ptr %i.bpj, align 8
  call void %i.bpk(ptr noundef nonnull align 8 dereferenceable(16) %i.bpc) #17, !inline_history !216
  %i.bpl = load ptr, ptr %i.bpc, align 8, !tbaa !81
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpl, i64 24
  %i.bpn = load ptr, ptr %i.bpm, align 8
  call void %i.bpn(ptr noundef nonnull align 8 dereferenceable(16) %i.bpc) #17, !inline_history !216
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773

bb.td:                                            ; preds = %bb.tb
  %i.bpo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i770 = icmp eq i8 %i.bpo, 0
  br i1 %.not.i.i.i.i.i2.i.i770, label %bb.tf, label %bb.te

bb.te:                                            ; preds = %bb.td
  %i.bpp = add nsw i32 %i.bpg, -1
  store i32 %i.bpp, ptr %i.bpd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771

bb.tf:                                            ; preds = %bb.td
  %i.bpq = atomicrmw volatile add ptr %i.bpd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771: ; preds = %bb.tf, %bb.te
  %.0.i.i.i.i.i.i4.i.i772 = phi i32 [ %i.bpg, %bb.te ], [ %i.bpq, %bb.tf ]
  %i.bpr = icmp eq i32 %.0.i.i.i.i.i.i4.i.i772, 1
  br i1 %i.bpr, label %bb.tg, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773, !prof !84

bb.tg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bpc) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773:    ; preds = %bb.tg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771, %bb.tc, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.bps = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bpt = load ptr, ptr %i.bps, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i774 = icmp eq ptr %i.bpt, null
  br i1 %.not.i.i.i.i.i48.i774, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778, label %bb.th

bb.th:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 8 ; 4 uses
  %i.bpv = load atomic i64, ptr %i.bpu acquire, align 8 ; 2 uses
  %i.bpw = icmp eq i64 %i.bpv, 4294967297
  %i.bpx = trunc i64 %i.bpv to i32                ; 2 uses
  br i1 %i.bpw, label %bb.ti, label %bb.tj

bb.ti:                                            ; preds = %bb.th
  store i32 0, ptr %i.bpu, align 8, !tbaa !78
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpt, i64 12
  store i32 0, ptr %i.bpy, align 4, !tbaa !80
  %i.bpz = load ptr, ptr %i.bpt, align 8, !tbaa !81
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 16
  %i.bqb = load ptr, ptr %i.bqa, align 8
  call void %i.bqb(ptr noundef nonnull align 8 dereferenceable(16) %i.bpt) #17, !inline_history !215
  %i.bqc = load ptr, ptr %i.bpt, align 8, !tbaa !81
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bqc, i64 24
  %i.bqe = load ptr, ptr %i.bqd, align 8
  call void %i.bqe(ptr noundef nonnull align 8 dereferenceable(16) %i.bpt) #17, !inline_history !215
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778

bb.tj:                                            ; preds = %bb.th
  %i.bqf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i775 = icmp eq i8 %i.bqf, 0
  br i1 %.not.i.i.i.i.i.i49.i775, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.bqg = add nsw i32 %i.bpx, -1
  store i32 %i.bqg, ptr %i.bpu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776

bb.tl:                                            ; preds = %bb.tj
  %i.bqh = atomicrmw volatile add ptr %i.bpu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776: ; preds = %bb.tl, %bb.tk
  %.0.i.i.i.i.i.i.i51.i777 = phi i32 [ %i.bpx, %bb.tk ], [ %i.bqh, %bb.tl ]
  %i.bqi = icmp eq i32 %.0.i.i.i.i.i.i.i51.i777, 1
  br i1 %i.bqi, label %bb.tm, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778, !prof !84

bb.tm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bpt) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778:    ; preds = %bb.tm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776, %bb.ti, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773
  %i.bqj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bqk = load ptr, ptr %i.bqj, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i779 = icmp eq ptr %i.bqk, null
  br i1 %.not.i.i.i.i1.i53.i779, label %_ZN6duckdbL17TemplatedMarkJoinINS_8string_tENS_9NotEqualsEEEvRNS_6VectorES4_mmPb.exit, label %bb.tn

bb.tn:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqk, i64 8 ; 4 uses
  %i.bqm = load atomic i64, ptr %i.bql acquire, align 8 ; 2 uses
  %i.bqn = icmp eq i64 %i.bqm, 4294967297
  %i.bqo = trunc i64 %i.bqm to i32                ; 2 uses
  br i1 %i.bqn, label %bb.to, label %bb.tp

bb.to:                                            ; preds = %bb.tn
  store i32 0, ptr %i.bql, align 8, !tbaa !78
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqk, i64 12
  store i32 0, ptr %i.bqp, align 4, !tbaa !80
  %i.bqq = load ptr, ptr %i.bqk, align 8, !tbaa !81
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 16
  %i.bqs = load ptr, ptr %i.bqr, align 8
  call void %i.bqs(ptr noundef nonnull align 8 dereferenceable(16) %i.bqk) #17, !inline_history !216
  %i.bqt = load ptr, ptr %i.bqk, align 8, !tbaa !81
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 24
  %i.bqv = load ptr, ptr %i.bqu, align 8
  call void %i.bqv(ptr noundef nonnull align 8 dereferenceable(16) %i.bqk) #17, !inline_history !216
  br label %_ZN6duckdbL17TemplatedMarkJoinINS_8string_tENS_9NotEqualsEEEvRNS_6VectorES4_mmPb.exit

bb.tp:                                            ; preds = %bb.tn
  %i.bqw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i780 = icmp eq i8 %i.bqw, 0
  br i1 %.not.i.i.i.i.i2.i54.i780, label %bb.tr, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.bqx = add nsw i32 %i.bqo, -1
  store i32 %i.bqx, ptr %i.bql, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i781

bb.tr:                                            ; preds = %bb.tp
  %i.bqy = atomicrmw volatile add ptr %i.bql, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i781

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i781: ; preds = %bb.tr, %bb.tq
  %.0.i.i.i.i.i.i4.i56.i782 = phi i32 [ %i.bqo, %bb.tq ], [ %i.bqy, %bb.tr ]
end_hunk_2
begin_hunk_3_@_ZN6duckdbL14MarkJoinSwitchINS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb:bb.a

bb.ew:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i257
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.up) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259:    ; preds = %bb.ew, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i257, %bb.es, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i254
  %i.vf = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i260 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i.i1.i53.i260, label %_ZN6duckdbL17TemplatedMarkJoinIlNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 4 uses
  %i.vi = load atomic i64, ptr %i.vh acquire, align 8 ; 2 uses
  %i.vj = icmp eq i64 %i.vi, 4294967297
  %i.vk = trunc i64 %i.vi to i32                  ; 2 uses
  br i1 %i.vj, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  store i32 0, ptr %i.vh, align 8, !tbaa !78
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 12
  store i32 0, ptr %i.vl, align 4, !tbaa !80
  %i.vm = load ptr, ptr %i.vg, align 8, !tbaa !81
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #17, !inline_history !336
  %i.vp = load ptr, ptr %i.vg, align 8, !tbaa !81
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vr = load ptr, ptr %i.vq, align 8
  call void %i.vr(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #17, !inline_history !336
  br label %_ZN6duckdbL17TemplatedMarkJoinIlNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.ez:                                            ; preds = %bb.ex
  %i.vs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i261 = icmp eq i8 %i.vs, 0
  br i1 %.not.i.i.i.i.i2.i54.i261, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vt = add nsw i32 %i.vk, -1
  store i32 %i.vt, ptr %i.vh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262

bb.fb:                                            ; preds = %bb.ez
  %i.vu = atomicrmw volatile add ptr %i.vh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262: ; preds = %bb.fb, %bb.fa
  %.0.i.i.i.i.i.i4.i56.i263 = phi i32 [ %i.vk, %bb.fa ], [ %i.vu, %bb.fb ]
  %i.vv = icmp eq i32 %.0.i.i.i.i.i.i4.i56.i263, 1
  br i1 %i.vv, label %bb.fc, label %_ZN6duckdbL17TemplatedMarkJoinIlNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit, !prof !84

bb.fc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #17
  br label %_ZN6duckdbL17TemplatedMarkJoinIlNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.fd:                                            ; preds = %bb.du
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fe:                                            ; preds = %bb.dw, %bb.dv
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.ff:                                            ; preds = %bb.dx
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fg:                                            ; preds = %bb.dy
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fe
  %.pn.pn.pn.pn.pn.pn.i220 = phi { ptr, i32 } [ %i.vx, %bb.fe ], [ %i.vy, %bb.ff ], [ %i.vz, %bb.fg ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %24) #17
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fd
  %.pn.pn.pn.pn.pn.pn.pn.i219 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i220, %bb.fh ], [ %i.vw, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %common.resume

_ZN6duckdbL17TemplatedMarkJoinIlNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259, %bb.ey, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %bb.ub

bb.fj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.fk unwind label %bb.gs

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %21)
          to label %bb.fl unwind label %bb.gt

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.fm unwind label %bb.gt

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_9hugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %21)
          to label %bb.fn unwind label %bb.gu

bb.fn:                                            ; preds = %bb.fm
  %i.wa = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !95
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_9hugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i unwind label %bb.gv

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i: ; preds = %bb.fn
  %i.wc = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !95
  %.not.i295 = icmp eq i64 %2, 0
  br i1 %.not.i295, label %._crit_edge.i302, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i
  %i.we = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.not76.i = icmp eq i64 %3, 0
  %i.wf = getelementptr inbounds nuw i8, ptr %22, i64 16
  br i1 %.not76.i, label %._crit_edge.i302, label %.lr.ph71.split.us.i

.lr.ph71.split.us.i:                              ; preds = %.lr.ph71.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i
  %.03669.us.i = phi i64 [ %i.xm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i ], [ 0, %.lr.ph71.i ] ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %4, i64 %.03669.us.i ; 2 uses
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !72, !range !74, !noundef !75
  %i.wi = trunc nuw i8 %i.wh to i1
  br i1 %i.wi, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, label %bb.fo

bb.fo:                                            ; preds = %.lr.ph71.split.us.i
  %i.wj = load ptr, ptr %21, align 8, !tbaa !127
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i296 = icmp eq ptr %i.wk, null
  br i1 %.not.i.us.i296, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %.03669.us.i
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !3
  %i.wn = zext i32 %i.wm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297: ; preds = %bb.fp, %bb.fo
  %i.wo = phi i64 [ %i.wn, %bb.fp ], [ %.03669.us.i, %bb.fo ] ; 3 uses
  %i.wp = load ptr, ptr %i.we, align 8, !tbaa !128 ; 2 uses
  %.not.i58.us.i = icmp eq ptr %i.wp, null
  br i1 %.not.i58.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299, label %bb.fq

bb.fq:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297
  %i.wq = lshr i64 %i.wo, 6
  %i.wr = and i64 %i.wo, 63
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.wq
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !7
  %i.wu = shl nuw i64 1, %i.wr
  %i.wv = and i64 %i.wt, %i.wu
  %.not.us.i298 = icmp eq i64 %i.wv, 0
  br i1 %.not.us.i298, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299

bb.fr:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i
  %.03568.us.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299 ], [ %i.xl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i ] ; 3 uses
  %i.ww = load ptr, ptr %22, align 8, !tbaa !127
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i300 = icmp eq ptr %i.wx, null
  br i1 %.not.i59.us.i300, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %.03568.us.i
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !3
  %i.xa = zext i32 %i.wz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i: ; preds = %bb.fs, %bb.fr
  %i.xb = phi i64 [ %i.xa, %bb.fs ], [ %.03568.us.i, %bb.fr ] ; 3 uses
  %i.xc = load ptr, ptr %i.wf, align 8, !tbaa !128 ; 2 uses
  %.not.i61.us.i = icmp eq ptr %i.xc, null
  br i1 %.not.i61.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i
  %i.xd = lshr i64 %i.xb, 6
  %i.xe = and i64 %i.xb, 63
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.xd
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !7
  %i.xh = shl nuw i64 1, %i.xe
  %i.xi = and i64 %i.xg, %i.xh
  %.not67.us.i = icmp eq i64 %i.xi, 0
  br i1 %.not67.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %i.wd, i64 %i.xb
  %i.xk = invoke noundef zeroext i1 @_ZNK6duckdb9hugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.xn, ptr noundef nonnull align 8 dereferenceable(16) %i.xj)
          to label %bb.ft unwind label %.split.us.i

bb.ft:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301
  br i1 %i.xk, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i, label %33

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i: ; preds = %bb.ft, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i
  %i.xl = add nuw i64 %.03568.us.i, 1             ; 2 uses
  %exitcond.not.i322 = icmp eq i64 %i.xl, %3
  br i1 %exitcond.not.i322, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, label %bb.fr, !llvm.loop !337

33:                                               ; preds = %bb.ft
  store i8 1, ptr %i.wg, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i, %33, %bb.fq, %.lr.ph71.split.us.i
  %i.xm = add nuw i64 %.03669.us.i, 1             ; 2 uses
  %exitcond79.not.i = icmp eq i64 %i.xm, %2
  br i1 %exitcond79.not.i, label %._crit_edge.i302, label %.lr.ph71.split.us.i, !llvm.loop !338

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299: ; preds = %bb.fq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297
  %i.xn = getelementptr inbounds nuw [16 x i8], ptr %i.wb, i64 %i.wo
  br label %bb.fr

.split.us.i:                                      ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

._crit_edge.i302:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, %.lr.ph71.i, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i
  %i.xp = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i303 = icmp eq ptr %i.xq, null
  br i1 %.not.i.i.i.i.i.i303, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307, label %bb.fu

bb.fu:                                            ; preds = %._crit_edge.i302
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8 ; 4 uses
  %i.xs = load atomic i64, ptr %i.xr acquire, align 8 ; 2 uses
  %i.xt = icmp eq i64 %i.xs, 4294967297
  %i.xu = trunc i64 %i.xs to i32                  ; 2 uses
  br i1 %i.xt, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 0, ptr %i.xr, align 8, !tbaa !78
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 12
  store i32 0, ptr %i.xv, align 4, !tbaa !80
  %i.xw = load ptr, ptr %i.xq, align 8, !tbaa !81
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  %i.xy = load ptr, ptr %i.xx, align 8
  call void %i.xy(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #17, !inline_history !339
  %i.xz = load ptr, ptr %i.xq, align 8, !tbaa !81
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8
  call void %i.yb(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #17, !inline_history !339
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307

bb.fw:                                            ; preds = %bb.fu
  %i.yc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i304 = icmp eq i8 %i.yc, 0
  br i1 %.not.i.i.i.i.i.i.i304, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.yd = add nsw i32 %i.xu, -1
  store i32 %i.yd, ptr %i.xr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305

bb.fy:                                            ; preds = %bb.fw
  %i.ye = atomicrmw volatile add ptr %i.xr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i.i.i306 = phi i32 [ %i.xu, %bb.fx ], [ %i.ye, %bb.fy ]
  %i.yf = icmp eq i32 %.0.i.i.i.i.i.i.i.i306, 1
  br i1 %i.yf, label %bb.fz, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307, !prof !84

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307:      ; preds = %bb.fz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305, %bb.fv, %._crit_edge.i302
  %i.yg = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i308 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i.i.i1.i.i308, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312, label %bb.ga

bb.ga:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8 ; 4 uses
  %i.yj = load atomic i64, ptr %i.yi acquire, align 8 ; 2 uses
  %i.yk = icmp eq i64 %i.yj, 4294967297
  %i.yl = trunc i64 %i.yj to i32                  ; 2 uses
  br i1 %i.yk, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  store i32 0, ptr %i.yi, align 8, !tbaa !78
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yh, i64 12
  store i32 0, ptr %i.ym, align 4, !tbaa !80
  %i.yn = load ptr, ptr %i.yh, align 8, !tbaa !81
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yp = load ptr, ptr %i.yo, align 8
  call void %i.yp(ptr noundef nonnull align 8 dereferenceable(16) %i.yh) #17, !inline_history !340
  %i.yq = load ptr, ptr %i.yh, align 8, !tbaa !81
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  %i.ys = load ptr, ptr %i.yr, align 8
  call void %i.ys(ptr noundef nonnull align 8 dereferenceable(16) %i.yh) #17, !inline_history !340
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312

bb.gc:                                            ; preds = %bb.ga
  %i.yt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i309 = icmp eq i8 %i.yt, 0
  br i1 %.not.i.i.i.i.i2.i.i309, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.yu = add nsw i32 %i.yl, -1
  store i32 %i.yu, ptr %i.yi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310

bb.ge:                                            ; preds = %bb.gc
  %i.yv = atomicrmw volatile add ptr %i.yi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310: ; preds = %bb.ge, %bb.gd
  %.0.i.i.i.i.i.i4.i.i311 = phi i32 [ %i.yl, %bb.gd ], [ %i.yv, %bb.ge ]
  %i.yw = icmp eq i32 %.0.i.i.i.i.i.i4.i.i311, 1
  br i1 %i.yw, label %bb.gf, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312, !prof !84

bb.gf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yh) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312:    ; preds = %bb.gf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310, %bb.gb, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  %i.yx = getelementptr inbounds nuw i8, ptr %21, i64 64
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i313 = icmp eq ptr %i.yy, null
  br i1 %.not.i.i.i.i.i48.i313, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317, label %bb.gg

bb.gg:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8 ; 4 uses
  %i.za = load atomic i64, ptr %i.yz acquire, align 8 ; 2 uses
  %i.zb = icmp eq i64 %i.za, 4294967297
  %i.zc = trunc i64 %i.za to i32                  ; 2 uses
  br i1 %i.zb, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  store i32 0, ptr %i.yz, align 8, !tbaa !78
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yy, i64 12
  store i32 0, ptr %i.zd, align 4, !tbaa !80
  %i.ze = load ptr, ptr %i.yy, align 8, !tbaa !81
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8
  call void %i.zg(ptr noundef nonnull align 8 dereferenceable(16) %i.yy) #17, !inline_history !339
  %i.zh = load ptr, ptr %i.yy, align 8, !tbaa !81
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  %i.zj = load ptr, ptr %i.zi, align 8
  call void %i.zj(ptr noundef nonnull align 8 dereferenceable(16) %i.yy) #17, !inline_history !339
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317

bb.gi:                                            ; preds = %bb.gg
  %i.zk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i314 = icmp eq i8 %i.zk, 0
  br i1 %.not.i.i.i.i.i.i49.i314, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.zl = add nsw i32 %i.zc, -1
  store i32 %i.zl, ptr %i.yz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315

bb.gk:                                            ; preds = %bb.gi
  %i.zm = atomicrmw volatile add ptr %i.yz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315: ; preds = %bb.gk, %bb.gj
  %.0.i.i.i.i.i.i.i51.i316 = phi i32 [ %i.zc, %bb.gj ], [ %i.zm, %bb.gk ]
  %i.zn = icmp eq i32 %.0.i.i.i.i.i.i.i51.i316, 1
  br i1 %i.zn, label %bb.gl, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317, !prof !84

bb.gl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yy) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317:    ; preds = %bb.gl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315, %bb.gh, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312
  %i.zo = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i318 = icmp eq ptr %i.zp, null
  br i1 %.not.i.i.i.i1.i53.i318, label %_ZN6duckdbL17TemplatedMarkJoinINS_9hugeint_tENS_14LessThanEqualsEEEvRNS_6VectorES4_mmPb.exit, label %bb.gm

bb.gm:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 8 ; 4 uses
  %i.zr = load atomic i64, ptr %i.zq acquire, align 8 ; 2 uses
  %i.zs = icmp eq i64 %i.zr, 4294967297
  %i.zt = trunc i64 %i.zr to i32                  ; 2 uses
  br i1 %i.zs, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  store i32 0, ptr %i.zq, align 8, !tbaa !78
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zp, i64 12
  store i32 0, ptr %i.zu, align 4, !tbaa !80
  %i.zv = load ptr, ptr %i.zp, align 8, !tbaa !81
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.zx = load ptr, ptr %i.zw, align 8
  call void %i.zx(ptr noundef nonnull align 8 dereferenceable(16) %i.zp) #17, !inline_history !340
  %i.zy = load ptr, ptr %i.zp, align 8, !tbaa !81
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 24
  %i.aaa = load ptr, ptr %i.zz, align 8
  call void %i.aaa(ptr noundef nonnull align 8 dereferenceable(16) %i.zp) #17, !inline_history !340
  br label %_ZN6duckdbL17TemplatedMarkJoinINS_9hugeint_tENS_14LessThanEqualsEEEvRNS_6VectorES4_mmPb.exit

bb.go:                                            ; preds = %bb.gm
  %i.aab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i319 = icmp eq i8 %i.aab, 0
  br i1 %.not.i.i.i.i.i2.i54.i319, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aac = add nsw i32 %i.zt, -1
  store i32 %i.aac, ptr %i.zq, align 8, !tbaa !3
end_hunk_3
begin_hunk_4_@_ZN6duckdbL14MarkJoinSwitchINS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb:bb.a

bb.mt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i583
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avw) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585:    ; preds = %bb.mt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i583, %bb.mp, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i580
  %i.awm = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i586 = icmp eq ptr %i.awn, null
  br i1 %.not.i.i.i.i1.i53.i586, label %_ZN6duckdbL17TemplatedMarkJoinImNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit, label %bb.mu

bb.mu:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 8 ; 4 uses
  %i.awp = load atomic i64, ptr %i.awo acquire, align 8 ; 2 uses
  %i.awq = icmp eq i64 %i.awp, 4294967297
  %i.awr = trunc i64 %i.awp to i32                ; 2 uses
  br i1 %i.awq, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  store i32 0, ptr %i.awo, align 8, !tbaa !78
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awn, i64 12
  store i32 0, ptr %i.aws, align 4, !tbaa !80
  %i.awt = load ptr, ptr %i.awn, align 8, !tbaa !81
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.awv = load ptr, ptr %i.awu, align 8
  call void %i.awv(ptr noundef nonnull align 8 dereferenceable(16) %i.awn) #17, !inline_history !356
  %i.aww = load ptr, ptr %i.awn, align 8, !tbaa !81
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 24
  %i.awy = load ptr, ptr %i.awx, align 8
  call void %i.awy(ptr noundef nonnull align 8 dereferenceable(16) %i.awn) #17, !inline_history !356
  br label %_ZN6duckdbL17TemplatedMarkJoinImNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.mw:                                            ; preds = %bb.mu
  %i.awz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i587 = icmp eq i8 %i.awz, 0
  br i1 %.not.i.i.i.i.i2.i54.i587, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.axa = add nsw i32 %i.awr, -1
  store i32 %i.axa, ptr %i.awo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588

bb.my:                                            ; preds = %bb.mw
  %i.axb = atomicrmw volatile add ptr %i.awo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588: ; preds = %bb.my, %bb.mx
  %.0.i.i.i.i.i.i4.i56.i589 = phi i32 [ %i.awr, %bb.mx ], [ %i.axb, %bb.my ]
  %i.axc = icmp eq i32 %.0.i.i.i.i.i.i4.i56.i589, 1
  br i1 %i.axc, label %bb.mz, label %_ZN6duckdbL17TemplatedMarkJoinImNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit, !prof !84

bb.mz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awn) #17
  br label %_ZN6duckdbL17TemplatedMarkJoinImNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.na:                                            ; preds = %bb.lr
  %i.axd = landingpad { ptr, i32 }
          cleanup
  br label %bb.nf

bb.nb:                                            ; preds = %bb.lt, %bb.ls
  %i.axe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.nc:                                            ; preds = %bb.lu
  %i.axf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.nd:                                            ; preds = %bb.lv
  %i.axg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc, %bb.nb
  %.pn.pn.pn.pn.pn.pn.i546 = phi { ptr, i32 } [ %i.axe, %bb.nb ], [ %i.axf, %bb.nc ], [ %i.axg, %bb.nd ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %14) #17
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.na
  %.pn.pn.pn.pn.pn.pn.pn.i545 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i546, %bb.ne ], [ %i.axd, %bb.na ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %common.resume

_ZN6duckdbL17TemplatedMarkJoinImNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585, %bb.mv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588, %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.ub

bb.ng:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.nh unwind label %bb.op

bb.nh:                                            ; preds = %bb.ng
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.ni unwind label %bb.oq

bb.ni:                                            ; preds = %bb.nh
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.nj unwind label %bb.oq

bb.nj:                                            ; preds = %bb.ni
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10uhugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.nk unwind label %bb.or

bb.nk:                                            ; preds = %bb.nj
  %i.axh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !95
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10uhugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i unwind label %bb.os

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i: ; preds = %bb.nk
  %i.axj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !95
  %.not.i621 = icmp eq i64 %2, 0
  br i1 %.not.i621, label %._crit_edge.i641, label %.lr.ph71.i622

.lr.ph71.i622:                                    ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i
  %i.axl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.not76.i623 = icmp eq i64 %3, 0
  %i.axm = getelementptr inbounds nuw i8, ptr %12, i64 16
  br i1 %.not76.i623, label %._crit_edge.i641, label %.lr.ph71.split.us.i624

.lr.ph71.split.us.i624:                           ; preds = %.lr.ph71.i622, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639
  %.03669.us.i625 = phi i64 [ %i.ayt, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639 ], [ 0, %.lr.ph71.i622 ] ; 4 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %4, i64 %.03669.us.i625 ; 2 uses
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !72, !range !74, !noundef !75
  %i.axp = trunc nuw i8 %i.axo to i1
  br i1 %i.axp, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, label %bb.nl

bb.nl:                                            ; preds = %.lr.ph71.split.us.i624
  %i.axq = load ptr, ptr %11, align 8, !tbaa !127
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i626 = icmp eq ptr %i.axr, null
  br i1 %.not.i.us.i626, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %.03669.us.i625
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !3
  %i.axu = zext i32 %i.axt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627: ; preds = %bb.nm, %bb.nl
  %i.axv = phi i64 [ %i.axu, %bb.nm ], [ %.03669.us.i625, %bb.nl ] ; 3 uses
  %i.axw = load ptr, ptr %i.axl, align 8, !tbaa !128 ; 2 uses
  %.not.i58.us.i628 = icmp eq ptr %i.axw, null
  br i1 %.not.i58.us.i628, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630, label %bb.nn

bb.nn:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627
  %i.axx = lshr i64 %i.axv, 6
  %i.axy = and i64 %i.axv, 63
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr %i.axw, i64 %i.axx
  %i.aya = load i64, ptr %i.axz, align 8, !tbaa !7
  %i.ayb = shl nuw i64 1, %i.axy
  %i.ayc = and i64 %i.aya, %i.ayb
  %.not.us.i629 = icmp eq i64 %i.ayc, 0
  br i1 %.not.us.i629, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630

bb.no:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661
  %.03568.us.i631 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630 ], [ %i.ays, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661 ] ; 3 uses
  %i.ayd = load ptr, ptr %12, align 8, !tbaa !127
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i632 = icmp eq ptr %i.aye, null
  br i1 %.not.i59.us.i632, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %.03568.us.i631
  %i.ayg = load i32, ptr %i.ayf, align 4, !tbaa !3
  %i.ayh = zext i32 %i.ayg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633: ; preds = %bb.np, %bb.no
  %i.ayi = phi i64 [ %i.ayh, %bb.np ], [ %.03568.us.i631, %bb.no ] ; 3 uses
  %i.ayj = load ptr, ptr %i.axm, align 8, !tbaa !128 ; 2 uses
  %.not.i61.us.i634 = icmp eq ptr %i.ayj, null
  br i1 %.not.i61.us.i634, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633
  %i.ayk = lshr i64 %i.ayi, 6
  %i.ayl = and i64 %i.ayi, 63
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr %i.ayj, i64 %i.ayk
  %i.ayn = load i64, ptr %i.aym, align 8, !tbaa !7
  %i.ayo = shl nuw i64 1, %i.ayl
  %i.ayp = and i64 %i.ayn, %i.ayo
  %.not67.us.i636 = icmp eq i64 %i.ayp, 0
  br i1 %.not67.us.i636, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633
  %i.ayq = getelementptr inbounds nuw [16 x i8], ptr %i.axk, i64 %i.ayi
  %i.ayr = invoke noundef zeroext i1 @_ZNK6duckdb10uhugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ayu, ptr noundef nonnull align 8 dereferenceable(16) %i.ayq)
          to label %bb.nq unwind label %.split.us.i638

bb.nq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637
  br i1 %i.ayr, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661, label %34

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661: ; preds = %bb.nq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635
  %i.ays = add nuw i64 %.03568.us.i631, 1         ; 2 uses
  %exitcond.not.i662 = icmp eq i64 %i.ays, %3
  br i1 %exitcond.not.i662, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, label %bb.no, !llvm.loop !357

34:                                               ; preds = %bb.nq
  store i8 1, ptr %i.axn, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661, %34, %bb.nn, %.lr.ph71.split.us.i624
  %i.ayt = add nuw i64 %.03669.us.i625, 1         ; 2 uses
  %exitcond79.not.i640 = icmp eq i64 %i.ayt, %2
  br i1 %exitcond79.not.i640, label %._crit_edge.i641, label %.lr.ph71.split.us.i624, !llvm.loop !358

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630: ; preds = %bb.nn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627
  %i.ayu = getelementptr inbounds nuw [16 x i8], ptr %i.axi, i64 %i.axv
  br label %bb.no

.split.us.i638:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637
  %i.ayv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

._crit_edge.i641:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, %.lr.ph71.i622, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i
  %i.ayw = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i642 = icmp eq ptr %i.ayx, null
  br i1 %.not.i.i.i.i.i.i642, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646, label %bb.nr

bb.nr:                                            ; preds = %._crit_edge.i641
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8 ; 4 uses
  %i.ayz = load atomic i64, ptr %i.ayy acquire, align 8 ; 2 uses
  %i.aza = icmp eq i64 %i.ayz, 4294967297
  %i.azb = trunc i64 %i.ayz to i32                ; 2 uses
  br i1 %i.aza, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %bb.nr
  store i32 0, ptr %i.ayy, align 8, !tbaa !78
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayx, i64 12
  store i32 0, ptr %i.azc, align 4, !tbaa !80
  %i.azd = load ptr, ptr %i.ayx, align 8, !tbaa !81
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 16
  %i.azf = load ptr, ptr %i.aze, align 8
  call void %i.azf(ptr noundef nonnull align 8 dereferenceable(16) %i.ayx) #17, !inline_history !359
  %i.azg = load ptr, ptr %i.ayx, align 8, !tbaa !81
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 24
  %i.azi = load ptr, ptr %i.azh, align 8
  call void %i.azi(ptr noundef nonnull align 8 dereferenceable(16) %i.ayx) #17, !inline_history !359
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646

bb.nt:                                            ; preds = %bb.nr
  %i.azj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i643 = icmp eq i8 %i.azj, 0
  br i1 %.not.i.i.i.i.i.i.i643, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.azk = add nsw i32 %i.azb, -1
  store i32 %i.azk, ptr %i.ayy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644

bb.nv:                                            ; preds = %bb.nt
  %i.azl = atomicrmw volatile add ptr %i.ayy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644: ; preds = %bb.nv, %bb.nu
  %.0.i.i.i.i.i.i.i.i645 = phi i32 [ %i.azb, %bb.nu ], [ %i.azl, %bb.nv ]
  %i.azm = icmp eq i32 %.0.i.i.i.i.i.i.i.i645, 1
  br i1 %i.azm, label %bb.nw, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646, !prof !84

bb.nw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ayx) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646:      ; preds = %bb.nw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644, %bb.ns, %._crit_edge.i641
  %i.azn = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i647 = icmp eq ptr %i.azo, null
  br i1 %.not.i.i.i.i1.i.i647, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651, label %bb.nx

bb.nx:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 8 ; 4 uses
  %i.azq = load atomic i64, ptr %i.azp acquire, align 8 ; 2 uses
  %i.azr = icmp eq i64 %i.azq, 4294967297
  %i.azs = trunc i64 %i.azq to i32                ; 2 uses
  br i1 %i.azr, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  store i32 0, ptr %i.azp, align 8, !tbaa !78
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azo, i64 12
  store i32 0, ptr %i.azt, align 4, !tbaa !80
  %i.azu = load ptr, ptr %i.azo, align 8, !tbaa !81
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 16
  %i.azw = load ptr, ptr %i.azv, align 8
  call void %i.azw(ptr noundef nonnull align 8 dereferenceable(16) %i.azo) #17, !inline_history !360
  %i.azx = load ptr, ptr %i.azo, align 8, !tbaa !81
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 24
  %i.azz = load ptr, ptr %i.azy, align 8
  call void %i.azz(ptr noundef nonnull align 8 dereferenceable(16) %i.azo) #17, !inline_history !360
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651

bb.nz:                                            ; preds = %bb.nx
  %i.baa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i648 = icmp eq i8 %i.baa, 0
  br i1 %.not.i.i.i.i.i2.i.i648, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.bab = add nsw i32 %i.azs, -1
  store i32 %i.bab, ptr %i.azp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649

bb.ob:                                            ; preds = %bb.nz
  %i.bac = atomicrmw volatile add ptr %i.azp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649: ; preds = %bb.ob, %bb.oa
  %.0.i.i.i.i.i.i4.i.i650 = phi i32 [ %i.azs, %bb.oa ], [ %i.bac, %bb.ob ]
  %i.bad = icmp eq i32 %.0.i.i.i.i.i.i4.i.i650, 1
  br i1 %i.bad, label %bb.oc, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651, !prof !84

bb.oc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.azo) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651:    ; preds = %bb.oc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649, %bb.ny, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.bae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i652 = icmp eq ptr %i.baf, null
  br i1 %.not.i.i.i.i.i48.i652, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656, label %bb.od

bb.od:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 8 ; 4 uses
  %i.bah = load atomic i64, ptr %i.bag acquire, align 8 ; 2 uses
  %i.bai = icmp eq i64 %i.bah, 4294967297
  %i.baj = trunc i64 %i.bah to i32                ; 2 uses
  br i1 %i.bai, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  store i32 0, ptr %i.bag, align 8, !tbaa !78
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baf, i64 12
  store i32 0, ptr %i.bak, align 4, !tbaa !80
  %i.bal = load ptr, ptr %i.baf, align 8, !tbaa !81
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 16
  %i.ban = load ptr, ptr %i.bam, align 8
  call void %i.ban(ptr noundef nonnull align 8 dereferenceable(16) %i.baf) #17, !inline_history !359
  %i.bao = load ptr, ptr %i.baf, align 8, !tbaa !81
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 24
  %i.baq = load ptr, ptr %i.bap, align 8
  call void %i.baq(ptr noundef nonnull align 8 dereferenceable(16) %i.baf) #17, !inline_history !359
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656

bb.of:                                            ; preds = %bb.od
  %i.bar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i653 = icmp eq i8 %i.bar, 0
  br i1 %.not.i.i.i.i.i.i49.i653, label %bb.oh, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.bas = add nsw i32 %i.baj, -1
  store i32 %i.bas, ptr %i.bag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654

bb.oh:                                            ; preds = %bb.of
  %i.bat = atomicrmw volatile add ptr %i.bag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654: ; preds = %bb.oh, %bb.og
  %.0.i.i.i.i.i.i.i51.i655 = phi i32 [ %i.baj, %bb.og ], [ %i.bat, %bb.oh ]
  %i.bau = icmp eq i32 %.0.i.i.i.i.i.i.i51.i655, 1
  br i1 %i.bau, label %bb.oi, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656, !prof !84

bb.oi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.baf) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656:    ; preds = %bb.oi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654, %bb.oe, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651
  %i.bav = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i657 = icmp eq ptr %i.baw, null
  br i1 %.not.i.i.i.i1.i53.i657, label %_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_14LessThanEqualsEEEvRNS_6VectorES4_mmPb.exit, label %bb.oj

bb.oj:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 8 ; 4 uses
  %i.bay = load atomic i64, ptr %i.bax acquire, align 8 ; 2 uses
  %i.baz = icmp eq i64 %i.bay, 4294967297
  %i.bba = trunc i64 %i.bay to i32                ; 2 uses
  br i1 %i.baz, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  store i32 0, ptr %i.bax, align 8, !tbaa !78
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baw, i64 12
  store i32 0, ptr %i.bbb, align 4, !tbaa !80
  %i.bbc = load ptr, ptr %i.baw, align 8, !tbaa !81
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 16
  %i.bbe = load ptr, ptr %i.bbd, align 8
  call void %i.bbe(ptr noundef nonnull align 8 dereferenceable(16) %i.baw) #17, !inline_history !360
  %i.bbf = load ptr, ptr %i.baw, align 8, !tbaa !81
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbf, i64 24
  %i.bbh = load ptr, ptr %i.bbg, align 8
  call void %i.bbh(ptr noundef nonnull align 8 dereferenceable(16) %i.baw) #17, !inline_history !360
  br label %_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_14LessThanEqualsEEEvRNS_6VectorES4_mmPb.exit

bb.ol:                                            ; preds = %bb.oj
  %i.bbi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i658 = icmp eq i8 %i.bbi, 0
  br i1 %.not.i.i.i.i.i2.i54.i658, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.bbj = add nsw i32 %i.bba, -1
  store i32 %i.bbj, ptr %i.bax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i659

bb.on:                                            ; preds = %bb.ol
  %i.bbk = atomicrmw volatile add ptr %i.bax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i659

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i659: ; preds = %bb.on, %bb.om
  %.0.i.i.i.i.i.i4.i56.i660 = phi i32 [ %i.bba, %bb.om ], [ %i.bbk, %bb.on ]
  %i.bbl = icmp eq i32 %.0.i.i.i.i.i.i4.i56.i660, 1
  br i1 %i.bbl, label %bb.oo, label %_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_14LessThanEqualsEEEvRNS_6VectorES4_mmPb.exit, !prof !84

bb.oo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i659
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.baw) #17
  br label %_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_14LessThanEqualsEEEvRNS_6VectorES4_mmPb.exit

bb.op:                                            ; preds = %bb.ng
  %i.bbm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ou

bb.oq:                                            ; preds = %bb.ni, %bb.nh
  %i.bbn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.or:                                            ; preds = %bb.nj
  %i.bbo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.os:                                            ; preds = %bb.nk
  %i.bbp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.ot:                                            ; preds = %bb.os, %bb.or, %bb.oq, %.split.us.i638
  %.pn.pn.pn.pn.pn.pn.i620 = phi { ptr, i32 } [ %i.bbn, %bb.oq ], [ %i.bbo, %bb.or ], [ %i.bbp, %bb.os ], [ %i.ayv, %.split.us.i638 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %12) #17
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.op
  %.pn.pn.pn.pn.pn.pn.pn.i619 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i620, %bb.ot ], [ %i.bbm, %bb.op ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %common.resume

_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_14LessThanEqualsEEEvRNS_6VectorES4_mmPb.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656, %bb.ok, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i659, %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ub

bb.ov:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.ow unwind label %bb.qe

bb.ow:                                            ; preds = %bb.ov
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.ox unwind label %bb.qf

bb.ox:                                            ; preds = %bb.ow
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.oy unwind label %bb.qf

bb.oy:                                            ; preds = %bb.ox
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.oz unwind label %bb.qg

bb.oz:                                            ; preds = %bb.oy
  %i.bbq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !95
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataIfEEPKT_RKS0_.exit47.i unwind label %bb.qh

_ZN6duckdb19UnifiedVectorFormat7GetDataIfEEPKT_RKS0_.exit47.i: ; preds = %bb.oz
  %i.bbs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bbt = load ptr, ptr %i.bbs, align 8, !tbaa !95
  %.not.i665 = icmp eq i64 %2, 0
  br i1 %.not.i665, label %._crit_edge.i685, label %.lr.ph71.i666

.lr.ph71.i666:                                    ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataIfEEPKT_RKS0_.exit47.i
  %i.bbu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.not76.i667 = icmp eq i64 %3, 0
  %i.bbv = getelementptr inbounds nuw i8, ptr %10, i64 16
  br i1 %.not76.i667, label %._crit_edge.i685, label %.lr.ph71.split.us.i668

.lr.ph71.split.us.i668:                           ; preds = %.lr.ph71.i666, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683
  %.03669.us.i669 = phi i64 [ %i.bdc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683 ], [ 0, %.lr.ph71.i666 ] ; 4 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %4, i64 %.03669.us.i669 ; 2 uses
  %i.bbx = load i8, ptr %i.bbw, align 1, !tbaa !72, !range !74, !noundef !75
  %i.bby = trunc nuw i8 %i.bbx to i1
  br i1 %i.bby, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683, label %bb.pa

bb.pa:                                            ; preds = %.lr.ph71.split.us.i668
  %i.bbz = load ptr, ptr %9, align 8, !tbaa !127
  %i.bca = load ptr, ptr %i.bbz, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i670 = icmp eq ptr %i.bca, null
  br i1 %.not.i.us.i670, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i671, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bcb = getelementptr inbounds nuw [4 x i8], ptr %i.bca, i64 %.03669.us.i669
  %i.bcc = load i32, ptr %i.bcb, align 4, !tbaa !3
  %i.bcd = zext i32 %i.bcc to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i671

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i671: ; preds = %bb.pb, %bb.pa
  %i.bce = phi i64 [ %i.bcd, %bb.pb ], [ %.03669.us.i669, %bb.pa ] ; 3 uses
  %i.bcf = load ptr, ptr %i.bbu, align 8, !tbaa !128 ; 2 uses
  %.not.i58.us.i672 = icmp eq ptr %i.bcf, null
  br i1 %.not.i58.us.i672, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i674, label %bb.pc

bb.pc:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i671
  %i.bcg = lshr i64 %i.bce, 6
  %i.bch = and i64 %i.bce, 63
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %i.bcf, i64 %i.bcg
  %i.bcj = load i64, ptr %i.bci, align 8, !tbaa !7
  %i.bck = shl nuw i64 1, %i.bch
  %i.bcl = and i64 %i.bcj, %i.bck
  %.not.us.i673 = icmp eq i64 %i.bcl, 0
  br i1 %.not.us.i673, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i674

bb.pd:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i674, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705
  %.03568.us.i675 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i674 ], [ %i.bdb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705 ] ; 3 uses
  %i.bcm = load ptr, ptr %10, align 8, !tbaa !127
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i676 = icmp eq ptr %i.bcn, null
  br i1 %.not.i59.us.i676, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i677, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %i.bcn, i64 %.03568.us.i675
  %i.bcp = load i32, ptr %i.bco, align 4, !tbaa !3
  %i.bcq = zext i32 %i.bcp to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i677

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i677: ; preds = %bb.pe, %bb.pd
  %i.bcr = phi i64 [ %i.bcq, %bb.pe ], [ %.03568.us.i675, %bb.pd ] ; 3 uses
  %i.bcs = load ptr, ptr %i.bbv, align 8, !tbaa !128 ; 2 uses
  %.not.i61.us.i678 = icmp eq ptr %i.bcs, null
  br i1 %.not.i61.us.i678, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i681, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i679

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i679: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i677
  %i.bct = lshr i64 %i.bcr, 6
  %i.bcu = and i64 %i.bcr, 63
  %i.bcv = getelementptr inbounds nuw [8 x i8], ptr %i.bcs, i64 %i.bct
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !7
  %i.bcx = shl nuw i64 1, %i.bcu
  %i.bcy = and i64 %i.bcw, %i.bcx
  %.not67.us.i680 = icmp eq i64 %i.bcy, 0
  br i1 %.not67.us.i680, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i681

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i681: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i679, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i677
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.bbt, i64 %i.bcr
  %i.bda = invoke noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.bdd, ptr noundef nonnull align 4 dereferenceable(4) %i.bcz)
          to label %bb.pf unwind label %.split.us.i682

bb.pf:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i681
  br i1 %i.bda, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705, label %35

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705: ; preds = %bb.pf, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i679
  %i.bdb = add nuw i64 %.03568.us.i675, 1         ; 2 uses
  %exitcond.not.i706 = icmp eq i64 %i.bdb, %3
  br i1 %exitcond.not.i706, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683, label %bb.pd, !llvm.loop !361

35:                                               ; preds = %bb.pf
  store i8 1, ptr %i.bbw, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i705, %35, %bb.pc, %.lr.ph71.split.us.i668
  %i.bdc = add nuw i64 %.03669.us.i669, 1         ; 2 uses
  %exitcond79.not.i684 = icmp eq i64 %i.bdc, %2
  br i1 %exitcond79.not.i684, label %._crit_edge.i685, label %.lr.ph71.split.us.i668, !llvm.loop !362

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i674: ; preds = %bb.pc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i671
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %i.bbr, i64 %i.bce
  br label %bb.pd

.split.us.i682:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i681
  %i.bde = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

._crit_edge.i685:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i683, %.lr.ph71.i666, %_ZN6duckdb19UnifiedVectorFormat7GetDataIfEEPKT_RKS0_.exit47.i
  %i.bdf = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i686 = icmp eq ptr %i.bdg, null
  br i1 %.not.i.i.i.i.i.i686, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690, label %bb.pg

bb.pg:                                            ; preds = %._crit_edge.i685
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 8 ; 4 uses
  %i.bdi = load atomic i64, ptr %i.bdh acquire, align 8 ; 2 uses
  %i.bdj = icmp eq i64 %i.bdi, 4294967297
  %i.bdk = trunc i64 %i.bdi to i32                ; 2 uses
  br i1 %i.bdj, label %bb.ph, label %bb.pi

bb.ph:                                            ; preds = %bb.pg
  store i32 0, ptr %i.bdh, align 8, !tbaa !78
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdg, i64 12
  store i32 0, ptr %i.bdl, align 4, !tbaa !80
  %i.bdm = load ptr, ptr %i.bdg, align 8, !tbaa !81
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 16
  %i.bdo = load ptr, ptr %i.bdn, align 8
  call void %i.bdo(ptr noundef nonnull align 8 dereferenceable(16) %i.bdg) #17, !inline_history !363
  %i.bdp = load ptr, ptr %i.bdg, align 8, !tbaa !81
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 24
  %i.bdr = load ptr, ptr %i.bdq, align 8
  call void %i.bdr(ptr noundef nonnull align 8 dereferenceable(16) %i.bdg) #17, !inline_history !363
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690

bb.pi:                                            ; preds = %bb.pg
  %i.bds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i687 = icmp eq i8 %i.bds, 0
  br i1 %.not.i.i.i.i.i.i.i687, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.bdt = add nsw i32 %i.bdk, -1
  store i32 %i.bdt, ptr %i.bdh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i688

bb.pk:                                            ; preds = %bb.pi
  %i.bdu = atomicrmw volatile add ptr %i.bdh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i688

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i688: ; preds = %bb.pk, %bb.pj
  %.0.i.i.i.i.i.i.i.i689 = phi i32 [ %i.bdk, %bb.pj ], [ %i.bdu, %bb.pk ]
  %i.bdv = icmp eq i32 %.0.i.i.i.i.i.i.i.i689, 1
  br i1 %i.bdv, label %bb.pl, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690, !prof !84

bb.pl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i688
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdg) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690:      ; preds = %bb.pl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i688, %bb.ph, %._crit_edge.i685
  %i.bdw = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i691 = icmp eq ptr %i.bdx, null
  br i1 %.not.i.i.i.i1.i.i691, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695, label %bb.pm

bb.pm:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 8 ; 4 uses
  %i.bdz = load atomic i64, ptr %i.bdy acquire, align 8 ; 2 uses
  %i.bea = icmp eq i64 %i.bdz, 4294967297
  %i.beb = trunc i64 %i.bdz to i32                ; 2 uses
  br i1 %i.bea, label %bb.pn, label %bb.po

bb.pn:                                            ; preds = %bb.pm
  store i32 0, ptr %i.bdy, align 8, !tbaa !78
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bdx, i64 12
  store i32 0, ptr %i.bec, align 4, !tbaa !80
  %i.bed = load ptr, ptr %i.bdx, align 8, !tbaa !81
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 16
  %i.bef = load ptr, ptr %i.bee, align 8
  call void %i.bef(ptr noundef nonnull align 8 dereferenceable(16) %i.bdx) #17, !inline_history !364
  %i.beg = load ptr, ptr %i.bdx, align 8, !tbaa !81
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 24
  %i.bei = load ptr, ptr %i.beh, align 8
  call void %i.bei(ptr noundef nonnull align 8 dereferenceable(16) %i.bdx) #17, !inline_history !364
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695

bb.po:                                            ; preds = %bb.pm
  %i.bej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i692 = icmp eq i8 %i.bej, 0
  br i1 %.not.i.i.i.i.i2.i.i692, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.bek = add nsw i32 %i.beb, -1
  store i32 %i.bek, ptr %i.bdy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i693

bb.pq:                                            ; preds = %bb.po
  %i.bel = atomicrmw volatile add ptr %i.bdy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i693

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i693: ; preds = %bb.pq, %bb.pp
  %.0.i.i.i.i.i.i4.i.i694 = phi i32 [ %i.beb, %bb.pp ], [ %i.bel, %bb.pq ]
  %i.bem = icmp eq i32 %.0.i.i.i.i.i.i4.i.i694, 1
  br i1 %i.bem, label %bb.pr, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695, !prof !84

bb.pr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i693
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdx) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695:    ; preds = %bb.pr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i693, %bb.pn, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i690
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.ben = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i696 = icmp eq ptr %i.beo, null
  br i1 %.not.i.i.i.i.i48.i696, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700, label %bb.ps

bb.ps:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 8 ; 4 uses
  %i.beq = load atomic i64, ptr %i.bep acquire, align 8 ; 2 uses
  %i.ber = icmp eq i64 %i.beq, 4294967297
  %i.bes = trunc i64 %i.beq to i32                ; 2 uses
  br i1 %i.ber, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps
  store i32 0, ptr %i.bep, align 8, !tbaa !78
  %i.bet = getelementptr inbounds nuw i8, ptr %i.beo, i64 12
  store i32 0, ptr %i.bet, align 4, !tbaa !80
  %i.beu = load ptr, ptr %i.beo, align 8, !tbaa !81
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 16
  %i.bew = load ptr, ptr %i.bev, align 8
  call void %i.bew(ptr noundef nonnull align 8 dereferenceable(16) %i.beo) #17, !inline_history !363
  %i.bex = load ptr, ptr %i.beo, align 8, !tbaa !81
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 24
  %i.bez = load ptr, ptr %i.bey, align 8
  call void %i.bez(ptr noundef nonnull align 8 dereferenceable(16) %i.beo) #17, !inline_history !363
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700

bb.pu:                                            ; preds = %bb.ps
  %i.bfa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i697 = icmp eq i8 %i.bfa, 0
  br i1 %.not.i.i.i.i.i.i49.i697, label %bb.pw, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.bfb = add nsw i32 %i.bes, -1
  store i32 %i.bfb, ptr %i.bep, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i698

bb.pw:                                            ; preds = %bb.pu
  %i.bfc = atomicrmw volatile add ptr %i.bep, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i698

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i698: ; preds = %bb.pw, %bb.pv
  %.0.i.i.i.i.i.i.i51.i699 = phi i32 [ %i.bes, %bb.pv ], [ %i.bfc, %bb.pw ]
  %i.bfd = icmp eq i32 %.0.i.i.i.i.i.i.i51.i699, 1
  br i1 %i.bfd, label %bb.px, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700, !prof !84

bb.px:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i698
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.beo) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700:    ; preds = %bb.px, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i698, %bb.pt, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i695
  %i.bfe = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i701 = icmp eq ptr %i.bff, null
  br i1 %.not.i.i.i.i1.i53.i701, label %_ZN6duckdbL17TemplatedMarkJoinIfNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit, label %bb.py

bb.py:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 8 ; 4 uses
  %i.bfh = load atomic i64, ptr %i.bfg acquire, align 8 ; 2 uses
  %i.bfi = icmp eq i64 %i.bfh, 4294967297
  %i.bfj = trunc i64 %i.bfh to i32                ; 2 uses
  br i1 %i.bfi, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %bb.py
  store i32 0, ptr %i.bfg, align 8, !tbaa !78
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bff, i64 12
  store i32 0, ptr %i.bfk, align 4, !tbaa !80
  %i.bfl = load ptr, ptr %i.bff, align 8, !tbaa !81
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 16
  %i.bfn = load ptr, ptr %i.bfm, align 8
  call void %i.bfn(ptr noundef nonnull align 8 dereferenceable(16) %i.bff) #17, !inline_history !364
  %i.bfo = load ptr, ptr %i.bff, align 8, !tbaa !81
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 24
  %i.bfq = load ptr, ptr %i.bfp, align 8
  call void %i.bfq(ptr noundef nonnull align 8 dereferenceable(16) %i.bff) #17, !inline_history !364
  br label %_ZN6duckdbL17TemplatedMarkJoinIfNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.qa:                                            ; preds = %bb.py
  %i.bfr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i702 = icmp eq i8 %i.bfr, 0
  br i1 %.not.i.i.i.i.i2.i54.i702, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.bfs = add nsw i32 %i.bfj, -1
  store i32 %i.bfs, ptr %i.bfg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i703

bb.qc:                                            ; preds = %bb.qa
  %i.bft = atomicrmw volatile add ptr %i.bfg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i703

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i703: ; preds = %bb.qc, %bb.qb
  %.0.i.i.i.i.i.i4.i56.i704 = phi i32 [ %i.bfj, %bb.qb ], [ %i.bft, %bb.qc ]
  %i.bfu = icmp eq i32 %.0.i.i.i.i.i.i4.i56.i704, 1
  br i1 %i.bfu, label %bb.qd, label %_ZN6duckdbL17TemplatedMarkJoinIfNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit, !prof !84

bb.qd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i703
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bff) #17
  br label %_ZN6duckdbL17TemplatedMarkJoinIfNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.qe:                                            ; preds = %bb.ov
  %i.bfv = landingpad { ptr, i32 }
          cleanup
  br label %bb.qj

bb.qf:                                            ; preds = %bb.ox, %bb.ow
  %i.bfw = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qg:                                            ; preds = %bb.oy
  %i.bfx = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qh:                                            ; preds = %bb.oz
  %i.bfy = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.qg, %bb.qf, %.split.us.i682
  %.pn.pn.pn.pn.pn.pn.i664 = phi { ptr, i32 } [ %i.bfw, %bb.qf ], [ %i.bfx, %bb.qg ], [ %i.bfy, %bb.qh ], [ %i.bde, %.split.us.i682 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #17
  br label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.qe
  %.pn.pn.pn.pn.pn.pn.pn.i663 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i664, %bb.qi ], [ %i.bfv, %bb.qe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %common.resume

_ZN6duckdbL17TemplatedMarkJoinIfNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i700, %bb.pz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i703, %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ub

bb.qk:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.ql unwind label %bb.rt

bb.ql:                                            ; preds = %bb.qk
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.qm unwind label %bb.ru

bb.qm:                                            ; preds = %bb.ql
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.qn unwind label %bb.ru

bb.qn:                                            ; preds = %bb.qm
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.qo unwind label %bb.rv

bb.qo:                                            ; preds = %bb.qn
  %i.bfz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bga = load ptr, ptr %i.bfz, align 8, !tbaa !95
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataIdEEPKT_RKS0_.exit47.i unwind label %bb.rw

_ZN6duckdb19UnifiedVectorFormat7GetDataIdEEPKT_RKS0_.exit47.i: ; preds = %bb.qo
  %i.bgb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !95
  %.not.i709 = icmp eq i64 %2, 0
  br i1 %.not.i709, label %._crit_edge.i729, label %.lr.ph71.i710

.lr.ph71.i710:                                    ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataIdEEPKT_RKS0_.exit47.i
  %i.bgd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.not76.i711 = icmp eq i64 %3, 0
  %i.bge = getelementptr inbounds nuw i8, ptr %8, i64 16
  br i1 %.not76.i711, label %._crit_edge.i729, label %.lr.ph71.split.us.i712

.lr.ph71.split.us.i712:                           ; preds = %.lr.ph71.i710, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727
  %.03669.us.i713 = phi i64 [ %i.bhl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727 ], [ 0, %.lr.ph71.i710 ] ; 4 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %4, i64 %.03669.us.i713 ; 2 uses
  %i.bgg = load i8, ptr %i.bgf, align 1, !tbaa !72, !range !74, !noundef !75
  %i.bgh = trunc nuw i8 %i.bgg to i1
  br i1 %i.bgh, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727, label %bb.qp

bb.qp:                                            ; preds = %.lr.ph71.split.us.i712
  %i.bgi = load ptr, ptr %7, align 8, !tbaa !127
  %i.bgj = load ptr, ptr %i.bgi, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i714 = icmp eq ptr %i.bgj, null
  br i1 %.not.i.us.i714, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i715, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.bgj, i64 %.03669.us.i713
  %i.bgl = load i32, ptr %i.bgk, align 4, !tbaa !3
  %i.bgm = zext i32 %i.bgl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i715

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i715: ; preds = %bb.qq, %bb.qp
  %i.bgn = phi i64 [ %i.bgm, %bb.qq ], [ %.03669.us.i713, %bb.qp ] ; 3 uses
  %i.bgo = load ptr, ptr %i.bgd, align 8, !tbaa !128 ; 2 uses
  %.not.i58.us.i716 = icmp eq ptr %i.bgo, null
  br i1 %.not.i58.us.i716, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i718, label %bb.qr

bb.qr:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i715
  %i.bgp = lshr i64 %i.bgn, 6
  %i.bgq = and i64 %i.bgn, 63
  %i.bgr = getelementptr inbounds nuw [8 x i8], ptr %i.bgo, i64 %i.bgp
  %i.bgs = load i64, ptr %i.bgr, align 8, !tbaa !7
  %i.bgt = shl nuw i64 1, %i.bgq
  %i.bgu = and i64 %i.bgs, %i.bgt
  %.not.us.i717 = icmp eq i64 %i.bgu, 0
  br i1 %.not.us.i717, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i718

bb.qs:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i718, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749
  %.03568.us.i719 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i718 ], [ %i.bhk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749 ] ; 3 uses
  %i.bgv = load ptr, ptr %8, align 8, !tbaa !127
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i720 = icmp eq ptr %i.bgw, null
  br i1 %.not.i59.us.i720, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i721, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bgw, i64 %.03568.us.i719
  %i.bgy = load i32, ptr %i.bgx, align 4, !tbaa !3
  %i.bgz = zext i32 %i.bgy to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i721

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i721: ; preds = %bb.qt, %bb.qs
  %i.bha = phi i64 [ %i.bgz, %bb.qt ], [ %.03568.us.i719, %bb.qs ] ; 3 uses
  %i.bhb = load ptr, ptr %i.bge, align 8, !tbaa !128 ; 2 uses
  %.not.i61.us.i722 = icmp eq ptr %i.bhb, null
  br i1 %.not.i61.us.i722, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i725, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i723

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i723: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i721
  %i.bhc = lshr i64 %i.bha, 6
  %i.bhd = and i64 %i.bha, 63
  %i.bhe = getelementptr inbounds nuw [8 x i8], ptr %i.bhb, i64 %i.bhc
  %i.bhf = load i64, ptr %i.bhe, align 8, !tbaa !7
  %i.bhg = shl nuw i64 1, %i.bhd
  %i.bhh = and i64 %i.bhf, %i.bhg
  %.not67.us.i724 = icmp eq i64 %i.bhh, 0
  br i1 %.not67.us.i724, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i725

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i725: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i723, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i721
  %i.bhi = getelementptr inbounds nuw [8 x i8], ptr %i.bgc, i64 %i.bha
  %i.bhj = invoke noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.bhm, ptr noundef nonnull align 8 dereferenceable(8) %i.bhi)
          to label %bb.qu unwind label %.split.us.i726

bb.qu:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i725
  br i1 %i.bhj, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749, label %36

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749: ; preds = %bb.qu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i723
  %i.bhk = add nuw i64 %.03568.us.i719, 1         ; 2 uses
  %exitcond.not.i750 = icmp eq i64 %i.bhk, %3
  br i1 %exitcond.not.i750, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727, label %bb.qs, !llvm.loop !365

36:                                               ; preds = %bb.qu
  store i8 1, ptr %i.bgf, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i749, %36, %bb.qr, %.lr.ph71.split.us.i712
  %i.bhl = add nuw i64 %.03669.us.i713, 1         ; 2 uses
  %exitcond79.not.i728 = icmp eq i64 %i.bhl, %2
  br i1 %exitcond79.not.i728, label %._crit_edge.i729, label %.lr.ph71.split.us.i712, !llvm.loop !366

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i718: ; preds = %bb.qr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i715
  %i.bhm = getelementptr inbounds nuw [8 x i8], ptr %i.bga, i64 %i.bgn
  br label %bb.qs

.split.us.i726:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i725
  %i.bhn = landingpad { ptr, i32 }
          cleanup
  br label %bb.rx

._crit_edge.i729:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i727, %.lr.ph71.i710, %_ZN6duckdb19UnifiedVectorFormat7GetDataIdEEPKT_RKS0_.exit47.i
  %i.bho = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.bhp = load ptr, ptr %i.bho, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i730 = icmp eq ptr %i.bhp, null
  br i1 %.not.i.i.i.i.i.i730, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734, label %bb.qv

bb.qv:                                            ; preds = %._crit_edge.i729
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 8 ; 4 uses
  %i.bhr = load atomic i64, ptr %i.bhq acquire, align 8 ; 2 uses
  %i.bhs = icmp eq i64 %i.bhr, 4294967297
  %i.bht = trunc i64 %i.bhr to i32                ; 2 uses
  br i1 %i.bhs, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  store i32 0, ptr %i.bhq, align 8, !tbaa !78
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhp, i64 12
  store i32 0, ptr %i.bhu, align 4, !tbaa !80
  %i.bhv = load ptr, ptr %i.bhp, align 8, !tbaa !81
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 16
  %i.bhx = load ptr, ptr %i.bhw, align 8
  call void %i.bhx(ptr noundef nonnull align 8 dereferenceable(16) %i.bhp) #17, !inline_history !367
  %i.bhy = load ptr, ptr %i.bhp, align 8, !tbaa !81
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 24
  %i.bia = load ptr, ptr %i.bhz, align 8
  call void %i.bia(ptr noundef nonnull align 8 dereferenceable(16) %i.bhp) #17, !inline_history !367
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734

bb.qx:                                            ; preds = %bb.qv
  %i.bib = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i731 = icmp eq i8 %i.bib, 0
  br i1 %.not.i.i.i.i.i.i.i731, label %bb.qz, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.bic = add nsw i32 %i.bht, -1
  store i32 %i.bic, ptr %i.bhq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i732

bb.qz:                                            ; preds = %bb.qx
  %i.bid = atomicrmw volatile add ptr %i.bhq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i732

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i732: ; preds = %bb.qz, %bb.qy
  %.0.i.i.i.i.i.i.i.i733 = phi i32 [ %i.bht, %bb.qy ], [ %i.bid, %bb.qz ]
  %i.bie = icmp eq i32 %.0.i.i.i.i.i.i.i.i733, 1
  br i1 %i.bie, label %bb.ra, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734, !prof !84

bb.ra:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i732
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bhp) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734:      ; preds = %bb.ra, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i732, %bb.qw, %._crit_edge.i729
  %i.bif = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.big = load ptr, ptr %i.bif, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i735 = icmp eq ptr %i.big, null
  br i1 %.not.i.i.i.i1.i.i735, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739, label %bb.rb

bb.rb:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 8 ; 4 uses
  %i.bii = load atomic i64, ptr %i.bih acquire, align 8 ; 2 uses
  %i.bij = icmp eq i64 %i.bii, 4294967297
  %i.bik = trunc i64 %i.bii to i32                ; 2 uses
  br i1 %i.bij, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %bb.rb
  store i32 0, ptr %i.bih, align 8, !tbaa !78
  %i.bil = getelementptr inbounds nuw i8, ptr %i.big, i64 12
  store i32 0, ptr %i.bil, align 4, !tbaa !80
  %i.bim = load ptr, ptr %i.big, align 8, !tbaa !81
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bim, i64 16
  %i.bio = load ptr, ptr %i.bin, align 8
  call void %i.bio(ptr noundef nonnull align 8 dereferenceable(16) %i.big) #17, !inline_history !368
  %i.bip = load ptr, ptr %i.big, align 8, !tbaa !81
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bip, i64 24
  %i.bir = load ptr, ptr %i.biq, align 8
  call void %i.bir(ptr noundef nonnull align 8 dereferenceable(16) %i.big) #17, !inline_history !368
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739

bb.rd:                                            ; preds = %bb.rb
  %i.bis = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i736 = icmp eq i8 %i.bis, 0
  br i1 %.not.i.i.i.i.i2.i.i736, label %bb.rf, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.bit = add nsw i32 %i.bik, -1
  store i32 %i.bit, ptr %i.bih, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i737

bb.rf:                                            ; preds = %bb.rd
  %i.biu = atomicrmw volatile add ptr %i.bih, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i737

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i737: ; preds = %bb.rf, %bb.re
  %.0.i.i.i.i.i.i4.i.i738 = phi i32 [ %i.bik, %bb.re ], [ %i.biu, %bb.rf ]
  %i.biv = icmp eq i32 %.0.i.i.i.i.i.i4.i.i738, 1
  br i1 %i.biv, label %bb.rg, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739, !prof !84

bb.rg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i737
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.big) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739:    ; preds = %bb.rg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i737, %bb.rc, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i734
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.biw = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i740 = icmp eq ptr %i.bix, null
  br i1 %.not.i.i.i.i.i48.i740, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744, label %bb.rh

bb.rh:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 8 ; 4 uses
  %i.biz = load atomic i64, ptr %i.biy acquire, align 8 ; 2 uses
  %i.bja = icmp eq i64 %i.biz, 4294967297
  %i.bjb = trunc i64 %i.biz to i32                ; 2 uses
  br i1 %i.bja, label %bb.ri, label %bb.rj

bb.ri:                                            ; preds = %bb.rh
  store i32 0, ptr %i.biy, align 8, !tbaa !78
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bix, i64 12
  store i32 0, ptr %i.bjc, align 4, !tbaa !80
  %i.bjd = load ptr, ptr %i.bix, align 8, !tbaa !81
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 16
  %i.bjf = load ptr, ptr %i.bje, align 8
  call void %i.bjf(ptr noundef nonnull align 8 dereferenceable(16) %i.bix) #17, !inline_history !367
  %i.bjg = load ptr, ptr %i.bix, align 8, !tbaa !81
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjg, i64 24
  %i.bji = load ptr, ptr %i.bjh, align 8
  call void %i.bji(ptr noundef nonnull align 8 dereferenceable(16) %i.bix) #17, !inline_history !367
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744

bb.rj:                                            ; preds = %bb.rh
  %i.bjj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i741 = icmp eq i8 %i.bjj, 0
  br i1 %.not.i.i.i.i.i.i49.i741, label %bb.rl, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.bjk = add nsw i32 %i.bjb, -1
  store i32 %i.bjk, ptr %i.biy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i742

bb.rl:                                            ; preds = %bb.rj
  %i.bjl = atomicrmw volatile add ptr %i.biy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i742

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i742: ; preds = %bb.rl, %bb.rk
  %.0.i.i.i.i.i.i.i51.i743 = phi i32 [ %i.bjb, %bb.rk ], [ %i.bjl, %bb.rl ]
  %i.bjm = icmp eq i32 %.0.i.i.i.i.i.i.i51.i743, 1
  br i1 %i.bjm, label %bb.rm, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744, !prof !84

bb.rm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i742
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bix) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744:    ; preds = %bb.rm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i742, %bb.ri, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i739
  %i.bjn = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i745 = icmp eq ptr %i.bjo, null
  br i1 %.not.i.i.i.i1.i53.i745, label %_ZN6duckdbL17TemplatedMarkJoinIdNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit, label %bb.rn

bb.rn:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i744
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 8 ; 4 uses
  %i.bjq = load atomic i64, ptr %i.bjp acquire, align 8 ; 2 uses
  %i.bjr = icmp eq i64 %i.bjq, 4294967297
  %i.bjs = trunc i64 %i.bjq to i32                ; 2 uses
  br i1 %i.bjr, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  store i32 0, ptr %i.bjp, align 8, !tbaa !78
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjo, i64 12
  store i32 0, ptr %i.bjt, align 4, !tbaa !80
  %i.bju = load ptr, ptr %i.bjo, align 8, !tbaa !81
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 16
  %i.bjw = load ptr, ptr %i.bjv, align 8
  call void %i.bjw(ptr noundef nonnull align 8 dereferenceable(16) %i.bjo) #17, !inline_history !368
  %i.bjx = load ptr, ptr %i.bjo, align 8, !tbaa !81
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjx, i64 24
  %i.bjz = load ptr, ptr %i.bjy, align 8
  call void %i.bjz(ptr noundef nonnull align 8 dereferenceable(16) %i.bjo) #17, !inline_history !368
  br label %_ZN6duckdbL17TemplatedMarkJoinIdNS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.rp:                                            ; preds = %bb.rn
  %i.bka = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i746 = icmp eq i8 %i.bka, 0
  br i1 %.not.i.i.i.i.i2.i54.i746, label %bb.rr, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.bkb = add nsw i32 %i.bjs, -1
  store i32 %i.bkb, ptr %i.bjp, align 8, !tbaa !3
end_hunk_4
begin_hunk_5_@_ZN6duckdbL14MarkJoinSwitchINS_14LessThanEqualsEEEvRNS_6VectorES3_mmPb:bb.a
  %i.bko = load ptr, ptr %i.bkn, align 8
  %.fr.i754 = freeze ptr %i.bko                   ; 3 uses
  %.not.i58.i755 = icmp eq ptr %.fr.i754, null    ; 2 uses
  %.not90.i = icmp eq i64 %3, 0
  %i.bkp = load ptr, ptr %6, align 8              ; 2 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bkr = load ptr, ptr %i.bkq, align 8
  %.fr91.i = freeze ptr %i.bkr                    ; 3 uses
  br i1 %.not90.i, label %._crit_edge.i763, label %.lr.ph74.split.us.i

.lr.ph74.split.us.i:                              ; preds = %.lr.ph74.i
  %.not.i61.i756 = icmp eq ptr %.fr91.i, null
  br i1 %.not.i61.i756, label %.lr.ph74.split.us.split.us.i, label %.lr.ph74.split.us.split.i

.lr.ph74.split.us.split.us.i:                     ; preds = %.lr.ph74.split.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790
  %.03672.us.us.i = phi i64 [ %i.blg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790 ], [ 0, %.lr.ph74.split.us.i ] ; 4 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %4, i64 %.03672.us.us.i ; 2 uses
  %i.bkt = load i8, ptr %i.bks, align 1, !tbaa !72, !range !74, !noundef !75
  %i.bku = trunc nuw i8 %i.bkt to i1
  br i1 %i.bku, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790, label %bb.se

bb.se:                                            ; preds = %.lr.ph74.split.us.split.us.i
  %i.bkv = load ptr, ptr %i.bkm, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.us.i784 = icmp eq ptr %i.bkv, null
  br i1 %.not.i.us.us.i784, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %.03672.us.us.i
  %i.bkx = load i32, ptr %i.bkw, align 4, !tbaa !3
  %i.bky = zext i32 %i.bkx to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785: ; preds = %bb.sf, %bb.se
  %i.bkz = phi i64 [ %i.bky, %bb.sf ], [ %.03672.us.us.i, %bb.se ] ; 3 uses
  br i1 %.not.i58.i755, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787, label %bb.sg

bb.sg:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785
  %i.bla = lshr i64 %i.bkz, 6
  %i.blb = and i64 %i.bkz, 63
  %i.blc = getelementptr inbounds nuw [8 x i8], ptr %.fr.i754, i64 %i.bla
  %i.bld = load i64, ptr %i.blc, align 8, !tbaa !7
  %i.ble = shl nuw i64 1, %i.blb
  %i.blf = and i64 %i.bld, %i.ble
  %.not.us.us.i786 = icmp eq i64 %i.blf, 0
  br i1 %.not.us.us.i786, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790: ; preds = %.thread.us.us.us.i, %.thread.us.us.us.us.i, %.split.us.us.us.i789, %bb.sg, %.lr.ph74.split.us.split.us.i
  %i.blg = add nuw i64 %.03672.us.us.i, 1         ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.blg, %2
  br i1 %exitcond100.not.i, label %._crit_edge.i763, label %.lr.ph74.split.us.split.us.i, !llvm.loop !369

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787: ; preds = %bb.sg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785
  %i.blh = load ptr, ptr %i.bkp, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.us.i788 = icmp eq ptr %i.blh, null
  %i.bli = getelementptr inbounds nuw [16 x i8], ptr %i.bkj, i64 %i.bkz ; 3 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bli, i64 4 ; 3 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bli, i64 8 ; 2 uses
  %i.bll = load i32, ptr %i.bli, align 8, !tbaa !70 ; 5 uses
  %.0.copyload.i.i.i.i.i.i.us.us.us.i = load i32, ptr %i.blj, align 4 ; 3 uses
  %i.blm = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.us.us.us.i) ; 2 uses
  %i.bln = icmp ult i32 %i.bll, 13                ; 2 uses
  br i1 %.not.i59.us.us.i788, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.i791, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.i791: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787, %.thread.us.us.us.us.i
  %.03571.us.us.us.us.i = phi i64 [ %i.bmf, %.thread.us.us.us.us.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787 ] ; 2 uses
  %i.blo = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %.03571.us.us.us.us.i ; 3 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i.us.us.us.us.i = load i32, ptr %i.blp, align 1 ; 2 uses
  %.not.i.i.i.i.i64.us.us.us.us.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.us.us.us.i, %.0.copyload.i11.i.i.i.i.i.us.us.us.us.i
  br i1 %.not.i.i.i.i.i64.us.us.us.us.i, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.i791
  %i.blq = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.us.us.us.us.i)
  %i.blr = icmp ugt i32 %i.blm, %i.blq
  br i1 %i.blr, label %.thread.us.us.us.us.i, label %.split.us.us.us.i789

bb.si:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.i791
  %i.bls = load i32, ptr %i.blo, align 8, !tbaa !70 ; 3 uses
  %i.blt = icmp ult i32 %i.bls, %i.bll
  %.sroa.speculated.i.i.i.i.i.us.us.us.us.i = call i32 @llvm.umin.i32(i32 %i.bls, i32 %i.bll)
  %i.blu = load ptr, ptr %i.blk, align 8
  %i.blv = select i1 %i.bln, ptr %i.blj, ptr %i.blu
  %i.blw = icmp ult i32 %i.bls, 13
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blo, i64 8
  %i.bly = load ptr, ptr %i.blx, align 8
  %i.blz = select i1 %i.blw, ptr %i.blp, ptr %i.bly
  %i.bma = zext i32 %.sroa.speculated.i.i.i.i.i.us.us.us.us.i to i64
  %i.bmb = call i32 @memcmp(ptr noundef %i.blv, ptr noundef %i.blz, i64 noundef %i.bma) #20 ; 2 uses
  %i.bmc = icmp sgt i32 %i.bmb, 0
  %i.bmd = icmp eq i32 %i.bmb, 0
  %i.bme = select i1 %i.bmd, i1 %i.blt, i1 false
  %or.cond.i = select i1 %i.bmc, i1 true, i1 %i.bme
  br i1 %or.cond.i, label %.thread.us.us.us.us.i, label %.split.us.us.us.i789

.thread.us.us.us.us.i:                            ; preds = %bb.si, %bb.sh
  %i.bmf = add nuw i64 %.03571.us.us.us.us.i, 1   ; 2 uses
  %exitcond99.not.i = icmp eq i64 %i.bmf, %3
  br i1 %exitcond99.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.i791, !llvm.loop !370

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787, %.thread.us.us.us.i
  %.03571.us.us.us.i = phi i64 [ %i.bna, %.thread.us.us.us.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787 ] ; 2 uses
  %i.bmg = getelementptr inbounds nuw [4 x i8], ptr %i.blh, i64 %.03571.us.us.us.i
  %i.bmh = load i32, ptr %i.bmg, align 4, !tbaa !3
  %i.bmi = zext i32 %i.bmh to i64
  %i.bmj = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %i.bmi ; 3 uses
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmj, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i.us.us.us.i = load i32, ptr %i.bmk, align 1 ; 2 uses
  %.not.i.i.i.i.i64.us.us.us.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.us.us.us.i, %.0.copyload.i11.i.i.i.i.i.us.us.us.i
  br i1 %.not.i.i.i.i.i64.us.us.us.i, label %bb.sk, label %bb.sj

bb.sj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.i
  %i.bml = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.us.us.us.i)
  %i.bmm = icmp ugt i32 %i.blm, %i.bml
  br i1 %i.bmm, label %.thread.us.us.us.i, label %.split.us.us.us.i789

bb.sk:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.i
  %i.bmn = load i32, ptr %i.bmj, align 8, !tbaa !70 ; 3 uses
  %i.bmo = icmp ult i32 %i.bmn, %i.bll
  %.sroa.speculated.i.i.i.i.i.us.us.us.i = call i32 @llvm.umin.i32(i32 %i.bmn, i32 %i.bll)
  %i.bmp = load ptr, ptr %i.blk, align 8
  %i.bmq = select i1 %i.bln, ptr %i.blj, ptr %i.bmp
  %i.bmr = icmp ult i32 %i.bmn, 13
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmj, i64 8
  %i.bmt = load ptr, ptr %i.bms, align 8
  %i.bmu = select i1 %i.bmr, ptr %i.bmk, ptr %i.bmt
  %i.bmv = zext i32 %.sroa.speculated.i.i.i.i.i.us.us.us.i to i64
  %i.bmw = call i32 @memcmp(ptr noundef %i.bmq, ptr noundef %i.bmu, i64 noundef %i.bmv) #20 ; 2 uses
  %i.bmx = icmp sgt i32 %i.bmw, 0
  %i.bmy = icmp eq i32 %i.bmw, 0
  %i.bmz = select i1 %i.bmy, i1 %i.bmo, i1 false
  %or.cond123.i = select i1 %i.bmx, i1 true, i1 %i.bmz
  br i1 %or.cond123.i, label %.thread.us.us.us.i, label %.split.us.us.us.i789

.thread.us.us.us.i:                               ; preds = %bb.sk, %bb.sj
  %i.bna = add nuw i64 %.03571.us.us.us.i, 1      ; 2 uses
  %exitcond98.not.i = icmp eq i64 %i.bna, %3
  br i1 %exitcond98.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.i, !llvm.loop !370

.split.us.us.us.i789:                             ; preds = %bb.sk, %bb.sj, %bb.si, %bb.sh
  store i8 1, ptr %i.bks, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790

.lr.ph74.split.us.split.i:                        ; preds = %.lr.ph74.split.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i
  %.03672.us.i = phi i64 [ %i.bot, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i ], [ 0, %.lr.ph74.split.us.i ] ; 4 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %4, i64 %.03672.us.i ; 2 uses
  %i.bnc = load i8, ptr %i.bnb, align 1, !tbaa !72, !range !74, !noundef !75
  %i.bnd = trunc nuw i8 %i.bnc to i1
  br i1 %i.bnd, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i, label %bb.sl

bb.sl:                                            ; preds = %.lr.ph74.split.us.split.i
  %i.bne = load ptr, ptr %i.bkm, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i757 = icmp eq ptr %i.bne, null
  br i1 %.not.i.us.i757, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %i.bne, i64 %.03672.us.i
  %i.bng = load i32, ptr %i.bnf, align 4, !tbaa !3
  %i.bnh = zext i32 %i.bng to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758: ; preds = %bb.sm, %bb.sl
  %i.bni = phi i64 [ %i.bnh, %bb.sm ], [ %.03672.us.i, %bb.sl ] ; 3 uses
  br i1 %.not.i58.i755, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760, label %bb.sn

bb.sn:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758
  %i.bnj = lshr i64 %i.bni, 6
  %i.bnk = and i64 %i.bni, 63
  %i.bnl = getelementptr inbounds nuw [8 x i8], ptr %.fr.i754, i64 %i.bnj
  %i.bnm = load i64, ptr %i.bnl, align 8, !tbaa !7
  %i.bnn = shl nuw i64 1, %i.bnk
  %i.bno = and i64 %i.bnm, %i.bnn
  %.not.us.i759 = icmp eq i64 %i.bno, 0
  br i1 %.not.us.i759, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760, %.thread.us83.i
  %.03571.us75.i = phi i64 [ %i.bos, %.thread.us83.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760 ] ; 2 uses
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %.03571.us75.i
  %i.bnq = load i32, ptr %i.bnp, align 4, !tbaa !3
  %i.bnr = zext i32 %i.bnq to i64                 ; 3 uses
  %i.bns = lshr i64 %i.bnr, 6
  %i.bnt = and i64 %i.bnr, 63
  %i.bnu = getelementptr inbounds nuw [8 x i8], ptr %.fr91.i, i64 %i.bns
  %i.bnv = load i64, ptr %i.bnu, align 8, !tbaa !7
  %i.bnw = shl nuw i64 1, %i.bnt
  %i.bnx = and i64 %i.bnw, %i.bnv
  %.not70.us.i = icmp eq i64 %i.bnx, 0
  br i1 %.not70.us.i, label %.thread.us83.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i
  %i.bny = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %i.bnr ; 3 uses
  %.0.copyload.i.i.i.i.i.i.us77.i = load i32, ptr %i.bow, align 1 ; 2 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i.us78.i = load i32, ptr %i.bnz, align 1 ; 2 uses
  %.not.i.i.i.i.i64.us79.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.us77.i, %.0.copyload.i11.i.i.i.i.i.us78.i
  br i1 %.not.i.i.i.i.i64.us79.i, label %bb.sp, label %bb.so

bb.so:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762
  %i.boa = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.us77.i)
  %i.bob = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.us78.i)
  %i.boc = icmp ugt i32 %i.boa, %i.bob
  br i1 %i.boc, label %.thread.us83.i, label %.split.us83.i

bb.sp:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762
  %i.bod = load i32, ptr %i.bny, align 8, !tbaa !70 ; 3 uses
  %i.boe = load i32, ptr %i.bov, align 8, !tbaa !70 ; 3 uses
  %i.bof = icmp ult i32 %i.bod, %i.boe
  %.sroa.speculated.i.i.i.i.i.us80.i = call i32 @llvm.umin.i32(i32 %i.bod, i32 %i.boe)
  %i.bog = icmp ult i32 %i.boe, 13
  %i.boh = load ptr, ptr %i.box, align 8
  %i.boi = select i1 %i.bog, ptr %i.bow, ptr %i.boh
  %i.boj = icmp ult i32 %i.bod, 13
  %i.bok = getelementptr inbounds nuw i8, ptr %i.bny, i64 8
  %i.bol = load ptr, ptr %i.bok, align 8
  %i.bom = select i1 %i.boj, ptr %i.bnz, ptr %i.bol
  %i.bon = zext i32 %.sroa.speculated.i.i.i.i.i.us80.i to i64
  %i.boo = call i32 @memcmp(ptr noundef %i.boi, ptr noundef %i.bom, i64 noundef %i.bon) #20 ; 2 uses
  %i.bop = icmp sgt i32 %i.boo, 0
  %i.boq = icmp eq i32 %i.boo, 0
  %i.bor = and i1 %i.bof, %i.boq
  %or.cond125.i = or i1 %i.bop, %i.bor
  br i1 %or.cond125.i, label %.thread.us83.i, label %.split.us83.i

.thread.us83.i:                                   ; preds = %bb.sp, %bb.so, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i
  %i.bos = add nuw i64 %.03571.us75.i, 1          ; 2 uses
  %exitcond.not.i783 = icmp eq i64 %i.bos, %3
  br i1 %exitcond.not.i783, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i, !llvm.loop !370

.split.us83.i:                                    ; preds = %bb.so, %bb.sp, %bb.sq, %bb.sr
  store i8 1, ptr %i.bnb, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i: ; preds = %.thread.us83.i, %.thread.us83.i.us, %.split.us83.i, %bb.sn, %.lr.ph74.split.us.split.i
  %i.bot = add nuw i64 %.03672.us.i, 1            ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.bot, %2
  br i1 %exitcond97.not.i, label %._crit_edge.i763, label %.lr.ph74.split.us.split.i, !llvm.loop !369

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760: ; preds = %bb.sn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758
  %i.bou = load ptr, ptr %i.bkp, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i761 = icmp eq ptr %i.bou, null
  %i.bov = getelementptr inbounds nuw [16 x i8], ptr %i.bkj, i64 %i.bni ; 4 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 4 ; 4 uses
  %i.box = getelementptr inbounds nuw i8, ptr %i.bov, i64 8 ; 2 uses
  br i1 %.not.i59.us.i761, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760, %.thread.us83.i.us
  %.03571.us75.i.us = phi i64 [ %i.bpy, %.thread.us83.i.us ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760 ] ; 4 uses
  %i.boy = lshr i64 %.03571.us75.i.us, 6
  %i.boz = and i64 %.03571.us75.i.us, 63
  %i.bpa = getelementptr inbounds nuw [8 x i8], ptr %.fr91.i, i64 %i.boy
  %i.bpb = load i64, ptr %i.bpa, align 8, !tbaa !7
  %i.bpc = shl nuw i64 1, %i.boz
  %i.bpd = and i64 %i.bpc, %i.bpb
  %.not70.us.i.us = icmp eq i64 %i.bpd, 0
  br i1 %.not70.us.i.us, label %.thread.us83.i.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i.us
  %i.bpe = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %.03571.us75.i.us ; 3 uses
  %.0.copyload.i.i.i.i.i.i.us77.i.us = load i32, ptr %i.bow, align 1 ; 2 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 4 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i.us78.i.us = load i32, ptr %i.bpf, align 1 ; 2 uses
  %.not.i.i.i.i.i64.us79.i.us = icmp eq i32 %.0.copyload.i.i.i.i.i.i.us77.i.us, %.0.copyload.i11.i.i.i.i.i.us78.i.us
  br i1 %.not.i.i.i.i.i64.us79.i.us, label %bb.sr, label %bb.sq

bb.sq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us
  %i.bpg = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.us77.i.us)
  %i.bph = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.us78.i.us)
  %i.bpi = icmp ugt i32 %i.bpg, %i.bph
  br i1 %i.bpi, label %.thread.us83.i.us, label %.split.us83.i

bb.sr:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us
  %i.bpj = load i32, ptr %i.bpe, align 8, !tbaa !70 ; 3 uses
  %i.bpk = load i32, ptr %i.bov, align 8, !tbaa !70 ; 3 uses
  %i.bpl = icmp ult i32 %i.bpj, %i.bpk
  %.sroa.speculated.i.i.i.i.i.us80.i.us = call i32 @llvm.umin.i32(i32 %i.bpj, i32 %i.bpk)
  %i.bpm = icmp ult i32 %i.bpk, 13
  %i.bpn = load ptr, ptr %i.box, align 8
  %i.bpo = select i1 %i.bpm, ptr %i.bow, ptr %i.bpn
  %i.bpp = icmp ult i32 %i.bpj, 13
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpe, i64 8
  %i.bpr = load ptr, ptr %i.bpq, align 8
  %i.bps = select i1 %i.bpp, ptr %i.bpf, ptr %i.bpr
  %i.bpt = zext i32 %.sroa.speculated.i.i.i.i.i.us80.i.us to i64
  %i.bpu = call i32 @memcmp(ptr noundef %i.bpo, ptr noundef %i.bps, i64 noundef %i.bpt) #20 ; 2 uses
  %i.bpv = icmp sgt i32 %i.bpu, 0
  %i.bpw = icmp eq i32 %i.bpu, 0
  %i.bpx = and i1 %i.bpl, %i.bpw
  %or.cond125.i.us = or i1 %i.bpv, %i.bpx
  br i1 %or.cond125.i.us, label %.thread.us83.i.us, label %.split.us83.i

.thread.us83.i.us:                                ; preds = %bb.sr, %bb.sq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i.us
  %i.bpy = add nuw i64 %.03571.us75.i.us, 1       ; 2 uses
  %exitcond.not.i783.us = icmp eq i64 %i.bpy, %3
  br i1 %exitcond.not.i783.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i.us, !llvm.loop !370

._crit_edge.i763:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790, %.lr.ph74.i, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit47.i
  %i.bpz = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i764 = icmp eq ptr %i.bqa, null
  br i1 %.not.i.i.i.i.i.i764, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768, label %bb.ss

bb.ss:                                            ; preds = %._crit_edge.i763
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bqa, i64 8 ; 4 uses
  %i.bqc = load atomic i64, ptr %i.bqb acquire, align 8 ; 2 uses
  %i.bqd = icmp eq i64 %i.bqc, 4294967297
  %i.bqe = trunc i64 %i.bqc to i32                ; 2 uses
  br i1 %i.bqd, label %bb.st, label %bb.su

bb.st:                                            ; preds = %bb.ss
  store i32 0, ptr %i.bqb, align 8, !tbaa !78
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqa, i64 12
  store i32 0, ptr %i.bqf, align 4, !tbaa !80
  %i.bqg = load ptr, ptr %i.bqa, align 8, !tbaa !81
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqg, i64 16
  %i.bqi = load ptr, ptr %i.bqh, align 8
  call void %i.bqi(ptr noundef nonnull align 8 dereferenceable(16) %i.bqa) #17, !inline_history !371
  %i.bqj = load ptr, ptr %i.bqa, align 8, !tbaa !81
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 24
  %i.bql = load ptr, ptr %i.bqk, align 8
  call void %i.bql(ptr noundef nonnull align 8 dereferenceable(16) %i.bqa) #17, !inline_history !371
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768

bb.su:                                            ; preds = %bb.ss
  %i.bqm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i765 = icmp eq i8 %i.bqm, 0
  br i1 %.not.i.i.i.i.i.i.i765, label %bb.sw, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %i.bqn = add nsw i32 %i.bqe, -1
  store i32 %i.bqn, ptr %i.bqb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766

bb.sw:                                            ; preds = %bb.su
  %i.bqo = atomicrmw volatile add ptr %i.bqb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766: ; preds = %bb.sw, %bb.sv
  %.0.i.i.i.i.i.i.i.i767 = phi i32 [ %i.bqe, %bb.sv ], [ %i.bqo, %bb.sw ]
  %i.bqp = icmp eq i32 %.0.i.i.i.i.i.i.i.i767, 1
  br i1 %i.bqp, label %bb.sx, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768, !prof !84

bb.sx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bqa) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768:      ; preds = %bb.sx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766, %bb.st, %._crit_edge.i763
  %i.bqq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bqr = load ptr, ptr %i.bqq, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i769 = icmp eq ptr %i.bqr, null
  br i1 %.not.i.i.i.i1.i.i769, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773, label %bb.sy

bb.sy:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqr, i64 8 ; 4 uses
  %i.bqt = load atomic i64, ptr %i.bqs acquire, align 8 ; 2 uses
  %i.bqu = icmp eq i64 %i.bqt, 4294967297
  %i.bqv = trunc i64 %i.bqt to i32                ; 2 uses
  br i1 %i.bqu, label %bb.sz, label %bb.ta

bb.sz:                                            ; preds = %bb.sy
  store i32 0, ptr %i.bqs, align 8, !tbaa !78
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqr, i64 12
  store i32 0, ptr %i.bqw, align 4, !tbaa !80
  %i.bqx = load ptr, ptr %i.bqr, align 8, !tbaa !81
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 16
  %i.bqz = load ptr, ptr %i.bqy, align 8
  call void %i.bqz(ptr noundef nonnull align 8 dereferenceable(16) %i.bqr) #17, !inline_history !372
  %i.bra = load ptr, ptr %i.bqr, align 8, !tbaa !81
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bra, i64 24
  %i.brc = load ptr, ptr %i.brb, align 8
  call void %i.brc(ptr noundef nonnull align 8 dereferenceable(16) %i.bqr) #17, !inline_history !372
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773

bb.ta:                                            ; preds = %bb.sy
  %i.brd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i770 = icmp eq i8 %i.brd, 0
  br i1 %.not.i.i.i.i.i2.i.i770, label %bb.tc, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.bre = add nsw i32 %i.bqv, -1
  store i32 %i.bre, ptr %i.bqs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771

bb.tc:                                            ; preds = %bb.ta
  %i.brf = atomicrmw volatile add ptr %i.bqs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771: ; preds = %bb.tc, %bb.tb
  %.0.i.i.i.i.i.i4.i.i772 = phi i32 [ %i.bqv, %bb.tb ], [ %i.brf, %bb.tc ]
  %i.brg = icmp eq i32 %.0.i.i.i.i.i.i4.i.i772, 1
  br i1 %i.brg, label %bb.td, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773, !prof !84

bb.td:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bqr) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773:    ; preds = %bb.td, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771, %bb.sz, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.brh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bri = load ptr, ptr %i.brh, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i774 = icmp eq ptr %i.bri, null
  br i1 %.not.i.i.i.i.i48.i774, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778, label %bb.te

bb.te:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 8 ; 4 uses
  %i.brk = load atomic i64, ptr %i.brj acquire, align 8 ; 2 uses
  %i.brl = icmp eq i64 %i.brk, 4294967297
  %i.brm = trunc i64 %i.brk to i32                ; 2 uses
  br i1 %i.brl, label %bb.tf, label %bb.tg

bb.tf:                                            ; preds = %bb.te
  store i32 0, ptr %i.brj, align 8, !tbaa !78
  %i.brn = getelementptr inbounds nuw i8, ptr %i.bri, i64 12
  store i32 0, ptr %i.brn, align 4, !tbaa !80
  %i.bro = load ptr, ptr %i.bri, align 8, !tbaa !81
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 16
  %i.brq = load ptr, ptr %i.brp, align 8
  call void %i.brq(ptr noundef nonnull align 8 dereferenceable(16) %i.bri) #17, !inline_history !371
  %i.brr = load ptr, ptr %i.bri, align 8, !tbaa !81
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 24
  %i.brt = load ptr, ptr %i.brs, align 8
  call void %i.brt(ptr noundef nonnull align 8 dereferenceable(16) %i.bri) #17, !inline_history !371
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778

bb.tg:                                            ; preds = %bb.te
  %i.bru = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i775 = icmp eq i8 %i.bru, 0
  br i1 %.not.i.i.i.i.i.i49.i775, label %bb.ti, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.brv = add nsw i32 %i.brm, -1
  store i32 %i.brv, ptr %i.brj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776

bb.ti:                                            ; preds = %bb.tg
  %i.brw = atomicrmw volatile add ptr %i.brj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776: ; preds = %bb.ti, %bb.th
  %.0.i.i.i.i.i.i.i51.i777 = phi i32 [ %i.brm, %bb.th ], [ %i.brw, %bb.ti ]
  %i.brx = icmp eq i32 %.0.i.i.i.i.i.i.i51.i777, 1
  br i1 %i.brx, label %bb.tj, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778, !prof !84

bb.tj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bri) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778:    ; preds = %bb.tj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776, %bb.tf, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773
  %i.bry = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.brz = load ptr, ptr %i.bry, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i779 = icmp eq ptr %i.brz, null
  br i1 %.not.i.i.i.i1.i53.i779, label %_ZN6duckdbL17TemplatedMarkJoinINS_8string_tENS_14LessThanEqualsEEEvRNS_6VectorES4_mmPb.exit, label %bb.tk

bb.tk:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 8 ; 4 uses
  %i.bsb = load atomic i64, ptr %i.bsa acquire, align 8 ; 2 uses
  %i.bsc = icmp eq i64 %i.bsb, 4294967297
  %i.bsd = trunc i64 %i.bsb to i32                ; 2 uses
  br i1 %i.bsc, label %bb.tl, label %bb.tm

bb.tl:                                            ; preds = %bb.tk
  store i32 0, ptr %i.bsa, align 8, !tbaa !78
  %i.bse = getelementptr inbounds nuw i8, ptr %i.brz, i64 12
  store i32 0, ptr %i.bse, align 4, !tbaa !80
  %i.bsf = load ptr, ptr %i.brz, align 8, !tbaa !81
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 16
  %i.bsh = load ptr, ptr %i.bsg, align 8
  call void %i.bsh(ptr noundef nonnull align 8 dereferenceable(16) %i.brz) #17, !inline_history !372
  %i.bsi = load ptr, ptr %i.brz, align 8, !tbaa !81
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsi, i64 24
  %i.bsk = load ptr, ptr %i.bsj, align 8
  call void %i.bsk(ptr noundef nonnull align 8 dereferenceable(16) %i.brz) #17, !inline_history !372
  br label %_ZN6duckdbL17TemplatedMarkJoinINS_8string_tENS_14LessThanEqualsEEEvRNS_6VectorES4_mmPb.exit

bb.tm:                                            ; preds = %bb.tk
  %i.bsl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i780 = icmp eq i8 %i.bsl, 0
  br i1 %.not.i.i.i.i.i2.i54.i780, label %bb.to, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.bsm = add nsw i32 %i.bsd, -1
  store i32 %i.bsm, ptr %i.bsa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i781

bb.to:                                            ; preds = %bb.tm
  %i.bsn = atomicrmw volatile add ptr %i.bsa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i781

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i781: ; preds = %bb.to, %bb.tn
  %.0.i.i.i.i.i.i4.i56.i782 = phi i32 [ %i.bsd, %bb.tn ], [ %i.bsn, %bb.to ]
end_hunk_5
begin_hunk_6_@_ZN6duckdbL14MarkJoinSwitchINS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb:bb.a

bb.ew:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i257
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.up) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259:    ; preds = %bb.ew, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i257, %bb.es, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i254
  %i.vf = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i260 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i.i1.i53.i260, label %_ZN6duckdbL17TemplatedMarkJoinIlNS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 4 uses
  %i.vi = load atomic i64, ptr %i.vh acquire, align 8 ; 2 uses
  %i.vj = icmp eq i64 %i.vi, 4294967297
  %i.vk = trunc i64 %i.vi to i32                  ; 2 uses
  br i1 %i.vj, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  store i32 0, ptr %i.vh, align 8, !tbaa !78
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 12
  store i32 0, ptr %i.vl, align 4, !tbaa !80
  %i.vm = load ptr, ptr %i.vg, align 8, !tbaa !81
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #17, !inline_history !388
  %i.vp = load ptr, ptr %i.vg, align 8, !tbaa !81
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vr = load ptr, ptr %i.vq, align 8
  call void %i.vr(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #17, !inline_history !388
  br label %_ZN6duckdbL17TemplatedMarkJoinIlNS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.ez:                                            ; preds = %bb.ex
  %i.vs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i261 = icmp eq i8 %i.vs, 0
  br i1 %.not.i.i.i.i.i2.i54.i261, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vt = add nsw i32 %i.vk, -1
  store i32 %i.vt, ptr %i.vh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262

bb.fb:                                            ; preds = %bb.ez
  %i.vu = atomicrmw volatile add ptr %i.vh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262: ; preds = %bb.fb, %bb.fa
  %.0.i.i.i.i.i.i4.i56.i263 = phi i32 [ %i.vk, %bb.fa ], [ %i.vu, %bb.fb ]
  %i.vv = icmp eq i32 %.0.i.i.i.i.i.i4.i56.i263, 1
  br i1 %i.vv, label %bb.fc, label %_ZN6duckdbL17TemplatedMarkJoinIlNS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb.exit, !prof !84

bb.fc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vg) #17
  br label %_ZN6duckdbL17TemplatedMarkJoinIlNS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.fd:                                            ; preds = %bb.du
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fe:                                            ; preds = %bb.dw, %bb.dv
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.ff:                                            ; preds = %bb.dx
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fg:                                            ; preds = %bb.dy
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fe
  %.pn.pn.pn.pn.pn.pn.i220 = phi { ptr, i32 } [ %i.vx, %bb.fe ], [ %i.vy, %bb.ff ], [ %i.vz, %bb.fg ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %24) #17
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fd
  %.pn.pn.pn.pn.pn.pn.pn.i219 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i220, %bb.fh ], [ %i.vw, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %common.resume

_ZN6duckdbL17TemplatedMarkJoinIlNS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i259, %bb.ey, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i262, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %bb.ub

bb.fj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.fk unwind label %bb.gs

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %21)
          to label %bb.fl unwind label %bb.gt

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.fm unwind label %bb.gt

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_9hugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %21)
          to label %bb.fn unwind label %bb.gu

bb.fn:                                            ; preds = %bb.fm
  %i.wa = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !95
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_9hugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i unwind label %bb.gv

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i: ; preds = %bb.fn
  %i.wc = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !95
  %.not.i295 = icmp eq i64 %2, 0
  br i1 %.not.i295, label %._crit_edge.i302, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i
  %i.we = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.not76.i = icmp eq i64 %3, 0
  %i.wf = getelementptr inbounds nuw i8, ptr %22, i64 16
  br i1 %.not76.i, label %._crit_edge.i302, label %.lr.ph71.split.us.i

.lr.ph71.split.us.i:                              ; preds = %.lr.ph71.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i
  %.03669.us.i = phi i64 [ %i.xm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i ], [ 0, %.lr.ph71.i ] ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %4, i64 %.03669.us.i ; 2 uses
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !72, !range !74, !noundef !75
  %i.wi = trunc nuw i8 %i.wh to i1
  br i1 %i.wi, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, label %bb.fo

bb.fo:                                            ; preds = %.lr.ph71.split.us.i
  %i.wj = load ptr, ptr %21, align 8, !tbaa !127
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i296 = icmp eq ptr %i.wk, null
  br i1 %.not.i.us.i296, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %.03669.us.i
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !3
  %i.wn = zext i32 %i.wm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297: ; preds = %bb.fp, %bb.fo
  %i.wo = phi i64 [ %i.wn, %bb.fp ], [ %.03669.us.i, %bb.fo ] ; 3 uses
  %i.wp = load ptr, ptr %i.we, align 8, !tbaa !128 ; 2 uses
  %.not.i58.us.i = icmp eq ptr %i.wp, null
  br i1 %.not.i58.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299, label %bb.fq

bb.fq:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297
  %i.wq = lshr i64 %i.wo, 6
  %i.wr = and i64 %i.wo, 63
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.wq
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !7
  %i.wu = shl nuw i64 1, %i.wr
  %i.wv = and i64 %i.wt, %i.wu
  %.not.us.i298 = icmp eq i64 %i.wv, 0
  br i1 %.not.us.i298, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299

bb.fr:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i
  %.03568.us.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299 ], [ %i.xl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i ] ; 3 uses
  %i.ww = load ptr, ptr %22, align 8, !tbaa !127
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i300 = icmp eq ptr %i.wx, null
  br i1 %.not.i59.us.i300, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %.03568.us.i
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !3
  %i.xa = zext i32 %i.wz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i: ; preds = %bb.fs, %bb.fr
  %i.xb = phi i64 [ %i.xa, %bb.fs ], [ %.03568.us.i, %bb.fr ] ; 3 uses
  %i.xc = load ptr, ptr %i.wf, align 8, !tbaa !128 ; 2 uses
  %.not.i61.us.i = icmp eq ptr %i.xc, null
  br i1 %.not.i61.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i
  %i.xd = lshr i64 %i.xb, 6
  %i.xe = and i64 %i.xb, 63
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.xd
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !7
  %i.xh = shl nuw i64 1, %i.xe
  %i.xi = and i64 %i.xg, %i.xh
  %.not67.us.i = icmp eq i64 %i.xi, 0
  br i1 %.not67.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %i.wd, i64 %i.xb
  %i.xk = invoke noundef zeroext i1 @_ZNK6duckdb9hugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.xj, ptr noundef nonnull align 8 dereferenceable(16) %i.xn)
          to label %bb.ft unwind label %.split.us.i

bb.ft:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301
  br i1 %i.xk, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i, label %33

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i: ; preds = %bb.ft, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i
  %i.xl = add nuw i64 %.03568.us.i, 1             ; 2 uses
  %exitcond.not.i322 = icmp eq i64 %i.xl, %3
  br i1 %exitcond.not.i322, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, label %bb.fr, !llvm.loop !389

33:                                               ; preds = %bb.ft
  store i8 1, ptr %i.wg, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i, %33, %bb.fq, %.lr.ph71.split.us.i
  %i.xm = add nuw i64 %.03669.us.i, 1             ; 2 uses
  %exitcond79.not.i = icmp eq i64 %i.xm, %2
  br i1 %exitcond79.not.i, label %._crit_edge.i302, label %.lr.ph71.split.us.i, !llvm.loop !390

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i299: ; preds = %bb.fq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i297
  %i.xn = getelementptr inbounds nuw [16 x i8], ptr %i.wb, i64 %i.wo
  br label %bb.fr

.split.us.i:                                      ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i301
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

._crit_edge.i302:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i, %.lr.ph71.i, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_9hugeint_tEEEPKT_RKS0_.exit47.i
  %i.xp = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i303 = icmp eq ptr %i.xq, null
  br i1 %.not.i.i.i.i.i.i303, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307, label %bb.fu

bb.fu:                                            ; preds = %._crit_edge.i302
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8 ; 4 uses
  %i.xs = load atomic i64, ptr %i.xr acquire, align 8 ; 2 uses
  %i.xt = icmp eq i64 %i.xs, 4294967297
  %i.xu = trunc i64 %i.xs to i32                  ; 2 uses
  br i1 %i.xt, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 0, ptr %i.xr, align 8, !tbaa !78
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 12
  store i32 0, ptr %i.xv, align 4, !tbaa !80
  %i.xw = load ptr, ptr %i.xq, align 8, !tbaa !81
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  %i.xy = load ptr, ptr %i.xx, align 8
  call void %i.xy(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #17, !inline_history !391
  %i.xz = load ptr, ptr %i.xq, align 8, !tbaa !81
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8
  call void %i.yb(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #17, !inline_history !391
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307

bb.fw:                                            ; preds = %bb.fu
  %i.yc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i304 = icmp eq i8 %i.yc, 0
  br i1 %.not.i.i.i.i.i.i.i304, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.yd = add nsw i32 %i.xu, -1
  store i32 %i.yd, ptr %i.xr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305

bb.fy:                                            ; preds = %bb.fw
  %i.ye = atomicrmw volatile add ptr %i.xr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i.i.i306 = phi i32 [ %i.xu, %bb.fx ], [ %i.ye, %bb.fy ]
  %i.yf = icmp eq i32 %.0.i.i.i.i.i.i.i.i306, 1
  br i1 %i.yf, label %bb.fz, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307, !prof !84

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xq) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307:      ; preds = %bb.fz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i305, %bb.fv, %._crit_edge.i302
  %i.yg = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i308 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i.i.i1.i.i308, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312, label %bb.ga

bb.ga:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8 ; 4 uses
  %i.yj = load atomic i64, ptr %i.yi acquire, align 8 ; 2 uses
  %i.yk = icmp eq i64 %i.yj, 4294967297
  %i.yl = trunc i64 %i.yj to i32                  ; 2 uses
  br i1 %i.yk, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  store i32 0, ptr %i.yi, align 8, !tbaa !78
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yh, i64 12
  store i32 0, ptr %i.ym, align 4, !tbaa !80
  %i.yn = load ptr, ptr %i.yh, align 8, !tbaa !81
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yp = load ptr, ptr %i.yo, align 8
  call void %i.yp(ptr noundef nonnull align 8 dereferenceable(16) %i.yh) #17, !inline_history !392
  %i.yq = load ptr, ptr %i.yh, align 8, !tbaa !81
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  %i.ys = load ptr, ptr %i.yr, align 8
  call void %i.ys(ptr noundef nonnull align 8 dereferenceable(16) %i.yh) #17, !inline_history !392
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312

bb.gc:                                            ; preds = %bb.ga
  %i.yt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i309 = icmp eq i8 %i.yt, 0
  br i1 %.not.i.i.i.i.i2.i.i309, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.yu = add nsw i32 %i.yl, -1
  store i32 %i.yu, ptr %i.yi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310

bb.ge:                                            ; preds = %bb.gc
  %i.yv = atomicrmw volatile add ptr %i.yi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310: ; preds = %bb.ge, %bb.gd
  %.0.i.i.i.i.i.i4.i.i311 = phi i32 [ %i.yl, %bb.gd ], [ %i.yv, %bb.ge ]
  %i.yw = icmp eq i32 %.0.i.i.i.i.i.i4.i.i311, 1
  br i1 %i.yw, label %bb.gf, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312, !prof !84

bb.gf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yh) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312:    ; preds = %bb.gf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i310, %bb.gb, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  %i.yx = getelementptr inbounds nuw i8, ptr %21, i64 64
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i313 = icmp eq ptr %i.yy, null
  br i1 %.not.i.i.i.i.i48.i313, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317, label %bb.gg

bb.gg:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8 ; 4 uses
  %i.za = load atomic i64, ptr %i.yz acquire, align 8 ; 2 uses
  %i.zb = icmp eq i64 %i.za, 4294967297
  %i.zc = trunc i64 %i.za to i32                  ; 2 uses
  br i1 %i.zb, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  store i32 0, ptr %i.yz, align 8, !tbaa !78
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yy, i64 12
  store i32 0, ptr %i.zd, align 4, !tbaa !80
  %i.ze = load ptr, ptr %i.yy, align 8, !tbaa !81
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8
  call void %i.zg(ptr noundef nonnull align 8 dereferenceable(16) %i.yy) #17, !inline_history !391
  %i.zh = load ptr, ptr %i.yy, align 8, !tbaa !81
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  %i.zj = load ptr, ptr %i.zi, align 8
  call void %i.zj(ptr noundef nonnull align 8 dereferenceable(16) %i.yy) #17, !inline_history !391
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317

bb.gi:                                            ; preds = %bb.gg
  %i.zk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i314 = icmp eq i8 %i.zk, 0
  br i1 %.not.i.i.i.i.i.i49.i314, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.zl = add nsw i32 %i.zc, -1
  store i32 %i.zl, ptr %i.yz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315

bb.gk:                                            ; preds = %bb.gi
  %i.zm = atomicrmw volatile add ptr %i.yz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315: ; preds = %bb.gk, %bb.gj
  %.0.i.i.i.i.i.i.i51.i316 = phi i32 [ %i.zc, %bb.gj ], [ %i.zm, %bb.gk ]
  %i.zn = icmp eq i32 %.0.i.i.i.i.i.i.i51.i316, 1
  br i1 %i.zn, label %bb.gl, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317, !prof !84

bb.gl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yy) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317:    ; preds = %bb.gl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i315, %bb.gh, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i312
  %i.zo = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i318 = icmp eq ptr %i.zp, null
  br i1 %.not.i.i.i.i1.i53.i318, label %_ZN6duckdbL17TemplatedMarkJoinINS_9hugeint_tENS_17GreaterThanEqualsEEEvRNS_6VectorES4_mmPb.exit, label %bb.gm

bb.gm:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i317
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 8 ; 4 uses
  %i.zr = load atomic i64, ptr %i.zq acquire, align 8 ; 2 uses
  %i.zs = icmp eq i64 %i.zr, 4294967297
  %i.zt = trunc i64 %i.zr to i32                  ; 2 uses
  br i1 %i.zs, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  store i32 0, ptr %i.zq, align 8, !tbaa !78
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zp, i64 12
  store i32 0, ptr %i.zu, align 4, !tbaa !80
  %i.zv = load ptr, ptr %i.zp, align 8, !tbaa !81
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.zx = load ptr, ptr %i.zw, align 8
  call void %i.zx(ptr noundef nonnull align 8 dereferenceable(16) %i.zp) #17, !inline_history !392
  %i.zy = load ptr, ptr %i.zp, align 8, !tbaa !81
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 24
  %i.aaa = load ptr, ptr %i.zz, align 8
  call void %i.aaa(ptr noundef nonnull align 8 dereferenceable(16) %i.zp) #17, !inline_history !392
  br label %_ZN6duckdbL17TemplatedMarkJoinINS_9hugeint_tENS_17GreaterThanEqualsEEEvRNS_6VectorES4_mmPb.exit

bb.go:                                            ; preds = %bb.gm
  %i.aab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i319 = icmp eq i8 %i.aab, 0
  br i1 %.not.i.i.i.i.i2.i54.i319, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aac = add nsw i32 %i.zt, -1
  store i32 %i.aac, ptr %i.zq, align 8, !tbaa !3
end_hunk_6
begin_hunk_7_@_ZN6duckdbL14MarkJoinSwitchINS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb:bb.a

bb.mt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i583
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avw) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585:    ; preds = %bb.mt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i583, %bb.mp, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i580
  %i.awm = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i586 = icmp eq ptr %i.awn, null
  br i1 %.not.i.i.i.i1.i53.i586, label %_ZN6duckdbL17TemplatedMarkJoinImNS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb.exit, label %bb.mu

bb.mu:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 8 ; 4 uses
  %i.awp = load atomic i64, ptr %i.awo acquire, align 8 ; 2 uses
  %i.awq = icmp eq i64 %i.awp, 4294967297
  %i.awr = trunc i64 %i.awp to i32                ; 2 uses
  br i1 %i.awq, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  store i32 0, ptr %i.awo, align 8, !tbaa !78
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awn, i64 12
  store i32 0, ptr %i.aws, align 4, !tbaa !80
  %i.awt = load ptr, ptr %i.awn, align 8, !tbaa !81
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.awv = load ptr, ptr %i.awu, align 8
  call void %i.awv(ptr noundef nonnull align 8 dereferenceable(16) %i.awn) #17, !inline_history !408
  %i.aww = load ptr, ptr %i.awn, align 8, !tbaa !81
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 24
  %i.awy = load ptr, ptr %i.awx, align 8
  call void %i.awy(ptr noundef nonnull align 8 dereferenceable(16) %i.awn) #17, !inline_history !408
  br label %_ZN6duckdbL17TemplatedMarkJoinImNS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.mw:                                            ; preds = %bb.mu
  %i.awz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i587 = icmp eq i8 %i.awz, 0
  br i1 %.not.i.i.i.i.i2.i54.i587, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.axa = add nsw i32 %i.awr, -1
  store i32 %i.axa, ptr %i.awo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588

bb.my:                                            ; preds = %bb.mw
  %i.axb = atomicrmw volatile add ptr %i.awo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588: ; preds = %bb.my, %bb.mx
  %.0.i.i.i.i.i.i4.i56.i589 = phi i32 [ %i.awr, %bb.mx ], [ %i.axb, %bb.my ]
  %i.axc = icmp eq i32 %.0.i.i.i.i.i.i4.i56.i589, 1
  br i1 %i.axc, label %bb.mz, label %_ZN6duckdbL17TemplatedMarkJoinImNS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb.exit, !prof !84

bb.mz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awn) #17
  br label %_ZN6duckdbL17TemplatedMarkJoinImNS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb.exit

bb.na:                                            ; preds = %bb.lr
  %i.axd = landingpad { ptr, i32 }
          cleanup
  br label %bb.nf

bb.nb:                                            ; preds = %bb.lt, %bb.ls
  %i.axe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.nc:                                            ; preds = %bb.lu
  %i.axf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.nd:                                            ; preds = %bb.lv
  %i.axg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc, %bb.nb
  %.pn.pn.pn.pn.pn.pn.i546 = phi { ptr, i32 } [ %i.axe, %bb.nb ], [ %i.axf, %bb.nc ], [ %i.axg, %bb.nd ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %14) #17
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.na
  %.pn.pn.pn.pn.pn.pn.pn.i545 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i546, %bb.ne ], [ %i.axd, %bb.na ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %common.resume

_ZN6duckdbL17TemplatedMarkJoinImNS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i585, %bb.mv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i588, %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.ub

bb.ng:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.nh unwind label %bb.op

bb.nh:                                            ; preds = %bb.ng
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.ni unwind label %bb.oq

bb.ni:                                            ; preds = %bb.nh
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.nj unwind label %bb.oq

bb.nj:                                            ; preds = %bb.ni
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10uhugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.nk unwind label %bb.or

bb.nk:                                            ; preds = %bb.nj
  %i.axh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !95
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10uhugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i unwind label %bb.os

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i: ; preds = %bb.nk
  %i.axj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !95
  %.not.i621 = icmp eq i64 %2, 0
  br i1 %.not.i621, label %._crit_edge.i641, label %.lr.ph71.i622

.lr.ph71.i622:                                    ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i
  %i.axl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.not76.i623 = icmp eq i64 %3, 0
  %i.axm = getelementptr inbounds nuw i8, ptr %12, i64 16
  br i1 %.not76.i623, label %._crit_edge.i641, label %.lr.ph71.split.us.i624

.lr.ph71.split.us.i624:                           ; preds = %.lr.ph71.i622, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639
  %.03669.us.i625 = phi i64 [ %i.ayt, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639 ], [ 0, %.lr.ph71.i622 ] ; 4 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %4, i64 %.03669.us.i625 ; 2 uses
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !72, !range !74, !noundef !75
  %i.axp = trunc nuw i8 %i.axo to i1
  br i1 %i.axp, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, label %bb.nl

bb.nl:                                            ; preds = %.lr.ph71.split.us.i624
  %i.axq = load ptr, ptr %11, align 8, !tbaa !127
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i626 = icmp eq ptr %i.axr, null
  br i1 %.not.i.us.i626, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %.03669.us.i625
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !3
  %i.axu = zext i32 %i.axt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627: ; preds = %bb.nm, %bb.nl
  %i.axv = phi i64 [ %i.axu, %bb.nm ], [ %.03669.us.i625, %bb.nl ] ; 3 uses
  %i.axw = load ptr, ptr %i.axl, align 8, !tbaa !128 ; 2 uses
  %.not.i58.us.i628 = icmp eq ptr %i.axw, null
  br i1 %.not.i58.us.i628, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630, label %bb.nn

bb.nn:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627
  %i.axx = lshr i64 %i.axv, 6
  %i.axy = and i64 %i.axv, 63
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr %i.axw, i64 %i.axx
  %i.aya = load i64, ptr %i.axz, align 8, !tbaa !7
  %i.ayb = shl nuw i64 1, %i.axy
  %i.ayc = and i64 %i.aya, %i.ayb
  %.not.us.i629 = icmp eq i64 %i.ayc, 0
  br i1 %.not.us.i629, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630

bb.no:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661
  %.03568.us.i631 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630 ], [ %i.ays, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661 ] ; 3 uses
  %i.ayd = load ptr, ptr %12, align 8, !tbaa !127
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i632 = icmp eq ptr %i.aye, null
  br i1 %.not.i59.us.i632, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %.03568.us.i631
  %i.ayg = load i32, ptr %i.ayf, align 4, !tbaa !3
  %i.ayh = zext i32 %i.ayg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633: ; preds = %bb.np, %bb.no
  %i.ayi = phi i64 [ %i.ayh, %bb.np ], [ %.03568.us.i631, %bb.no ] ; 3 uses
  %i.ayj = load ptr, ptr %i.axm, align 8, !tbaa !128 ; 2 uses
  %.not.i61.us.i634 = icmp eq ptr %i.ayj, null
  br i1 %.not.i61.us.i634, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633
  %i.ayk = lshr i64 %i.ayi, 6
  %i.ayl = and i64 %i.ayi, 63
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr %i.ayj, i64 %i.ayk
  %i.ayn = load i64, ptr %i.aym, align 8, !tbaa !7
  %i.ayo = shl nuw i64 1, %i.ayl
  %i.ayp = and i64 %i.ayn, %i.ayo
  %.not67.us.i636 = icmp eq i64 %i.ayp, 0
  br i1 %.not67.us.i636, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.i633
  %i.ayq = getelementptr inbounds nuw [16 x i8], ptr %i.axk, i64 %i.ayi
  %i.ayr = invoke noundef zeroext i1 @_ZNK6duckdb10uhugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ayq, ptr noundef nonnull align 8 dereferenceable(16) %i.ayu)
          to label %bb.nq unwind label %.split.us.i638

bb.nq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637
  br i1 %i.ayr, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661, label %34

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661: ; preds = %bb.nq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.us.i635
  %i.ays = add nuw i64 %.03568.us.i631, 1         ; 2 uses
  %exitcond.not.i662 = icmp eq i64 %i.ays, %3
  br i1 %exitcond.not.i662, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, label %bb.no, !llvm.loop !409

34:                                               ; preds = %bb.nq
  store i8 1, ptr %i.axn, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i661, %34, %bb.nn, %.lr.ph71.split.us.i624
  %i.ayt = add nuw i64 %.03669.us.i625, 1         ; 2 uses
  %exitcond79.not.i640 = icmp eq i64 %i.ayt, %2
  br i1 %exitcond79.not.i640, label %._crit_edge.i641, label %.lr.ph71.split.us.i624, !llvm.loop !410

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i630: ; preds = %bb.nn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i627
  %i.ayu = getelementptr inbounds nuw [16 x i8], ptr %i.axi, i64 %i.axv
  br label %bb.no

.split.us.i638:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i637
  %i.ayv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

._crit_edge.i641:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.us.i639, %.lr.ph71.i622, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit47.i
  %i.ayw = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i642 = icmp eq ptr %i.ayx, null
  br i1 %.not.i.i.i.i.i.i642, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646, label %bb.nr

bb.nr:                                            ; preds = %._crit_edge.i641
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8 ; 4 uses
  %i.ayz = load atomic i64, ptr %i.ayy acquire, align 8 ; 2 uses
  %i.aza = icmp eq i64 %i.ayz, 4294967297
  %i.azb = trunc i64 %i.ayz to i32                ; 2 uses
  br i1 %i.aza, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %bb.nr
  store i32 0, ptr %i.ayy, align 8, !tbaa !78
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayx, i64 12
  store i32 0, ptr %i.azc, align 4, !tbaa !80
  %i.azd = load ptr, ptr %i.ayx, align 8, !tbaa !81
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 16
  %i.azf = load ptr, ptr %i.aze, align 8
  call void %i.azf(ptr noundef nonnull align 8 dereferenceable(16) %i.ayx) #17, !inline_history !411
  %i.azg = load ptr, ptr %i.ayx, align 8, !tbaa !81
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 24
  %i.azi = load ptr, ptr %i.azh, align 8
  call void %i.azi(ptr noundef nonnull align 8 dereferenceable(16) %i.ayx) #17, !inline_history !411
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646

bb.nt:                                            ; preds = %bb.nr
  %i.azj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i643 = icmp eq i8 %i.azj, 0
  br i1 %.not.i.i.i.i.i.i.i643, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.azk = add nsw i32 %i.azb, -1
  store i32 %i.azk, ptr %i.ayy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644

bb.nv:                                            ; preds = %bb.nt
  %i.azl = atomicrmw volatile add ptr %i.ayy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644: ; preds = %bb.nv, %bb.nu
  %.0.i.i.i.i.i.i.i.i645 = phi i32 [ %i.azb, %bb.nu ], [ %i.azl, %bb.nv ]
  %i.azm = icmp eq i32 %.0.i.i.i.i.i.i.i.i645, 1
  br i1 %i.azm, label %bb.nw, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646, !prof !84

bb.nw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ayx) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646:      ; preds = %bb.nw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i644, %bb.ns, %._crit_edge.i641
  %i.azn = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i647 = icmp eq ptr %i.azo, null
  br i1 %.not.i.i.i.i1.i.i647, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651, label %bb.nx

bb.nx:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 8 ; 4 uses
  %i.azq = load atomic i64, ptr %i.azp acquire, align 8 ; 2 uses
  %i.azr = icmp eq i64 %i.azq, 4294967297
  %i.azs = trunc i64 %i.azq to i32                ; 2 uses
  br i1 %i.azr, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  store i32 0, ptr %i.azp, align 8, !tbaa !78
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azo, i64 12
  store i32 0, ptr %i.azt, align 4, !tbaa !80
  %i.azu = load ptr, ptr %i.azo, align 8, !tbaa !81
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 16
  %i.azw = load ptr, ptr %i.azv, align 8
  call void %i.azw(ptr noundef nonnull align 8 dereferenceable(16) %i.azo) #17, !inline_history !412
  %i.azx = load ptr, ptr %i.azo, align 8, !tbaa !81
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 24
  %i.azz = load ptr, ptr %i.azy, align 8
  call void %i.azz(ptr noundef nonnull align 8 dereferenceable(16) %i.azo) #17, !inline_history !412
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651

bb.nz:                                            ; preds = %bb.nx
  %i.baa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i648 = icmp eq i8 %i.baa, 0
  br i1 %.not.i.i.i.i.i2.i.i648, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.bab = add nsw i32 %i.azs, -1
  store i32 %i.bab, ptr %i.azp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649

bb.ob:                                            ; preds = %bb.nz
  %i.bac = atomicrmw volatile add ptr %i.azp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649: ; preds = %bb.ob, %bb.oa
  %.0.i.i.i.i.i.i4.i.i650 = phi i32 [ %i.azs, %bb.oa ], [ %i.bac, %bb.ob ]
  %i.bad = icmp eq i32 %.0.i.i.i.i.i.i4.i.i650, 1
  br i1 %i.bad, label %bb.oc, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651, !prof !84

bb.oc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.azo) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651:    ; preds = %bb.oc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i649, %bb.ny, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i646
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.bae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i652 = icmp eq ptr %i.baf, null
  br i1 %.not.i.i.i.i.i48.i652, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656, label %bb.od

bb.od:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 8 ; 4 uses
  %i.bah = load atomic i64, ptr %i.bag acquire, align 8 ; 2 uses
  %i.bai = icmp eq i64 %i.bah, 4294967297
  %i.baj = trunc i64 %i.bah to i32                ; 2 uses
  br i1 %i.bai, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  store i32 0, ptr %i.bag, align 8, !tbaa !78
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baf, i64 12
  store i32 0, ptr %i.bak, align 4, !tbaa !80
  %i.bal = load ptr, ptr %i.baf, align 8, !tbaa !81
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 16
  %i.ban = load ptr, ptr %i.bam, align 8
  call void %i.ban(ptr noundef nonnull align 8 dereferenceable(16) %i.baf) #17, !inline_history !411
  %i.bao = load ptr, ptr %i.baf, align 8, !tbaa !81
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 24
  %i.baq = load ptr, ptr %i.bap, align 8
  call void %i.baq(ptr noundef nonnull align 8 dereferenceable(16) %i.baf) #17, !inline_history !411
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656

bb.of:                                            ; preds = %bb.od
  %i.bar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i653 = icmp eq i8 %i.bar, 0
  br i1 %.not.i.i.i.i.i.i49.i653, label %bb.oh, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.bas = add nsw i32 %i.baj, -1
  store i32 %i.bas, ptr %i.bag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654

bb.oh:                                            ; preds = %bb.of
  %i.bat = atomicrmw volatile add ptr %i.bag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654: ; preds = %bb.oh, %bb.og
  %.0.i.i.i.i.i.i.i51.i655 = phi i32 [ %i.baj, %bb.og ], [ %i.bat, %bb.oh ]
  %i.bau = icmp eq i32 %.0.i.i.i.i.i.i.i51.i655, 1
  br i1 %i.bau, label %bb.oi, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656, !prof !84

bb.oi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.baf) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656:    ; preds = %bb.oi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i654, %bb.oe, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i651
  %i.bav = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i657 = icmp eq ptr %i.baw, null
  br i1 %.not.i.i.i.i1.i53.i657, label %_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_17GreaterThanEqualsEEEvRNS_6VectorES4_mmPb.exit, label %bb.oj

bb.oj:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i656
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 8 ; 4 uses
  %i.bay = load atomic i64, ptr %i.bax acquire, align 8 ; 2 uses
  %i.baz = icmp eq i64 %i.bay, 4294967297
  %i.bba = trunc i64 %i.bay to i32                ; 2 uses
  br i1 %i.baz, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  store i32 0, ptr %i.bax, align 8, !tbaa !78
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baw, i64 12
  store i32 0, ptr %i.bbb, align 4, !tbaa !80
  %i.bbc = load ptr, ptr %i.baw, align 8, !tbaa !81
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 16
  %i.bbe = load ptr, ptr %i.bbd, align 8
  call void %i.bbe(ptr noundef nonnull align 8 dereferenceable(16) %i.baw) #17, !inline_history !412
  %i.bbf = load ptr, ptr %i.baw, align 8, !tbaa !81
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbf, i64 24
  %i.bbh = load ptr, ptr %i.bbg, align 8
  call void %i.bbh(ptr noundef nonnull align 8 dereferenceable(16) %i.baw) #17, !inline_history !412
  br label %_ZN6duckdbL17TemplatedMarkJoinINS_10uhugeint_tENS_17GreaterThanEqualsEEEvRNS_6VectorES4_mmPb.exit

bb.ol:                                            ; preds = %bb.oj
  %i.bbi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i658 = icmp eq i8 %i.bbi, 0
  br i1 %.not.i.i.i.i.i2.i54.i658, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.bbj = add nsw i32 %i.bba, -1
  store i32 %i.bbj, ptr %i.bax, align 8, !tbaa !3
end_hunk_7
begin_hunk_8_@_ZN6duckdbL14MarkJoinSwitchINS_17GreaterThanEqualsEEEvRNS_6VectorES3_mmPb:bb.a
  %i.bko = load ptr, ptr %i.bkn, align 8
  %.fr.i754 = freeze ptr %i.bko                   ; 3 uses
  %.not.i58.i755 = icmp eq ptr %.fr.i754, null    ; 2 uses
  %.not90.i = icmp eq i64 %3, 0
  %i.bkp = load ptr, ptr %6, align 8              ; 2 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bkr = load ptr, ptr %i.bkq, align 8
  %.fr91.i = freeze ptr %i.bkr                    ; 3 uses
  br i1 %.not90.i, label %._crit_edge.i763, label %.lr.ph74.split.us.i

.lr.ph74.split.us.i:                              ; preds = %.lr.ph74.i
  %.not.i61.i756 = icmp eq ptr %.fr91.i, null
  br i1 %.not.i61.i756, label %.lr.ph74.split.us.split.us.i, label %.lr.ph74.split.us.split.i

.lr.ph74.split.us.split.us.i:                     ; preds = %.lr.ph74.split.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790
  %.03672.us.us.i = phi i64 [ %i.blg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790 ], [ 0, %.lr.ph74.split.us.i ] ; 4 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %4, i64 %.03672.us.us.i ; 2 uses
  %i.bkt = load i8, ptr %i.bks, align 1, !tbaa !72, !range !74, !noundef !75
  %i.bku = trunc nuw i8 %i.bkt to i1
  br i1 %i.bku, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790, label %bb.se

bb.se:                                            ; preds = %.lr.ph74.split.us.split.us.i
  %i.bkv = load ptr, ptr %i.bkm, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.us.i784 = icmp eq ptr %i.bkv, null
  br i1 %.not.i.us.us.i784, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %.03672.us.us.i
  %i.bkx = load i32, ptr %i.bkw, align 4, !tbaa !3
  %i.bky = zext i32 %i.bkx to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785: ; preds = %bb.sf, %bb.se
  %i.bkz = phi i64 [ %i.bky, %bb.sf ], [ %.03672.us.us.i, %bb.se ] ; 3 uses
  br i1 %.not.i58.i755, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787, label %bb.sg

bb.sg:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785
  %i.bla = lshr i64 %i.bkz, 6
  %i.blb = and i64 %i.bkz, 63
  %i.blc = getelementptr inbounds nuw [8 x i8], ptr %.fr.i754, i64 %i.bla
  %i.bld = load i64, ptr %i.blc, align 8, !tbaa !7
  %i.ble = shl nuw i64 1, %i.blb
  %i.blf = and i64 %i.bld, %i.ble
  %.not.us.us.i786 = icmp eq i64 %i.blf, 0
  br i1 %.not.us.us.i786, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790: ; preds = %.thread.us.us.us.i, %.thread.us.us.us.us.i, %.split.us.us.us.i789, %bb.sg, %.lr.ph74.split.us.split.us.i
  %i.blg = add nuw i64 %.03672.us.us.i, 1         ; 2 uses
  %exitcond100.not.i = icmp eq i64 %i.blg, %2
  br i1 %exitcond100.not.i, label %._crit_edge.i763, label %.lr.ph74.split.us.split.us.i, !llvm.loop !421

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787: ; preds = %bb.sg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i785
  %i.blh = load ptr, ptr %i.bkp, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.us.i788 = icmp eq ptr %i.blh, null
  %i.bli = getelementptr inbounds nuw [16 x i8], ptr %i.bkj, i64 %i.bkz ; 3 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bli, i64 4 ; 3 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bli, i64 8 ; 2 uses
  %i.bll = load i32, ptr %i.bli, align 8, !tbaa !70 ; 5 uses
  %.0.copyload.i11.i.i.i.i.i.us.us.us.i = load i32, ptr %i.blj, align 4 ; 3 uses
  %i.blm = call i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.us.us.us.i) ; 2 uses
  %i.bln = icmp ult i32 %i.bll, 13                ; 2 uses
  br i1 %.not.i59.us.us.i788, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.i791, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.i791: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787, %.thread.us.us.us.us.i
  %.03571.us.us.us.us.i = phi i64 [ %i.bmf, %.thread.us.us.us.us.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787 ] ; 2 uses
  %i.blo = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %.03571.us.us.us.us.i ; 3 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.us.us.us.us.i = load i32, ptr %i.blp, align 1 ; 2 uses
  %.not.i.i.i.i.i64.us.us.us.us.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.us.us.us.us.i, %.0.copyload.i11.i.i.i.i.i.us.us.us.i
  br i1 %.not.i.i.i.i.i64.us.us.us.us.i, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.i791
  %i.blq = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.us.us.us.us.i)
  %i.blr = icmp ugt i32 %i.blq, %i.blm
  br i1 %i.blr, label %.thread.us.us.us.us.i, label %.split.us.us.us.i789

bb.si:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.i791
  %i.bls = load i32, ptr %i.blo, align 8, !tbaa !70 ; 3 uses
  %i.blt = icmp ult i32 %i.bll, %i.bls
  %.sroa.speculated.i.i.i.i.i.us.us.us.us.i = call i32 @llvm.umin.i32(i32 %i.bll, i32 %i.bls)
  %i.blu = icmp ult i32 %i.bls, 13
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blo, i64 8
  %i.blw = load ptr, ptr %i.blv, align 8
  %i.blx = select i1 %i.blu, ptr %i.blp, ptr %i.blw
  %i.bly = load ptr, ptr %i.blk, align 8
  %i.blz = select i1 %i.bln, ptr %i.blj, ptr %i.bly
  %i.bma = zext i32 %.sroa.speculated.i.i.i.i.i.us.us.us.us.i to i64
  %i.bmb = call i32 @memcmp(ptr noundef %i.blx, ptr noundef %i.blz, i64 noundef %i.bma) #20 ; 2 uses
  %i.bmc = icmp sgt i32 %i.bmb, 0
  %i.bmd = icmp eq i32 %i.bmb, 0
  %i.bme = select i1 %i.bmd, i1 %i.blt, i1 false
  %or.cond.i = select i1 %i.bmc, i1 true, i1 %i.bme
  br i1 %or.cond.i, label %.thread.us.us.us.us.i, label %.split.us.us.us.i789

.thread.us.us.us.us.i:                            ; preds = %bb.si, %bb.sh
  %i.bmf = add nuw i64 %.03571.us.us.us.us.i, 1   ; 2 uses
  %exitcond99.not.i = icmp eq i64 %i.bmf, %3
  br i1 %exitcond99.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.us.i791, !llvm.loop !422

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787, %.thread.us.us.us.i
  %.03571.us.us.us.i = phi i64 [ %i.bna, %.thread.us.us.us.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.us.i787 ] ; 2 uses
  %i.bmg = getelementptr inbounds nuw [4 x i8], ptr %i.blh, i64 %.03571.us.us.us.i
  %i.bmh = load i32, ptr %i.bmg, align 4, !tbaa !3
  %i.bmi = zext i32 %i.bmh to i64
  %i.bmj = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %i.bmi ; 3 uses
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmj, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.us.us.us.i = load i32, ptr %i.bmk, align 1 ; 2 uses
  %.not.i.i.i.i.i64.us.us.us.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.us.us.us.i, %.0.copyload.i11.i.i.i.i.i.us.us.us.i
  br i1 %.not.i.i.i.i.i64.us.us.us.i, label %bb.sk, label %bb.sj

bb.sj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.i
  %i.bml = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.us.us.us.i)
  %i.bmm = icmp ugt i32 %i.bml, %i.blm
  br i1 %i.bmm, label %.thread.us.us.us.i, label %.split.us.us.us.i789

bb.sk:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.i
  %i.bmn = load i32, ptr %i.bmj, align 8, !tbaa !70 ; 3 uses
  %i.bmo = icmp ult i32 %i.bll, %i.bmn
  %.sroa.speculated.i.i.i.i.i.us.us.us.i = call i32 @llvm.umin.i32(i32 %i.bll, i32 %i.bmn)
  %i.bmp = icmp ult i32 %i.bmn, 13
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmj, i64 8
  %i.bmr = load ptr, ptr %i.bmq, align 8
  %i.bms = select i1 %i.bmp, ptr %i.bmk, ptr %i.bmr
  %i.bmt = load ptr, ptr %i.blk, align 8
  %i.bmu = select i1 %i.bln, ptr %i.blj, ptr %i.bmt
  %i.bmv = zext i32 %.sroa.speculated.i.i.i.i.i.us.us.us.i to i64
  %i.bmw = call i32 @memcmp(ptr noundef %i.bms, ptr noundef %i.bmu, i64 noundef %i.bmv) #20 ; 2 uses
  %i.bmx = icmp sgt i32 %i.bmw, 0
  %i.bmy = icmp eq i32 %i.bmw, 0
  %i.bmz = select i1 %i.bmy, i1 %i.bmo, i1 false
  %or.cond123.i = select i1 %i.bmx, i1 true, i1 %i.bmz
  br i1 %or.cond123.i, label %.thread.us.us.us.i, label %.split.us.us.us.i789

.thread.us.us.us.i:                               ; preds = %bb.sk, %bb.sj
  %i.bna = add nuw i64 %.03571.us.us.us.i, 1      ; 2 uses
  %exitcond98.not.i = icmp eq i64 %i.bna, %3
  br i1 %exitcond98.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us.us.us.i, !llvm.loop !422

.split.us.us.us.i789:                             ; preds = %bb.sk, %bb.sj, %bb.si, %bb.sh
  store i8 1, ptr %i.bks, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790

.lr.ph74.split.us.split.i:                        ; preds = %.lr.ph74.split.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i
  %.03672.us.i = phi i64 [ %i.bot, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i ], [ 0, %.lr.ph74.split.us.i ] ; 4 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %4, i64 %.03672.us.i ; 2 uses
  %i.bnc = load i8, ptr %i.bnb, align 1, !tbaa !72, !range !74, !noundef !75
  %i.bnd = trunc nuw i8 %i.bnc to i1
  br i1 %i.bnd, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i, label %bb.sl

bb.sl:                                            ; preds = %.lr.ph74.split.us.split.i
  %i.bne = load ptr, ptr %i.bkm, align 8, !tbaa !110 ; 2 uses
  %.not.i.us.i757 = icmp eq ptr %i.bne, null
  br i1 %.not.i.us.i757, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %i.bne, i64 %.03672.us.i
  %i.bng = load i32, ptr %i.bnf, align 4, !tbaa !3
  %i.bnh = zext i32 %i.bng to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758: ; preds = %bb.sm, %bb.sl
  %i.bni = phi i64 [ %i.bnh, %bb.sm ], [ %.03672.us.i, %bb.sl ] ; 3 uses
  br i1 %.not.i58.i755, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760, label %bb.sn

bb.sn:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758
  %i.bnj = lshr i64 %i.bni, 6
  %i.bnk = and i64 %i.bni, 63
  %i.bnl = getelementptr inbounds nuw [8 x i8], ptr %.fr.i754, i64 %i.bnj
  %i.bnm = load i64, ptr %i.bnl, align 8, !tbaa !7
  %i.bnn = shl nuw i64 1, %i.bnk
  %i.bno = and i64 %i.bnm, %i.bnn
  %.not.us.i759 = icmp eq i64 %i.bno, 0
  br i1 %.not.us.i759, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760, %.thread.us83.i
  %.03571.us75.i = phi i64 [ %i.bos, %.thread.us83.i ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760 ] ; 2 uses
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %.03571.us75.i
  %i.bnq = load i32, ptr %i.bnp, align 4, !tbaa !3
  %i.bnr = zext i32 %i.bnq to i64                 ; 3 uses
  %i.bns = lshr i64 %i.bnr, 6
  %i.bnt = and i64 %i.bnr, 63
  %i.bnu = getelementptr inbounds nuw [8 x i8], ptr %.fr91.i, i64 %i.bns
  %i.bnv = load i64, ptr %i.bnu, align 8, !tbaa !7
  %i.bnw = shl nuw i64 1, %i.bnt
  %i.bnx = and i64 %i.bnw, %i.bnv
  %.not70.us.i = icmp eq i64 %i.bnx, 0
  br i1 %.not70.us.i, label %.thread.us83.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i
  %i.bny = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %i.bnr ; 3 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.us77.i = load i32, ptr %i.bnz, align 1 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i.us78.i = load i32, ptr %i.bow, align 1 ; 2 uses
  %.not.i.i.i.i.i64.us79.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.us77.i, %.0.copyload.i11.i.i.i.i.i.us78.i
  br i1 %.not.i.i.i.i.i64.us79.i, label %bb.sp, label %bb.so

bb.so:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762
  %i.boa = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.us77.i)
  %i.bob = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.us78.i)
  %i.boc = icmp ugt i32 %i.boa, %i.bob
  br i1 %i.boc, label %.thread.us83.i, label %.split.us83.i

bb.sp:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762
  %i.bod = load i32, ptr %i.bov, align 8, !tbaa !70 ; 3 uses
  %i.boe = load i32, ptr %i.bny, align 8, !tbaa !70 ; 3 uses
  %i.bof = icmp ult i32 %i.bod, %i.boe
  %.sroa.speculated.i.i.i.i.i.us80.i = call i32 @llvm.umin.i32(i32 %i.bod, i32 %i.boe)
  %i.bog = icmp ult i32 %i.boe, 13
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bny, i64 8
  %i.boi = load ptr, ptr %i.boh, align 8
  %i.boj = select i1 %i.bog, ptr %i.bnz, ptr %i.boi
  %i.bok = icmp ult i32 %i.bod, 13
  %i.bol = load ptr, ptr %i.box, align 8
  %i.bom = select i1 %i.bok, ptr %i.bow, ptr %i.bol
  %i.bon = zext i32 %.sroa.speculated.i.i.i.i.i.us80.i to i64
  %i.boo = call i32 @memcmp(ptr noundef %i.boj, ptr noundef %i.bom, i64 noundef %i.bon) #20 ; 2 uses
  %i.bop = icmp sgt i32 %i.boo, 0
  %i.boq = icmp eq i32 %i.boo, 0
  %i.bor = and i1 %i.bof, %i.boq
  %or.cond125.i = or i1 %i.bop, %i.bor
  br i1 %or.cond125.i, label %.thread.us83.i, label %.split.us83.i

.thread.us83.i:                                   ; preds = %bb.sp, %bb.so, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i
  %i.bos = add nuw i64 %.03571.us75.i, 1          ; 2 uses
  %exitcond.not.i783 = icmp eq i64 %i.bos, %3
  br i1 %exitcond.not.i783, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i, !llvm.loop !422

.split.us83.i:                                    ; preds = %bb.so, %bb.sp, %bb.sq, %bb.sr
  store i8 1, ptr %i.bnb, align 1, !tbaa !72
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i: ; preds = %.thread.us83.i, %.thread.us83.i.us, %.split.us83.i, %bb.sn, %.lr.ph74.split.us.split.i
  %i.bot = add nuw i64 %.03672.us.i, 1            ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.bot, %2
  br i1 %exitcond97.not.i, label %._crit_edge.i763, label %.lr.ph74.split.us.split.i, !llvm.loop !421

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760: ; preds = %bb.sn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i758
  %i.bou = load ptr, ptr %i.bkp, align 8, !tbaa !110 ; 2 uses
  %.not.i59.us.i761 = icmp eq ptr %i.bou, null
  %i.bov = getelementptr inbounds nuw [16 x i8], ptr %i.bkj, i64 %i.bni ; 4 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 4 ; 4 uses
  %i.box = getelementptr inbounds nuw i8, ptr %i.bov, i64 8 ; 2 uses
  br i1 %.not.i59.us.i761, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760, %.thread.us83.i.us
  %.03571.us75.i.us = phi i64 [ %i.bpy, %.thread.us83.i.us ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us.i760 ] ; 4 uses
  %i.boy = lshr i64 %.03571.us75.i.us, 6
  %i.boz = and i64 %.03571.us75.i.us, 63
  %i.bpa = getelementptr inbounds nuw [8 x i8], ptr %.fr91.i, i64 %i.boy
  %i.bpb = load i64, ptr %i.bpa, align 8, !tbaa !7
  %i.bpc = shl nuw i64 1, %i.boz
  %i.bpd = and i64 %i.bpc, %i.bpb
  %.not70.us.i.us = icmp eq i64 %i.bpd, 0
  br i1 %.not70.us.i.us, label %.thread.us83.i.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i.us
  %i.bpe = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %.03571.us75.i.us ; 3 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 4 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.us77.i.us = load i32, ptr %i.bpf, align 1 ; 2 uses
  %.0.copyload.i11.i.i.i.i.i.us78.i.us = load i32, ptr %i.bow, align 1 ; 2 uses
  %.not.i.i.i.i.i64.us79.i.us = icmp eq i32 %.0.copyload.i.i.i.i.i.i.us77.i.us, %.0.copyload.i11.i.i.i.i.i.us78.i.us
  br i1 %.not.i.i.i.i.i64.us79.i.us, label %bb.sr, label %bb.sq

bb.sq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us
  %i.bpg = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.us77.i.us)
  %i.bph = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.us78.i.us)
  %i.bpi = icmp ugt i32 %i.bpg, %i.bph
  br i1 %i.bpi, label %.thread.us83.i.us, label %.split.us83.i

bb.sr:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit63.thread.us.i762.us
  %i.bpj = load i32, ptr %i.bov, align 8, !tbaa !70 ; 3 uses
  %i.bpk = load i32, ptr %i.bpe, align 8, !tbaa !70 ; 3 uses
  %i.bpl = icmp ult i32 %i.bpj, %i.bpk
  %.sroa.speculated.i.i.i.i.i.us80.i.us = call i32 @llvm.umin.i32(i32 %i.bpj, i32 %i.bpk)
  %i.bpm = icmp ult i32 %i.bpk, 13
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpe, i64 8
  %i.bpo = load ptr, ptr %i.bpn, align 8
  %i.bpp = select i1 %i.bpm, ptr %i.bpf, ptr %i.bpo
  %i.bpq = icmp ult i32 %i.bpj, 13
  %i.bpr = load ptr, ptr %i.box, align 8
  %i.bps = select i1 %i.bpq, ptr %i.bow, ptr %i.bpr
  %i.bpt = zext i32 %.sroa.speculated.i.i.i.i.i.us80.i.us to i64
  %i.bpu = call i32 @memcmp(ptr noundef %i.bpp, ptr noundef %i.bps, i64 noundef %i.bpt) #20 ; 2 uses
  %i.bpv = icmp sgt i32 %i.bpu, 0
  %i.bpw = icmp eq i32 %i.bpu, 0
  %i.bpx = and i1 %i.bpl, %i.bpw
  %or.cond125.i.us = or i1 %i.bpv, %i.bpx
  br i1 %or.cond125.i.us, label %.thread.us83.i.us, label %.split.us83.i

.thread.us83.i.us:                                ; preds = %bb.sr, %bb.sq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i.us
  %i.bpy = add nuw i64 %.03571.us75.i.us, 1       ; 2 uses
  %exitcond.not.i783.us = icmp eq i64 %i.bpy, %3
  br i1 %exitcond.not.i783.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.us76.i.us, !llvm.loop !422

._crit_edge.i763:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us84.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit..loopexit_crit_edge.split.us.us.us.i790, %.lr.ph74.i, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_8string_tEEEPKT_RKS0_.exit47.i
  %i.bpz = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i.i764 = icmp eq ptr %i.bqa, null
  br i1 %.not.i.i.i.i.i.i764, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768, label %bb.ss

bb.ss:                                            ; preds = %._crit_edge.i763
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bqa, i64 8 ; 4 uses
  %i.bqc = load atomic i64, ptr %i.bqb acquire, align 8 ; 2 uses
  %i.bqd = icmp eq i64 %i.bqc, 4294967297
  %i.bqe = trunc i64 %i.bqc to i32                ; 2 uses
  br i1 %i.bqd, label %bb.st, label %bb.su

bb.st:                                            ; preds = %bb.ss
  store i32 0, ptr %i.bqb, align 8, !tbaa !78
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqa, i64 12
  store i32 0, ptr %i.bqf, align 4, !tbaa !80
  %i.bqg = load ptr, ptr %i.bqa, align 8, !tbaa !81
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqg, i64 16
  %i.bqi = load ptr, ptr %i.bqh, align 8
  call void %i.bqi(ptr noundef nonnull align 8 dereferenceable(16) %i.bqa) #17, !inline_history !423
  %i.bqj = load ptr, ptr %i.bqa, align 8, !tbaa !81
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 24
  %i.bql = load ptr, ptr %i.bqk, align 8
  call void %i.bql(ptr noundef nonnull align 8 dereferenceable(16) %i.bqa) #17, !inline_history !423
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768

bb.su:                                            ; preds = %bb.ss
  %i.bqm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i.i765 = icmp eq i8 %i.bqm, 0
  br i1 %.not.i.i.i.i.i.i.i765, label %bb.sw, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %i.bqn = add nsw i32 %i.bqe, -1
  store i32 %i.bqn, ptr %i.bqb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766

bb.sw:                                            ; preds = %bb.su
  %i.bqo = atomicrmw volatile add ptr %i.bqb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766: ; preds = %bb.sw, %bb.sv
  %.0.i.i.i.i.i.i.i.i767 = phi i32 [ %i.bqe, %bb.sv ], [ %i.bqo, %bb.sw ]
  %i.bqp = icmp eq i32 %.0.i.i.i.i.i.i.i.i767, 1
  br i1 %i.bqp, label %bb.sx, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768, !prof !84

bb.sx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bqa) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768:      ; preds = %bb.sx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i766, %bb.st, %._crit_edge.i763
  %i.bqq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bqr = load ptr, ptr %i.bqq, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i.i769 = icmp eq ptr %i.bqr, null
  br i1 %.not.i.i.i.i1.i.i769, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773, label %bb.sy

bb.sy:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqr, i64 8 ; 4 uses
  %i.bqt = load atomic i64, ptr %i.bqs acquire, align 8 ; 2 uses
  %i.bqu = icmp eq i64 %i.bqt, 4294967297
  %i.bqv = trunc i64 %i.bqt to i32                ; 2 uses
  br i1 %i.bqu, label %bb.sz, label %bb.ta

bb.sz:                                            ; preds = %bb.sy
  store i32 0, ptr %i.bqs, align 8, !tbaa !78
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqr, i64 12
  store i32 0, ptr %i.bqw, align 4, !tbaa !80
  %i.bqx = load ptr, ptr %i.bqr, align 8, !tbaa !81
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 16
  %i.bqz = load ptr, ptr %i.bqy, align 8
  call void %i.bqz(ptr noundef nonnull align 8 dereferenceable(16) %i.bqr) #17, !inline_history !424
  %i.bra = load ptr, ptr %i.bqr, align 8, !tbaa !81
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bra, i64 24
  %i.brc = load ptr, ptr %i.brb, align 8
  call void %i.brc(ptr noundef nonnull align 8 dereferenceable(16) %i.bqr) #17, !inline_history !424
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773

bb.ta:                                            ; preds = %bb.sy
  %i.brd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i.i770 = icmp eq i8 %i.brd, 0
  br i1 %.not.i.i.i.i.i2.i.i770, label %bb.tc, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.bre = add nsw i32 %i.bqv, -1
  store i32 %i.bre, ptr %i.bqs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771

bb.tc:                                            ; preds = %bb.ta
  %i.brf = atomicrmw volatile add ptr %i.bqs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771: ; preds = %bb.tc, %bb.tb
  %.0.i.i.i.i.i.i4.i.i772 = phi i32 [ %i.bqv, %bb.tb ], [ %i.brf, %bb.tc ]
  %i.brg = icmp eq i32 %.0.i.i.i.i.i.i4.i.i772, 1
  br i1 %i.brg, label %bb.td, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773, !prof !84

bb.td:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bqr) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773:    ; preds = %bb.td, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i771, %bb.sz, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i768
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.brh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bri = load ptr, ptr %i.brh, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i.i48.i774 = icmp eq ptr %i.bri, null
  br i1 %.not.i.i.i.i.i48.i774, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778, label %bb.te

bb.te:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 8 ; 4 uses
  %i.brk = load atomic i64, ptr %i.brj acquire, align 8 ; 2 uses
  %i.brl = icmp eq i64 %i.brk, 4294967297
  %i.brm = trunc i64 %i.brk to i32                ; 2 uses
  br i1 %i.brl, label %bb.tf, label %bb.tg

bb.tf:                                            ; preds = %bb.te
  store i32 0, ptr %i.brj, align 8, !tbaa !78
  %i.brn = getelementptr inbounds nuw i8, ptr %i.bri, i64 12
  store i32 0, ptr %i.brn, align 4, !tbaa !80
  %i.bro = load ptr, ptr %i.bri, align 8, !tbaa !81
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 16
  %i.brq = load ptr, ptr %i.brp, align 8
  call void %i.brq(ptr noundef nonnull align 8 dereferenceable(16) %i.bri) #17, !inline_history !423
  %i.brr = load ptr, ptr %i.bri, align 8, !tbaa !81
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 24
  %i.brt = load ptr, ptr %i.brs, align 8
  call void %i.brt(ptr noundef nonnull align 8 dereferenceable(16) %i.bri) #17, !inline_history !423
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778

bb.tg:                                            ; preds = %bb.te
  %i.bru = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i49.i775 = icmp eq i8 %i.bru, 0
  br i1 %.not.i.i.i.i.i.i49.i775, label %bb.ti, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.brv = add nsw i32 %i.brm, -1
  store i32 %i.brv, ptr %i.brj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776

bb.ti:                                            ; preds = %bb.tg
  %i.brw = atomicrmw volatile add ptr %i.brj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776: ; preds = %bb.ti, %bb.th
  %.0.i.i.i.i.i.i.i51.i777 = phi i32 [ %i.brm, %bb.th ], [ %i.brw, %bb.ti ]
  %i.brx = icmp eq i32 %.0.i.i.i.i.i.i.i51.i777, 1
  br i1 %i.brx, label %bb.tj, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778, !prof !84

bb.tj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bri) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778

_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778:    ; preds = %bb.tj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i50.i776, %bb.tf, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i773
  %i.bry = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.brz = load ptr, ptr %i.bry, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i.i1.i53.i779 = icmp eq ptr %i.brz, null
  br i1 %.not.i.i.i.i1.i53.i779, label %_ZN6duckdbL17TemplatedMarkJoinINS_8string_tENS_17GreaterThanEqualsEEEvRNS_6VectorES4_mmPb.exit, label %bb.tk

bb.tk:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i52.i778
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 8 ; 4 uses
  %i.bsb = load atomic i64, ptr %i.bsa acquire, align 8 ; 2 uses
  %i.bsc = icmp eq i64 %i.bsb, 4294967297
  %i.bsd = trunc i64 %i.bsb to i32                ; 2 uses
  br i1 %i.bsc, label %bb.tl, label %bb.tm

bb.tl:                                            ; preds = %bb.tk
  store i32 0, ptr %i.bsa, align 8, !tbaa !78
  %i.bse = getelementptr inbounds nuw i8, ptr %i.brz, i64 12
  store i32 0, ptr %i.bse, align 4, !tbaa !80
  %i.bsf = load ptr, ptr %i.brz, align 8, !tbaa !81
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 16
  %i.bsh = load ptr, ptr %i.bsg, align 8
  call void %i.bsh(ptr noundef nonnull align 8 dereferenceable(16) %i.brz) #17, !inline_history !424
  %i.bsi = load ptr, ptr %i.brz, align 8, !tbaa !81
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsi, i64 24
  %i.bsk = load ptr, ptr %i.bsj, align 8
  call void %i.bsk(ptr noundef nonnull align 8 dereferenceable(16) %i.brz) #17, !inline_history !424
  br label %_ZN6duckdbL17TemplatedMarkJoinINS_8string_tENS_17GreaterThanEqualsEEEvRNS_6VectorES4_mmPb.exit

bb.tm:                                            ; preds = %bb.tk
  %i.bsl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i54.i780 = icmp eq i8 %i.bsl, 0
  br i1 %.not.i.i.i.i.i2.i54.i780, label %bb.to, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.bsm = add nsw i32 %i.bsd, -1
  store i32 %i.bsm, ptr %i.bsa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i781

bb.to:                                            ; preds = %bb.tm
  %i.bsn = atomicrmw volatile add ptr %i.bsa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i781

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i55.i781: ; preds = %bb.to, %bb.tn
  %.0.i.i.i.i.i.i4.i56.i782 = phi i32 [ %i.bsd, %bb.tn ], [ %i.bsn, %bb.to ]
end_hunk_8
