Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/RobustMatcher?download=true
inline.NumInlined: 262
inline.NumDeleted: 114
begin_hunk_0_@_ZN13RobustMatcherD2Ev:bb.a
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN2cv17DescriptorMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !64
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #13, !inline_history !60
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #13, !inline_history !60
  br label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #13
  br label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2cv17DescriptorMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !61 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.al, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.am, align 8, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !64
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #13, !inline_history !60
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #13, !inline_history !60
  br label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9

bb.p:                                             ; preds = %bb.n
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i6 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i6, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.r:                                             ; preds = %bb.p
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i8 = phi i32 [ %i.ap, %bb.q ], [ %i.az, %bb.r ]
  %i.ba = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.ba, label %bb.s, label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, !prof !65

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #13
  br label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9

_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9: ; preds = %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.s
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN13RobustMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(480) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN13RobustMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 480) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13RobustMatcher16computeKeyPointsERKN2cv3MatERSt6vectorINS0_8KeyPointESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !24
  store i32 16842752, ptr %3, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !27
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13RobustMatcher18computeDescriptorsERKN2cv3MatERSt6vectorINS0_8KeyPointESaIS5_EERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(208) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !24
  store i32 16842752, ptr %4, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.g, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !26
  store ptr %3, ptr %i.f, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN13RobustMatcher9ratioTestERSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not15 = icmp eq ptr %i.a, %i.c
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load float, ptr %i.d, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.017 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 3 uses
  %.sroa.08.016 = phi ptr [ %i.a, %.lr.ph ], [ %i.u, %bb.e ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  %i.h = load ptr, ptr %.sroa.08.016, align 8, !tbaa !33 ; 7 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ugt i64 %i.k, 16
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.p = load float, ptr %i.o, align 4, !tbaa !36
  %i.q = fdiv float %i.n, %i.p
  %i.r = fcmp ogt float %i.q, %i.e
  br i1 %i.r, label %2, label %bb.e

2:                                                ; preds = %bb.c
  %.not.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %2
  store ptr %i.h, ptr %i.f, align 8, !tbaa !32
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit:   ; preds = %2, %_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.s = add nsw i32 %.017, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.not.i.i5 = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i5, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit7, label %_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i6

_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i6: ; preds = %bb.d
  store ptr %i.h, ptr %i.f, align 8, !tbaa !32
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit7

_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit7:  ; preds = %bb.d, %_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i6
  %i.t = add nsw i32 %.017, 1
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit7, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit, %bb.c
  %.1 = phi i32 [ %i.s, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit ], [ %.017, %bb.c ], [ %i.t, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit7 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13RobustMatcher12symmetryTestERKSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EES8_RS4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not41 = icmp eq ptr %i.a, %i.c
  br i1 %.not41, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backEOS1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph43, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backEOS1_.exit
  %i.g = phi ptr [ %i.c, %.lr.ph43 ], [ %i.bf, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.sroa.020.042 = phi ptr [ %i.a, %.lr.ph43 ], [ %i.bg, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.h = load ptr, ptr %.sroa.020.042, align 8, !tbaa !38 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.020.042, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %4 = icmp eq ptr %i.h, %i.j
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 17
  %or.cond = or i1 %4, %i.n
  br i1 %or.cond, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %.not2939 = icmp eq ptr %i.o, %i.p
  br i1 %.not2939, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backEOS1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.013.040 = phi ptr [ %i.o, %.lr.ph ], [ %i.be, %bb.l ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.013.040, align 8, !tbaa !38 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.040, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %5 = icmp eq ptr %i.r, %i.t
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 17
  %or.cond36 = or i1 %5, %i.x
  br i1 %or.cond36, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.h, align 4, !tbaa !71   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !72
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.r, align 4, !tbaa !71  ; 3 uses
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !72
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !36 ; 2 uses
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !32  ; 9 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.y, ptr %i.ah, align 4, !tbaa !18
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.ac, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !18
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 -1, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !18
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store float %i.ag, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !32
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backEOS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %3, align 8, !tbaa !33    ; 5 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775792
  br i1 %i.ao, label %bb.j, label %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ap = ashr exact i64 %i.an, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 576460752303423487)
  %i.at = select i1 %i.ar, i64 576460752303423487, i64 %i.as ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an ; 4 uses
  store i32 %i.y, ptr %i.aw, align 4, !tbaa !18
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %i.ac, ptr %.sroa.5.0..sroa_idx6, align 4, !tbaa !18
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 -1, ptr %.sroa.6.0..sroa_idx8, align 4, !tbaa !18
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store float %i.ag, ptr %.sroa.7.0..sroa_idx10, align 4, !tbaa !40
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.ah
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %i.ak, %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !41, !alias.scope !73
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ah
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bc) #14
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.av, ptr %3, align 8, !tbaa !33
  store ptr %i.az, ptr %i.e, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bd, ptr %i.f, align 8, !tbaa !39
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backEOS1_.exit

bb.l:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.040, i64 24 ; 2 uses
  %.not29 = icmp eq ptr %i.be, %i.p
  br i1 %.not29, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backEOS1_.exit, label %bb.d, !llvm.loop !69

_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.l, %bb.c, %bb.h, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.b
  %i.bf = phi ptr [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %bb.h ], [ %.pre, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.g, %bb.l ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.020.042, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.bf
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !70
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13RobustMatcher11robustMatchERKN2cv3MatERSt6vectorINS0_6DMatchESaIS5_EERS4_INS0_8KeyPointESaIS9_EES3_RKSB_(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.std::vector.4", align 8    ; 12 uses
  %11 = alloca %"class.std::vector.4", align 8    ; 12 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %20 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %21 = alloca %"class.std::vector.25", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !24
  store i32 16842752, ptr %8, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !27
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f), !inline_history !42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.m, align 4, !tbaa !24
  store i32 16842752, ptr %6, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.n, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !26
  store ptr %9, ptr %i.o, align 8, !tbaa !27
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.s, !inline_history !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !24
  store i32 16842752, ptr %12, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %9, ptr %i.x, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.z, align 4, !tbaa !24
  store i32 16842752, ptr %13, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %4, ptr %i.aa, align 8, !tbaa !27
  %i.ab = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK2cv17DescriptorMatcher8knnMatchERKNS_11_InputArrayES3_RSt6vectorIS4_INS_6DMatchESaIS5_EESaIS7_EEiS3_b(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.ad, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.ae, align 4, !tbaa !24
  store i32 16842752, ptr %14, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %4, ptr %i.af, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.ah, align 4, !tbaa !24
  store i32 16842752, ptr %15, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %9, ptr %i.ai, align 8, !tbaa !27
  %i.aj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK2cv17DescriptorMatcher8knnMatchERKNS_11_InputArrayES3_RSt6vectorIS4_INS_6DMatchESaIS5_EESaIS7_EEiS3_b(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %i.ak = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %.not15.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not15.i, label %_ZN13RobustMatcher9ratioTestERSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load float, ptr %i.an, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i, %.lr.ph.i
  %.sroa.08.016.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.bb, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 3 uses
  %i.ar = load ptr, ptr %.sroa.08.016.i, align 8, !tbaa !33 ; 6 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ugt i64 %i.au, 16
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.az = load float, ptr %i.ay, align 4, !tbaa !36
  %i.ba = fdiv float %i.ax, %i.az
  %22 = fcmp ule float %i.ba, %i.ao
  %.not.i.i.i = icmp eq ptr %i.aq, %i.ar
  %or.cond = or i1 %22, %.not.i.i.i
  br i1 %or.cond, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i.sink.split

bb.i:                                             ; preds = %bb.g
  %.not.i.i5.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i5.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i.sink.split

_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i.sink.split: ; preds = %bb.i, %bb.h
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !32
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i

_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i: ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i.sink.split, %bb.i, %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, %i.am
  br i1 %.not.i, label %_ZN13RobustMatcher9ratioTestERSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EE.exit, label %bb.g, !llvm.loop !0

_ZN13RobustMatcher9ratioTestERSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EE.exit: ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i, %bb.f
  %i.bc = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !29 ; 2 uses
  %.not15.i38 = icmp eq ptr %i.bc, %i.be
  br i1 %.not15.i38, label %_ZN13RobustMatcher9ratioTestERSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EE.exit51, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN13RobustMatcher9ratioTestERSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load float, ptr %i.bf, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i50, %.lr.ph.i39
  %.sroa.08.016.i41 = phi ptr [ %i.bc, %.lr.ph.i39 ], [ %i.bt, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i50 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i41, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !32 ; 3 uses
  %i.bj = load ptr, ptr %.sroa.08.016.i41, align 8, !tbaa !33 ; 6 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ugt i64 %i.bm, 16
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !36
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %i.br = load float, ptr %i.bq, align 4, !tbaa !36
  %i.bs = fdiv float %i.bp, %i.br
  %23 = fcmp ule float %i.bs, %i.bg
  %.not.i.i.i48 = icmp eq ptr %i.bi, %i.bj
  %or.cond89 = or i1 %23, %.not.i.i.i48
  br i1 %or.cond89, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i50, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i50.sink.split

bb.l:                                             ; preds = %bb.j
  %.not.i.i5.i42 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i5.i42, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i50, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i50.sink.split

_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i50.sink.split: ; preds = %bb.l, %bb.k
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !32
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i50

_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i50: ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i50.sink.split, %bb.l, %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i41, i64 24 ; 2 uses
  %.not.i46 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i46, label %_ZN13RobustMatcher9ratioTestERSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EE.exit51, label %bb.j, !llvm.loop !0

_ZN13RobustMatcher9ratioTestERSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EE.exit51: ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i50, %_ZN13RobustMatcher9ratioTestERSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EE.exit
  invoke void @_ZN13RobustMatcher12symmetryTestERKSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EES8_RS4_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %_ZN13RobustMatcher9ratioTestERSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EE.exit51
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bv = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.bu)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  br i1 %i.bv, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %5, align 8, !tbaa !48
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !48
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.ca, align 8, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 0, ptr %i.cb, align 4, !tbaa !24
  store i32 16842752, ptr %16, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %1, ptr %i.cc, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.cd, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %i.ce, align 4, !tbaa !24
  store i32 16842752, ptr %17, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.bu, ptr %i.cf, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ch = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.ci, align 8
  store i32 50397184, ptr %18, align 8, !tbaa !26
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  store <2 x double> splat (double -1.000000e+00), ptr %19, align 16, !tbaa !50, !alias.scope !78
  %i.cj = getelementptr inbounds nuw i8, ptr %19, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.cj, align 16, !tbaa !50, !alias.scope !78
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  store <2 x double> splat (double -1.000000e+00), ptr %20, align 16, !tbaa !50, !alias.scope !79
  %i.ck = getelementptr inbounds nuw i8, ptr %20, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.ck, align 16, !tbaa !50, !alias.scope !79
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv11drawMatchesERKNS_11_InputArrayERKSt6vectorINS_8KeyPointESaIS4_EES2_S8_RKS3_INS_6DMatchESaIS9_EERKNS_17_InputOutputArrayERKNS_7Scalar_IdEESK_RKS3_IcSaIcEENS_16DrawMatchesFlagsE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef 0)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %21, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i52.a = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i52.a, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !54
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #14
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %bb.y

bb.s:                                             ; preds = %bb.a
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.t:                                             ; preds = %bb.c, %bb.b
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.ad

bb.u:                                             ; preds = %bb.e, %bb.d
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.ad

bb.v:                                             ; preds = %bb.m, %_ZN13RobustMatcher9ratioTestERSt6vectorIS0_IN2cv6DMatchESaIS2_EESaIS4_EE.exit51
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.w:                                             ; preds = %bb.p
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %21, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIcSaIcEED2Ev.exit54, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !54
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #14
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit54

_ZNSt6vectorIcSaIcEED2Ev.exit54:                  ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %bb.ad

bb.y:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.o, %bb.n
  %i.dc = load ptr, ptr %11, align 8, !tbaa !56   ; 3 uses
  %i.dd = load ptr, ptr %i.bd, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dc, %i.dd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dk, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i ], [ %i.dc, %bb.y ] ; 3 uses
  %i.de = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !39
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #14
  br label %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.z, %.lr.ph.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.dk, %i.dd
  br i1 %.not.i.i.i55, label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.y
  %i.dl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.dc, %bb.y ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !58
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #14
  br label %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.dr = load ptr, ptr %10, align 8, !tbaa !56   ; 3 uses
  %i.ds = load ptr, ptr %i.al, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i56 = icmp eq ptr %i.dr, %i.ds
  br i1 %.not4.i.i.i56, label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i64, label %.lr.ph.i.i.i57

.lr.ph.i.i.i57:                                   ; preds = %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i60
  %.05.i.i.i58 = phi ptr [ %i.dz, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i60 ], [ %i.dr, %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.dt = load ptr, ptr %.05.i.i.i58, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i.i59 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i59, label %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i60, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i57
end_hunk_0
begin_hunk_1_@_ZN13RobustMatcher11robustMatchERKN2cv3MatERSt6vectorINS0_6DMatchESaIS5_EERS4_INS0_8KeyPointESaIS9_EES3_RKSB_:bb.a
  br label %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit66

_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit66: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i64, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  ret void

bb.ad:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit54, %bb.v, %bb.u, %bb.t
  %.pn30.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cv, %_ZNSt6vectorIcSaIcEED2Ev.exit54 ], [ %i.cu, %bb.v ], [ %i.ct, %bb.u ], [ %i.cs, %bb.t ]
  call void @_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.s
  %.pn30.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn.pn.pn, %bb.ad ], [ %i.cr, %bb.s ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZNK2cv17DescriptorMatcher8knnMatchERKNS_11_InputArrayES3_RSt6vectorIS4_INS_6DMatchESaIS5_EESaIS7_EEiS3_b(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv11drawMatchesERKNS_11_InputArrayERKSt6vectorINS_8KeyPointESaIS4_EES2_S8_RKS3_INS_6DMatchESaIS9_EERKNS_17_InputOutputArrayERKNS_7Scalar_IdEESK_RKS3_IcSaIcEENS_16DrawMatchesFlagsE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #14
  br label %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN2cv6DMatchESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #14
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6DMatchESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6DMatchESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13RobustMatcher15fastRobustMatchERKN2cv3MatERSt6vectorINS0_6DMatchESaIS5_EERS4_INS0_8KeyPointESaIS9_EES3_RKSB_(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %10 = alloca %"class.std::vector.4", align 8    ; 11 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %17 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %18 = alloca %"class.std::vector.25", align 8   ; 9 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !32
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit:   ; preds = %bb.a, %_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !24
  store i32 16842752, ptr %8, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.h, align 8, !tbaa !27
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.i), !inline_history !42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !24
  store i32 16842752, ptr %6, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.q, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.s, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !26
  store ptr %9, ptr %i.r, align 8, !tbaa !27
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.h, !inline_history !43

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.z, align 4, !tbaa !24
  store i32 16842752, ptr %11, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.aa, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.ac, align 4, !tbaa !24
  store i32 16842752, ptr %12, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %4, ptr %i.ad, align 8, !tbaa !27
  %i.ae = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK2cv17DescriptorMatcher8knnMatchERKNS_11_InputArrayES3_RSt6vectorIS4_INS_6DMatchESaIS5_EESaIS7_EEiS3_b(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.af = load ptr, ptr %10, align 8, !tbaa !29   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %.not15.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not15.i, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load float, ptr %i.ai, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i, %.lr.ph.i
  %.sroa.08.016.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.aw, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32 ; 3 uses
  %i.am = load ptr, ptr %.sroa.08.016.i, align 8, !tbaa !33 ; 6 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ugt i64 %i.ap, 16
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.as = load float, ptr %i.ar, align 4, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %i.au = load float, ptr %i.at, align 4, !tbaa !36
  %i.av = fdiv float %i.as, %i.au
  %19 = fcmp ule float %i.av, %i.aj
  %.not.i.i.i = icmp eq ptr %i.al, %i.am
  %or.cond = or i1 %19, %.not.i.i.i
  br i1 %or.cond, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i.sink.split

bb.g:                                             ; preds = %bb.e
  %.not.i.i5.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i5.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i.sink.split

_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i.sink.split: ; preds = %bb.g, %bb.f
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !32
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i

_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i: ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i.sink.split, %bb.g, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.ah
  br i1 %.not.i, label %.lr.ph, label %bb.e, !llvm.loop !0

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.az = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ay)
          to label %bb.p unwind label %bb.u

bb.h:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE5clearEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.aa

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit
  %.sroa.041.046 = phi ptr [ %i.af, %.lr.ph ], [ %i.ce, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.bc = load ptr, ptr %.sroa.041.046, align 8, !tbaa !38 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.041.046, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !38
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !32  ; 5 uses
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !39
  %.not.i34 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i34, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bg, ptr noundef nonnull align 4 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !41
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bj, ptr %i.b, align 8, !tbaa !32
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %2, align 8, !tbaa !33    ; 5 uses
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775792
  br i1 %i.bo, label %bb.n, label %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bp = ashr exact i64 %i.bn, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 576460752303423487)
  %i.bt = select i1 %i.br, i64 576460752303423487, i64 %i.bs ; 3 uses
  %.not.i.i.i35 = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i35)
  %i.bu = shl nuw nsw i64 %i.bt, 4
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #16
          to label %.noexc36 unwind label %.loopexit ; 5 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bw, ptr noundef nonnull align 4 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !41
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc36, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.bv, %.noexc36 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %i.bk, %.noexc36 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !41, !alias.scope !88
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc36
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %.noexc36 ], [ %i.by, %.lr.ph.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ca = load ptr, ptr %i.ax, align 8, !tbaa !39
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cc) #14
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.bv, ptr %2, align 8, !tbaa !33
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cd, ptr %i.ax, align 8, !tbaa !39
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.l, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.041.046, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ag, align 8, !tbaa !29
  %.not = icmp eq ptr %i.ce, %i.cf
  br i1 %.not, label %._crit_edge, label %bb.j, !llvm.loop !83

bb.p:                                             ; preds = %._crit_edge
  br i1 %i.az, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %5, align 8, !tbaa !48
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !48
  %i.cj = icmp eq ptr %i.cg, %i.ci
  br i1 %i.cj, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.ck, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.cl, align 4, !tbaa !24
  store i32 16842752, ptr %13, align 8, !tbaa !26
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %1, ptr %i.cm, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.cn, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.co, align 4, !tbaa !24
  store i32 16842752, ptr %14, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ay, ptr %i.cp, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.cs, align 8
  store i32 50397184, ptr %15, align 8, !tbaa !26
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  store <2 x double> splat (double -1.000000e+00), ptr %16, align 16, !tbaa !50, !alias.scope !89
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.ct, align 16, !tbaa !50, !alias.scope !89
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  store <2 x double> splat (double -1.000000e+00), ptr %17, align 16, !tbaa !50, !alias.scope !90
  %i.cu = getelementptr inbounds nuw i8, ptr %17, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.cu, align 16, !tbaa !50, !alias.scope !90
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv11drawMatchesERKNS_11_InputArrayERKSt6vectorINS_8KeyPointESaIS4_EES2_S8_RKS3_INS_6DMatchESaIS9_EERKNS_17_InputOutputArrayERKNS_7Scalar_IdEESK_RKS3_IcSaIcEENS_16DrawMatchesFlagsE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef 0)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cv = load ptr, ptr %18, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i37.a = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i37.a, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !54
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #14
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
end_hunk_1
