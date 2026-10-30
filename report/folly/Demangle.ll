Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Demangle?download=true
inline.NumInlined: 143
inline.NumDeleted: 65
begin_hunk_0_@llvm.memcpy.p0.p0.i64
; Function Attrs: mustprogress uwtable
define void @_ZN5folly8demangleEPKc(ptr dead_on_unwind noalias writable sret(%"class.folly::basic_fbstring") align 8 %0, ptr noundef %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 23, ptr %i.c, align 1, !tbaa !12
  store i8 0, ptr %0, align 8, !tbaa !12
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1024
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %.not37 = icmp eq ptr @__cxa_demangle, null
  br i1 %.not37, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !14
  %i.f = call noundef ptr @__cxa_demangle(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 3 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !27
  %.not38 = icmp eq i32 %i.g, 0
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPcmmNS_23AcquireMallocatedStringE.exit

bb.h:                                             ; preds = %bb.f
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #20 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = load i64, ptr %i.b, align 8, !tbaa !14
  store ptr %i.f, ptr %0, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.j, align 8, !tbaa !12
  %i.k = add i64 %i.i, 9223372036854775807
  %i.l = or i64 %i.k, -9223372036854775808
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !18
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPcmmNS_23AcquireMallocatedStringE.exit

bb.j:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.f) #18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 23, ptr %i.n, align 1, !tbaa !12
  store i8 0, ptr %0, align 8, !tbaa !12
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPcmmNS_23AcquireMallocatedStringE.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPcmmNS_23AcquireMallocatedStringE.exit: ; preds = %bb.j, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.k, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPcmmNS_23AcquireMallocatedStringE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 23
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN5folly13fbstring_coreIcE9initSmallEPKcm.exit.i, label %.critedge.sink.split.i.i

.critedge.sink.split.i.i:                         ; preds = %bb.b
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = add i64 %i.b, 23
  %i.d = xor i64 %i.c, %i.b
  %i.e = icmp ult i64 %i.d, 4096
  %..i.i = select i1 %i.e, i64 24, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr align 1 %1, i64 %..i.i, i1 false)
  br label %_ZN5folly13fbstring_coreIcE9initSmallEPKcm.exit.i

_ZN5folly13fbstring_coreIcE9initSmallEPKcm.exit.i: ; preds = %.critedge.sink.split.i.i, %bb.b
  %i.f = trunc nuw nsw i64 %2 to i8
  %i.g = sub nuw nsw i8 23, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.g, ptr %i.h, align 1, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %2
  store i8 0, ptr %i.i, align 1, !tbaa !12
  br label %_ZN5folly13fbstring_coreIcEC2EPKcmb.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %2, 255
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5folly13fbstring_coreIcE10initMediumEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN5folly13fbstring_coreIcEC2EPKcmb.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5folly13fbstring_coreIcE9initLargeEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN5folly13fbstring_coreIcEC2EPKcmb.exit

_ZN5folly13fbstring_coreIcEC2EPKcmb.exit:         ; preds = %_ZN5folly13fbstring_coreIcE9initSmallEPKcm.exit.i, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef %1) ; 8 uses
  %i.b = icmp ugt i64 %i.a, 23
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i, label %_ZN5folly13fbstring_coreIcE9initSmallEPKcm.exit.i, label %.critedge.sink.split.i.i

.critedge.sink.split.i.i:                         ; preds = %bb.b
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = add i64 %i.c, 23
  %i.e = xor i64 %i.d, %i.c
  %i.f = icmp ult i64 %i.e, 4096
  %..i.i = select i1 %i.f, i64 24, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr align 1 %1, i64 %..i.i, i1 false)
  br label %_ZN5folly13fbstring_coreIcE9initSmallEPKcm.exit.i

_ZN5folly13fbstring_coreIcE9initSmallEPKcm.exit.i: ; preds = %.critedge.sink.split.i.i, %bb.b
  %i.g = trunc nuw nsw i64 %i.a to i8
  %i.h = sub nuw nsw i8 23, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.h, ptr %i.i, align 1, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  store i8 0, ptr %i.j, align 1, !tbaa !12
  br label %_ZN5folly13fbstring_coreIcEC2EPKcmb.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.a, 255
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5folly13fbstring_coreIcE10initMediumEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %i.a)
  br label %_ZN5folly13fbstring_coreIcEC2EPKcmb.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5folly13fbstring_coreIcE9initLargeEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %i.a)
  br label %_ZN5folly13fbstring_coreIcEC2EPKcmb.exit

_ZN5folly13fbstring_coreIcEC2EPKcmb.exit:         ; preds = %_ZN5folly13fbstring_coreIcE9initSmallEPKcm.exit.i, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE10initMediumEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %2, 1                            ; 5 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !19

.split.i:                                         ; preds = %bb.b
  %i.d = icmp sgt i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #21
  br i1 %i.e, label %bb.c, label %_ZN5folly14goodMallocSizeEm.exit

bb.c:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.f = tail call i64 @nallocx(i64 noundef %i.a, i32 noundef 0) #18 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not.i, i64 %i.a, i64 %i.f
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %bb.a, %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.c
  %.0.i.a = phi i64 [ 0, %bb.a ], [ %i.g, %bb.c ], [ %i.a, %_ZN5folly10canNallocxEv.exit.i ], [ %i.a, %.split.i ] ; 2 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %.0.i.a) #22 ; 4 uses
  %.not.i9 = icmp eq ptr %i.h, null
  br i1 %.not.i9, label %bb.d, label %_ZN5folly13checkedMallocEm.exit

bb.d:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #14
  unreachable

_ZN5folly13checkedMallocEm.exit:                  ; preds = %_ZN5folly14goodMallocSizeEm.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !12
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %_ZN5folly13checkedMallocEm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5folly13checkedMallocEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.i, align 8, !tbaa !12
  %3 = add i64 %.0.i.a, 9223372036854775807
  %i.j = or i64 %3, -9223372036854775808
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %2
  store i8 0, ptr %i.l, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE9initLargeEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %2, ptr %i.a, align 8, !tbaa !14
  %i.b = call noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted6createEPm(ptr noundef nonnull %i.a) ; 2 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN5folly13fbstring_coreIcE10RefCounted6createEPKcPm.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN5folly13fbstring_coreIcE10RefCounted6createEPKcPm.exit

_ZN5folly13fbstring_coreIcE10RefCounted6createEPKcPm.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !12
  %i.f = load i64, ptr %i.a, align 8, !tbaa !14
  %i.g = or i64 %i.f, 4611686018427387904
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  store i8 0, ptr %i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind
declare extern_weak i64 @nallocx(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.anon, align 1                ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.d = invoke noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !22
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load i8, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !22, !range !23, !noundef !24
  %i.g = trunc nuw i8 %i.f to i1
  ret i1 %i.g

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #19
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN5folly13usingJEMallocEv.exit.i, label %.split.i, !prof !19

.split.i:                                         ; preds = %bb.a
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

_ZN5folly13usingJEMallocEv.exit.i:                ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() #21
  br i1 %i.c, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly13usingJEMallocEv.exit.i, %.split.i
  %i.d = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i1.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i1.i, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, label %.split, !prof !19

.split:                                           ; preds = %bb.b
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit: ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() #21
  br i1 %i.f, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread: ; preds = %.split.i, %_ZN5folly13usingJEMallocEv.exit.i, %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit
  br label %bb.c

bb.c:                                             ; preds = %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread
  %i.g = phi i1 [ true, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ false, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ false, %.split ]
  %i.h = phi i8 [ 1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ -1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ -1, %.split ]
  store atomic i8 %i.h, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E release, align 1
  ret i1 %i.g
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #10

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingJEMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !22
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !22, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #8

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingTCMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !22
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !22, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !26
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
          to label %bb.b unwind label %bb.c

end_hunk_0
