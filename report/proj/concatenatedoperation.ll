Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/concatenatedoperation?download=true
inline.NumInlined: 1478
inline.NumDeleted: 505
begin_hunk_0_@_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationEEED2Ev:bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !120
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !120
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj9operation21ConcatenatedOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !2
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation19CoordinateOperation16interpolationCRSEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN5osgeo4proj9operation19CoordinateOperation20setCRSsUpdateInverseERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  ret void
}

declare hidden void @_ZN5osgeo4proj9operation19CoordinateOperation20setCRSsUpdateInverseERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RKS9_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj9operation21ConcatenatedOperation8fixStepsERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RSt6vectorINS5_IS6_INS1_19CoordinateOperationEEEESaISG_EERKS6_INS0_2io15DatabaseContextEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %7 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %10 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %12 = alloca %"class.std::shared_ptr.41", align 8 ; 8 uses
  %13 = alloca %"class.dropbox::oxygen::nn", align 8 ; 6 uses
  %14 = alloca %"class.std::shared_ptr.41", align 8 ; 8 uses
  %15 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %16 = alloca %"class.dropbox::oxygen::nn", align 8 ; 6 uses
  %17 = alloca %"class.std::shared_ptr.41", align 16 ; 26 uses
  %18 = alloca %"class.std::shared_ptr.41", align 16 ; 23 uses
  %19 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %20 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %21 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %22 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %23 = alloca %"class.std::shared_ptr.141", align 8 ; 8 uses
  %24 = alloca %"class.dropbox::oxygen::nn.55", align 16 ; 8 uses
  %25 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %26 = alloca %"class.dropbox::oxygen::nn", align 16 ; 7 uses
  %27 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %28 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %29 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %30 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %31 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %32 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %33 = alloca %"class.dropbox::oxygen::nn", align 16 ; 7 uses
  %34 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %35 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %36 = alloca %"class.dropbox::oxygen::nn.144", align 8 ; 7 uses
  %37 = alloca %"class.std::shared_ptr.52", align 8 ; 7 uses
  %38 = alloca %"class.dropbox::oxygen::nn", align 16 ; 7 uses
  %39 = alloca %"class.dropbox::oxygen::nn.55", align 16 ; 7 uses
  %40 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %41 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %42 = alloca %"class.dropbox::oxygen::nn", align 16 ; 7 uses
  %43 = alloca %"class.dropbox::oxygen::nn.55", align 16 ; 7 uses
  %44 = alloca %"class.dropbox::oxygen::nn.55", align 16 ; 7 uses
  %45 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %46 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %50 = alloca %"class.std::shared_ptr.41", align 8 ; 6 uses
  %51 = alloca %"class.dropbox::oxygen::nn", align 16 ; 7 uses
  %52 = alloca %"class.dropbox::oxygen::nn.55", align 16 ; 7 uses
  %53 = alloca %"class.dropbox::oxygen::nn.55", align 16 ; 7 uses
  %54 = alloca %"class.std::shared_ptr.41", align 16 ; 7 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %56 = alloca %"class.dropbox::oxygen::nn.148", align 8 ; 6 uses
  %57 = alloca %"class.dropbox::oxygen::nn.55", align 16 ; 7 uses
  %58 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %59 = alloca %"class.dropbox::oxygen::nn.185", align 8 ; 8 uses
  %60 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %63 = alloca %"class.std::shared_ptr.189", align 8 ; 7 uses
  %64 = alloca %"class.dropbox::oxygen::nn.148", align 8 ; 7 uses
  %65 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %66 = alloca %"class.dropbox::oxygen::nn.173", align 8 ; 7 uses
  %67 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %69 = alloca %"class.dropbox::oxygen::nn.148", align 8 ; 7 uses
  %70 = alloca %"class.std::shared_ptr.201", align 8 ; 7 uses
  %71 = alloca %"class.std::shared_ptr.41", align 8 ; 11 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %74 = alloca %"class.dropbox::oxygen::nn", align 16 ; 7 uses
  %75 = alloca %"class.dropbox::oxygen::nn.144", align 8 ; 7 uses
  %76 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %77 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %78 = alloca %"class.dropbox::oxygen::nn", align 16 ; 10 uses
  %79 = alloca %"class.dropbox::oxygen::nn.144", align 8 ; 7 uses
  %80 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %81 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %82 = alloca %"class.dropbox::oxygen::nn", align 16 ; 10 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %84 = alloca %"class.std::allocator.38", align 1 ; 4 uses
  %85 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 8 uses
  %86 = alloca %"class.std::shared_ptr.41", align 8 ; 7 uses
  %87 = alloca %"class.std::shared_ptr.41", align 8 ; 9 uses
  %88 = alloca %"class.dropbox::oxygen::nn.144", align 8 ; 7 uses
  %89 = alloca %"class.dropbox::oxygen::nn.55", align 8 ; 7 uses
  %90 = alloca %"class.dropbox::oxygen::nn", align 16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 17 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !30     ; 6 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  call void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !51
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.e:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.f:                                             ; preds = %bb.c
  %i.n = call ptr @__dynamic_cast(ptr nonnull %i.j, ptr nonnull @_ZTIN5osgeo4proj9operation19CoordinateOperationE, ptr nonnull @_ZTIN5osgeo4proj9operation10ConversionE, i64 -1) #25 ; 2 uses
  %.not353 = icmp eq ptr %i.n, null
  %i.o = load ptr, ptr %5, align 8
  %i.p = icmp ne ptr %i.o, null
  %or.cond1239 = select i1 %.not353, i1 true, i1 %i.p
  %i.q = load ptr, ptr %6, align 8
  %i.r = icmp ne ptr %i.q, null
  %or.cond1241 = select i1 %or.cond1239, i1 true, i1 %i.r
  br i1 %or.cond1241, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation15SingleOperation6methodEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #29
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !145
  %i.u = call noundef i32 @_ZNK5osgeo4proj9operation15OperationMethod11getEPSGCodeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t) #29
  %i.v = invoke noundef zeroext i1 @_ZN5osgeo4proj9operation19isAxisOrderReversalEi(i32 noundef %i.u)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.w = load ptr, ptr %0, align 8, !tbaa !54
  invoke void @_ZNK5osgeo4proj3crs3CRS22applyAxisOrderReversalEPKc(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.55") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull @.str.3)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation19CoordinateOperation16interpolationCRSEv(ptr noundef nonnull align 8 dereferenceable(72) %i.x)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.j
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation20setCRSsUpdateInverseERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit unwind label %bb.r

_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit: ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ab, align 8, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !57
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #25, !inline_history !3
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #25, !inline_history !3
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %bb.n ], [ %i.ao, %bb.o ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.p, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, !prof !31

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit: ; preds = %_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.thread

bb.q:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %.noexc, %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.aq, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.af

.thread:                                          ; preds = %bb.c, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, %bb.h, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !36 ; 8 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.au, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !57
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #25, !inline_history !2
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i468 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i468, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.ax, %bb.w ], [ %i.bh, %bb.x ]
  %i.bi = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bi, label %bb.y, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36 ; 8 uses
  %.not.i.i469 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i469, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit473, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bl, align 8, !tbaa !56
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !57
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #25, !inline_history !2
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit473

bb.ab:                                            ; preds = %bb.z
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i470 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i470, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i471

bb.ad:                                            ; preds = %bb.ab
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i471

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i471: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i472 = phi i32 [ %i.bo, %bb.ac ], [ %i.by, %bb.ad ]
  %i.bz = icmp eq i32 %.0.i.i.i.i472, 1
  br i1 %i.bz, label %bb.ae, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit473, !prof !31

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i471
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit473

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit473: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i471, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !29
  %.pre1741 = load ptr, ptr %2, align 8, !tbaa !30 ; 2 uses
  br label %bb.ah

bb.af:                                            ; preds = %bb.s, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %i.m, %bb.e ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.af ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ajo

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit473, %bb.a
  %.pre17471759 = phi ptr [ %.pre1741, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit473 ], [ %i.g, %bb.a ]
  %91 = phi ptr [ %.pre1741, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit473 ], [ %i.f, %bb.a ]
  %i.ca = phi ptr [ %.pre, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit473 ], [ %i.f, %bb.a ] ; 3 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %91 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp ugt i64 %i.cd, 16
  br i1 %i.ce, label %bb.ai, label %bb.bo

bb.ai:                                            ; preds = %bb.ah
  %i.cf = getelementptr inbounds i8, ptr %i.ca, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !51
  call void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !51
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.ch)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !51 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.thread1157, label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.al:                                            ; preds = %bb.an
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.am:                                            ; preds = %bb.aj
  %i.cm = call ptr @__dynamic_cast(ptr nonnull %i.ci, ptr nonnull @_ZTIN5osgeo4proj9operation19CoordinateOperationE, ptr nonnull @_ZTIN5osgeo4proj9operation10ConversionE, i64 -1) #25 ; 2 uses
  %.not357 = icmp eq ptr %i.cm, null
  %i.cn = load ptr, ptr %8, align 8
  %i.co = icmp ne ptr %i.cn, null
  %or.cond1243 = select i1 %.not357, i1 true, i1 %i.co
  %i.cp = load ptr, ptr %9, align 8
  %i.cq = icmp ne ptr %i.cp, null
  %or.cond1245 = select i1 %or.cond1243, i1 true, i1 %i.cq
  br i1 %or.cond1245, label %.thread1157, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation15SingleOperation6methodEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #29
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !145
  %i.ct = call noundef i32 @_ZNK5osgeo4proj9operation15OperationMethod11getEPSGCodeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cs) #29
  %i.cu = invoke noundef zeroext i1 @_ZN5osgeo4proj9operation19isAxisOrderReversalEi(i32 noundef %i.ct)
          to label %bb.ao unwind label %bb.al

bb.ao:                                            ; preds = %bb.an
  br i1 %i.cu, label %bb.ap, label %.thread1157

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.cv = load ptr, ptr %1, align 8, !tbaa !54
  invoke void @_ZNK5osgeo4proj3crs3CRS22applyAxisOrderReversalEPKc(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.55") align 8 %10, ptr noundef nonnull align 8 dereferenceable(64) %i.cv, ptr noundef nonnull @.str.3)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.cw = load ptr, ptr %i.cf, align 8, !tbaa !51 ; 2 uses
  %i.cx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation19CoordinateOperation16interpolationCRSEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cw)
          to label %.noexc474 unwind label %bb.ay

.noexc474:                                        ; preds = %bb.aq
  invoke void @_ZN5osgeo4proj9operation19CoordinateOperation20setCRSsUpdateInverseERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESC_RKS9_(ptr noundef nonnull align 8 dereferenceable(72) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.cx)
          to label %_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit476 unwind label %bb.ay

_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit476: ; preds = %.noexc474
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i477 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i477, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit481, label %bb.ar

bb.ar:                                            ; preds = %_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit476
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 4294967297
  %i.dd = trunc i64 %i.db to i32                  ; 2 uses
  br i1 %i.dc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.da, align 8, !tbaa !56
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !57
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !26
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #25, !inline_history !3
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !26
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #25, !inline_history !3
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit481

bb.at:                                            ; preds = %bb.ar
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i478 = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i478, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i479

bb.av:                                            ; preds = %bb.at
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i479

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i479: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i480 = phi i32 [ %i.dd, %bb.au ], [ %i.dn, %bb.av ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i480, 1
  br i1 %i.do, label %bb.aw, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit481, !prof !31

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i479
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit481

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit481: ; preds = %_ZN5osgeo4proj9operation21ConcatenatedOperation20setCRSsUpdateInverseEPNS1_19CoordinateOperationERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEESE_.exit476, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i479, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.thread1157

bb.ax:                                            ; preds = %bb.ap
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %.noexc474, %bb.aq
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn358 = phi { ptr, i32 } [ %i.dq, %bb.ay ], [ %i.dp, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.bm

.thread1157:                                      ; preds = %bb.aj, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit481, %bb.ao, %bb.am
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !36 ; 8 uses
  %.not.i.i482 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i482, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit486, label %bb.ba

bb.ba:                                            ; preds = %.thread1157
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.dt, align 8, !tbaa !56
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !57
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !26
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #25, !inline_history !2
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !26
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit486

bb.bc:                                            ; preds = %bb.ba
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i483 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i483, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i484

bb.be:                                            ; preds = %bb.bc
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i484

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i484: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i485 = phi i32 [ %i.dw, %bb.bd ], [ %i.eg, %bb.be ]
  %i.eh = icmp eq i32 %.0.i.i.i.i485, 1
  br i1 %i.eh, label %bb.bf, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit486, !prof !31

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i484
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit486

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit486: ; preds = %.thread1157, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i484, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !36 ; 8 uses
  %.not.i.i487 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i487, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit491, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit486
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %i.el = load atomic i64, ptr %i.ek acquire, align 8 ; 2 uses
  %i.em = icmp eq i64 %i.el, 4294967297
  %i.en = trunc i64 %i.el to i32                  ; 2 uses
  br i1 %i.em, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj9operation21ConcatenatedOperation21createComputeMetadataERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEESaISA_EEb:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0277.0360, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !36 ; 2 uses
  %i.ci = load <2 x ptr>, ptr %.sroa.0277.0360, align 8, !tbaa !37
  store <2 x ptr> %i.ci, ptr %i.ce, align 8, !tbaa !37
  %.not.i.i.i.i.i115 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i115, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 3 uses
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !39
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.cn = atomicrmw volatile add ptr %i.cj, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !29
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i: ; preds = %bb.z, %bb.y, %bb.w
  %i.co = phi ptr [ %i.ce, %bb.w ], [ %i.ce, %bb.y ], [ %.pre.i, %bb.z ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  store ptr %i.cp, ptr %i.s, align 8, !tbaa !29
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

bb.aa:                                            ; preds = %.lr.ph
  %i.cq = load ptr, ptr %6, align 16, !tbaa !30   ; 5 uses
  %i.cr = ptrtoint ptr %i.ce to i64
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775792
  br i1 %i.cu, label %bb.ab, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #28
          to label %.noexc243 unwind label %.loopexit.split-lp301.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc243:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.aa
  %i.cv = ashr exact i64 %i.ct, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = call i64 @llvm.umin.i64(i64 %i.cw, i64 576460752303423487)
  %i.cz = select i1 %i.cx, i64 576460752303423487, i64 %i.cy ; 3 uses
  %.not.i.i238 = icmp ne i64 %i.cz, 0
  call void @llvm.assume(i1 %.not.i.i238)
  %i.da = shl nuw nsw i64 %i.cz, 4
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #27
          to label %.noexc244 unwind label %.loopexit.split-lp301.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc244:                                        ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0277.0360, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !36 ; 2 uses
  %i.df = load <2 x ptr>, ptr %.sroa.0277.0360, align 8, !tbaa !37
  store <2 x ptr> %i.df, ptr %i.dc, align 8, !tbaa !37
  %.not.i.i.i.i.i239 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i239, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241, label %bb.ac

bb.ac:                                            ; preds = %.noexc244
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i240 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i240, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !39
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241

bb.ae:                                            ; preds = %bb.ac
  %i.dk = atomicrmw volatile add ptr %i.dg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241: ; preds = %bb.ae, %bb.ad, %.noexc244
  %.not10.i.i.i.i = icmp eq ptr %i.cq, %i.ce
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %i.db, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i ], [ %i.cq, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.dm = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !37, !alias.scope !197
  store ptr null, ptr %i.dl, align 8, !tbaa !36, !alias.scope !197
  store <2 x ptr> %i.dm, ptr %.012.i.i.i.i, align 8, !tbaa !37, !alias.scope !196
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !51, !alias.scope !197
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i242 = icmp eq ptr %i.dn, %i.ce
  br i1 %.not.i.i.i.i242, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241
  %.0.lcssa.i.i.i.i = phi ptr [ %i.db, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i241 ], [ %i.do, %.lr.ph.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.cq, null
  br i1 %.not.i23.i, label %.noexc116, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i
  %i.dq = load ptr, ptr %i.t, align 16, !tbaa !33
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.dr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.ds) #26
  br label %.noexc116

.noexc116:                                        ; preds = %bb.af, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i
  store ptr %i.db, ptr %6, align 16, !tbaa !30
  store ptr %i.dp, ptr %i.s, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.dt, ptr %i.t, align 16, !tbaa !33
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit: ; preds = %.noexc116, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i
  %i.du = phi ptr [ %i.dp, %.noexc116 ], [ %i.cp, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0277.0360, i64 16
  %.not298 = icmp eq ptr %.sroa.0277.0360, %.09.i.i.i.i.i
  br i1 %.not298, label %._crit_edge, label %.lr.ph

.loopexit.split-lp301.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12_M_check_lenEmPKc.exit.i, %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  br label %.loopexit.split-lp307

.loopexit.split-lp307:                            ; preds = %.loopexit.split-lp307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp301.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn100 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp301.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp641, %.loopexit.split-lp307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit174

bb.ag:                                            ; preds = %bb.h, %bb.i
  %i.dw = load ptr, ptr %i.s, align 8, !tbaa !29  ; 6 uses
  %i.dx = load ptr, ptr %i.t, align 16, !tbaa !33
  %.not.i117 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not.i117, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.ae, ptr %i.dw, align 8, !tbaa !51
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0281.0362, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !36 ; 3 uses
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !36
  %.not.i.i.i.i.i118 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i118, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i120, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i119 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i.i119, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !39
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.eb, align 4, !tbaa !39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i120

bb.ak:                                            ; preds = %bb.ai
  %i.ef = atomicrmw volatile add ptr %i.eb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i121 = load ptr, ptr %i.s, align 8, !tbaa !29
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i120

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i120: ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.eg = phi ptr [ %i.dw, %bb.ah ], [ %i.dw, %bb.aj ], [ %.pre.i121, %bb.ak ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store ptr %i.eh, ptr %i.s, align 8, !tbaa !29
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit124

bb.al:                                            ; preds = %bb.ag
  invoke void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0281.0362)
          to label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit124 unwind label %bb.j

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRKS9_EEERS9_DpOT_.exit124: ; preds = %bb.al, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEC2ERKS8_.exit.i120, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0281.0362, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ei, %i.c
  br i1 %.not, label %._crit_edge366.loopexit, label %bb.g

.critedge110.preheader:                           ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.ej = ptrtoint ptr %.sroa.0253.1 to i64       ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.critedge110

.lr.ph371:                                        ; preds = %._crit_edge366, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.ep = phi ptr [ %i.ff, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.u, %._crit_edge366 ]
  %i.eq = phi ptr [ %i.fg, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.v, %._crit_edge366 ]
  %storemerge370 = phi i64 [ %i.fh, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %._crit_edge366 ] ; 3 uses
  %.sroa.30.0369 = phi ptr [ %.sroa.30.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %._crit_edge366 ] ; 4 uses
  %.sroa.20.0368 = phi ptr [ %.sroa.20.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %._crit_edge366 ] ; 3 uses
  %.sroa.0253.0367 = phi ptr [ %.sroa.0253.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %._crit_edge366 ] ; 7 uses
  %.not.i125 = icmp eq ptr %.sroa.20.0368, %.sroa.30.0369
  br i1 %.not.i125, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph371
  store i64 %storemerge370, ptr %.sroa.20.0368, align 8, !tbaa !75
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.an:                                            ; preds = %.lr.ph371
  %i.er = ptrtoint ptr %.sroa.30.0369 to i64
  %i.es = ptrtoint ptr %.sroa.0253.0367 to i64    ; 2 uses
  %i.et = sub i64 %i.er, %i.es                    ; 6 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %bb.ao, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #28
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.an
  %i.ev = ashr exact i64 %i.et, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i.i, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = call i64 @llvm.umin.i64(i64 %i.ew, i64 1152921504606846975)
  %i.ez = select i1 %i.ex, i64 1152921504606846975, i64 %i.ey ; 3 uses
  %.not.i.i.i126 = icmp ne i64 %i.ez, 0
  call void @llvm.assume(i1 %.not.i.i.i126)
  %i.fa = shl nuw nsw i64 %i.ez, 3
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #27
          to label %.noexc128 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc128:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %i.et ; 2 uses
  store i64 %storemerge370, ptr %i.fc, align 8, !tbaa !75
  %i.fd = icmp sgt i64 %i.et, 0
  br i1 %i.fd, label %bb.ap, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.ap:                                            ; preds = %.noexc128
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fb, ptr align 8 %.sroa.0253.0367, i64 %i.et, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.ap, %.noexc128
  %.not.i17.i.i = icmp eq ptr %.sroa.0253.0367, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0253.0367, i64 noundef %i.et) #26
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.aq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ez
  %.pre419 = load ptr, ptr %i.w, align 8, !tbaa !29
  %.pre420 = load ptr, ptr %6, align 16, !tbaa !30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.am
  %i.ff = phi ptr [ %.pre420, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ep, %bb.am ] ; 2 uses
  %i.fg = phi ptr [ %.pre419, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.eq, %bb.am ] ; 2 uses
  %.sroa.0253.1 = phi ptr [ %i.fb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0253.0367, %bb.am ] ; 10 uses
  %.pn297 = phi ptr [ %i.fc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.20.0368, %bb.am ]
  %.sroa.30.1 = phi ptr [ %i.fe, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.30.0369, %bb.am ] ; 4 uses
  %.sroa.20.3 = getelementptr inbounds nuw i8, ptr %.pn297, i64 8 ; 2 uses
  %i.fh = add nuw i64 %storemerge370, 1           ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 4
  %i.fm = icmp ult i64 %i.fh, %i.fl
  br i1 %i.fm, label %.lr.ph371, label %.critedge110.preheader, !llvm.loop !190

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.ao
  %lpad.loopexit.split-lp629 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i173 = icmp eq ptr %.sroa.0253.0367, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorImSaImEED2Ev.exit174, label %.thread289

.critedge110:                                     ; preds = %.critedge110.preheader, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i
  %.sroa.20.1 = phi ptr [ %spec.select295, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i ], [ %.sroa.20.3, %.critedge110.preheader ] ; 6 uses
  %i.fn = ptrtoint ptr %.sroa.20.1 to i64         ; 2 uses
  %i.fo = sub i64 %i.fn, %i.ej
  %i.fp = ashr exact i64 %i.fo, 3                 ; 4 uses
  %i.fq = call i64 @llvm.usub.sat.i64(i64 %i.fp, i64 1)
  %exitcond.not601 = icmp ult i64 %i.fp, 2
  br i1 %exitcond.not601, label %select.unfold, label %.lr.ph603

bb.ar:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit
  %i.fr = add nuw i64 %i.fs, 1
  %exitcond.not = icmp eq i64 %i.fs, %i.fq
  br i1 %exitcond.not, label %select.unfold, label %.lr.ph603, !llvm.loop !191

.lr.ph603:                                        ; preds = %.critedge110, %bb.ar
  %i.fs = phi i64 [ %i.fr, %bb.ar ], [ 1, %.critedge110 ] ; 4 uses
  %.052602 = phi i64 [ %i.fs, %bb.ar ], [ 0, %.critedge110 ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0253.1, i64 %.052602 ; 6 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !75
  %i.fv = load ptr, ptr %6, align 16, !tbaa !30   ; 2 uses
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %i.fu
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !51 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0253.1, i64 %i.fs ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !75
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !51 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !26
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8
  invoke void %i.ge(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.gb)
          to label %bb.as unwind label %bb.cg

bb.as:                                            ; preds = %.lr.ph603
  %i.gf = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gi = select i1 %i.gg, ptr null, ptr %i.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.gj = load ptr, ptr %i.fx, align 8, !tbaa !26
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = invoke noundef zeroext i1 %i.gl(ptr noundef nonnull align 8 dereferenceable(48) %i.fx, ptr noundef %i.gi, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.at unwind label %bb.ch

bb.at:                                            ; preds = %bb.as
  br i1 %i.gm, label %bb.au, label %.critedge108

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.gn = load i64, ptr %i.ft, align 8, !tbaa !75
  %i.go = load ptr, ptr %6, align 16, !tbaa !30
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.gn
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !51
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9sourceCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.gq)
          to label %bb.av unwind label %bb.ci

bb.av:                                            ; preds = %bb.au
  %i.gr = load ptr, ptr %10, align 8, !tbaa !54   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.gs = load i64, ptr %i.fy, align 8, !tbaa !75
  %i.gt = load ptr, ptr %6, align 16, !tbaa !30
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %i.gs
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !51
  invoke void @_ZNK5osgeo4proj9operation19CoordinateOperation9targetCRSEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.gv)
          to label %bb.aw unwind label %bb.cj

bb.aw:                                            ; preds = %bb.av
  %i.gw = load ptr, ptr %11, align 8, !tbaa !54   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, null
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %spec.select = select i1 %i.gx, ptr null, ptr %i.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.gz = load ptr, ptr %i.gr, align 8, !tbaa !26
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = invoke noundef zeroext i1 %i.hb(ptr noundef nonnull align 8 dereferenceable(48) %i.gr, ptr noundef %spec.select, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.critedge unwind label %bb.ck

.critedge:                                        ; preds = %bb.aw
  %i.hd = load ptr, ptr %i.ek, align 8, !tbaa !36 ; 8 uses
  %.not.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 4 uses
  %i.hf = load atomic i64, ptr %i.he acquire, align 8 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 4294967297
  %i.hh = trunc i64 %i.hf to i32                  ; 2 uses
  br i1 %i.hg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.he, align 8, !tbaa !56
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  store i32 0, ptr %i.hi, align 4, !tbaa !57
  %i.hj = load ptr, ptr %i.hd, align 8, !tbaa !26
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #25, !inline_history !1
  %i.hm = load ptr, ptr %i.hd, align 8, !tbaa !26
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #25, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.hp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i129 = icmp eq i8 %i.hp, 0
  br i1 %.not.i.i.i129, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hq = add nsw i32 %i.hh, -1
  store i32 %i.hq, ptr %i.he, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.hr = atomicrmw volatile add ptr %i.he, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i = phi i32 [ %i.hh, %bb.ba ], [ %i.hr, %bb.bb ]
  %i.hs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hs, label %bb.bc, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hd) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ht = load ptr, ptr %i.el, align 8, !tbaa !36 ; 8 uses
  %.not.i.i130 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i130, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 4 uses
  %i.hv = load atomic i64, ptr %i.hu acquire, align 8 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 4294967297
  %i.hx = trunc i64 %i.hv to i32                  ; 2 uses
  br i1 %i.hw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.hu, align 8, !tbaa !56
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i32 0, ptr %i.hy, align 4, !tbaa !57
  %i.hz = load ptr, ptr %i.ht, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #25, !inline_history !2
  %i.ic = load ptr, ptr %i.ht, align 8, !tbaa !26
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bf:                                            ; preds = %bb.bd
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i131 = icmp eq i8 %i.if, 0
  br i1 %.not.i.i.i131, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ig = add nsw i32 %i.hx, -1
  store i32 %i.ig, ptr %i.hu, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132

bb.bh:                                            ; preds = %bb.bf
  %i.ih = atomicrmw volatile add ptr %i.hu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i133 = phi i32 [ %i.hx, %bb.bg ], [ %i.ih, %bb.bh ]
  %i.ii = icmp eq i32 %.0.i.i.i.i133, 1
  br i1 %i.ii, label %bb.bi, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ij = load ptr, ptr %i.em, align 8, !tbaa !36 ; 8 uses
  %.not.i.i134 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i134, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 4 uses
  %i.il = load atomic i64, ptr %i.ik acquire, align 8 ; 2 uses
  %i.im = icmp eq i64 %i.il, 4294967297
  %i.in = trunc i64 %i.il to i32                  ; 2 uses
  br i1 %i.im, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.ik, align 8, !tbaa !56
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  store i32 0, ptr %i.io, align 4, !tbaa !57
  %i.ip = load ptr, ptr %i.ij, align 8, !tbaa !26
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(16) %i.ij) #25, !inline_history !2
  %i.is = load ptr, ptr %i.ij, align 8, !tbaa !26
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.ij) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138

bb.bl:                                            ; preds = %bb.bj
  %i.iv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i135 = icmp eq i8 %i.iv, 0
  br i1 %.not.i.i.i135, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iw = add nsw i32 %i.in, -1
  store i32 %i.iw, ptr %i.ik, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136

bb.bn:                                            ; preds = %bb.bl
  %i.ix = atomicrmw volatile add ptr %i.ik, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i137 = phi i32 [ %i.in, %bb.bm ], [ %i.ix, %bb.bn ]
  %i.iy = icmp eq i32 %.0.i.i.i.i137, 1
  br i1 %i.iy, label %bb.bo, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138, !prof !31

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ij) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.critedge108

.critedge108:                                     ; preds = %bb.at, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138
  %i.iz = phi i1 [ %i.hc, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138 ], [ false, %bb.at ]
  %i.ja = load ptr, ptr %i.en, align 8, !tbaa !36 ; 8 uses
  %.not.i.i139 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i139, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143, label %bb.bp

bb.bp:                                            ; preds = %.critedge108
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 4 uses
  %i.jc = load atomic i64, ptr %i.jb acquire, align 8 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 4294967297
  %i.je = trunc i64 %i.jc to i32                  ; 2 uses
  br i1 %i.jd, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.jb, align 8, !tbaa !56
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  store i32 0, ptr %i.jf, align 4, !tbaa !57
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !26
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #25, !inline_history !1
  %i.jj = load ptr, ptr %i.ja, align 8, !tbaa !26
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #25, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143

bb.br:                                            ; preds = %bb.bp
  %i.jm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i140 = icmp eq i8 %i.jm, 0
  br i1 %.not.i.i.i140, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jn = add nsw i32 %i.je, -1
  store i32 %i.jn, ptr %i.jb, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141

bb.bt:                                            ; preds = %bb.br
  %i.jo = atomicrmw volatile add ptr %i.jb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i142 = phi i32 [ %i.je, %bb.bs ], [ %i.jo, %bb.bt ]
  %i.jp = icmp eq i32 %.0.i.i.i.i142, 1
  br i1 %i.jp, label %bb.bu, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143, !prof !31

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ja) #25
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143

_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143: ; preds = %.critedge108, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i141, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.jq = load ptr, ptr %i.eo, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i144 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i144, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 4 uses
  %i.js = load atomic i64, ptr %i.jr acquire, align 8 ; 2 uses
  %i.jt = icmp eq i64 %i.js, 4294967297
  %i.ju = trunc i64 %i.js to i32                  ; 2 uses
  br i1 %i.jt, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.jr, align 8, !tbaa !56
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i32 0, ptr %i.jv, align 4, !tbaa !57
  %i.jw = load ptr, ptr %i.jq, align 8, !tbaa !26
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #25, !inline_history !6
  %i.jz = load ptr, ptr %i.jq, align 8, !tbaa !26
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #25, !inline_history !6
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit

bb.bx:                                            ; preds = %bb.bv
  %i.kc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i145 = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i.i.i145, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kd = add nsw i32 %i.ju, -1
  store i32 %i.kd, ptr %i.jr, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.ke = atomicrmw volatile add ptr %i.jr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i.i = phi i32 [ %i.ju, %bb.by ], [ %i.ke, %bb.bz ]
  %i.kf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kf, label %bb.ca, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit, !prof !31

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #25
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit143, %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %i.iz, label %bb.cb, label %bb.ar, !llvm.loop !191

bb.cb:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 4 uses
  %.not11.i.i = icmp eq ptr %i.kg, %.sroa.20.1
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %23 = ptrtoint ptr %i.kg to i64
  %24 = sub i64 %i.fn, %23                        ; 5 uses
  %i.kh = icmp sgt i64 %24, 8
  br i1 %i.kh, label %bb.cd, label %bb.ce, !prof !198

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ft, ptr nonnull align 8 %i.kg, i64 %24, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.ki = icmp eq i64 %24, 8
  br i1 %i.ki, label %bb.cf, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.kj = load i64, ptr %i.kg, align 8, !tbaa !75
  store i64 %i.kj, ptr %i.ft, align 8, !tbaa !75
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.cb, %bb.cf, %bb.ce, %bb.cd
  %.pre-phi435 = phi i64 [ %24, %bb.cd ], [ 8, %bb.cf ], [ %24, %bb.ce ], [ 0, %bb.cb ]
  %i.kk = getelementptr inbounds i8, ptr %i.ft, i64 %.pre-phi435 ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %.sroa.20.1, %i.kk
  %spec.select295 = select i1 %.not.i.i.i147, ptr %.sroa.20.1, ptr %i.kk ; 3 uses
  %i.kl = ptrtoint ptr %spec.select295 to i64
  %i.km = sub i64 %i.kl, %i.ej                    ; 2 uses
  %i.kn = icmp ult i64 %i.km, 17
  br i1 %i.kn, label %select.unfold.loopexit381, label %.critedge110

bb.cg:                                            ; preds = %.lr.ph603
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.ch:                                            ; preds = %bb.as
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ci:                                            ; preds = %bb.au
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cj:                                            ; preds = %bb.av
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.aw
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #25
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %.pn = phi { ptr, i32 } [ %i.ks, %bb.ck ], [ %i.kr, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #25
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ci, %bb.cl
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cl ], [ %i.kq, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ch
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cm ], [ %i.kp, %bb.ch ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cg
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.cn ], [ %i.ko, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.thread289

select.unfold.loopexit381:                        ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i
  %.pre431 = lshr exact i64 %i.km, 3
  br label %select.unfold

select.unfold:                                    ; preds = %.critedge110, %bb.ar, %select.unfold.loopexit381
  %.pre-phi432 = phi i64 [ %.pre431, %select.unfold.loopexit381 ], [ %i.fp, %bb.ar ], [ %i.fp, %.critedge110 ] ; 2 uses
  %.sroa.20.2.ph = phi ptr [ %spec.select295, %select.unfold.loopexit381 ], [ %.sroa.20.1, %bb.ar ], [ %.sroa.20.1, %.critedge110 ]
  %i.kt = load ptr, ptr %i.w, align 8, !tbaa !29  ; 2 uses
  %i.ku = load ptr, ptr %6, align 16, !tbaa !30   ; 2 uses
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = ashr exact i64 %i.kx, 4
  %i.kz = icmp ult i64 %.pre-phi432, %i.ky
  br i1 %i.kz, label %bb.cp, label %bb.dl

bb.cp:                                            ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not380 = icmp eq ptr %.sroa.20.2.ph, %.sroa.0253.1
  br i1 %.not380, label %._crit_edge378, label %.lr.ph377

.lr.ph377:                                        ; preds = %bb.cp
  %i.la = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %.pre-phi432, i64 1)
  br label %bb.de

._crit_edge378.loopexit:                          ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EE12emplace_backIJRS9_EEESD_DpOT_.exit
  %.pre421 = load ptr, ptr %6, align 16, !tbaa !30
  %.pre422 = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.lc = load <2 x ptr>, ptr %13, align 16, !tbaa !32
  %.pre427 = load ptr, ptr %i.lb, align 16, !tbaa !33
  br label %._crit_edge378

._crit_edge378:                                   ; preds = %._crit_edge378.loopexit, %bb.cp
  %i.ld = phi ptr [ %.pre427, %._crit_edge378.loopexit ], [ null, %bb.cp ]
  %i.le = phi ptr [ %.pre422, %._crit_edge378.loopexit ], [ %i.kt, %bb.cp ] ; 2 uses
  %i.lf = phi ptr [ %.pre421, %._crit_edge378.loopexit ], [ %i.ku, %bb.cp ] ; 5 uses
  %i.lg = phi <2 x ptr> [ %i.lc, %._crit_edge378.loopexit ], [ splat (ptr null), %bb.cp ]
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 16, !tbaa !33
  %i.lj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x ptr> %i.lg, ptr %6, align 16, !tbaa !32
  %i.lk = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.ld, ptr %i.lh, align 16, !tbaa !33
  %.not4.i.i.i.i.i = icmp eq ptr %i.lf, %i.le
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i148

.lr.ph.i.i.i.i.i148:                              ; preds = %._crit_edge378, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.mc, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i ], [ %i.lf, %._crit_edge378 ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i.i148
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8 ; 4 uses
  %i.lo = load atomic i64, ptr %i.ln acquire, align 8 ; 2 uses
  %i.lp = icmp eq i64 %i.lo, 4294967297
  %i.lq = trunc i64 %i.lo to i32                  ; 2 uses
  br i1 %i.lp, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.ln, align 8, !tbaa !56
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lm, i64 12
  store i32 0, ptr %i.lr, align 4, !tbaa !57
  %i.ls = load ptr, ptr %i.lm, align 8, !tbaa !26
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(16) %i.lm) #25, !inline_history !10
  %i.lv = load ptr, ptr %i.lm, align 8, !tbaa !26
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8
  call void %i.lx(ptr noundef nonnull align 8 dereferenceable(16) %i.lm) #25, !inline_history !10
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.ly = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i.i.i149 = icmp eq i8 %i.ly, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i149, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lz = add nsw i32 %i.lq, -1
  store i32 %i.lz, ptr %i.ln, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.ma = atomicrmw volatile add ptr %i.ln, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lq, %bb.ct ], [ %i.ma, %bb.cu ]
  %i.mb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.mb, label %bb.cv, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, !prof !31

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lm) #25
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.cv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.cr, %.lr.ph.i.i.i.i.i148
  %i.mc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i150 = icmp eq ptr %i.mc, %i.le
  br i1 %.not.i.i.i.i.i150, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i148, !llvm.loop !8

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i.i.i, %._crit_edge378
  %.not.i.i1.i.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit, label %bb.cw

bb.cw:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.md = ptrtoint ptr %i.li to i64
  %i.me = ptrtoint ptr %i.lf to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.mf) #26
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i.i.i, %bb.cw
  %i.mg = load ptr, ptr %13, align 16, !tbaa !30  ; 3 uses
  %i.mh = load ptr, ptr %i.lj, align 8, !tbaa !29 ; 2 uses
  %.not4.i.i.i151 = icmp eq ptr %i.mg, %i.mh
  br i1 %.not4.i.i.i151, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i162, label %.lr.ph.i.i.i152

.lr.ph.i.i.i152:                                  ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i158
  %.05.i.i.i153 = phi ptr [ %i.mz, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i158 ], [ %i.mg, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EEaSEOSB_.exit ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.05.i.i.i153, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i154 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i.i.i.i154, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i158, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i.i152
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 4 uses
  %i.ml = load atomic i64, ptr %i.mk acquire, align 8 ; 2 uses
  %i.mm = icmp eq i64 %i.ml, 4294967297
  %i.mn = trunc i64 %i.ml to i32                  ; 2 uses
  br i1 %i.mm, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.mk, align 8, !tbaa !56
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 12
  store i32 0, ptr %i.mo, align 4, !tbaa !57
end_hunk_1
