Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/odometry?download=true
inline.NumInlined: 712
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIN2cv11OdometryRGBESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11OdometryRGBESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.a) #17, !inline_history !172
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11OdometryRGBESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv11OdometryRGBESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11OdometryRGBESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #17
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12OdometryRGBDESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %3 = alloca %"class.cv::OdometrySettings", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv12OdometryRGBDESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN2cv16OdometrySettingsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.d = load i32, ptr %2, align 4, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2cv12OdometryRGBDE, i64 16), ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN2cv16OdometrySettingsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.a unwind label %.body

bb.a:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.d, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.j, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !39
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #17, !inline_history !173
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #17, !inline_history !173
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.m, %bb.e ], [ %i.w, %bb.f ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !42

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #17
  br label %bb.h

.body:                                            ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16OdometrySettingsD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12OdometryRGBDESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12OdometryRGBDESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #17, !inline_history !174
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12OdometryRGBDESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12OdometryRGBDESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12OdometryRGBDESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #17
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv7Affine3IdE8rotationERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.9", align 1  ; 3 uses
  %4 = alloca %"class.cv::Matx.28", align 16      ; 10 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %6 = alloca %"class.cv::Vec.37", align 8        ; 8 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.9", align 1 ; 3 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !77
  %i.b = and i32 %i.a, 4095
  %i.c = icmp eq i32 %i.b, 6
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv7Affine3IdE8rotationERKNS_3MatE, ptr noundef nonnull @.str.22, i32 noundef 432) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.u

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !80
  switch i32 %i.l, label %.thread32 [
    i32 3, label %bb.h
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81
  switch i32 %i.n, label %.thread32 [
    i32 3, label %bb.i
    i32 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %4, i8 0, i64 72, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1040056314, ptr %5, align 8, !tbaa !47
  store ptr %4, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 12884901891, ptr %i.p, align 8, !tbaa !23
  call void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.q = load <2 x double>, ptr %4, align 16, !tbaa !70
  store <2 x double> %i.q, ptr %0, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load double, ptr %i.r, align 16, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.s, ptr %i.t, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load <2 x double>, ptr %i.u, align 8, !tbaa !70
  store <2 x double> %i.w, ptr %i.v, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.y, ptr %i.z, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load <2 x double>, ptr %i.aa, align 16, !tbaa !70
  store <2 x double> %i.ac, ptr %i.ab, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ae = load double, ptr %i.ad, align 16, !tbaa !70
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.ae, ptr %i.af, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.t

bb.j:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !81
  %i.ai = icmp eq i32 %i.ah, 3
  br i1 %i.ai, label %bb.k, label %.thread32

bb.k:                                             ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 -1040056314, ptr %8, align 8, !tbaa !47
  store ptr %6, ptr %i.aj, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 12884901889, ptr %i.ak, align 8, !tbaa !23
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.al = load double, ptr %6, align 8, !tbaa !70 ; 3 uses
  %i.am = call double @llvm.fmuladd.f64(double %i.al, double %i.al, double 0.000000e+00)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !70 ; 3 uses
  %i.ap = call double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !70 ; 3 uses
  %i.as = call noundef double @llvm.fmuladd.f64(double %i.ar, double %i.ar, double %i.ap)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.as) ; 4 uses
  %i.at = fcmp olt double %sqrt.i.i, f0x3CB0000000000000
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %_ZN2cv7Affine3IdE8rotationERKNS_3VecIdLi3EEE.exit

bb.n:                                             ; preds = %bb.l
  %11 = call double @cos(double noundef %sqrt.i.i) #17 ; 5 uses
  %12 = call double @sin(double noundef %sqrt.i.i) #17 ; 4 uses
  %i.av = fsub double 1.000000e+00, %11           ; 6 uses
  %i.aw = fdiv double 1.000000e+00, %sqrt.i.i     ; 3 uses
  %i.ax = fmul double %i.al, %i.aw                ; 5 uses
  %i.ay = fmul double %i.ao, %i.aw                ; 5 uses
  %i.az = fmul double %i.ar, %i.aw                ; 5 uses
  %i.ba = fmul double %i.ax, %i.ax
  %i.bb = fmul double %i.ax, %i.ay
  %i.bc = fmul double %i.ax, %i.az
  %i.bd = fmul double %i.ay, %i.ay
  %i.be = fmul double %i.ay, %i.az
  %i.bf = fmul double %i.az, %i.az
  %i.bg = fmul double %11, 0.000000e+00           ; 3 uses
  %i.bh = fmul double %i.ba, %i.av
  %i.bi = fmul double %i.bb, %i.av
  %i.bj = fmul double %i.bc, %i.av
  %i.bk = fmul double %i.bd, %i.av
  %i.bl = fmul double %i.be, %i.av
  %i.bm = fmul double %i.bf, %i.av
  %i.bn = fadd double %11, %i.bh
  %i.bo = fadd double %i.bg, %i.bi                ; 2 uses
  %i.bp = fadd double %i.bg, %i.bj                ; 2 uses
  %i.bq = fadd double %11, %i.bk
  %i.br = fadd double %i.bg, %i.bl                ; 2 uses
  %i.bs = fadd double %11, %i.bm
  %i.bt = fmul double %12, 0.000000e+00           ; 3 uses
  %i.bu = fmul double %i.ay, %12                  ; 2 uses
  %i.bv = fmul double %i.az, %12                  ; 2 uses
  %i.bw = fmul double %i.ax, %12                  ; 2 uses
  %i.bx = fadd double %i.bt, %i.bn
  %i.by = fsub double %i.bo, %i.bv
  %i.bz = fadd double %i.bu, %i.bp
  %i.ca = fadd double %i.bv, %i.bo
  %i.cb = fadd double %i.bt, %i.bq
  %i.cc = fsub double %i.br, %i.bw
  %i.cd = fsub double %i.bp, %i.bu
  %i.ce = fadd double %i.bw, %i.br
  %i.cf = fadd double %i.bt, %i.bs
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.by, ptr %i.cg, align 8, !tbaa !70
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bz, ptr %i.ch, align 8, !tbaa !70
  br label %_ZN2cv7Affine3IdE8rotationERKNS_3VecIdLi3EEE.exit

_ZN2cv7Affine3IdE8rotationERKNS_3VecIdLi3EEE.exit: ; preds = %bb.m, %bb.n
  %.sink34 = phi double [ 1.000000e+00, %bb.m ], [ %i.bx, %bb.n ]
  %.sink33 = phi double [ 0.000000e+00, %bb.m ], [ %i.ca, %bb.n ]
  %.sink = phi double [ 1.000000e+00, %bb.m ], [ %i.cb, %bb.n ]
  %.sink92.i = phi double [ 0.000000e+00, %bb.m ], [ %i.cc, %bb.n ]
  %.sink91.i = phi double [ 0.000000e+00, %bb.m ], [ %i.cd, %bb.n ]
  %.sink90.i = phi double [ 0.000000e+00, %bb.m ], [ %i.ce, %bb.n ]
  %.sink.i = phi double [ 1.000000e+00, %bb.m ], [ %i.cf, %bb.n ]
  store double %.sink34, ptr %0, align 8, !tbaa !70
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sink33, ptr %i.ci, align 8, !tbaa !70
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sink, ptr %i.cj, align 8, !tbaa !70
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sink92.i, ptr %i.ck, align 8, !tbaa !70
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sink91.i, ptr %i.cl, align 8, !tbaa !70
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %.sink90.i, ptr %i.cm, align 8, !tbaa !70
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %.sink.i, ptr %i.cn, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.t

bb.o:                                             ; preds = %bb.k
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.u

.thread32:                                        ; preds = %bb.h, %bb.g, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %.thread32
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv7Affine3IdE8rotationERKNS_3MatE, ptr noundef nonnull @.str.22, i32 noundef 448) #19
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %.thread32
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.s:                                             ; preds = %bb.p
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.s
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !22
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.r
  %.pn20 = phi { ptr, i32 } [ %i.cp, %bb.r ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.cq, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.u

bb.t:                                             ; preds = %_ZN2cv7Affine3IdE8rotationERKNS_3VecIdLi3EEE.exit, %bb.i
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn24 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.co, %bb.o ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  resume { ptr, i32 } %.pn24
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Vec.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.9", align 1  ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 4 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !81   ; 3 uses
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = icmp eq i32 %i.j, 1
  %or.cond13 = select i1 %i.h, i1 true, i1 %i.k
  %i.l = add nsw i32 %i.j, %i.g
  %i.m = icmp eq i32 %i.l, 4
  %or.cond15 = select i1 %or.cond13, i1 %i.m, i1 false
  br i1 %or.cond15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.o = and i32 %i.n, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv, ptr noundef nonnull @.str.26, i32 noundef 1301) #19
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.v = load i64, ptr %i.t, align 8, !tbaa !22
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  %i.x = and i32 %i.n, 16415
  %or.cond17 = icmp eq i32 %i.x, 16390
  br i1 %or.cond17, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load double, ptr %i.b, align 8, !tbaa !70
  store double %i.y, ptr %0, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.aa, ptr %i.ab, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ad, ptr %i.ae, align 8, !tbaa !70
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %i.g, i32 noundef %i.j, i32 noundef 6, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.ag, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !47
  store ptr %4, ptr %i.af, align 8, !tbaa !48
  %i.ah = load i32, ptr %4, align 8, !tbaa !77
  %i.ai = and i32 %i.ah, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ai, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.j
  ret void

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #15

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #11

attributes #0 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{ptr @_ZN2cv16OdometrySettingsD2Ev, null, null, null}
!1 = distinct !{ptr @_ZN2cv13OdometryFrameD2Ev, null, null, null}
!2 = distinct !{null, null, null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null, null, null, null}
!5 = distinct !{null, null, null}
!6 = distinct !{null, null, null, null, null}
!7 = distinct !{null, null, null}
!8 = distinct !{null, null, null}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!17, !17, i64 0}
!22 = !{!13, !13, i64 0}
!23 = !{!14, !14, i64 0}
!24 = !{!"_ZTSN2cv8Odometry4ImplE"}
!25 = !{!"p1 _ZTSN2cv16OdometrySettings4ImplE", !17, i64 0}
!26 = !{!"_ZTSSt12__shared_ptrIN2cv16OdometrySettings4ImplELN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0, !19, i64 8}
!27 = !{!"_ZTSSt10shared_ptrIN2cv16OdometrySettings4ImplEE", !26, i64 0}
!28 = !{!"_ZTSN2cv3PtrINS_16OdometrySettings4ImplEEE", !27, i64 0}
!29 = !{!"_ZTSN2cv16OdometrySettingsE", !28, i64 0}
!30 = !{!"_ZTSN2cv16OdometryAlgoTypeE", !13, i64 0}
!31 = !{!"p1 _ZTSN2cv11RgbdNormalsE", !17, i64 0}
!32 = !{!"_ZTSSt12__shared_ptrIN2cv11RgbdNormalsELN9__gnu_cxx12_Lock_policyE2EE", !31, i64 0, !19, i64 8}
!33 = !{!"_ZTSSt10shared_ptrIN2cv11RgbdNormalsEE", !32, i64 0}
!34 = !{!"_ZTSN2cv3PtrINS_11RgbdNormalsEEE", !33, i64 0}
!35 = !{!"_ZTSN2cv11OdometryICPE", !24, i64 0, !29, i64 8, !30, i64 24, !34, i64 32}
!36 = !{!35, !30, i64 24}
!37 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 8, !14, i64 12}
!38 = !{!37, !14, i64 8}
!39 = !{!37, !14, i64 12}
!40 = !{!"vtable pointer", !12, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!"float", !13, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"_ZTSN2cv5Size_IiEE", !14, i64 0, !14, i64 4}
!46 = !{!"_ZTSN2cv11_InputArrayE", !14, i64 0, !17, i64 8, !45, i64 16}
!47 = !{!46, !14, i64 0}
!48 = !{!46, !17, i64 8}
!49 = !{!"p1 int", !17, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!50, !49, i64 0}
!52 = !{!50, !49, i64 16}
!53 = !{!"p1 omnipotent char", !17, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!55 = !{!54, !53, i64 0}
!56 = !{!"long", !13, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !54, i64 0, !56, i64 8, !13, i64 16}
!59 = !{!58, !53, i64 0}
!60 = !{!58, !56, i64 8}
!61 = !{!"_ZTSN2cv11OdometryRGBE", !24, i64 0, !29, i64 8, !30, i64 24}
!62 = !{!61, !30, i64 24}
!63 = !{!"_ZTSN2cv12OdometryRGBDE", !24, i64 0, !29, i64 8, !30, i64 24, !34, i64 32}
!64 = !{!63, !30, i64 24}
!65 = !{!30, !30, i64 0}
!66 = !{!"p1 _ZTSN2cv8Odometry4ImplE", !17, i64 0}
!67 = !{!"_ZTSSt12__shared_ptrIN2cv8Odometry4ImplELN9__gnu_cxx12_Lock_policyE2EE", !66, i64 0, !19, i64 8}
!68 = !{!67, !66, i64 0}
!69 = !{!"double", !13, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"p1 _ZTSN2cv12MatAllocatorE", !17, i64 0}
!72 = !{!"p1 _ZTSN2cv8UMatDataE", !17, i64 0}
!73 = !{!"_ZTSN2cv10DataLayoutE", !13, i64 0}
!74 = !{!"_ZTSN2cv8MatShapeE", !14, i64 0, !73, i64 4, !14, i64 8, !13, i64 12}
!75 = !{!"_ZTSN2cv7MatStepE", !13, i64 0}
!76 = !{!"_ZTSN2cv3MatE", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !71, i64 56, !72, i64 64, !74, i64 72, !75, i64 128}
!77 = !{!76, !14, i64 0}
!78 = !{!76, !53, i64 24}
!79 = !{!76, !14, i64 4}
!80 = !{!76, !14, i64 12}
!81 = !{!76, !14, i64 8}
!82 = !{!"_ZTSSt9type_info", !53, i64 8}
!83 = !{!82, !53, i64 8}
!84 = distinct !{null, null, null}
!85 = distinct !{null, null, null}
!86 = distinct !{!86, i1 true, !"_ZN2cvL7makePtrINS_11OdometryICPEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_"}
!87 = distinct !{!87, !86, !"_ZN2cvL7makePtrINS_11OdometryICPEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZSt11make_sharedIN2cv11OdometryICPEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!89 = distinct !{!89, !88, !"_ZSt11make_sharedIN2cv11OdometryICPEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!90 = !{!89, !87}
!91 = distinct !{null, null}
!92 = distinct !{!92, i1 true, !"_ZN2cvL7makePtrINS_11OdometryICPEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_"}
!93 = distinct !{!93, !92, !"_ZN2cvL7makePtrINS_11OdometryICPEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!94 = distinct !{!94, i1 true, !"_ZSt11make_sharedIN2cv11OdometryICPEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!95 = distinct !{!95, !94, !"_ZSt11make_sharedIN2cv11OdometryICPEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!96 = distinct !{!96, i1 true, !"_ZN2cvL7makePtrINS_11OdometryRGBEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_"}
!97 = distinct !{!97, !96, !"_ZN2cvL7makePtrINS_11OdometryRGBEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!98 = distinct !{!98, i1 true, !"_ZSt11make_sharedIN2cv11OdometryRGBEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!99 = distinct !{!99, !98, !"_ZSt11make_sharedIN2cv11OdometryRGBEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!100 = distinct !{!100, i1 true, !"_ZN2cvL7makePtrINS_12OdometryRGBDEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_"}
!101 = distinct !{!101, !100, !"_ZN2cvL7makePtrINS_12OdometryRGBDEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!102 = distinct !{!102, i1 true, !"_ZSt11make_sharedIN2cv12OdometryRGBDEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!103 = distinct !{!103, !102, !"_ZSt11make_sharedIN2cv12OdometryRGBDEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!104 = !{!95, !93}
!105 = !{!99, !97}
!106 = !{!103, !101}
!107 = distinct !{!107, i1 true, !"_ZN2cvL7makePtrINS_11OdometryICPEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_"}
!108 = distinct !{!108, !107, !"_ZN2cvL7makePtrINS_11OdometryICPEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZSt11make_sharedIN2cv11OdometryICPEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!110 = distinct !{!110, !109, !"_ZSt11make_sharedIN2cv11OdometryICPEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZN2cvL7makePtrINS_11OdometryRGBEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_"}
!112 = distinct !{!112, !111, !"_ZN2cvL7makePtrINS_11OdometryRGBEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!113 = distinct !{!113, i1 true, !"_ZSt11make_sharedIN2cv11OdometryRGBEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!114 = distinct !{!114, !113, !"_ZSt11make_sharedIN2cv11OdometryRGBEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!115 = distinct !{!115, i1 true, !"_ZN2cvL7makePtrINS_12OdometryRGBDEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_"}
!116 = distinct !{!116, !115, !"_ZN2cvL7makePtrINS_12OdometryRGBDEJNS_16OdometrySettingsENS_16OdometryAlgoTypeEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZSt11make_sharedIN2cv12OdometryRGBDEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!118 = distinct !{!118, !117, !"_ZSt11make_sharedIN2cv12OdometryRGBDEJRKNS0_16OdometrySettingsERKNS0_16OdometryAlgoTypeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!119 = !{!110, !108}
!120 = !{!114, !112}
!121 = !{!118, !116}
!122 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv8Odometry4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!123 = distinct !{!123, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!124 = distinct !{!124, !123, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!125 = distinct !{!125, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!126 = distinct !{!126, !125, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!128 = distinct !{!128, !127, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!130 = distinct !{!130, !129, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!131 = distinct !{!131, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!132 = distinct !{!132, !131, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!134 = distinct !{!134, !133, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZNK2cv7Affine3IdE8rotationEv"}
!136 = distinct !{!136, !135, !"_ZNK2cv7Affine3IdE8rotationEv: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZNK2cv7Affine3IdE6linearEv"}
!138 = distinct !{!138, !137, !"_ZNK2cv7Affine3IdE6linearEv: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZNK2cv7Affine3IdE11translationEv"}
!140 = distinct !{!140, !139, !"_ZNK2cv7Affine3IdE11translationEv: argument 0"}
!141 = distinct !{!141, !157}
!142 = distinct !{!142, !157}
!143 = distinct !{!143, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!144 = distinct !{!144, !143, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!145 = distinct !{!145, !157}
!146 = distinct !{!146, !157}
!147 = distinct !{!147, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!148 = distinct !{!148, !147, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!149 = !{!124}
!150 = !{!126}
!151 = !{!128}
!152 = !{!130}
!153 = !{!132}
!154 = !{!134}
!155 = !{!138, !136}
!156 = !{!140}
!157 = !{!"llvm.loop.mustprogress"}
!158 = !{!144}
!159 = !{!"p1 _ZTSN2cv5MatOpE", !17, i64 0}
!160 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !13, i64 0}
!161 = !{!"_ZTSN2cv3VecIdLi4EEE", !160, i64 0}
!162 = !{!"_ZTSN2cv7Scalar_IdEE", !161, i64 0}
!163 = !{!"_ZTSN2cv7MatExprE", !159, i64 0, !14, i64 8, !76, i64 16, !76, i64 224, !76, i64 432, !69, i64 640, !69, i64 648, !162, i64 656}
!164 = !{!163, !159, i64 0}
!165 = !{!148}
!166 = distinct !{ptr @_ZN2cv11OdometryRGBD2Ev, ptr @_ZN2cv16OdometrySettingsD2Ev, null, null, null}
!167 = !{ptr @_ZN2cv11OdometryRGBD2Ev}
!168 = distinct !{null}
!169 = distinct !{null, ptr @_ZN2cv16OdometrySettingsD2Ev, null, null, null}
!170 = distinct !{null}
!171 = distinct !{null, ptr @_ZN2cv16OdometrySettingsD2Ev, null, null, null}
!172 = distinct !{null}
!173 = distinct !{null, ptr @_ZN2cv16OdometrySettingsD2Ev, null, null, null}
!174 = distinct !{null}
end_hunk_0
