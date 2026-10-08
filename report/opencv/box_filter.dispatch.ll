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
  %.sroa.047.0.extract.trunc = trunc i64 %2 to i32 ; 20 uses
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
  %i.bl = phi i32 [ %i.bi, %bb.n ], [ %i.bk, %bb.o ] ; 13 uses
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
  %i.cp = add nuw nsw i32 %i.co, 1                ; 21 uses
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
  %.sroa.speculated392.i = call i32 @llvm.smax.i32(i32 %i.dc, i32 0) ; 8 uses
  %i.dd = xor i32 %.sroa.039.0, -1
  %i.de = add i32 %i.dd, %.sroa.047.0.extract.trunc
  %i.df = sub i32 %i.de, %.sroa.0.0.copyload.i
  %i.dg = add i32 %i.df, %i.bl
  %i.dh = add i32 %i.dg, %i.bs                    ; 4 uses
  %.sroa.speculated371.i = call i32 @llvm.smax.i32(i32 %i.dh, i32 0) ; 10 uses
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
  %i.kc = mul i32 %i.cp, %.sroa.speculated392.i   ; 7 uses
  %i.kd = zext i32 %i.kc to i64                   ; 16 uses
  %i.ke = shl nuw nsw i64 %i.kd, 2                ; 2 uses
  %i.kf = add nuw nsw i32 %.sroa.speculated371.i, %.sroa.speculated392.i ; 2 uses
  %.not116.i.i = icmp slt i32 %i.bl, %i.kf
  %i.kg = mul i32 %i.cp, %i.cz                    ; 3 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  %wide.trip.count214.i.i = zext i32 %i.kg to i64 ; 5 uses
  %i.ki = sub nuw nsw i32 %i.kf, %i.bl            ; 2 uses
  %i.kj = xor i32 %i.ki, -1
  %i.kk = add i32 %i.kj, %.sroa.047.0.extract.trunc
  %i.kl = mul nsw i32 %i.cp, %i.kk                ; 2 uses
  %i.km = icmp sgt i32 %i.kl, 0
  %wide.trip.count224.i.i = zext nneg i32 %i.kl to i64
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated371.i, i32 %i.ki) ; 2 uses
  %i.kn = mul nuw nsw i32 %i.cp, %.sroa.speculated.i.i
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
  %i.kz = mul nuw nsw i32 %i.cp, %.sroa.speculated371.i
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl nuw nsw i64 %i.la, 2                ; 2 uses
  %.not501.i = icmp slt i32 %i.dc, 1
  %i.lc = icmp sgt i32 %i.kb, 0
  %wide.trip.count74.i.i = zext i32 %i.kb to i64  ; 5 uses
  %.not502.i = icmp slt i32 %i.dh, 1
  %i.ld = sext i32 %i.da to i64
  %i.le = sext i32 %i.jy to i64
  %wide.trip.count564.i = zext nneg i32 %i.db to i64
  %i.lf = shl nuw nsw i64 %i.kd, 2                ; 2 uses
  %24 = add nuw i32 %.sroa.speculated371.i, %.sroa.speculated392.i
  %25 = sub i32 %24, %i.bl
  %smin753 = call i32 @llvm.smin.i32(i32 %.sroa.speculated371.i, i32 %25)
  %26 = mul i32 %smin753, %i.cp                   ; 2 uses
  %27 = zext i32 %26 to i64                       ; 2 uses
  %i.lg = add nsw i64 %wide.trip.count242.i.i, -1 ; 2 uses
  %28 = mul i32 %.sroa.speculated371.i, %i.cp     ; 4 uses
  %29 = zext i32 %28 to i64                       ; 2 uses
  %30 = zext i32 %28 to i64                       ; 2 uses
  %min.iters.check653 = icmp ult i64 %2, 8589934592
  %n.vec655 = and i64 %.sroa.552.0.extract.shift, 4294967294 ; 3 uses
  %broadcast.splatinsert658 = insertelement <2 x i32> poison, i32 %.sroa.552.0.extract.trunc, i64 0
  %broadcast.splat659 = shufflevector <2 x i32> %broadcast.splatinsert658, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert660 = insertelement <2 x i32> poison, i32 %i.dr, i64 0
  %broadcast.splat661 = shufflevector <2 x i32> %broadcast.splatinsert660, <2 x i32> poison, <2 x i32> zeroinitializer
  %cmp.n671 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec655
  %xtraiter741 = and i64 %i.kd, 3                 ; 3 uses
  %31 = add i32 %i.kc, -1
  %i.lh = icmp ult i32 %31, 3
  %unroll_iter745 = and i64 %i.kd, 4294967292
  %lcmp.mod743.not = icmp eq i64 %xtraiter741, 0
  %lcmp.mod744 = icmp ne i64 %xtraiter741, 0
  %min.iters.check640 = icmp ult i32 %i.kg, 8
  %n.vec642 = and i64 %wide.trip.count214.i.i, 2147483640 ; 4 uses
  %i.li = add nuw nsw i64 %n.vec642, %i.kd
  %cmp.n649 = icmp eq i64 %n.vec642, %wide.trip.count214.i.i
  %xtraiter747 = and i64 %wide.trip.count214.i.i, 3 ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %32 = add i32 %i.bl, %.sroa.047.0.extract.trunc
  %33 = xor i32 %.sroa.speculated371.i, -1
  %34 = add i32 %32, %33
  %35 = sub i32 %34, %.sroa.speculated392.i
  %36 = mul i32 %35, %i.cp                        ; 2 uses
  %37 = zext i32 %36 to i64                       ; 4 uses
  %min.iters.check625 = icmp ult i32 %36, 8
  %n.vec627 = and i64 %37, 4294967288             ; 4 uses
  %i.lj = add nuw nsw i64 %n.vec627, %i.kd        ; 2 uses
  %cmp.n634 = icmp eq i64 %n.vec627, %37
  %xtraiter750 = and i64 %37, 3                   ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  %xtraiter754 = and i64 %27, 3                   ; 3 uses
  %i.lk = add i32 %26, -1
  %i.ll = icmp ult i32 %i.lk, 3
  %unroll_iter758 = and i64 %27, 4294967292
  %lcmp.mod756.not = icmp eq i64 %xtraiter754, 0
  %lcmp.mod757 = icmp ne i64 %xtraiter754, 0
  %xtraiter760 = and i64 %2, 3                    ; 3 uses
  %i.lm = icmp ult i64 %i.lg, 3
  %unroll_iter765 = and i64 %2, 2147483644
  %lcmp.mod762.not = icmp eq i64 %xtraiter760, 0
  %lcmp.mod764 = icmp ne i64 %xtraiter760, 0
  %xtraiter770 = and i64 %29, 3                   ; 3 uses
  %38 = add i32 %28, -1
  %i.ln = icmp ult i32 %38, 3
  %unroll_iter774 = and i64 %29, 4294967292
  %lcmp.mod772.not = icmp eq i64 %xtraiter770, 0
  %lcmp.mod773 = icmp ne i64 %xtraiter770, 0
  %xtraiter776 = and i64 %2, 3                    ; 3 uses
  %i.lo = icmp ult i64 %i.lg, 3
  %unroll_iter781 = and i64 %2, 2147483644
  %lcmp.mod778.not = icmp eq i64 %xtraiter776, 0
  %lcmp.mod780 = icmp ne i64 %xtraiter776, 0
  %xtraiter783 = and i64 %i.kd, 3                 ; 3 uses
  %39 = add i32 %i.kc, -1
  %i.lp = icmp ult i32 %39, 3
  %unroll_iter787 = and i64 %i.kd, 4294967292
  %lcmp.mod785.not = icmp eq i64 %xtraiter783, 0
  %lcmp.mod786 = icmp ne i64 %xtraiter783, 0
  %min.iters.check595 = icmp ult i32 %i.kb, 8
  %n.vec597 = and i64 %wide.trip.count74.i.i, 2147483640 ; 4 uses
  %cmp.n604 = icmp eq i64 %n.vec597, %wide.trip.count74.i.i
  %xtraiter789 = and i64 %wide.trip.count74.i.i, 3 ; 2 uses
  %lcmp.mod790.not = icmp eq i64 %xtraiter789, 0
  %xtraiter792 = and i64 %30, 3                   ; 3 uses
  %40 = add i32 %28, -1
  %i.lq = icmp ult i32 %40, 3
  %unroll_iter796 = and i64 %30, 4294967292
  %lcmp.mod794.not = icmp eq i64 %xtraiter792, 0
  %lcmp.mod795 = icmp ne i64 %xtraiter792, 0
  br label %bb.ax

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i
  %indvars.iv546.i = phi i64 [ %indvars.iv.next547.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i ], [ %indvars.iv546.i.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i.preheader ] ; 3 uses
  %i.lr = mul nsw i64 %indvars.iv546.i, %i.il
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.lr
  %i.ls = ptrtoint ptr %gep.i to i64
  %i.lt = add i64 %i.ls, 63
  %i.lu = and i64 %i.lt, -64
  %i.lv = inttoptr i64 %i.lu to ptr
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 %i.ii
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %indvars.iv546.i
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !118
  %indvars.iv.next547.i = add nuw nsw i64 %indvars.iv546.i, 1 ; 2 uses
  %exitcond550.not.i = icmp eq i64 %indvars.iv.next547.i, %.sroa.552.0.extract.shift
  br i1 %exitcond550.not.i, label %.preheader.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i, !llvm.loop !292

._crit_edge523.i:                                 ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.preheader.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0454.2.i, null
  br i1 %.not.i.i.i.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge523.i
  %i.ly = ptrtoint ptr %.sroa.0454.2.i to i64
  %i.lz = sub i64 %.sroa.15.2.i, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0454.2.i, i64 noundef %i.lz) #25
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIdfEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit

bb.ax:                                            ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.lr.ph522.i
  %indvars.iv561.i = phi i64 [ 0, %.lr.ph522.i ], [ %indvars.iv.next562.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 4 uses
  %.0248521.i = phi i32 [ 0, %.lr.ph522.i ], [ %i.abt, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 3 uses
  %.0257519.i = phi ptr [ %i.as, %.lr.ph522.i ], [ %spec.select.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 2 uses
  %i.ma = trunc nuw nsw i64 %indvars.iv561.i to i32 ; 2 uses
  %i.mb = add i32 %i.jx, %i.ma
  %i.mc = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.mb, i32 noundef %.sroa.7.0.copyload.i, i32 noundef %7)
          to label %bb.ay unwind label %.body.i   ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %i.md = icmp slt i32 %i.mc, 0
  br i1 %i.md, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not296.i = icmp sge i64 %indvars.iv561.i, %i.le
  %or.cond.not.i = select i1 %i.ap, i1 %.not296.i, i1 false
  br i1 %or.cond.not.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.me = sub nsw i32 %i.ma, %i.jy
  %i.mf = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.mg = mul nsw i32 %i.me, %i.eb
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds i8, ptr %i.mf, i64 %i.mh
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = add i64 %i.mj, 63
  %i.ml = and i64 %i.mk, -64
  %i.mm = inttoptr i64 %i.ml to ptr
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.mn = sub nsw i32 %i.mc, %i.bu
  %i.mo = sext i32 %i.mn to i64
  %i.mp = mul nsw i64 %i.ck, %i.mo
  %i.mq = getelementptr inbounds i8, ptr %i.dv, i64 %i.mp
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ay
  %.0252.i = phi ptr [ %i.mq, %bb.bb ], [ %.0.i470592.i, %bb.ay ], [ %i.mm, %bb.ba ] ; 46 uses
  %.0252.i592 = ptrtoaddr ptr %.0252.i to i64     ; 3 uses
  %i.mr = load ptr, ptr %i.j, align 8, !tbaa !110
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = add i64 %i.ms, 63
  %i.mu = and i64 %i.mt, -64                      ; 5 uses
  %i.mv = inttoptr i64 %i.mu to ptr               ; 57 uses
  %i.mw = icmp slt i64 %indvars.iv561.i, %i.ld    ; 2 uses
  %or.cond313.i = select i1 %i.ap, i1 %i.mw, i1 false
  %i.mx = load ptr, ptr %i.l, align 8
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = add i64 %i.my, 63
  %i.na = and i64 %i.mz, -64
  %i.nb = inttoptr i64 %i.na to ptr
  %.0251.i = select i1 %or.cond313.i, ptr %i.nb, ptr %.0257519.i ; 4 uses
  br i1 %i.ju, label %.lr.ph518.i, label %._crit_edge.i

.lr.ph518.i:                                      ; preds = %bb.bc
  %i.nc = load ptr, ptr %i.h, align 8, !tbaa !110 ; 2 uses
  br i1 %min.iters.check653, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader, label %vector.ph654

vector.ph654:                                     ; preds = %.lr.ph518.i
  %broadcast.splatinsert656 = insertelement <2 x i32> poison, i32 %.0248521.i, i64 0
  %broadcast.splat657 = shufflevector <2 x i32> %broadcast.splatinsert656, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body662

vector.body662:                                   ; preds = %vector.body662, %vector.ph654
  %index663 = phi i64 [ 0, %vector.ph654 ], [ %index.next668, %vector.body662 ] ; 2 uses
  %vec.ind664 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph654 ], [ %vec.ind.next669, %vector.body662 ] ; 2 uses
  %i.nd = add <2 x i32> %broadcast.splat657, %vec.ind664
  %i.ne = srem <2 x i32> %i.nd, %broadcast.splat659
  %i.nf = mul nsw <2 x i32> %i.ne, %broadcast.splat661
  %i.ng = sext <2 x i32> %i.nf to <2 x i64>
  %wide.gep665 = getelementptr inbounds i8, ptr %i.nc, <2 x i64> %i.ng ; 2 uses
  %i.nh = ptrtoint <2 x ptr> %wide.gep665 to <2 x i64>
  %i.ni = add <2 x i64> %i.nh, splat (i64 63)
  %i.nj = and <2 x i64> %i.ni, splat (i64 -64)
  %i.nk = inttoptr <2 x i64> %i.nj to <2 x ptr>
  %wide.gep666 = getelementptr inbounds i8, <2 x ptr> %wide.gep665, i64 %i.jz
  %i.nl = ptrtoint <2 x ptr> %wide.gep666 to <2 x i64>
  %i.nm = add <2 x i64> %i.nl, splat (i64 63)
  %i.nn = and <2 x i64> %i.nm, splat (i64 -64)
  %i.no = inttoptr <2 x i64> %i.nn to <2 x ptr>
  %wide.gep667 = getelementptr inbounds i8, <2 x ptr> %i.no, i64 %i.ka
  %i.np = select i1 %i.ap, <2 x ptr> %i.nk, <2 x ptr> %wide.gep667
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %index663
  store <2 x ptr> %i.np, ptr %i.nq, align 8, !tbaa !118
  %index.next668 = add nuw i64 %index663, 2       ; 2 uses
  %vec.ind.next669 = add <2 x i32> %vec.ind664, splat (i32 2)
  %i.nr = icmp eq i64 %index.next668, %n.vec655
  br i1 %i.nr, label %middle.block670, label %vector.body662, !llvm.loop !293

middle.block670:                                  ; preds = %vector.body662
  br i1 %cmp.n671, label %._crit_edge.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader: ; preds = %.lr.ph518.i, %middle.block670
  %indvars.iv556.i.ph = phi i64 [ 0, %.lr.ph518.i ], [ %n.vec655, %middle.block670 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i

._crit_edge.i:                                    ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i, %middle.block670, %bb.bc
  br i1 %i.ap, label %bb.bd, label %bb.be

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i
  %indvars.iv556.i = phi i64 [ %indvars.iv.next557.i, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i ], [ %indvars.iv556.i.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i.preheader ] ; 3 uses
  %i.ns = trunc i64 %indvars.iv556.i to i32
  %i.nt = add i32 %.0248521.i, %i.ns
  %i.nu = srem i32 %i.nt, %.sroa.552.0.extract.trunc
  %i.nv = mul nsw i32 %i.nu, %i.dr
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds i8, ptr %i.nc, i64 %i.nw ; 2 uses
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = add i64 %i.ny, 63
  %i.oa = and i64 %i.nz, -64
  %i.ob = inttoptr i64 %i.oa to ptr
  %i.oc = getelementptr inbounds i8, ptr %i.nx, i64 %i.jz
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = add i64 %i.od, 63
  %i.of = and i64 %i.oe, -64
  %i.og = inttoptr i64 %i.of to ptr
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 %i.ka
  %.0.i328.i = select i1 %i.ap, ptr %i.ob, ptr %i.oh
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i, i64 %indvars.iv556.i
  store ptr %.0.i328.i, ptr %i.oi, align 8, !tbaa !118
  %indvars.iv.next557.i = add nuw nsw i64 %indvars.iv556.i, 1 ; 2 uses
  %exitcond560.not.i = icmp eq i64 %indvars.iv.next557.i, %.sroa.552.0.extract.shift
  br i1 %exitcond560.not.i, label %._crit_edge.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i, !llvm.loop !294

bb.bd:                                            ; preds = %._crit_edge.i
  br i1 %.not501.i, label %.preheader41.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bd
  br i1 %i.ef, label %.lr.ph.split.i.i.preheader, label %.lr.ph.split.us.preheader.i.i

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  br i1 %i.lp, label %.lr.ph.split.i.i.epil.preheader, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  call void @llvm.memset.p0.i64(ptr align 64 %i.mv, i8 0, i64 %i.ke, i1 false), !tbaa !120
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
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i.i.epil
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !13
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.ol
  %i.on = load float, ptr %i.om, align 4, !tbaa !120
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.i.i.epil
  store float %i.on, ptr %i.oo, align 4, !tbaa !120
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter784.next = add i64 %epil.iter784, 1   ; 2 uses
  %epil.iter784.cmp.not = icmp eq i64 %epil.iter784.next, %xtraiter783
  br i1 %epil.iter784.cmp.not, label %.preheader41.i.i, label %.lr.ph.split.i.i.epil, !llvm.loop !295

.preheader41.i.i:                                 ; preds = %.preheader41.i.i.loopexit.unr-lcssa, %.lr.ph.split.i.i.epil, %.lr.ph.split.us.preheader.i.i, %bb.bd
  %.036.lcssa.i.i = phi i32 [ 0, %bb.bd ], [ %i.kc, %.lr.ph.split.us.preheader.i.i ], [ %i.kc, %.lr.ph.split.i.i.epil ], [ %i.kc, %.preheader41.i.i.loopexit.unr-lcssa ] ; 2 uses
  br i1 %i.lc, label %.lr.ph48.preheader.i.i, label %.preheader.i.i

.lr.ph48.preheader.i.i:                           ; preds = %.preheader41.i.i
  %i.op = zext i32 %.036.lcssa.i.i to i64         ; 5 uses
  br i1 %min.iters.check595, label %.lr.ph48.i.i.preheader, label %vector.memcheck591

vector.memcheck591:                               ; preds = %.lr.ph48.preheader.i.i
  %i.oq = shl nuw nsw i64 %i.op, 2
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  %indvars.iv.next193.i.i = or disjoint i64 %indvars.iv192.i.i, 1 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next193.i.i
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !13
  %i.sl = sext i32 %i.sk to i64
  %i.sm = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.sl
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !120
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.next193.i.i
  store float %i.sn, ptr %i.so, align 4, !tbaa !120
  %indvars.iv.next193.i.i.1 = or disjoint i64 %indvars.iv192.i.i, 2 ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next193.i.i.1
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !13
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.sr
  %i.st = load float, ptr %i.ss, align 4, !tbaa !120
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.next193.i.i.1
  store float %i.st, ptr %i.su, align 8, !tbaa !120
  %indvars.iv.next193.i.i.2 = or disjoint i64 %indvars.iv192.i.i, 3 ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next193.i.i.2
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !13
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.sx
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !120
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.next193.i.i.2
  store float %i.sz, ptr %i.ta, align 4, !tbaa !120
  %indvars.iv.next193.i.i.3 = add nuw nsw i64 %indvars.iv192.i.i, 4 ; 2 uses
  %niter746.next.3 = add i64 %niter746, 4         ; 2 uses
  %niter746.ncmp.3 = icmp eq i64 %niter746.next.3, %unroll_iter745
  br i1 %niter746.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph141.split.i.i, !llvm.loop !302

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph141.split.i.i
  br i1 %lcmp.mod743.not, label %._crit_edge.i.i, label %.lr.ph141.split.i.i.epil.preheader

.lr.ph141.split.i.i.epil.preheader:               ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph141.split.i.i.preheader
  %indvars.iv192.i.i.epil.init = phi i64 [ 0, %.lr.ph141.split.i.i.preheader ], [ %indvars.iv.next193.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod744)
  br label %.lr.ph141.split.i.i.epil

.lr.ph141.split.i.i.epil:                         ; preds = %.lr.ph141.split.i.i.epil, %.lr.ph141.split.i.i.epil.preheader
  %indvars.iv192.i.i.epil = phi i64 [ %indvars.iv.next193.i.i.epil, %.lr.ph141.split.i.i.epil ], [ %indvars.iv192.i.i.epil.init, %.lr.ph141.split.i.i.epil.preheader ] ; 3 uses
  %epil.iter742 = phi i64 [ %epil.iter742.next, %.lr.ph141.split.i.i.epil ], [ 0, %.lr.ph141.split.i.i.epil.preheader ]
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv192.i.i.epil
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !13
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.td
  %i.tf = load float, ptr %i.te, align 4, !tbaa !120
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv192.i.i.epil
  store float %i.tf, ptr %i.tg, align 4, !tbaa !120
  %indvars.iv.next193.i.i.epil = add nuw nsw i64 %indvars.iv192.i.i.epil, 1
  %epil.iter742.next = add i64 %epil.iter742, 1   ; 2 uses
  %epil.iter742.cmp.not = icmp eq i64 %epil.iter742.next, %xtraiter741
  br i1 %epil.iter742.cmp.not, label %._crit_edge.i.i, label %.lr.ph141.split.i.i.epil, !llvm.loop !303

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph141.split.i.i.epil, %.lr.ph141.split.us.preheader.i.i
  br i1 %.not116.i.i, label %bb.bf, label %.preheader128.i.i

.preheader128.i.i:                                ; preds = %._crit_edge.i.i
  br i1 %i.kh, label %.lr.ph147.i.i.preheader, label %.loopexit.i.i

.lr.ph147.i.i.preheader:                          ; preds = %.preheader128.i.i
  br i1 %min.iters.check640, label %.lr.ph147.i.i.preheader677, label %vector.memcheck637

vector.memcheck637:                               ; preds = %.lr.ph147.i.i.preheader
  %i.th = add i64 %i.lf, %i.mu
  %i.ti = sub i64 %.0252.i592, %i.th
  %diff.check638 = icmp ugt i64 %i.ti, -32
  br i1 %diff.check638, label %.lr.ph147.i.i.preheader677, label %vector.ph641

vector.ph641:                                     ; preds = %vector.memcheck637
  %invariant.gep816 = getelementptr [4 x i8], ptr %i.mv, i64 %i.kd
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph641
  %index644 = phi i64 [ 0, %vector.ph641 ], [ %index.next647, %vector.body643 ] ; 3 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %index644 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %wide.load645 = load <4 x float>, ptr %i.tj, align 4, !tbaa !120
  %wide.load646 = load <4 x float>, ptr %i.tk, align 4, !tbaa !120
  %gep817 = getelementptr [4 x i8], ptr %invariant.gep816, i64 %index644 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %gep817, i64 16
  store <4 x float> %wide.load645, ptr %gep817, align 4, !tbaa !120
  store <4 x float> %wide.load646, ptr %i.tl, align 4, !tbaa !120
  %index.next647 = add nuw i64 %index644, 8       ; 2 uses
  %i.tm = icmp eq i64 %index.next647, %n.vec642
  br i1 %i.tm, label %middle.block648, label %vector.body643, !llvm.loop !304

middle.block648:                                  ; preds = %vector.body643
  br i1 %cmp.n649, label %.loopexit.i.i, label %.lr.ph147.i.i.preheader677

.lr.ph147.i.i.preheader677:                       ; preds = %vector.memcheck637, %.lr.ph147.i.i.preheader, %middle.block648
  %indvars.iv209.i.i.ph = phi i64 [ %i.kd, %vector.memcheck637 ], [ %i.kd, %.lr.ph147.i.i.preheader ], [ %i.li, %middle.block648 ] ; 2 uses
  %indvars.iv207.i.i.ph = phi i64 [ 0, %vector.memcheck637 ], [ 0, %.lr.ph147.i.i.preheader ], [ %n.vec642, %middle.block648 ] ; 3 uses
  br i1 %lcmp.mod748.not, label %.lr.ph147.i.i.prol.loopexit, label %.lr.ph147.i.i.prol

.lr.ph147.i.i.prol:                               ; preds = %.lr.ph147.i.i.preheader677, %.lr.ph147.i.i.prol
  %indvars.iv209.i.i.prol = phi i64 [ %indvars.iv.next210.i.i.prol, %.lr.ph147.i.i.prol ], [ %indvars.iv209.i.i.ph, %.lr.ph147.i.i.preheader677 ] ; 2 uses
  %indvars.iv207.i.i.prol = phi i64 [ %indvars.iv.next208.i.i.prol, %.lr.ph147.i.i.prol ], [ %indvars.iv207.i.i.ph, %.lr.ph147.i.i.preheader677 ] ; 2 uses
  %prol.iter749 = phi i64 [ %prol.iter749.next, %.lr.ph147.i.i.prol ], [ 0, %.lr.ph147.i.i.preheader677 ]
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv207.i.i.prol
  %i.to = load float, ptr %i.tn, align 4, !tbaa !120
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv209.i.i.prol
  store float %i.to, ptr %i.tp, align 4, !tbaa !120
  %indvars.iv.next208.i.i.prol = add nuw nsw i64 %indvars.iv207.i.i.prol, 1 ; 2 uses
  %indvars.iv.next210.i.i.prol = add nuw nsw i64 %indvars.iv209.i.i.prol, 1 ; 2 uses
  %prol.iter749.next = add i64 %prol.iter749, 1   ; 2 uses
  %prol.iter749.cmp.not = icmp eq i64 %prol.iter749.next, %xtraiter747
  br i1 %prol.iter749.cmp.not, label %.lr.ph147.i.i.prol.loopexit, label %.lr.ph147.i.i.prol, !llvm.loop !305

.lr.ph147.i.i.prol.loopexit:                      ; preds = %.lr.ph147.i.i.prol, %.lr.ph147.i.i.preheader677
  %indvars.iv209.i.i.unr = phi i64 [ %indvars.iv209.i.i.ph, %.lr.ph147.i.i.preheader677 ], [ %indvars.iv.next210.i.i.prol, %.lr.ph147.i.i.prol ]
  %indvars.iv207.i.i.unr = phi i64 [ %indvars.iv207.i.i.ph, %.lr.ph147.i.i.preheader677 ], [ %indvars.iv.next208.i.i.prol, %.lr.ph147.i.i.prol ]
  %i.tq = sub nsw i64 %indvars.iv207.i.i.ph, %wide.trip.count214.i.i
  %i.tr = icmp ugt i64 %i.tq, -4
  br i1 %i.tr, label %.loopexit.i.i, label %.lr.ph147.i.i

.lr.ph147.i.i:                                    ; preds = %.lr.ph147.i.i.prol.loopexit, %.lr.ph147.i.i
  %indvars.iv209.i.i = phi i64 [ %indvars.iv.next210.i.i.3, %.lr.ph147.i.i ], [ %indvars.iv209.i.i.unr, %.lr.ph147.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv207.i.i = phi i64 [ %indvars.iv.next208.i.i.3, %.lr.ph147.i.i ], [ %indvars.iv207.i.i.unr, %.lr.ph147.i.i.prol.loopexit ] ; 5 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv207.i.i
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !120
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv209.i.i
  store float %i.tt, ptr %i.tu, align 4, !tbaa !120
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv207.i.i
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !120
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv209.i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 4
  store float %i.tx, ptr %i.tz, align 4, !tbaa !120
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv207.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !120
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv209.i.i
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  store float %i.uc, ptr %i.ue, align 4, !tbaa !120
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv207.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 12
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !120
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv209.i.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 12
  store float %i.uh, ptr %i.uj, align 4, !tbaa !120
  %indvars.iv.next208.i.i.3 = add nuw nsw i64 %indvars.iv207.i.i, 4 ; 2 uses
  %indvars.iv.next210.i.i.3 = add nuw nsw i64 %indvars.iv209.i.i, 4
  %exitcond215.not.i.i.3 = icmp eq i64 %indvars.iv.next208.i.i.3, %wide.trip.count214.i.i
  br i1 %exitcond215.not.i.i.3, label %.loopexit.i.i, label %.lr.ph147.i.i, !llvm.loop !306

bb.bf:                                            ; preds = %._crit_edge.i.i
  br i1 %i.km, label %.lr.ph151.i.i.preheader, label %._crit_edge152.i.i

.lr.ph151.i.i.preheader:                          ; preds = %bb.bf
  br i1 %min.iters.check625, label %.lr.ph151.i.i.preheader676, label %vector.memcheck622

vector.memcheck622:                               ; preds = %.lr.ph151.i.i.preheader
  %i.uk = add i64 %i.lf, %i.mu
  %i.ul = sub i64 %.0252.i592, %i.uk
  %diff.check623 = icmp ugt i64 %i.ul, -32
  br i1 %diff.check623, label %.lr.ph151.i.i.preheader676, label %vector.ph626

vector.ph626:                                     ; preds = %vector.memcheck622
  %invariant.gep818 = getelementptr [4 x i8], ptr %i.mv, i64 %i.kd
  br label %vector.body628

vector.body628:                                   ; preds = %vector.body628, %vector.ph626
  %index629 = phi i64 [ 0, %vector.ph626 ], [ %index.next632, %vector.body628 ] ; 3 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %index629 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %wide.load630 = load <4 x float>, ptr %i.um, align 4, !tbaa !120
  %wide.load631 = load <4 x float>, ptr %i.un, align 4, !tbaa !120
  %gep819 = getelementptr [4 x i8], ptr %invariant.gep818, i64 %index629 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %gep819, i64 16
  store <4 x float> %wide.load630, ptr %gep819, align 4, !tbaa !120
  store <4 x float> %wide.load631, ptr %i.uo, align 4, !tbaa !120
  %index.next632 = add nuw i64 %index629, 8       ; 2 uses
  %i.up = icmp eq i64 %index.next632, %n.vec627
  br i1 %i.up, label %middle.block633, label %vector.body628, !llvm.loop !307

middle.block633:                                  ; preds = %vector.body628
  br i1 %cmp.n634, label %._crit_edge152.loopexit.i.i, label %.lr.ph151.i.i.preheader676

.lr.ph151.i.i.preheader676:                       ; preds = %vector.memcheck622, %.lr.ph151.i.i.preheader, %middle.block633
  %indvars.iv219.i.i.ph = phi i64 [ %i.kd, %vector.memcheck622 ], [ %i.kd, %.lr.ph151.i.i.preheader ], [ %i.lj, %middle.block633 ] ; 2 uses
  %indvars.iv217.i.i.ph = phi i64 [ 0, %vector.memcheck622 ], [ 0, %.lr.ph151.i.i.preheader ], [ %n.vec627, %middle.block633 ] ; 3 uses
  br i1 %lcmp.mod751.not, label %.lr.ph151.i.i.prol.loopexit, label %.lr.ph151.i.i.prol

.lr.ph151.i.i.prol:                               ; preds = %.lr.ph151.i.i.preheader676, %.lr.ph151.i.i.prol
  %indvars.iv219.i.i.prol = phi i64 [ %indvars.iv.next220.i.i.prol, %.lr.ph151.i.i.prol ], [ %indvars.iv219.i.i.ph, %.lr.ph151.i.i.preheader676 ] ; 2 uses
  %indvars.iv217.i.i.prol = phi i64 [ %indvars.iv.next218.i.i.prol, %.lr.ph151.i.i.prol ], [ %indvars.iv217.i.i.ph, %.lr.ph151.i.i.preheader676 ] ; 2 uses
  %prol.iter752 = phi i64 [ %prol.iter752.next, %.lr.ph151.i.i.prol ], [ 0, %.lr.ph151.i.i.preheader676 ]
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv217.i.i.prol
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !120
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv219.i.i.prol
  store float %i.ur, ptr %i.us, align 4, !tbaa !120
  %indvars.iv.next218.i.i.prol = add nuw nsw i64 %indvars.iv217.i.i.prol, 1 ; 2 uses
  %indvars.iv.next220.i.i.prol = add nuw nsw i64 %indvars.iv219.i.i.prol, 1 ; 3 uses
  %prol.iter752.next = add i64 %prol.iter752, 1   ; 2 uses
  %prol.iter752.cmp.not = icmp eq i64 %prol.iter752.next, %xtraiter750
  br i1 %prol.iter752.cmp.not, label %.lr.ph151.i.i.prol.loopexit, label %.lr.ph151.i.i.prol, !llvm.loop !308

.lr.ph151.i.i.prol.loopexit:                      ; preds = %.lr.ph151.i.i.prol, %.lr.ph151.i.i.preheader676
  %indvars.iv.next220.i.i.lcssa679.unr = phi i64 [ poison, %.lr.ph151.i.i.preheader676 ], [ %indvars.iv.next220.i.i.prol, %.lr.ph151.i.i.prol ]
  %indvars.iv219.i.i.unr = phi i64 [ %indvars.iv219.i.i.ph, %.lr.ph151.i.i.preheader676 ], [ %indvars.iv.next220.i.i.prol, %.lr.ph151.i.i.prol ]
  %indvars.iv217.i.i.unr = phi i64 [ %indvars.iv217.i.i.ph, %.lr.ph151.i.i.preheader676 ], [ %indvars.iv.next218.i.i.prol, %.lr.ph151.i.i.prol ]
  %i.ut = sub nsw i64 %indvars.iv217.i.i.ph, %37
  %i.uu = icmp ugt i64 %i.ut, -4
  br i1 %i.uu, label %._crit_edge152.loopexit.i.i, label %.lr.ph151.i.i

.lr.ph151.i.i:                                    ; preds = %.lr.ph151.i.i.prol.loopexit, %.lr.ph151.i.i
  %indvars.iv219.i.i = phi i64 [ %indvars.iv.next220.i.i.3, %.lr.ph151.i.i ], [ %indvars.iv219.i.i.unr, %.lr.ph151.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv217.i.i = phi i64 [ %indvars.iv.next218.i.i.3, %.lr.ph151.i.i ], [ %indvars.iv217.i.i.unr, %.lr.ph151.i.i.prol.loopexit ] ; 5 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv217.i.i
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !120
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv219.i.i
  store float %i.uw, ptr %i.ux, align 4, !tbaa !120
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv217.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 4
  %i.va = load float, ptr %i.uz, align 4, !tbaa !120
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv219.i.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  store float %i.va, ptr %i.vc, align 4, !tbaa !120
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv217.i.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !120
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv219.i.i
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  store float %i.vf, ptr %i.vh, align 4, !tbaa !120
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.0252.i, i64 %indvars.iv217.i.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 12
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !120
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv219.i.i
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 12
  store float %i.vk, ptr %i.vm, align 4, !tbaa !120
  %indvars.iv.next218.i.i.3 = add nuw nsw i64 %indvars.iv217.i.i, 4 ; 2 uses
  %indvars.iv.next220.i.i.3 = add nuw nsw i64 %indvars.iv219.i.i, 4 ; 2 uses
  %exitcond225.not.i.i.3 = icmp eq i64 %indvars.iv.next218.i.i.3, %wide.trip.count224.i.i
  br i1 %exitcond225.not.i.i.3, label %._crit_edge152.loopexit.i.i, label %.lr.ph151.i.i, !llvm.loop !309

._crit_edge152.loopexit.i.i:                      ; preds = %.lr.ph151.i.i.prol.loopexit, %.lr.ph151.i.i, %middle.block633
  %indvars.iv.next220.i.i.lcssa = phi i64 [ %i.lj, %middle.block633 ], [ %indvars.iv.next220.i.i.lcssa679.unr, %.lr.ph151.i.i.prol.loopexit ], [ %indvars.iv.next220.i.i.3, %.lr.ph151.i.i ]
  %i.vn = trunc nuw i64 %indvars.iv.next220.i.i.lcssa to i32
  br label %._crit_edge152.i.i

._crit_edge152.i.i:                               ; preds = %._crit_edge152.loopexit.i.i, %bb.bf
  %.2109.lcssa.i.i = phi i32 [ %i.kc, %bb.bf ], [ %i.vn, %._crit_edge152.loopexit.i.i ]
  br i1 %.not525.i, label %.loopexit.i.i, label %.lr.ph157.i.i

.lr.ph157.i.i:                                    ; preds = %._crit_edge152.i.i
  %i.vo = zext i32 %.2109.lcssa.i.i to i64        ; 3 uses
  br i1 %i.ef, label %.lr.ph157.split.i.i.preheader, label %.lr.ph157.split.us.preheader.i.i

.lr.ph157.split.i.i.preheader:                    ; preds = %.lr.ph157.i.i
  br i1 %i.ll, label %.lr.ph157.split.i.i.epil.preheader, label %.lr.ph157.split.i.i

.lr.ph157.split.us.preheader.i.i:                 ; preds = %.lr.ph157.i.i
  %.pn.i.i = shl nuw nsw i64 %i.vo, 2
  %scevgep.sink.i.i = getelementptr i8, ptr %i.mv, i64 %.pn.i.i
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.sink.i.i, i8 0, i64 %i.ko, i1 false), !tbaa !120
  br label %.loopexit.i.i

.lr.ph157.split.i.i:                              ; preds = %.lr.ph157.split.i.i.preheader, %.lr.ph157.split.i.i
  %indvars.iv228.i.i = phi i64 [ %indvars.iv.next229.i.i.3, %.lr.ph157.split.i.i ], [ %i.vo, %.lr.ph157.split.i.i.preheader ] ; 5 uses
  %indvars.iv226.i.i = phi i64 [ %indvars.iv.next227.i.i.3, %.lr.ph157.split.i.i ], [ 0, %.lr.ph157.split.i.i.preheader ] ; 5 uses
  %niter759 = phi i64 [ %niter759.next.3, %.lr.ph157.split.i.i ], [ 0, %.lr.ph157.split.i.i.preheader ]
  %gep265.i.i = getelementptr [4 x i8], ptr %invariant.gep264.i.i, i64 %indvars.iv226.i.i
  %i.vp = load i32, ptr %gep265.i.i, align 4, !tbaa !13
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.vq
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !120
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv228.i.i
  store float %i.vs, ptr %i.vt, align 4, !tbaa !120
  %i.vu = getelementptr [4 x i8], ptr %invariant.gep264.i.i, i64 %indvars.iv226.i.i
  %gep265.i.i.1 = getelementptr i8, ptr %i.vu, i64 4
  %i.vv = load i32, ptr %gep265.i.i.1, align 4, !tbaa !13
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.vw
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !120
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv228.i.i
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  store float %i.vy, ptr %i.wa, align 4, !tbaa !120
  %i.wb = getelementptr [4 x i8], ptr %invariant.gep264.i.i, i64 %indvars.iv226.i.i
  %gep265.i.i.2 = getelementptr i8, ptr %i.wb, i64 8
  %i.wc = load i32, ptr %gep265.i.i.2, align 4, !tbaa !13
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.wd
  %i.wf = load float, ptr %i.we, align 4, !tbaa !120
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv228.i.i
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  store float %i.wf, ptr %i.wh, align 4, !tbaa !120
  %i.wi = getelementptr [4 x i8], ptr %invariant.gep264.i.i, i64 %indvars.iv226.i.i
  %gep265.i.i.3 = getelementptr i8, ptr %i.wi, i64 12
  %i.wj = load i32, ptr %gep265.i.i.3, align 4, !tbaa !13
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.wk
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !120
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv228.i.i
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 12
  store float %i.wm, ptr %i.wo, align 4, !tbaa !120
  %indvars.iv.next227.i.i.3 = add nuw nsw i64 %indvars.iv226.i.i, 4 ; 2 uses
  %indvars.iv.next229.i.i.3 = add nuw nsw i64 %indvars.iv228.i.i, 4 ; 2 uses
  %niter759.next.3 = add i64 %niter759, 4         ; 2 uses
  %niter759.ncmp.3 = icmp eq i64 %niter759.next.3, %unroll_iter758
  br i1 %niter759.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph157.split.i.i, !llvm.loop !310

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph157.split.i.i
  br i1 %lcmp.mod756.not, label %.loopexit.i.i, label %.lr.ph157.split.i.i.epil.preheader

.lr.ph157.split.i.i.epil.preheader:               ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph157.split.i.i.preheader
  %indvars.iv228.i.i.epil.init = phi i64 [ %i.vo, %.lr.ph157.split.i.i.preheader ], [ %indvars.iv.next229.i.i.3, %.loopexit.i.i.loopexit.unr-lcssa ]
  %indvars.iv226.i.i.epil.init = phi i64 [ 0, %.lr.ph157.split.i.i.preheader ], [ %indvars.iv.next227.i.i.3, %.loopexit.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod757)
  br label %.lr.ph157.split.i.i.epil

.lr.ph157.split.i.i.epil:                         ; preds = %.lr.ph157.split.i.i.epil, %.lr.ph157.split.i.i.epil.preheader
  %indvars.iv228.i.i.epil = phi i64 [ %indvars.iv.next229.i.i.epil, %.lr.ph157.split.i.i.epil ], [ %indvars.iv228.i.i.epil.init, %.lr.ph157.split.i.i.epil.preheader ] ; 2 uses
  %indvars.iv226.i.i.epil = phi i64 [ %indvars.iv.next227.i.i.epil, %.lr.ph157.split.i.i.epil ], [ %indvars.iv226.i.i.epil.init, %.lr.ph157.split.i.i.epil.preheader ] ; 2 uses
  %epil.iter755 = phi i64 [ %epil.iter755.next, %.lr.ph157.split.i.i.epil ], [ 0, %.lr.ph157.split.i.i.epil.preheader ]
  %gep265.i.i.epil = getelementptr [4 x i8], ptr %invariant.gep264.i.i, i64 %indvars.iv226.i.i.epil
  %i.wp = load i32, ptr %gep265.i.i.epil, align 4, !tbaa !13
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [4 x i8], ptr %.0252.i, i64 %i.wq
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !120
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv228.i.i.epil
  store float %i.ws, ptr %i.wt, align 4, !tbaa !120
  %indvars.iv.next227.i.i.epil = add nuw nsw i64 %indvars.iv226.i.i.epil, 1
  %indvars.iv.next229.i.i.epil = add nuw nsw i64 %indvars.iv228.i.i.epil, 1
  %epil.iter755.next = add i64 %epil.iter755, 1   ; 2 uses
  %epil.iter755.cmp.not = icmp eq i64 %epil.iter755.next, %xtraiter754
  br i1 %epil.iter755.cmp.not, label %.loopexit.i.i, label %.lr.ph157.split.i.i.epil, !llvm.loop !311

.loopexit.i.i:                                    ; preds = %.lr.ph147.i.i.prol.loopexit, %.lr.ph147.i.i, %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph157.split.i.i.epil, %middle.block648, %.lr.ph157.split.us.preheader.i.i, %._crit_edge152.i.i, %.preheader128.i.i
  br i1 %.not500.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %.loopexit.i.i
  %i.wu = load ptr, ptr %i.kr, align 8, !tbaa !118
  %i.wv = load ptr, ptr %.sroa.0454.2.i, align 8, !tbaa !118
  br label %.preheader.i330.i

.preheader.i330.i:                                ; preds = %._crit_edge161.i.i, %.preheader.lr.ph.i.i
  %indvars.iv246.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next247.i.i, %._crit_edge161.i.i ] ; 6 uses
  br i1 %i.kp, label %.lr.ph160.preheader.i.i, label %._crit_edge161.i.i

.lr.ph160.preheader.i.i:                          ; preds = %.preheader.i330.i
  %invariant.gep266.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv246.i.i ; 5 uses
  br i1 %i.lm, label %.lr.ph160.i.i.epil.preheader, label %.lr.ph160.i.i

.lr.ph160.i.i:                                    ; preds = %.lr.ph160.preheader.i.i, %.lr.ph160.i.i
  %indvars.iv239.i.i = phi i64 [ %indvars.iv.next240.i.i.3, %.lr.ph160.i.i ], [ 0, %.lr.ph160.preheader.i.i ] ; 5 uses
  %.0105159.i.i = phi double [ %i.xl, %.lr.ph160.i.i ], [ 0.000000e+00, %.lr.ph160.preheader.i.i ]
  %niter766 = phi i64 [ %niter766.next.3, %.lr.ph160.i.i ], [ 0, %.lr.ph160.preheader.i.i ]
  %i.ww = mul nuw nsw i64 %indvars.iv239.i.i, %i.ks
  %gep267.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i.i, i64 %i.ww
  %i.wx = load float, ptr %gep267.i.i, align 4, !tbaa !120
  %i.wy = fpext float %i.wx to double
  %i.wz = fadd double %.0105159.i.i, %i.wy
  %indvars.iv.next240.i.i = or disjoint i64 %indvars.iv239.i.i, 1
  %i.xa = mul nuw nsw i64 %indvars.iv.next240.i.i, %i.ks
  %gep267.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i.i, i64 %i.xa
  %i.xb = load float, ptr %gep267.i.i.1, align 4, !tbaa !120
  %i.xc = fpext float %i.xb to double
  %i.xd = fadd double %i.wz, %i.xc
  %indvars.iv.next240.i.i.1 = or disjoint i64 %indvars.iv239.i.i, 2
  %i.xe = mul nuw nsw i64 %indvars.iv.next240.i.i.1, %i.ks
  %gep267.i.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i.i, i64 %i.xe
  %i.xf = load float, ptr %gep267.i.i.2, align 4, !tbaa !120
  %i.xg = fpext float %i.xf to double
  %i.xh = fadd double %i.xd, %i.xg
  %indvars.iv.next240.i.i.2 = or disjoint i64 %indvars.iv239.i.i, 3
  %i.xi = mul nuw nsw i64 %indvars.iv.next240.i.i.2, %i.ks
  %gep267.i.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i.i, i64 %i.xi
  %i.xj = load float, ptr %gep267.i.i.3, align 4, !tbaa !120
  %i.xk = fpext float %i.xj to double
  %i.xl = fadd double %i.xh, %i.xk                ; 3 uses
  %indvars.iv.next240.i.i.3 = add nuw nsw i64 %indvars.iv239.i.i, 4 ; 2 uses
  %niter766.next.3 = add i64 %niter766, 4         ; 2 uses
  %niter766.ncmp.3 = icmp eq i64 %niter766.next.3, %unroll_iter765
  br i1 %niter766.ncmp.3, label %._crit_edge161.i.i.loopexit.unr-lcssa, label %.lr.ph160.i.i, !llvm.loop !312

._crit_edge161.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph160.i.i
  br i1 %lcmp.mod762.not, label %._crit_edge161.i.i, label %.lr.ph160.i.i.epil.preheader

.lr.ph160.i.i.epil.preheader:                     ; preds = %._crit_edge161.i.i.loopexit.unr-lcssa, %.lr.ph160.preheader.i.i
  %indvars.iv239.i.i.epil.init = phi i64 [ 0, %.lr.ph160.preheader.i.i ], [ %indvars.iv.next240.i.i.3, %._crit_edge161.i.i.loopexit.unr-lcssa ]
  %.0105159.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph160.preheader.i.i ], [ %i.xl, %._crit_edge161.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod764)
  br label %.lr.ph160.i.i.epil

.lr.ph160.i.i.epil:                               ; preds = %.lr.ph160.i.i.epil, %.lr.ph160.i.i.epil.preheader
  %indvars.iv239.i.i.epil = phi i64 [ %indvars.iv239.i.i.epil.init, %.lr.ph160.i.i.epil.preheader ], [ %indvars.iv.next240.i.i.epil, %.lr.ph160.i.i.epil ] ; 2 uses
  %.0105159.i.i.epil = phi double [ %.0105159.i.i.epil.init, %.lr.ph160.i.i.epil.preheader ], [ %i.xp, %.lr.ph160.i.i.epil ]
  %epil.iter761 = phi i64 [ 0, %.lr.ph160.i.i.epil.preheader ], [ %epil.iter761.next, %.lr.ph160.i.i.epil ]
  %i.xm = mul nuw nsw i64 %indvars.iv239.i.i.epil, %i.ks
  %gep267.i.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i.i, i64 %i.xm
  %i.xn = load float, ptr %gep267.i.i.epil, align 4, !tbaa !120
  %i.xo = fpext float %i.xn to double
  %i.xp = fadd double %.0105159.i.i.epil, %i.xo   ; 2 uses
  %indvars.iv.next240.i.i.epil = add nuw nsw i64 %indvars.iv239.i.i.epil, 1
  %epil.iter761.next = add i64 %epil.iter761, 1   ; 2 uses
  %epil.iter761.cmp.not = icmp eq i64 %epil.iter761.next, %xtraiter760
  br i1 %epil.iter761.cmp.not, label %._crit_edge161.i.i, label %.lr.ph160.i.i.epil, !llvm.loop !313

._crit_edge161.i.i:                               ; preds = %._crit_edge161.i.i.loopexit.unr-lcssa, %.lr.ph160.i.i.epil, %.preheader.i330.i
  %.0105.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i330.i ], [ %i.xl, %._crit_edge161.i.i.loopexit.unr-lcssa ], [ %i.xp, %.lr.ph160.i.i.epil ] ; 2 uses
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %indvars.iv246.i.i
  store double %.0105.lcssa.i.i, ptr %i.xq, align 8, !tbaa !41
end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  %i.aay = fpext float %i.aax to double
  %i.aaz = fadd double %i.aav, %i.aay
  %indvars.iv.next240.i351.i.2 = or disjoint i64 %indvars.iv239.i348.i, 3
  %i.aba = mul nuw nsw i64 %indvars.iv.next240.i351.i.2, %i.ks
  %gep267.i350.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i346.i, i64 %i.aba
  %i.abb = load float, ptr %gep267.i350.i.3, align 4, !tbaa !120
  %i.abc = fpext float %i.abb to double
  %i.abd = fadd double %i.aaz, %i.abc             ; 3 uses
  %indvars.iv.next240.i351.i.3 = add nuw nsw i64 %indvars.iv239.i348.i, 4 ; 2 uses
  %niter782.next.3 = add i64 %niter782, 4         ; 2 uses
  %niter782.ncmp.3 = icmp eq i64 %niter782.next.3, %unroll_iter781
  br i1 %niter782.ncmp.3, label %._crit_edge161.i339.i.loopexit.unr-lcssa, label %.lr.ph160.i347.i, !llvm.loop !312

._crit_edge161.i339.i.loopexit.unr-lcssa:         ; preds = %.lr.ph160.i347.i
  br i1 %lcmp.mod778.not, label %._crit_edge161.i339.i, label %.lr.ph160.i347.i.epil.preheader

.lr.ph160.i347.i.epil.preheader:                  ; preds = %._crit_edge161.i339.i.loopexit.unr-lcssa, %.lr.ph160.preheader.i345.i
  %indvars.iv239.i348.i.epil.init = phi i64 [ 0, %.lr.ph160.preheader.i345.i ], [ %indvars.iv.next240.i351.i.3, %._crit_edge161.i339.i.loopexit.unr-lcssa ]
  %.0105159.i349.i.epil.init = phi double [ 0.000000e+00, %.lr.ph160.preheader.i345.i ], [ %i.abd, %._crit_edge161.i339.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod780)
  br label %.lr.ph160.i347.i.epil

.lr.ph160.i347.i.epil:                            ; preds = %.lr.ph160.i347.i.epil, %.lr.ph160.i347.i.epil.preheader
  %indvars.iv239.i348.i.epil = phi i64 [ %indvars.iv239.i348.i.epil.init, %.lr.ph160.i347.i.epil.preheader ], [ %indvars.iv.next240.i351.i.epil, %.lr.ph160.i347.i.epil ] ; 2 uses
  %.0105159.i349.i.epil = phi double [ %.0105159.i349.i.epil.init, %.lr.ph160.i347.i.epil.preheader ], [ %i.abh, %.lr.ph160.i347.i.epil ]
  %epil.iter777 = phi i64 [ 0, %.lr.ph160.i347.i.epil.preheader ], [ %epil.iter777.next, %.lr.ph160.i347.i.epil ]
  %i.abe = mul nuw nsw i64 %indvars.iv239.i348.i.epil, %i.ks
  %gep267.i350.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i346.i, i64 %i.abe
  %i.abf = load float, ptr %gep267.i350.i.epil, align 4, !tbaa !120
  %i.abg = fpext float %i.abf to double
  %i.abh = fadd double %.0105159.i349.i.epil, %i.abg ; 2 uses
  %indvars.iv.next240.i351.i.epil = add nuw nsw i64 %indvars.iv239.i348.i.epil, 1
  %epil.iter777.next = add i64 %epil.iter777, 1   ; 2 uses
  %epil.iter777.cmp.not = icmp eq i64 %epil.iter777.next, %xtraiter776
  br i1 %epil.iter777.cmp.not, label %._crit_edge161.i339.i, label %.lr.ph160.i347.i.epil, !llvm.loop !320

._crit_edge161.i339.i:                            ; preds = %._crit_edge161.i339.i.loopexit.unr-lcssa, %.lr.ph160.i347.i.epil, %.preheader.i336.i
  %.0105.lcssa.i340.i = phi double [ 0.000000e+00, %.preheader.i336.i ], [ %i.abd, %._crit_edge161.i339.i.loopexit.unr-lcssa ], [ %i.abh, %.lr.ph160.i347.i.epil ] ; 2 uses
  %i.abi = getelementptr inbounds [8 x i8], ptr %i.aam, i64 %indvars.iv244.i338.i
  store double %.0105.lcssa.i340.i, ptr %i.abi, align 8, !tbaa !41
  %i.abj = getelementptr inbounds [8 x i8], ptr %.0.i322594.i, i64 %indvars.iv244.i338.i ; 2 uses
  %i.abk = load double, ptr %i.abj, align 8, !tbaa !41
  %i.abl = fadd double %.0105.lcssa.i340.i, %i.abk ; 2 uses
  %i.abm = fmul double %i.ak, %i.abl
  %i.abn = fptrunc double %i.abm to float
  %i.abo = getelementptr inbounds [4 x i8], ptr %.0251.i, i64 %indvars.iv244.i338.i
  store float %i.abn, ptr %i.abo, align 4, !tbaa !120
  %i.abp = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv244.i338.i
  %i.abq = load double, ptr %i.abp, align 8, !tbaa !41
  %i.abr = fsub double %i.abl, %i.abq
  store double %i.abr, ptr %i.abj, align 8, !tbaa !41
  %indvars.iv.next247.i341.i = add nuw nsw i64 %indvars.iv246.i337.i, 1 ; 2 uses
  %indvars.iv.next245.i342.i = add nsw i64 %indvars.iv244.i338.i, 1
  %exitcond252.not.i343.i = icmp eq i64 %indvars.iv.next247.i341.i, %wide.trip.count251.i334.i
  br i1 %exitcond252.not.i343.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, label %.preheader.i336.i, !llvm.loop !314

_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIdfEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i: ; preds = %._crit_edge161.i339.i, %bb.bh, %_ZN2cv12cpu_baseline12_GLOBAL__N_121BlockSumBorderInplaceIdfEEvPKT0_S5_PS3_PKiiiiii.exit.i
  %i.abs = add nsw i32 %.0248521.i, 1
  %i.abt = srem i32 %i.abs, %.sroa.552.0.extract.trunc
  %spec.select.idx.i = select i1 %i.mw, i64 0, i64 %i.cl
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.0257519.i, i64 %spec.select.idx.i
  %indvars.iv.next562.i = add nuw nsw i64 %indvars.iv561.i, 1 ; 2 uses
  %exitcond565.not.i = icmp eq i64 %indvars.iv.next562.i, %wide.trip.count564.i
  br i1 %exitcond565.not.i, label %._crit_edge523.i, label %bb.ax, !llvm.loop !321

.body.i:                                          ; preds = %bb.ax
  %i.abu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i363.i = icmp eq ptr %.sroa.0454.2.i, null
  br i1 %.not.i.i.i363.i, label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i, label %.body.thread487.i

.body.thread487.i:                                ; preds = %.body.i, %.body.thread477.i
  %.pn304.pn.pn484.i = phi { ptr, i32 } [ %i.sc, %.body.thread477.i ], [ %i.abu, %.body.i ]
  %i.abv = ptrtoint ptr %.sroa.0454.2.i to i64
  %i.abw = sub i64 %.sroa.15.2.i, %i.abv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0454.2.i, i64 noundef %i.abw) #25
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i

_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i:            ; preds = %.body.thread487.i, %.body.i, %bb.as, %bb.ai, %bb.ag, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pn304.pn.pn476.i = phi { ptr, i32 } [ %.pn304.pn.pn484.i, %.body.thread487.i ], [ %i.abu, %.body.i ], [ %i.gl, %bb.as ], [ %i.ez, %bb.ag ], [ %i.ey, %bb.af ], [ %i.fn, %bb.ai ], [ %i.cc, %bb.r ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
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
  %i.abx = landingpad { ptr, i32 }
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
  %i.aby = load ptr, ptr %i.al, align 8, !tbaa !362
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aca = load ptr, ptr %i.an, align 8, !tbaa !362
  %i.acb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.0.0.copyload.i74 = load i32, ptr %4, align 4, !tbaa !13 ; 5 uses
  %.sroa.7.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.7.0.copyload.i76 = load i32, ptr %.sroa.7.0..sroa_idx.i75, align 4, !tbaa !13 ; 4 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.acd = load i32, ptr %i.acc, align 8, !tbaa !111 ; 6 uses
  %i.ace = icmp slt i32 %i.acd, 3
  br i1 %i.ace, label %bb.bq, label %bb.bn

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
  %i.acf = landingpad { ptr, i32 }
          cleanup
  %i.acg = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aci = icmp eq ptr %i.acg, %i.ach
  br i1 %i.aci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80: ; preds = %bb.bp
  %i.acj = load i64, ptr %i.ach, align 8, !tbaa !20
  %i.ack = add i64 %i.acj, 1
  call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.ack) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i81: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

bb.bq:                                            ; preds = %bb.bm
  %i.acl = icmp sgt i32 %i.acd, 0
  br i1 %i.acl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.acn = icmp eq i32 %i.acd, 2
  %i.aco = zext i1 %i.acn to i64
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.acm, i64 %i.aco
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !13
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.acr = icmp eq i32 %i.acd, 0
  %i.acs = zext i1 %i.acr to i32
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.act = phi i32 [ %i.acq, %bb.br ], [ %i.acs, %bb.bs ] ; 13 uses
  %i.acu = icmp eq i32 %i.acd, 2
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.acw = load i32, ptr %i.acv, align 4
  %i.acx = icmp sgt i32 %i.acd, -1
  %i.acy = zext i1 %i.acx to i32
  %i.acz = select i1 %i.acu, i32 %i.acw, i32 %i.acy ; 4 uses
  %i.ada = load i32, ptr %5, align 4, !tbaa !113  ; 6 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !114 ; 7 uses
  %i.add = icmp slt i32 %i.ada, 0
  %i.ade = icmp slt i32 %i.adc, 0
  %or.cond.not498.i83 = select i1 %i.add, i1 true, i1 %i.ade
  %i.adf = icmp slt i32 %i.act, 0
  %or.cond5.not495.i84 = select i1 %or.cond.not498.i83, i1 true, i1 %i.adf
  %i.adg = icmp slt i32 %i.acz, 0
  %or.cond8.not493.i85 = select i1 %or.cond5.not495.i84, i1 true, i1 %i.adg
  %i.adh = add nuw nsw i32 %i.ada, %i.act
  %.not.i86 = icmp sgt i32 %i.adh, %.sroa.0.0.copyload.i74
  %or.cond310.i87 = select i1 %or.cond8.not493.i85, i1 true, i1 %.not.i86
  %i.adi = add nuw nsw i32 %i.adc, %i.acz
  %.not291.i88 = icmp sgt i32 %i.adi, %.sroa.7.0.copyload.i76
  %or.cond311.i89 = select i1 %or.cond310.i87, i1 true, i1 %.not291.i88
  br i1 %or.cond311.i89, label %bb.bw, label %bb.cb

bb.bu:                                            ; preds = %.noexc317
  %i.adj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.bv:                                            ; preds = %bb.bn
  %i.adk = landingpad { ptr, i32 }
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
  %i.adl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313

bb.ca:                                            ; preds = %bb.bx
  %i.adm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adn = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.adp = icmp eq ptr %i.adn, %i.ado
  br i1 %i.adp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315: ; preds = %bb.ca
  %i.adq = load i64, ptr %i.ado, align 8, !tbaa !20
  %i.adr = add i64 %i.adq, 1
  call void @_ZdlPvm(ptr noundef %i.adn, i64 noundef %i.adr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i313: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315, %bb.bz
  %.pn.i314 = phi { ptr, i32 } [ %i.adl, %bb.bz ], [ %i.adm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i315 ], [ %i.adm, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

bb.cb:                                            ; preds = %bb.bt
  %i.ads = load i64, ptr %i.abz, align 8, !tbaa !39 ; 2 uses
  %i.adt = load i64, ptr %i.acb, align 8, !tbaa !39
  %i.adu = load i32, ptr %0, align 8, !tbaa !108
  %i.adv = and i32 %i.adu, 4095                   ; 4 uses
  %i.adw = lshr i32 %i.adv, 5
  %i.adx = add nuw nsw i32 %i.adw, 1              ; 21 uses
  %i.ady = shl nuw nsw i32 %i.adv, 2
  %i.adz = and i32 %i.ady, 124
  %i.aea = zext nneg i32 %i.adz to i64
  %i.aeb = lshr i64 1275511473185297, %i.aea
  %i.aec = trunc i64 %i.aeb to i32
  %i.aed = and i32 %i.aec, 15
  %i.aee = mul nuw nsw i32 %i.aed, %i.adx         ; 4 uses
  %i.aef = lshr exact i32 %i.n, 2
  %i.aeg = add nuw nsw i32 %i.aef, 8
  %i.aeh = add nsw i32 %.sroa.047.0.extract.trunc, -1 ; 2 uses
  %.sroa.speculated423.i90 = call i32 @llvm.smax.i32(i32 %i.aeh, i32 1)
  %i.aei = add i32 %.sroa.552.0.extract.trunc, -1 ; 2 uses
  %i.aej = add i32 %i.acz, %i.aei                 ; 4 uses
  %.sroa.speculated446.i91 = call i32 @llvm.smin.i32(i32 %i.ada, i32 %.sroa.039.0) ; 2 uses
  %i.aek = sub i32 %.sroa.039.0, %i.ada           ; 4 uses
  %.sroa.speculated392.i92 = call i32 @llvm.smax.i32(i32 %i.aek, i32 0) ; 8 uses
  %i.ael = xor i32 %.sroa.039.0, -1
  %i.aem = add i32 %i.ael, %.sroa.047.0.extract.trunc
  %i.aen = sub i32 %i.aem, %.sroa.0.0.copyload.i74
  %i.aeo = add i32 %i.aen, %i.act
  %i.aep = add i32 %i.aeo, %i.ada                 ; 4 uses
  %.sroa.speculated371.i93 = call i32 @llvm.smax.i32(i32 %i.aep, i32 0) ; 10 uses
  %i.aeq = xor i32 %.sroa.7.0.extract.trunc.i72, -1
  %i.aer = add i32 %i.aeq, %.sroa.552.0.extract.trunc
  %i.aes = sub i32 %i.aer, %.sroa.7.0.copyload.i76
  %i.aet = add i32 %i.aes, %i.acz
  %i.aeu = add i32 %i.aet, %i.adc                 ; 3 uses
  %.sroa.speculated.i94 = call i32 @llvm.smax.i32(i32 %i.aeu, i32 0) ; 3 uses
  %.sroa.speculated406.i95 = call i32 @llvm.umin.i32(i32 %i.act, i32 %.sroa.speculated392.i92)
  %i.aev = mul nuw nsw i32 %i.adx, %.sroa.speculated406.i95 ; 4 uses
  %i.aew = add i32 %.sroa.047.0.extract.trunc, 63 ; 2 uses
  %i.aex = add i32 %i.act, %i.aew
  %i.aey = add i32 %i.aex, %i.aev                 ; 2 uses
  %i.aez = mul i32 %i.aey, %i.aeg                 ; 7 uses
  %i.afa = mul nsw i32 %i.aee, %.sroa.speculated446.i91
  %i.afb = sext i32 %i.afa to i64
  %i.afc = sub nsw i64 0, %i.afb
  %i.afd = getelementptr inbounds i8, ptr %i.aby, i64 %i.afc ; 2 uses
  %i.afe = mul nuw nsw i32 %i.adx, %.sroa.speculated423.i90
  %i.aff = zext nneg i32 %i.afe to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIiEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.aff, i16 noundef zeroext 4)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.afg = add nsw i32 %.sroa.552.0.extract.trunc, 1
  %i.afh = mul i32 %i.aez, %i.afg
  %i.afi = sext i32 %i.afh to i64
  invoke void @_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.afi, i16 noundef zeroext 1)
          to label %bb.cd unwind label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.afj = mul i32 %i.aee, %i.aey                 ; 3 uses
  %i.afk = sext i32 %i.afj to i64                 ; 4 uses
  invoke void @_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.afk, i16 noundef zeroext 1)
          to label %bb.ce unwind label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %10)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN2cv5utils10BufferArea8zeroFillEv(ptr noundef nonnull align 8 dereferenceable(41) %10)
          to label %bb.cg unwind label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.afl = icmp sgt i32 %i.aek, 0                 ; 3 uses
  %i.afm = icmp sgt i32 %i.aep, 0                 ; 3 uses
  %or.cond10.i96 = select i1 %i.afl, i1 true, i1 %i.afm
  %i.afn = icmp ne i32 %7, 0                      ; 7 uses
  %or.cond14.i97 = and i1 %i.afn, %or.cond10.i96
  br i1 %or.cond14.i97, label %bb.ch, label %.loopexit506.i98

bb.ch:                                            ; preds = %bb.cg
  %i.afo = sub nsw i32 %.sroa.speculated446.i91, %i.ada ; 2 uses
  %i.afp = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  br i1 %i.afl, label %.lr.ph.preheader.i302, label %.preheader505.i292

.lr.ph.preheader.i302:                            ; preds = %bb.ch
  %i.afq = zext nneg i32 %i.adx to i64            ; 4 uses
  %wide.trip.count533.i303 = zext nneg i32 %i.aek to i64
  %min.iters.check = icmp samesign ult i32 %i.adv, 224
  %n.vec = and i64 %i.afq, 248                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.afq
  br label %.lr.ph.i304

.preheader505.i292:                               ; preds = %.loopexit675, %bb.ch
  br i1 %i.afm, label %.lr.ph512.preheader.i293, label %.loopexit506.i98

.lr.ph512.preheader.i293:                         ; preds = %.preheader505.i292
  %i.afr = zext nneg i32 %.sroa.speculated392.i92 to i64
  %i.afs = zext nneg i32 %i.adx to i64            ; 4 uses
  %i.aft = zext nneg i32 %i.aep to i64
  %min.iters.check397 = icmp samesign ult i32 %i.adv, 224
  %n.vec399 = and i64 %i.afs, 248                 ; 3 uses
  %cmp.n409 = icmp eq i64 %n.vec399, %i.afs
  br label %.lr.ph512.i294

.lr.ph.i304:                                      ; preds = %.loopexit675, %.lr.ph.preheader.i302
  %indvars.iv530.i305 = phi i64 [ 0, %.lr.ph.preheader.i302 ], [ %indvars.iv.next531.i311, %.loopexit675 ] ; 3 uses
  %i.afu = trunc i64 %indvars.iv530.i305 to i32
  %i.afv = sub i32 %i.afu, %.sroa.speculated392.i92
  %i.afw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.afv, i32 noundef %.sroa.0.0.copyload.i74, i32 noundef %7)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %.lr.ph.i304
  %i.afx = add nsw i32 %i.afw, %i.afo
  %i.afy = mul nsw i32 %i.afx, %i.adx             ; 2 uses
  %i.afz = mul nuw nsw i64 %indvars.iv530.i305, %i.afq
  %invariant.gep603.i306 = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %i.afz ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ci
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.afy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep603.i306, i64 %index ; 2 uses
  %i.agb = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  store <4 x i32> %i.agb, ptr %i.aga, align 4, !tbaa !13
  store <4 x i32> %.reass, ptr %i.agc, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.agd = icmp eq i64 %index.next, %n.vec
  br i1 %i.agd, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit675, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ci, %middle.block
  %indvars.iv.i307.ph = phi i64 [ 0, %bb.ci ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i307 = phi i64 [ %indvars.iv.next.i309, %scalar.ph ], [ %indvars.iv.i307.ph, %scalar.ph.preheader ] ; 3 uses
  %gep604.i308 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep603.i306, i64 %indvars.iv.i307
  %i.age = trunc i64 %indvars.iv.i307 to i32
  %i.agf = add i32 %i.afy, %i.age
  store i32 %i.agf, ptr %gep604.i308, align 4, !tbaa !13
  %indvars.iv.next.i309 = add nuw nsw i64 %indvars.iv.i307, 1 ; 2 uses
  %exitcond.not.i310 = icmp eq i64 %indvars.iv.next.i309, %i.afq
  br i1 %exitcond.not.i310, label %.loopexit675, label %scalar.ph, !llvm.loop !323

bb.cj:                                            ; preds = %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i103, %bb.cz, %.invoke.i100, %bb.cx, %bb.cr, %bb.cq, %bb.co, %bb.cn, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %i.agg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

bb.ck:                                            ; preds = %.lr.ph.i304
  %i.agh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

.loopexit675:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next531.i311 = add nuw nsw i64 %indvars.iv530.i305, 1 ; 2 uses
  %exitcond534.not.i312 = icmp eq i64 %indvars.iv.next531.i311, %wide.trip.count533.i303
  br i1 %exitcond534.not.i312, label %.preheader505.i292, label %.lr.ph.i304, !llvm.loop !324

.lr.ph512.i294:                                   ; preds = %.loopexit674, %.lr.ph512.preheader.i293
  %indvars.iv540.i295 = phi i64 [ 0, %.lr.ph512.preheader.i293 ], [ %indvars.iv.next541.i301, %.loopexit674 ] ; 3 uses
  %i.agi = trunc i64 %indvars.iv540.i295 to i32
  %i.agj = add i32 %.sroa.0.0.copyload.i74, %i.agi
  %i.agk = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.agj, i32 noundef %.sroa.0.0.copyload.i74, i32 noundef %7)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %.lr.ph512.i294
  %i.agl = add nsw i32 %i.agk, %i.afo
  %i.agm = mul nsw i32 %i.agl, %i.adx             ; 2 uses
  %i.agn = add nuw nsw i64 %indvars.iv540.i295, %i.afr
  %i.ago = mul nuw nsw i64 %i.agn, %i.afs
  %invariant.gep605.i296 = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %i.ago ; 2 uses
  br i1 %min.iters.check397, label %scalar.ph396.preheader, label %vector.ph398

vector.ph398:                                     ; preds = %bb.cl
  %broadcast.splatinsert400 = insertelement <4 x i32> poison, i32 %i.agm, i64 0
  %broadcast.splat401 = shufflevector <4 x i32> %broadcast.splatinsert400, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op806 = add <4 x i32> splat (i32 4), %broadcast.splat401
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph398
  %index403 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body402 ] ; 2 uses
  %vec.ind404 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph398 ], [ %vec.ind.next407, %vector.body402 ] ; 3 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep605.i296, i64 %index403 ; 2 uses
  %i.agq = add <4 x i32> %broadcast.splat401, %vec.ind404
  %.reass807 = add <4 x i32> %vec.ind404, %invariant.op806
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  store <4 x i32> %i.agq, ptr %i.agp, align 4, !tbaa !13
  store <4 x i32> %.reass807, ptr %i.agr, align 4, !tbaa !13
  %index.next406 = add nuw i64 %index403, 8       ; 2 uses
  %vec.ind.next407 = add <4 x i32> %vec.ind404, splat (i32 8)
  %i.ags = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.ags, label %middle.block408, label %vector.body402, !llvm.loop !325

middle.block408:                                  ; preds = %vector.body402
  br i1 %cmp.n409, label %.loopexit674, label %scalar.ph396.preheader

scalar.ph396.preheader:                           ; preds = %bb.cl, %middle.block408
  %indvars.iv535.i297.ph = phi i64 [ 0, %bb.cl ], [ %n.vec399, %middle.block408 ]
  br label %scalar.ph396

scalar.ph396:                                     ; preds = %scalar.ph396.preheader, %scalar.ph396
  %indvars.iv535.i297 = phi i64 [ %indvars.iv.next536.i299, %scalar.ph396 ], [ %indvars.iv535.i297.ph, %scalar.ph396.preheader ] ; 3 uses
  %gep606.i298 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep605.i296, i64 %indvars.iv535.i297
  %i.agt = trunc i64 %indvars.iv535.i297 to i32
  %i.agu = add i32 %i.agm, %i.agt
  store i32 %i.agu, ptr %gep606.i298, align 4, !tbaa !13
  %indvars.iv.next536.i299 = add nuw nsw i64 %indvars.iv535.i297, 1 ; 2 uses
  %exitcond539.not.i300 = icmp eq i64 %indvars.iv.next536.i299, %i.afs
  br i1 %exitcond539.not.i300, label %.loopexit674, label %scalar.ph396, !llvm.loop !326

bb.cm:                                            ; preds = %.lr.ph512.i294
  %i.agv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit364.i77

.loopexit674:                                     ; preds = %scalar.ph396, %middle.block408
  %indvars.iv.next541.i301 = add nuw nsw i64 %indvars.iv540.i295, 1 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  %.not499.i102 = icmp eq i64 %i.ahx, 0
  br i1 %.not499.i102, label %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108, label %bb.cy

bb.cy:                                            ; preds = %.loopexit.i101
  %i.ahy = icmp ugt i64 %i.ahx, 1152921504606846975
  br i1 %i.ahy, label %bb.cz, label %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i103

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #24
          to label %.noexc366.i287 unwind label %bb.cj

.noexc366.i287:                                   ; preds = %bb.cz
  unreachable

_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i103: ; preds = %bb.cy
  %i.ahz = shl nuw nsw i64 %i.ahx, 3
  %i.aia = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahz) #26
          to label %.noexc367.i104 unwind label %bb.cj ; 4 uses

.noexc367.i104:                                   ; preds = %_ZNKSt6vectorIPdSaIS0_EE12_M_check_lenEmPKc.exit.i.i103
  store ptr null, ptr %i.aia, align 8, !tbaa !118
  %i.aib = add nsw i64 %i.ahx, -1                 ; 2 uses
  %i.aic = icmp eq i64 %i.aib, 0
  br i1 %i.aic, label %.noexc321.i107, label %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i105

_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i105: ; preds = %.noexc367.i104
  %i.aid = getelementptr i8, ptr %i.aia, i64 8
  %.idx.i.i.i.i.i31.i.i106 = shl nuw nsw i64 %i.aib, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aid, i8 0, i64 %.idx.i.i.i.i.i31.i.i106, i1 false), !tbaa !118
  br label %.noexc321.i107

.noexc321.i107:                                   ; preds = %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i.i105, %.noexc367.i104
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.aia, i64 %i.ahx
  %i.aif = ptrtoint ptr %i.aie to i64
  br label %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108

_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108:       ; preds = %.noexc321.i107, %.loopexit.i101
  %.sroa.15.2.i109 = phi i64 [ %i.aif, %.noexc321.i107 ], [ 0, %.loopexit.i101 ] ; 2 uses
  %.sroa.0454.2.i110 = phi ptr [ %i.aia, %.noexc321.i107 ], [ null, %.loopexit.i101 ] ; 17 uses
  %i.aig = load ptr, ptr %i.a, align 8, !tbaa !109 ; 11 uses
  %i.aih = load ptr, ptr %i.c, align 8, !tbaa !110 ; 2 uses
  %i.aii = shl i32 %i.aev, 3                      ; 2 uses
  br i1 %i.ap, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281: ; preds = %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108
  %i.aij = ptrtoint ptr %i.aih to i64
  %i.aik = add i64 %i.aij, 63
  %i.ail = and i64 %i.aik, -64
  %i.aim = inttoptr i64 %i.ail to ptr             ; 3 uses
  %i.ain = load ptr, ptr %i.b, align 8, !tbaa !110 ; 4 uses
  %i.aio = mul nsw i32 %i.aez, %.sroa.552.0.extract.trunc
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds i8, ptr %i.ain, i64 %i.aip
  %i.air = ptrtoint ptr %i.aiq to i64
  %i.ais = add i64 %i.air, 63
  %i.ait = and i64 %i.ais, -64
  %i.aiu = inttoptr i64 %i.ait to ptr             ; 3 uses
  %i.aiv = icmp sgt i32 %.sroa.552.0.extract.trunc, 0
  br i1 %i.aiv, label %.lr.ph516.i282, label %.preheader.i112

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111: ; preds = %_ZNSt6vectorIPdSaIS0_EE6resizeEm.exit.i108
  %i.aiw = sext i32 %i.aii to i64                 ; 4 uses
  %i.aix = getelementptr inbounds i8, ptr %i.aih, i64 %i.aiw
  %i.aiy = ptrtoint ptr %i.aix to i64
  %i.aiz = add i64 %i.aiy, 63
  %i.aja = and i64 %i.aiz, -64
  %i.ajb = inttoptr i64 %i.aja to ptr
  %i.ajc = sub nsw i64 0, %i.aiw                  ; 5 uses
  %i.ajd = getelementptr inbounds i8, ptr %i.ajb, i64 %i.ajc ; 3 uses
  %i.aje = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %i.ajf = mul nsw i32 %i.aez, %.sroa.552.0.extract.trunc
  %i.ajg = sext i32 %i.ajf to i64
  %i.ajh = getelementptr inbounds i8, ptr %i.aje, i64 %i.ajg
  %i.aji = getelementptr inbounds i8, ptr %i.ajh, i64 %i.aiw
  %i.ajj = ptrtoint ptr %i.aji to i64
  %i.ajk = add i64 %i.ajj, 63
  %i.ajl = and i64 %i.ajk, -64
  %i.ajm = inttoptr i64 %i.ajl to ptr
  %i.ajn = getelementptr inbounds i8, ptr %i.ajm, i64 %i.ajc ; 3 uses
  %i.ajo = icmp sgt i32 %.sroa.552.0.extract.trunc, 0
  br i1 %i.ajo, label %.lr.ph516.thread.i274, label %.preheader.i112

.lr.ph516.thread.i274:                            ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111
  %invariant.gep.i275 = getelementptr i8, ptr %i.aje, i64 %i.aiw ; 3 uses
  %i.ajp = sext i32 %i.aez to i64                 ; 2 uses
  %min.iters.check412 = icmp ult i64 %2, 17179869184
  br i1 %min.iters.check412, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader, label %vector.ph413

vector.ph413:                                     ; preds = %.lr.ph516.thread.i274
  %n.vec414 = and i64 %.sroa.552.0.extract.shift, 2147483644 ; 3 uses
  %broadcast.splatinsert415 = insertelement <2 x i64> poison, i64 %i.ajp, i64 0
  %broadcast.splat416 = shufflevector <2 x i64> %broadcast.splatinsert415, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph413
  %index418 = phi i64 [ 0, %vector.ph413 ], [ %index.next424, %vector.body417 ] ; 2 uses
  %vec.ind419 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph413 ], [ %vec.ind.next425, %vector.body417 ] ; 3 uses
  %step.add420 = add nuw <2 x i64> %vec.ind419, splat (i64 2)
  %i.ajq = mul nsw <2 x i64> %vec.ind419, %broadcast.splat416
  %i.ajr = mul nsw <2 x i64> %step.add420, %broadcast.splat416
  %wide.gep = getelementptr i8, ptr %invariant.gep.i275, <2 x i64> %i.ajq
  %wide.gep421 = getelementptr i8, ptr %invariant.gep.i275, <2 x i64> %i.ajr
  %i.ajs = ptrtoint <2 x ptr> %wide.gep to <2 x i64>
  %i.ajt = ptrtoint <2 x ptr> %wide.gep421 to <2 x i64>
  %i.aju = add <2 x i64> %i.ajs, splat (i64 63)
  %i.ajv = add <2 x i64> %i.ajt, splat (i64 63)
  %i.ajw = and <2 x i64> %i.aju, splat (i64 -64)
  %i.ajx = and <2 x i64> %i.ajv, splat (i64 -64)
  %i.ajy = inttoptr <2 x i64> %i.ajw to <2 x ptr>
  %i.ajz = inttoptr <2 x i64> %i.ajx to <2 x ptr>
  %wide.gep422 = getelementptr inbounds i8, <2 x ptr> %i.ajy, i64 %i.ajc
  %wide.gep423 = getelementptr inbounds i8, <2 x ptr> %i.ajz, i64 %i.ajc
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %index418 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 16
  store <2 x ptr> %wide.gep422, ptr %i.aka, align 8, !tbaa !118
  store <2 x ptr> %wide.gep423, ptr %i.akb, align 8, !tbaa !118
  %index.next424 = add nuw i64 %index418, 4       ; 2 uses
  %vec.ind.next425 = add nuw <2 x i64> %vec.ind419, splat (i64 4)
  %i.akc = icmp eq i64 %index.next424, %n.vec414
  br i1 %i.akc, label %middle.block426, label %vector.body417, !llvm.loop !329

middle.block426:                                  ; preds = %vector.body417
  %cmp.n427 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec414
  br i1 %cmp.n427, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader: ; preds = %.lr.ph516.thread.i274, %middle.block426
  %indvars.iv546.i277.ph = phi i64 [ 0, %.lr.ph516.thread.i274 ], [ %n.vec414, %middle.block426 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276

.lr.ph516.i282:                                   ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281
  %i.akd = sext i32 %i.aez to i64                 ; 2 uses
  %min.iters.check430 = icmp ult i64 %2, 17179869184
  br i1 %min.iters.check430, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph516.i282
  %n.vec432 = and i64 %.sroa.552.0.extract.shift, 2147483644 ; 3 uses
  %broadcast.splatinsert433 = insertelement <2 x i64> poison, i64 %i.akd, i64 0
  %broadcast.splat434 = shufflevector <2 x i64> %broadcast.splatinsert433, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph431
  %index436 = phi i64 [ 0, %vector.ph431 ], [ %index.next441, %vector.body435 ] ; 2 uses
  %vec.ind437 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph431 ], [ %vec.ind.next442, %vector.body435 ] ; 3 uses
  %step.add438 = add nuw <2 x i64> %vec.ind437, splat (i64 2)
  %i.ake = mul nsw <2 x i64> %vec.ind437, %broadcast.splat434
  %i.akf = mul nsw <2 x i64> %step.add438, %broadcast.splat434
  %wide.gep439 = getelementptr inbounds i8, ptr %i.ain, <2 x i64> %i.ake
  %wide.gep440 = getelementptr inbounds i8, ptr %i.ain, <2 x i64> %i.akf
  %i.akg = ptrtoint <2 x ptr> %wide.gep439 to <2 x i64>
  %i.akh = ptrtoint <2 x ptr> %wide.gep440 to <2 x i64>
  %i.aki = add <2 x i64> %i.akg, splat (i64 63)
  %i.akj = add <2 x i64> %i.akh, splat (i64 63)
  %i.akk = and <2 x i64> %i.aki, splat (i64 -64)
  %i.akl = and <2 x i64> %i.akj, splat (i64 -64)
  %i.akm = inttoptr <2 x i64> %i.akk to <2 x ptr>
  %i.akn = inttoptr <2 x i64> %i.akl to <2 x ptr>
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %index436 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 16
  store <2 x ptr> %i.akm, ptr %i.ako, align 8, !tbaa !118
  store <2 x ptr> %i.akn, ptr %i.akp, align 8, !tbaa !118
  %index.next441 = add nuw i64 %index436, 4       ; 2 uses
  %vec.ind.next442 = add nuw <2 x i64> %vec.ind437, splat (i64 4)
  %i.akq = icmp eq i64 %index.next441, %n.vec432
  br i1 %i.akq, label %middle.block443, label %vector.body435, !llvm.loop !330

middle.block443:                                  ; preds = %vector.body435
  %cmp.n444 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec432
  br i1 %cmp.n444, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader: ; preds = %.lr.ph516.i282, %middle.block443
  %indvars.iv551.i284.ph = phi i64 [ 0, %.lr.ph516.i282 ], [ %n.vec432, %middle.block443 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283
  %indvars.iv551.i284 = phi i64 [ %indvars.iv.next552.i285, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ %indvars.iv551.i284.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283.preheader ] ; 3 uses
  %i.akr = mul nsw i64 %indvars.iv551.i284, %i.akd
  %i.aks = getelementptr inbounds i8, ptr %i.ain, i64 %i.akr
  %i.akt = ptrtoint ptr %i.aks to i64
  %i.aku = add i64 %i.akt, 63
  %i.akv = and i64 %i.aku, -64
  %i.akw = inttoptr i64 %i.akv to ptr
  %i.akx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %indvars.iv551.i284
  store ptr %i.akw, ptr %i.akx, align 8, !tbaa !118
  %indvars.iv.next552.i285 = add nuw nsw i64 %indvars.iv551.i284, 1 ; 2 uses
  %exitcond555.not.i286 = icmp eq i64 %indvars.iv.next552.i285, %.sroa.552.0.extract.shift
  br i1 %exitcond555.not.i286, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283, !llvm.loop !331

.preheader.i112:                                  ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283, %middle.block426, %middle.block443, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281
  %i.aky = phi i1 [ false, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111 ], [ true, %middle.block443 ], [ false, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281 ], [ true, %middle.block426 ], [ true, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ true, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ]
  %.0.i322594.i113 = phi ptr [ %i.ajn, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111 ], [ %i.aiu, %middle.block443 ], [ %i.aiu, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281 ], [ %i.ajn, %middle.block426 ], [ %i.aiu, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ %i.ajn, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ] ; 4 uses
  %.0.i470592.i114 = phi ptr [ %i.ajd, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.thread.i111 ], [ %i.aim, %middle.block443 ], [ %i.aim, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit323.i281 ], [ %i.ajd, %middle.block426 ], [ %i.aim, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.us.i283 ], [ %i.ajd, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ]
  %i.akz = icmp sgt i32 %i.aej, 0
  br i1 %i.akz, label %.lr.ph522.i117, label %._crit_edge523.i115

.lr.ph522.i117:                                   ; preds = %.preheader.i112
  %i.ala = sub i32 %i.adc, %.sroa.7.0.extract.trunc.i72
  %i.alb = sub nsw i32 %i.aej, %.sroa.speculated.i94 ; 2 uses
  %i.alc = sext i32 %i.aii to i64                 ; 3 uses
  %i.ald = sub nsw i64 0, %i.alc                  ; 2 uses
  %i.ale = mul i32 %i.adx, %i.act                 ; 6 uses
  %i.alf = mul i32 %i.adx, %.sroa.speculated392.i92 ; 7 uses
  %i.alg = zext i32 %i.alf to i64                 ; 16 uses
  %i.alh = shl nuw nsw i64 %i.alg, 3              ; 2 uses
  %i.ali = add nuw nsw i32 %.sroa.speculated371.i93, %.sroa.speculated392.i92 ; 2 uses
  %.not116.i.i118 = icmp slt i32 %i.act, %i.ali
  %i.alj = mul i32 %i.adx, %i.aeh                 ; 3 uses
  %i.alk = icmp sgt i32 %i.alj, 0
  %wide.trip.count214.i.i119 = zext i32 %i.alj to i64 ; 5 uses
  %i.all = sub nuw nsw i32 %i.ali, %i.act         ; 2 uses
  %i.alm = xor i32 %i.all, -1
  %i.aln = add i32 %i.alm, %.sroa.047.0.extract.trunc
  %i.alo = mul nsw i32 %i.adx, %i.aln             ; 2 uses
  %i.alp = icmp sgt i32 %i.alo, 0
  %wide.trip.count224.i.i120 = zext nneg i32 %i.alo to i64
  %.sroa.speculated.i.i121 = call i32 @llvm.smin.i32(i32 %.sroa.speculated371.i93, i32 %i.all) ; 2 uses
  %i.alq = mul nuw nsw i32 %i.adx, %.sroa.speculated.i.i121
  %.not525.i122 = icmp eq i32 %.sroa.speculated.i.i121, 0
  %wide.trip.count233.i.i123 = zext nneg i32 %i.alq to i64
  %invariant.gep264.i.i124 = getelementptr [4 x i8], ptr %i.aig, i64 %i.alg ; 15 uses
  %i.alr = shl nuw nsw i64 %wide.trip.count233.i.i123, 3
  %.not500.i125 = icmp eq i32 %i.act, 0
  %i.als = icmp sgt i32 %.sroa.047.0.extract.trunc, 0 ; 2 uses
  %i.alt = getelementptr [8 x i8], ptr %.sroa.0454.2.i110, i64 %i.ahx
  %i.alu = getelementptr i8, ptr %i.alt, i64 -8   ; 2 uses
  %i.alv = zext nneg i32 %i.adx to i64            ; 10 uses
  %wide.trip.count251.i.i126 = zext nneg i32 %i.aev to i64
  %wide.trip.count242.i.i127 = and i64 %2, 4294967295
  %i.alw = sub nsw i64 0, %i.alg
  %i.alx = sub nsw i32 %i.act, %.sroa.speculated371.i93
  %i.aly = mul i32 %i.adx, %i.alx
  %i.alz = xor i32 %.sroa.speculated371.i93, -1
  %i.ama = add i32 %i.alz, %.sroa.047.0.extract.trunc
  %i.amb = mul nsw i32 %i.adx, %i.ama
  %i.amc = mul nuw nsw i32 %i.adx, %.sroa.speculated371.i93
  %i.amd = zext nneg i32 %i.amc to i64
  %i.ame = shl nuw nsw i64 %i.amd, 3              ; 2 uses
  %.not501.i128 = icmp slt i32 %i.aek, 1
  %i.amf = icmp sgt i32 %i.ale, 0
  %wide.trip.count74.i.i129 = zext i32 %i.ale to i64 ; 5 uses
  %.not502.i130 = icmp slt i32 %i.aep, 1
  %i.amg = sext i32 %i.aei to i64
  %i.amh = sext i32 %i.alb to i64
  %wide.trip.count564.i131 = zext nneg i32 %i.aej to i64
  %i.ami = shl nuw nsw i64 %i.alg, 3              ; 2 uses
  %41 = add nuw i32 %.sroa.speculated371.i93, %.sroa.speculated392.i92
  %42 = sub i32 %41, %i.act
  %smin = call i32 @llvm.smin.i32(i32 %.sroa.speculated371.i93, i32 %42)
  %43 = mul i32 %smin, %i.adx                     ; 2 uses
  %44 = zext i32 %43 to i64                       ; 2 uses
  %i.amj = add nsw i64 %wide.trip.count242.i.i127, -1 ; 2 uses
  %45 = mul i32 %.sroa.speculated371.i93, %i.adx  ; 4 uses
  %46 = zext i32 %45 to i64                       ; 2 uses
  %47 = zext i32 %45 to i64                       ; 2 uses
  %min.iters.check505 = icmp ult i64 %2, 8589934592
  %n.vec507 = and i64 %.sroa.552.0.extract.shift, 4294967294 ; 3 uses
  %broadcast.splatinsert510 = insertelement <2 x i32> poison, i32 %.sroa.552.0.extract.trunc, i64 0
  %broadcast.splat511 = shufflevector <2 x i32> %broadcast.splatinsert510, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert512 = insertelement <2 x i32> poison, i32 %i.aez, i64 0
  %broadcast.splat513 = shufflevector <2 x i32> %broadcast.splatinsert512, <2 x i32> poison, <2 x i32> zeroinitializer
  %cmp.n523 = icmp eq i64 %.sroa.552.0.extract.shift, %n.vec507
  %xtraiter = and i64 %i.alg, 3                   ; 3 uses
  %48 = add i32 %i.alf, -1
  %i.amk = icmp ult i32 %48, 3
  %unroll_iter = and i64 %i.alg, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod691 = icmp ne i64 %xtraiter, 0
  %min.iters.check492 = icmp ult i32 %i.alj, 4
  %n.vec494 = and i64 %wide.trip.count214.i.i119, 2147483644 ; 4 uses
  %i.aml = add nuw nsw i64 %n.vec494, %i.alg
  %cmp.n501 = icmp eq i64 %n.vec494, %wide.trip.count214.i.i119
  %xtraiter692 = and i64 %wide.trip.count214.i.i119, 3 ; 2 uses
  %lcmp.mod693.not = icmp eq i64 %xtraiter692, 0
  %49 = add i32 %i.act, %.sroa.047.0.extract.trunc
  %50 = xor i32 %.sroa.speculated371.i93, -1
  %51 = add i32 %49, %50
  %52 = sub i32 %51, %.sroa.speculated392.i92
  %53 = mul i32 %52, %i.adx                       ; 2 uses
  %54 = zext i32 %53 to i64                       ; 4 uses
  %min.iters.check477 = icmp ult i32 %53, 4
  %n.vec479 = and i64 %54, 4294967292             ; 4 uses
  %i.amm = add nuw nsw i64 %n.vec479, %i.alg      ; 2 uses
  %cmp.n486 = icmp eq i64 %n.vec479, %54
  %xtraiter694 = and i64 %54, 3                   ; 2 uses
  %lcmp.mod695.not = icmp eq i64 %xtraiter694, 0
  %xtraiter697 = and i64 %44, 3                   ; 3 uses
  %i.amn = add i32 %43, -1
  %i.amo = icmp ult i32 %i.amn, 3
  %unroll_iter701 = and i64 %44, 4294967292
  %lcmp.mod699.not = icmp eq i64 %xtraiter697, 0
  %lcmp.mod700 = icmp ne i64 %xtraiter697, 0
  %xtraiter703 = and i64 %2, 3                    ; 3 uses
  %i.amp = icmp ult i64 %i.amj, 3
  %unroll_iter708 = and i64 %2, 2147483644
  %lcmp.mod705.not = icmp eq i64 %xtraiter703, 0
  %lcmp.mod707 = icmp ne i64 %xtraiter703, 0
  %xtraiter713 = and i64 %46, 3                   ; 3 uses
  %55 = add i32 %45, -1
  %i.amq = icmp ult i32 %55, 3
  %unroll_iter717 = and i64 %46, 4294967292
  %lcmp.mod715.not = icmp eq i64 %xtraiter713, 0
  %lcmp.mod716 = icmp ne i64 %xtraiter713, 0
  %xtraiter719 = and i64 %2, 3                    ; 3 uses
  %i.amr = icmp ult i64 %i.amj, 3
  %unroll_iter724 = and i64 %2, 2147483644
  %lcmp.mod721.not = icmp eq i64 %xtraiter719, 0
  %lcmp.mod723 = icmp ne i64 %xtraiter719, 0
  %xtraiter726 = and i64 %i.alg, 3                ; 3 uses
  %56 = add i32 %i.alf, -1
  %i.ams = icmp ult i32 %56, 3
  %unroll_iter730 = and i64 %i.alg, 4294967292
  %lcmp.mod728.not = icmp eq i64 %xtraiter726, 0
  %lcmp.mod729 = icmp ne i64 %xtraiter726, 0
  %min.iters.check448 = icmp ult i32 %i.ale, 4
  %n.vec450 = and i64 %wide.trip.count74.i.i129, 2147483644 ; 4 uses
  %cmp.n456 = icmp eq i64 %n.vec450, %wide.trip.count74.i.i129
  %xtraiter732 = and i64 %wide.trip.count74.i.i129, 3 ; 2 uses
  %lcmp.mod733.not = icmp eq i64 %xtraiter732, 0
  %xtraiter735 = and i64 %47, 3                   ; 3 uses
  %57 = add i32 %45, -1
  %i.amt = icmp ult i32 %57, 3
  %unroll_iter739 = and i64 %47, 4294967292
  %lcmp.mod737.not = icmp eq i64 %xtraiter735, 0
  %lcmp.mod738 = icmp ne i64 %xtraiter735, 0
  br label %bb.db

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276
  %indvars.iv546.i277 = phi i64 [ %indvars.iv.next547.i279, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276 ], [ %indvars.iv546.i277.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276.preheader ] ; 3 uses
  %i.amu = mul nsw i64 %indvars.iv546.i277, %i.ajp
  %gep.i278 = getelementptr i8, ptr %invariant.gep.i275, i64 %i.amu
  %i.amv = ptrtoint ptr %gep.i278 to i64
  %i.amw = add i64 %i.amv, 63
  %i.amx = and i64 %i.amw, -64
  %i.amy = inttoptr i64 %i.amx to ptr
  %i.amz = getelementptr inbounds i8, ptr %i.amy, i64 %i.ajc
  %i.ana = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %indvars.iv546.i277
  store ptr %i.amz, ptr %i.ana, align 8, !tbaa !118
  %indvars.iv.next547.i279 = add nuw nsw i64 %indvars.iv546.i277, 1 ; 2 uses
  %exitcond550.not.i280 = icmp eq i64 %indvars.iv.next547.i279, %.sroa.552.0.extract.shift
  br i1 %exitcond550.not.i280, label %.preheader.i112, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit325.i276, !llvm.loop !332

._crit_edge523.i115:                              ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.preheader.i112
  %.not.i.i.i.i116 = icmp eq ptr %.sroa.0454.2.i110, null
  br i1 %.not.i.i.i.i116, label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIddEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit, label %bb.da

bb.da:                                            ; preds = %._crit_edge523.i115
  %i.anb = ptrtoint ptr %.sroa.0454.2.i110 to i64
  %i.anc = sub i64 %.sroa.15.2.i109, %i.anb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0454.2.i110, i64 noundef %i.anc) #25
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_18BlockSumIddEEvRKNS_3MatERS3_NS_5Size_IiEENS_6Point_IiEERKS8_RKSA_diib.exit

bb.db:                                            ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i, %.lr.ph522.i117
  %indvars.iv561.i132 = phi i64 [ 0, %.lr.ph522.i117 ], [ %indvars.iv.next562.i151, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 4 uses
  %.0248521.i133 = phi i32 [ 0, %.lr.ph522.i117 ], [ %i.bck, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 3 uses
  %.0257519.i134 = phi ptr [ %i.aca, %.lr.ph522.i117 ], [ %spec.select.i150, %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit362.i ] ; 2 uses
  %i.and = trunc nuw nsw i64 %indvars.iv561.i132 to i32 ; 2 uses
  %i.ane = add i32 %i.ala, %i.and
  %i.anf = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.ane, i32 noundef %.sroa.7.0.copyload.i76, i32 noundef %7)
          to label %bb.dc unwind label %.body.i135 ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.ang = icmp slt i32 %i.anf, 0
  br i1 %i.ang, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not296.i139 = icmp sge i64 %indvars.iv561.i132, %i.amh
  %or.cond.not.i140 = select i1 %i.ap, i1 %.not296.i139, i1 false
  br i1 %or.cond.not.i140, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.anh = sub nsw i32 %i.and, %i.alb
  %i.ani = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.anj = mul nsw i32 %i.anh, %i.afj
  %i.ank = sext i32 %i.anj to i64
  %i.anl = getelementptr inbounds i8, ptr %i.ani, i64 %i.ank
  %i.anm = ptrtoint ptr %i.anl to i64
  %i.ann = add i64 %i.anm, 63
  %i.ano = and i64 %i.ann, -64
  %i.anp = inttoptr i64 %i.ano to ptr
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.anq = sub nsw i32 %i.anf, %i.adc
  %i.anr = sext i32 %i.anq to i64
  %i.ans = mul nsw i64 %i.ads, %i.anr
  %i.ant = getelementptr inbounds i8, ptr %i.afd, i64 %i.ans
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dc
  %.0252.i141 = phi ptr [ %i.ant, %bb.df ], [ %.0.i470592.i114, %bb.dc ], [ %i.anp, %bb.de ] ; 46 uses
  %.0252.i141446 = ptrtoaddr ptr %.0252.i141 to i64 ; 3 uses
  %i.anu = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.anv = ptrtoint ptr %i.anu to i64
  %i.anw = add i64 %i.anv, 63
  %i.anx = and i64 %i.anw, -64                    ; 5 uses
  %i.any = inttoptr i64 %i.anx to ptr             ; 57 uses
  %i.anz = icmp slt i64 %indvars.iv561.i132, %i.amg ; 2 uses
  %or.cond313.i142 = select i1 %i.ap, i1 %i.anz, i1 false
  %i.aoa = load ptr, ptr %i.f, align 8
  %i.aob = ptrtoint ptr %i.aoa to i64
  %i.aoc = add i64 %i.aob, 63
  %i.aod = and i64 %i.aoc, -64
  %i.aoe = inttoptr i64 %i.aod to ptr
  %.0251.i143 = select i1 %or.cond313.i142, ptr %i.aoe, ptr %.0257519.i134 ; 4 uses
  br i1 %i.aky, label %.lr.ph518.i268, label %._crit_edge.i144

.lr.ph518.i268:                                   ; preds = %bb.dg
  %i.aof = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  br i1 %min.iters.check505, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader, label %vector.ph506

vector.ph506:                                     ; preds = %.lr.ph518.i268
  %broadcast.splatinsert508 = insertelement <2 x i32> poison, i32 %.0248521.i133, i64 0
  %broadcast.splat509 = shufflevector <2 x i32> %broadcast.splatinsert508, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph506
  %index515 = phi i64 [ 0, %vector.ph506 ], [ %index.next520, %vector.body514 ] ; 2 uses
  %vec.ind516 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph506 ], [ %vec.ind.next521, %vector.body514 ] ; 2 uses
  %i.aog = add <2 x i32> %broadcast.splat509, %vec.ind516
  %i.aoh = srem <2 x i32> %i.aog, %broadcast.splat511
  %i.aoi = mul nsw <2 x i32> %i.aoh, %broadcast.splat513
  %i.aoj = sext <2 x i32> %i.aoi to <2 x i64>
  %wide.gep517 = getelementptr inbounds i8, ptr %i.aof, <2 x i64> %i.aoj ; 2 uses
  %i.aok = ptrtoint <2 x ptr> %wide.gep517 to <2 x i64>
  %i.aol = add <2 x i64> %i.aok, splat (i64 63)
  %i.aom = and <2 x i64> %i.aol, splat (i64 -64)
  %i.aon = inttoptr <2 x i64> %i.aom to <2 x ptr>
  %wide.gep518 = getelementptr inbounds i8, <2 x ptr> %wide.gep517, i64 %i.alc
  %i.aoo = ptrtoint <2 x ptr> %wide.gep518 to <2 x i64>
  %i.aop = add <2 x i64> %i.aoo, splat (i64 63)
  %i.aoq = and <2 x i64> %i.aop, splat (i64 -64)
  %i.aor = inttoptr <2 x i64> %i.aoq to <2 x ptr>
  %wide.gep519 = getelementptr inbounds i8, <2 x ptr> %i.aor, i64 %i.ald
  %i.aos = select i1 %i.ap, <2 x ptr> %i.aon, <2 x ptr> %wide.gep519
  %i.aot = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %index515
  store <2 x ptr> %i.aos, ptr %i.aot, align 8, !tbaa !118
  %index.next520 = add nuw i64 %index515, 2       ; 2 uses
  %vec.ind.next521 = add <2 x i32> %vec.ind516, splat (i32 2)
  %i.aou = icmp eq i64 %index.next520, %n.vec507
  br i1 %i.aou, label %middle.block522, label %vector.body514, !llvm.loop !333

middle.block522:                                  ; preds = %vector.body514
  br i1 %cmp.n523, label %._crit_edge.i144, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader: ; preds = %.lr.ph518.i268, %middle.block522
  %indvars.iv556.i270.ph = phi i64 [ 0, %.lr.ph518.i268 ], [ %n.vec507, %middle.block522 ]
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269

._crit_edge.i144:                                 ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269, %middle.block522, %bb.dg
  br i1 %i.ap, label %bb.dh, label %bb.di

_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269: ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269
  %indvars.iv556.i270 = phi i64 [ %indvars.iv.next557.i272, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269 ], [ %indvars.iv556.i270.ph, %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269.preheader ] ; 3 uses
  %i.aov = trunc i64 %indvars.iv556.i270 to i32
  %i.aow = add i32 %.0248521.i133, %i.aov
  %i.aox = srem i32 %i.aow, %.sroa.552.0.extract.trunc
  %i.aoy = mul nsw i32 %i.aox, %i.aez
  %i.aoz = sext i32 %i.aoy to i64
  %i.apa = getelementptr inbounds i8, ptr %i.aof, i64 %i.aoz ; 2 uses
  %i.apb = ptrtoint ptr %i.apa to i64
  %i.apc = add i64 %i.apb, 63
  %i.apd = and i64 %i.apc, -64
  %i.ape = inttoptr i64 %i.apd to ptr
  %i.apf = getelementptr inbounds i8, ptr %i.apa, i64 %i.alc
  %i.apg = ptrtoint ptr %i.apf to i64
  %i.aph = add i64 %i.apg, 63
  %i.api = and i64 %i.aph, -64
  %i.apj = inttoptr i64 %i.api to ptr
  %i.apk = getelementptr inbounds i8, ptr %i.apj, i64 %i.ald
  %.0.i328.i271 = select i1 %i.ap, ptr %i.ape, ptr %i.apk
  %i.apl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0454.2.i110, i64 %indvars.iv556.i270
  store ptr %.0.i328.i271, ptr %i.apl, align 8, !tbaa !118
  %indvars.iv.next557.i272 = add nuw nsw i64 %indvars.iv556.i270, 1 ; 2 uses
  %exitcond560.not.i273 = icmp eq i64 %indvars.iv.next557.i272, %.sroa.552.0.extract.shift
  br i1 %exitcond560.not.i273, label %._crit_edge.i144, label %_ZN2cv12cpu_baseline12_GLOBAL__N_19alignCoreEPhib.exit329.i269, !llvm.loop !334

bb.dh:                                            ; preds = %._crit_edge.i144
  br i1 %.not501.i128, label %.preheader41.i.i242, label %.lr.ph.i.i240

.lr.ph.i.i240:                                    ; preds = %bb.dh
  br i1 %i.afn, label %.lr.ph.split.i.i264.preheader, label %.lr.ph.split.us.preheader.i.i241

.lr.ph.split.i.i264.preheader:                    ; preds = %.lr.ph.i.i240
  br i1 %i.ams, label %.lr.ph.split.i.i264.epil.preheader, label %.lr.ph.split.i.i264

.lr.ph.split.us.preheader.i.i241:                 ; preds = %.lr.ph.i.i240
  call void @llvm.memset.p0.i64(ptr align 64 %i.any, i8 0, i64 %i.alh, i1 false), !tbaa !41
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
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.i.i265.epil
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !13
  %i.apo = sext i32 %i.apn to i64
  %i.app = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.apo
  %i.apq = load double, ptr %i.app, align 8, !tbaa !41
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv.i.i265.epil
  store double %i.apq, ptr %i.apr, align 8, !tbaa !41
  %indvars.iv.next.i.i266.epil = add nuw nsw i64 %indvars.iv.i.i265.epil, 1
  %epil.iter727.next = add i64 %epil.iter727, 1   ; 2 uses
  %epil.iter727.cmp.not = icmp eq i64 %epil.iter727.next, %xtraiter726
  br i1 %epil.iter727.cmp.not, label %.preheader41.i.i242, label %.lr.ph.split.i.i264.epil, !llvm.loop !335

.preheader41.i.i242:                              ; preds = %.preheader41.i.i242.loopexit.unr-lcssa, %.lr.ph.split.i.i264.epil, %.lr.ph.split.us.preheader.i.i241, %bb.dh
  %.036.lcssa.i.i243 = phi i32 [ 0, %bb.dh ], [ %i.alf, %.lr.ph.split.us.preheader.i.i241 ], [ %i.alf, %.lr.ph.split.i.i264.epil ], [ %i.alf, %.preheader41.i.i242.loopexit.unr-lcssa ] ; 2 uses
  br i1 %i.amf, label %.lr.ph48.preheader.i.i256, label %.preheader.i.i244

.lr.ph48.preheader.i.i256:                        ; preds = %.preheader41.i.i242
  %i.aps = zext i32 %.036.lcssa.i.i243 to i64     ; 5 uses
  br i1 %min.iters.check448, label %.lr.ph48.i.i257.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph48.preheader.i.i256
  %i.apt = shl nuw nsw i64 %i.aps, 3
end_hunk_4
begin_hunk_5_@_ZN2cv12cpu_baseline8blockSumERKNS_3MatERS1_NS_5Size_IiEENS_6Point_IiEERKS6_RKS8_bi:bb.a
  %indvars.iv.next193.i.i238 = or disjoint i64 %indvars.iv192.i.i237, 1 ; 2 uses
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.next193.i.i238
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !13
  %i.ato = sext i32 %i.atn to i64
  %i.atp = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.ato
  %i.atq = load double, ptr %i.atp, align 8, !tbaa !41
  %i.atr = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv.next193.i.i238
  store double %i.atq, ptr %i.atr, align 8, !tbaa !41
  %indvars.iv.next193.i.i238.1 = or disjoint i64 %indvars.iv192.i.i237, 2 ; 2 uses
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.next193.i.i238.1
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !13
  %i.atu = sext i32 %i.att to i64
  %i.atv = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.atu
  %i.atw = load double, ptr %i.atv, align 8, !tbaa !41
  %i.atx = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv.next193.i.i238.1
  store double %i.atw, ptr %i.atx, align 16, !tbaa !41
  %indvars.iv.next193.i.i238.2 = or disjoint i64 %indvars.iv192.i.i237, 3 ; 2 uses
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv.next193.i.i238.2
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !13
  %i.aua = sext i32 %i.atz to i64
  %i.aub = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.aua
  %i.auc = load double, ptr %i.aub, align 8, !tbaa !41
  %i.aud = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv.next193.i.i238.2
  store double %i.auc, ptr %i.aud, align 8, !tbaa !41
  %indvars.iv.next193.i.i238.3 = add nuw nsw i64 %indvars.iv192.i.i237, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i191.loopexit.unr-lcssa, label %.lr.ph141.split.i.i236, !llvm.loop !342

._crit_edge.i.i191.loopexit.unr-lcssa:            ; preds = %.lr.ph141.split.i.i236
  br i1 %lcmp.mod.not, label %._crit_edge.i.i191, label %.lr.ph141.split.i.i236.epil.preheader

.lr.ph141.split.i.i236.epil.preheader:            ; preds = %._crit_edge.i.i191.loopexit.unr-lcssa, %.lr.ph141.split.i.i236.preheader
  %indvars.iv192.i.i237.epil.init = phi i64 [ 0, %.lr.ph141.split.i.i236.preheader ], [ %indvars.iv.next193.i.i238.3, %._crit_edge.i.i191.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod691)
  br label %.lr.ph141.split.i.i236.epil

.lr.ph141.split.i.i236.epil:                      ; preds = %.lr.ph141.split.i.i236.epil, %.lr.ph141.split.i.i236.epil.preheader
  %indvars.iv192.i.i237.epil = phi i64 [ %indvars.iv.next193.i.i238.epil, %.lr.ph141.split.i.i236.epil ], [ %indvars.iv192.i.i237.epil.init, %.lr.ph141.split.i.i236.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph141.split.i.i236.epil ], [ 0, %.lr.ph141.split.i.i236.epil.preheader ]
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv192.i.i237.epil
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !13
  %i.aug = sext i32 %i.auf to i64
  %i.auh = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.aug
  %i.aui = load double, ptr %i.auh, align 8, !tbaa !41
  %i.auj = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv192.i.i237.epil
  store double %i.aui, ptr %i.auj, align 8, !tbaa !41
  %indvars.iv.next193.i.i238.epil = add nuw nsw i64 %indvars.iv192.i.i237.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i191, label %.lr.ph141.split.i.i236.epil, !llvm.loop !343

._crit_edge.i.i191:                               ; preds = %._crit_edge.i.i191.loopexit.unr-lcssa, %.lr.ph141.split.i.i236.epil, %.lr.ph141.split.us.preheader.i.i190
  br i1 %.not116.i.i118, label %bb.dj, label %.preheader128.i.i192

.preheader128.i.i192:                             ; preds = %._crit_edge.i.i191
  br i1 %i.alk, label %.lr.ph147.i.i210.preheader, label %.loopexit.i.i193

.lr.ph147.i.i210.preheader:                       ; preds = %.preheader128.i.i192
  br i1 %min.iters.check492, label %.lr.ph147.i.i210.preheader684, label %vector.memcheck489

vector.memcheck489:                               ; preds = %.lr.ph147.i.i210.preheader
  %i.auk = add i64 %i.ami, %i.anx
  %i.aul = sub i64 %.0252.i141446, %i.auk
  %diff.check490 = icmp ugt i64 %i.aul, -32
  br i1 %diff.check490, label %.lr.ph147.i.i210.preheader684, label %vector.ph493

vector.ph493:                                     ; preds = %vector.memcheck489
  %invariant.gep = getelementptr [8 x i8], ptr %i.any, i64 %i.alg
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph493
  %index496 = phi i64 [ 0, %vector.ph493 ], [ %index.next499, %vector.body495 ] ; 3 uses
  %i.aum = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %index496 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 16
  %wide.load497 = load <2 x double>, ptr %i.aum, align 8, !tbaa !41
  %wide.load498 = load <2 x double>, ptr %i.aun, align 8, !tbaa !41
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index496 ; 2 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> %wide.load497, ptr %gep, align 8, !tbaa !41
  store <2 x double> %wide.load498, ptr %i.auo, align 8, !tbaa !41
  %index.next499 = add nuw i64 %index496, 4       ; 2 uses
  %i.aup = icmp eq i64 %index.next499, %n.vec494
  br i1 %i.aup, label %middle.block500, label %vector.body495, !llvm.loop !344

middle.block500:                                  ; preds = %vector.body495
  br i1 %cmp.n501, label %.loopexit.i.i193, label %.lr.ph147.i.i210.preheader684

.lr.ph147.i.i210.preheader684:                    ; preds = %vector.memcheck489, %.lr.ph147.i.i210.preheader, %middle.block500
  %indvars.iv209.i.i211.ph = phi i64 [ %i.alg, %vector.memcheck489 ], [ %i.alg, %.lr.ph147.i.i210.preheader ], [ %i.aml, %middle.block500 ] ; 2 uses
  %indvars.iv207.i.i212.ph = phi i64 [ 0, %vector.memcheck489 ], [ 0, %.lr.ph147.i.i210.preheader ], [ %n.vec494, %middle.block500 ] ; 3 uses
  br i1 %lcmp.mod693.not, label %.lr.ph147.i.i210.prol.loopexit, label %.lr.ph147.i.i210.prol

.lr.ph147.i.i210.prol:                            ; preds = %.lr.ph147.i.i210.preheader684, %.lr.ph147.i.i210.prol
  %indvars.iv209.i.i211.prol = phi i64 [ %indvars.iv.next210.i.i214.prol, %.lr.ph147.i.i210.prol ], [ %indvars.iv209.i.i211.ph, %.lr.ph147.i.i210.preheader684 ] ; 2 uses
  %indvars.iv207.i.i212.prol = phi i64 [ %indvars.iv.next208.i.i213.prol, %.lr.ph147.i.i210.prol ], [ %indvars.iv207.i.i212.ph, %.lr.ph147.i.i210.preheader684 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph147.i.i210.prol ], [ 0, %.lr.ph147.i.i210.preheader684 ]
  %i.auq = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv207.i.i212.prol
  %i.aur = load double, ptr %i.auq, align 8, !tbaa !41
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv209.i.i211.prol
  store double %i.aur, ptr %i.aus, align 8, !tbaa !41
  %indvars.iv.next208.i.i213.prol = add nuw nsw i64 %indvars.iv207.i.i212.prol, 1 ; 2 uses
  %indvars.iv.next210.i.i214.prol = add nuw nsw i64 %indvars.iv209.i.i211.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter692
  br i1 %prol.iter.cmp.not, label %.lr.ph147.i.i210.prol.loopexit, label %.lr.ph147.i.i210.prol, !llvm.loop !345

.lr.ph147.i.i210.prol.loopexit:                   ; preds = %.lr.ph147.i.i210.prol, %.lr.ph147.i.i210.preheader684
  %indvars.iv209.i.i211.unr = phi i64 [ %indvars.iv209.i.i211.ph, %.lr.ph147.i.i210.preheader684 ], [ %indvars.iv.next210.i.i214.prol, %.lr.ph147.i.i210.prol ]
  %indvars.iv207.i.i212.unr = phi i64 [ %indvars.iv207.i.i212.ph, %.lr.ph147.i.i210.preheader684 ], [ %indvars.iv.next208.i.i213.prol, %.lr.ph147.i.i210.prol ]
  %i.aut = sub nsw i64 %indvars.iv207.i.i212.ph, %wide.trip.count214.i.i119
  %i.auu = icmp ugt i64 %i.aut, -4
  br i1 %i.auu, label %.loopexit.i.i193, label %.lr.ph147.i.i210

.lr.ph147.i.i210:                                 ; preds = %.lr.ph147.i.i210.prol.loopexit, %.lr.ph147.i.i210
  %indvars.iv209.i.i211 = phi i64 [ %indvars.iv.next210.i.i214.3, %.lr.ph147.i.i210 ], [ %indvars.iv209.i.i211.unr, %.lr.ph147.i.i210.prol.loopexit ] ; 5 uses
  %indvars.iv207.i.i212 = phi i64 [ %indvars.iv.next208.i.i213.3, %.lr.ph147.i.i210 ], [ %indvars.iv207.i.i212.unr, %.lr.ph147.i.i210.prol.loopexit ] ; 5 uses
  %i.auv = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv207.i.i212
  %i.auw = load double, ptr %i.auv, align 8, !tbaa !41
  %i.aux = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv209.i.i211
  store double %i.auw, ptr %i.aux, align 8, !tbaa !41
  %i.auy = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv207.i.i212
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 8
  %i.ava = load double, ptr %i.auz, align 8, !tbaa !41
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv209.i.i211
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  store double %i.ava, ptr %i.avc, align 8, !tbaa !41
  %i.avd = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv207.i.i212
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 16
  %i.avf = load double, ptr %i.ave, align 8, !tbaa !41
  %i.avg = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv209.i.i211
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 16
  store double %i.avf, ptr %i.avh, align 8, !tbaa !41
  %i.avi = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv207.i.i212
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 24
  %i.avk = load double, ptr %i.avj, align 8, !tbaa !41
  %i.avl = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv209.i.i211
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 24
  store double %i.avk, ptr %i.avm, align 8, !tbaa !41
  %indvars.iv.next208.i.i213.3 = add nuw nsw i64 %indvars.iv207.i.i212, 4 ; 2 uses
  %indvars.iv.next210.i.i214.3 = add nuw nsw i64 %indvars.iv209.i.i211, 4
  %exitcond215.not.i.i215.3 = icmp eq i64 %indvars.iv.next208.i.i213.3, %wide.trip.count214.i.i119
  br i1 %exitcond215.not.i.i215.3, label %.loopexit.i.i193, label %.lr.ph147.i.i210, !llvm.loop !346

bb.dj:                                            ; preds = %._crit_edge.i.i191
  br i1 %i.alp, label %.lr.ph151.i.i229.preheader, label %._crit_edge152.i.i216

.lr.ph151.i.i229.preheader:                       ; preds = %bb.dj
  br i1 %min.iters.check477, label %.lr.ph151.i.i229.preheader683, label %vector.memcheck474

vector.memcheck474:                               ; preds = %.lr.ph151.i.i229.preheader
  %i.avn = add i64 %i.ami, %i.anx
  %i.avo = sub i64 %.0252.i141446, %i.avn
  %diff.check475 = icmp ugt i64 %i.avo, -32
  br i1 %diff.check475, label %.lr.ph151.i.i229.preheader683, label %vector.ph478

vector.ph478:                                     ; preds = %vector.memcheck474
  %invariant.gep808 = getelementptr [8 x i8], ptr %i.any, i64 %i.alg
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph478
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next484, %vector.body480 ] ; 3 uses
  %i.avp = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %index481 ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 16
  %wide.load482 = load <2 x double>, ptr %i.avp, align 8, !tbaa !41
  %wide.load483 = load <2 x double>, ptr %i.avq, align 8, !tbaa !41
  %gep809 = getelementptr [8 x i8], ptr %invariant.gep808, i64 %index481 ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %gep809, i64 16
  store <2 x double> %wide.load482, ptr %gep809, align 8, !tbaa !41
  store <2 x double> %wide.load483, ptr %i.avr, align 8, !tbaa !41
  %index.next484 = add nuw i64 %index481, 4       ; 2 uses
  %i.avs = icmp eq i64 %index.next484, %n.vec479
  br i1 %i.avs, label %middle.block485, label %vector.body480, !llvm.loop !347

middle.block485:                                  ; preds = %vector.body480
  br i1 %cmp.n486, label %._crit_edge152.loopexit.i.i235, label %.lr.ph151.i.i229.preheader683

.lr.ph151.i.i229.preheader683:                    ; preds = %vector.memcheck474, %.lr.ph151.i.i229.preheader, %middle.block485
  %indvars.iv219.i.i230.ph = phi i64 [ %i.alg, %vector.memcheck474 ], [ %i.alg, %.lr.ph151.i.i229.preheader ], [ %i.amm, %middle.block485 ] ; 2 uses
  %indvars.iv217.i.i231.ph = phi i64 [ 0, %vector.memcheck474 ], [ 0, %.lr.ph151.i.i229.preheader ], [ %n.vec479, %middle.block485 ] ; 3 uses
  br i1 %lcmp.mod695.not, label %.lr.ph151.i.i229.prol.loopexit, label %.lr.ph151.i.i229.prol

.lr.ph151.i.i229.prol:                            ; preds = %.lr.ph151.i.i229.preheader683, %.lr.ph151.i.i229.prol
  %indvars.iv219.i.i230.prol = phi i64 [ %indvars.iv.next220.i.i233.prol, %.lr.ph151.i.i229.prol ], [ %indvars.iv219.i.i230.ph, %.lr.ph151.i.i229.preheader683 ] ; 2 uses
  %indvars.iv217.i.i231.prol = phi i64 [ %indvars.iv.next218.i.i232.prol, %.lr.ph151.i.i229.prol ], [ %indvars.iv217.i.i231.ph, %.lr.ph151.i.i229.preheader683 ] ; 2 uses
  %prol.iter696 = phi i64 [ %prol.iter696.next, %.lr.ph151.i.i229.prol ], [ 0, %.lr.ph151.i.i229.preheader683 ]
  %i.avt = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv217.i.i231.prol
  %i.avu = load double, ptr %i.avt, align 8, !tbaa !41
  %i.avv = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv219.i.i230.prol
  store double %i.avu, ptr %i.avv, align 8, !tbaa !41
  %indvars.iv.next218.i.i232.prol = add nuw nsw i64 %indvars.iv217.i.i231.prol, 1 ; 2 uses
  %indvars.iv.next220.i.i233.prol = add nuw nsw i64 %indvars.iv219.i.i230.prol, 1 ; 3 uses
  %prol.iter696.next = add i64 %prol.iter696, 1   ; 2 uses
  %prol.iter696.cmp.not = icmp eq i64 %prol.iter696.next, %xtraiter694
  br i1 %prol.iter696.cmp.not, label %.lr.ph151.i.i229.prol.loopexit, label %.lr.ph151.i.i229.prol, !llvm.loop !348

.lr.ph151.i.i229.prol.loopexit:                   ; preds = %.lr.ph151.i.i229.prol, %.lr.ph151.i.i229.preheader683
  %indvars.iv.next220.i.i233.lcssa686.unr = phi i64 [ poison, %.lr.ph151.i.i229.preheader683 ], [ %indvars.iv.next220.i.i233.prol, %.lr.ph151.i.i229.prol ]
  %indvars.iv219.i.i230.unr = phi i64 [ %indvars.iv219.i.i230.ph, %.lr.ph151.i.i229.preheader683 ], [ %indvars.iv.next220.i.i233.prol, %.lr.ph151.i.i229.prol ]
  %indvars.iv217.i.i231.unr = phi i64 [ %indvars.iv217.i.i231.ph, %.lr.ph151.i.i229.preheader683 ], [ %indvars.iv.next218.i.i232.prol, %.lr.ph151.i.i229.prol ]
  %i.avw = sub nsw i64 %indvars.iv217.i.i231.ph, %54
  %i.avx = icmp ugt i64 %i.avw, -4
  br i1 %i.avx, label %._crit_edge152.loopexit.i.i235, label %.lr.ph151.i.i229

.lr.ph151.i.i229:                                 ; preds = %.lr.ph151.i.i229.prol.loopexit, %.lr.ph151.i.i229
  %indvars.iv219.i.i230 = phi i64 [ %indvars.iv.next220.i.i233.3, %.lr.ph151.i.i229 ], [ %indvars.iv219.i.i230.unr, %.lr.ph151.i.i229.prol.loopexit ] ; 5 uses
  %indvars.iv217.i.i231 = phi i64 [ %indvars.iv.next218.i.i232.3, %.lr.ph151.i.i229 ], [ %indvars.iv217.i.i231.unr, %.lr.ph151.i.i229.prol.loopexit ] ; 5 uses
  %i.avy = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv217.i.i231
  %i.avz = load double, ptr %i.avy, align 8, !tbaa !41
  %i.awa = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv219.i.i230
  store double %i.avz, ptr %i.awa, align 8, !tbaa !41
  %i.awb = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv217.i.i231
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 8
  %i.awd = load double, ptr %i.awc, align 8, !tbaa !41
  %i.awe = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv219.i.i230
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 8
  store double %i.awd, ptr %i.awf, align 8, !tbaa !41
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv217.i.i231
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 16
  %i.awi = load double, ptr %i.awh, align 8, !tbaa !41
  %i.awj = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv219.i.i230
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 16
  store double %i.awi, ptr %i.awk, align 8, !tbaa !41
  %i.awl = getelementptr inbounds nuw [8 x i8], ptr %.0252.i141, i64 %indvars.iv217.i.i231
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 24
  %i.awn = load double, ptr %i.awm, align 8, !tbaa !41
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv219.i.i230
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 24
  store double %i.awn, ptr %i.awp, align 8, !tbaa !41
  %indvars.iv.next218.i.i232.3 = add nuw nsw i64 %indvars.iv217.i.i231, 4 ; 2 uses
  %indvars.iv.next220.i.i233.3 = add nuw nsw i64 %indvars.iv219.i.i230, 4 ; 2 uses
  %exitcond225.not.i.i234.3 = icmp eq i64 %indvars.iv.next218.i.i232.3, %wide.trip.count224.i.i120
  br i1 %exitcond225.not.i.i234.3, label %._crit_edge152.loopexit.i.i235, label %.lr.ph151.i.i229, !llvm.loop !349

._crit_edge152.loopexit.i.i235:                   ; preds = %.lr.ph151.i.i229.prol.loopexit, %.lr.ph151.i.i229, %middle.block485
  %indvars.iv.next220.i.i233.lcssa = phi i64 [ %i.amm, %middle.block485 ], [ %indvars.iv.next220.i.i233.lcssa686.unr, %.lr.ph151.i.i229.prol.loopexit ], [ %indvars.iv.next220.i.i233.3, %.lr.ph151.i.i229 ]
  %i.awq = trunc nuw i64 %indvars.iv.next220.i.i233.lcssa to i32
  br label %._crit_edge152.i.i216

._crit_edge152.i.i216:                            ; preds = %._crit_edge152.loopexit.i.i235, %bb.dj
  %.2109.lcssa.i.i217 = phi i32 [ %i.alf, %bb.dj ], [ %i.awq, %._crit_edge152.loopexit.i.i235 ]
  br i1 %.not525.i122, label %.loopexit.i.i193, label %.lr.ph157.i.i218

.lr.ph157.i.i218:                                 ; preds = %._crit_edge152.i.i216
  %i.awr = zext i32 %.2109.lcssa.i.i217 to i64    ; 3 uses
  br i1 %i.afn, label %.lr.ph157.split.i.i222.preheader, label %.lr.ph157.split.us.preheader.i.i219

.lr.ph157.split.i.i222.preheader:                 ; preds = %.lr.ph157.i.i218
  br i1 %i.amo, label %.lr.ph157.split.i.i222.epil.preheader, label %.lr.ph157.split.i.i222

.lr.ph157.split.us.preheader.i.i219:              ; preds = %.lr.ph157.i.i218
  %.pn.i.i220 = shl nuw nsw i64 %i.awr, 3
  %scevgep.sink.i.i221 = getelementptr i8, ptr %i.any, i64 %.pn.i.i220
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.sink.i.i221, i8 0, i64 %i.alr, i1 false), !tbaa !41
  br label %.loopexit.i.i193

.lr.ph157.split.i.i222:                           ; preds = %.lr.ph157.split.i.i222.preheader, %.lr.ph157.split.i.i222
  %indvars.iv228.i.i223 = phi i64 [ %indvars.iv.next229.i.i227.3, %.lr.ph157.split.i.i222 ], [ %i.awr, %.lr.ph157.split.i.i222.preheader ] ; 5 uses
  %indvars.iv226.i.i224 = phi i64 [ %indvars.iv.next227.i.i226.3, %.lr.ph157.split.i.i222 ], [ 0, %.lr.ph157.split.i.i222.preheader ] ; 5 uses
  %niter702 = phi i64 [ %niter702.next.3, %.lr.ph157.split.i.i222 ], [ 0, %.lr.ph157.split.i.i222.preheader ]
  %gep265.i.i225 = getelementptr [4 x i8], ptr %invariant.gep264.i.i124, i64 %indvars.iv226.i.i224
  %i.aws = load i32, ptr %gep265.i.i225, align 4, !tbaa !13
  %i.awt = sext i32 %i.aws to i64
  %i.awu = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.awt
  %i.awv = load double, ptr %i.awu, align 8, !tbaa !41
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv228.i.i223
  store double %i.awv, ptr %i.aww, align 8, !tbaa !41
  %i.awx = getelementptr [4 x i8], ptr %invariant.gep264.i.i124, i64 %indvars.iv226.i.i224
  %gep265.i.i225.1 = getelementptr i8, ptr %i.awx, i64 4
  %i.awy = load i32, ptr %gep265.i.i225.1, align 4, !tbaa !13
  %i.awz = sext i32 %i.awy to i64
  %i.axa = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.awz
  %i.axb = load double, ptr %i.axa, align 8, !tbaa !41
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv228.i.i223
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 8
  store double %i.axb, ptr %i.axd, align 8, !tbaa !41
  %i.axe = getelementptr [4 x i8], ptr %invariant.gep264.i.i124, i64 %indvars.iv226.i.i224
  %gep265.i.i225.2 = getelementptr i8, ptr %i.axe, i64 8
  %i.axf = load i32, ptr %gep265.i.i225.2, align 4, !tbaa !13
  %i.axg = sext i32 %i.axf to i64
  %i.axh = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.axg
  %i.axi = load double, ptr %i.axh, align 8, !tbaa !41
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv228.i.i223
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 16
  store double %i.axi, ptr %i.axk, align 8, !tbaa !41
  %i.axl = getelementptr [4 x i8], ptr %invariant.gep264.i.i124, i64 %indvars.iv226.i.i224
  %gep265.i.i225.3 = getelementptr i8, ptr %i.axl, i64 12
  %i.axm = load i32, ptr %gep265.i.i225.3, align 4, !tbaa !13
  %i.axn = sext i32 %i.axm to i64
  %i.axo = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.axn
  %i.axp = load double, ptr %i.axo, align 8, !tbaa !41
  %i.axq = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv228.i.i223
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 24
  store double %i.axp, ptr %i.axr, align 8, !tbaa !41
  %indvars.iv.next227.i.i226.3 = add nuw nsw i64 %indvars.iv226.i.i224, 4 ; 2 uses
  %indvars.iv.next229.i.i227.3 = add nuw nsw i64 %indvars.iv228.i.i223, 4 ; 2 uses
  %niter702.next.3 = add i64 %niter702, 4         ; 2 uses
  %niter702.ncmp.3 = icmp eq i64 %niter702.next.3, %unroll_iter701
  br i1 %niter702.ncmp.3, label %.loopexit.i.i193.loopexit.unr-lcssa, label %.lr.ph157.split.i.i222, !llvm.loop !350

.loopexit.i.i193.loopexit.unr-lcssa:              ; preds = %.lr.ph157.split.i.i222
  br i1 %lcmp.mod699.not, label %.loopexit.i.i193, label %.lr.ph157.split.i.i222.epil.preheader

.lr.ph157.split.i.i222.epil.preheader:            ; preds = %.loopexit.i.i193.loopexit.unr-lcssa, %.lr.ph157.split.i.i222.preheader
  %indvars.iv228.i.i223.epil.init = phi i64 [ %i.awr, %.lr.ph157.split.i.i222.preheader ], [ %indvars.iv.next229.i.i227.3, %.loopexit.i.i193.loopexit.unr-lcssa ]
  %indvars.iv226.i.i224.epil.init = phi i64 [ 0, %.lr.ph157.split.i.i222.preheader ], [ %indvars.iv.next227.i.i226.3, %.loopexit.i.i193.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod700)
  br label %.lr.ph157.split.i.i222.epil

.lr.ph157.split.i.i222.epil:                      ; preds = %.lr.ph157.split.i.i222.epil, %.lr.ph157.split.i.i222.epil.preheader
  %indvars.iv228.i.i223.epil = phi i64 [ %indvars.iv.next229.i.i227.epil, %.lr.ph157.split.i.i222.epil ], [ %indvars.iv228.i.i223.epil.init, %.lr.ph157.split.i.i222.epil.preheader ] ; 2 uses
  %indvars.iv226.i.i224.epil = phi i64 [ %indvars.iv.next227.i.i226.epil, %.lr.ph157.split.i.i222.epil ], [ %indvars.iv226.i.i224.epil.init, %.lr.ph157.split.i.i222.epil.preheader ] ; 2 uses
  %epil.iter698 = phi i64 [ %epil.iter698.next, %.lr.ph157.split.i.i222.epil ], [ 0, %.lr.ph157.split.i.i222.epil.preheader ]
  %gep265.i.i225.epil = getelementptr [4 x i8], ptr %invariant.gep264.i.i124, i64 %indvars.iv226.i.i224.epil
  %i.axs = load i32, ptr %gep265.i.i225.epil, align 4, !tbaa !13
  %i.axt = sext i32 %i.axs to i64
  %i.axu = getelementptr inbounds [8 x i8], ptr %.0252.i141, i64 %i.axt
  %i.axv = load double, ptr %i.axu, align 8, !tbaa !41
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv228.i.i223.epil
  store double %i.axv, ptr %i.axw, align 8, !tbaa !41
  %indvars.iv.next227.i.i226.epil = add nuw nsw i64 %indvars.iv226.i.i224.epil, 1
  %indvars.iv.next229.i.i227.epil = add nuw nsw i64 %indvars.iv228.i.i223.epil, 1
  %epil.iter698.next = add i64 %epil.iter698, 1   ; 2 uses
  %epil.iter698.cmp.not = icmp eq i64 %epil.iter698.next, %xtraiter697
  br i1 %epil.iter698.cmp.not, label %.loopexit.i.i193, label %.lr.ph157.split.i.i222.epil, !llvm.loop !351

.loopexit.i.i193:                                 ; preds = %.lr.ph147.i.i210.prol.loopexit, %.lr.ph147.i.i210, %.loopexit.i.i193.loopexit.unr-lcssa, %.lr.ph157.split.i.i222.epil, %middle.block500, %.lr.ph157.split.us.preheader.i.i219, %._crit_edge152.i.i216, %.preheader128.i.i192
  br i1 %.not500.i125, label %_ZN2cv12cpu_baseline12_GLOBAL__N_114BlockSumBorderIddEEiPKT0_S5_PS3_PT_S6_PS8_PKiiiiiiiibiid.exit.i, label %.preheader.lr.ph.i.i194

.preheader.lr.ph.i.i194:                          ; preds = %.loopexit.i.i193
  %i.axx = load ptr, ptr %i.alu, align 8, !tbaa !118
  %i.axy = load ptr, ptr %.sroa.0454.2.i110, align 8, !tbaa !118
  br label %.preheader.i330.i195

.preheader.i330.i195:                             ; preds = %._crit_edge161.i.i197, %.preheader.lr.ph.i.i194
  %indvars.iv246.i.i196 = phi i64 [ 0, %.preheader.lr.ph.i.i194 ], [ %indvars.iv.next247.i.i199, %._crit_edge161.i.i197 ] ; 6 uses
  br i1 %i.als, label %.lr.ph160.preheader.i.i202, label %._crit_edge161.i.i197

.lr.ph160.preheader.i.i202:                       ; preds = %.preheader.i330.i195
  %invariant.gep266.i.i203 = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %indvars.iv246.i.i196 ; 5 uses
  br i1 %i.amp, label %.lr.ph160.i.i204.epil.preheader, label %.lr.ph160.i.i204

.lr.ph160.i.i204:                                 ; preds = %.lr.ph160.preheader.i.i202, %.lr.ph160.i.i204
  %indvars.iv239.i.i205 = phi i64 [ %indvars.iv.next240.i.i208.3, %.lr.ph160.i.i204 ], [ 0, %.lr.ph160.preheader.i.i202 ] ; 5 uses
  %.0105159.i.i206 = phi double [ %i.ayk, %.lr.ph160.i.i204 ], [ 0.000000e+00, %.lr.ph160.preheader.i.i202 ]
  %niter709 = phi i64 [ %niter709.next.3, %.lr.ph160.i.i204 ], [ 0, %.lr.ph160.preheader.i.i202 ]
  %i.axz = mul nuw nsw i64 %indvars.iv239.i.i205, %i.alv
  %gep267.i.i207 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep266.i.i203, i64 %i.axz
  %i.aya = load double, ptr %gep267.i.i207, align 8, !tbaa !41
  %i.ayb = fadd double %.0105159.i.i206, %i.aya
  %indvars.iv.next240.i.i208 = or disjoint i64 %indvars.iv239.i.i205, 1
  %i.ayc = mul nuw nsw i64 %indvars.iv.next240.i.i208, %i.alv
  %gep267.i.i207.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep266.i.i203, i64 %i.ayc
  %i.ayd = load double, ptr %gep267.i.i207.1, align 8, !tbaa !41
  %i.aye = fadd double %i.ayb, %i.ayd
  %indvars.iv.next240.i.i208.1 = or disjoint i64 %indvars.iv239.i.i205, 2
  %i.ayf = mul nuw nsw i64 %indvars.iv.next240.i.i208.1, %i.alv
  %gep267.i.i207.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep266.i.i203, i64 %i.ayf
  %i.ayg = load double, ptr %gep267.i.i207.2, align 8, !tbaa !41
  %i.ayh = fadd double %i.aye, %i.ayg
  %indvars.iv.next240.i.i208.2 = or disjoint i64 %indvars.iv239.i.i205, 3
  %i.ayi = mul nuw nsw i64 %indvars.iv.next240.i.i208.2, %i.alv
  %gep267.i.i207.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep266.i.i203, i64 %i.ayi
  %i.ayj = load double, ptr %gep267.i.i207.3, align 8, !tbaa !41
  %i.ayk = fadd double %i.ayh, %i.ayj             ; 3 uses
  %indvars.iv.next240.i.i208.3 = add nuw nsw i64 %indvars.iv239.i.i205, 4 ; 2 uses
  %niter709.next.3 = add i64 %niter709, 4         ; 2 uses
  %niter709.ncmp.3 = icmp eq i64 %niter709.next.3, %unroll_iter708
  br i1 %niter709.ncmp.3, label %._crit_edge161.i.i197.loopexit.unr-lcssa, label %.lr.ph160.i.i204, !llvm.loop !352

._crit_edge161.i.i197.loopexit.unr-lcssa:         ; preds = %.lr.ph160.i.i204
  br i1 %lcmp.mod705.not, label %._crit_edge161.i.i197, label %.lr.ph160.i.i204.epil.preheader

.lr.ph160.i.i204.epil.preheader:                  ; preds = %._crit_edge161.i.i197.loopexit.unr-lcssa, %.lr.ph160.preheader.i.i202
  %indvars.iv239.i.i205.epil.init = phi i64 [ 0, %.lr.ph160.preheader.i.i202 ], [ %indvars.iv.next240.i.i208.3, %._crit_edge161.i.i197.loopexit.unr-lcssa ]
  %.0105159.i.i206.epil.init = phi double [ 0.000000e+00, %.lr.ph160.preheader.i.i202 ], [ %i.ayk, %._crit_edge161.i.i197.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod707)
  br label %.lr.ph160.i.i204.epil

.lr.ph160.i.i204.epil:                            ; preds = %.lr.ph160.i.i204.epil, %.lr.ph160.i.i204.epil.preheader
  %indvars.iv239.i.i205.epil = phi i64 [ %indvars.iv239.i.i205.epil.init, %.lr.ph160.i.i204.epil.preheader ], [ %indvars.iv.next240.i.i208.epil, %.lr.ph160.i.i204.epil ] ; 2 uses
  %.0105159.i.i206.epil = phi double [ %.0105159.i.i206.epil.init, %.lr.ph160.i.i204.epil.preheader ], [ %i.ayn, %.lr.ph160.i.i204.epil ]
  %epil.iter704 = phi i64 [ 0, %.lr.ph160.i.i204.epil.preheader ], [ %epil.iter704.next, %.lr.ph160.i.i204.epil ]
  %i.ayl = mul nuw nsw i64 %indvars.iv239.i.i205.epil, %i.alv
  %gep267.i.i207.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep266.i.i203, i64 %i.ayl
  %i.aym = load double, ptr %gep267.i.i207.epil, align 8, !tbaa !41
  %i.ayn = fadd double %.0105159.i.i206.epil, %i.aym ; 2 uses
  %indvars.iv.next240.i.i208.epil = add nuw nsw i64 %indvars.iv239.i.i205.epil, 1
  %epil.iter704.next = add i64 %epil.iter704, 1   ; 2 uses
  %epil.iter704.cmp.not = icmp eq i64 %epil.iter704.next, %xtraiter703
  br i1 %epil.iter704.cmp.not, label %._crit_edge161.i.i197, label %.lr.ph160.i.i204.epil, !llvm.loop !353

._crit_edge161.i.i197:                            ; preds = %._crit_edge161.i.i197.loopexit.unr-lcssa, %.lr.ph160.i.i204.epil, %.preheader.i330.i195
  %.0105.lcssa.i.i198 = phi double [ 0.000000e+00, %.preheader.i330.i195 ], [ %i.ayk, %._crit_edge161.i.i197.loopexit.unr-lcssa ], [ %i.ayn, %.lr.ph160.i.i204.epil ] ; 2 uses
  %i.ayo = getelementptr inbounds nuw [8 x i8], ptr %i.axx, i64 %indvars.iv246.i.i196
  store double %.0105.lcssa.i.i198, ptr %i.ayo, align 8, !tbaa !41
  %i.ayp = getelementptr inbounds nuw [8 x i8], ptr %.0.i322594.i113, i64 %indvars.iv246.i.i196 ; 2 uses
  %i.ayq = load double, ptr %i.ayp, align 8, !tbaa !41
  %i.ayr = fadd double %.0105.lcssa.i.i198, %i.ayq ; 2 uses
  %i.ays = fmul double %i.ak, %i.ayr
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %.0251.i143, i64 %indvars.iv246.i.i196
end_hunk_5
