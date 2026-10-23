Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_encoder?download=true
inline.NumInlined: 1688
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEE:bb.a
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.he, align 8, !tbaa !147
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.hd, align 8, !tbaa !148
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %2, align 8, !tbaa !15
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.hh, align 8, !tbaa !147
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.hg, align 8, !tbaa !148
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef -1.000000e+00)
          to label %bb.aj unwind label %.body.i

bb.aj:                                            ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %2, align 8, !tbaa !15
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !148 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i5.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hj = invoke noundef zeroext i1 %i.hi(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %i.hf, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i unwind label %bb.al, !inline_history !150 ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  call void @__clang_call_terminate(ptr %i.hl) #26, !inline_history !150
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i: ; preds = %bb.ak, %bb.aj
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %2) #27, !inline_history !150
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !148 ; 2 uses
  %.not.i.i136 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i136, label %bb.av, label %bb.am

bb.am:                                            ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i
  %i.hn = invoke noundef zeroext i1 %i.hm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.av unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #26
  unreachable

.body.i:                                          ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #27
  %i.hr = load ptr, ptr %i.hd, align 8, !tbaa !148 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.hr, null
  br i1 %.not.i7.i, label %_ZNSt14_Function_baseD2Ev.exit8.i, label %bb.ao

bb.ao:                                            ; preds = %.body.i
  %i.hs = invoke noundef zeroext i1 %i.hr(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8.i unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit8.i:                ; preds = %bb.ao, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.hv = load ptr, ptr %i.hb, align 8, !tbaa !148 ; 2 uses
  %.not.i150 = icmp eq ptr %i.hv, null
  br i1 %.not.i150, label %_ZNSt14_Function_baseD2Ev.exit151, label %bb.bb

._crit_edge270:                                   ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit146
  %i.hw = add nuw nsw i32 %.068273, 1             ; 2 uses
  %exitcond321.not = icmp eq i32 %i.hw, %i.fi
  br i1 %exitcond321.not, label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit.i, label %.preheader, !llvm.loop !313

bb.aq:                                            ; preds = %.preheader, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit146
  %indvars.iv315 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next316, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit146 ] ; 2 uses
  %.5267 = phi i64 [ %.4272, %.preheader ], [ %i.ja, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit146 ] ; 2 uses
  %i.hx = load ptr, ptr %4, align 8, !tbaa !89
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %indvars.iv315 ; 4 uses
  %i.hz = load ptr, ptr %1, align 8, !tbaa !62
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.5267 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 4 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !61 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 3 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !64
  %.not.i137 = icmp eq ptr %i.ic, %i.ie
  br i1 %.not.i137, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.if = load i8, ptr %i.ia, align 1, !tbaa !16
  store i8 %i.if, ptr %i.ic, align 1, !tbaa !16
  %i.ig = load ptr, ptr %i.ib, align 8, !tbaa !61
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  store ptr %i.ih, ptr %i.ib, align 8, !tbaa !61
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit146

bb.as:                                            ; preds = %bb.aq
  %i.ii = load ptr, ptr %i.hy, align 8, !tbaa !62 ; 4 uses
  %i.ij = ptrtoint ptr %i.ic to i64
  %i.ik = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.il = sub i64 %i.ij, %i.ik                    ; 7 uses
  %i.im = icmp eq i64 %i.il, 9223372036854775807
  br i1 %i.im, label %.split.us.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i138

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i138: ; preds = %bb.as
  %.sroa.speculated.i.i.i139 = tail call i64 @llvm.umax.i64(i64 %i.il, i64 1)
  %i.in = add i64 %.sroa.speculated.i.i.i139, %i.il ; 2 uses
  %i.io = icmp ult i64 %i.in, %i.il
  %i.ip = tail call i64 @llvm.umin.i64(i64 %i.in, i64 9223372036854775807)
  %i.iq = select i1 %i.io, i64 9223372036854775807, i64 %i.ip ; 3 uses
  %.not.i.i.i140 = icmp ne i64 %i.iq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i140)
  %i.ir = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #30
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i138
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.il ; 2 uses
  %i.it = load i8, ptr %i.ia, align 1, !tbaa !16
  store i8 %i.it, ptr %i.is, align 1, !tbaa !16
  %i.iu = icmp sgt i64 %i.il, 0
  br i1 %i.iu, label %bb.at, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i141

bb.at:                                            ; preds = %.noexc145
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ir, ptr align 1 %i.ii, i64 %i.il, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i141

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i141: ; preds = %bb.at, %.noexc145
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  %.not.i17.i.i142 = icmp eq ptr %i.ii, null
  br i1 %.not.i17.i.i142, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i143, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i141
  %i.iw = load ptr, ptr %i.id, align 8, !tbaa !64
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = sub i64 %i.ix, %i.ik
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.iy) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i143

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i143: ; preds = %bb.au, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i141
  store ptr %i.ir, ptr %i.hy, align 8, !tbaa !62
  store ptr %i.iv, ptr %i.ib, align 8, !tbaa !61
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iq
  store ptr %i.iz, ptr %i.id, align 8, !tbaa !64
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit146

_ZNSt6vectorIhSaIhEE9push_backERKh.exit146:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i143, %bb.ar
  %i.ja = add i64 %.5267, 1                       ; 2 uses
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next316, %wide.trip.count319
  br i1 %exitcond320.not, label %._crit_edge270, label %bb.aq, !llvm.loop !314

bb.av:                                            ; preds = %bb.am, %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.jb = load ptr, ptr %i.hb, align 8, !tbaa !148 ; 2 uses
  %.not.i147 = icmp eq ptr %i.jb, null
  br i1 %.not.i147, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jc = invoke noundef zeroext i1 %i.jb(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.jf = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.jg = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji                    ; 3 uses
  %i.jk = icmp ugt i64 %.165.lcssa, %i.jj
  br i1 %i.jk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.jl = sub nuw i64 %.165.lcssa, %i.jj
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jl)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.jm = icmp ult i64 %.165.lcssa, %i.jj
  br i1 %i.jm, label %bb.ba, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.ba:                                            ; preds = %bb.az
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.165.lcssa ; 2 uses
  %.not.i.i148 = icmp eq ptr %i.jf, %i.jn
  br i1 %.not.i.i148, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ba
  store ptr %i.jn, ptr %i.a, align 8, !tbaa !61
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.ay, %bb.az, %bb.ba, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.jo = load ptr, ptr %i.di, align 8, !tbaa !90 ; 3 uses
  %i.jp = load ptr, ptr %4, align 8, !tbaa !89    ; 5 uses
  %.not274 = icmp eq ptr %i.jo, %i.jp
  br i1 %.not274, label %.critedge, label %.lr.ph278.preheader

.lr.ph278.preheader:                              ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !95 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !95 ; 2 uses
  %.not421 = icmp eq ptr %i.jq, %i.js
  br i1 %.not421, label %.critedge, label %.lr.ph424

bb.bb:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit8.i
  %i.jt = invoke noundef zeroext i1 %i.hv(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit151 unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  %i.jv = extractvalue { ptr, i32 } %i.ju, 0
  call void @__clang_call_terminate(ptr %i.jv) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit151:                ; preds = %_ZNSt14_Function_baseD2Ev.exit8.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i125, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i138, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.us, %.split.us.invoke, %bb.ay
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph278:                                        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.ks, i64 %.066276422 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !61
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = add i64 %.6275423, %i.jz
  %i.kb = load ptr, ptr %i.jw, align 8, !tbaa !62
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = sub i64 %i.ka, %i.kc
  %i.ke = getelementptr inbounds nuw [24 x i8], ptr %i.ks, i64 %i.kt ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !95 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !95 ; 2 uses
  %.not = icmp eq ptr %i.kf, %i.kh
  br i1 %.not, label %.critedge, label %.lr.ph424, !llvm.loop !315

.lr.ph424:                                        ; preds = %.lr.ph278.preheader, %.lr.ph278
  %i.ki = phi ptr [ %i.kh, %.lr.ph278 ], [ %i.js, %.lr.ph278.preheader ]
  %i.kj = phi ptr [ %i.kf, %.lr.ph278 ], [ %i.jq, %.lr.ph278.preheader ] ; 3 uses
  %.6275423 = phi i64 [ %i.kd, %.lr.ph278 ], [ 0, %.lr.ph278.preheader ] ; 2 uses
  %.066276422 = phi i64 [ %i.kt, %.lr.ph278 ], [ 0, %.lr.ph278.preheader ] ; 2 uses
  %i.kk = load ptr, ptr %1, align 8, !tbaa !95
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 %.6275423 ; 2 uses
  %i.km = ptrtoint ptr %i.ki to i64
  %i.kn = ptrtoint ptr %i.kj to i64
  %i.ko = sub i64 %i.km, %i.kn                    ; 3 uses
  %i.kp = icmp sgt i64 %i.ko, 1
  br i1 %i.kp, label %bb.bd, label %bb.be, !prof !96

bb.bd:                                            ; preds = %.lr.ph424
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.kl, ptr align 1 %i.kj, i64 %i.ko, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.be:                                            ; preds = %.lr.ph424
  %i.kq = icmp eq i64 %i.ko, 1
  br i1 %i.kq, label %bb.bf, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.bf:                                            ; preds = %bb.be
  %i.kr = load i8, ptr %i.kj, align 1, !tbaa !16
  store i8 %i.kr, ptr %i.kl, align 1, !tbaa !16
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.bf, %bb.be, %bb.bd
  %i.ks = load ptr, ptr %4, align 8, !tbaa !89    ; 5 uses
  %i.kt = add nuw i64 %.066276422, 1              ; 3 uses
  %i.ku = load ptr, ptr %i.di, align 8, !tbaa !90 ; 3 uses
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.ks to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = sdiv exact i64 %i.kx, 24
  %.not.not = icmp ult i64 %i.kt, %i.ky
  br i1 %.not.not, label %.lr.ph278, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit..critedge.loopexit_crit_edge, !llvm.loop !315

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit..critedge.loopexit_crit_edge: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit
  br label %.critedge, !llvm.loop !315

.critedge:                                        ; preds = %.lr.ph278, %.lr.ph278.preheader, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit..critedge.loopexit_crit_edge, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %.lcssa201 = phi ptr [ %i.jo, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %i.jo, %.lr.ph278.preheader ], [ %i.ku, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit..critedge.loopexit_crit_edge ], [ %i.ku, %.lr.ph278 ] ; 2 uses
  %.lcssa = phi ptr [ %i.jp, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %i.jp, %.lr.ph278.preheader ], [ %i.ks, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit..critedge.loopexit_crit_edge ], [ %i.ks, %.lr.ph278 ] ; 3 uses
  %.not.lcssa = phi i1 [ true, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ false, %.lr.ph278.preheader ], [ true, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit..critedge.loopexit_crit_edge ], [ false, %.lr.ph278 ] ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa201
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.lf, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i ], [ %.lcssa, %.critedge ] ; 3 uses
  %i.kz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !64
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.kz to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.le) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i152 = icmp eq ptr %i.lf, %.lcssa201
  br i1 %.not.i.i.i152, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !89
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %.critedge
  %i.lg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %.critedge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i
  %i.lh = load ptr, ptr %i.dj, align 8, !tbaa !91
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.lg to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.lk) #29
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not.i.i.i153 = icmp eq ptr %.sroa.0159.1.lcssa, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit
  %i.ll = ptrtoint ptr %.sroa.29.1.lcssa to i64
  %i.lm = ptrtoint ptr %.sroa.0159.1.lcssa to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0159.1.lcssa, i64 noundef %i.ln) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit151
  %.pn97.pn = phi { ptr, i32 } [ %i.hq, %_ZNSt14_Function_baseD2Ev.exit151 ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.split-lp, %bb.w
  %.pn97.pn.pn = phi { ptr, i32 } [ %.pn97.pn, %.loopexit.split-lp ], [ %i.fa, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.loopexit.split-lp194

.loopexit.split-lp194:                            ; preds = %.loopexit193, %.loopexit.split-lp194.loopexit.split-lp, %.loopexit.split-lp194.loopexit, %bb.bj
  %.sroa.29.3 = phi ptr [ %.sroa.29.1.lcssa, %bb.bj ], [ %.sroa.29.1246, %.loopexit193 ], [ %.sroa.29.0238, %.loopexit.split-lp194.loopexit ], [ %.sroa.29.2.ph.ph, %.loopexit.split-lp194.loopexit.split-lp ]
  %.sroa.0159.3 = phi ptr [ %.sroa.0159.1.lcssa, %bb.bj ], [ %.sroa.0159.1247, %.loopexit193 ], [ %.sroa.0159.0239, %.loopexit.split-lp194.loopexit ], [ %.sroa.0159.2.ph.ph, %.loopexit.split-lp194.loopexit.split-lp ] ; 3 uses
  %.pn101 = phi { ptr, i32 } [ %.pn97.pn.pn, %bb.bj ], [ %lpad.loopexit195, %.loopexit193 ], [ %lpad.loopexit198, %.loopexit.split-lp194.loopexit ], [ %lpad.loopexit.split-lp199, %.loopexit.split-lp194.loopexit.split-lp ]
  %.not.i.i.i154 = icmp eq ptr %.sroa.0159.3, null
  br i1 %.not.i.i.i154, label %_ZNSt6vectorIiSaIiEED2Ev.exit155, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.split-lp194
  %i.lo = ptrtoint ptr %.sroa.29.3 to i64
  %i.lp = ptrtoint ptr %.sroa.0159.3 to i64
  %i.lq = sub i64 %i.lo, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0159.3, i64 noundef %i.lq) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit155

_ZNSt6vectorIiSaIiEED2Ev.exit155:                 ; preds = %.loopexit.split-lp194, %bb.bk
  resume { ptr, i32 } %.pn101

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bi, %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit, %bb.d
  %.2 = phi i1 [ %i.y, %bb.d ], [ %.not.lcssa, %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit ], [ %.not.lcssa, %bb.bi ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv17QRCodeDecoderImpl13decodeSymbolsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.not = icmp ult i64 %i.c, %i.i
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv17QRCodeDecoderImpl13decodeSymbolsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr noundef nonnull @.str.1, i32 noundef 1741) #28
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.ac

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !25
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.17, i64 noundef 0) ; 0 uses
  %i.t = load i64, ptr %i.b, align 8, !tbaa !131
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %.not2832 = icmp ult i64 %i.t, %i.y
  br i1 %.not2832, label %.lr.ph, label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

.lr.ph:                                           ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 4) ; 4 uses
  %i.ah = load i32, ptr %i.z, align 8, !tbaa !135
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ag, ptr %i.z, align 8, !tbaa !135
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !131
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %.not29 = icmp ult i64 %i.ak, %i.ap
  br i1 %.not29, label %bb.l, label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.l:                                             ; preds = %bb.k
  switch i32 %i.ag, label %bb.z [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 4, label %bb.o
    i32 7, label %bb.q
    i32 8, label %bb.x
    i32 3, label %bb.y
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2cv17QRCodeDecoderImpl13decodeNumericERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN2cv17QRCodeDecoderImpl11decodeAlphaERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.o:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %i.ae, align 8, !tbaa !134
  %i.ar = icmp slt i32 %i.aq, 10
  %i.as = select i1 %i.ar, i32 8, i32 16
  %i.at = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef %i.as) ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.lr.ph.i:                                         ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i
  %.04.i = phi i32 [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ], [ 0, %bb.o ]
  %i.av = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8)
  %i.aw = trunc i32 %i.av to i8
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !25  ; 4 uses
  %i.ay = add i64 %i.ax, 1                        ; 3 uses
  %i.az = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.af
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %.lr.ph.i
  %i.bb = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.bb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.bc = load i64, ptr %i.af, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bd = phi i64 [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.be = icmp ugt i64 %i.ay, %i.bd
  br i1 %i.be, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bf = phi ptr [ %.pre.i.i.i, %bb.p ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  store i8 %i.aw, ptr %i.bg, align 1, !tbaa !16
  store i64 %i.ay, ptr %i.q, align 8, !tbaa !25
  %i.bh = load ptr, ptr %1, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ay
  store i8 0, ptr %i.bi, align 1, !tbaa !16
  %i.bj = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bj, %i.at
  br i1 %exitcond.not.i, label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i, !llvm.loop !5

bb.q:                                             ; preds = %bb.l
  %i.bk = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !316 ; 6 uses
  %i.bl = and i32 %i.bk, 128
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !316
  %i.bn = shl i32 %i.bm, 8
  %i.bo = or i32 %i.bn, %i.bk                     ; 2 uses
  %i.bp = and i32 %i.bk, 64
  %.not.i.1 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.1, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !316
  %i.br = shl i32 %i.bq, 16
  %i.bs = or i32 %i.br, %i.bo                     ; 2 uses
  %i.bt = and i32 %i.bk, 32
  %.not.i.2 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.2, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !316
  %i.bv = shl i32 %i.bu, 24
  %i.bw = or i32 %i.bv, %i.bs
  %i.bx = and i32 %i.bk, 16
end_hunk_0
