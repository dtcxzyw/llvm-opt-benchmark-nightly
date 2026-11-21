Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/AKAZEFeatures?download=true
inline.NumInlined: 1054
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN2cv11xfeatures2d13AKAZEFeatures28Create_Nonlinear_Scale_SpaceERKNS_11_InputArrayE:bb.a

bb.ej:                                            ; preds = %bb.ei
  %i.om = landingpad { ptr, i32 }
          catch ptr null
  %i.on = extractvalue { ptr, i32 } %i.om, 0
  call void @__clang_call_terminate(ptr %i.on) #27
  unreachable

.body148.i:                                       ; preds = %.body158.i, %bb.ac, %bb.ab, %bb.aa, %.body.i, %bb.y
  %.pn141.pn.i = phi { ptr, i32 } [ %.pn92.i, %.body.i ], [ %i.bt, %bb.ab ], [ %.pn133.pn.pn.pn.pn.pn.pn.i, %.body158.i ], [ %i.bu, %bb.ac ], [ %i.bs, %bb.aa ], [ %i.bq, %bb.y ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.ek

bb.ek:                                            ; preds = %.body148.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn141.pn.pn.i = phi { ptr, i32 } [ %.pn141.pn.i, %.body148.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  resume { ptr, i32 } %.pn141.pn.pn.i

_ZN2cv11xfeatures2dL28create_nonlinear_scale_spaceINS_3MatEEEvRKNS_11_InputArrayERKNS0_12AKAZEOptionsERKSt6vectorIS9_IfSaIfEESaISB_EERS9_INS0_9EvolutionIT_EESaISI_EE.exit: ; preds = %bb.eh, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d13AKAZEFeatures17Feature_DetectionERSt6vectorINS_8KeyPointESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv11xfeatures2d13AKAZEFeatures17Feature_DetectionERSt6vectorINS_8KeyPointESaIS3_EEE25__cv_trace_location_fn678)
  %i.a = load ptr, ptr %1, align 8, !tbaa !109    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !110
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv11xfeatures2d13AKAZEFeatures24Find_Scale_Space_ExtremaERSt6vectorINS_3MatESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit
  invoke void @_ZN2cv11xfeatures2d13AKAZEFeatures22Do_Subpixel_RefinementERSt6vectorINS_3MatESaIS3_EERS2_INS_8KeyPointESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK2cv11xfeatures2d13AKAZEFeatures29Compute_Keypoints_OrientationERSt6vectorINS_8KeyPointESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %3, align 8, !tbaa !112    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.d, %bb.d ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #23
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !112
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.d
  %i.h = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %bb.d ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #27
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d13AKAZEFeatures24Find_Scale_Space_ExtremaERSt6vectorINS_3MatESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 8 uses
  %3 = alloca %"class.cv::Range", align 4         ; 6 uses
  %4 = alloca %"class.cv::xfeatures2d::FindKeypointsSameScale", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv11xfeatures2d13AKAZEFeatures24Find_Scale_Space_ExtremaERSt6vectorINS_3MatESaIS3_EEE25__cv_trace_location_fn796)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 1080                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113  ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 208                 ; 3 uses
  %i.p = icmp ugt i64 %i.h, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.h, %i.o
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.q)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %i.h, %i.o
  br i1 %i.r, label %bb.d, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [208 x i8], ptr %i.k, i64 %i.h ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, %i.s
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #23
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.s, ptr %i.i, align 8, !tbaa !113
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 1080
  %i.aa = trunc i64 %i.z to i32
  store i32 0, ptr %3, align 4, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !242
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv11xfeatures2d22FindKeypointsSameScaleE, i64 16), ptr %4, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !117
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.af, align 8, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.ad, ptr %i.ag, align 8, !tbaa !119
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef -1.000000e+00)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !113 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !112   ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 208               ; 2 uses
  %i.an = icmp ugt i64 %i.am, 1
  br i1 %i.an, label %.lr.ph121, label %._crit_edge122

._crit_edge122:                                   ; preds = %._crit_edge118, %bb.e
  %.lcssa113 = phi i64 [ %i.am, %bb.e ], [ %i.ei, %._crit_edge118 ] ; 2 uses
  %i.ao = trunc i64 %.lcssa113 to i32
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %.lr.ph137.preheader, label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %._crit_edge122
  %i.aq = add nsw i64 %.lcssa113, 4294967294
  %i.ar = and i64 %i.aq, 4294967295
  br label %.lr.ph137

bb.f:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.r

.lr.ph121:                                        ; preds = %bb.e, %._crit_edge118
  %i.au = phi ptr [ %8, %._crit_edge118 ], [ %i.ai, %bb.e ] ; 4 uses
  %i.av = phi ptr [ %9, %._crit_edge118 ], [ %i.ah, %bb.e ] ; 2 uses
  %.084119 = phi i64 [ %i.ee, %._crit_edge118 ], [ 1, %bb.e ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [208 x i8], ptr %i.au, i64 %.084119 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !62
  %i.az = add i64 %.084119, -1                    ; 3 uses
  %i.ba = getelementptr inbounds nuw [208 x i8], ptr %i.au, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !62
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.be = getelementptr inbounds nuw [1080 x i8], ptr %i.bd, i64 %.084119 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 856
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bh = getelementptr inbounds nuw [1080 x i8], ptr %i.bd, i64 %i.az ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 856
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !62
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 1068
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !72
  %i.bm = fptosi float %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 1068
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !72
  %i.bp = fptosi float %i.bo to i32
  %i.bq = sdiv i32 %i.bm, %i.bp                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 1064
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !70
  %i.bt = mul nsw i32 %i.bs, %i.bq
  %.fr139 = freeze i32 %i.bt                      ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !61 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.preheader107.lr.ph, label %._crit_edge118

.preheader107.lr.ph:                              ; preds = %.lr.ph121
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 2 uses
  %5 = icmp sgt i32 %.fr139, 0
  %i.by = mul nuw nsw i32 %.fr139, %.fr139
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !99 ; 4 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.preheader107.preheader, label %._crit_edge118

.preheader107.preheader:                          ; preds = %.preheader107.lr.ph
  %i.cb = sext i32 %i.bq to i64                   ; 2 uses
  %i.cc = sext i32 %.fr139 to i64                 ; 2 uses
  br label %.preheader107

.preheader107:                                    ; preds = %.preheader107.preheader, %._crit_edge
  %6 = phi i32 [ %i.bv, %.preheader107.preheader ], [ %10, %._crit_edge ] ; 2 uses
  %i.cd = phi i32 [ %i.bz, %.preheader107.preheader ], [ %11, %._crit_edge ] ; 3 uses
  %i.ce = phi i32 [ %i.bz, %.preheader107.preheader ], [ %12, %._crit_edge ] ; 4 uses
  %i.cf = phi i32 [ %i.bz, %.preheader107.preheader ], [ %13, %._crit_edge ] ; 2 uses
  %indvars.iv155 = phi i64 [ 0, %.preheader107.preheader ], [ %indvars.iv.next156, %._crit_edge ] ; 2 uses
  %.082116 = phi i64 [ 0, %.preheader107.preheader ], [ %.183.lcssa, %._crit_edge ] ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader107
  %i.ch = mul nsw i64 %indvars.iv155, %i.cb       ; 2 uses
  %i.ci = add nsw i64 %i.ch, %i.cc
  %i.cj = trunc nsw i64 %i.ch to i32              ; 2 uses
  %i.ck = sub i32 %i.cj, %.fr139
  %i.cl = sext i32 %i.ck to i64
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit.thread.us
  %i.cm = phi i32 [ %i.dz, %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit.thread.us ], [ %i.cd, %.lr.ph ] ; 3 uses
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit.thread.us ], [ 0, %.lr.ph ] ; 2 uses
  %.183114.us = phi i64 [ %i.ea, %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit.thread.us ], [ %.082116, %.lr.ph ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.183114.us
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !53
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit.thread.us, label %.lr.ph.us.preheader.i.us

.lr.ph.us.preheader.i.us:                         ; preds = %.lr.ph.split.us
  %i.cq = mul nsw i64 %indvars.iv.a, %i.cb        ; 2 uses
  %i.cr = load ptr, ptr %1, align 8, !tbaa !112
  %i.cs = getelementptr inbounds nuw [208 x i8], ptr %i.cr, i64 %i.az ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 128
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !100
  %i.cx = add nsw i64 %i.cq, %i.cc
  %i.cy = trunc nsw i64 %i.cq to i32              ; 2 uses
  %i.cz = sub i32 %i.cy, %.fr139
  %i.da = sext i32 %i.cz to i64
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %._crit_edge.us.i.us, %.lr.ph.us.preheader.i.us
  %indvars.iv60.i.us = phi i64 [ %i.cl, %.lr.ph.us.preheader.i.us ], [ %indvars.iv.next61.i.us, %._crit_edge.us.i.us ] ; 3 uses
  %i.db = mul i64 %indvars.iv60.i.us, %i.cw
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.db
  %i.dd = trunc i64 %indvars.iv60.i.us to i32     ; 2 uses
  %i.de = sub i32 %i.dd, %i.cj                    ; 2 uses
  %i.df = mul nsw i32 %i.de, %i.de
  br label %bb.h

bb.h:                                             ; preds = %.critedge.us.i.us, %.lr.ph.us.i.us
  %indvars.iv.i.us = phi i64 [ %i.da, %.lr.ph.us.i.us ], [ %indvars.iv.next.i.us, %.critedge.us.i.us ] ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 %indvars.iv.i.us
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !53
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %.critedge.us.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dj = trunc i64 %indvars.iv.i.us to i32       ; 2 uses
  %i.dk = sub i32 %i.dj, %i.cy                    ; 2 uses
  %i.dl = mul nsw i32 %i.dk, %i.dk
  %i.dm = add nuw nsw i32 %i.dl, %i.df
  %.not.us.i.us = icmp samesign ugt i32 %i.dm, %i.by
  br i1 %.not.us.i.us, label %.critedge.us.i.us, label %bb.j

.critedge.us.i.us:                                ; preds = %bb.i, %bb.h
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %.not41.us.i.us = icmp slt i64 %indvars.iv.next.i.us, %i.cx
  br i1 %.not41.us.i.us, label %bb.h, label %._crit_edge.us.i.us, !llvm.loop !1

._crit_edge.us.i.us:                              ; preds = %.critedge.us.i.us
  %indvars.iv.next61.i.us = add nsw i64 %indvars.iv60.i.us, 1 ; 2 uses
  %i.dn = icmp slt i64 %indvars.iv.next61.i.us, %i.ci
  br i1 %i.dn, label %.lr.ph.us.i.us, label %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit.thread.us, !llvm.loop !2

bb.j:                                             ; preds = %bb.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !99
  %i.dq = mul nsw i32 %i.dp, %i.dd
  %i.dr = add nsw i32 %i.dq, %i.dj
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.183114.us
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !16
  %i.du = sext i32 %i.dr to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !16
  %i.dx = fcmp ogt float %i.dt, %i.dw
  br i1 %i.dx, label %bb.k, label %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit.thread.us

bb.k:                                             ; preds = %bb.j
  %i.dy = getelementptr inbounds i8, ptr %i.bc, i64 %i.du
  store i8 0, ptr %i.dy, align 1, !tbaa !53
  %.pre = load i32, ptr %i.bx, align 4, !tbaa !99
  br label %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit.thread.us

_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit.thread.us: ; preds = %._crit_edge.us.i.us, %bb.k, %bb.j, %.lr.ph.split.us
  %i.dz = phi i32 [ %i.cm, %.lr.ph.split.us ], [ %.pre, %bb.k ], [ %i.cm, %bb.j ], [ %i.cm, %._crit_edge.us.i.us ] ; 5 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.ea = add i64 %.183114.us, 1                  ; 2 uses
  %i.eb = sext i32 %i.dz to i64
  %i.ec = icmp slt i64 %indvars.iv.next.a, %i.eb
  br i1 %i.ec, label %.lr.ph.split.us, label %._crit_edge.loopexit, !llvm.loop !236

.lr.ph.split:                                     ; preds = %.lr.ph
  %smax = call i32 @llvm.smax.i32(i32 %i.ce, i32 1)
  %7 = zext nneg i32 %smax to i64
  %i.ed = add i64 %.082116, %7
  br label %._crit_edge

._crit_edge118.loopexit:                          ; preds = %._crit_edge
  %.pre163.a = load ptr, ptr %i.i, align 8, !tbaa !113
  %.pre164 = load ptr, ptr %1, align 8, !tbaa !112
  br label %._crit_edge118

._crit_edge118:                                   ; preds = %.preheader107.lr.ph, %._crit_edge118.loopexit, %.lr.ph121
  %8 = phi ptr [ %i.au, %.lr.ph121 ], [ %.pre164, %._crit_edge118.loopexit ], [ %i.au, %.preheader107.lr.ph ] ; 2 uses
  %9 = phi ptr [ %i.av, %.lr.ph121 ], [ %.pre163.a, %._crit_edge118.loopexit ], [ %i.av, %.preheader107.lr.ph ] ; 2 uses
  %i.ee = add nuw i64 %.084119, 1                 ; 2 uses
  %i.ef = ptrtoint ptr %9 to i64
  %i.eg = ptrtoint ptr %8 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = sdiv exact i64 %i.eh, 208               ; 2 uses
  %i.ej = icmp ult i64 %i.ee, %i.ei
  br i1 %i.ej, label %.lr.ph121, label %._crit_edge122, !llvm.loop !237

._crit_edge.loopexit:                             ; preds = %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit.thread.us
  %.pre162 = load i32, ptr %i.bu, align 8, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %._crit_edge.loopexit, %.preheader107
  %10 = phi i32 [ %6, %.preheader107 ], [ %.pre162, %._crit_edge.loopexit ], [ %6, %.lr.ph.split ] ; 2 uses
  %11 = phi i32 [ %i.cd, %.preheader107 ], [ %i.dz, %._crit_edge.loopexit ], [ %i.cd, %.lr.ph.split ]
  %12 = phi i32 [ %i.ce, %.preheader107 ], [ %i.dz, %._crit_edge.loopexit ], [ %i.ce, %.lr.ph.split ]
  %13 = phi i32 [ %i.cf, %.preheader107 ], [ %i.dz, %._crit_edge.loopexit ], [ %i.ce, %.lr.ph.split ]
  %.183.lcssa = phi i64 [ %.082116, %.preheader107 ], [ %i.ea, %._crit_edge.loopexit ], [ %i.ed, %.lr.ph.split ]
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %14 = sext i32 %10 to i64
  %15 = icmp slt i64 %indvars.iv.next156, %14
  br i1 %15, label %.preheader107, label %._crit_edge118.loopexit, !llvm.loop !238

._crit_edge138:                                   ; preds = %._crit_edge134, %._crit_edge122
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.el, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge138
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #27
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge138, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %._crit_edge134
  %indvars.iv159 = phi i64 [ %i.ar, %.lr.ph137.preheader ], [ %indvars.iv.next160, %._crit_edge134 ] ; 5 uses
  %i.eo = load ptr, ptr %1, align 8, !tbaa !112   ; 2 uses
  %i.ep = getelementptr inbounds nuw [208 x i8], ptr %i.eo, i64 %indvars.iv159 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !62
  %i.es = add nuw nsw i64 %indvars.iv159, 1       ; 3 uses
  %i.et = getelementptr inbounds nuw [208 x i8], ptr %i.eo, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !62
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.ex = getelementptr inbounds nuw [1080 x i8], ptr %i.ew, i64 %indvars.iv159 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 856
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !62
  %i.fa = getelementptr inbounds nuw [1080 x i8], ptr %i.ew, i64 %i.es ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 856
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !62
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 1068
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !72
  %i.ff = fptosi float %i.fe to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 1068
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !72
  %i.fi = fptosi float %i.fh to i32
  %i.fj = sdiv i32 %i.ff, %i.fi                   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 1064
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !70
  %.fr = freeze i32 %i.fl                         ; 7 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !61 ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.preheader.lr.ph, label %._crit_edge134

.preheader.lr.ph:                                 ; preds = %.lr.ph137
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ep, i64 12 ; 2 uses
  %16 = icmp sgt i32 %.fr, 0
  %i.fq = mul nuw nsw i32 %.fr, %.fr
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !99 ; 4 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.preheader, label %._crit_edge134

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge127
  %17 = phi i32 [ %21, %._crit_edge127 ], [ %i.fn, %.preheader.lr.ph ] ; 2 uses
  %i.ft = phi i32 [ %22, %._crit_edge127 ], [ %i.fr, %.preheader.lr.ph ] ; 3 uses
  %i.fu = phi i32 [ %23, %._crit_edge127 ], [ %i.fr, %.preheader.lr.ph ] ; 4 uses
  %i.fv = phi i32 [ %24, %._crit_edge127 ], [ %i.fr, %.preheader.lr.ph ] ; 2 uses
  %.077132 = phi i32 [ %i.ht, %._crit_edge127 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.078131 = phi i64 [ %.1.lcssa, %._crit_edge127 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %.preheader
  br i1 %16, label %.lr.ph126.split.us, label %.lr.ph126.split

.lr.ph126.split.us:                               ; preds = %.lr.ph126, %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit99.thread.us
  %i.fx = phi i32 [ %i.hp, %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit99.thread.us ], [ %i.ft, %.lr.ph126 ] ; 3 uses
  %.0125.us = phi i32 [ %i.hq, %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit99.thread.us ], [ 0, %.lr.ph126 ] ; 2 uses
  %.1124.us = phi i64 [ %i.hr, %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit99.thread.us ], [ %.078131, %.lr.ph126 ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.er, i64 %.1124.us
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !53
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit99.thread.us, label %.lr.ph.us.preheader.i88.us

.lr.ph.us.preheader.i88.us:                       ; preds = %.lr.ph126.split.us
  %i.gb = sdiv i32 %.0125.us, %i.fj               ; 3 uses
  %i.gc = sdiv i32 %.077132, %i.fj                ; 3 uses
  %i.gd = load ptr, ptr %1, align 8, !tbaa !112
  %i.ge = getelementptr inbounds nuw [208 x i8], ptr %i.gd, i64 %i.es ; 3 uses
  %i.gf = add nsw i32 %i.gc, %.fr
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !62
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 128
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !100
  %i.gk = add nsw i32 %i.gb, %.fr
  %i.gl = sub i32 %i.gb, %.fr
  %i.gm = sub i32 %i.gc, %.fr
  %i.gn = sext i32 %i.gl to i64
  %i.go = sext i32 %i.gk to i64
  %i.gp = sext i32 %i.gm to i64
  %i.gq = sext i32 %i.gf to i64
  br label %.lr.ph.us.i89.us

.lr.ph.us.i89.us:                                 ; preds = %._crit_edge.us.i97.us, %.lr.ph.us.preheader.i88.us
  %indvars.iv60.i90.us = phi i64 [ %i.gp, %.lr.ph.us.preheader.i88.us ], [ %indvars.iv.next61.i98.us, %._crit_edge.us.i97.us ] ; 3 uses
  %i.gr = mul i64 %indvars.iv60.i90.us, %i.gj
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gr
  %i.gt = trunc i64 %indvars.iv60.i90.us to i32   ; 2 uses
  %i.gu = sub i32 %i.gt, %i.gc                    ; 2 uses
  %i.gv = mul nsw i32 %i.gu, %i.gu
  br label %bb.n

bb.n:                                             ; preds = %.critedge.us.i94.us, %.lr.ph.us.i89.us
  %indvars.iv.i91.us = phi i64 [ %i.gn, %.lr.ph.us.i89.us ], [ %indvars.iv.next.i95.us, %.critedge.us.i94.us ] ; 3 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gs, i64 %indvars.iv.i91.us
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !53
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %.critedge.us.i94.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gz = trunc nsw i64 %indvars.iv.i91.us to i32 ; 2 uses
  %i.ha = sub i32 %i.gz, %i.gb                    ; 2 uses
  %i.hb = mul nsw i32 %i.ha, %i.ha
  %i.hc = add nuw nsw i32 %i.hb, %i.gv
  %.not.us.i92.us = icmp samesign ugt i32 %i.hc, %i.fq
  br i1 %.not.us.i92.us, label %.critedge.us.i94.us, label %bb.p

.critedge.us.i94.us:                              ; preds = %bb.o, %bb.n
  %indvars.iv.next.i95.us = add nsw i64 %indvars.iv.i91.us, 1 ; 2 uses
  %.not41.us.i96.us = icmp slt i64 %indvars.iv.next.i95.us, %i.go
  br i1 %.not41.us.i96.us, label %bb.n, label %._crit_edge.us.i97.us, !llvm.loop !1

._crit_edge.us.i97.us:                            ; preds = %.critedge.us.i94.us
  %indvars.iv.next61.i98.us = add nsw i64 %indvars.iv60.i90.us, 1 ; 2 uses
  %i.hd = icmp slt i64 %indvars.iv.next61.i98.us, %i.gq
  br i1 %i.hd, label %.lr.ph.us.i89.us, label %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit99.thread.us, !llvm.loop !2

bb.p:                                             ; preds = %bb.o
  %i.he = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !99
  %i.hg = mul nsw i32 %i.hf, %i.gt
  %i.hh = add nsw i32 %i.hg, %i.gz
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %.1124.us
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !16
  %i.hk = sext i32 %i.hh to i64                   ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !16
  %i.hn = fcmp ogt float %i.hj, %i.hm
  br i1 %i.hn, label %bb.q, label %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit99.thread.us

bb.q:                                             ; preds = %bb.p
  %i.ho = getelementptr inbounds i8, ptr %i.ev, i64 %i.hk
  store i8 0, ptr %i.ho, align 1, !tbaa !53
  %.pre165 = load i32, ptr %i.fp, align 4, !tbaa !99
  br label %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit99.thread.us

_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit99.thread.us: ; preds = %._crit_edge.us.i97.us, %bb.q, %bb.p, %.lr.ph126.split.us
  %i.hp = phi i32 [ %i.fx, %.lr.ph126.split.us ], [ %.pre165, %bb.q ], [ %i.fx, %bb.p ], [ %i.fx, %._crit_edge.us.i97.us ] ; 5 uses
  %i.hq = add nuw nsw i32 %.0125.us, 1            ; 2 uses
  %i.hr = add i64 %.1124.us, 1                    ; 2 uses
  %i.hs = icmp slt i32 %i.hq, %i.hp
  br i1 %i.hs, label %.lr.ph126.split.us, label %._crit_edge127.loopexit, !llvm.loop !239

.lr.ph126.split:                                  ; preds = %.lr.ph126
  %smax158 = call i32 @llvm.smax.i32(i32 %i.fu, i32 1)
  %18 = zext nneg i32 %smax158 to i64
  %19 = add i64 %.078131, %18
  br label %._crit_edge127

._crit_edge134:                                   ; preds = %._crit_edge127, %.preheader.lr.ph, %.lr.ph137
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, -1
  %20 = icmp sgt i64 %indvars.iv159, 0
  br i1 %20, label %.lr.ph137, label %._crit_edge138, !llvm.loop !240

._crit_edge127.loopexit:                          ; preds = %_ZN2cv11xfeatures2dL19find_neighbor_pointEiiRKNS_3MatEiRi.exit99.thread.us
  %.pre166 = load i32, ptr %i.fm, align 8, !tbaa !61
  br label %._crit_edge127

._crit_edge127:                                   ; preds = %.lr.ph126.split, %._crit_edge127.loopexit, %.preheader
  %21 = phi i32 [ %17, %.preheader ], [ %.pre166, %._crit_edge127.loopexit ], [ %17, %.lr.ph126.split ] ; 2 uses
  %22 = phi i32 [ %i.ft, %.preheader ], [ %i.hp, %._crit_edge127.loopexit ], [ %i.ft, %.lr.ph126.split ]
  %23 = phi i32 [ %i.fu, %.preheader ], [ %i.hp, %._crit_edge127.loopexit ], [ %i.fu, %.lr.ph126.split ]
  %24 = phi i32 [ %i.fv, %.preheader ], [ %i.hp, %._crit_edge127.loopexit ], [ %i.fu, %.lr.ph126.split ]
  %.1.lcssa = phi i64 [ %.078131, %.preheader ], [ %i.hr, %._crit_edge127.loopexit ], [ %19, %.lr.ph126.split ]
  %i.ht = add nuw nsw i32 %.077132, 1             ; 2 uses
  %i.hu = icmp slt i32 %i.ht, %21
  br i1 %i.hu, label %.preheader, label %._crit_edge134, !llvm.loop !241

bb.r:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.as, %bb.f ], [ %i.at, %bb.g ]
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !79
  %.not.i100 = icmp eq i32 %i.hw, 0
  br i1 %.not.i100, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit101, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit101 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #27
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit101:    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d13AKAZEFeatures22Do_Subpixel_RefinementERSt6vectorINS_3MatESaIS3_EERS2_INS_8KeyPointESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 8 uses
  %4 = alloca %"class.cv::Matx", align 4          ; 8 uses
  %5 = alloca %"class.cv::Vec", align 4           ; 6 uses
  %6 = alloca %"class.cv::Vec", align 8           ; 6 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv11xfeatures2d13AKAZEFeatures22Do_Subpixel_RefinementERSt6vectorINS_3MatESaIS3_EERS2_INS_8KeyPointESaIS7_EEE25__cv_trace_location_fn877)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.d

._crit_edge148:                                   ; preds = %._crit_edge144, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge148
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #27
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge148, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.d:                                             ; preds = %.lr.ph147, %._crit_edge144
  %i.v = phi ptr [ %i.c, %.lr.ph147 ], [ %i.bk, %._crit_edge144 ] ; 3 uses
  %i.w = phi ptr [ %i.b, %.lr.ph147 ], [ %i.bl, %._crit_edge144 ] ; 2 uses
  %.0111145 = phi i64 [ 0, %.lr.ph147 ], [ %i.bm, %._crit_edge144 ] ; 4 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw [1080 x i8], ptr %i.x, i64 %.0111145 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 856
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1068 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 844
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !121
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.v, i64 %.0111145 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !61 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.preheader.lr.ph, label %._crit_edge144

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 1052
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 1056
  %i.ao = trunc i64 %.0111145 to i32              ; 2 uses
  %i.ap = fadd float %i.ac, -1.000000e+00
  %i.aq = fmul float %i.ap, 5.000000e-01
  %i.ar = load i32, ptr %i.al, align 4, !tbaa !99 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.preheader.preheader, label %._crit_edge144

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.at = sext i32 %i.ae to i64                   ; 3 uses
  %i.au = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ay = phi i32 [ %i.aj, %.preheader.preheader ], [ %i.bs, %._crit_edge ]
  %i.az = phi i32 [ %i.ar, %.preheader.preheader ], [ %i.bt, %._crit_edge ] ; 2 uses
  %i.ba = phi i32 [ %i.ar, %.preheader.preheader ], [ %i.bu, %._crit_edge ] ; 2 uses
  %indvars.iv153 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next154.pre-phi, %._crit_edge ] ; 5 uses
  %.0102142 = phi i64 [ 0, %.preheader.preheader ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre159 = add nuw nsw i64 %indvars.iv153, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bc = trunc nuw nsw i64 %indvars.iv153 to i32
  %i.bd = uitofp nneg i32 %i.bc to float
  %i.be = mul nsw i64 %indvars.iv153, %i.at
  %i.bf = add nuw nsw i64 %indvars.iv153, 1       ; 2 uses
  %i.bg = mul nsw i64 %i.bf, %i.at
  %i.bh = add nsw i64 %indvars.iv153, -1
  %i.bi = mul nsw i64 %i.bh, %i.at
  %invariant.gep = getelementptr [4 x i8], ptr %i.aa, i64 %i.be
  %invariant.gep170 = getelementptr [4 x i8], ptr %i.aa, i64 %i.bg
  %invariant.gep172 = getelementptr [4 x i8], ptr %i.aa, i64 %i.bi
  %i.bj = insertelement <2 x float> poison, float %i.bd, i64 1
  br label %bb.e

._crit_edge144.loopexit:                          ; preds = %._crit_edge
  %.pre157 = load ptr, ptr %i.a, align 8, !tbaa !113
  %.pre158 = load ptr, ptr %1, align 8, !tbaa !112
  br label %._crit_edge144

._crit_edge144:                                   ; preds = %.preheader.lr.ph, %._crit_edge144.loopexit, %bb.d
  %i.bk = phi ptr [ %i.v, %bb.d ], [ %.pre158, %._crit_edge144.loopexit ], [ %i.v, %.preheader.lr.ph ] ; 2 uses
  %i.bl = phi ptr [ %i.w, %bb.d ], [ %.pre157, %._crit_edge144.loopexit ], [ %i.w, %.preheader.lr.ph ] ; 2 uses
  %i.bm = add nuw i64 %.0111145, 1                ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 208
  %i.br = icmp ult i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.d, label %._crit_edge148, !llvm.loop !243

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre156 = load i32, ptr %i.ai, align 8, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.._crit_edge_crit_edge, %._crit_edge.loopexit
  %indvars.iv.next154.pre-phi = phi i64 [ %.pre159, %.preheader.._crit_edge_crit_edge ], [ %i.bf, %._crit_edge.loopexit ] ; 2 uses
  %i.bs = phi i32 [ %i.ay, %.preheader.._crit_edge_crit_edge ], [ %.pre156, %._crit_edge.loopexit ] ; 2 uses
  %i.bt = phi i32 [ %i.az, %.preheader.._crit_edge_crit_edge ], [ %i.fc, %._crit_edge.loopexit ]
  %i.bu = phi i32 [ %i.ba, %.preheader.._crit_edge_crit_edge ], [ %i.fc, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.0102142, %.preheader.._crit_edge_crit_edge ], [ %i.fd, %._crit_edge.loopexit ]
  %i.bv = sext i32 %i.bs to i64
  %i.bw = icmp slt i64 %indvars.iv.next154.pre-phi, %i.bv
  br i1 %i.bw, label %.preheader, label %._crit_edge144.loopexit, !llvm.loop !244

bb.e:                                             ; preds = %.lr.ph, %bb.n
  %i.bx = phi i32 [ %i.az, %.lr.ph ], [ %i.fc, %bb.n ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 5 uses
  %.1140 = phi i64 [ %.0102142, %.lr.ph ], [ %i.fd, %bb.n ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.1140
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !53
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32
  %i.cc = uitofp nneg i32 %i.cb to float
  %i.cd = load float, ptr %i.ab, align 4, !tbaa !72
  %i.ce = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = insertelement <2 x float> %i.bj, float %i.cc, i64 0
  %i.ch = fmul <2 x float> %i.cf, %i.cg
  %i.ci = load float, ptr %i.am, align 4, !tbaa !68
  %i.cj = load float, ptr %i.e, align 4, !tbaa !69
  %i.ck = fmul float %i.ci, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.1140
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !16 ; 2 uses
  %i.cn = load i32, ptr %i.an, align 8, !tbaa !71 ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm:bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !112    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 208                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !114
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 208                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 44343134792571038
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 44343134792571037, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.057.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i) #23
  %i.p = add nsw i64 %.057.i.i.i, -1              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !407

_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !113
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #25
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 44343134792571037) ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 208
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #26 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.y, %.lr.ph.i.i.i30 ], [ %i.w, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32 = phi i64 [ %i.x, %.lr.ph.i.i.i30 ], [ %1, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i31) #23
  %i.x = add nsw i64 %.057.i.i.i32, -1            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  %.not.i.i.i33 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !407

_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i37 ], [ %i.v, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #23
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #23
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208
  %.not.i.i.i38 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !408

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !114
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #24
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.v, ptr %0, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw [208 x i8], ptr %i.w, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.v, i64 %i.t
  store ptr %i.af, ptr %i.h, align 8, !tbaa !114
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IiEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !57
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 4
  store i32 %i.d, ptr %0, align 8, !tbaa !57
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !57     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !54
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863676, ptr %3, align 8, !tbaa !65
  store ptr %0, ptr %i.o, align 8, !tbaa !66
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 4, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !55}
!1 = distinct !{!1, !55}
!2 = distinct !{!2, !55}
!3 = distinct !{!3, !55}
!4 = distinct !{!4, !55}
!5 = distinct !{!5, !55}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!"float", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSN2cv11xfeatures2d12AKAZEOptionsE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !11, i64 28, !15, i64 32, !15, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !15, i64 56, !15, i64 60, !11, i64 64}
!18 = !{!"any pointer", !10, i64 0}
!19 = !{!"p1 _ZTSN2cv11xfeatures2d9EvolutionINS_3MatEEE", !18, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN2cv11xfeatures2d9EvolutionINS0_3MatEEESaIS4_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseIN2cv11xfeatures2d9EvolutionINS0_3MatEEESaIS4_EE12_Vector_implE", !20, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIN2cv11xfeatures2d9EvolutionINS0_3MatEEESaIS4_EE", !21, i64 0}
!23 = !{!"_ZTSSt6vectorIN2cv11xfeatures2d9EvolutionINS0_3MatEEESaIS4_EE", !22, i64 0}
!24 = !{!"bool", !10, i64 0}
!25 = !{!"p1 _ZTSSt6vectorIfSaIfEE", !18, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIS_IfSaIfEESaIS1_EE", !28, i64 0}
!30 = !{!"p1 int", !18, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIiSaIiEE", !33, i64 0}
!35 = !{!"p1 omnipotent char", !18, i64 0}
!36 = !{!"p1 _ZTSN2cv12MatAllocatorE", !18, i64 0}
!37 = !{!"p1 _ZTSN2cv8UMatDataE", !18, i64 0}
!38 = !{!"_ZTSN2cv10DataLayoutE", !10, i64 0}
!39 = !{!"_ZTSN2cv8MatShapeE", !11, i64 0, !38, i64 4, !11, i64 8, !10, i64 12}
!40 = !{!"_ZTSN2cv7MatStepE", !10, i64 0}
!41 = !{!"_ZTSN2cv3MatE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56, !37, i64 64, !39, i64 72, !40, i64 128}
!42 = !{!"_ZTSN2cv11xfeatures2d13AKAZEFeaturesE", !17, i64 0, !23, i64 72, !11, i64 96, !24, i64 100, !29, i64 104, !34, i64 128, !41, i64 152, !41, i64 360, !41, i64 568}
!43 = !{!42, !11, i64 96}
!44 = !{!42, !11, i64 44}
!45 = !{!42, !11, i64 40}
!46 = !{!42, !11, i64 48}
!47 = !{!31, !30, i64 0}
!48 = !{!31, !30, i64 16}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!50 = !{!"long", !10, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !50, i64 8, !10, i64 16}
!52 = !{!51, !35, i64 0}
!53 = !{!10, !10, i64 0}
!54 = !{!41, !11, i64 4}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"double", !10, i64 0}
!57 = !{!41, !11, i64 0}
!58 = !{!"_ZTSN2cv5RangeE", !11, i64 0, !11, i64 4}
!59 = !{!58, !11, i64 0}
!60 = !{!58, !11, i64 4}
!61 = !{!41, !11, i64 8}
!62 = !{!41, !35, i64 24}
!63 = !{!"_ZTSN2cv5Size_IiEE", !11, i64 0, !11, i64 4}
!64 = !{!"_ZTSN2cv11_InputArrayE", !11, i64 0, !18, i64 8, !63, i64 16}
!65 = !{!64, !11, i64 0}
!66 = !{!64, !18, i64 8}
!67 = !{!"_ZTSN2cv11xfeatures2d9EvolutionINS_3MatEEE", !41, i64 0, !41, i64 208, !41, i64 416, !41, i64 624, !41, i64 832, !63, i64 1040, !15, i64 1048, !15, i64 1052, !11, i64 1056, !11, i64 1060, !11, i64 1064, !15, i64 1068, !11, i64 1072}
!68 = !{!67, !15, i64 1052}
!69 = !{!42, !15, i64 20}
!70 = !{!67, !11, i64 1064}
!71 = !{!67, !11, i64 1056}
!72 = !{!67, !15, i64 1068}
!73 = !{!67, !11, i64 1072}
!74 = !{!20, !19, i64 8}
!75 = !{!20, !19, i64 16}
!76 = !{!20, !19, i64 0}
!77 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !18, i64 0}
!78 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !77, i64 0, !11, i64 8}
!79 = !{!78, !11, i64 8}
!80 = !{!26, !25, i64 8}
!81 = !{!26, !25, i64 16}
!82 = !{!"p1 float", !18, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!84 = !{!83, !82, i64 8}
!85 = !{!83, !82, i64 0}
!86 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!87 = !{!83, !82, i64 16}
!88 = !{!82, !82, i64 0}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{!26, !25, i64 0}
!91 = !{!63, !11, i64 0}
!92 = !{!63, !11, i64 4}
!93 = !{!"vtable pointer", !9, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!96 = !{!"p1 _ZTSSt6vectorIN2cv11xfeatures2d9EvolutionINS0_3MatEEESaIS4_EE", !18, i64 0}
!97 = !{!"_ZTSN2cv11xfeatures2d26DeterminantHessianResponseINS_3MatEEE", !95, i64 0, !96, i64 8}
!98 = !{!97, !96, i64 8}
!99 = !{!41, !11, i64 12}
!100 = !{!50, !50, i64 0}
!101 = !{!"p1 _ZTSN2cv3MatE", !18, i64 0}
!102 = !{!"_ZTSN2cv11xfeatures2d28NonLinearScalarDiffusionStepE", !95, i64 0, !101, i64 8, !101, i64 16, !101, i64 24, !15, i64 32}
!103 = !{!102, !101, i64 8}
!104 = !{!102, !101, i64 16}
!105 = !{!102, !101, i64 24}
!106 = !{!102, !15, i64 32}
!107 = !{!"p1 _ZTSN2cv8KeyPointE", !18, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!108, !107, i64 0}
!110 = !{!108, !107, i64 8}
!111 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!112 = !{!111, !101, i64 0}
!113 = !{!111, !101, i64 8}
!114 = !{!111, !101, i64 16}
!115 = !{!"p1 _ZTSSt6vectorIN2cv3MatESaIS1_EE", !18, i64 0}
!116 = !{!"_ZTSN2cv11xfeatures2d22FindKeypointsSameScaleE", !95, i64 0, !96, i64 8, !115, i64 16, !15, i64 24}
!117 = !{!116, !96, i64 8}
!118 = !{!116, !115, i64 16}
!119 = !{!116, !15, i64 24}
!120 = !{!"llvm.loop.unswitch.partial.disable"}
!121 = !{!67, !11, i64 844}
!122 = !{!"p1 _ZTSSt6vectorIN2cv8KeyPointESaIS1_EE", !18, i64 0}
!123 = !{!"_ZTSN2cv11xfeatures2d26ComputeKeypointOrientationE", !95, i64 0, !122, i64 8, !96, i64 16}
!124 = !{!123, !122, i64 8}
!125 = !{!123, !96, i64 16}
!126 = !{!"_ZTSN2cv6Point_IfEE", !15, i64 0, !15, i64 4}
!127 = !{!"_ZTSN2cv8KeyPointE", !126, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !11, i64 20, !11, i64 24}
!128 = !{!127, !11, i64 24}
!129 = !{!"_ZTSN2cv11xfeatures2d35MSURF_Upright_Descriptor_64_InvokerE", !95, i64 0, !122, i64 8, !101, i64 16, !96, i64 24}
!130 = !{!129, !122, i64 8}
!131 = !{!129, !101, i64 16}
!132 = !{!129, !96, i64 24}
!133 = !{!"_ZTSN2cv11xfeatures2d27MSURF_Descriptor_64_InvokerE", !95, i64 0, !122, i64 8, !101, i64 16, !96, i64 24}
!134 = !{!133, !122, i64 8}
!135 = !{!133, !101, i64 16}
!136 = !{!133, !96, i64 24}
!137 = !{!"p1 _ZTSN2cv11xfeatures2d12AKAZEOptionsE", !18, i64 0}
!138 = !{!"_ZTSN2cv11xfeatures2d36Upright_MLDB_Full_Descriptor_InvokerE", !95, i64 0, !122, i64 8, !101, i64 16, !96, i64 24, !137, i64 32}
!139 = !{!138, !122, i64 8}
!140 = !{!138, !101, i64 16}
!141 = !{!138, !96, i64 24}
!142 = !{!138, !137, i64 32}
!143 = !{!"_ZTSN2cv11xfeatures2d38Upright_MLDB_Descriptor_Subset_InvokerE", !95, i64 0, !122, i64 8, !101, i64 16, !96, i64 24, !137, i64 32, !41, i64 40, !41, i64 248}
!144 = !{!143, !122, i64 8}
!145 = !{!143, !101, i64 16}
!146 = !{!143, !96, i64 24}
!147 = !{!143, !137, i64 32}
!148 = !{ptr @_ZN2cv11xfeatures2d38Upright_MLDB_Descriptor_Subset_InvokerD2Ev}
!149 = !{!"_ZTSN2cv11xfeatures2d28MLDB_Full_Descriptor_InvokerE", !95, i64 0, !122, i64 8, !101, i64 16, !96, i64 24, !137, i64 32}
!150 = !{!149, !122, i64 8}
!151 = !{!149, !101, i64 16}
!152 = !{!149, !96, i64 24}
!153 = !{!149, !137, i64 32}
!154 = !{!"_ZTSN2cv11xfeatures2d30MLDB_Descriptor_Subset_InvokerE", !95, i64 0, !122, i64 8, !101, i64 16, !96, i64 24, !137, i64 32, !41, i64 40, !41, i64 248}
!155 = !{!154, !122, i64 8}
!156 = !{!154, !101, i64 16}
!157 = !{!154, !96, i64 24}
!158 = !{!154, !137, i64 32}
!159 = !{ptr @_ZN2cv11xfeatures2d30MLDB_Descriptor_Subset_InvokerD2Ev}
!160 = !{!127, !11, i64 20}
!161 = !{!127, !15, i64 8}
!162 = !{!127, !15, i64 12}
!163 = !{!17, !11, i64 48}
!164 = !{!17, !11, i64 52}
!165 = !{!"llvm.loop.isvectorized", i32 1}
!166 = !{!"llvm.loop.unroll.runtime.disable"}
!167 = !{!39, !11, i64 0}
!168 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !16, i64 20, i64 4, !16, i64 24, i64 4, !16, i64 28, i64 4, !14, i64 32, i64 4, !16, i64 36, i64 4, !16, i64 40, i64 4, !14, i64 44, i64 4, !14, i64 48, i64 4, !14, i64 52, i64 4, !14, i64 56, i64 4, !16, i64 60, i64 4, !16, i64 64, i64 4, !14}
!169 = !{!42, !24, i64 100}
!170 = !{!42, !11, i64 52}
!171 = distinct !{!171, !55}
!172 = distinct !{!172, !55}
!173 = distinct !{!173, i1 true, !"_ZNK2cv4Mat_IiE5cloneEv"}
!174 = distinct !{!174, !173, !"_ZNK2cv4Mat_IiE5cloneEv: argument 0"}
!175 = distinct !{!175, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!176 = distinct !{!176, !175, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!177 = distinct !{!177, !55}
!178 = distinct !{!178, !55}
!179 = distinct !{!179, i1 true, !"_ZNK2cv4Mat_IiE3rowEi"}
!180 = distinct !{!180, !179, !"_ZNK2cv4Mat_IiE3rowEi: argument 0"}
!181 = distinct !{!181, i1 true, !"_ZNK2cv4Mat_IiE3rowEi"}
!182 = distinct !{!182, !181, !"_ZNK2cv4Mat_IiE3rowEi: argument 0"}
!183 = distinct !{!183, !55}
!184 = distinct !{!184, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!185 = distinct !{!185, !184, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!186 = !{!56, !56, i64 0}
!187 = !{!174}
!188 = !{!176}
!189 = !{!180}
!190 = !{!182}
!191 = !{!185}
!192 = distinct !{!192, !55}
!193 = distinct !{!193, i1 true, !"_ZSt19__relocate_object_aIN2cv11xfeatures2d9EvolutionINS0_3MatEEES4_SaIS4_EEvPT_PT0_RT1_"}
!194 = distinct !{!194, !193, !"_ZSt19__relocate_object_aIN2cv11xfeatures2d9EvolutionINS0_3MatEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!195 = distinct !{!195, !193, !"_ZSt19__relocate_object_aIN2cv11xfeatures2d9EvolutionINS0_3MatEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!196 = distinct !{!196, !55}
!197 = distinct !{!197, !55}
!198 = distinct !{!198, !55}
!199 = !{!42, !11, i64 0}
!200 = !{!42, !11, i64 4}
!201 = !{!42, !15, i64 16}
!202 = !{!67, !15, i64 1048}
!203 = !{!67, !11, i64 1060}
!204 = !{!195, !194}
!205 = !{!31, !30, i64 8}
!206 = distinct !{!206, !55}
!207 = distinct !{!207, !55}
!208 = distinct !{!208, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!209 = distinct !{!209, !208, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!210 = distinct !{!210, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!211 = distinct !{!211, !210, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!212 = distinct !{!212, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!213 = distinct !{!213, !212, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!214 = distinct !{!214, !55}
!215 = distinct !{!215, !55}
!216 = distinct !{!216, !55}
!217 = distinct !{!217, !55}
!218 = distinct !{!218, !55}
!219 = distinct !{!219, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!220 = distinct !{!220, !219, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!221 = distinct !{!221, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!222 = distinct !{!222, !221, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!223 = distinct !{!223, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!224 = distinct !{!224, !223, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!225 = distinct !{!225, !55}
!226 = !{!209}
!227 = !{!17, !15, i64 16}
!228 = !{!17, !15, i64 60}
!229 = !{!17, !11, i64 64}
!230 = !{!211}
!231 = !{!213}
!232 = !{!17, !11, i64 28}
!233 = !{!220}
!234 = !{!222}
!235 = !{!224}
!236 = distinct !{!236, !55}
!237 = distinct !{!237, !55}
!238 = distinct !{!238, !55, !120}
!239 = distinct !{!239, !55}
!240 = distinct !{!240, !55}
!241 = distinct !{!241, !55, !120}
!242 = !{!42, !15, i64 32}
!243 = distinct !{!243, !55}
!244 = distinct !{!244, !55, !120}
!245 = distinct !{!245, i1 true, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_"}
!246 = distinct !{!246, !245, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!247 = distinct !{!247, !245, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!248 = distinct !{!248, !55}
!249 = distinct !{!249, !55}
!250 = !{!108, !107, i64 16}
!251 = !{i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 4, !16, i64 12, i64 4, !16, i64 16, i64 4, !16, i64 20, i64 4, !14, i64 24, i64 4, !14}
!252 = !{!247, !246}
!253 = distinct !{!253, !55}
!254 = distinct !{!254, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!255 = distinct !{!255, !254, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!256 = !{!255}
!257 = !{!49, !35, i64 0}
!258 = !{!51, !50, i64 8}
!259 = distinct !{!259, !55}
!260 = distinct !{!260, !55}
!261 = distinct !{!261, !55}
!262 = distinct !{!262, !55}
!263 = distinct !{!263, !55}
!264 = distinct !{!264, !55}
!265 = distinct !{!265, !55}
!266 = distinct !{!266, !55}
!267 = distinct !{!267, !55, !165, !166}
!268 = distinct !{!268, !55, !166, !165}
!269 = distinct !{!269, !55}
!270 = distinct !{!270, !55}
!271 = distinct !{!271, !55}
!272 = distinct !{!272, !55}
!273 = distinct !{!273, !55}
!274 = distinct !{!274, !55}
!275 = distinct !{!275, !55}
!276 = distinct !{!276, !55, !165, !166}
!277 = distinct !{!277, !55, !165}
!278 = distinct !{!278, !55}
!279 = distinct !{!279, !55}
!280 = distinct !{!280, !55}
!281 = distinct !{!281, !55}
!282 = distinct !{!282, !55, !165, !166}
!283 = distinct !{!283, !55, !166, !165}
!284 = distinct !{!284, !55, !165, !166}
!285 = distinct !{!285, !55, !166, !165}
!286 = distinct !{!286, !55, !165, !166}
!287 = distinct !{!287, !55, !166, !165}
!288 = distinct !{!288, !55, !165, !166}
!289 = distinct !{!289, !55}
!290 = distinct !{!290, !55}
!291 = distinct !{!291, !55}
!292 = distinct !{!292, !55}
!293 = !{!154, !11, i64 48}
!294 = !{!154, !11, i64 256}
!295 = distinct !{!295, !55}
!296 = distinct !{!296, !55}
!297 = distinct !{!297, !55}
!298 = distinct !{!298, !55}
!299 = !{!143, !11, i64 48}
!300 = !{!143, !11, i64 256}
!301 = distinct !{null}
!302 = distinct !{!302, !55}
!303 = distinct !{!303, !55}
!304 = distinct !{!304, !55}
!305 = !{!"p1 _ZTSN2cv5MatOpE", !18, i64 0}
!306 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !10, i64 0}
!307 = !{!"_ZTSN2cv3VecIdLi4EEE", !306, i64 0}
!308 = !{!"_ZTSN2cv7Scalar_IdEE", !307, i64 0}
!309 = !{!"_ZTSN2cv7MatExprE", !305, i64 0, !11, i64 8, !41, i64 16, !41, i64 224, !41, i64 432, !56, i64 640, !56, i64 648, !308, i64 656}
!310 = !{!309, !305, i64 0}
!311 = !{!67, !11, i64 840}
!312 = distinct !{!312, !55}
!313 = distinct !{!313, !55}
!314 = distinct !{!314, !55}
!315 = distinct !{!315, !55}
!316 = distinct !{!316, !55}
!317 = distinct !{!317, !55}
!318 = distinct !{!318, !55}
!319 = distinct !{!319, !55}
!320 = distinct !{!320, !55}
!321 = distinct !{!321, !55}
!322 = distinct !{!322, !332}
!323 = distinct !{!323, !55}
!324 = distinct !{!324, !55}
!325 = distinct !{!325, !332}
!326 = distinct !{!326, !332}
!327 = distinct !{!327, !332}
!328 = distinct !{!328, !332}
!329 = distinct !{!329, !332}
!330 = distinct !{!330, !55}
!331 = !{!"branch_weights", i32 1, i32 1048575}
!332 = !{!"llvm.loop.unroll.disable"}
!333 = distinct !{!333, !55}
!334 = distinct !{!334, i1 true, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!335 = distinct !{!335, !334, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!336 = distinct !{!336, !334, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!337 = distinct !{!337, !55}
!338 = distinct !{!338, i1 true, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!339 = distinct !{!339, !338, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!340 = distinct !{!340, !338, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!341 = !{!335}
!342 = !{!336}
!343 = !{!339}
!344 = !{!340}
!345 = distinct !{!345, i1 false, !"LVerDomain"}
!346 = distinct !{!346, !345}
!347 = distinct !{!347, !345}
!348 = distinct !{!348, !345}
!349 = distinct !{!349, !345}
!350 = distinct !{!350, !345}
!351 = distinct !{!351, !55, !165, !166}
!352 = distinct !{!352, !55, !165}
!353 = distinct !{!353, i1 false, !"LVerDomain"}
!354 = distinct !{!354, !353}
!355 = distinct !{!355, !353}
!356 = distinct !{!356, !353}
!357 = distinct !{!357, !353}
!358 = distinct !{!358, !353}
!359 = distinct !{!359, !353}
!360 = distinct !{!360, !353}
!361 = distinct !{!361, !55, !165, !166}
!362 = distinct !{!362, !55}
!363 = distinct !{!363, !55, !165}
!364 = distinct !{!364, i1 false, !"LVerDomain"}
!365 = distinct !{!365, !364}
!366 = distinct !{!366, !364}
!367 = distinct !{!367, !364}
!368 = distinct !{!368, !364}
!369 = distinct !{!369, !364}
!370 = distinct !{!370, !55, !165, !166}
!371 = distinct !{!371, !55, !165}
!372 = !{!346}
!373 = !{!347}
!374 = !{!348}
!375 = !{!349}
!376 = !{!350}
!377 = !{!348, !346, !349, !347}
!378 = !{!354}
!379 = !{!355}
!380 = !{!356}
!381 = !{!357}
!382 = !{!358}
!383 = !{!359}
!384 = !{!360}
!385 = !{!358, !356, !354, !359, !357, !355}
!386 = !{!365}
!387 = !{!366}
!388 = !{!367}
!389 = !{!368}
!390 = !{!369}
!391 = !{!367, !365, !368, !366}
!392 = distinct !{!392, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!393 = distinct !{!393, !392, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!394 = distinct !{!394, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!395 = distinct !{!395, !394, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!396 = distinct !{!396, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!397 = distinct !{!397, !396, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!398 = distinct !{!398, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!399 = distinct !{!399, !398, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!400 = distinct !{!400, !55, !165, !166}
!401 = distinct !{!401, !55, !165}
!402 = distinct !{!402, !55}
!403 = !{!393}
!404 = !{!395}
!405 = !{!397}
!406 = !{!399}
!407 = distinct !{!407, !55}
!408 = distinct !{!408, !55}
end_hunk_1
