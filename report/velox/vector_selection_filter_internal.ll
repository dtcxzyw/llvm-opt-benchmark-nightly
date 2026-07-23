inline.NumInlined: 4280
inline.NumDeleted: 1950
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wv, i64 12
  store i32 0, ptr %i.xa, align 4, !tbaa !337
  %i.xb = load ptr, ptr %i.wv, align 8, !tbaa !71
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8
  call void %i.xd(ptr noundef nonnull align 8 dereferenceable(16) %i.wv) #25, !inline_history !1054
  %i.xe = load ptr, ptr %i.wv, align 8, !tbaa !71
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  %i.xg = load ptr, ptr %i.xf, align 8
  call void %i.xg(ptr noundef nonnull align 8 dereferenceable(16) %i.wv) #25, !inline_history !1054
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104

bb.hy:                                            ; preds = %bb.hw
  %i.xh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42, !noalias !1030
  %.not.i.i.i141.i = icmp eq i8 %i.xh, 0
  br i1 %.not.i.i.i141.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.xi = add nsw i32 %i.wz, -1
  store i32 %i.xi, ptr %i.ww, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i

bb.ia:                                            ; preds = %bb.hy
  %i.xj = atomicrmw volatile add ptr %i.ww, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i: ; preds = %bb.ia, %bb.hz
  %.0.i.i.i.i143.i = phi i32 [ %i.wz, %bb.hz ], [ %i.xj, %bb.ia ]
  %i.xk = icmp eq i32 %.0.i.i.i.i143.i, 1
  br i1 %i.xk, label %bb.ib, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104, !prof !41

bb.ib:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wv) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104: ; preds = %bb.ib, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i, %bb.hx, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !1030
  br label %bb.il

bb.ic:                                            ; preds = %bb.hs
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.id:                                            ; preds = %bb.hv
  %i.xm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #25
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %.pn.i = phi { ptr, i32 } [ %i.xm, %bb.id ], [ %i.xl, %bb.ic ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !1030
  br label %bb.mp

bb.if:                                            ; preds = %._crit_edge.i
  %.not.i.i.i144.i = icmp eq i8 %i.vh, 3
  br i1 %.not.i.i.i144.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.xn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.xn, align 8, !tbaa !71
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  store ptr @.str.6, ptr %i.xo, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.xn, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #27
          to label %.noexc145.i unwind label %bb.ih

.noexc145.i:                                      ; preds = %bb.ig
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit.i84:       ; preds = %bb.if
  %i.xp = load ptr, ptr %i.rd, align 8, !tbaa !859, !noalias !1030
  %i.xq = load ptr, ptr %i.vf, align 8, !tbaa !1053, !noalias !1030
  %i.xr = getelementptr inbounds i8, ptr %i.xq, i64 -24
  %i.xs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.xr, ptr noundef nonnull align 8 dereferenceable(24) %i.xp)
          to label %bb.il unwind label %bb.ih     ; 0 uses

bb.ih:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, %bb.ig
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %bb.mp

bb.ii:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !1030
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(28) @.str.10)
          to label %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i105 unwind label %bb.ik

_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i105: ; preds = %bb.ii
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %18) #25
  %i.xu = load ptr, ptr %18, align 8, !tbaa !84, !noalias !1030
  %.not.i147.i = icmp eq ptr %i.xu, null
  br i1 %.not.i147.i, label %_ZN5arrow6StatusD2Ev.exit148.i, label %bb.ij, !prof !110

bb.ij:                                            ; preds = %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i105
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
  br label %_ZN5arrow6StatusD2Ev.exit148.i

_ZN5arrow6StatusD2Ev.exit148.i:                   ; preds = %bb.ij, %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !1030
  br label %bb.mo

bb.ik:                                            ; preds = %bb.ii
  %i.xv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !1030
  br label %bb.mp

bb.il:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !1030
  invoke void @_ZN5arrow8internal25RechunkArraysConsistentlyERKSt6vectorIS1_ISt10shared_ptrINS_5ArrayEESaIS4_EESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.335") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.im unwind label %bb.ip

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !1030
  %i.xw = load ptr, ptr %15, align 8, !tbaa !1046, !noalias !1030
  %i.xx = load ptr, ptr %i.vf, align 8, !tbaa !1050, !noalias !1030
  %i.xy = load ptr, ptr %i.ve, align 8, !tbaa !1049, !noalias !1030
  %i.xz = load ptr, ptr %19, align 8, !tbaa !1046, !noalias !1030
  store ptr %i.xz, ptr %15, align 8, !tbaa !1046, !noalias !1030
  %i.ya = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !1050, !noalias !1030
  store ptr %i.yb, ptr %i.vf, align 8, !tbaa !1050, !noalias !1030
  %i.yc = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !1049, !noalias !1030
  store ptr %i.yd, ptr %i.ve, align 8, !tbaa !1049, !noalias !1030
  %i.ye = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.yf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.xw, ptr %10, align 8, !tbaa !1046, !noalias !1030
  store ptr %i.xx, ptr %i.ye, align 8, !tbaa !1050, !noalias !1030
  store ptr %i.xy, ptr %i.yf, align 8, !tbaa !1049, !noalias !1030
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !noalias !1030
  call void @_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !1030
  call void @_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !1030
  %i.yg = load ptr, ptr %i.vf, align 8, !tbaa !1053, !noalias !1030 ; 2 uses
  %i.yh = getelementptr inbounds i8, ptr %i.yg, i64 -24
  %i.yi = getelementptr inbounds i8, ptr %i.yg, i64 -16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !1003
  %i.yk = load ptr, ptr %i.yh, align 8, !tbaa !999
  %i.yl = ptrtoint ptr %i.yj to i64
  %i.ym = ptrtoint ptr %i.yk to i64
  %i.yn = sub i64 %i.yl, %i.ym
  %i.yo = ashr exact i64 %i.yn, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25, !noalias !1030
  %i.yp = sext i32 %i.us to i64                   ; 4 uses
  %i.yq = icmp slt i32 %i.us, 0
  br i1 %i.yq, label %bb.in, label %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i

bb.in:                                            ; preds = %bb.im
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
          to label %.noexc156.i unwind label %bb.iq

.noexc156.i:                                      ; preds = %bb.in
  unreachable

_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i: ; preds = %bb.im
  store i64 0, ptr %20, align 8, !noalias !1030
  %.not.i.i.i.i150.i = icmp eq i32 %i.us, 0       ; 3 uses
  br i1 %.not.i.i.i.i150.i, label %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i, label %.lr.ph.preheader.i.i.i.i.i151.i

.lr.ph.preheader.i.i.i.i.i151.i:                  ; preds = %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i
  %i.yr = mul nuw nsw i64 %i.yp, 24               ; 3 uses
  %i.ys = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yr) #29
          to label %.noexc157.i unwind label %bb.iq ; 4 uses

.noexc157.i:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i151.i
  store ptr %i.ys, ptr %20, align 8, !tbaa !1046, !noalias !1030
  %i.yt = getelementptr inbounds nuw [24 x i8], ptr %i.ys, i64 %i.yp
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ys, i8 0, i64 %i.yr, i1 false)
  %scevgep.i.i.i.i.i152.i = getelementptr i8, ptr %i.ys, i64 %i.yr
  br label %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i

_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i: ; preds = %.noexc157.i, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i
  %.sink.i153.i = phi ptr [ %i.yt, %.noexc157.i ], [ null, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i ]
  %.0.lcssa.i.i.i.i.i154.i = phi ptr [ %scevgep.i.i.i.i.i152.i, %.noexc157.i ], [ null, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i ]
  %i.yu = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.yv = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %.sink.i153.i, ptr %i.yv, align 8, !tbaa !1049, !noalias !1030
  store ptr %.0.lcssa.i.i.i.i.i154.i, ptr %i.yu, align 8, !tbaa !1050, !noalias !1030
  %.not106289.i = icmp sgt i64 %i.yo, 0
  br i1 %.not106289.i, label %.lr.ph296.i, label %.thread.i

.lr.ph296.i:                                      ; preds = %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i
  %i.yw = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.yx = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.yy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.yz = getelementptr inbounds nuw i8, ptr %22, i64 104 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.zb = getelementptr inbounds nuw i8, ptr %22, i64 120
  %i.zc = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.zg = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.zh = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.zi = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.zk = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.zl = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %wide.trip.count310.i = zext nneg i32 %i.us to i64
  br label %bb.ir

bb.io:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i91
  %i.zm = add nuw nsw i64 %.087291.i, 1           ; 2 uses
  %exitcond312.not.i = icmp eq i64 %i.zm, %i.yo
  br i1 %exitcond312.not.i, label %.thread.i, label %bb.ir, !llvm.loop !1055

bb.ip:                                            ; preds = %bb.il
  %i.zn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !1030
  br label %bb.mp

bb.iq:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i151.i, %bb.in
  %i.zo = landingpad { ptr, i32 }
          cleanup
  br label %bb.mn

bb.ir:                                            ; preds = %bb.io, %.lr.ph296.i
  %.087291.i = phi i64 [ 0, %.lr.ph296.i ], [ %i.zm, %bb.io ] ; 3 uses
  %.088290.i = phi i64 [ 0, %.lr.ph296.i ], [ %.492.i, %bb.io ] ; 4 uses
  %i.zp = load ptr, ptr %i.vf, align 8, !tbaa !1053, !noalias !1030
  %i.zq = getelementptr inbounds i8, ptr %i.zp, i64 -24
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !999
  %i.zs = getelementptr inbounds nuw [16 x i8], ptr %i.zr, i64 %.087291.i
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !984
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25, !noalias !1030
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25, !noalias !1030
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %22, i8 0, i64 16, i1 false), !noalias !1030
  store i64 -1, ptr %i.yw, align 8, !tbaa !34, !noalias !1030
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.yx, i8 0, i64 104, i1 false), !noalias !1030
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %22, ptr noundef nonnull align 8 dereferenceable(120) %i.zv)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88 unwind label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.zw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.yz) #25
  br label %.body.i87

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88:  ; preds = %bb.ir
  %i.zx = load i32, ptr %i.yy, align 8, !tbaa !63, !noalias !1030
  %i.zy = load ptr, ptr %4, align 8, !tbaa !344, !noalias !1030
  invoke void @_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.227") align 8 %21, ptr noundef nonnull align 8 dereferenceable(128) %22, i32 noundef %i.zx, ptr noundef %i.zy)
          to label %bb.it unwind label %bb.iw

bb.it:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88
  %i.zz = load ptr, ptr %i.yz, align 8, !tbaa !80, !noalias !1030
  %i.aaa = load ptr, ptr %i.za, align 8, !tbaa !829, !noalias !1030
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_(ptr noundef %i.zz, ptr noundef %i.aaa), !inline_history !890
  %i.aab = load ptr, ptr %i.yz, align 8, !tbaa !80, !noalias !1030 ; 3 uses
  %.not.i.i.i.i159.i = icmp eq ptr %i.aab, null
  br i1 %.not.i.i.i.i159.i, label %_ZN5arrow9ArraySpanD2Ev.exit.i89, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aac = load ptr, ptr %i.zb, align 8, !tbaa !831, !noalias !1030
  %i.aad = ptrtoint ptr %i.aac to i64
  %i.aae = ptrtoint ptr %i.aab to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  call void @_ZdlPvm(ptr noundef nonnull %i.aab, i64 noundef %i.aaf) #28, !inline_history !891
  br label %_ZN5arrow9ArraySpanD2Ev.exit.i89

_ZN5arrow9ArraySpanD2Ev.exit.i89:                 ; preds = %bb.iu, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25, !noalias !1030
  %i.aag = load ptr, ptr %21, align 8, !tbaa !84, !noalias !1030
  %i.aah = icmp eq ptr %i.aag, null
  br i1 %i.aah, label %bb.ix, label %bb.iv, !prof !110

bb.iv:                                            ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i89
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %21) #25
  br label %bb.km

bb.iw:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88
  %i.aai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %22) #25
  br label %.body.i87

.body.i87:                                        ; preds = %bb.iw, %bb.is
  %.pn96.i = phi { ptr, i32 } [ %i.aai, %bb.iw ], [ %i.zw, %bb.is ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25, !noalias !1030
  br label %bb.mm

bb.ix:                                            ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i89
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25, !noalias !1030
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  %i.aaj = load ptr, ptr %i.zc, align 8, !tbaa !76, !noalias !1062 ; 3 uses
  store ptr %i.aaj, ptr %23, align 8, !tbaa !76, !alias.scope !1063, !noalias !1030
  %i.aak = load ptr, ptr %i.ze, align 8, !tbaa !330, !noalias !1062 ; 5 uses
  store ptr null, ptr %i.ze, align 8, !tbaa !330, !noalias !1062
  store ptr %i.aak, ptr %i.zd, align 8, !tbaa !330, !alias.scope !1063, !noalias !1030
  store ptr null, ptr %i.zc, align 8, !tbaa !76, !noalias !1062
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !112
  %i.aan = icmp sgt i64 %i.aam, 0
  br i1 %i.aan, label %bb.iy, label %bb.kf

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25, !noalias !1030
  %.not.i.i.i160.i = icmp eq ptr %i.aak, null
  br i1 %.not.i.i.i160.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i95, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aak, i64 8 ; 3 uses
  %i.aap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42, !noalias !1030
  %.not.i.i.i.i161.i = icmp eq i8 %i.aap, 0
  br i1 %.not.i.i.i.i161.i, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.aaq = load i32, ptr %i.aao, align 4, !tbaa !3
  %i.aar = add nsw i32 %i.aaq, 1
  store i32 %i.aar, ptr %i.aao, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i95

bb.jb:                                            ; preds = %bb.iz
  %i.aas = atomicrmw volatile add ptr %i.aao, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i95

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i95: ; preds = %bb.jb, %bb.ja, %bb.iy
  store ptr %i.aaj, ptr %24, align 8, !tbaa !76, !noalias !1030
  store ptr %i.aak, ptr %i.zf, align 8, !tbaa !330, !noalias !1030
  store i8 2, ptr %i.zg, align 8, !tbaa !629, !noalias !1030
  br i1 %.not.i.i.i.i150.i, label %.critedge.i100, label %.lr.ph288.i

bb.jc:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i98
  %indvars.iv.next308.i = add nuw nsw i64 %indvars.iv307.i, 1 ; 2 uses
  %exitcond311.not.i = icmp eq i64 %indvars.iv.next308.i, %wide.trip.count310.i
  br i1 %exitcond311.not.i, label %.critedge.i100, label %.lr.ph288.i, !llvm.loop !1064

.lr.ph288.i:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i95, %bb.jc
  %indvars.iv307.i = phi i64 [ %indvars.iv.next308.i, %bb.jc ], [ 0, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i95 ] ; 3 uses
  %i.aat = load ptr, ptr %15, align 8, !tbaa !1046, !noalias !1030
  %i.aau = getelementptr inbounds nuw [24 x i8], ptr %i.aat, i64 %indvars.iv307.i
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !999
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.aav, i64 %.087291.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25, !noalias !1030
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25, !noalias !1030
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(16) %i.aaw)
          to label %bb.jd unwind label %bb.jh

bb.jd:                                            ; preds = %.lr.ph288.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25, !noalias !1030
  invoke void @_ZN5arrow7compute11TakeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(17) %27, i1 noundef zeroext false)
          to label %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit.i96 unwind label %bb.ji

_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit.i96: ; preds = %bb.jd
  invoke void @_ZN5arrow7compute4TakeERKNS_5DatumES3_RKNS0_11TakeOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.188") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(17) %27, ptr noundef nonnull %4)
          to label %bb.je unwind label %bb.jj

bb.je:                                            ; preds = %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25, !noalias !1030
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !1030
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %_ZN5arrow5DatumD2Ev.exit.i unwind label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.aax = landingpad { ptr, i32 }
          catch ptr null
  %i.aay = extractvalue { ptr, i32 } %i.aax, 0
  call void @__clang_call_terminate(ptr %i.aay) #26
  unreachable

_ZN5arrow5DatumD2Ev.exit.i:                       ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !1030
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25, !noalias !1030
  %i.aaz = load ptr, ptr %25, align 8, !tbaa !84, !noalias !1030
  %i.aba = icmp eq ptr %i.aaz, null               ; 2 uses
  br i1 %i.aba, label %bb.jm, label %bb.jg, !prof !110

bb.jg:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %25) #25
  br label %bb.jx

bb.jh:                                            ; preds = %.lr.ph288.i
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.ji:                                            ; preds = %bb.jd
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jj:                                            ; preds = %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit.i96
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.pn98.i = phi { ptr, i32 } [ %i.abd, %bb.jj ], [ %i.abc, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25, !noalias !1030
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #25
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jh
  %.pn98.pn.i = phi { ptr, i32 } [ %.pn98.i, %bb.jk ], [ %i.abb, %bb.jh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25, !noalias !1030
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_vector_selection_filter_internal.cc:bb.a
  br i1 %i.ah, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i29.i
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !310 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 16), ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge.i.i29.i
  store ptr %i.ag, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, align 8, !tbaa !308
  %i.al = load i64, ptr %i.d, align 8, !tbaa !42
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 16), align 8, !tbaa !42
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !310
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.am = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ai, %bb.c ]
  store i64 %i.am, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 8), align 8, !tbaa !310
  store ptr %i.d, ptr %0, align 8, !tbaa !308
  store i64 0, ptr %i.g, align 8, !tbaa !310
  store i8 0, ptr %i.d, align 8, !tbaa !42
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 32), align 8, !tbaa !306
  %i.an = load ptr, ptr %1, align 8, !tbaa !308   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !310 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 48), ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 32), align 8, !tbaa !308
  %i.as = load i64, ptr %i.i, align 8, !tbaa !42
  store i64 %i.as, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 48), align 8, !tbaa !42
  %.pre73.i = load i64, ptr %i.l, align 8, !tbaa !310
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i, %bb.d
  %i.at = phi i64 [ %.pre73.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i ], [ %i.ap, %bb.d ]
  store i64 %i.at, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 40), align 8, !tbaa !310
  store ptr %i.i, ptr %1, align 8, !tbaa !308
  store i64 0, ptr %i.l, align 8, !tbaa !310
  store i8 0, ptr %i.i, align 8, !tbaa !42
  store ptr %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 64), align 8, !tbaa !311
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 72), align 8, !tbaa !313
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 80), align 8, !tbaa !315
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 88), align 8, !tbaa !306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 104), ptr noundef nonnull align 8 dereferenceable(14) %i.ad, i64 14, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 96), align 8, !tbaa !310
  store ptr %i.ad, ptr %3, align 8, !tbaa !308
  store i64 0, ptr %i.ae, align 8, !tbaa !310
  store i8 0, ptr %i.ad, align 8, !tbaa !42
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 120), align 8, !tbaa !952
  %.pre74.i = load ptr, ptr %i.q, align 8, !tbaa !308 ; 2 uses
  %i.au = icmp eq ptr %.pre74.i, %i.r
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.av = load i64, ptr %i.r, align 8, !tbaa !42
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %.pre74.i, i64 noundef %i.aw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i
  %i.ax = load ptr, ptr %2, align 8, !tbaa !308   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.n
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %i.az = load i64, ptr %i.n, align 8, !tbaa !42
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bb = load ptr, ptr %1, align 8, !tbaa !308   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.i
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.1.i
  %i.bd = load i64, ptr %i.i, align 8, !tbaa !42
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i
  %i.bf = load ptr, ptr %0, align 8, !tbaa !308   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  br i1 %i.bg, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !42
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #28
  br label %__cxx_global_var_init.exit

bb.e:                                             ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

.body.i:                                          ; preds = %bb.b, %.thread98.i
  %i.bk = phi { ptr, i32 } [ %i.y, %.thread98.i ], [ %i.ac, %bb.b ] ; 2 uses
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !308 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.r
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i: ; preds = %.body.i
  %i.bn = load i64, ptr %i.r, align 8, !tbaa !42
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i
  %i.bp = load ptr, ptr %2, align 8, !tbaa !308   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.n
  br i1 %i.bq, label %.thread.i, label %.thread.i.sink.split

bb.f:                                             ; preds = %.noexc19.i
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !308   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.n
  br i1 %i.bt, label %.thread.i, label %.thread.i.sink.split

.thread.i.sink.split:                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i
  %.sink = phi ptr [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i ], [ %i.bs, %bb.f ]
  %.pn.pn.pn65.i.ph = phi { ptr, i32 } [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i ], [ %i.br, %bb.f ]
  %i.bu = load i64, ptr %i.n, align 8, !tbaa !42
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bv) #28
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.sink.split, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i
  %.pn.pn.pn65.i = phi { ptr, i32 } [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i ], [ %i.br, %bb.f ], [ %.pn.pn.pn65.i.ph, %.thread.i.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bw = load ptr, ptr %1, align 8, !tbaa !308   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.i
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %.thread.i
  %i.by = load i64, ptr %i.i, align 8, !tbaa !42
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i, %bb.e
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bj, %bb.e ], [ %.pn.pn.pn65.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i ], [ %.pn.pn.pn65.i, %.thread.i ]
  %i.ca = load ptr, ptr %0, align 8, !tbaa !308   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.d
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !42
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i
  resume { ptr, i32 } %.pn.pn.pn.pn.i

__cxx_global_var_init.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i
  %i.ce = call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow7compute11FunctionDocD2Ev, ptr nonnull @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN5arrow9ArraySpanE", !9, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !12, i64 104}
!9 = !{!"p1 _ZTSN5arrow8DataTypeE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSSt6vectorIN5arrow9ArraySpanESaIS1_EE", !13, i64 0}
!13 = !{!"_ZTSSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE12_Vector_implE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"p1 _ZTSN5arrow9ArraySpanE", !10, i64 0}
!17 = !{!18, !28, i64 40}
!18 = !{!"_ZTSN5arrow8DataTypeE", !19, i64 0, !23, i64 24, !28, i64 40, !29, i64 48}
!19 = !{!"_ZTSN5arrow6detail15FingerprintableE", !20, i64 8, !20, i64 16}
!20 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !21, i64 0}
!21 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !22, i64 0}
!22 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!23 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !24, i64 0}
!24 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !25, i64 0}
!25 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0, !26, i64 8}
!26 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!27 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!28 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!29 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !10, i64 0}
!34 = !{!8, !11, i64 16}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN5arrow10BufferSpanE", !37, i64 0, !11, i64 8, !38, i64 16}
!37 = !{!"p1 omnipotent char", !10, i64 0}
!38 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !10, i64 0}
!39 = !{!8, !11, i64 24}
!40 = !{!8, !11, i64 8}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{!5, !5, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !44}
!48 = !{!11, !11, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 long", !10, i64 0}
!51 = !{!52, !10, i64 24}
!52 = !{!"_ZTSSt8functionIFbllbEE", !53, i64 0, !10, i64 24}
!53 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!54 = !{!53, !10, i64 16}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute9ExecValueESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p1 _ZTSN5arrow7compute9ExecValueE", !10, i64 0}
!58 = !{!59, !61, i64 8}
!59 = !{!"_ZTSN5arrow7compute13KernelContextE", !60, i64 0, !61, i64 8, !62, i64 16}
!60 = !{!"p1 _ZTSN5arrow7compute11ExecContextE", !10, i64 0}
!61 = !{!"p1 _ZTSN5arrow7compute11KernelStateE", !10, i64 0}
!62 = !{!"p1 _ZTSN5arrow7compute6KernelE", !10, i64 0}
!63 = !{!64, !67, i64 16}
!64 = !{!"_ZTSN5arrow7compute13FilterOptionsE", !65, i64 0, !67, i64 16}
!65 = !{!"_ZTSN5arrow7compute15FunctionOptionsE", !66, i64 8}
!66 = !{!"p1 _ZTSN5arrow7compute19FunctionOptionsTypeE", !10, i64 0}
!67 = !{!"_ZTSN5arrow7compute13FilterOptions21NullSelectionBehaviorE", !5, i64 0}
!68 = !{!69, !5, i64 128}
!69 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9ArraySpanESt10shared_ptrINS2_9ArrayDataEEEEE", !5, i64 0, !5, i64 128}
!70 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!71 = !{!72, !72, i64 0}
!72 = !{!"vtable pointer", !6, i64 0}
!73 = !{!74, !37, i64 8}
!74 = !{!"_ZTSSt18bad_variant_access", !75, i64 0, !37, i64 8}
!75 = !{!"_ZTSSt9exception"}
!76 = !{!77, !78, i64 0}
!77 = !{!"_ZTSSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EE", !78, i64 0, !79, i64 8}
!78 = !{!"p1 _ZTSN5arrow9ArrayDataE", !10, i64 0}
!79 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!80 = !{!15, !16, i64 0}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!83 = distinct !{!83, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!84 = !{!85, !86, i64 0}
!85 = !{!"_ZTSN5arrow6StatusE", !86, i64 0}
!86 = !{!"p1 _ZTSN5arrow6Status5StateE", !10, i64 0}
!87 = !{!88, !11, i64 0}
!88 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb1EEE", !11, i64 0, !37, i64 8, !37, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !16, i64 48, !67, i64 56, !37, i64 64, !37, i64 72, !11, i64 80, !11, i64 88}
!89 = !{!88, !37, i64 8}
!90 = !{!88, !37, i64 16}
!91 = !{!88, !11, i64 40}
!92 = !{!16, !16, i64 0}
!93 = !{!88, !67, i64 56}
!94 = !{!88, !37, i64 64}
!95 = !{!96, !38, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!97 = !{!98, !99, i64 0}
!98 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !99, i64 0, !79, i64 8}
!99 = !{!"p1 _ZTSN5arrow6BufferE", !10, i64 0}
!100 = !{!101, !102, i64 9}
!101 = !{!"_ZTSN5arrow6BufferE", !102, i64 8, !102, i64 9, !37, i64 16, !11, i64 24, !11, i64 32, !103, i64 40, !104, i64 48, !105, i64 64}
!102 = !{!"bool", !5, i64 0}
!103 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!104 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !98, i64 0}
!105 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !106, i64 0}
!106 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !107, i64 0, !79, i64 8}
!107 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !10, i64 0}
!108 = !{i8 0, i8 2}
!109 = !{}
!110 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!111 = !{!88, !37, i64 72}
!112 = !{!113, !11, i64 16}
!113 = !{!"_ZTSN5arrow9ArrayDataE", !114, i64 0, !11, i64 16, !116, i64 24, !11, i64 32, !118, i64 40, !121, i64 64, !126, i64 88, !127, i64 104}
!114 = !{!"_ZTSSt10shared_ptrIN5arrow8DataTypeEE", !115, i64 0}
!115 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0, !79, i64 8}
!116 = !{!"_ZTSSt6atomicIlE", !117, i64 0}
!117 = !{!"_ZTSSt13__atomic_baseIlE", !11, i64 0}
!118 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !119, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !120, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_Vector_implE", !96, i64 0}
!121 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !122, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !123, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_Vector_implE", !124, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!125 = !{!"p1 _ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !10, i64 0}
!126 = !{!"_ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !77, i64 0}
!127 = !{!"_ZTSSt10shared_ptrIN5arrow15ArrayStatisticsEE", !128, i64 0}
!128 = !{!"_ZTSSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EE", !129, i64 0, !79, i64 8}
!129 = !{!"p1 _ZTSN5arrow15ArrayStatisticsE", !10, i64 0}
!130 = !{!88, !11, i64 80}
!131 = !{!88, !11, i64 88}
!132 = !{!88, !16, i64 48}
!133 = !{i64 8}
!134 = !{!135, !135, i64 0}
!135 = !{!"p1 _ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb1EEE", !10, i64 0}
!136 = !{!88, !11, i64 32}
!137 = !{!138, !37, i64 0}
!138 = !{!"_ZTSN5arrow8internal15BitBlockCounterE", !37, i64 0, !11, i64 8, !11, i64 16}
!139 = !{!138, !11, i64 8}
!140 = !{!138, !11, i64 16}
!141 = !{!142, !37, i64 0}
!142 = !{!"_ZTSN5arrow8internal21BinaryBitBlockCounterE", !37, i64 0, !11, i64 8, !37, i64 16, !11, i64 24, !11, i64 32}
!143 = !{!142, !11, i64 8}
!144 = !{!142, !37, i64 16}
!145 = !{!142, !11, i64 24}
!146 = !{!142, !11, i64 32}
!147 = !{!148, !102, i64 64}
!148 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_115DropNullCounterE", !138, i64 0, !142, i64 24, !102, i64 64}
!149 = distinct !{!149, !44}
!150 = distinct !{!150, !44}
!151 = distinct !{!151, !44}
!152 = distinct !{!152, !44}
!153 = distinct !{!153, !44}
!154 = distinct !{!154, !44}
!155 = distinct !{!155, !44}
!156 = !{!157, !11, i64 0}
!157 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb0EEE", !11, i64 0, !37, i64 8, !37, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !16, i64 48, !67, i64 56, !37, i64 64, !37, i64 72, !11, i64 80, !11, i64 88}
!158 = !{!157, !37, i64 8}
!159 = !{!157, !37, i64 16}
!160 = !{!157, !11, i64 40}
!161 = !{!157, !67, i64 56}
!162 = !{!157, !37, i64 64}
!163 = !{!157, !37, i64 72}
!164 = !{!157, !11, i64 80}
end_hunk_1
