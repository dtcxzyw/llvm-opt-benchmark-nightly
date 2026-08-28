Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_matching?download=true
inline.NumInlined: 486
inline.NumDeleted: 247
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11opencv_test12_GLOBAL__N_126matching_single_match_Test12PerfTestBodyEv:bb.a
bb.k:                                             ; preds = %bb.i
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !64
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.l ], [ %i.v, %bb.m ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.n, label %_ZNSt12__shared_ptrIN2cv15line_descriptor23BinaryDescriptorMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21
  br label %_ZNSt12__shared_ptrIN2cv15line_descriptor23BinaryDescriptorMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv15line_descriptor23BinaryDescriptorMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.x = load ptr, ptr %3, align 8, !tbaa !66     ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN2cv15line_descriptor23BinaryDescriptorMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !69
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #23
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv6DMatchESaIS1_EED2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN2cv15line_descriptor23BinaryDescriptorMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.p:                                             ; preds = %bb.h, %.loopexit.split-lp, %.loopexit
  %.pn = phi { ptr, i32 } [ %i.e, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt12__shared_ptrIN2cv15line_descriptor23BinaryDescriptorMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  %.pre = load ptr, ptr %3, align 8, !tbaa !66    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i.i.i7 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EED2Ev.exit8, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !69
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %.pre to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ah) #23
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EED2Ev.exit8

_ZNSt6vectorIN2cv6DMatchESaIS1_EED2Ev.exit8:      ; preds = %.thread, %bb.p, %bb.q
  %.pn.pn13 = phi { ptr, i32 } [ %i.d, %.thread ], [ %.pn, %bb.p ], [ %.pn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn.pn13
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

declare void @_ZN4perf8TestBase5SetUpEv(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN6cvtest9testSetUpEv() local_unnamed_addr #1

declare void @_ZN4perf8TestBase15RunPerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #1

declare void @_ZN6cvtest12testTearDownEv() local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable
}

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #10

declare void @_ZN2cv15line_descriptor23BinaryDescriptorMatcher29createBinaryDescriptorMatcherEv(ptr dead_on_unwind writable sret(%"struct.cv::Ptr") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11opencv_test12_GLOBAL__N_112generateDataERN2cv3MatES3_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.20", align 8    ; 11 uses
  %3 = alloca %"class.cv::Range", align 4         ; 5 uses
  %4 = alloca %"class.cv::Range", align 8         ; 4 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %8 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %10 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 300, i32 noundef 32, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.c, align 8
  store i32 50397184, ptr %6, align 8, !tbaa !70
  store ptr %5, ptr %i.b, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %7, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %8, ptr %i.e, align 8, !tbaa !73
  store i64 17179869185, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store double 2.550000e+02, ptr %10, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833530, ptr %9, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %10, ptr %i.h, align 8, !tbaa !73
  store i64 17179869185, ptr %i.g, align 8
  invoke void @_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.j, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !70
  store ptr %0, ptr %i.i, align 8, !tbaa !73
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !75
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.f
  %indvars.iv57 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next58, %bb.f ] ; 4 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 3 uses
  %i.w = shl i64 %indvars.iv57, 2
  %13 = and i64 %i.w, 4294967292
  %i.x = trunc nuw nsw i64 %indvars.iv57 to i32
  %i.y = trunc nuw nsw i64 %indvars.iv.next58 to i32
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f, %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

bb.f:                                             ; preds = %.loopexit
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !75
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next58, %i.ac
  br i1 %i.ad, label %.preheader, label %._crit_edge, !llvm.loop !82

bb.g:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !83
  store i32 %i.x, ptr %3, align 4, !tbaa !86, !noalias !83
  store i32 %i.y, ptr %i.n, align 4, !tbaa !88, !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !83
  store i64 9223372034707292160, ptr %4, align 8, !noalias !83
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !83
  invoke void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.i unwind label %bb.z

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.ae = call i32 @rand() #21
  %i.af = srem i32 %i.ae, 32
  %i.ag = load i32, ptr %i.o, align 4, !tbaa !89
  %i.ah = icmp slt i32 %i.ag, 2
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.aj = load i64, ptr %i.q, align 8
  %i.ak = mul i64 %i.aj, %indvars.iv57
  %.sink.idx.i = select i1 %i.ah, i64 0, i64 %i.ak
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sink.idx.i
  %i.al = sext i32 %i.af to i64                   ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sink.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !17  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %i.ap = zext i8 %i.an to i64
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aq = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %.noexc.i unwind label %bb.k   ; 4 uses

.noexc.i:                                         ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false), !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 3 uses
  store ptr %i.aq, ptr %2, align 8, !tbaa !91
  store ptr %i.ar, ptr %i.r, align 8, !tbaa !94
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !95
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i, %.preheader.i
  %i.at = phi ptr [ null, %.preheader.i ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 5 uses
  %i.au = phi ptr [ null, %.preheader.i ], [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 3 uses
  %i.av = phi ptr [ null, %.preheader.i ], [ %i.bq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 3 uses
  %.02362.i = phi i64 [ %i.ap, %.preheader.i ], [ %i.br, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 2 uses
  %i.aw = trunc nuw nsw i64 %.02362.i to i32
  %i.ax = and i32 %i.aw, 1                        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.au
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  store ptr %i.ay, ptr %i.r, align 8, !tbaa !94
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.n:                                             ; preds = %bb.l
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
          to label %.noexc30.i unwind label %.loopexit.split-lp.i

.noexc30.i:                                       ; preds = %bb.o
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %i.bd = ashr exact i64 %i.bb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #24
          to label %.noexc31.i unwind label %.loopexit.i ; 5 uses

.noexc31.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store i32 %i.ax, ptr %i.bk, align 4, !tbaa !64
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.p:                                             ; preds = %.noexc31.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr align 4 %i.at, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.p, %.noexc31.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bb) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.bj, ptr %2, align 8, !tbaa !91
  store ptr %i.bm, ptr %i.r, align 8, !tbaa !94
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh ; 2 uses
  store ptr %i.bn, ptr %i.s, align 8, !tbaa !95
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.m
  %i.bo = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.at, %bb.m ] ; 2 uses
  %i.bp = phi ptr [ %i.bn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.au, %bb.m ]
  %i.bq = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.ay, %bb.m ] ; 2 uses
  %i.br = lshr i64 %.02362.i, 1                   ; 2 uses
  %.not.i = icmp eq i64 %i.br, 0
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.l, !llvm.loop !96

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp.i:                             ; preds = %bb.o
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i, %.noexc.i
  %i.bs = phi ptr [ %i.aq, %.noexc.i ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 3 uses
  %i.bt = phi ptr [ %i.ar, %.noexc.i ], [ %i.bq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ]
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 32
  br i1 %i.bx, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, label %bb.s

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.by = sub nuw nsw i64 32, %i.bw               ; 5 uses
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #24
          to label %.noexc37.i unwind label %bb.r ; 5 uses

.noexc37.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bz, i8 0, i64 %i.by, i1 false), !tbaa !64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.cb, ptr nonnull %i.bz, ptr nonnull %i.ca)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit41.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit43.i

_ZNSt6vectorIiSaIiEED2Ev.exit41.i:                ; preds = %.noexc37.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.by) #23
  %.pre72.i.pre = load ptr, ptr %2, align 8, !tbaa !91
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSt6vectorIiSaIiEED2Ev.exit43.i:                ; preds = %.noexc37.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.by) #23
  br label %bb.w

._crit_edge.loopexit.i:                           ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %.pre72.i to i64           ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = lshr exact i64 %i.ch, 2                 ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph67.preheader.i, label %.loopexit

.lr.ph67.preheader.i:                             ; preds = %._crit_edge.loopexit.i
  %i.cl = and i64 %i.ci, 2147483647
  br label %.lr.ph67.i

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZNSt6vectorIiSaIiEED2Ev.exit41.i
  %.pre72.i = phi ptr [ %.pre72.i.pre, %_ZNSt6vectorIiSaIiEED2Ev.exit41.i ], [ %i.bs, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 8 uses
  %i.cm = load i32, ptr %.pre72.i, align 4, !tbaa !64
  %i.cn = icmp eq i32 %i.cm, 0
  %..i = zext i1 %i.cn to i32
  store i32 %..i, ptr %.pre72.i, align 4, !tbaa !64
  %exitcond.not.i = icmp eq i64 %indvars.iv, 0
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.pre72.i, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !64
  %i.cq = icmp eq i32 %i.cp, 0
  %..i.1 = zext i1 %i.cq to i32
  store i32 %..i.1, ptr %i.co, align 4, !tbaa !64
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv, 1
  br i1 %exitcond.not.i.1, label %._crit_edge.loopexit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre72.i, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !64
  %i.ct = icmp eq i32 %i.cs, 0
  %..i.2 = zext i1 %i.ct to i32
  store i32 %..i.2, ptr %i.cr, align 4, !tbaa !64
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv, 2
  br i1 %exitcond.not.i.2, label %._crit_edge.loopexit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre72.i, i64 12 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !64
  %i.cw = icmp eq i32 %i.cv, 0
  %..i.3 = zext i1 %i.cw to i32
  store i32 %..i.3, ptr %i.cu, align 4, !tbaa !64
  br label %._crit_edge.loopexit.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i, %.lr.ph67.preheader.i
  %indvars.iv70.i = phi i64 [ %i.cl, %.lr.ph67.preheader.i ], [ %indvars.iv.next71.i, %.lr.ph67.i ] ; 2 uses
  %.02164.i = phi i8 [ 0, %.lr.ph67.preheader.i ], [ %i.dc, %.lr.ph67.i ]
  %indvars.iv.next71.i = add nsw i64 %indvars.iv70.i, -1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.pre72.i, i64 %indvars.iv.next71.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !64
  %i.cz = trunc nuw nsw i64 %indvars.iv.next71.i to i32
  %i.da = shl i32 %i.cy, %i.cz
  %i.db = trunc i32 %i.da to i8
  %i.dc = add i8 %.02164.i, %i.db                 ; 2 uses
  %i.dd = icmp samesign ugt i64 %indvars.iv70.i, 1
  br i1 %i.dd, label %.lr.ph67.i, label %.loopexit, !llvm.loop !97

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit43.i, %bb.r, %.loopexit.split-lp.i, %.loopexit.i, %bb.k
  %.pn.pn.i = phi { ptr, i32 } [ %i.cc, %bb.r ], [ %i.as, %bb.k ], [ %i.cd, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.de = load ptr, ptr %2, align 8, !tbaa !91    ; 3 uses
  %.not.i.i.i46.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i46.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit47.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = load ptr, ptr %i.s, align 8, !tbaa !95
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit47.i

_ZNSt6vectorIiSaIiEED2Ev.exit47.i:                ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body

.loopexit:                                        ; preds = %.lr.ph67.i, %._crit_edge.loopexit.i
  %.021.lcssa85.i = phi i8 [ 0, %._crit_edge.loopexit.i ], [ %i.dc, %.lr.ph67.i ]
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !95
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %.pre72.i, i64 noundef %i.dl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.dm = add nuw nsw i64 %indvars.iv, %13
  %i.dn = load i32, ptr %i.t, align 4, !tbaa !89
  %i.do = icmp slt i32 %i.dn, 2
  %i.dp = load ptr, ptr %i.u, align 8, !tbaa !90
  %i.dq = load i64, ptr %i.v, align 8
  %i.dr = mul i64 %i.dq, %i.dm
  %.sink.idx.i42 = select i1 %i.do, i64 0, i64 %i.dr
  %.sink.i43 = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sink.idx.i42
  %i.ds = getelementptr inbounds i8, ptr %.sink.i43, i64 %i.al
  store i8 %.021.lcssa85.i, ptr %i.ds, align 1, !tbaa !17
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !98

bb.y:                                             ; preds = %bb.g
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.h
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn36 = phi { ptr, i32 } [ %i.du, %bb.z ], [ %i.dt, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit47.i, %bb.aa, %bb.e, %bb.d
  %.pn38.pn.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.aa, %bb.e ], [ %.pn36, %bb.aa ], [ %.pn.pn.i, %_ZNSt6vectorIiSaIiEED2Ev.exit47.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn38.pn.pn
}

declare noundef zeroext i1 @_ZN4perf8TestBase4nextEv(ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4perf8TestBase10startTimerEv(ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #1

declare void @_ZNK2cv15line_descriptor23BinaryDescriptorMatcher5matchERKNS_3MatES4_RSt6vectorINS_6DMatchESaIS6_EES4_(ptr noundef nonnull align 8 dereferenceable(292), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #10

declare void @_ZN4perf8TestBase9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv15line_descriptor23BinaryDescriptorMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !62
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !99
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !99
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !64
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() local_unnamed_addr #1

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare void @_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #10

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !100

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !94
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !64
  store i32 %i.u, ptr %i.h, align 4, !tbaa !64
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !94
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !100

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load i32, ptr %1, align 4, !tbaa !64
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !64
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !100

end_hunk_0
