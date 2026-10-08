Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/box_filter.dispatch?download=true
inline.NumInlined: 2169
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZN2cv12cpu_baseline15createBoxFilterEiiNS_5Size_IiEENS_6Point_IiEEbi:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv10BaseFilterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !23
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !3
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !3
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv16BaseColumnFilterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !23
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !3
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !3
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv13BaseRowFilterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !23
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !3
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !3
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, i64 %2, i64 %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, i1 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.cv::utils::BufferArea", align 8 ; 11 uses
  %11 = alloca %"class.cv::utils::BufferArea", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.cv::utils::BufferArea", align 8 ; 11 uses
  %17 = alloca %"class.cv::utils::BufferArea", align 8 ; 12 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  %i.k = alloca ptr, align 8                      ; 8 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator", align 1   ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.sroa.047.0.extract.trunc = trunc i64 %2 to i32 ; 18 uses
  %.sroa.552.0.extract.shift = lshr i64 %2, 32    ; 19 uses
  %.sroa.552.0.extract.trunc = trunc nuw i64 %.sroa.552.0.extract.shift to i32 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_biE26__cv_trace_location_fn1661)
  %i.m = load i32, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.n = and i32 %i.m, 4064                       ; 3 uses
  %i.o = or disjoint i32 %i.n, 6
  %i.p = load i32, ptr %1, align 8, !tbaa !108    ; 3 uses
  %i.q = and i32 %i.p, 4095
  %i.r = xor i32 %i.p, %i.m
  %i.s = and i32 %i.r, 4064
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi, ptr noundef nonnull @.str.1, i32 noundef 1666) #24
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %21, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %.body

bb.g:                                             ; preds = %bb.a
  %.sroa.5.0.extract.shift = lshr i64 %3, 32
  %.sroa.039.0.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %i.ab = and i32 %i.p, 31
  %i.ac = icmp slt i32 %.sroa.039.0.extract.trunc, 0
  %i.ad = sdiv i32 %.sroa.047.0.extract.trunc, 2
  %.sroa.039.0 = select i1 %i.ac, i32 %i.ad, i32 %.sroa.039.0.extract.trunc ; 6 uses
  %i.ae = icmp slt i64 %3, 0
  %i.af = sdiv i32 %.sroa.552.0.extract.trunc, 2
  %i.ag = zext i32 %i.af to i64
  %.sroa.5.0 = select i1 %i.ae, i64 %i.ag, i64 %.sroa.5.0.extract.shift ; 2 uses
  %i.ah = mul nsw i32 %.sroa.552.0.extract.trunc, %.sroa.047.0.extract.trunc
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = fdiv double 1.000000e+00, %i.ai
  %i.ak = select i1 %6, double %i.aj, double 1.000000e+00 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !362
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !362
  %i.ap = icmp eq ptr %i.am, %i.ao                ; 14 uses
  switch i32 %i.ab, label %bb.do [
    i32 5, label %bb.h
    i32 6, label %bb.bl
  ]

bb.h:                                             ; preds = %bb.g
  %.sroa.7.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0 to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %16, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.bk

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %17, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.g, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store ptr null, ptr %i.h, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store ptr null, ptr %i.i, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store ptr null, ptr %i.j, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store ptr null, ptr %i.k, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store ptr null, ptr %i.l, align 8, !tbaa !110
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !362
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !362
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.0.0.copyload.i = load i32, ptr %4, align 4, !tbaa !13 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !13 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load i32, ptr %i.au, align 8, !tbaa !111 ; 6 uses
  %i.aw = icmp slt i32 %i.av, 3
  br i1 %i.aw, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc.i unwind label %bb.r

.noexc.i:                                         ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.21, i32 noundef 109) #24
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc.i
  unreachable

bb.l:                                             ; preds = %.noexc.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %14, align 8, !tbaa !19   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !20
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

bb.m:                                             ; preds = %bb.i
  %i.bd = icmp sgt i32 %i.av, 0
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bf = icmp eq i32 %i.av, 2
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !13
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = icmp eq i32 %i.av, 0
  %i.bk = zext i1 %i.bj to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bl = phi i32 [ %i.bi, %bb.n ], [ %i.bk, %bb.o ] ; 11 uses
  %i.bm = icmp eq i32 %i.av, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp sgt i32 %i.av, -1
  %i.bq = zext i1 %i.bp to i32
  %i.br = select i1 %i.bm, i32 %i.bo, i32 %i.bq   ; 4 uses
  %i.bs = load i32, ptr %5, align 4, !tbaa !113   ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !114 ; 7 uses
  %i.bv = icmp slt i32 %i.bs, 0
  %i.bw = icmp slt i32 %i.bu, 0
  %or.cond.not498.i = select i1 %i.bv, i1 true, i1 %i.bw
  %i.bx = icmp slt i32 %i.bl, 0
  %or.cond5.not495.i = select i1 %or.cond.not498.i, i1 true, i1 %i.bx
  %i.by = icmp slt i32 %i.br, 0
  %or.cond8.not493.i = select i1 %or.cond5.not495.i, i1 true, i1 %i.by
  %i.bz = add nuw nsw i32 %i.bs, %i.bl
  %.not.i = icmp sgt i32 %i.bz, %.sroa.0.0.copyload.i
  %or.cond310.i = select i1 %or.cond8.not493.i, i1 true, i1 %.not.i
  %i.ca = add nuw nsw i32 %i.bu, %i.br
  %.not291.i = icmp sgt i32 %i.ca, %.sroa.7.0.copyload.i
  %or.cond311.i = select i1 %or.cond310.i, i1 true, i1 %.not291.i
  br i1 %or.cond311.i, label %bb.s, label %bb.x

bb.q:                                             ; preds = %.noexc
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.r:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib, ptr noundef nonnull @.str.1, i32 noundef 1400) #24
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.w:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %18, align 8, !tbaa !19   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !20
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.cd, %bb.v ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ce, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

bb.x:                                             ; preds = %bb.p
  %i.ck = load i64, ptr %i.ar, align 8, !tbaa !39 ; 2 uses
  %i.cl = load i64, ptr %i.at, align 8, !tbaa !39
  %i.cm = load i32, ptr %0, align 8, !tbaa !108
  %i.cn = and i32 %i.cm, 4095                     ; 4 uses
  %i.co = lshr i32 %i.cn, 5
  %i.cp = add nuw nsw i32 %i.co, 1                ; 19 uses
  %i.cq = shl nuw nsw i32 %i.cn, 2
  %i.cr = and i32 %i.cq, 124
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = lshr i64 1275511473185297, %i.cs
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = and i32 %i.cu, 15
  %i.cw = mul nuw nsw i32 %i.cv, %i.cp            ; 4 uses
  %i.cx = lshr exact i32 %i.n, 2
  %i.cy = add nuw nsw i32 %i.cx, 8
  %i.cz = add nsw i32 %.sroa.047.0.extract.trunc, -1 ; 2 uses
  %.sroa.speculated423.i = call i32 @llvm.smax.i32(i32 %i.cz, i32 1)
  %i.da = add i32 %.sroa.552.0.extract.trunc, -1  ; 2 uses
  %i.db = add i32 %i.br, %i.da                    ; 4 uses
  %.sroa.speculated446.i = call i32 @llvm.smin.i32(i32 %i.bs, i32 %.sroa.039.0) ; 2 uses
  %i.dc = sub i32 %.sroa.039.0, %i.bs             ; 4 uses
  %.sroa.speculated392.i = call i32 @llvm.smax.i32(i32 %i.dc, i32 0) ; 6 uses
  %i.dd = xor i32 %.sroa.039.0, -1
  %i.de = add i32 %i.dd, %.sroa.047.0.extract.trunc
  %i.df = sub i32 %i.de, %.sroa.0.0.copyload.i
  %i.dg = add i32 %i.df, %i.bl
  %i.dh = add i32 %i.dg, %i.bs                    ; 4 uses
  %.sroa.speculated371.i = call i32 @llvm.smax.i32(i32 %i.dh, i32 0) ; 6 uses
  %i.di = xor i32 %.sroa.7.0.extract.trunc.i, -1
  %i.dj = add i32 %i.di, %.sroa.552.0.extract.trunc
  %i.dk = sub i32 %i.dj, %.sroa.7.0.copyload.i
  %i.dl = add i32 %i.dk, %i.br
  %i.dm = add i32 %i.dl, %i.bu                    ; 3 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.dm, i32 0) ; 3 uses
  %.sroa.speculated406.i = call i32 @llvm.umin.i32(i32 %i.bl, i32 %.sroa.speculated392.i)
  %i.dn = mul nuw nsw i32 %i.cp, %.sroa.speculated406.i ; 6 uses
  %i.do = add i32 %.sroa.047.0.extract.trunc, 63  ; 2 uses
  %i.dp = add i32 %i.bl, %i.do
  %i.dq = add i32 %i.dp, %i.dn                    ; 2 uses
  %i.dr = mul i32 %i.dq, %i.cy                    ; 7 uses
  %i.ds = mul nsw i32 %i.cw, %.sroa.speculated446.i
  %i.dt = sext i32 %i.ds to i64
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.aq, i64 %i.du ; 2 uses
  %i.dw = mul nuw nsw i32 %i.cp, %.sroa.speculated423.i
  %i.dx = zext nneg i32 %i.dw to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIiEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %i.dx, i16 noundef zeroext 4)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.dy = add nsw i32 %.sroa.552.0.extract.trunc, 1
  %i.dz = mul i32 %i.dr, %i.dy
  %i.ea = sext i32 %i.dz to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.ea, i16 noundef zeroext 1)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.eb = mul i32 %i.cw, %i.dq                    ; 3 uses
  %i.ec = sext i32 %i.eb to i64                   ; 4 uses
  invoke void @_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.ec, i16 noundef zeroext 1)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %16)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5utils10BufferArea8zeroFillEv(ptr noundef nonnull align 8 dereferenceable(41) %16)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ed = icmp sgt i32 %i.dc, 0                   ; 3 uses
  %i.ee = icmp sgt i32 %i.dh, 0                   ; 3 uses
  %or.cond10.i = select i1 %i.ed, i1 true, i1 %i.ee
  %i.ef = icmp ne i32 %7, 0                       ; 7 uses
  %or.cond14.i = and i1 %i.ef, %or.cond10.i
  br i1 %or.cond14.i, label %bb.ad, label %.loopexit506.i

bb.ad:                                            ; preds = %bb.ac
  %i.eg = sub nsw i32 %.sroa.speculated446.i, %i.bs ; 2 uses
  %i.eh = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  br i1 %i.ed, label %.lr.ph.preheader.i, label %.preheader505.i

.lr.ph.preheader.i:                               ; preds = %bb.ad
  %i.ei = zext nneg i32 %i.cp to i64              ; 4 uses
  %wide.trip.count533.i = zext nneg i32 %i.dc to i64
  %min.iters.check526 = icmp samesign ult i32 %i.cn, 224
  %n.vec528 = and i64 %i.ei, 248                  ; 3 uses
  %cmp.n538 = icmp eq i64 %n.vec528, %i.ei
  br label %.lr.ph.i

.preheader505.i:                                  ; preds = %.loopexit673, %bb.ad
  br i1 %i.ee, label %.lr.ph512.preheader.i, label %.loopexit506.i

.lr.ph512.preheader.i:                            ; preds = %.preheader505.i
  %i.ej = zext nneg i32 %.sroa.speculated392.i to i64
  %i.ek = zext nneg i32 %i.cp to i64              ; 4 uses
  %i.el = zext nneg i32 %i.dh to i64
  %min.iters.check541 = icmp samesign ult i32 %i.cn, 224
  %n.vec543 = and i64 %i.ek, 248                  ; 3 uses
  %cmp.n553 = icmp eq i64 %n.vec543, %i.ek
  br label %.lr.ph512.i

.lr.ph.i:                                         ; preds = %.loopexit673, %.lr.ph.preheader.i
  %indvars.iv530.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next531.i, %.loopexit673 ] ; 3 uses
  %i.em = trunc i64 %indvars.iv530.i to i32
  %i.en = sub i32 %i.em, %.sroa.speculated392.i
  %i.eo = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.en, i32 noundef %.sroa.0.0.copyload.i, i32 noundef %7)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %.lr.ph.i
  %i.ep = add nsw i32 %i.eo, %i.eg
  %i.eq = mul nsw i32 %i.ep, %i.cp                ; 2 uses
  %i.er = mul nuw nsw i64 %indvars.iv530.i, %i.ei
  %invariant.gep603.i = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.er ; 2 uses
  br i1 %min.iters.check526, label %scalar.ph525.preheader, label %vector.ph527

vector.ph527:                                     ; preds = %bb.ae
  %broadcast.splatinsert529 = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat530 = shufflevector <4 x i32> %broadcast.splatinsert529, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op812 = add <4 x i32> splat (i32 4), %broadcast.splat530
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph527
  %index532 = phi i64 [ 0, %vector.ph527 ], [ %index.next535, %vector.body531 ] ; 2 uses
  %vec.ind533 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph527 ], [ %vec.ind.next536, %vector.body531 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep603.i, i64 %index532 ; 2 uses
  %i.et = add <4 x i32> %broadcast.splat530, %vec.ind533
  %.reass813 = add <4 x i32> %vec.ind533, %invariant.op812
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <4 x i32> %i.et, ptr %i.es, align 4, !tbaa !13
  store <4 x i32> %.reass813, ptr %i.eu, align 4, !tbaa !13
  %index.next535 = add nuw i64 %index532, 8       ; 2 uses
  %vec.ind.next536 = add <4 x i32> %vec.ind533, splat (i32 8)
  %i.ev = icmp eq i64 %index.next535, %n.vec528
  br i1 %i.ev, label %middle.block537, label %vector.body531, !llvm.loop !282

middle.block537:                                  ; preds = %vector.body531
  br i1 %cmp.n538, label %.loopexit673, label %scalar.ph525.preheader

scalar.ph525.preheader:                           ; preds = %bb.ae, %middle.block537
  %indvars.iv.i.ph = phi i64 [ 0, %bb.ae ], [ %n.vec528, %middle.block537 ]
  br label %scalar.ph525

scalar.ph525:                                     ; preds = %scalar.ph525.preheader, %scalar.ph525
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph525 ], [ %indvars.iv.i.ph, %scalar.ph525.preheader ] ; 3 uses
  %gep604.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep603.i, i64 %indvars.iv.i
  %i.ew = trunc i64 %indvars.iv.i to i32
  %i.ex = add i32 %i.eq, %i.ew
  store i32 %i.ex, ptr %gep604.i, align 4, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ei
  br i1 %exitcond.not.i, label %.loopexit673, label %scalar.ph525, !llvm.loop !283

bb.af:                                            ; preds = %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.av, %.invoke.i, %bb.at, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

bb.ag:                                            ; preds = %.lr.ph.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

.loopexit673:                                     ; preds = %scalar.ph525, %middle.block537
  %indvars.iv.next531.i = add nuw nsw i64 %indvars.iv530.i, 1 ; 2 uses
  %exitcond534.not.i = icmp eq i64 %indvars.iv.next531.i, %wide.trip.count533.i
  br i1 %exitcond534.not.i, label %.preheader505.i, label %.lr.ph.i, !llvm.loop !284

.lr.ph512.i:                                      ; preds = %.loopexit, %.lr.ph512.preheader.i
  %indvars.iv540.i = phi i64 [ 0, %.lr.ph512.preheader.i ], [ %indvars.iv.next541.i, %.loopexit ] ; 3 uses
  %i.fa = trunc i64 %indvars.iv540.i to i32
  %i.fb = add i32 %.sroa.0.0.copyload.i, %i.fa
  %i.fc = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.fb, i32 noundef %.sroa.0.0.copyload.i, i32 noundef %7)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.lr.ph512.i
  %i.fd = add nsw i32 %i.fc, %i.eg
  %i.fe = mul nsw i32 %i.fd, %i.cp                ; 2 uses
  %i.ff = add nuw nsw i64 %indvars.iv540.i, %i.ej
  %i.fg = mul nuw nsw i64 %i.ff, %i.ek
  %invariant.gep605.i = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fg ; 2 uses
  br i1 %min.iters.check541, label %scalar.ph540.preheader, label %vector.ph542

vector.ph542:                                     ; preds = %bb.ah
  %broadcast.splatinsert544 = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %broadcast.splat545 = shufflevector <4 x i32> %broadcast.splatinsert544, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op814 = add <4 x i32> splat (i32 4), %broadcast.splat545
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph542
  %index547 = phi i64 [ 0, %vector.ph542 ], [ %index.next550, %vector.body546 ] ; 2 uses
  %vec.ind548 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph542 ], [ %vec.ind.next551, %vector.body546 ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep605.i, i64 %index547 ; 2 uses
  %i.fi = add <4 x i32> %broadcast.splat545, %vec.ind548
  %.reass815 = add <4 x i32> %vec.ind548, %invariant.op814
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <4 x i32> %i.fi, ptr %i.fh, align 4, !tbaa !13
  store <4 x i32> %.reass815, ptr %i.fj, align 4, !tbaa !13
  %index.next550 = add nuw i64 %index547, 8       ; 2 uses
  %vec.ind.next551 = add <4 x i32> %vec.ind548, splat (i32 8)
  %i.fk = icmp eq i64 %index.next550, %n.vec543
  br i1 %i.fk, label %middle.block552, label %vector.body546, !llvm.loop !285

middle.block552:                                  ; preds = %vector.body546
  br i1 %cmp.n553, label %.loopexit, label %scalar.ph540.preheader

scalar.ph540.preheader:                           ; preds = %bb.ah, %middle.block552
  %indvars.iv535.i.ph = phi i64 [ 0, %bb.ah ], [ %n.vec543, %middle.block552 ]
  br label %scalar.ph540

scalar.ph540:                                     ; preds = %scalar.ph540.preheader, %scalar.ph540
  %indvars.iv535.i = phi i64 [ %indvars.iv.next536.i, %scalar.ph540 ], [ %indvars.iv535.i.ph, %scalar.ph540.preheader ] ; 3 uses
  %gep606.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep605.i, i64 %indvars.iv535.i
  %i.fl = trunc i64 %indvars.iv535.i to i32
  %i.fm = add i32 %i.fe, %i.fl
  store i32 %i.fm, ptr %gep606.i, align 4, !tbaa !13
  %indvars.iv.next536.i = add nuw nsw i64 %indvars.iv535.i, 1 ; 2 uses
  %exitcond539.not.i = icmp eq i64 %indvars.iv.next536.i, %i.ek
  br i1 %exitcond539.not.i, label %.loopexit, label %scalar.ph540, !llvm.loop !286

bb.ai:                                            ; preds = %.lr.ph512.i
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

.loopexit:                                        ; preds = %scalar.ph540, %middle.block552
  %indvars.iv.next541.i = add nuw nsw i64 %indvars.iv540.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  br i1 %i.gq, label %bb.av, label %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #24
          to label %.noexc366.i unwind label %bb.af

.noexc366.i:                                      ; preds = %bb.av
  unreachable

_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.au
  %i.gr = shl nuw nsw i64 %i.gp, 3
  %i.gs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #26
          to label %.noexc367.i unwind label %bb.af ; 4 uses

.noexc367.i:                                      ; preds = %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  store ptr null, ptr %i.gs, align 8, !tbaa !118
  %i.gt = add nsw i64 %i.gp, -1                   ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %.noexc321.i, label %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc367.i
  %i.gv = getelementptr i8, ptr %i.gs, i64 8
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.gt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gv, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !118
  br label %.noexc321.i

.noexc321.i:                                      ; preds = %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc367.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gp
  %i.gx = ptrtoint ptr %i.gw to i64
  br label %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i

_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i:          ; preds = %.noexc321.i, %.loopexit.i
  %.sroa.15.2.i = phi i64 [ %i.gx, %.noexc321.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.sroa.0454.2.i = phi ptr [ %i.gs, %.noexc321.i ], [ null, %.loopexit.i ] ; 17 uses
  %i.gy = load ptr, ptr %i.g, align 8, !tbaa !109 ; 11 uses
  %i.gz = load ptr, ptr %i.i, align 8, !tbaa !110 ; 2 uses
  br i1 %i.ap, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i: ; preds = %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = add i64 %i.ha, 63
  %i.hc = and i64 %i.hb, -64
  %i.hd = inttoptr i64 %i.hc to ptr               ; 3 uses
  %i.he = load ptr, ptr %i.h, align 8, !tbaa !110 ; 4 uses
  %i.hf = mul nsw i32 %i.dr, %.sroa.552.0.extract.trunc
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds i8, ptr %i.he, i64 %i.hg
  %i.hi = shl i32 %i.dn, 3                        ; 3 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = add i64 %i.hj, 63
  %i.hl = and i64 %i.hk, -64
  %i.hm = inttoptr i64 %i.hl to ptr               ; 3 uses
  %i.hn = icmp sgt i32 %.sroa.552.0.extract.trunc, 0
  br i1 %i.hn, label %.lr.ph516.i, label %.preheader.i

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i: ; preds = %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i
  %i.ho = shl i32 %i.dn, 2
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.gz, i64 %i.hp
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = add i64 %i.hr, 63
  %i.ht = and i64 %i.hs, -64
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = sub nsw i64 0, %i.hp
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 %i.hv ; 3 uses
  %i.hx = load ptr, ptr %i.h, align 8, !tbaa !110 ; 2 uses
  %i.hy = mul nsw i32 %i.dr, %.sroa.552.0.extract.trunc
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds i8, ptr %i.hx, i64 %i.hz
  %i.ib = shl i32 %i.dn, 3                        ; 4 uses
  %i.ic = sext i32 %i.ib to i64                   ; 3 uses
  %i.id = getelementptr inbounds i8, ptr %i.ia, i64 %i.ic
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = add i64 %i.ie, 63
  %i.ig = and i64 %i.if, -64
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = sub nsw i64 0, %i.ic                    ; 4 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ih, i64 %i.ii ; 3 uses
  %i.ik = icmp sgt i32 %.sroa.552.0.extract.trunc, 0
  br i1 %i.ik, label %.lr.ph516.thread.i, label %.preheader.i

.lr.ph516.thread.i:                               ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i
  %invariant.gep.i = getelementptr i8, ptr %i.hx, i64 %i.ic ; 3 uses
  %i.il = sext i32 %i.dr to i64                   ; 2 uses
  %min.iters.check556 = icmp ult i64 %2, 17179869184
  br i1 %min.iters.check556, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader, label %vector.ph557

vector.ph557:                                     ; preds = %.lr.ph516.thread.i
  %n.vec558 = and i64 %.sroa.552.0.extract.shift, 2147483644 ; 3 uses
  %broadcast.splatinsert559 = insertelement <2 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat560 = shufflevector <2 x i64> %broadcast.splatinsert559, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph557
  %index562 = phi i64 [ 0, %vector.ph557 ], [ %index.next569, %vector.body561 ] ; 2 uses
  %vec.ind563 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph557 ], [ %vec.ind.next570, %vector.body561 ] ; 3 uses
  %step.add564 = add nuw <2 x i64> %vec.ind563, splat (i64 2)
  %i.im = mul nsw <2 x i64> %vec.ind563, %broadcast.splat560
  %i.in = mul nsw <2 x i64> %step.add564, %broadcast.splat560
  %wide.gep565 = getelementptr i8, ptr %invariant.gep.i, <2 x i64> %i.im
  %wide.gep566 = getelementptr i8, ptr %invariant.gep.i, <2 x i64> %i.in
  %i.io = ptrtoint <2 x ptr> %wide.gep565 to <2 x i64>
  %i.ip = ptrtoint <2 x ptr> %wide.gep566 to <2 x i64>
  %i.iq = add <2 x i64> %i.io, splat (i64 63)
  %i.ir = add <2 x i64> %i.ip, splat (i64 63)
  %i.is = and <2 x i64> %i.iq, splat (i64 -64)
  %i.it = and <2 x i64> %i.ir, splat (i64 -64)
  %i.iu = inttoptr <2 x i64> %i.is to <2 x ptr>
  %i.iv = inttoptr <2 x i64> %i.it to <2 x ptr>
  %wide.gep567 = getelementptr inbounds i8, <2 x ptr> %i.iu, i64 %i.ii
  %wide.gep568 = getelementptr inbounds i8, <2 x ptr> %i.iv, i64 %i.ii
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %index562 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store <2 x ptr> %wide.gep567, ptr %i.iw, align 8, !tbaa !118
  store <2 x ptr> %wide.gep568, ptr %i.ix, align 8, !tbaa !118
  %index.next569 = add nuw i64 %index562, 4       ; 2 uses
  %vec.ind.next570 = add nuw <2 x i64> %vec.ind563, splat (i64 4)
  %i.iy = icmp eq i64 %index.next569, %n.vec558
  br i1 %i.iy, label %middle.block571, label %vector.body561, !llvm.loop !289

middle.block571:                                  ; preds = %vector.body561
  %cmp.n572 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec558
  br i1 %cmp.n572, label %.preheader.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader: ; preds = %.lr.ph516.thread.i, %middle.block571
  %indvars.iv546.i.ph = phi i64 [ 0, %.lr.ph516.thread.i ], [ %n.vec558, %middle.block571 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i

.lr.ph516.i:                                      ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i
  %i.iz = sext i32 %i.dr to i64                   ; 2 uses
  %min.iters.check575 = icmp ult i64 %2, 17179869184
  br i1 %min.iters.check575, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i.preheader, label %vector.ph576

vector.ph576:                                     ; preds = %.lr.ph516.i
  %n.vec577 = and i64 %.sroa.552.0.extract.shift, 2147483644 ; 3 uses
  %broadcast.splatinsert578 = insertelement <2 x i64> poison, i64 %i.iz, i64 0
  %broadcast.splat579 = shufflevector <2 x i64> %broadcast.splatinsert578, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body580

vector.body580:                                   ; preds = %vector.body580, %vector.ph576
  %index581 = phi i64 [ 0, %vector.ph576 ], [ %index.next586, %vector.body580 ] ; 2 uses
  %vec.ind582 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph576 ], [ %vec.ind.next587, %vector.body580 ] ; 3 uses
  %step.add583 = add nuw <2 x i64> %vec.ind582, splat (i64 2)
  %i.ja = mul nsw <2 x i64> %vec.ind582, %broadcast.splat579
  %i.jb = mul nsw <2 x i64> %step.add583, %broadcast.splat579
  %wide.gep584 = getelementptr inbounds i8, ptr %i.he, <2 x i64> %i.ja
  %wide.gep585 = getelementptr inbounds i8, ptr %i.he, <2 x i64> %i.jb
  %i.jc = ptrtoint <2 x ptr> %wide.gep584 to <2 x i64>
  %i.jd = ptrtoint <2 x ptr> %wide.gep585 to <2 x i64>
  %i.je = add <2 x i64> %i.jc, splat (i64 63)
  %i.jf = add <2 x i64> %i.jd, splat (i64 63)
  %i.jg = and <2 x i64> %i.je, splat (i64 -64)
  %i.jh = and <2 x i64> %i.jf, splat (i64 -64)
  %i.ji = inttoptr <2 x i64> %i.jg to <2 x ptr>
  %i.jj = inttoptr <2 x i64> %i.jh to <2 x ptr>
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %index581 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store <2 x ptr> %i.ji, ptr %i.jk, align 8, !tbaa !118
  store <2 x ptr> %i.jj, ptr %i.jl, align 8, !tbaa !118
  %index.next586 = add nuw i64 %index581, 4       ; 2 uses
  %vec.ind.next587 = add nuw <2 x i64> %vec.ind582, splat (i64 4)
  %i.jm = icmp eq i64 %index.next586, %n.vec577
  br i1 %i.jm, label %middle.block588, label %vector.body580, !llvm.loop !290

middle.block588:                                  ; preds = %vector.body580
  %cmp.n589 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec577
  br i1 %cmp.n589, label %.preheader.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i.preheader: ; preds = %.lr.ph516.i, %middle.block588
  %indvars.iv551.i.ph = phi i64 [ 0, %.lr.ph516.i ], [ %n.vec577, %middle.block588 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i
  %indvars.iv551.i = phi i64 [ %indvars.iv.next552.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i ], [ %indvars.iv551.i.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i.preheader ] ; 3 uses
  %i.jn = mul nsw i64 %indvars.iv551.i, %i.iz
  %i.jo = getelementptr inbounds i8, ptr %i.he, i64 %i.jn
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = add i64 %i.jp, 63
  %i.jr = and i64 %i.jq, -64
  %i.js = inttoptr i64 %i.jr to ptr
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %indvars.iv551.i
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !118
  %indvars.iv.next552.i = add nuw nsw i64 %indvars.iv551.i, 1 ; 2 uses
  %exitcond555.not.i = icmp eq i64 %indvars.iv.next552.i, %.sroa.552.0.extract.shift
  br i1 %exitcond555.not.i, label %.preheader.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i, !llvm.loop !291

.preheader.i:                                     ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i, %middle.block571, %middle.block588, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i
  %i.ju = phi i1 [ false, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i ], [ true, %middle.block588 ], [ false, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i ], [ true, %middle.block571 ], [ true, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i ], [ true, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i ]
  %.0.i322594.i = phi ptr [ %i.ij, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i ], [ %i.hm, %middle.block588 ], [ %i.hm, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i ], [ %i.ij, %middle.block571 ], [ %i.hm, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i ], [ %i.ij, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i ] ; 4 uses
  %.0.i470592.i = phi ptr [ %i.hw, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i ], [ %i.hd, %middle.block588 ], [ %i.hd, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i ], [ %i.hw, %middle.block571 ], [ %i.hd, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i ], [ %i.hw, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i ]
  %i.jv = phi i32 [ %i.ib, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i ], [ %i.hi, %middle.block588 ], [ %i.hi, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i ], [ %i.ib, %middle.block571 ], [ %i.hi, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i ], [ %i.ib, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i ]
  %i.jw = icmp sgt i32 %i.db, 0
  br i1 %i.jw, label %.lr.ph522.i, label %._crit_edge523.i

.lr.ph522.i:                                      ; preds = %.preheader.i
  %i.jx = sub i32 %i.bu, %.sroa.7.0.extract.trunc.i
  %i.jy = sub nsw i32 %i.db, %.sroa.speculated.i  ; 2 uses
  %i.jz = sext i32 %i.jv to i64                   ; 3 uses
  %i.ka = sub nsw i64 0, %i.jz                    ; 2 uses
  %i.kb = mul i32 %i.cp, %i.bl                    ; 6 uses
  %i.kc = mul i32 %i.cp, %.sroa.speculated392.i   ; 5 uses
  %i.kd = zext i32 %i.kc to i64                   ; 17 uses
  %i.ke = shl nuw nsw i64 %i.kd, 2                ; 2 uses
  %i.kf = add nuw i32 %.sroa.speculated371.i, %.sroa.speculated392.i ; 2 uses
  %.not116.i.i = icmp slt i32 %i.bl, %i.kf
  %i.kg = mul i32 %i.cp, %i.cz                    ; 3 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  %wide.trip.count214.i.i = zext i32 %i.kg to i64 ; 5 uses
  %i.ki = sub i32 %i.kf, %i.bl                    ; 2 uses
  %i.kj = xor i32 %i.ki, -1
  %i.kk = add i32 %i.kj, %.sroa.047.0.extract.trunc ; 2 uses
  %i.kl = mul nsw i32 %i.cp, %i.kk                ; 2 uses
  %i.km = icmp sgt i32 %i.kl, 0
  %wide.trip.count224.i.i = zext nneg i32 %i.kl to i64
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated371.i, i32 %i.ki) ; 2 uses
  %i.kn = mul i32 %i.cp, %.sroa.speculated.i.i    ; 3 uses
  %.not525.i = icmp eq i32 %.sroa.speculated.i.i, 0
  %wide.trip.count233.i.i = zext nneg i32 %i.kn to i64
  %invariant.gep264.i.i = getelementptr [4 x i8], ptr %i.gy, i64 %i.kd ; 15 uses
  %i.ko = shl nuw nsw i64 %wide.trip.count233.i.i, 2
  %.not500.i = icmp eq i32 %i.bl, 0
  %i.kp = icmp sgt i32 %.sroa.047.0.extract.trunc, 0 ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %.sroa.0454.2.i, i64 %i.gp
  %i.kr = getelementptr i8, ptr %i.kq, i64 -8     ; 2 uses
  %i.ks = zext nneg i32 %i.cp to i64              ; 10 uses
  %wide.trip.count251.i.i = zext nneg i32 %i.dn to i64
  %wide.trip.count242.i.i = and i64 %2, 4294967295
  %i.kt = sub nsw i64 0, %i.kd
  %i.ku = sub nsw i32 %i.bl, %.sroa.speculated371.i
  %i.kv = mul i32 %i.cp, %i.ku
  %i.kw = xor i32 %.sroa.speculated371.i, -1
  %i.kx = add i32 %i.kw, %.sroa.047.0.extract.trunc
  %i.ky = mul nsw i32 %i.cp, %i.kx
  %i.kz = mul i32 %i.cp, %.sroa.speculated371.i
  %i.la = zext i32 %i.kz to i64                   ; 6 uses
  %i.lb = shl nuw nsw i64 %i.la, 2                ; 2 uses
  %.not501.i = icmp slt i32 %i.dc, 1
  %i.lc = icmp sgt i32 %i.kb, 0
  %wide.trip.count74.i.i = zext i32 %i.kb to i64  ; 5 uses
  %.not502.i = icmp slt i32 %i.dh, 1
  %i.ld = sext i32 %i.da to i64
  %i.le = sext i32 %i.jy to i64
  %wide.trip.count564.i = zext nneg i32 %i.db to i64
  %i.lf = shl nuw nsw i64 %i.kd, 2                ; 2 uses
  %24 = add nsw i64 %i.kd, -1                     ; 2 uses
  %i.lg = zext i32 %i.kn to i64                   ; 2 uses
  %i.lh = add nsw i64 %wide.trip.count242.i.i, -1 ; 2 uses
  %25 = add nsw i64 %i.la, -1                     ; 2 uses
  %min.iters.check653 = icmp ult i64 %2, 8589934592
  %n.vec655 = and i64 %.sroa.552.0.extract.shift, 4294967294 ; 3 uses
  %broadcast.splatinsert658 = insertelement <2 x i32> poison, i32 %.sroa.552.0.extract.trunc, i64 0
  %broadcast.splat659 = shufflevector <2 x i32> %broadcast.splatinsert658, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert660 = insertelement <2 x i32> poison, i32 %i.dr, i64 0
  %broadcast.splat661 = shufflevector <2 x i32> %broadcast.splatinsert660, <2 x i32> poison, <2 x i32> zeroinitializer
  %cmp.n671 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec655
  %xtraiter741 = and i64 %i.kd, 3                 ; 3 uses
  %i.li = icmp ult i64 %24, 3
  %unroll_iter745 = and i64 %i.kd, 4294967292
  %lcmp.mod743.not = icmp eq i64 %xtraiter741, 0
  %lcmp.mod744 = icmp ne i64 %xtraiter741, 0
  %min.iters.check640 = icmp ult i32 %i.kg, 8
  %n.vec642 = and i64 %wide.trip.count214.i.i, 2147483640 ; 4 uses
  %i.lj = add nuw nsw i64 %n.vec642, %i.kd
  %cmp.n649 = icmp eq i64 %n.vec642, %wide.trip.count214.i.i
  %xtraiter747 = and i64 %wide.trip.count214.i.i, 3 ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %i.lk = mul i32 %i.kk, %i.cp                    ; 2 uses
  %i.ll = zext i32 %i.lk to i64                   ; 4 uses
  %min.iters.check625 = icmp ult i32 %i.lk, 8
  %n.vec627 = and i64 %i.ll, 4294967288           ; 4 uses
  %i.lm = add nuw nsw i64 %n.vec627, %i.kd        ; 2 uses
  %cmp.n634 = icmp eq i64 %n.vec627, %i.ll
  %xtraiter750 = and i64 %i.ll, 3                 ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  %xtraiter754 = and i64 %i.lg, 3                 ; 3 uses
  %i.ln = add i32 %i.kn, -1
  %i.lo = icmp ult i32 %i.ln, 3
  %unroll_iter758 = and i64 %i.lg, 4294967292
  %lcmp.mod756.not = icmp eq i64 %xtraiter754, 0
  %lcmp.mod757 = icmp ne i64 %xtraiter754, 0
  %xtraiter760 = and i64 %2, 3                    ; 3 uses
  %i.lp = icmp ult i64 %i.lh, 3
  %unroll_iter765 = and i64 %2, 2147483644
  %lcmp.mod762.not = icmp eq i64 %xtraiter760, 0
  %lcmp.mod764 = icmp ne i64 %xtraiter760, 0
  %xtraiter770 = and i64 %i.la, 3                 ; 3 uses
  %i.lq = icmp ult i64 %25, 3
  %unroll_iter774 = and i64 %i.la, 4294967292
  %lcmp.mod772.not = icmp eq i64 %xtraiter770, 0
  %lcmp.mod773 = icmp ne i64 %xtraiter770, 0
  %xtraiter776 = and i64 %2, 3                    ; 3 uses
  %i.lr = icmp ult i64 %i.lh, 3
  %unroll_iter781 = and i64 %2, 2147483644
  %lcmp.mod778.not = icmp eq i64 %xtraiter776, 0
  %lcmp.mod780 = icmp ne i64 %xtraiter776, 0
  %xtraiter783 = and i64 %i.kd, 3                 ; 3 uses
  %i.ls = icmp ult i64 %24, 3
  %unroll_iter787 = and i64 %i.kd, 4294967292
  %lcmp.mod785.not = icmp eq i64 %xtraiter783, 0
  %lcmp.mod786 = icmp ne i64 %xtraiter783, 0
  %min.iters.check595 = icmp ult i32 %i.kb, 8
  %n.vec597 = and i64 %wide.trip.count74.i.i, 2147483640 ; 4 uses
  %cmp.n604 = icmp eq i64 %n.vec597, %wide.trip.count74.i.i
  %xtraiter789 = and i64 %wide.trip.count74.i.i, 3 ; 2 uses
  %lcmp.mod790.not = icmp eq i64 %xtraiter789, 0
  %xtraiter792 = and i64 %i.la, 3                 ; 3 uses
  %i.lt = icmp ult i64 %25, 3
  %unroll_iter796 = and i64 %i.la, 4294967292
  %lcmp.mod794.not = icmp eq i64 %xtraiter792, 0
  %lcmp.mod795 = icmp ne i64 %xtraiter792, 0
  br label %bb.ax

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i
  %indvars.iv546.i = phi i64 [ %indvars.iv.next547.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i ], [ %indvars.iv546.i.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader ] ; 3 uses
  %i.lu = mul nsw i64 %indvars.iv546.i, %i.il
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.lu
  %i.lv = ptrtoint ptr %gep.i to i64
  %i.lw = add i64 %i.lv, 63
  %i.lx = and i64 %i.lw, -64
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 %i.ii
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %indvars.iv546.i
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !118
  %indvars.iv.next547.i = add nuw nsw i64 %indvars.iv546.i, 1 ; 2 uses
  %exitcond550.not.i = icmp eq i64 %indvars.iv.next547.i, %.sroa.552.0.extract.shift
  br i1 %exitcond550.not.i, label %.preheader.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i, !llvm.loop !292

._crit_edge523.i:                                 ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.preheader.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0454.2.i, null
  br i1 %.not.i.i.i.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge523.i
  %i.mb = ptrtoint ptr %.sroa.0454.2.i to i64
  %i.mc = sub i64 %.sroa.15.2.i, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0454.2.i, i64 noundef %i.mc) #25
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit

bb.ax:                                            ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.lr.ph522.i
  %indvars.iv561.i = phi i64 [ 0, %.lr.ph522.i ], [ %indvars.iv.next562.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 4 uses
  %.0248521.i = phi i32 [ 0, %.lr.ph522.i ], [ %i.abw, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 3 uses
  %.0257519.i = phi ptr [ %i.as, %.lr.ph522.i ], [ %spec.select.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 2 uses
  %i.md = trunc nuw nsw i64 %indvars.iv561.i to i32 ; 2 uses
  %i.me = add i32 %i.jx, %i.md
  %i.mf = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.me, i32 noundef %.sroa.7.0.copyload.i, i32 noundef %7)
          to label %bb.ay unwind label %.body.i   ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %i.mg = icmp slt i32 %i.mf, 0
  br i1 %i.mg, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not296.i = icmp sge i64 %indvars.iv561.i, %i.le
  %or.cond.not.i = select i1 %i.ap, i1 %.not296.i, i1 false
  br i1 %or.cond.not.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.mh = sub nsw i32 %i.md, %i.jy
  %i.mi = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.mj = mul nsw i32 %i.mh, %i.eb
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds i8, ptr %i.mi, i64 %i.mk
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = add i64 %i.mm, 63
  %i.mo = and i64 %i.mn, -64
  %i.mp = inttoptr i64 %i.mo to ptr
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.mq = sub nsw i32 %i.mf, %i.bu
  %i.mr = sext i32 %i.mq to i64
  %i.ms = mul nsw i64 %i.ck, %i.mr
  %i.mt = getelementptr inbounds i8, ptr %i.dv, i64 %i.ms
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ay
  %.0252.i = phi ptr [ %i.mt, %bb.bb ], [ %.0.i470592.i, %bb.ay ], [ %i.mp, %bb.ba ] ; 46 uses
  %.0252.i592 = ptrtoaddr ptr %.0252.i to i64     ; 3 uses
  %i.mu = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = add i64 %i.mv, 63
  %i.mx = and i64 %i.mw, -64                      ; 5 uses
  %i.my = inttoptr i64 %i.mx to ptr               ; 57 uses
  %i.mz = icmp slt i64 %indvars.iv561.i, %i.ld    ; 2 uses
  %or.cond313.i = select i1 %i.ap, i1 %i.mz, i1 false
  %i.na = load ptr, ptr %i.l, align 8
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = add i64 %i.nb, 63
  %i.nd = and i64 %i.nc, -64
  %i.ne = inttoptr i64 %i.nd to ptr
  %.0251.i = select i1 %or.cond313.i, ptr %i.ne, ptr %.0257519.i ; 4 uses
  br i1 %i.ju, label %.lr.ph518.i, label %._crit_edge.i

.lr.ph518.i:                                      ; preds = %bb.bc
  %i.nf = load ptr, ptr %i.h, align 8, !tbaa !110 ; 2 uses
  br i1 %min.iters.check653, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader, label %vector.ph654

vector.ph654:                                     ; preds = %.lr.ph518.i
  %broadcast.splatinsert656 = insertelement <2 x i32> poison, i32 %.0248521.i, i64 0
  %broadcast.splat657 = shufflevector <2 x i32> %broadcast.splatinsert656, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body662

vector.body662:                                   ; preds = %vector.body662, %vector.ph654
  %index663 = phi i64 [ 0, %vector.ph654 ], [ %index.next668, %vector.body662 ] ; 2 uses
  %vec.ind664 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph654 ], [ %vec.ind.next669, %vector.body662 ] ; 2 uses
  %i.ng = add <2 x i32> %broadcast.splat657, %vec.ind664
  %i.nh = srem <2 x i32> %i.ng, %broadcast.splat659
  %i.ni = mul nsw <2 x i32> %i.nh, %broadcast.splat661
  %i.nj = sext <2 x i32> %i.ni to <2 x i64>
  %wide.gep665 = getelementptr inbounds i8, ptr %i.nf, <2 x i64> %i.nj ; 2 uses
  %i.nk = ptrtoint <2 x ptr> %wide.gep665 to <2 x i64>
  %i.nl = add <2 x i64> %i.nk, splat (i64 63)
  %i.nm = and <2 x i64> %i.nl, splat (i64 -64)
  %i.nn = inttoptr <2 x i64> %i.nm to <2 x ptr>
  %wide.gep666 = getelementptr inbounds i8, <2 x ptr> %wide.gep665, i64 %i.jz
  %i.no = ptrtoint <2 x ptr> %wide.gep666 to <2 x i64>
  %i.np = add <2 x i64> %i.no, splat (i64 63)
  %i.nq = and <2 x i64> %i.np, splat (i64 -64)
  %i.nr = inttoptr <2 x i64> %i.nq to <2 x ptr>
  %wide.gep667 = getelementptr inbounds i8, <2 x ptr> %i.nr, i64 %i.ka
  %i.ns = select i1 %i.ap, <2 x ptr> %i.nn, <2 x ptr> %wide.gep667
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %index663
  store <2 x ptr> %i.ns, ptr %i.nt, align 8, !tbaa !118
  %index.next668 = add nuw i64 %index663, 2       ; 2 uses
  %vec.ind.next669 = add <2 x i32> %vec.ind664, splat (i32 2)
  %i.nu = icmp eq i64 %index.next668, %n.vec655
  br i1 %i.nu, label %middle.block670, label %vector.body662, !llvm.loop !293

middle.block670:                                  ; preds = %vector.body662
  br i1 %cmp.n671, label %._crit_edge.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader: ; preds = %.lr.ph518.i, %middle.block670
  %indvars.iv556.i.ph = phi i64 [ 0, %.lr.ph518.i ], [ %n.vec655, %middle.block670 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i

._crit_edge.i:                                    ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i, %middle.block670, %bb.bc
  br i1 %i.ap, label %bb.bd, label %bb.be

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i
  %indvars.iv556.i = phi i64 [ %indvars.iv.next557.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i ], [ %indvars.iv556.i.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader ] ; 3 uses
  %i.nv = trunc i64 %indvars.iv556.i to i32
  %i.nw = add i32 %.0248521.i, %i.nv
  %i.nx = srem i32 %i.nw, %.sroa.552.0.extract.trunc
  %i.ny = mul nsw i32 %i.nx, %i.dr
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds i8, ptr %i.nf, i64 %i.nz ; 2 uses
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = add i64 %i.ob, 63
  %i.od = and i64 %i.oc, -64
  %i.oe = inttoptr i64 %i.od to ptr
  %i.of = getelementptr inbounds i8, ptr %i.oa, i64 %i.jz
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = add i64 %i.og, 63
  %i.oi = and i64 %i.oh, -64
  %i.oj = inttoptr i64 %i.oi to ptr
  %i.ok = getelementptr inbounds i8, ptr %i.oj, i64 %i.ka
  %.0.i328.i = select i1 %i.ap, ptr %i.oe, ptr %i.ok
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %indvars.iv556.i
  store ptr %.0.i328.i, ptr %i.ol, align 8, !tbaa !118
  %indvars.iv.next557.i = add nuw nsw i64 %indvars.iv556.i, 1 ; 2 uses
  %exitcond560.not.i = icmp eq i64 %indvars.iv.next557.i, %.sroa.552.0.extract.shift
  br i1 %exitcond560.not.i, label %._crit_edge.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i, !llvm.loop !294

bb.bd:                                            ; preds = %._crit_edge.i
  br i1 %.not501.i, label %.preheader41.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bd
  br i1 %i.ef, label %.lr.ph.split.i.i.preheader, label %.lr.ph.split.us.preheader.i.i

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  br i1 %i.ls, label %.lr.ph.split.i.i.epil.preheader, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  call void @llvm.memset.p0.i64(ptr align 64 %i.my, i8 0, i64 %i.ke, i1 false), !tbaa !120
  br label %.preheader41.i.i

.preheader41.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.split.i.i
  br i1 %lcmp.mod785.not, label %.preheader41.i.i, label %.lr.ph.split.i.i.epil.preheader

.lr.ph.split.i.i.epil.preheader:                  ; preds = %.preheader41.i.i.loopexit.unr-lcssa, %.lr.ph.split.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.i.preheader ], [ %indvars.iv.next.i.i.3, %.preheader41.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod786)
  br label %.lr.ph.split.i.i.epil

.lr.ph.split.i.i.epil:                            ; preds = %.lr.ph.split.i.i.epil, %.lr.ph.split.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.split.i.i.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.split.i.i.epil.preheader ] ; 3 uses
  %epil.iter784 = phi i64 [ %epil.iter784.next, %.lr.ph.split.i.i.epil ], [ 0, %.lr.ph.split.i.i.epil.preheader ]
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i.i.epil
  %i.on = load i32, ptr %i.om, align 4, !tbaa !13
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.oo
  %i.oq = load float, ptr %i.op, align 4, !tbaa !120
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i.i.epil
  store float %i.oq, ptr %i.or, align 4, !tbaa !120
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter784.next = add i64 %epil.iter784, 1   ; 2 uses
  %epil.iter784.cmp.not = icmp eq i64 %epil.iter784.next, %xtraiter783
  br i1 %epil.iter784.cmp.not, label %.preheader41.i.i, label %.lr.ph.split.i.i.epil, !llvm.loop !295

.preheader41.i.i:                                 ; preds = %.preheader41.i.i.loopexit.unr-lcssa, %.lr.ph.split.i.i.epil, %.lr.ph.split.us.preheader.i.i, %bb.bd
  %.036.lcssa.i.i = phi i32 [ 0, %bb.bd ], [ %i.kc, %.lr.ph.split.us.preheader.i.i ], [ %i.kc, %.lr.ph.split.i.i.epil ], [ %i.kc, %.preheader41.i.i.loopexit.unr-lcssa ] ; 2 uses
  br i1 %i.lc, label %.lr.ph48.preheader.i.i, label %.preheader.i.i

.lr.ph48.preheader.i.i:                           ; preds = %.preheader41.i.i
  %i.os = zext i32 %.036.lcssa.i.i to i64         ; 5 uses
  br i1 %min.iters.check595, label %.lr.ph48.i.i.preheader, label %vector.memcheck591

vector.memcheck591:                               ; preds = %.lr.ph48.preheader.i.i
  %i.ot = shl nuw nsw i64 %i.os, 2
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  %i.abb = fpext float %i.aba to double
  %i.abc = fadd double %i.aay, %i.abb
  %indvars.iv.next240.i351.i.2 = or disjoint i64 %indvars.iv239.i348.i, 3
  %i.abd = mul nuw nsw i64 %indvars.iv.next240.i351.i.2, %i.ks
  %gep267.i350.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i346.i, i64 %i.abd
  %i.abe = load float, ptr %gep267.i350.i.3, align 4, !tbaa !120
  %i.abf = fpext float %i.abe to double
  %i.abg = fadd double %i.abc, %i.abf             ; 3 uses
  %indvars.iv.next240.i351.i.3 = add nuw nsw i64 %indvars.iv239.i348.i, 4 ; 2 uses
  %niter782.next.3 = add i64 %niter782, 4         ; 2 uses
  %niter782.ncmp.3 = icmp eq i64 %niter782.next.3, %unroll_iter781
  br i1 %niter782.ncmp.3, label %._crit_edge161.i339.i.loopexit.unr-lcssa, label %.lr.ph160.i347.i, !llvm.loop !312

._crit_edge161.i339.i.loopexit.unr-lcssa:         ; preds = %.lr.ph160.i347.i
  br i1 %lcmp.mod778.not, label %._crit_edge161.i339.i, label %.lr.ph160.i347.i.epil.preheader

.lr.ph160.i347.i.epil.preheader:                  ; preds = %._crit_edge161.i339.i.loopexit.unr-lcssa, %.lr.ph160.preheader.i345.i
  %indvars.iv239.i348.i.epil.init = phi i64 [ 0, %.lr.ph160.preheader.i345.i ], [ %indvars.iv.next240.i351.i.3, %._crit_edge161.i339.i.loopexit.unr-lcssa ]
  %.0105159.i349.i.epil.init = phi double [ 0.000000e+00, %.lr.ph160.preheader.i345.i ], [ %i.abg, %._crit_edge161.i339.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod780)
  br label %.lr.ph160.i347.i.epil

.lr.ph160.i347.i.epil:                            ; preds = %.lr.ph160.i347.i.epil, %.lr.ph160.i347.i.epil.preheader
  %indvars.iv239.i348.i.epil = phi i64 [ %indvars.iv239.i348.i.epil.init, %.lr.ph160.i347.i.epil.preheader ], [ %indvars.iv.next240.i351.i.epil, %.lr.ph160.i347.i.epil ] ; 2 uses
  %.0105159.i349.i.epil = phi double [ %.0105159.i349.i.epil.init, %.lr.ph160.i347.i.epil.preheader ], [ %i.abk, %.lr.ph160.i347.i.epil ]
  %epil.iter777 = phi i64 [ 0, %.lr.ph160.i347.i.epil.preheader ], [ %epil.iter777.next, %.lr.ph160.i347.i.epil ]
  %i.abh = mul nuw nsw i64 %indvars.iv239.i348.i.epil, %i.ks
  %gep267.i350.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i346.i, i64 %i.abh
  %i.abi = load float, ptr %gep267.i350.i.epil, align 4, !tbaa !120
  %i.abj = fpext float %i.abi to double
  %i.abk = fadd double %.0105159.i349.i.epil, %i.abj ; 2 uses
  %indvars.iv.next240.i351.i.epil = add nuw nsw i64 %indvars.iv239.i348.i.epil, 1
  %epil.iter777.next = add i64 %epil.iter777, 1   ; 2 uses
  %epil.iter777.cmp.not = icmp eq i64 %epil.iter777.next, %xtraiter776
  br i1 %epil.iter777.cmp.not, label %._crit_edge161.i339.i, label %.lr.ph160.i347.i.epil, !llvm.loop !320

._crit_edge161.i339.i:                            ; preds = %._crit_edge161.i339.i.loopexit.unr-lcssa, %.lr.ph160.i347.i.epil, %.preheader.i336.i
  %.0105.lcssa.i340.i = phi double [ 0.000000e+00, %.preheader.i336.i ], [ %i.abg, %._crit_edge161.i339.i.loopexit.unr-lcssa ], [ %i.abk, %.lr.ph160.i347.i.epil ] ; 2 uses
  %i.abl = getelementptr inbounds [8 x i8], ptr %i.aap, i64 %indvars.iv244.i338.i
  store double %.0105.lcssa.i340.i, ptr %i.abl, align 8, !tbaa !41
  %i.abm = getelementptr inbounds [8 x i8], ptr %.0.i322594.i, i64 %indvars.iv244.i338.i ; 2 uses
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !41
  %i.abo = fadd double %.0105.lcssa.i340.i, %i.abn ; 2 uses
  %i.abp = fmul double %i.ak, %i.abo
  %i.abq = fptrunc double %i.abp to float
  %i.abr = getelementptr inbounds [4 x i8], ptr %.0251.i, i64 %indvars.iv244.i338.i
  store float %i.abq, ptr %i.abr, align 4, !tbaa !120
  %i.abs = getelementptr inbounds [8 x i8], ptr %i.aaq, i64 %indvars.iv244.i338.i
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !41
  %i.abu = fsub double %i.abo, %i.abt
  store double %i.abu, ptr %i.abm, align 8, !tbaa !41
  %indvars.iv.next247.i341.i = add nuw nsw i64 %indvars.iv246.i337.i, 1 ; 2 uses
  %indvars.iv.next245.i342.i = add nsw i64 %indvars.iv244.i338.i, 1
  %exitcond252.not.i343.i = icmp eq i64 %indvars.iv.next247.i341.i, %wide.trip.count251.i334.i
  br i1 %exitcond252.not.i343.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, label %.preheader.i336.i, !llvm.loop !314

_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i: ; preds = %._crit_edge161.i339.i, %bb.bh, %_ZN2cv12cpu_baseline12_GLOBAL__N_121BlockSumBorderInplaceIdfEEvPKT0_S5_PS3_PKiiiiii.exit.i
  %i.abv = add nsw i32 %.0248521.i, 1
  %i.abw = srem i32 %i.abv, %.sroa.552.0.extract.trunc
  %spec.select.idx.i = select i1 %i.mz, i64 0, i64 %i.cl
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0257519.i, i64 %spec.select.idx.i
  %indvars.iv.next562.i = add nuw nsw i64 %indvars.iv561.i, 1 ; 2 uses
  %exitcond565.not.i = icmp eq i64 %indvars.iv.next562.i, %wide.trip.count564.i
  br i1 %exitcond565.not.i, label %._crit_edge523.i, label %bb.ax, !llvm.loop !321

.body.i:                                          ; preds = %bb.ax
  %i.abx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i363.i = icmp eq ptr %.sroa.0454.2.i, null
  br i1 %.not.i.i.i363.i, label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i, label %.body.thread487.i

.body.thread487.i:                                ; preds = %.body.i, %.body.thread477.i
  %.pn304.pn.pn484.i = phi { ptr, i32 } [ %i.sf, %.body.thread477.i ], [ %i.abx, %.body.i ]
  %i.aby = ptrtoint ptr %.sroa.0454.2.i to i64
  %i.abz = sub i64 %.sroa.15.2.i, %i.aby
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0454.2.i, i64 noundef %i.abz) #25
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i:            ; preds = %.body.thread487.i, %.body.i, %bb.as, %bb.ai, %bb.ag, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pn304.pn.pn476.i = phi { ptr, i32 } [ %.pn304.pn.pn484.i, %.body.thread487.i ], [ %i.abx, %.body.i ], [ %i.gl, %bb.as ], [ %i.ez, %bb.ag ], [ %i.ey, %bb.af ], [ %i.fn, %bb.ai ], [ %i.cc, %bb.r ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %17) #23
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i, %bb.q
  %.pn304.pn.pn.pn.i = phi { ptr, i32 } [ %.pn304.pn.pn476.i, %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i ], [ %i.cb, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body

_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit: ; preds = %._crit_edge523.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.dt

bb.bk:                                            ; preds = %bb.bl, %bb.h
  %i.aca = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bl:                                            ; preds = %bb.g
  %.sroa.7.0.extract.trunc.i72 = trunc nuw i64 %.sroa.5.0 to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %10, i1 noundef zeroext false)
          to label %.noexc317 unwind label %bb.bk

.noexc317:                                        ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %11, i1 noundef zeroext false)
          to label %bb.bm unwind label %bb.bu

bb.bm:                                            ; preds = %.noexc317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr null, ptr %i.c, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr null, ptr %i.d, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr null, ptr %i.e, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store ptr null, ptr %i.f, align 8, !tbaa !110
  %i.acb = load ptr, ptr %i.al, align 8, !tbaa !362
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.acd = load ptr, ptr %i.an, align 8, !tbaa !362
  %i.ace = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.0.0.copyload.i74 = load i32, ptr %4, align 4, !tbaa !13 ; 5 uses
  %.sroa.7.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.7.0.copyload.i76 = load i32, ptr %.sroa.7.0..sroa_idx.i75, align 4, !tbaa !13 ; 4 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !111 ; 6 uses
  %i.ach = icmp slt i32 %i.acg, 3
  br i1 %i.ach, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc.i79 unwind label %bb.bv

.noexc.i79:                                       ; preds = %bb.bn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.21, i32 noundef 109) #24
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %.noexc.i79
  unreachable

bb.bp:                                            ; preds = %.noexc.i79
  %i.aci = landingpad { ptr, i32 }
          cleanup
  %i.acj = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.acl = icmp eq ptr %i.acj, %i.ack
  br i1 %i.acl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80: ; preds = %bb.bp
  %i.acm = load i64, ptr %i.ack, align 8, !tbaa !20
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %i.acj, i64 noundef %i.acn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i81: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

bb.bq:                                            ; preds = %bb.bm
  %i.aco = icmp sgt i32 %i.acg, 0
  br i1 %i.aco, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.acq = icmp eq i32 %i.acg, 2
  %i.acr = zext i1 %i.acq to i64
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %i.acr
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !13
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.acu = icmp eq i32 %i.acg, 0
  %i.acv = zext i1 %i.acu to i32
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.acw = phi i32 [ %i.act, %bb.br ], [ %i.acv, %bb.bs ] ; 11 uses
  %i.acx = icmp eq i32 %i.acg, 2
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.acz = load i32, ptr %i.acy, align 4
  %i.ada = icmp sgt i32 %i.acg, -1
  %i.adb = zext i1 %i.ada to i32
  %i.adc = select i1 %i.acx, i32 %i.acz, i32 %i.adb ; 4 uses
  %i.add = load i32, ptr %5, align 4, !tbaa !113  ; 6 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !114 ; 7 uses
  %i.adg = icmp slt i32 %i.add, 0
  %i.adh = icmp slt i32 %i.adf, 0
  %or.cond.not498.i83 = select i1 %i.adg, i1 true, i1 %i.adh
  %i.adi = icmp slt i32 %i.acw, 0
  %or.cond5.not495.i84 = select i1 %or.cond.not498.i83, i1 true, i1 %i.adi
  %i.adj = icmp slt i32 %i.adc, 0
  %or.cond8.not493.i85 = select i1 %or.cond5.not495.i84, i1 true, i1 %i.adj
  %i.adk = add nuw nsw i32 %i.add, %i.acw
  %.not.i86 = icmp sgt i32 %i.adk, %.sroa.0.0.copyload.i74
  %or.cond310.i87 = select i1 %or.cond8.not493.i85, i1 true, i1 %.not.i86
  %i.adl = add nuw nsw i32 %i.adf, %i.adc
  %.not291.i88 = icmp sgt i32 %i.adl, %.sroa.7.0.copyload.i76
  %or.cond311.i89 = select i1 %or.cond310.i87, i1 true, i1 %.not291.i88
  br i1 %or.cond311.i89, label %bb.bw, label %bb.cb

bb.bu:                                            ; preds = %.noexc317
  %i.adm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.bv:                                            ; preds = %bb.bn
  %i.adn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib, ptr noundef nonnull @.str.1, i32 noundef 1400) #24
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %bb.bw
  %i.ado = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313

bb.ca:                                            ; preds = %bb.bx
  %i.adp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adq = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ads = icmp eq ptr %i.adq, %i.adr
  br i1 %i.ads, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315: ; preds = %bb.ca
  %i.adt = load i64, ptr %i.adr, align 8, !tbaa !20
  %i.adu = add i64 %i.adt, 1
  call void @_ZdlPvm(ptr noundef %i.adq, i64 noundef %i.adu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315, %bb.bz
  %.pn.i314 = phi { ptr, i32 } [ %i.ado, %bb.bz ], [ %i.adp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315 ], [ %i.adp, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

bb.cb:                                            ; preds = %bb.bt
  %i.adv = load i64, ptr %i.acc, align 8, !tbaa !39 ; 2 uses
  %i.adw = load i64, ptr %i.ace, align 8, !tbaa !39
  %i.adx = load i32, ptr %0, align 8, !tbaa !108
  %i.ady = and i32 %i.adx, 4095                   ; 4 uses
  %i.adz = lshr i32 %i.ady, 5
  %i.aea = add nuw nsw i32 %i.adz, 1              ; 19 uses
  %i.aeb = shl nuw nsw i32 %i.ady, 2
  %i.aec = and i32 %i.aeb, 124
  %i.aed = zext nneg i32 %i.aec to i64
  %i.aee = lshr i64 1275511473185297, %i.aed
  %i.aef = trunc i64 %i.aee to i32
  %i.aeg = and i32 %i.aef, 15
  %i.aeh = mul nuw nsw i32 %i.aeg, %i.aea         ; 4 uses
  %i.aei = lshr exact i32 %i.n, 2
  %i.aej = add nuw nsw i32 %i.aei, 8
  %i.aek = add nsw i32 %.sroa.047.0.extract.trunc, -1 ; 2 uses
  %.sroa.speculated423.i90 = call i32 @llvm.smax.i32(i32 %i.aek, i32 1)
  %i.ael = add i32 %.sroa.552.0.extract.trunc, -1 ; 2 uses
  %i.aem = add i32 %i.adc, %i.ael                 ; 4 uses
  %.sroa.speculated446.i91 = call i32 @llvm.smin.i32(i32 %i.add, i32 %.sroa.039.0) ; 2 uses
  %i.aen = sub i32 %.sroa.039.0, %i.add           ; 4 uses
  %.sroa.speculated392.i92 = call i32 @llvm.smax.i32(i32 %i.aen, i32 0) ; 6 uses
  %i.aeo = xor i32 %.sroa.039.0, -1
  %i.aep = add i32 %i.aeo, %.sroa.047.0.extract.trunc
  %i.aeq = sub i32 %i.aep, %.sroa.0.0.copyload.i74
  %i.aer = add i32 %i.aeq, %i.acw
  %i.aes = add i32 %i.aer, %i.add                 ; 4 uses
  %.sroa.speculated371.i93 = call i32 @llvm.smax.i32(i32 %i.aes, i32 0) ; 6 uses
  %i.aet = xor i32 %.sroa.7.0.extract.trunc.i72, -1
  %i.aeu = add i32 %i.aet, %.sroa.552.0.extract.trunc
  %i.aev = sub i32 %i.aeu, %.sroa.7.0.copyload.i76
  %i.aew = add i32 %i.aev, %i.adc
  %i.aex = add i32 %i.aew, %i.adf                 ; 3 uses
  %.sroa.speculated.i94 = call i32 @llvm.smax.i32(i32 %i.aex, i32 0) ; 3 uses
  %.sroa.speculated406.i95 = call i32 @llvm.umin.i32(i32 %i.acw, i32 %.sroa.speculated392.i92)
  %i.aey = mul nuw nsw i32 %i.aea, %.sroa.speculated406.i95 ; 4 uses
  %i.aez = add i32 %.sroa.047.0.extract.trunc, 63 ; 2 uses
  %i.afa = add i32 %i.acw, %i.aez
  %i.afb = add i32 %i.afa, %i.aey                 ; 2 uses
  %i.afc = mul i32 %i.afb, %i.aej                 ; 7 uses
  %i.afd = mul nsw i32 %i.aeh, %.sroa.speculated446.i91
  %i.afe = sext i32 %i.afd to i64
  %i.aff = sub nsw i64 0, %i.afe
  %i.afg = getelementptr inbounds i8, ptr %i.acb, i64 %i.aff ; 2 uses
  %i.afh = mul nuw nsw i32 %i.aea, %.sroa.speculated423.i90
  %i.afi = zext nneg i32 %i.afh to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIiEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.afi, i16 noundef zeroext 4)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.afj = add nsw i32 %.sroa.552.0.extract.trunc, 1
  %i.afk = mul i32 %i.afc, %i.afj
  %i.afl = sext i32 %i.afk to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.afl, i16 noundef zeroext 1)
          to label %bb.cd unwind label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.afm = mul i32 %i.aeh, %i.afb                 ; 3 uses
  %i.afn = sext i32 %i.afm to i64                 ; 4 uses
  invoke void @_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.afn, i16 noundef zeroext 1)
          to label %bb.ce unwind label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %10)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN2cv5utils10BufferArea8zeroFillEv(ptr noundef nonnull align 8 dereferenceable(41) %10)
          to label %bb.cg unwind label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.afo = icmp sgt i32 %i.aen, 0                 ; 3 uses
  %i.afp = icmp sgt i32 %i.aes, 0                 ; 3 uses
  %or.cond10.i96 = select i1 %i.afo, i1 true, i1 %i.afp
  %i.afq = icmp ne i32 %7, 0                      ; 7 uses
  %or.cond14.i97 = and i1 %i.afq, %or.cond10.i96
  br i1 %or.cond14.i97, label %bb.ch, label %.loopexit506.i98

bb.ch:                                            ; preds = %bb.cg
  %i.afr = sub nsw i32 %.sroa.speculated446.i91, %i.add ; 2 uses
  %i.afs = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  br i1 %i.afo, label %.lr.ph.preheader.i302, label %.preheader505.i292

.lr.ph.preheader.i302:                            ; preds = %bb.ch
  %i.aft = zext nneg i32 %i.aea to i64            ; 4 uses
  %wide.trip.count533.i303 = zext nneg i32 %i.aen to i64
  %min.iters.check = icmp samesign ult i32 %i.ady, 224
  %n.vec = and i64 %i.aft, 248                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aft
  br label %.lr.ph.i304

.preheader505.i292:                               ; preds = %.loopexit675, %bb.ch
  br i1 %i.afp, label %.lr.ph512.preheader.i293, label %.loopexit506.i98

.lr.ph512.preheader.i293:                         ; preds = %.preheader505.i292
  %i.afu = zext nneg i32 %.sroa.speculated392.i92 to i64
  %i.afv = zext nneg i32 %i.aea to i64            ; 4 uses
  %i.afw = zext nneg i32 %i.aes to i64
  %min.iters.check397 = icmp samesign ult i32 %i.ady, 224
  %n.vec399 = and i64 %i.afv, 248                 ; 3 uses
  %cmp.n409 = icmp eq i64 %n.vec399, %i.afv
  br label %.lr.ph512.i294

.lr.ph.i304:                                      ; preds = %.loopexit675, %.lr.ph.preheader.i302
  %indvars.iv530.i305 = phi i64 [ 0, %.lr.ph.preheader.i302 ], [ %indvars.iv.next531.i311, %.loopexit675 ] ; 3 uses
  %i.afx = trunc i64 %indvars.iv530.i305 to i32
  %i.afy = sub i32 %i.afx, %.sroa.speculated392.i92
  %i.afz = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.afy, i32 noundef %.sroa.0.0.copyload.i74, i32 noundef %7)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %.lr.ph.i304
  %i.aga = add nsw i32 %i.afz, %i.afr
  %i.agb = mul nsw i32 %i.aga, %i.aea             ; 2 uses
  %i.agc = mul nuw nsw i64 %indvars.iv530.i305, %i.aft
  %invariant.gep603.i306 = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.agc ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ci
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.agb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep603.i306, i64 %index ; 2 uses
  %i.age = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 16
  store <4 x i32> %i.age, ptr %i.agd, align 4, !tbaa !13
  store <4 x i32> %.reass, ptr %i.agf, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.agg = icmp eq i64 %index.next, %n.vec
  br i1 %i.agg, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit675, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ci, %middle.block
  %indvars.iv.i307.ph = phi i64 [ 0, %bb.ci ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i307 = phi i64 [ %indvars.iv.next.i309, %scalar.ph ], [ %indvars.iv.i307.ph, %scalar.ph.preheader ] ; 3 uses
  %gep604.i308 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep603.i306, i64 %indvars.iv.i307
  %i.agh = trunc i64 %indvars.iv.i307 to i32
  %i.agi = add i32 %i.agb, %i.agh
  store i32 %i.agi, ptr %gep604.i308, align 4, !tbaa !13
  %indvars.iv.next.i309 = add nuw nsw i64 %indvars.iv.i307, 1 ; 2 uses
  %exitcond.not.i310 = icmp eq i64 %indvars.iv.next.i309, %i.aft
  br i1 %exitcond.not.i310, label %.loopexit675, label %scalar.ph, !llvm.loop !323

bb.cj:                                            ; preds = %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i103, %bb.cz, %.invoke.i100, %bb.cx, %bb.cr, %bb.cq, %bb.co, %bb.cn, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %i.agj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

bb.ck:                                            ; preds = %.lr.ph.i304
  %i.agk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

.loopexit675:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next531.i311 = add nuw nsw i64 %indvars.iv530.i305, 1 ; 2 uses
  %exitcond534.not.i312 = icmp eq i64 %indvars.iv.next531.i311, %wide.trip.count533.i303
  br i1 %exitcond534.not.i312, label %.preheader505.i292, label %.lr.ph.i304, !llvm.loop !324

.lr.ph512.i294:                                   ; preds = %.loopexit674, %.lr.ph512.preheader.i293
  %indvars.iv540.i295 = phi i64 [ 0, %.lr.ph512.preheader.i293 ], [ %indvars.iv.next541.i301, %.loopexit674 ] ; 3 uses
  %i.agl = trunc i64 %indvars.iv540.i295 to i32
  %i.agm = add i32 %.sroa.0.0.copyload.i74, %i.agl
  %i.agn = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.agm, i32 noundef %.sroa.0.0.copyload.i74, i32 noundef %7)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %.lr.ph512.i294
  %i.ago = add nsw i32 %i.agn, %i.afr
  %i.agp = mul nsw i32 %i.ago, %i.aea             ; 2 uses
  %i.agq = add nuw nsw i64 %indvars.iv540.i295, %i.afu
  %i.agr = mul nuw nsw i64 %i.agq, %i.afv
  %invariant.gep605.i296 = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %i.agr ; 2 uses
  br i1 %min.iters.check397, label %scalar.ph396.preheader, label %vector.ph398

vector.ph398:                                     ; preds = %bb.cl
  %broadcast.splatinsert400 = insertelement <4 x i32> poison, i32 %i.agp, i64 0
  %broadcast.splat401 = shufflevector <4 x i32> %broadcast.splatinsert400, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op806 = add <4 x i32> splat (i32 4), %broadcast.splat401
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph398
  %index403 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body402 ] ; 2 uses
  %vec.ind404 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph398 ], [ %vec.ind.next407, %vector.body402 ] ; 3 uses
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep605.i296, i64 %index403 ; 2 uses
  %i.agt = add <4 x i32> %broadcast.splat401, %vec.ind404
  %.reass807 = add <4 x i32> %vec.ind404, %invariant.op806
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ags, i64 16
  store <4 x i32> %i.agt, ptr %i.ags, align 4, !tbaa !13
  store <4 x i32> %.reass807, ptr %i.agu, align 4, !tbaa !13
  %index.next406 = add nuw i64 %index403, 8       ; 2 uses
  %vec.ind.next407 = add <4 x i32> %vec.ind404, splat (i32 8)
  %i.agv = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.agv, label %middle.block408, label %vector.body402, !llvm.loop !325

middle.block408:                                  ; preds = %vector.body402
  br i1 %cmp.n409, label %.loopexit674, label %scalar.ph396.preheader

scalar.ph396.preheader:                           ; preds = %bb.cl, %middle.block408
  %indvars.iv535.i297.ph = phi i64 [ 0, %bb.cl ], [ %n.vec399, %middle.block408 ]
  br label %scalar.ph396

scalar.ph396:                                     ; preds = %scalar.ph396.preheader, %scalar.ph396
  %indvars.iv535.i297 = phi i64 [ %indvars.iv.next536.i299, %scalar.ph396 ], [ %indvars.iv535.i297.ph, %scalar.ph396.preheader ] ; 3 uses
  %gep606.i298 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep605.i296, i64 %indvars.iv535.i297
  %i.agw = trunc i64 %indvars.iv535.i297 to i32
  %i.agx = add i32 %i.agp, %i.agw
  store i32 %i.agx, ptr %gep606.i298, align 4, !tbaa !13
  %indvars.iv.next536.i299 = add nuw nsw i64 %indvars.iv535.i297, 1 ; 2 uses
  %exitcond539.not.i300 = icmp eq i64 %indvars.iv.next536.i299, %i.afv
  br i1 %exitcond539.not.i300, label %.loopexit674, label %scalar.ph396, !llvm.loop !326

bb.cm:                                            ; preds = %.lr.ph512.i294
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

.loopexit674:                                     ; preds = %scalar.ph396, %middle.block408
  %indvars.iv.next541.i301 = add nuw nsw i64 %indvars.iv540.i295, 1 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  %.not499.i102 = icmp eq i64 %i.aia, 0
  br i1 %.not499.i102, label %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108, label %bb.cy

bb.cy:                                            ; preds = %.loopexit.i101
  %i.aib = icmp ugt i64 %i.aia, 1152921504606846975
  br i1 %i.aib, label %bb.cz, label %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i103

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #24
          to label %.noexc366.i287 unwind label %bb.cj

.noexc366.i287:                                   ; preds = %bb.cz
  unreachable

_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i103: ; preds = %bb.cy
  %i.aic = shl nuw nsw i64 %i.aia, 3
  %i.aid = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aic) #26
          to label %.noexc367.i104 unwind label %bb.cj ; 4 uses

.noexc367.i104:                                   ; preds = %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i103
  store ptr null, ptr %i.aid, align 8, !tbaa !118
  %i.aie = add nsw i64 %i.aia, -1                 ; 2 uses
  %i.aif = icmp eq i64 %i.aie, 0
  br i1 %i.aif, label %.noexc321.i107, label %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i105

_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i105: ; preds = %.noexc367.i104
  %i.aig = getelementptr i8, ptr %i.aid, i64 8
  %.idx.i.i.i.i.i31.i.i106 = shl nuw nsw i64 %i.aie, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aig, i8 0, i64 %.idx.i.i.i.i.i31.i.i106, i1 false), !tbaa !118
  br label %.noexc321.i107

.noexc321.i107:                                   ; preds = %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i105, %.noexc367.i104
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %i.aid, i64 %i.aia
  %i.aii = ptrtoint ptr %i.aih to i64
  br label %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108

_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108:       ; preds = %.noexc321.i107, %.loopexit.i101
  %.sroa.15.2.i109 = phi i64 [ %i.aii, %.noexc321.i107 ], [ 0, %.loopexit.i101 ] ; 2 uses
  %.sroa.0454.2.i110 = phi ptr [ %i.aid, %.noexc321.i107 ], [ null, %.loopexit.i101 ] ; 17 uses
  %i.aij = load ptr, ptr %i.a, align 8, !tbaa !109 ; 11 uses
  %i.aik = load ptr, ptr %i.c, align 8, !tbaa !110 ; 2 uses
  %i.ail = shl i32 %i.aey, 3                      ; 2 uses
  br i1 %i.ap, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281: ; preds = %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108
  %i.aim = ptrtoint ptr %i.aik to i64
  %i.ain = add i64 %i.aim, 63
  %i.aio = and i64 %i.ain, -64
  %i.aip = inttoptr i64 %i.aio to ptr             ; 3 uses
  %i.aiq = load ptr, ptr %i.b, align 8, !tbaa !110 ; 4 uses
  %i.air = mul nsw i32 %i.afc, %.sroa.552.0.extract.trunc
  %i.ais = sext i32 %i.air to i64
  %i.ait = getelementptr inbounds i8, ptr %i.aiq, i64 %i.ais
  %i.aiu = ptrtoint ptr %i.ait to i64
  %i.aiv = add i64 %i.aiu, 63
  %i.aiw = and i64 %i.aiv, -64
  %i.aix = inttoptr i64 %i.aiw to ptr             ; 3 uses
  %i.aiy = icmp sgt i32 %.sroa.552.0.extract.trunc, 0
  br i1 %i.aiy, label %.lr.ph516.i282, label %.preheader.i112

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111: ; preds = %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108
  %i.aiz = sext i32 %i.ail to i64                 ; 4 uses
  %i.aja = getelementptr inbounds i8, ptr %i.aik, i64 %i.aiz
  %i.ajb = ptrtoint ptr %i.aja to i64
  %i.ajc = add i64 %i.ajb, 63
  %i.ajd = and i64 %i.ajc, -64
  %i.aje = inttoptr i64 %i.ajd to ptr
  %i.ajf = sub nsw i64 0, %i.aiz                  ; 5 uses
  %i.ajg = getelementptr inbounds i8, ptr %i.aje, i64 %i.ajf ; 3 uses
  %i.ajh = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %i.aji = mul nsw i32 %i.afc, %.sroa.552.0.extract.trunc
  %i.ajj = sext i32 %i.aji to i64
  %i.ajk = getelementptr inbounds i8, ptr %i.ajh, i64 %i.ajj
  %i.ajl = getelementptr inbounds i8, ptr %i.ajk, i64 %i.aiz
  %i.ajm = ptrtoint ptr %i.ajl to i64
  %i.ajn = add i64 %i.ajm, 63
  %i.ajo = and i64 %i.ajn, -64
  %i.ajp = inttoptr i64 %i.ajo to ptr
  %i.ajq = getelementptr inbounds i8, ptr %i.ajp, i64 %i.ajf ; 3 uses
  %i.ajr = icmp sgt i32 %.sroa.552.0.extract.trunc, 0
  br i1 %i.ajr, label %.lr.ph516.thread.i274, label %.preheader.i112

.lr.ph516.thread.i274:                            ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111
  %invariant.gep.i275 = getelementptr i8, ptr %i.ajh, i64 %i.aiz ; 3 uses
  %i.ajs = sext i32 %i.afc to i64                 ; 2 uses
  %min.iters.check412 = icmp ult i64 %2, 17179869184
  br i1 %min.iters.check412, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader, label %vector.ph413

vector.ph413:                                     ; preds = %.lr.ph516.thread.i274
  %n.vec414 = and i64 %.sroa.552.0.extract.shift, 2147483644 ; 3 uses
  %broadcast.splatinsert415 = insertelement <2 x i64> poison, i64 %i.ajs, i64 0
  %broadcast.splat416 = shufflevector <2 x i64> %broadcast.splatinsert415, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph413
  %index418 = phi i64 [ 0, %vector.ph413 ], [ %index.next424, %vector.body417 ] ; 2 uses
  %vec.ind419 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph413 ], [ %vec.ind.next425, %vector.body417 ] ; 3 uses
  %step.add420 = add nuw <2 x i64> %vec.ind419, splat (i64 2)
  %i.ajt = mul nsw <2 x i64> %vec.ind419, %broadcast.splat416
  %i.aju = mul nsw <2 x i64> %step.add420, %broadcast.splat416
  %wide.gep = getelementptr i8, ptr %invariant.gep.i275, <2 x i64> %i.ajt
  %wide.gep421 = getelementptr i8, ptr %invariant.gep.i275, <2 x i64> %i.aju
  %i.ajv = ptrtoint <2 x ptr> %wide.gep to <2 x i64>
  %i.ajw = ptrtoint <2 x ptr> %wide.gep421 to <2 x i64>
  %i.ajx = add <2 x i64> %i.ajv, splat (i64 63)
  %i.ajy = add <2 x i64> %i.ajw, splat (i64 63)
  %i.ajz = and <2 x i64> %i.ajx, splat (i64 -64)
  %i.aka = and <2 x i64> %i.ajy, splat (i64 -64)
  %i.akb = inttoptr <2 x i64> %i.ajz to <2 x ptr>
  %i.akc = inttoptr <2 x i64> %i.aka to <2 x ptr>
  %wide.gep422 = getelementptr inbounds i8, <2 x ptr> %i.akb, i64 %i.ajf
  %wide.gep423 = getelementptr inbounds i8, <2 x ptr> %i.akc, i64 %i.ajf
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %index418 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 16
  store <2 x ptr> %wide.gep422, ptr %i.akd, align 8, !tbaa !118
  store <2 x ptr> %wide.gep423, ptr %i.ake, align 8, !tbaa !118
  %index.next424 = add nuw i64 %index418, 4       ; 2 uses
  %vec.ind.next425 = add nuw <2 x i64> %vec.ind419, splat (i64 4)
  %i.akf = icmp eq i64 %index.next424, %n.vec414
  br i1 %i.akf, label %middle.block426, label %vector.body417, !llvm.loop !329

middle.block426:                                  ; preds = %vector.body417
  %cmp.n427 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec414
  br i1 %cmp.n427, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader: ; preds = %.lr.ph516.thread.i274, %middle.block426
  %indvars.iv546.i277.ph = phi i64 [ 0, %.lr.ph516.thread.i274 ], [ %n.vec414, %middle.block426 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276

.lr.ph516.i282:                                   ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281
  %i.akg = sext i32 %i.afc to i64                 ; 2 uses
  %min.iters.check430 = icmp ult i64 %2, 17179869184
  br i1 %min.iters.check430, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph516.i282
  %n.vec432 = and i64 %.sroa.552.0.extract.shift, 2147483644 ; 3 uses
  %broadcast.splatinsert433 = insertelement <2 x i64> poison, i64 %i.akg, i64 0
  %broadcast.splat434 = shufflevector <2 x i64> %broadcast.splatinsert433, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph431
  %index436 = phi i64 [ 0, %vector.ph431 ], [ %index.next441, %vector.body435 ] ; 2 uses
  %vec.ind437 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph431 ], [ %vec.ind.next442, %vector.body435 ] ; 3 uses
  %step.add438 = add nuw <2 x i64> %vec.ind437, splat (i64 2)
  %i.akh = mul nsw <2 x i64> %vec.ind437, %broadcast.splat434
  %i.aki = mul nsw <2 x i64> %step.add438, %broadcast.splat434
  %wide.gep439 = getelementptr inbounds i8, ptr %i.aiq, <2 x i64> %i.akh
  %wide.gep440 = getelementptr inbounds i8, ptr %i.aiq, <2 x i64> %i.aki
  %i.akj = ptrtoint <2 x ptr> %wide.gep439 to <2 x i64>
  %i.akk = ptrtoint <2 x ptr> %wide.gep440 to <2 x i64>
  %i.akl = add <2 x i64> %i.akj, splat (i64 63)
  %i.akm = add <2 x i64> %i.akk, splat (i64 63)
  %i.akn = and <2 x i64> %i.akl, splat (i64 -64)
  %i.ako = and <2 x i64> %i.akm, splat (i64 -64)
  %i.akp = inttoptr <2 x i64> %i.akn to <2 x ptr>
  %i.akq = inttoptr <2 x i64> %i.ako to <2 x ptr>
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %index436 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 16
  store <2 x ptr> %i.akp, ptr %i.akr, align 8, !tbaa !118
  store <2 x ptr> %i.akq, ptr %i.aks, align 8, !tbaa !118
  %index.next441 = add nuw i64 %index436, 4       ; 2 uses
  %vec.ind.next442 = add nuw <2 x i64> %vec.ind437, splat (i64 4)
  %i.akt = icmp eq i64 %index.next441, %n.vec432
  br i1 %i.akt, label %middle.block443, label %vector.body435, !llvm.loop !330

middle.block443:                                  ; preds = %vector.body435
  %cmp.n444 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec432
  br i1 %cmp.n444, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader: ; preds = %.lr.ph516.i282, %middle.block443
  %indvars.iv551.i284.ph = phi i64 [ 0, %.lr.ph516.i282 ], [ %n.vec432, %middle.block443 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283
  %indvars.iv551.i284 = phi i64 [ %indvars.iv.next552.i285, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ %indvars.iv551.i284.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader ] ; 3 uses
  %i.aku = mul nsw i64 %indvars.iv551.i284, %i.akg
  %i.akv = getelementptr inbounds i8, ptr %i.aiq, i64 %i.aku
  %i.akw = ptrtoint ptr %i.akv to i64
  %i.akx = add i64 %i.akw, 63
  %i.aky = and i64 %i.akx, -64
  %i.akz = inttoptr i64 %i.aky to ptr
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %indvars.iv551.i284
  store ptr %i.akz, ptr %i.ala, align 8, !tbaa !118
  %indvars.iv.next552.i285 = add nuw nsw i64 %indvars.iv551.i284, 1 ; 2 uses
  %exitcond555.not.i286 = icmp eq i64 %indvars.iv.next552.i285, %.sroa.552.0.extract.shift
  br i1 %exitcond555.not.i286, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283, !llvm.loop !331

.preheader.i112:                                  ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283, %middle.block426, %middle.block443, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281
  %i.alb = phi i1 [ false, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111 ], [ true, %middle.block443 ], [ false, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281 ], [ true, %middle.block426 ], [ true, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ true, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ]
  %.0.i322594.i113 = phi ptr [ %i.ajq, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111 ], [ %i.aix, %middle.block443 ], [ %i.aix, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281 ], [ %i.ajq, %middle.block426 ], [ %i.aix, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ %i.ajq, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ] ; 4 uses
  %.0.i470592.i114 = phi ptr [ %i.ajg, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111 ], [ %i.aip, %middle.block443 ], [ %i.aip, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281 ], [ %i.ajg, %middle.block426 ], [ %i.aip, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ %i.ajg, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ]
  %i.alc = icmp sgt i32 %i.aem, 0
  br i1 %i.alc, label %.lr.ph522.i117, label %._crit_edge523.i115

.lr.ph522.i117:                                   ; preds = %.preheader.i112
  %i.ald = sub i32 %i.adf, %.sroa.7.0.extract.trunc.i72
  %i.ale = sub nsw i32 %i.aem, %.sroa.speculated.i94 ; 2 uses
  %i.alf = sext i32 %i.ail to i64                 ; 3 uses
  %i.alg = sub nsw i64 0, %i.alf                  ; 2 uses
  %i.alh = mul i32 %i.aea, %i.acw                 ; 6 uses
  %i.ali = mul i32 %i.aea, %.sroa.speculated392.i92 ; 5 uses
  %i.alj = zext i32 %i.ali to i64                 ; 17 uses
  %i.alk = shl nuw nsw i64 %i.alj, 3              ; 2 uses
  %i.all = add nuw i32 %.sroa.speculated371.i93, %.sroa.speculated392.i92 ; 2 uses
  %.not116.i.i118 = icmp slt i32 %i.acw, %i.all
  %i.alm = mul i32 %i.aea, %i.aek                 ; 3 uses
  %i.aln = icmp sgt i32 %i.alm, 0
  %wide.trip.count214.i.i119 = zext i32 %i.alm to i64 ; 5 uses
  %i.alo = sub i32 %i.all, %i.acw                 ; 2 uses
  %i.alp = xor i32 %i.alo, -1
  %i.alq = add i32 %i.alp, %.sroa.047.0.extract.trunc ; 2 uses
  %i.alr = mul nsw i32 %i.aea, %i.alq             ; 2 uses
  %i.als = icmp sgt i32 %i.alr, 0
  %wide.trip.count224.i.i120 = zext nneg i32 %i.alr to i64
  %.sroa.speculated.i.i121 = call i32 @llvm.smin.i32(i32 %.sroa.speculated371.i93, i32 %i.alo) ; 2 uses
  %i.alt = mul i32 %i.aea, %.sroa.speculated.i.i121 ; 3 uses
  %.not525.i122 = icmp eq i32 %.sroa.speculated.i.i121, 0
  %wide.trip.count233.i.i123 = zext nneg i32 %i.alt to i64
  %invariant.gep264.i.i124 = getelementptr [4 x i8], ptr %i.aij, i64 %i.alj ; 15 uses
  %i.alu = shl nuw nsw i64 %wide.trip.count233.i.i123, 3
  %.not500.i125 = icmp eq i32 %i.acw, 0
  %i.alv = icmp sgt i32 %.sroa.047.0.extract.trunc, 0 ; 2 uses
  %i.alw = getelementptr [8 x i8], ptr %.sroa.0454.2.i110, i64 %i.aia
  %i.alx = getelementptr i8, ptr %i.alw, i64 -8   ; 2 uses
  %i.aly = zext nneg i32 %i.aea to i64            ; 10 uses
  %wide.trip.count251.i.i126 = zext nneg i32 %i.aey to i64
  %wide.trip.count242.i.i127 = and i64 %2, 4294967295
  %i.alz = sub nsw i64 0, %i.alj
  %i.ama = sub nsw i32 %i.acw, %.sroa.speculated371.i93
  %i.amb = mul i32 %i.aea, %i.ama
  %i.amc = xor i32 %.sroa.speculated371.i93, -1
  %i.amd = add i32 %i.amc, %.sroa.047.0.extract.trunc
  %i.ame = mul nsw i32 %i.aea, %i.amd
  %i.amf = mul i32 %i.aea, %.sroa.speculated371.i93
  %i.amg = zext i32 %i.amf to i64                 ; 6 uses
  %i.amh = shl nuw nsw i64 %i.amg, 3              ; 2 uses
  %.not501.i128 = icmp slt i32 %i.aen, 1
  %i.ami = icmp sgt i32 %i.alh, 0
  %wide.trip.count74.i.i129 = zext i32 %i.alh to i64 ; 5 uses
  %.not502.i130 = icmp slt i32 %i.aes, 1
  %i.amj = sext i32 %i.ael to i64
  %i.amk = sext i32 %i.ale to i64
  %wide.trip.count564.i131 = zext nneg i32 %i.aem to i64
  %i.aml = shl nuw nsw i64 %i.alj, 3              ; 2 uses
  %26 = add nsw i64 %i.alj, -1                    ; 2 uses
  %i.amm = zext i32 %i.alt to i64                 ; 2 uses
  %i.amn = add nsw i64 %wide.trip.count242.i.i127, -1 ; 2 uses
  %27 = add nsw i64 %i.amg, -1                    ; 2 uses
  %min.iters.check505 = icmp ult i64 %2, 8589934592
  %n.vec507 = and i64 %.sroa.552.0.extract.shift, 4294967294 ; 3 uses
  %broadcast.splatinsert510 = insertelement <2 x i32> poison, i32 %.sroa.552.0.extract.trunc, i64 0
  %broadcast.splat511 = shufflevector <2 x i32> %broadcast.splatinsert510, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert512 = insertelement <2 x i32> poison, i32 %i.afc, i64 0
  %broadcast.splat513 = shufflevector <2 x i32> %broadcast.splatinsert512, <2 x i32> poison, <2 x i32> zeroinitializer
  %cmp.n523 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec507
  %xtraiter = and i64 %i.alj, 3                   ; 3 uses
  %i.amo = icmp ult i64 %26, 3
  %unroll_iter = and i64 %i.alj, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod691 = icmp ne i64 %xtraiter, 0
  %min.iters.check492 = icmp ult i32 %i.alm, 4
  %n.vec494 = and i64 %wide.trip.count214.i.i119, 2147483644 ; 4 uses
  %i.amp = add nuw nsw i64 %n.vec494, %i.alj
  %cmp.n501 = icmp eq i64 %n.vec494, %wide.trip.count214.i.i119
  %xtraiter692 = and i64 %wide.trip.count214.i.i119, 3 ; 2 uses
  %lcmp.mod693.not = icmp eq i64 %xtraiter692, 0
  %i.amq = mul i32 %i.alq, %i.aea                 ; 2 uses
  %i.amr = zext i32 %i.amq to i64                 ; 4 uses
  %min.iters.check477 = icmp ult i32 %i.amq, 4
  %n.vec479 = and i64 %i.amr, 4294967292          ; 4 uses
  %i.ams = add nuw nsw i64 %n.vec479, %i.alj      ; 2 uses
  %cmp.n486 = icmp eq i64 %n.vec479, %i.amr
  %xtraiter694 = and i64 %i.amr, 3                ; 2 uses
  %lcmp.mod695.not = icmp eq i64 %xtraiter694, 0
  %xtraiter697 = and i64 %i.amm, 3                ; 3 uses
  %i.amt = add i32 %i.alt, -1
  %i.amu = icmp ult i32 %i.amt, 3
  %unroll_iter701 = and i64 %i.amm, 4294967292
  %lcmp.mod699.not = icmp eq i64 %xtraiter697, 0
  %lcmp.mod700 = icmp ne i64 %xtraiter697, 0
  %xtraiter703 = and i64 %2, 3                    ; 3 uses
  %i.amv = icmp ult i64 %i.amn, 3
  %unroll_iter708 = and i64 %2, 2147483644
  %lcmp.mod705.not = icmp eq i64 %xtraiter703, 0
  %lcmp.mod707 = icmp ne i64 %xtraiter703, 0
  %xtraiter713 = and i64 %i.amg, 3                ; 3 uses
  %i.amw = icmp ult i64 %27, 3
  %unroll_iter717 = and i64 %i.amg, 4294967292
  %lcmp.mod715.not = icmp eq i64 %xtraiter713, 0
  %lcmp.mod716 = icmp ne i64 %xtraiter713, 0
  %xtraiter719 = and i64 %2, 3                    ; 3 uses
  %i.amx = icmp ult i64 %i.amn, 3
  %unroll_iter724 = and i64 %2, 2147483644
  %lcmp.mod721.not = icmp eq i64 %xtraiter719, 0
  %lcmp.mod723 = icmp ne i64 %xtraiter719, 0
  %xtraiter726 = and i64 %i.alj, 3                ; 3 uses
  %i.amy = icmp ult i64 %26, 3
  %unroll_iter730 = and i64 %i.alj, 4294967292
  %lcmp.mod728.not = icmp eq i64 %xtraiter726, 0
  %lcmp.mod729 = icmp ne i64 %xtraiter726, 0
  %min.iters.check448 = icmp ult i32 %i.alh, 4
  %n.vec450 = and i64 %wide.trip.count74.i.i129, 2147483644 ; 4 uses
  %cmp.n456 = icmp eq i64 %n.vec450, %wide.trip.count74.i.i129
  %xtraiter732 = and i64 %wide.trip.count74.i.i129, 3 ; 2 uses
  %lcmp.mod733.not = icmp eq i64 %xtraiter732, 0
  %xtraiter735 = and i64 %i.amg, 3                ; 3 uses
  %i.amz = icmp ult i64 %27, 3
  %unroll_iter739 = and i64 %i.amg, 4294967292
  %lcmp.mod737.not = icmp eq i64 %xtraiter735, 0
  %lcmp.mod738 = icmp ne i64 %xtraiter735, 0
  br label %bb.db

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276
  %indvars.iv546.i277 = phi i64 [ %indvars.iv.next547.i279, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ], [ %indvars.iv546.i277.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader ] ; 3 uses
  %i.ana = mul nsw i64 %indvars.iv546.i277, %i.ajs
  %gep.i278 = getelementptr i8, ptr %invariant.gep.i275, i64 %i.ana
  %i.anb = ptrtoint ptr %gep.i278 to i64
  %i.anc = add i64 %i.anb, 63
  %i.and = and i64 %i.anc, -64
  %i.ane = inttoptr i64 %i.and to ptr
  %i.anf = getelementptr inbounds i8, ptr %i.ane, i64 %i.ajf
  %i.ang = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %indvars.iv546.i277
  store ptr %i.anf, ptr %i.ang, align 8, !tbaa !118
  %indvars.iv.next547.i279 = add nuw nsw i64 %indvars.iv546.i277, 1 ; 2 uses
  %exitcond550.not.i280 = icmp eq i64 %indvars.iv.next547.i279, %.sroa.552.0.extract.shift
  br i1 %exitcond550.not.i280, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276, !llvm.loop !332

._crit_edge523.i115:                              ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.preheader.i112
  %.not.i.i.i.i116 = icmp eq ptr %.sroa.0454.2.i110, null
  br i1 %.not.i.i.i.i116, label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIddEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit, label %bb.da

bb.da:                                            ; preds = %._crit_edge523.i115
  %i.anh = ptrtoint ptr %.sroa.0454.2.i110 to i64
  %i.ani = sub i64 %.sroa.15.2.i109, %i.anh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0454.2.i110, i64 noundef %i.ani) #25
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIddEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit

bb.db:                                            ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.lr.ph522.i117
  %indvars.iv561.i132 = phi i64 [ 0, %.lr.ph522.i117 ], [ %indvars.iv.next562.i151, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 4 uses
  %.0248521.i133 = phi i32 [ 0, %.lr.ph522.i117 ], [ %i.bcq, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 3 uses
  %.0257519.i134 = phi ptr [ %i.acd, %.lr.ph522.i117 ], [ %spec.select.i150, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 2 uses
  %i.anj = trunc nuw nsw i64 %indvars.iv561.i132 to i32 ; 2 uses
  %i.ank = add i32 %i.ald, %i.anj
  %i.anl = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ank, i32 noundef %.sroa.7.0.copyload.i76, i32 noundef %7)
          to label %bb.dc unwind label %.body.i135 ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.anm = icmp slt i32 %i.anl, 0
  br i1 %i.anm, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not296.i139 = icmp sge i64 %indvars.iv561.i132, %i.amk
  %or.cond.not.i140 = select i1 %i.ap, i1 %.not296.i139, i1 false
  br i1 %or.cond.not.i140, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ann = sub nsw i32 %i.anj, %i.ale
  %i.ano = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.anp = mul nsw i32 %i.ann, %i.afm
  %i.anq = sext i32 %i.anp to i64
  %i.anr = getelementptr inbounds i8, ptr %i.ano, i64 %i.anq
  %i.ans = ptrtoint ptr %i.anr to i64
  %i.ant = add i64 %i.ans, 63
  %i.anu = and i64 %i.ant, -64
  %i.anv = inttoptr i64 %i.anu to ptr
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.anw = sub nsw i32 %i.anl, %i.adf
  %i.anx = sext i32 %i.anw to i64
  %i.any = mul nsw i64 %i.adv, %i.anx
  %i.anz = getelementptr inbounds i8, ptr %i.afg, i64 %i.any
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dc
  %.0252.i141 = phi ptr [ %i.anz, %bb.df ], [ %.0.i470592.i114, %bb.dc ], [ %i.anv, %bb.de ] ; 46 uses
  %.0252.i141446 = ptrtoaddr ptr %.0252.i141 to i64 ; 3 uses
  %i.aoa = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aob = ptrtoint ptr %i.aoa to i64
  %i.aoc = add i64 %i.aob, 63
  %i.aod = and i64 %i.aoc, -64                    ; 5 uses
  %i.aoe = inttoptr i64 %i.aod to ptr             ; 57 uses
  %i.aof = icmp slt i64 %indvars.iv561.i132, %i.amj ; 2 uses
  %or.cond313.i142 = select i1 %i.ap, i1 %i.aof, i1 false
  %i.aog = load ptr, ptr %i.f, align 8
  %i.aoh = ptrtoint ptr %i.aog to i64
  %i.aoi = add i64 %i.aoh, 63
  %i.aoj = and i64 %i.aoi, -64
  %i.aok = inttoptr i64 %i.aoj to ptr
  %.0251.i143 = select i1 %or.cond313.i142, ptr %i.aok, ptr %.0257519.i134 ; 4 uses
  br i1 %i.alb, label %.lr.ph518.i268, label %._crit_edge.i144

.lr.ph518.i268:                                   ; preds = %bb.dg
  %i.aol = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  br i1 %min.iters.check505, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader, label %vector.ph506

vector.ph506:                                     ; preds = %.lr.ph518.i268
  %broadcast.splatinsert508 = insertelement <2 x i32> poison, i32 %.0248521.i133, i64 0
  %broadcast.splat509 = shufflevector <2 x i32> %broadcast.splatinsert508, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph506
  %index515 = phi i64 [ 0, %vector.ph506 ], [ %index.next520, %vector.body514 ] ; 2 uses
  %vec.ind516 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph506 ], [ %vec.ind.next521, %vector.body514 ] ; 2 uses
  %i.aom = add <2 x i32> %broadcast.splat509, %vec.ind516
  %i.aon = srem <2 x i32> %i.aom, %broadcast.splat511
  %i.aoo = mul nsw <2 x i32> %i.aon, %broadcast.splat513
  %i.aop = sext <2 x i32> %i.aoo to <2 x i64>
  %wide.gep517 = getelementptr inbounds i8, ptr %i.aol, <2 x i64> %i.aop ; 2 uses
  %i.aoq = ptrtoint <2 x ptr> %wide.gep517 to <2 x i64>
  %i.aor = add <2 x i64> %i.aoq, splat (i64 63)
  %i.aos = and <2 x i64> %i.aor, splat (i64 -64)
  %i.aot = inttoptr <2 x i64> %i.aos to <2 x ptr>
  %wide.gep518 = getelementptr inbounds i8, <2 x ptr> %wide.gep517, i64 %i.alf
  %i.aou = ptrtoint <2 x ptr> %wide.gep518 to <2 x i64>
  %i.aov = add <2 x i64> %i.aou, splat (i64 63)
  %i.aow = and <2 x i64> %i.aov, splat (i64 -64)
  %i.aox = inttoptr <2 x i64> %i.aow to <2 x ptr>
  %wide.gep519 = getelementptr inbounds i8, <2 x ptr> %i.aox, i64 %i.alg
  %i.aoy = select i1 %i.ap, <2 x ptr> %i.aot, <2 x ptr> %wide.gep519
  %i.aoz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %index515
  store <2 x ptr> %i.aoy, ptr %i.aoz, align 8, !tbaa !118
  %index.next520 = add nuw i64 %index515, 2       ; 2 uses
  %vec.ind.next521 = add <2 x i32> %vec.ind516, splat (i32 2)
  %i.apa = icmp eq i64 %index.next520, %n.vec507
  br i1 %i.apa, label %middle.block522, label %vector.body514, !llvm.loop !333

middle.block522:                                  ; preds = %vector.body514
  br i1 %cmp.n523, label %._crit_edge.i144, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader: ; preds = %.lr.ph518.i268, %middle.block522
  %indvars.iv556.i270.ph = phi i64 [ 0, %.lr.ph518.i268 ], [ %n.vec507, %middle.block522 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269

._crit_edge.i144:                                 ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269, %middle.block522, %bb.dg
  br i1 %i.ap, label %bb.dh, label %bb.di

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269
  %indvars.iv556.i270 = phi i64 [ %indvars.iv.next557.i272, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269 ], [ %indvars.iv556.i270.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader ] ; 3 uses
  %i.apb = trunc i64 %indvars.iv556.i270 to i32
  %i.apc = add i32 %.0248521.i133, %i.apb
  %i.apd = srem i32 %i.apc, %.sroa.552.0.extract.trunc
  %i.ape = mul nsw i32 %i.apd, %i.afc
  %i.apf = sext i32 %i.ape to i64
  %i.apg = getelementptr inbounds i8, ptr %i.aol, i64 %i.apf ; 2 uses
  %i.aph = ptrtoint ptr %i.apg to i64
  %i.api = add i64 %i.aph, 63
  %i.apj = and i64 %i.api, -64
  %i.apk = inttoptr i64 %i.apj to ptr
  %i.apl = getelementptr inbounds i8, ptr %i.apg, i64 %i.alf
  %i.apm = ptrtoint ptr %i.apl to i64
  %i.apn = add i64 %i.apm, 63
  %i.apo = and i64 %i.apn, -64
  %i.app = inttoptr i64 %i.apo to ptr
  %i.apq = getelementptr inbounds i8, ptr %i.app, i64 %i.alg
  %.0.i328.i271 = select i1 %i.ap, ptr %i.apk, ptr %i.apq
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %indvars.iv556.i270
  store ptr %.0.i328.i271, ptr %i.apr, align 8, !tbaa !118
  %indvars.iv.next557.i272 = add nuw nsw i64 %indvars.iv556.i270, 1 ; 2 uses
  %exitcond560.not.i273 = icmp eq i64 %indvars.iv.next557.i272, %.sroa.552.0.extract.shift
  br i1 %exitcond560.not.i273, label %._crit_edge.i144, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269, !llvm.loop !334

bb.dh:                                            ; preds = %._crit_edge.i144
  br i1 %.not501.i128, label %.preheader41.i.i242, label %.lr.ph.i.i240

.lr.ph.i.i240:                                    ; preds = %bb.dh
  br i1 %i.afq, label %.lr.ph.split.i.i264.preheader, label %.lr.ph.split.us.preheader.i.i241

.lr.ph.split.i.i264.preheader:                    ; preds = %.lr.ph.i.i240
  br i1 %i.amy, label %.lr.ph.split.i.i264.epil.preheader, label %.lr.ph.split.i.i264

.lr.ph.split.us.preheader.i.i241:                 ; preds = %.lr.ph.i.i240
  call void @llvm.memset.p0.i64(ptr align 64 %i.aoe, i8 0, i64 %i.alk, i1 false), !tbaa !41
  br label %.preheader41.i.i242

.preheader41.i.i242.loopexit.unr-lcssa:           ; preds = %.lr.ph.split.i.i264
  br i1 %lcmp.mod728.not, label %.preheader41.i.i242, label %.lr.ph.split.i.i264.epil.preheader

.lr.ph.split.i.i264.epil.preheader:               ; preds = %.preheader41.i.i242.loopexit.unr-lcssa, %.lr.ph.split.i.i264.preheader
  %indvars.iv.i.i265.epil.init = phi i64 [ 0, %.lr.ph.split.i.i264.preheader ], [ %indvars.iv.next.i.i266.3, %.preheader41.i.i242.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod729)
  br label %.lr.ph.split.i.i264.epil

.lr.ph.split.i.i264.epil:                         ; preds = %.lr.ph.split.i.i264.epil, %.lr.ph.split.i.i264.epil.preheader
  %indvars.iv.i.i265.epil = phi i64 [ %indvars.iv.next.i.i266.epil, %.lr.ph.split.i.i264.epil ], [ %indvars.iv.i.i265.epil.init, %.lr.ph.split.i.i264.epil.preheader ] ; 3 uses
  %epil.iter727 = phi i64 [ %epil.iter727.next, %.lr.ph.split.i.i264.epil ], [ 0, %.lr.ph.split.i.i264.epil.preheader ]
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %indvars.iv.i.i265.epil
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !13
  %i.apu = sext i32 %i.apt to i64
  %i.apv = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.apu
  %i.apw = load double, ptr %i.apv, align 8, !tbaa !41
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %indvars.iv.i.i265.epil
  store double %i.apw, ptr %i.apx, align 8, !tbaa !41
  %indvars.iv.next.i.i266.epil = add nuw nsw i64 %indvars.iv.i.i265.epil, 1
  %epil.iter727.next = add i64 %epil.iter727, 1   ; 2 uses
  %epil.iter727.cmp.not = icmp eq i64 %epil.iter727.next, %xtraiter726
  br i1 %epil.iter727.cmp.not, label %.preheader41.i.i242, label %.lr.ph.split.i.i264.epil, !llvm.loop !335

.preheader41.i.i242:                              ; preds = %.preheader41.i.i242.loopexit.unr-lcssa, %.lr.ph.split.i.i264.epil, %.lr.ph.split.us.preheader.i.i241, %bb.dh
  %.036.lcssa.i.i243 = phi i32 [ 0, %bb.dh ], [ %i.ali, %.lr.ph.split.us.preheader.i.i241 ], [ %i.ali, %.lr.ph.split.i.i264.epil ], [ %i.ali, %.preheader41.i.i242.loopexit.unr-lcssa ] ; 2 uses
  br i1 %i.ami, label %.lr.ph48.preheader.i.i256, label %.preheader.i.i244

.lr.ph48.preheader.i.i256:                        ; preds = %.preheader41.i.i242
  %i.apy = zext i32 %.036.lcssa.i.i243 to i64     ; 5 uses
  br i1 %min.iters.check448, label %.lr.ph48.i.i257.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph48.preheader.i.i256
  %i.apz = shl nuw nsw i64 %i.apy, 3
end_hunk_3
