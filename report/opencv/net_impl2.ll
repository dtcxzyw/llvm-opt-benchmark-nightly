Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/net_impl2?download=true
inline.NumInlined: 2839
inline.NumDeleted: 1030
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv3dnn14dnn5_v202606053Net4Impl12forwardGraphERNS_3PtrINS1_5GraphEEERKNS_11_InputArrayERKNS_12_OutputArrayEb:bb.a
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i613

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i613: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i611, %._crit_edge1631
  %i.yb = phi ptr [ %.pr.i612, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i611 ], [ %i.xy, %._crit_edge1631 ] ; 3 uses
  %.not.i.i1.i614 = icmp eq ptr %i.yb, null
  br i1 %.not.i.i1.i614, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit616, label %bb.fw

bb.fw:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i613
  %i.yc = load ptr, ptr %i.fj, align 8, !tbaa !86
  %i.yd = ptrtoint ptr %i.yc to i64
  %i.ye = ptrtoint ptr %i.yb to i64
  %i.yf = sub i64 %i.yd, %i.ye
  call void @_ZdlPvm(ptr noundef nonnull %i.yb, i64 noundef %i.yf) #26
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit616

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit616:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i613, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  %i.yg = load ptr, ptr %52, align 8, !tbaa !76   ; 3 uses
  %i.yh = load ptr, ptr %i.er, align 8, !tbaa !75 ; 2 uses
  %.not4.i.i.i617 = icmp eq ptr %i.yg, %i.yh
  br i1 %.not4.i.i.i617, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i623, label %.lr.ph.i.i.i618

.lr.ph.i.i.i618:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit616, %.lr.ph.i.i.i618
  %.05.i.i.i619 = phi ptr [ %i.yi, %.lr.ph.i.i.i618 ], [ %i.yg, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit616 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i619) #24
  %i.yi = getelementptr inbounds nuw i8, ptr %.05.i.i.i619, i64 208 ; 2 uses
  %.not.i.i.i620 = icmp eq ptr %i.yi, %i.yh
  br i1 %.not.i.i.i620, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i621, label %.lr.ph.i.i.i618, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i621: ; preds = %.lr.ph.i.i.i618
  %.pr.i622 = load ptr, ptr %52, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i623

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i623: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i621, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit616
  %i.yj = phi ptr [ %.pr.i622, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i621 ], [ %i.yg, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit616 ] ; 3 uses
  %.not.i.i1.i624 = icmp eq ptr %i.yj, null
  br i1 %.not.i.i1.i624, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit626, label %bb.fx

bb.fx:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i623
  %i.yk = load ptr, ptr %i.es, align 8, !tbaa !86
  %i.yl = ptrtoint ptr %i.yk to i64
  %i.ym = ptrtoint ptr %i.yj to i64
  %i.yn = sub i64 %i.yl, %i.ym
  call void @_ZdlPvm(ptr noundef nonnull %i.yj, i64 noundef %i.yn) #26
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit626

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit626:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i623, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #24
  %.not4.i.i.i627 = icmp eq ptr %.sroa.0928.0, %.0.lcssa.i.i.i.i.i
  br i1 %.not4.i.i.i627, label %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i628

.lr.ph.i.i.i628:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit626, %_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i629 = phi ptr [ %i.yy, %_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i ], [ %.sroa.0928.0, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit626 ] ; 5 uses
  %i.yo = load ptr, ptr %.05.i.i.i629, align 8, !tbaa !76 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.05.i.i.i629, i64 8
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !75 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.yo, %i.yq
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i628, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.yr, %.lr.ph.i.i.i.i.i.i.i ], [ %i.yo, %.lr.ph.i.i.i628 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i.i.i) #24
  %i.yr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.yr, %i.yq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i629, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i628
  %i.ys = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.yo, %.lr.ph.i.i.i628 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ys, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.yt = getelementptr inbounds nuw i8, ptr %.05.i.i.i629, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !86
  %i.yv = ptrtoint ptr %i.yu to i64
  %i.yw = ptrtoint ptr %i.ys to i64
  %i.yx = sub i64 %i.yv, %i.yw
  call void @_ZdlPvm(ptr noundef nonnull %i.ys, i64 noundef %i.yx) #26
  br label %_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.fy, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.yy = getelementptr inbounds nuw i8, ptr %.05.i.i.i629, i64 24 ; 2 uses
  %.not.i.i.i630 = icmp eq ptr %i.yy, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i630, label %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i628, !llvm.loop !349

_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit626
  %.not.i.i1.i632 = icmp eq ptr %.sroa.0928.0, null
  br i1 %.not.i.i1.i632, label %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit, label %bb.fz

bb.fz:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.yz = ptrtoint ptr %.sroa.0928.0 to i64
  %i.za = sub i64 %.sink.i, %i.yz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0928.0, i64 noundef %i.za) #26
  br label %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.fz
  %i.zb = load ptr, ptr %51, align 8, !tbaa !76   ; 3 uses
  %i.zc = load ptr, ptr %i.eu, align 8, !tbaa !75 ; 2 uses
  %.not4.i.i.i633 = icmp eq ptr %i.zb, %i.zc
  br i1 %.not4.i.i.i633, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i639, label %.lr.ph.i.i.i634

.lr.ph.i.i.i634:                                  ; preds = %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit, %.lr.ph.i.i.i634
  %.05.i.i.i635 = phi ptr [ %i.zd, %.lr.ph.i.i.i634 ], [ %i.zb, %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i635) #24
  %i.zd = getelementptr inbounds nuw i8, ptr %.05.i.i.i635, i64 208 ; 2 uses
  %.not.i.i.i636 = icmp eq ptr %i.zd, %i.zc
  br i1 %.not.i.i.i636, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i637, label %.lr.ph.i.i.i634, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i637: ; preds = %.lr.ph.i.i.i634
  %.pr.i638 = load ptr, ptr %51, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i639

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i639: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i637, %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit
  %i.ze = phi ptr [ %.pr.i638, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i637 ], [ %i.zb, %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i640 = icmp eq ptr %i.ze, null
  br i1 %.not.i.i1.i640, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit642, label %bb.ga

bb.ga:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i639
  %i.zf = load ptr, ptr %i.fk, align 8, !tbaa !86
  %i.zg = ptrtoint ptr %i.zf to i64
  %i.zh = ptrtoint ptr %i.ze to i64
  %i.zi = sub i64 %i.zg, %i.zh
  call void @_ZdlPvm(ptr noundef nonnull %i.ze, i64 noundef %i.zi) #26
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit642

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit642:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i639, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br i1 %.not.i.i.i.i575, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit647, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit642
  %i.zj = getelementptr inbounds nuw i8, ptr %i.rm, i64 8 ; 4 uses
  %i.zk = load atomic i64, ptr %i.zj acquire, align 8 ; 2 uses
  %i.zl = icmp eq i64 %i.zk, 4294967297
  %i.zm = trunc i64 %i.zk to i32                  ; 2 uses
  br i1 %i.zl, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  store i32 0, ptr %i.zj, align 8, !tbaa !48
  %i.zn = getelementptr inbounds nuw i8, ptr %i.rm, i64 12
  store i32 0, ptr %i.zn, align 4, !tbaa !49
  %i.zo = load ptr, ptr %i.rm, align 8, !tbaa !46
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8
  call void %i.zq(ptr noundef nonnull align 8 dereferenceable(16) %i.rm) #24, !inline_history !345
  %i.zr = load ptr, ptr %i.rm, align 8, !tbaa !46
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 24
  %i.zt = load ptr, ptr %i.zs, align 8
  call void %i.zt(ptr noundef nonnull align 8 dereferenceable(16) %i.rm) #24, !inline_history !345
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit647

bb.gd:                                            ; preds = %bb.gb
  %i.zu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i644 = icmp eq i8 %i.zu, 0
  br i1 %.not.i.i.i644, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.zv = add nsw i32 %i.zm, -1
  store i32 %i.zv, ptr %i.zj, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i645

bb.gf:                                            ; preds = %bb.gd
  %i.zw = atomicrmw volatile add ptr %i.zj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i645

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i645: ; preds = %bb.gf, %bb.ge
  %.0.i.i.i.i646 = phi i32 [ %i.zm, %bb.ge ], [ %i.zw, %bb.gf ]
  %i.zx = icmp eq i32 %.0.i.i.i.i646, 1
  br i1 %i.zx, label %bb.gg, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit647, !prof !194

bb.gg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i645
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rm) #24
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit647

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit647: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit642, %bb.gc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i645, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br label %bb.iz

.lr.ph1630:                                       ; preds = %.lr.ph1630.preheader, %bb.if
  %indvars.iv2211 = phi i64 [ 0, %.lr.ph1630.preheader ], [ %indvars.iv.next2212, %bb.if ] ; 4 uses
  %i.zy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0928.0, i64 %indvars.iv2211 ; 6 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !245 ; 6 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 8 ; 5 uses
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !245
  %i.aac = icmp eq ptr %i.zz, %i.aab
  br i1 %i.aac, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %.lr.ph1630
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %59) #24
  %i.aad = load ptr, ptr %17, align 8, !tbaa !76
  %i.aae = getelementptr inbounds nuw [208 x i8], ptr %i.aad, i64 %indvars.iv2211
  %i.aaf = getelementptr inbounds nuw [208 x i8], ptr %i.aae, i64 %i.xx
  %i.aag = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aaf, ptr noundef nonnull align 8 dereferenceable(208) %59)
          to label %bb.gi unwind label %bb.gj     ; 0 uses

bb.gi:                                            ; preds = %bb.gh
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br label %bb.if

bb.gj:                                            ; preds = %bb.gh
  %i.aah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br label %bb.ii

bb.gk:                                            ; preds = %.lr.ph1630
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #24
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zz, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %60, ptr noundef nonnull align 4 dereferenceable(52) %i.aai)
          to label %_ZNK2cv3Mat5shapeEv.exit649 unwind label %bb.gl

_ZNK2cv3Mat5shapeEv.exit649:                      ; preds = %bb.gk
  %i.aaj = load i32, ptr %60, align 4, !tbaa !222 ; 4 uses
  %i.aak = icmp sgt i32 %i.aaj, -1
  br i1 %i.aak, label %bb.gr, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.gm:                                            ; preds = %_ZNK2cv3Mat5shapeEv.exit649
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %62)
          to label %bb.gn unwind label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v202606053Net4Impl12forwardGraphERNS_3PtrINS1_5GraphEEERKNS_11_InputArrayERKNS_12_OutputArrayEb, ptr noundef nonnull @.str.11, i32 noundef 1274) #25
          to label %bb.go unwind label %bb.gq

bb.go:                                            ; preds = %bb.gn
  unreachable

bb.gp:                                            ; preds = %bb.gm
  %i.aam = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652

bb.gq:                                            ; preds = %bb.gn
  %i.aan = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aao = load ptr, ptr %61, align 8, !tbaa !30  ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.aaq = icmp eq ptr %i.aao, %i.aap
  br i1 %i.aaq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650: ; preds = %bb.gq
  %i.aar = load i64, ptr %i.aap, align 8, !tbaa !31
  %i.aas = add i64 %i.aar, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aas) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652: ; preds = %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650, %bb.gp
  %.pn396 = phi { ptr, i32 } [ %i.aam, %bb.gp ], [ %i.aan, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650 ], [ %i.aan, %bb.gq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24
  br label %bb.ih

bb.gr:                                            ; preds = %_ZNK2cv3Mat5shapeEv.exit649
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #24
  %i.aat = add nuw nsw i32 %i.aaj, 1
  %i.aau = zext nneg i32 %i.aat to i64
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %63, i64 noundef %i.aau, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %bb.gs unwind label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.aav = load ptr, ptr %i.aaa, align 8, !tbaa !75
  %i.aaw = load ptr, ptr %i.zy, align 8, !tbaa !76
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = ptrtoint ptr %i.aaw to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  %i.aba = sdiv exact i64 %i.aaz, 208
  %i.abb = load i32, ptr %63, align 4, !tbaa !222
  %i.abc = trunc i64 %i.aba to i32
  store i32 %i.abc, ptr %i.fd, align 4, !tbaa !81
  %.not1652 = icmp eq i32 %i.aaj, 0
  br i1 %.not1652, label %._crit_edge1625, label %.lr.ph1624

.lr.ph1624:                                       ; preds = %bb.gs
  %i.abd = load i32, ptr %60, align 4, !tbaa !222
  %narrow.i656 = call i32 @llvm.smax.i32(i32 %i.abd, i32 1)
  %wide.trip.count2205 = zext nneg i32 %narrow.i656 to i64 ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.abb, i32 1)
  %i.abe = add nsw i32 %smax, -1
  %wide.trip.count2207 = zext i32 %i.abe to i64   ; 2 uses
  %wide.trip.count2209 = zext nneg i32 %i.aaj to i64 ; 2 uses
  %i.abf = add nsw i64 %wide.trip.count2209, -1
  %i.abg = call i64 @llvm.umin.i64(i64 %i.abf, i64 %wide.trip.count2207)
  %i.abh = call i64 @llvm.umin.i64(i64 %i.abg, i64 %wide.trip.count2205) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.abh, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph1624
  %indvars.iv2202.ph = phi i64 [ 0, %.lr.ph1624 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph1624
  %i.abi = add nuw nsw i64 %i.abh, 1              ; 2 uses
  %i.abj = and i64 %i.abi, 7                      ; 2 uses
  %i.abk = icmp eq i64 %i.abj, 0
  %i.abl = select i1 %i.abk, i64 8, i64 %i.abj
  %n.vec = sub nsw i64 %i.abi, %i.abl             ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %index ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %wide.load = load <4 x i32>, ptr %i.abm, align 4, !tbaa !81
  %wide.load3617 = load <4 x i32>, ptr %i.abn, align 4, !tbaa !81
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %index ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 4
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abo, i64 20
  store <4 x i32> %wide.load, ptr %i.abp, align 4, !tbaa !81
  store <4 x i32> %wide.load3617, ptr %i.abq, align 4, !tbaa !81
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.abr = icmp eq i64 %index.next, %n.vec
  br i1 %i.abr, label %scalar.ph.preheader, label %vector.body, !llvm.loop !350

._crit_edge1625:                                  ; preds = %bb.hb, %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %64) #24
  %i.abs = load i32, ptr %i.zz, align 8, !tbaa !92
  %i.abt = and i32 %i.abs, 4095
  invoke void @_ZN2cv3Mat6createERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %64, ptr noundef nonnull align 4 dereferenceable(52) %63, i32 noundef %i.abt)
          to label %.preheader unwind label %bb.hd

.preheader:                                       ; preds = %._crit_edge1625
  %i.abu = load ptr, ptr %i.aaa, align 8, !tbaa !75
  %i.abv = load ptr, ptr %i.zy, align 8, !tbaa !76 ; 2 uses
  %.not1653 = icmp eq ptr %i.abu, %i.abv
  br i1 %.not1653, label %._crit_edge1628, label %.lr.ph1627

bb.gt:                                            ; preds = %bb.gr
  %i.abw = landingpad { ptr, i32 }
          cleanup
  br label %.body662

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.hb
  %indvars.iv2202 = phi i64 [ %indvars.iv.next2203, %bb.hb ], [ %indvars.iv2202.ph, %scalar.ph.preheader ] ; 4 uses
  %exitcond2206.not = icmp eq i64 %indvars.iv2202, %wide.trip.count2205
  br i1 %exitcond2206.not, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.147, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc661 unwind label %bb.hc

.noexc661:                                        ; preds = %bb.gu
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.144, i32 noundef 97) #25
          to label %bb.gv unwind label %bb.gw

bb.gv:                                            ; preds = %.noexc661
  unreachable

bb.gw:                                            ; preds = %.noexc661
  %i.abx = landingpad { ptr, i32 }
          cleanup
  %i.aby = load ptr, ptr %9, align 8, !tbaa !30   ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aca = icmp eq ptr %i.aby, %i.abz
  br i1 %i.aca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i659, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i658

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i658: ; preds = %bb.gw
  %i.acb = load i64, ptr %i.abz, align 8, !tbaa !31
  %i.acc = add i64 %i.acb, 1
  call void @_ZdlPvm(ptr noundef %i.aby, i64 noundef %i.acc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i659

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i659: ; preds = %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i658
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.body662

bb.gx:                                            ; preds = %scalar.ph
  %exitcond2208.not = icmp eq i64 %indvars.iv2202, %wide.trip.count2207
  br i1 %exitcond2208.not, label %bb.gy, label %bb.hb

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.147, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc669 unwind label %bb.hc

.noexc669:                                        ; preds = %bb.gy
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.144, i32 noundef 97) #25
          to label %bb.gz unwind label %bb.ha

bb.gz:                                            ; preds = %.noexc669
  unreachable

bb.ha:                                            ; preds = %.noexc669
  %i.acd = landingpad { ptr, i32 }
          cleanup
  %i.ace = load ptr, ptr %7, align 8, !tbaa !30   ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.acg = icmp eq ptr %i.ace, %i.acf
  br i1 %i.acg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i667, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i666

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i666: ; preds = %bb.ha
  %i.ach = load i64, ptr %i.acf, align 8, !tbaa !31
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.ace, i64 noundef %i.aci) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i667

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i667: ; preds = %bb.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i666
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.body662

bb.hb:                                            ; preds = %bb.gx
  %indvars.iv.next2203 = add nuw nsw i64 %indvars.iv2202, 1 ; 3 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv2202
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !81
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.next2203
  store i32 %i.ack, ptr %i.acl, align 4, !tbaa !81
  %exitcond2210.not = icmp eq i64 %indvars.iv.next2203, %wide.trip.count2209
  br i1 %exitcond2210.not, label %._crit_edge1625, label %scalar.ph, !llvm.loop !351

bb.hc:                                            ; preds = %bb.gy, %bb.gu
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %.body662

._crit_edge1628:                                  ; preds = %bb.hw, %.preheader
  %i.acn = load ptr, ptr %17, align 8, !tbaa !76
  %i.aco = getelementptr inbounds nuw [208 x i8], ptr %i.acn, i64 %indvars.iv2211
  %i.acp = getelementptr inbounds nuw [208 x i8], ptr %i.aco, i64 %i.xx
  %i.acq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.acp, ptr noundef nonnull align 8 dereferenceable(208) %64)
          to label %bb.ie unwind label %bb.hd     ; 0 uses

bb.hd:                                            ; preds = %._crit_edge1628, %._crit_edge1625
  %i.acr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

.lr.ph1627:                                       ; preds = %.preheader, %bb.hw
  %i.acs = phi ptr [ %i.aeh, %bb.hw ], [ %i.abv, %.preheader ]
  %.03331626 = phi i64 [ %i.aef, %bb.hw ], [ 0, %.preheader ] ; 3 uses
  %i.act = getelementptr inbounds nuw [208 x i8], ptr %i.acs, i64 %.03331626 ; 3 uses
  %i.acu = load i32, ptr %i.act, align 8, !tbaa !92
  %i.acv = load i32, ptr %i.zz, align 8, !tbaa !92
  %i.acw = xor i32 %i.acv, %i.acu
  %i.acx = and i32 %i.acw, 4095
  %i.acy = icmp eq i32 %i.acx, 0
  br i1 %i.acy, label %bb.hk, label %bb.hf

bb.he:                                            ; preds = %bb.hl, %bb.hk
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

bb.hf:                                            ; preds = %.lr.ph1627
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %66)
          to label %bb.hg unwind label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v202606053Net4Impl12forwardGraphERNS_3PtrINS1_5GraphEEERKNS_11_InputArrayERKNS_12_OutputArrayEb, ptr noundef nonnull @.str.11, i32 noundef 1287) #25
          to label %bb.hh unwind label %bb.hj

bb.hh:                                            ; preds = %bb.hg
  unreachable

bb.hi:                                            ; preds = %bb.hf
  %i.ada = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675

bb.hj:                                            ; preds = %bb.hg
  %i.adb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adc = load ptr, ptr %65, align 8, !tbaa !30  ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.ade = icmp eq ptr %i.adc, %i.add
  br i1 %i.ade, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673: ; preds = %bb.hj
  %i.adf = load i64, ptr %i.add, align 8, !tbaa !31
  %i.adg = add i64 %i.adf, 1
  call void @_ZdlPvm(ptr noundef %i.adc, i64 noundef %i.adg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675: ; preds = %bb.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673, %bb.hi
  %.pn398 = phi { ptr, i32 } [ %i.ada, %bb.hi ], [ %i.adb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673 ], [ %i.adb, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #24
  br label %bb.ig

bb.hk:                                            ; preds = %.lr.ph1627
  %i.adh = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.act)
          to label %bb.hl unwind label %bb.he

bb.hl:                                            ; preds = %bb.hk
  %i.adi = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.zz)
          to label %bb.hm unwind label %bb.he

bb.hm:                                            ; preds = %bb.hl
  %i.adj = icmp eq i64 %i.adh, %i.adi
  br i1 %i.adj, label %bb.hs, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %68)
          to label %bb.ho unwind label %bb.hq

bb.ho:                                            ; preds = %bb.hn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v202606053Net4Impl12forwardGraphERNS_3PtrINS1_5GraphEEERKNS_11_InputArrayERKNS_12_OutputArrayEb, ptr noundef nonnull @.str.11, i32 noundef 1288) #25
          to label %bb.hp unwind label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  unreachable

bb.hq:                                            ; preds = %bb.hn
  %i.adk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

bb.hr:                                            ; preds = %bb.ho
  %i.adl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adm = load ptr, ptr %67, align 8, !tbaa !30  ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.ado = icmp eq ptr %i.adm, %i.adn
  br i1 %i.ado, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676: ; preds = %bb.hr
  %i.adp = load i64, ptr %i.adn, align 8, !tbaa !31
  %i.adq = add i64 %i.adp, 1
  call void @_ZdlPvm(ptr noundef %i.adm, i64 noundef %i.adq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678: ; preds = %bb.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676, %bb.hq
  %.pn400 = phi { ptr, i32 } [ %i.adk, %bb.hq ], [ %i.adl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676 ], [ %i.adl, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  br label %bb.ig

bb.hs:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #24
  %i.adr = load ptr, ptr %i.aaa, align 8, !tbaa !75
  %i.ads = load ptr, ptr %i.zy, align 8, !tbaa !76
  %i.adt = ptrtoint ptr %i.adr to i64
  %i.adu = ptrtoint ptr %i.ads to i64
  %i.adv = sub i64 %i.adt, %i.adu
  %i.adw = sdiv exact i64 %i.adv, 208
  %i.adx = trunc i64 %i.adw to i32
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %71, ptr noundef nonnull align 8 dereferenceable(208) %64, i32 noundef 0, i32 noundef %i.adx)
          to label %bb.ht unwind label %bb.hx

bb.ht:                                            ; preds = %bb.hs
  %i.ady = trunc i64 %.03331626 to i32            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !368
  %i.adz = add nsw i32 %i.ady, 1
  store i32 %i.ady, ptr %5, align 4, !tbaa !370, !noalias !368
  store i32 %i.adz, ptr %i.ff, align 4, !tbaa !371, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !368
  store i64 9223372034707292160, ptr %6, align 8, !noalias !368
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %70, ptr noundef nonnull align 8 dereferenceable(208) %71, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.hu unwind label %bb.hy

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !368
  %i.aea = load i32, ptr %i.zz, align 8, !tbaa !92
  %i.aeb = lshr i32 %i.aea, 5
  %i.aec = and i32 %i.aeb, 127
  %i.aed = add nuw nsw i32 %i.aec, 1
  %i.aee = load i32, ptr %60, align 4, !tbaa !222
  invoke void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %69, ptr noundef nonnull align 8 dereferenceable(208) %70, i32 noundef %i.aed, i32 noundef %i.aee, ptr noundef nonnull %i.fe)
          to label %bb.hv unwind label %bb.hz

bb.hv:                                            ; preds = %bb.hu
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %70) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #24
  store i64 0, ptr %i.fh, align 8
  store i32 33619968, ptr %72, align 8, !tbaa !243
  store ptr %69, ptr %i.fg, align 8, !tbaa !240
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %i.act, ptr noundef nonnull align 8 dereferenceable(24) %72)
          to label %bb.hw unwind label %bb.ic

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #24
  %i.aef = add nuw i64 %.03331626, 1              ; 2 uses
  %i.aeg = load ptr, ptr %i.aaa, align 8, !tbaa !75
  %i.aeh = load ptr, ptr %i.zy, align 8, !tbaa !76 ; 2 uses
  %i.aei = ptrtoint ptr %i.aeg to i64
  %i.aej = ptrtoint ptr %i.aeh to i64
  %i.aek = sub i64 %i.aei, %i.aej
  %i.ael = sdiv exact i64 %i.aek, 208
  %i.aem = icmp ult i64 %i.aef, %i.ael
  br i1 %i.aem, label %.lr.ph1627, label %._crit_edge1628, !llvm.loop !354

bb.hx:                                            ; preds = %bb.hs
  %i.aen = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hy:                                            ; preds = %bb.ht
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hu
  %i.aep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %70) #24
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %.pn402 = phi { ptr, i32 } [ %i.aep, %bb.hz ], [ %i.aeo, %bb.hy ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #24
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hx
  %.pn402.pn = phi { ptr, i32 } [ %.pn402, %bb.ia ], [ %i.aen, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  br label %bb.id
end_hunk_0
