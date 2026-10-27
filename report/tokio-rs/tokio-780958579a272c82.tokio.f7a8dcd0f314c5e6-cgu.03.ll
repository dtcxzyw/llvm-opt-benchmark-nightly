Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.03?download=true
inline.NumInlined: 433
inline.NumDeleted: 200
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEEB13_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !46, !nonnull !9, !noundef !9
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !46
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !49, !nonnull !9, !noundef !9
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !49
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !9
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #29
          to label %bb.k unwind label %bb.j

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.d = load i64, ptr %0, align 8, !range !13, !alias.scope !65, !noundef !9 ; 2 uses
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !69, !nonnull !9, !noundef !9
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !70
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.k = load ptr, ptr %i.f, align 8, !alias.scope !73, !nonnull !9, !noundef !9
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !74
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.j:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.k:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslghKHtsL3a4_5tokio.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslghKHtsL3a4_5tokio.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslghKHtsL3a4_5tokio.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslghKHtsL3a4_5tokio.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #14
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit
    i64 1, label %bb.e
  ], !prof !15

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !77
  store i8 3, ptr %i.a, align 8, !alias.scope !77
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit
    i64 1, label %bb.e
  ], !prof !15

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.8.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !80
  store i8 3, ptr %i.a, align 8, !alias.scope !80
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEEB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEEB1E_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEEB1E_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std2fs4FileEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !83, !nonnull !9, !noundef !9
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !83
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std2fs4FileE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit

_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !86, !nonnull !9, !noundef !9
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !86
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_.exit

_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !89, !nonnull !9, !noundef !9
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !89
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_.exit

_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  invoke void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_6PacketuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !110, !noundef !9 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECslghKHtsL3a4_5tokio.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !111
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECslghKHtsL3a4_5tokio.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.p

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !113, !noundef !9 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECslghKHtsL3a4_5tokio.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !114
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECslghKHtsL3a4_5tokio.exit3.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECslghKHtsL3a4_5tokio.exit3.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.b, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #29
          to label %common.resume.i unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECslghKHtsL3a4_5tokio.exit3.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.n = load i64, ptr %i.m, align 8, !range !8, !alias.scope !117, !noundef !9
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECslghKHtsL3a4_5tokio.exit, label %bb.i
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot6SenderuEEEB1l_:bb.a
_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot6SenderuEEBI_.exit: ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3tcp6stream9TcpStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i.i = load i32, ptr %i.c, align 8, !alias.scope !143, !noundef !9 ; 2 uses
  %i.d = icmp eq i32 %.val2.i.i, -1
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3tcp6stream9TcpStreamEECslghKHtsL3a4_5tokio.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 @close(i32 noundef %.val2.i.i) #14 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3tcp6stream9TcpStreamEECslghKHtsL3a4_5tokio.exit.i.i

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i = load i32, ptr %i.f, align 8, !alias.scope !143, !noundef !9 ; 2 uses
  %i.g = icmp eq i32 %.val.i.i, -1
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEBJ_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noundef i32 @close(i32 noundef %.val.i.i) #14 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEBJ_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3tcp6stream9TcpStreamEECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #29
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3tcp6stream9TcpStreamEECslghKHtsL3a4_5tokio.exit.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3tcp6stream9TcpStreamEECslghKHtsL3a4_5tokio.exit.i.i
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEBJ_.exit: ; preds = %bb.d, %bb.e
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i.i = load i32, ptr %i.c, align 8, !alias.scope !148, !noundef !9 ; 2 uses
  %i.d = icmp eq i32 %.val2.i.i, -1
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEECslghKHtsL3a4_5tokio.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 @close(i32 noundef %.val2.i.i) #14 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEECslghKHtsL3a4_5tokio.exit.i.i

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i = load i32, ptr %i.f, align 8, !alias.scope !148, !noundef !9 ; 2 uses
  %i.g = icmp eq i32 %.val.i.i, -1
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEBJ_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noundef i32 @close(i32 noundef %.val.i.i) #14 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEBJ_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #29
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEECslghKHtsL3a4_5tokio.exit.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbPfeiB6icZG_3mio3net3uds6stream10UnixStreamEECslghKHtsL3a4_5tokio.exit.i.i
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEBJ_.exit: ; preds = %bb.d, %bb.e
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEEB1m_(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB5_11ScheduledIoNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 128 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexNtNtNtNtBK_7runtime2io12scheduled_io7WaitersEEBK_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #29
          to label %common.resume.i unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 16, !alias.scope !162, !align !16, !noundef !9 ; 2 uses
  %i.e = icmp eq ptr %.val4.i.i.i.i.i, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val5.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !162
  %i.g = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noalias !162, !nonnull !9, !noundef !9
  invoke void %i.h(ptr noundef %.val5.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i.i.i.i unwind label %bb.e, !noalias !162, !inline_history !0

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val2.i.i.i.i.i = load ptr, ptr %i.j, align 64, !alias.scope !162, !align !16, !noundef !9 ; 2 uses
  %i.k = icmp eq ptr %.val2.i.i.i.i.i, null
  br i1 %i.k, label %common.resume.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val3.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !162
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !noalias !162, !nonnull !9, !noundef !9
  invoke void %i.n(ptr noundef %.val3.i.i.i.i.i)
          to label %common.resume.i unwind label %bb.h, !noalias !162, !inline_history !0

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 64, !alias.scope !162, !align !16, !noundef !9 ; 2 uses
  %i.p = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEBJ_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !162
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !noalias !162, !nonnull !9, !noundef !9
  tail call void %i.s(ptr noundef %.val1.i.i.i.i.i), !noalias !162, !inline_history !157
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEBJ_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !162
  unreachable

common.resume.i:                                  ; preds = %bb.f, %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.i, %bb.f ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEBJ_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECslghKHtsL3a4_5tokio(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #14
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #14
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslghKHtsL3a4_5tokio(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #14
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #14
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBI_6thread2id8ThreadIdEEEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !align !16, !noundef !9 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !17, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECslghKHtsL3a4_5tokio.exit, !prof !19

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECslghKHtsL3a4_5tokio.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4sync5mutex5MutexNtNtNtBI_2fs4file5InnerEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !20, !alias.scope !169, !noundef !9
  switch i64 %i.b, label %bb.b [
    i64 -2, label %bb.e
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCslghKHtsL3a4_5tokio2fs4file5InnerEEB16_.exit
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCslghKHtsL3a4_5tokio2fs4file5InnerEEB16_.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCslghKHtsL3a4_5tokio2fs4file5InnerEEB16_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCslghKHtsL3a4_5tokio2fs4file5InnerEEB16_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !180, !nonnull !9, !noundef !9
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !180
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEEEB1g_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEEEB1g_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !183, !nonnull !9, !noundef !9
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !183
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEEEB1g_.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEEEB1g_.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEEEB1g_.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEEEB1g_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot8ReceiveruEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs2_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !196, !noundef !9 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !197
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !198, !noundef !9 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !199
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit1

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit1: ; preds = %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit: ; preds = %bb.c, %bb.b, %bb.d
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtBJ_7Spawner12spawn_thread0EBP_:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtCslghKHtsL3a4_5tokio6signal11make_future0EBH_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !range !22, !noundef !9
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.g
  ]

common.ret.sink.split:                            ; preds = %bb.r, %bb.e
  %.sink = phi ptr [ %0, %bb.e ], [ %i.af, %bb.r ]
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink) #28
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %bb.r, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !288, !nonnull !9, !noundef !9
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !289
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %common.resume

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #28
          to label %common.resume unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !292, !nonnull !9, !noundef !9
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !293
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %common.ret.sink.split, label %common.ret

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body.i.i.i, %bb.p, %bb.q, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.ag, %bb.q ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i8, ptr %i.k, align 8, !range !22, !noundef !9
  %cond.i = icmp eq i8 %i.l, 3
  br i1 %cond.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs2_NtNtCslghKHtsL3a4_5tokio4sync5watchINtBJ_8ReceiveruE7changed0EBN_.exit

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.n = load i8, ptr %i.m, align 1, !range !21, !noundef !9
  %cond.i.i.i = icmp eq i8 %i.n, 4
  br i1 %cond.i.i.i, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs2_NtNtCslghKHtsL3a4_5tokio4sync5watchINtBJ_8ReceiveruE7changed0EBN_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXsb_NtNtCslghKHtsL3a4_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.o)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 112
  %.val2.i.i.i.i = load ptr, ptr %i.q, align 8, !align !16, !noundef !9 ; 2 uses
  %i.r = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.r, label %.body.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr i8, ptr %0, i64 120
  %.val3.i.i.i.i = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !9, !noundef !9
  invoke void %i.u(ptr noundef %.val3.i.i.i.i)
          to label %.body.i.i.i unwind label %bb.n, !inline_history !1

bb.l:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %0, i64 112
  %.val.i.i.i.i = load ptr, ptr %i.v, align 8, !align !16, !noundef !9 ; 2 uses
  %i.w = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify8NotifiedEBH_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr i8, ptr %0, i64 120
  %.val1.i.i.i.i = load ptr, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !9, !noundef !9
  invoke void %i.z(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify8NotifiedEBH_.exit.i.i.i unwind label %bb.o, !inline_history !2

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.o, %bb.k, %bb.j
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.p, %bb.k ], [ %i.p, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4sync5watch8ReceiveruEEBI_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ad) #29
          to label %common.resume unwind label %bb.t

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify8NotifiedEBH_.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.ae, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs2_NtNtCslghKHtsL3a4_5tokio4sync5watchINtBJ_8ReceiveruE7changed0EBN_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs2_NtNtCslghKHtsL3a4_5tokio4sync5watchINtBJ_8ReceiveruE7changed0EBN_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync6notify8NotifiedEBH_.exit.i.i.i, %bb.h, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  invoke void @_RNvXs4_NtNtCslghKHtsL3a4_5tokio4sync5watchINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs2_NtNtCslghKHtsL3a4_5tokio4sync5watchINtBJ_8ReceiveruE7changed0EBN_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.ah = load ptr, ptr %i.af, align 8, !alias.scope !296, !nonnull !9, !noundef !9
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !297
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af) #28
          to label %common.resume unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs2_NtNtCslghKHtsL3a4_5tokio4sync5watchINtBJ_8ReceiveruE7changed0EBN_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.ak = load ptr, ptr %i.af, align 8, !alias.scope !300, !nonnull !9, !noundef !9
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !301
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %common.ret.sink.split, label %common.ret

bb.s:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.t:                                             ; preds = %.body.i.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit
    i64 1, label %bb.c
  ], !prof !15

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !304
  store i8 3, ptr %i.a, align 8, !alias.scope !304
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECslghKHtsL3a4_5tokio.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle10ThreadInitECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !317, !nonnull !9, !noundef !9
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !317
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !9, !align !16, !noundef !9
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECslghKHtsL3a4_5tokio(ptr %.val2, ptr nonnull %.val3) #29
          to label %common.resume unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !9, !align !16, !noundef !9 ; 5 uses
  %i.i = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECslghKHtsL3a4_5tokio.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECslghKHtsL3a4_5tokio.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #14
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECslghKHtsL3a4_5tokio.exit: ; preds = %bb.e, %bb.f
  ret void

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15ChildSpawnHooksECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXNtNtCsaL1QbXo9JQH_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !333, !noundef !9 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !334
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !336, !noundef !9 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECslghKHtsL3a4_5tokio.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !337
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECslghKHtsL3a4_5tokio.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECslghKHtsL3a4_5tokio.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #29
          to label %common.resume unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECslghKHtsL3a4_5tokio.exit: ; preds = %bb.f, %bb.e, %bb.g
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECslghKHtsL3a4_5tokio.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECslghKHtsL3a4_5tokio.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.l:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !13, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %.val1 = load i64, ptr %i.e, align 8, !range !8, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.f, align 8            ; 4 uses
  %i.g = icmp eq i64 %.val1, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = ptrtoint ptr %.val2 to i64               ; 2 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 1, label %bb.e
  ], !prof !15

default.unreachable:                              ; preds = %bb.k, %bb.g, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult ptr %.val2, inttoptr (i64 188978561024 to ptr)
  %i.k = and i64 %i.h, 1095216660480
  %i.l = icmp ne i64 %i.k, 1095216660480
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.l)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.val2, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !344
  store i8 3, ptr %i.c, align 8, !alias.scope !344
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

bb.f:                                             ; preds = %bb.a
  %.val3 = load i64, ptr %i.e, align 8, !range !8, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.o, align 8            ; 4 uses
  %i.p = icmp eq i64 %.val3, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = ptrtoint ptr %.val4 to i64               ; 2 uses
  %i.r = and i64 %i.q, 3
  switch i64 %i.r, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5
    i64 3, label %bb.h
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5
    i64 1, label %bb.i
  ], !prof !15

bb.h:                                             ; preds = %bb.g
  %i.s = icmp ult ptr %.val4, inttoptr (i64 188978561024 to ptr)
  %i.t = and i64 %i.q, 1095216660480
  %i.u = icmp ne i64 %i.t, 1095216660480
  tail call void @llvm.assume(i1 %i.s)
  tail call void @llvm.assume(i1 %i.u)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %.val4, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !alias.scope !345
  store i8 3, ptr %i.b, align 8, !alias.scope !345
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5: ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

bb.j:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.e, align 8, !noundef !9 ; 4 uses
  %i.x = icmp eq ptr %.val, null
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = ptrtoint ptr %.val to i64                ; 2 uses
  %i.z = and i64 %i.y, 3
  switch i64 %i.z, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7
    i64 1, label %bb.m
  ], !prof !15

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.ab = and i64 %i.y, 1095216660480
  %i.ac = icmp ne i64 %i.ab, 1095216660480
  tail call void @llvm.assume(i1 %i.aa)
  tail call void @llvm.assume(i1 %i.ac)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7

bb.m:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %.val, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !346
  store i8 3, ptr %i.a, align 8, !alias.scope !346
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i7, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i5, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !357, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !360, !nonnull !9, !noundef !9
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !360
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !363, !nonnull !9, !noundef !9
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !363
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime7builder7BuilderEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !12, !alias.scope !446, !noundef !9
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !449, !nonnull !9, !noundef !9
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !449
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECslghKHtsL3a4_5tokio.exit

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBO_6marker4SendNtB1U_4SyncEL_E9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECslghKHtsL3a4_5tokio.exit unwind label %bb.al

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !452, !nonnull !9, !noundef !9
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !452
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECslghKHtsL3a4_5tokio.exit14

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBO_6marker4SendNtB1U_4SyncEL_E9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECslghKHtsL3a4_5tokio.exit14 unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECslghKHtsL3a4_5tokio.exit: ; preds = %.body, %bb.f, %bb.j
  %.pn = phi { ptr, i32 } [ %i.t, %bb.j ], [ %eh.lpad-body, %bb.f ], [ %eh.lpad-body, %.body ] ; 3 uses
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics13set_thread_id:bb.a
_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBQ_6thread2id8ThreadIdEEINtBM_11PoisonErrorBH_EE6unwrapCslghKHtsL3a4_5tokio.exit
  %i.w = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.x = icmp eq i32 %i.w, 2
  br i1 %i.x, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECslghKHtsL3a4_5tokio.exit, !prof !19

bb.j:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionNtNtNtBK_6thread2id8ThreadIdEEECslghKHtsL3a4_5tokio.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics15set_queue_depth(ptr nofree noundef nonnull align 128 captures(none) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i64 %1, ptr %i.a monotonic, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8shutdownNtB2_8Receiver4wait(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 %1, i32 noundef range(i32 -1, 1000000000) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %.not = icmp eq i32 %2, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  %i.c = icmp eq i32 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime7context8blocking25try_enter_blocking_region()
  br i1 %i.d, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.e = call noundef i8 @_RINvMs2_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB6_16CachedParkThread8block_onQINtNtNtBa_4sync7oneshot8ReceiveruEEBa_(ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.g, %bb.c
  %i.f = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.g = and i64 %i.f, 9223372036854775807
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.i, %bb.h, %bb.d
  %.sroa.05.0 = phi i1 [ true, %bb.d ], [ %i.k, %bb.h ], [ false, %bb.b ], [ false, %bb.i ]
  ret i1 %.sroa.05.0

bb.g:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime7context8blocking25try_enter_blocking_region()
  br i1 %i.i, label %bb.h, label %bb.e, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.j = call noundef i8 @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context8blockingNtB3_19BlockingRegionGuard16block_on_timeoutQINtNtNtB9_4sync7oneshot8ReceiveruEEB9_(ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i32 noundef %2)
  %i.k = icmp ne i8 %i.j, 2
  br label %bb.f

bb.i:                                             ; preds = %bb.e
  %i.l = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.l, label %bb.j, label %bb.f, !prof !19

bb.j:                                             ; preds = %bb.e, %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 283 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_ownedNtB5_13OwnedReadHalf10local_addr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream10local_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_ownedNtB5_13OwnedReadHalf17try_read_vectored(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream17try_read_vectored(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  ret { i64, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_ownedNtB5_13OwnedReadHalf7reunite(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvNtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_owned7reunite(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_ownedNtB5_13OwnedReadHalf8try_read(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream8try_read(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret { i64, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_ownedNtB5_13OwnedReadHalf9peer_addr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream9peer_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_ownedNtB5_13OwnedReadHalf9poll_peek(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream9poll_peek(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret { i64, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net4unix11split_ownedNtB5_13OwnedReadHalf10local_addr(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream10local_addr(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net4unix11split_ownedNtB5_13OwnedReadHalf17try_read_vectored(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream17try_read_vectored(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  ret { i64, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net4unix11split_ownedNtB5_13OwnedReadHalf7reunite(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvNtNtNtCslghKHtsL3a4_5tokio3net4unix11split_owned7reunite(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net4unix11split_ownedNtB5_13OwnedReadHalf8try_read(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream8try_read(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret { i64, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net4unix11split_ownedNtB5_13OwnedReadHalf9peer_addr(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream9peer_addr(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker15register_by_ref(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = cmpxchg ptr %i.a, i64 0, i64 1 acquire acquire, align 8, !noalias !850
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.b, 0
  switch i64 %.sroa.01.0.i.i, label %_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB6_11AtomicWaker11do_registerRNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerEBc_.exit [
    i64 0, label %bb.b
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = invoke { ptr, ptr } @_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerRNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerNtB5_8WakerRef10into_waker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.f unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.e)
          to label %.thread146.i unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerRNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerNtB5_8WakerRef4wake(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  tail call void @llvm.x86.sse2.pause()
  br label %_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB6_11AtomicWaker11do_registerRNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerEBc_.exit

bb.f:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %2 = extractvalue { ptr, ptr } %i.c, 1
  %i.i = load ptr, ptr %0, align 8, !noalias !850, !align !16, !noundef !9 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !850 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !noalias !850
  store ptr %2, ptr %i.j, align 8, !noalias !850
  %i.l = cmpxchg ptr %i.a, i64 1, i64 0 acq_rel acquire, align 8, !noalias !850
  %.sroa.18.0.in.i60.i = extractvalue { i64, i1 } %i.l, 1
  br i1 %.sroa.18.0.in.i60.i, label %bb.j, label %bb.i

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.thread337.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %not..sroa.18.0.in.i61167345.i, label %.thread.i, label %.thread139.thread.i

bb.h:                                             ; preds = %bb.ah, %bb.ag, %bb.af
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread146.i:                                     ; preds = %bb.c
  %i.o = extractvalue { ptr, ptr } %i.f, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = extractvalue { ptr, ptr } %i.f, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = cmpxchg ptr %i.a, i64 1, i64 0 acq_rel acquire, align 8, !noalias !850
  %.sroa.18.0.in.i60151.i = extractvalue { i64, i1 } %i.q, 1
  br i1 %.sroa.18.0.in.i60151.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.thread337.i, label %.thread225.i

bb.i:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %0, align 8, !noalias !850, !align !16, !noundef !9
  %i.s = load ptr, ptr %i.j, align 8, !noalias !850
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit72.i

.thread225.i:                                     ; preds = %.thread146.i
  %i.t = load ptr, ptr %0, align 8, !noalias !850, !align !16, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !850 ; 2 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit72.i

bb.j:                                             ; preds = %bb.f
  %i.w = icmp eq ptr %i.i, null
  br i1 %i.w, label %_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB6_11AtomicWaker11do_registerRNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerEBc_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !851, !nonnull !9, !noundef !9
  invoke void %i.y(ptr noundef %i.k)
          to label %_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB6_11AtomicWaker11do_registerRNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerEBc_.exit unwind label %bb.l, !inline_history !847

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aa)
          to label %bb.n unwind label %bb.m       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #27
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ad = extractvalue { ptr, ptr } %i.ab, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ae = extractvalue { ptr, ptr } %i.ab, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i67.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i67.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.af(ptr noundef nonnull %i.ad)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB6_11AtomicWaker11do_registerRNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerEBc_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef range(i64 1, -9223372036854775808) %i.ah, i64 noundef range(i64 1, 536870913) %i.ak) #14
  br label %_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB6_11AtomicWaker11do_registerRNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerEBc_.exit

bb.r:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.thread139.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef range(i64 1, -9223372036854775808) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #14
  br label %.thread139.thread.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit79.i
  %.not36.i = icmp eq ptr %.sroa.0.0163235.i, null
  br i1 %.not36.i, label %_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB6_11AtomicWaker11do_registerRNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerEBc_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.thread337.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit72.i: ; preds = %.thread225.i, %bb.i
  %i.ar = phi ptr [ %i.s, %bb.i ], [ %i.v, %.thread225.i ] ; 2 uses
  %.sroa.12.0161237.i = phi ptr [ undef, %bb.i ], [ %i.p, %.thread225.i ] ; 4 uses
  %.sroa.0.0163235.i = phi ptr [ null, %bb.i ], [ %i.o, %.thread225.i ] ; 5 uses
  %.sroa.096.0.i = phi ptr [ %i.r, %bb.i ], [ null, %.thread225.i ] ; 4 uses
  %.sroa.15.4.i = phi ptr [ %i.k, %bb.i ], [ %i.v, %.thread225.i ] ; 3 uses
  %.sroa.089.4.i = phi ptr [ %i.i, %bb.i ], [ %i.t, %.thread225.i ] ; 4 uses
  store ptr null, ptr %0, align 8, !noalias !850
  %i.as = atomicrmw xchg ptr %i.a, i64 0 acq_rel, align 8, !noalias !850 ; 0 uses
  %.not32.i = icmp eq ptr %.sroa.089.4.i, null    ; 3 uses
  br i1 %.not32.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit79.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit72.i
  %i.at = getelementptr i8, ptr %.sroa.089.4.i, i64 8
  %.val.i.i = load ptr, ptr %i.at, align 8, !nonnull !9, !noundef !9
  invoke void %.val.i.i(ptr noundef %.sroa.15.4.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit79.i unwind label %bb.u, !inline_history !848

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  %i.aw = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.av)
          to label %__rust_try.exit74.i unwind label %bb.v ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit79.i: ; preds = %bb.z, %bb.y, %__rust_try.exit74.i, %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit72.i
  %.not33.i = icmp eq ptr %.sroa.096.0.i, null
  br i1 %.not33.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.i, label %bb.ad

__rust_try.exit74.i:                              ; preds = %bb.u
  %i.ay = extractvalue { ptr, ptr } %i.aw, 0      ; 4 uses
  %i.az = extractvalue { ptr, ptr } %i.aw, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit79.i, label %bb.w

bb.w:                                             ; preds = %__rust_try.exit74.i
  %i.bb = load ptr, ptr %i.az, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i75.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i75.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void %i.bb(ptr noundef nonnull %i.ay)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit79.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef range(i64 1, -9223372036854775808) %i.bd, i64 noundef range(i64 1, 536870913) %i.bg) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit79.i

bb.aa:                                            ; preds = %bb.x
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !range !11, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef range(i64 1, -9223372036854775808) %i.bj, i64 noundef range(i64 1, 536870913) %i.bm) #14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not.i = icmp eq ptr %.sroa.096.0.i, null
  br i1 %.not.i, label %.thread139.i, label %bb.af

.thread267.i:                                     ; preds = %bb.ad
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit79.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.096.0.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !9, !noundef !9
  invoke void %i.bp(ptr noundef %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.i unwind label %.thread267.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.thread337.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.i, %.thread146.i
  %.sroa.019.4350.i = phi i1 [ %.not32.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.i ], [ false, %.thread146.i ]
  %.sroa.089.3349.i = phi ptr [ %.sroa.089.4.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.i ], [ null, %.thread146.i ]
  %.sroa.15.3348.i = phi ptr [ %.sroa.15.4.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.i ], [ undef, %.thread146.i ]
  %.sroa.12.0159347.i = phi ptr [ %.sroa.12.0161237.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.i ], [ %i.p, %.thread146.i ] ; 2 uses
  %.sroa.0.0164346.i = phi ptr [ %.sroa.0.0163235.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.i ], [ %i.o, %.thread146.i ] ; 2 uses
  %not..sroa.18.0.in.i61167345.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.i ], [ false, %.thread146.i ]
  invoke void @_RNvNtCsaL1QbXo9JQH_3std5panic13resume_unwind(ptr noundef nonnull %.sroa.0.0164346.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.12.0159347.i) #30
          to label %bb.ae unwind label %bb.g

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.thread337.i
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.096.0.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !9, !noundef !9
  invoke void %i.br(ptr noundef %i.ar)
          to label %.thread139.i unwind label %bb.h, !inline_history !849

.thread139.i:                                     ; preds = %bb.ag, %.thread.i, %bb.af, %bb.ac
  %.sroa.020.1136.i = phi i1 [ %.sroa.020.1137.i, %.thread.i ], [ %.sroa.020.1137.i, %bb.ag ], [ true, %bb.af ], [ true, %bb.ac ]
  %.pn37134.i = phi { ptr, i32 } [ %.pn37135.i, %.thread.i ], [ %.pn37135.i, %bb.ag ], [ %i.bh, %bb.af ], [ %i.bh, %bb.ac ] ; 2 uses
  %.sroa.0.1132.i = phi ptr [ %.sroa.0.1133.i, %.thread.i ], [ %.sroa.0.1133.i, %bb.ag ], [ %.sroa.0.0163235.i, %bb.af ], [ %.sroa.0.0163235.i, %bb.ac ] ; 2 uses
  %.sroa.12.1130.i = phi ptr [ %.sroa.12.1131.i, %.thread.i ], [ %.sroa.12.1131.i, %bb.ag ], [ %.sroa.12.0161237.i, %bb.af ], [ %.sroa.12.0161237.i, %bb.ac ]
  %i.bs = icmp ne ptr %.sroa.0.1132.i, null
  %or.cond5.i = and i1 %.sroa.020.1136.i, %i.bs
  br i1 %or.cond5.i, label %bb.ah, label %.thread139.thread.i

.thread.i:                                        ; preds = %.thread267.i, %bb.g
  %.sroa.019.2138.i = phi i1 [ %.sroa.019.4350.i, %bb.g ], [ %.not32.i, %.thread267.i ]
  %.sroa.020.1137.i = phi i1 [ false, %bb.g ], [ true, %.thread267.i ] ; 2 uses
  %.pn37135.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.bn, %.thread267.i ] ; 2 uses
  %.sroa.0.1133.i = phi ptr [ %.sroa.0.0164346.i, %bb.g ], [ %.sroa.0.0163235.i, %.thread267.i ] ; 2 uses
  %.sroa.12.1131.i = phi ptr [ %.sroa.12.0159347.i, %bb.g ], [ %.sroa.12.0161237.i, %.thread267.i ] ; 2 uses
  %.sroa.089.2129.i = phi ptr [ %.sroa.089.3349.i, %bb.g ], [ %.sroa.089.4.i, %.thread267.i ] ; 2 uses
  %.sroa.15.2128.i = phi ptr [ %.sroa.15.3348.i, %bb.g ], [ %.sroa.15.4.i, %.thread267.i ]
  %i.bt = icmp ne ptr %.sroa.089.2129.i, null
  %or.cond3.i = and i1 %.sroa.019.2138.i, %i.bt
  br i1 %or.cond3.i, label %bb.ag, label %.thread139.i

bb.ag:                                            ; preds = %.thread.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.089.2129.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !9, !noundef !9
  invoke void %i.bv(ptr noundef %.sroa.15.2128.i)
          to label %.thread139.i unwind label %bb.h, !inline_history !849

bb.ah:                                            ; preds = %.thread139.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslghKHtsL3a4_5tokio(ptr nonnull %.sroa.0.1132.i, ptr %.sroa.12.1130.i) #29
          to label %.thread139.thread.i unwind label %bb.h

.thread139.thread.i:                              ; preds = %bb.ah, %.thread139.i, %bb.s, %bb.r, %bb.g
  %.pn37134277.i = phi { ptr, i32 } [ %.pn37134.i, %.thread139.i ], [ %.pn37134.i, %bb.ah ], [ %i.al, %bb.s ], [ %i.al, %bb.r ], [ %i.m, %bb.g ]
  resume { ptr, i32 } %.pn37134277.i

_RINvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB6_11AtomicWaker11do_registerRNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerEBc_.exit: ; preds = %bb.a, %bb.e, %bb.j, %bb.k, %bb.p, %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECslghKHtsL3a4_5tokio.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = atomicrmw or ptr %i.a, i64 2 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !align !16, !noundef !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
end_hunk_3
begin_hunk_4_@_RNvMs8_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_5Inner10poll_flush:bb.a
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.413 = alloca [48 x i8], align 8          ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !25, !noundef !9 ; 2 uses
  store i8 -1, ptr %i.d, align 8
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 32
  %i.h = or disjoint i64 %i.g, 3
  %i.i = inttoptr i64 %i.h to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 8, !range !20, !noundef !9
  %i.k = icmp eq i64 %i.j, -2
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.n, %bb.b
  %.sroa.8.0 = phi ptr [ %i.i, %bb.b ], [ null, %bb.c ], [ %.sroa.8.1, %bb.n ], [ %i.r, %bb.g ], [ undef, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.n ], [ 0, %bb.g ], [ 1, %bb.e ]
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, ptr } %i.l, ptr %.sroa.8.0, 1
  ret { i64, ptr } %i.m

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollBb_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.o = load i64, ptr %i.b, align 8, !range !26, !noundef !9 ; 4 uses
  %i.p = icmp eq i64 %i.o, -2
  br i1 %i.p, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.q = icmp eq i64 %i.o, -1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  %i.r = call noundef nonnull ptr @_RNvXs2_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5errorNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBU_7convert4FromNtB5_9JoinErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.413, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  %.sroa.413.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.413.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, i64 16, i1 false)
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 16 ; 2 uses
  store i64 %i.o, ptr %i.c, align 8
  %i.s = load i64, ptr %0, align 8, !range !20, !alias.scope !917, !noundef !9
  switch i64 %i.s, label %bb.i [
    i64 -2, label %bb.l
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  ]

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.h
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.m ], [ %i.t, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.24..sroa_idx, i64 32, i1 false)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.q unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit: ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.24..sroa_idx, i64 32, i1 false)
  %i.w = icmp eq i64 %i.o, 1                      ; 2 uses
  %i.x = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.8.1 = select i1 %i.w, ptr %i.x, ptr null
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c)
  br label %bb.n

bb.p:                                             ; preds = %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.q:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs8_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_5Inner22poll_complete_inflight(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = tail call fastcc { i64, ptr } @_RNvMs8_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_5Inner10poll_flush(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 8 uses
  %i.e = trunc nuw i64 %i.c to i1                 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.e, i1 true, i1 %.not
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.g
    i64 0, label %bb.d
    i64 1, label %bb.h
  ], !prof !15

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.i = lshr i64 %i.f, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  %i.m = invoke noundef i8 %i.l(i32 noundef %i.j)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread unwind label %bb.f, !inline_history !3

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !27, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread

bb.e:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit
  ret i1 %i.e

bb.f:                                             ; preds = %.noexc, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %i.d) #29
          to label %bb.j unwind label %bb.i

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread: ; preds = %bb.d, %.noexc
  %.sroa.0.0.i.ph = phi i8 [ %i.m, %.noexc ], [ %i.o, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.0.0.i.ph, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

bb.g:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.f, 32
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8   ; 2 uses
  %i.s = icmp ne i8 %switch.idx.cast.i.i.i, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %switch.idx.cast.i.i.i, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = icmp ult ptr %i.d, inttoptr (i64 188978561024 to ptr)
  %i.v = and i64 %i.f, 1095216660480
  %i.w = icmp ne i64 %i.v, 1095216660480
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.assume(i1 %i.w)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

bb.h:                                             ; preds = %bb.b
  %i.x = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = getelementptr i8, ptr %i.d, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !27, !noundef !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.z, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.ab, align 8, !alias.scope !920
  store i8 3, ptr %i.a, align 8, !alias.scope !920
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit: ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.j:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtNtCslghKHtsL3a4_5tokio4util14metric_atomicsNtB4_17MetricAtomicUsize4load(ptr nofree noundef nonnull align 8 captures(none) %0, i8 noundef range(i8 0, 5) %1) unnamed_addr #0 {
bb.a:
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ], !prof !24

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  br label %_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #32
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr %0 acquire, align 8
  br label %_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 99 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr %0 seq_cst, align 8
  br label %_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit

_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadjKb0_ECslghKHtsL3a4_5tokio.exit: ; preds = %bb.b, %bb.d, %bb.f
  %.sroa.0.0.i = phi i64 [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ %i.c, %bb.f ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7runtime18is_rt_shutdown_err(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.b
    i64 0, label %bb.c
    i64 1, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  ], !prof !15

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult ptr %i.d, inttoptr (i64 188978561024 to ptr)
  %i.h = and i64 %i.e, 1095216660480
  %i.i = icmp ne i64 %i.h, 1095216660480
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.i)
  br label %bb.c

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 -1
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.l = getelementptr i8, ptr %i.d, i64 7
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !9, !align !16, !noundef !9 ; 2 uses
  %i.n = getelementptr i8, ptr %i.d, i64 31
  %i.o = load i8, ptr %i.n, align 8, !range !27, !noundef !9
  %i.p = icmp eq i8 %i.o, 42
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit, %bb.d, %bb.e
  %.sroa.0.0 = phi i1 [ false, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit ], [ %.sroa.0.0.i2, %bb.e ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !9, !nonnull !9
  %i.s = tail call { ptr, ptr } %i.r(ptr noundef nonnull %i.k) #31
  %i.t = extractvalue { ptr, ptr } %i.s, 0
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.k, ptr %i.c, align 8, !noalias !923
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.u, align 8, !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !923
  store ptr @33, ptr %i.b, align 8, !noalias !923
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 56, ptr %i.v, align 8, !noalias !923
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i8 0, ptr %i.w, align 8, !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !923
  store ptr %i.c, ptr %i.a, align 8, !noalias !923
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtBS_4SyncEL_NtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !923
  %i.x = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @11, ptr noundef nonnull @10, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !923
  %i.y = load i64, ptr %i.v, align 8, !noalias !923, !noundef !9
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load i8, ptr %i.w, align 8, !range !17, !noalias !923
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = xor i1 %i.ab, true
  %.sroa.0.0.i2 = select i1 %i.z, i1 %i.ac, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RNvNtNtCslghKHtsL3a4_5tokio7runtime9thread_id9exhausted() unnamed_addr #6 {
bb.a:
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 111 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_owned11split_owned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !926
  %i.d = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 257) 48, i64 noundef range(i64 8, 129) 8) #14, !noalias !926 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEE3newB18_.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #30
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEE3newB18_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEE3newB18_.exit
  store ptr %i.d, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.k, align 8
  ret void

bb.g:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEE3newB18_.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_owned7reunite(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = icmp eq ptr %1, %2
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i1 %3 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 0, ptr %i.h, align 8
  %i.i = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !946
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #28
          to label %bb.f unwind label %bb.l

bb.e:                                             ; preds = %bb.k, %bb.b
  ret void

bb.f:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.k = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9 ; 6 uses
  %i.l = cmpxchg ptr %i.k, i64 1, i64 0 monotonic monotonic, align 8, !noalias !947
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.l, 1
  br i1 %.sroa.18.0.in.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1i_.exit.i, label %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE10try_unwrapBO_.exit.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1i_.exit.i: ; preds = %bb.f
  fence acquire
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.m, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !947
  store ptr %i.k, ptr %i.b, align 8, !noalias !947
  call void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !947
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %i.n, label %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE10try_unwrapBO_.exit.thread, label %bb.k, !prof !28

_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE10try_unwrapBO_.exit.thread: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1i_.exit.i
  %.sroa.6.021 = phi ptr [ %.sroa.6.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1i_.exit.i ], [ %i.k, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.021) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !948
  store ptr %.sroa.6.021, ptr %i.a, align 8, !noalias !948
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 39, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #30
          to label %bb.i unwind label %bb.g, !noalias !948

bb.g:                                             ; preds = %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE10try_unwrapBO_.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !951, !noalias !948, !nonnull !9, !noundef !9
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !952
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body.thread

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %.body.thread unwind label %bb.j, !noalias !948

bb.i:                                             ; preds = %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE10try_unwrapBO_.exit.thread
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !948
  unreachable

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamEEB1i_.exit.i
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx12, align 8
  br label %bb.e

.body.thread:                                     ; preds = %bb.l, %bb.m, %bb.h, %bb.g
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.o, %bb.h ], [ %i.o, %bb.g ], [ %i.t, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body16

bb.l:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.u = load ptr, ptr %i.d, align 8, !alias.scope !955, !nonnull !9, !noundef !9
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !955
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.m, label %.body.thread

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #28
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCslghKHtsL3a4_5tokio3net4unix11split_owned11split_owned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !958
  %i.d = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 257) 48, i64 noundef range(i64 8, 129) 8) #14, !noalias !958 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEE3newB18_.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #30
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEE3newB18_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEE3newB18_.exit
  store ptr %i.d, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.k, align 8
  ret void

bb.g:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEE3newB18_.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCslghKHtsL3a4_5tokio3net4unix11split_owned7reunite(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = icmp eq ptr %1, %2
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i1 %3 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 0, ptr %i.h, align 8
  %i.i = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !978
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #28
          to label %bb.f unwind label %bb.l

bb.e:                                             ; preds = %bb.k, %bb.b
  ret void

bb.f:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.k = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9 ; 6 uses
  %i.l = cmpxchg ptr %i.k, i64 1, i64 0 monotonic monotonic, align 8, !noalias !979
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.l, 1
  br i1 %.sroa.18.0.in.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1i_.exit.i, label %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE10try_unwrapBO_.exit.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1i_.exit.i: ; preds = %bb.f
  fence acquire
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.m, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !979
  store ptr %i.k, ptr %i.b, align 8, !noalias !979
  call void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !979
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %i.n, label %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE10try_unwrapBO_.exit.thread, label %bb.k, !prof !28

_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE10try_unwrapBO_.exit.thread: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1i_.exit.i
  %.sroa.6.021 = phi ptr [ %.sroa.6.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1i_.exit.i ], [ %i.k, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.021) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !980
  store ptr %.sroa.6.021, ptr %i.a, align 8, !noalias !980
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #30
          to label %bb.i unwind label %bb.g, !noalias !980

bb.g:                                             ; preds = %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE10try_unwrapBO_.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !981)
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !983, !noalias !980, !nonnull !9, !noundef !9
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !984
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body.thread

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %.body.thread unwind label %bb.j, !noalias !980

bb.i:                                             ; preds = %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE10try_unwrapBO_.exit.thread
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !980
  unreachable

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1i_.exit.i
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx12, align 8
  br label %bb.e

.body.thread:                                     ; preds = %bb.l, %bb.m, %bb.h, %bb.g
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.o, %bb.h ], [ %i.o, %bb.g ], [ %i.t, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body16

bb.l:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.u = load ptr, ptr %i.d, align 8, !alias.scope !987, !nonnull !9, !noundef !9
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !987
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.m, label %.body.thread

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #28
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 1, 0) i64 @_RNvNtNtNtCslghKHtsL3a4_5tokio4loom3std3sys8num_cpus() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env3varReECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 20)
  %i.g = load i64, ptr %i.f, align 8, !range !8, !noundef !9
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !12, !noundef !9
  %.not14 = icmp eq i64 %i.j, -1
  br i1 %.not14, label %bb.p, label %bb.o, !prof !18

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !9 ; 2 uses
  switch i64 %i.o, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.m, align 1, !alias.scope !992, !noundef !9 ; 2 uses
  switch i8 %i.p, label %bb.e [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.m, align 1, !alias.scope !992
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.q = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.p, %bb.d ]
  %cond.i = icmp eq i8 %i.q, 43                   ; 2 uses
  %i.r = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.o, %i.r          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.s = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.s, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.u, 0
  br i1 %.not52.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i56 = phi ptr [ %i.t, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i55 = phi i64 [ %i.u, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i54 = phi i64 [ %i.af, %.preheader56.i ], [ 0, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i56, i64 1
  %i.u = add nsw i64 %.sroa.15.1.i55, -1          ; 2 uses
  %i.v = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i54, i64 10) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 0         ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.v, 1
  %i.y = load i8, ptr %.sroa.0.1.i56, align 1, !alias.scope !992, !noundef !9 ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.f, !prof !19

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -48                   ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 10
  br i1 %i.ab, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.ac = add i8 %i.y, -48
  %i.ad = icmp ult i8 %i.ac, 10
  %spec.select = select i1 %i.ad, i8 2, i8 1
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = add i64 %i.w, %i.ae                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.w
  br i1 %i.ag, label %.loopexit, label %.preheader56.i, !prof !19

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.0.269.i = phi ptr [ %i.an, %bb.i ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.am, %bb.i ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ap, %bb.i ], [ 0, %.preheader.i ]
  %i.ah = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !992, !noundef !9
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 10
  br i1 %i.ak, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.al = mul i64 %.sroa.042.267.i, 10
  %i.am = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ao = zext nneg i32 %i.aj to i64
  %i.ap = add i64 %i.al, %i.ao                    ; 2 uses
  %.not53.i = icmp eq i64 %i.am, 0
  br i1 %.not53.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

bb.j:                                             ; preds = %.loopexit, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #29
          to label %common.resume unwind label %bb.n

.loopexit:                                        ; preds = %bb.f, %bb.h, %.lr.ph.i, %bb.g, %bb.c, %bb.d, %bb.d
  %.sroa.4.0.ph = phi i8 [ 1, %bb.d ], [ %spec.select, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ 1, %.lr.ph.i ], [ 1, %bb.f ], [ 2, %bb.h ]
  invoke fastcc void @_RNCNvNtNtNtCslghKHtsL3a4_5tokio4loom3std3sys8num_cpus0B9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, i8 noundef %.sroa.4.0.ph)
          to label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23.unreachable unwind label %bb.j

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.i
  %.sroa.0.0 = phi i64 [ %i.ap, %bb.i ], [ %i.af, %.preheader56.i ] ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23, !prof !28

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread: ; preds = %.preheader.i, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @20, ptr %i.d, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.48.0..sroa_idx, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #30
          to label %bb.m unwind label %bb.j

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23.unreachable: ; preds = %.loopexit
  unreachable

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23: ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit unwind label %bb.k

bb.k:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.t, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.bg, %bb.t ], [ %i.aq, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit: ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNvMse_BL_BI_3getECslghKHtsL3a4_5tokio.exit

bb.m:                                             ; preds = %bb.o, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNvMse_BL_BI_3getECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i, %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i ], [ %i.ay, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i64 %.sroa.0.1

bb.n:                                             ; preds = %bb.t, %bb.j
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.o:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @20, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.44.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.au, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs7_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #30
          to label %bb.m unwind label %bb.t

bb.p:                                             ; preds = %bb.b
  %i.av = call { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions21available_parallelism() ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = extractvalue { i64, ptr } %i.av, 1      ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.az = trunc nuw i64 %i.aw to i1
  br i1 %i.az, label %bb.q, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNvMse_BL_BI_3getECslghKHtsL3a4_5tokio.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ba = and i64 %i.ay, 3
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
    i64 3, label %bb.r
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
    i64 1, label %bb.s
  ], !prof !15

default.unreachable:                              ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %i.bc = and i64 %i.ay, 1095216660480
  %i.bd = icmp ne i64 %i.bc, 1095216660480
  call void @llvm.assume(i1 %i.bb)
  call void @llvm.assume(i1 %i.bd)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i

bb.s:                                             ; preds = %bb.q
  %i.be = getelementptr i8, ptr %i.ax, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !993
  store i8 3, ptr %i.a, align 8, !alias.scope !993
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNvMse_BL_BI_3getECslghKHtsL3a4_5tokio.exit

bb.t:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8shutdown7channel() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call { ptr, ptr } @_RINvNtNtCslghKHtsL3a4_5tokio4sync7oneshot7channeluEB6_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.g, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !996
  %i.h = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 257) 24, i64 noundef range(i64 8, 129) 8) #14, !noalias !996 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.e, !prof !19

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot6SenderuEEEB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

.body:                                            ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot8ReceiveruEEBI_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #29
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.e, 1
  ret { ptr, ptr } %i.m

bb.f:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtCslghKHtsL3a4_5tokio3net3tcp11split_ownedNtB2_12ReuniteErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !align !16, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !9, !nonnull !9
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 57) #31
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtCslghKHtsL3a4_5tokio3net4unix11split_ownedNtB2_12ReuniteErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !align !16, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !9, !nonnull !9
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 57) #31
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvNtNtCslghKHtsL3a4_5tokio7runtime7runtime10display_eqNtB2_8FormatEqNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !9 ; 2 uses
  %i.g = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.g, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret i1 false

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.h = sub nuw i64 %i.f, %2
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  store ptr %i.i, ptr %0, align 8, !captures !29
  store i64 %i.h, ptr %i.e, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_6PacketuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !range !8, !noundef !9 ; 2 uses
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp ne ptr %i.f, null                   ; 2 uses
  %.sroa.0.0 = select i1 %i.d, i1 %i.g, i1 false
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1006 ; 6 uses
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i) ]
  %i.j = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !9, !noalias !1006 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.j(ptr noundef nonnull %i.f)
          to label %bb.e unwind label %bb.g, !noalias !1006

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !9, !noalias !1006 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !9, !noalias !1006
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #14, !noalias !1006
  br label %.thread

bb.g:                                             ; preds = %bb.d
end_hunk_4
begin_hunk_5_@_RNvXs0_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_4FileNtNtNtB9_2io10async_seek9AsyncSeek10start_seek:bb.a
bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs0_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_4FileNtNtNtB9_2io10async_seek9AsyncSeek13poll_complete(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.416 = alloca [48 x i8], align 8          ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.g = load i64, ptr %i.f, align 8, !range !20, !noundef !9
  %i.h = icmp eq i64 %i.g, -2
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.416.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.416, i64 24
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollBb_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.l = load i64, ptr %i.d, align 8, !range !26, !noundef !9 ; 4 uses
  switch i64 %i.l, label %bb.e [
    i64 -2, label %.loopexit
    i64 -1, label %bb.d
  ]

._crit_edge:                                      ; preds = %.thread, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8, !noundef !9
  %i.o = inttoptr i64 %i.n to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.z, %.loopexit, %._crit_edge
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %.loopexit ], [ %i.z, %bb.z ], [ %i.o, %._crit_edge ]
  %.sroa.02.0 = phi i64 [ %.sroa.02.1, %.loopexit ], [ %i.x, %bb.z ], [ 0, %._crit_edge ]
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.02.0, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  %i.r = call noundef nonnull ptr @_RNvXs2_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5errorNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBU_7convert4FromNtB5_9JoinErrorE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.416, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.24..sroa_idx, i64 32, i1 false)
  store i64 %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.s = load i64, ptr %i.f, align 8, !range !20, !alias.scope !1012, !noundef !9
  switch i64 %i.s, label %bb.f [
    i64 -2, label %bb.i
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.u unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  switch i64 %i.l, label %default.unreachable88 [
    i64 0, label %bb.x
    i64 1, label %bb.k
    i64 2, label %bb.l
  ]

default.unreachable88:                            ; preds = %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  unreachable

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  %i.w = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !noundef !9 ; 7 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.thread, label %bb.m

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  %i.x = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !range !8, !noundef !9 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noundef !9 ; 2 uses
  %i.aa = trunc nuw i64 %i.x to i1
  br i1 %i.aa, label %bb.z, label %bb.y

bb.m:                                             ; preds = %bb.k
  %i.ab = load i8, ptr %i.j, align 8, !range !25, !noundef !9
  %.not19 = icmp eq i8 %i.ab, -1
  br i1 %.not19, label %bb.o, label %bb.n, !prof !18

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #30
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  %i.ac = ptrtoint ptr %i.w to i64                ; 4 uses
  %i.ad = and i64 %i.ac, 3
  switch i64 %i.ad, label %default.unreachable88 [
    i64 2, label %bb.p
    i64 3, label %bb.s
    i64 0, label %bb.q
    i64 1, label %bb.t
  ], !prof !15

bb.p:                                             ; preds = %bb.o
  %i.ae = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.p
  %i.af = lshr i64 %i.ac, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !9, !noundef !9
  %i.aj = invoke noundef i8 %i.ai(i32 noundef %i.ag)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !3

bb.q:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !27, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc26, %bb.p, %bb.n
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %i.w) #29
          to label %.thread40 unwind label %bb.w

bb.r:                                             ; preds = %bb.n
  unreachable

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread: ; preds = %bb.q, %.noexc26
  %.sroa.0.0.i.ph = phi i8 [ %i.aj, %.noexc26 ], [ %i.al, %bb.q ]
  store i8 %.sroa.0.0.i.ph, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %i.am = lshr i64 %i.ac, 32
  %switch.idx.cast.i.i.i = trunc i64 %i.am to i8  ; 2 uses
  %i.an = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.an)
  store i8 %switch.idx.cast.i.i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ao = icmp ult ptr %i.w, inttoptr (i64 188978561024 to ptr)
  %i.ap = and i64 %i.ac, 1095216660480
  %i.aq = icmp ne i64 %i.ap, 1095216660480
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.assume(i1 %i.aq)
  br label %bb.v

bb.t:                                             ; preds = %bb.o
  %i.ar = getelementptr i8, ptr %i.w, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = getelementptr i8, ptr %i.w, i64 31
  %i.at = load i8, ptr %i.as, align 8, !range !27, !noundef !9
  store i8 %i.at, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ar, ptr %i.k, align 8, !alias.scope !1013
  store i8 3, ptr %i.a, align 8, !alias.scope !1013
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %bb.v

bb.u:                                             ; preds = %bb.j, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.t, %bb.g ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  switch i64 %i.l, label %bb.aa [
    i64 1, label %bb.ab
    i64 2, label %bb.ac
  ]

bb.v:                                             ; preds = %bb.t, %bb.s, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread

bb.w:                                             ; preds = %bb.ac, %.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.aa
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread:                                          ; preds = %bb.k, %bb.v, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.av = load i64, ptr %i.f, align 8, !range !20, !noundef !9
  %i.aw = icmp eq i64 %i.av, -2
  br i1 %i.aw, label %bb.b, label %._crit_edge

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
  br label %.thread

bb.y:                                             ; preds = %bb.l
  %i.ax = ptrtoint ptr %i.z to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ax, ptr %i.ay, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.l, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

bb.aa:                                            ; preds = %bb.u
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #29
          to label %.thread40 unwind label %bb.w

bb.ab:                                            ; preds = %bb.u
  %i.az = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !noundef !9 ; 2 uses
  %.not44 = icmp eq ptr %i.az, null
  br i1 %.not44, label %.thread40, label %bb.ad

bb.ac:                                            ; preds = %bb.u
  %.sroa.2.0..sroa_idx.val22 = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !range !8, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.2.0..sroa_idx.val23 = load ptr, ptr %i.ba, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio(i64 %.sroa.2.0..sroa_idx.val22, ptr %.sroa.2.0..sroa_idx.val23) #29
          to label %.thread40 unwind label %bb.w

.thread40:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ac, %bb.ad, %bb.ab, %bb.aa
  %.pn38 = phi { ptr, i32 } [ %eh.lpad-body, %bb.ac ], [ %eh.lpad-body, %bb.ad ], [ %eh.lpad-body, %bb.ab ], [ %eh.lpad-body, %bb.aa ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn38

bb.ad:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %i.az) #29
          to label %.thread40 unwind label %bb.w

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.sroa.5.1 = phi ptr [ %i.r, %bb.d ], [ undef, %bb.b ]
  %.sroa.02.1 = phi i64 [ 1, %bb.d ], [ 2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs1_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_4FileNtNtNtB9_2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call fastcc { i64, ptr } @_RNvMs8_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_5Inner10poll_flush(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs1_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB5_4FileNtNtNtB9_2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.439 = alloca [48 x i8], align 8          ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %.sroa.624 = alloca [48 x i8], align 8          ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !25, !noundef !9 ; 2 uses
  store i8 -1, ptr %i.h, align 8
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !range !20, !noundef !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, -2
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.439.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.439, i64 24
  %.sroa.624.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.624, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i8 %i.i to i64
  %i.n = shl nuw nsw i64 %i.m, 32
  %i.o = or disjoint i64 %i.n, 3
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.ae, %.loopexit, %bb.r, %bb.b
  %.sroa.7.0 = phi ptr [ %i.p, %bb.b ], [ %.sroa.7.2, %.loopexit ], [ %i.az, %bb.ae ], [ %.sroa.7.1, %bb.r ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ %.sroa.0.2, %.loopexit ], [ 1, %bb.ae ], [ %.sroa.0.1, %bb.r ]
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %.sroa.7.0, 1
  ret { i64, ptr } %i.r

bb.d:                                             ; preds = %.lr.ph, %.thread62
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.624)
  call void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollBb_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.s = load i64, ptr %i.c, align 8, !range !26, !noundef !9 ; 4 uses
  switch i64 %i.s, label %bb.x [
    i64 -2, label %.loopexit
    i64 -1, label %bb.w
  ]

._crit_edge:                                      ; preds = %.thread62, %.preheader
  %.lcssa = phi i64 [ %i.j, %.preheader ], [ %i.ba, %.thread62 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 -1, ptr %i.g, align 8
  %.not42 = icmp eq i64 %.lcssa, -1
  br i1 %.not42, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %._crit_edge
  store i64 %.lcssa, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !9 ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !9
  %i.y = icmp eq i64 %i.u, %i.x
  br i1 %i.y, label %bb.h, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = invoke noundef i64 @_RNvMs5_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf12discard_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.57.0 = phi i64 [ undef, %bb.e ], [ %i.z, %bb.g ]
  %.sroa.06.0 = phi i64 [ -1, %bb.e ], [ 2, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !9
  %i.ac = invoke noundef i64 @_RNvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf9copy_from(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.ab)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.06.0, ptr %i.e, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.57.0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.ag, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.ak = call noundef ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool24spawn_mandatory_blockingNCNvXs1_NtNtB8_2fs4fileNtB1m_4FileNtNtNtB8_2io11async_write10AsyncWrite10poll_write0TNtB1m_9OperationNtNtB1Q_8blocking3BufEEB8_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.e) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not43 = icmp eq ptr %i.ak, null
  br i1 %.not43, label %bb.q, label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
end_hunk_5
begin_hunk_6_@_RNvXs_NtNtCslghKHtsL3a4_5tokio2fs4fileNtB4_4FileNtNtNtB8_2io10async_read9AsyncRead9poll_read:bb.a
_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit89: ; preds = %bb.az, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i84, %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit: ; preds = %.thread164, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.backedge.backedge

bb.bf:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #30
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.aw
  %i.co = and i64 %.sroa.3.sroa.0.0.copyload, 3   ; 2 uses
  switch i64 %i.co, label %default.unreachable412 [
    i64 2, label %bb.bh
    i64 3, label %bb.bi
    i64 0, label %bb.bj
    i64 1, label %bb.bk
  ], !prof !15

bb.bh:                                            ; preds = %bb.bg
  %i.cp = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %bb.bh
  %i.cq = lshr i64 %.sroa.3.sroa.0.0.copyload, 32
  %i.cr = trunc nuw i64 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !9, !noundef !9
  %i.cu = invoke noundef i8 %i.ct(i32 noundef %i.cr)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !3

bb.bi:                                            ; preds = %bb.bg
  %i.cv = lshr i64 %.sroa.3.sroa.0.0.copyload, 32
  %i.cw = icmp ult i64 %.sroa.3.sroa.0.0.copyload, 188978561024
  %switch.idx.cast.i.i.i = trunc nuw nsw i64 %i.cv to i8
  call void @llvm.assume(i1 %i.cw)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.bj:                                            ; preds = %bb.bg
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !range !27, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.bk:                                            ; preds = %bb.bg
  %i.cz = getelementptr i8, ptr %i.bm, i64 31
  %i.da = load i8, ptr %i.cz, align 8, !range !27, !noundef !9
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.bl:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %.body94
  %.pn47 = phi { ptr, i32 } [ %eh.lpad-body95, %.body94 ], [ %lpad.loopexit.split-lp574, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.028.3 = phi i1 [ false, %.body94 ], [ true, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %i.bm) #29
          to label %bb.ae unwind label %bb.u

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc90, %bb.bh, %bb.bf
  %lpad.loopexit.split-lp574 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.bk, %bb.bj, %bb.bi, %.noexc90
  %.sroa.0.0.i = phi i8 [ %i.da, %bb.bk ], [ %switch.idx.cast.i.i.i, %bb.bi ], [ %i.cy, %bb.bj ], [ %i.cu, %.noexc90 ]
  store i8 %.sroa.0.0.i, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.db = load i64, ptr %i.n, align 8, !range !20, !alias.scope !1078, !noundef !9
  switch i64 %i.db, label %bb.bm [
    i64 -2, label %bb.bp
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit98
  ]

bb.bm:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i93 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.body94 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i93: ; preds = %bb.bm
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit98 unwind label %bb.bq

bb.bp:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit98 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i93
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body94

.body94:                                          ; preds = %bb.bn, %bb.bq
  %eh.lpad-body95 = phi { ptr, i32 } [ %i.de, %bb.bq ], [ %i.dc, %bb.bn ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %bb.bl

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit98: ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i93, %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %i.co, label %default.unreachable412 [
    i64 2, label %bb.bt
    i64 3, label %bb.br
    i64 0, label %bb.bt
    i64 1, label %bb.bs
  ], !prof !15

bb.br:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit98
  %i.df = icmp ult i64 %.sroa.3.sroa.0.0.copyload, 188978561024
  call void @llvm.assume(i1 %i.df)
  br label %bb.bt

bb.bs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit98
  %i.dg = getelementptr i8, ptr %i.bm, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ]
  store ptr %i.dg, ptr %i.aa, align 8, !alias.scope !1079
  store i8 3, ptr %i.b, align 8, !alias.scope !1079
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.bt unwind label %.split

bb.bt:                                            ; preds = %bb.br, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit98, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit98, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.backedge.backedge

bb.bu:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #30
          to label %bb.au unwind label %bb.cb

bb.bv:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.dh = load i64, ptr %i.n, align 8, !range !20, !alias.scope !1080, !noundef !9
  switch i64 %i.dh, label %bb.bw [
    i64 -2, label %bb.bz
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit107
  ]

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i102 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.body103 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i102: ; preds = %bb.bw
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit107 unwind label %bb.cc

bb.bz:                                            ; preds = %bb.bv
  invoke void @_RNvXs5_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit107 unwind label %bb.cc

bb.ca:                                            ; preds = %.body103, %bb.cb
  %.pn43 = phi { ptr, i32 } [ %eh.lpad-body104, %.body103 ], [ %i.dk, %bb.cb ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio(i64 %.sroa.3.sroa.0.0.copyload, ptr %.sroa.3.sroa.3.0.copyload) #29
          to label %bb.ae unwind label %bb.u

bb.cb:                                            ; preds = %bb.bu
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.cc:                                            ; preds = %bb.bz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i102
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body103

.body103:                                         ; preds = %bb.bx, %bb.cc
  %eh.lpad-body104 = phi { ptr, i32 } [ %i.dl, %bb.cc ], [ %i.di, %bb.bx ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  br label %bb.ca

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit107: ; preds = %bb.bv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_.exit.i.i102, %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dm = trunc nuw i64 %.sroa.3.sroa.0.0.copyload to i1
  br i1 %i.dm, label %bb.cd, label %.thread164

bb.cd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit107
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.3.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dn = and i64 %i.bn, 3
  switch i64 %i.dn, label %default.unreachable412 [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 3, label %bb.ce
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i
    i64 1, label %bb.cf
  ], !prof !15

bb.ce:                                            ; preds = %bb.cd
  %i.do = icmp ult ptr %.sroa.3.sroa.3.0.copyload, inttoptr (i64 188978561024 to ptr)
  %i.dp = and i64 %i.bn, 1095216660480
  %i.dq = icmp ne i64 %i.dp, 1095216660480
  call void @llvm.assume(i1 %i.do)
  call void @llvm.assume(i1 %i.dq)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.dr = getelementptr i8, ptr %.sroa.3.sroa.3.0.copyload, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  store ptr %i.dr, ptr %i.y, align 8, !alias.scope !1081
  store i8 3, ptr %i.a, align 8, !alias.scope !1081
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i unwind label %.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

.thread164:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2fs4file5StateEBH_.exit107
  store i64 %i.bn, ptr %i.x, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit

.thread146:                                       ; preds = %.split, %bb.cg, %bb.ae
  %.sroa.3.sroa.0.0.copyload393 = phi i64 [ %.sroa.3.sroa.0.0.copyload.lcssa382, %.split ], [ %.sroa.3.sroa.0.0.copyload394, %bb.cg ], [ %.sroa.3.sroa.0.0.copyload395, %bb.ae ] ; 4 uses
  %.sroa.029.0155 = phi i1 [ true, %.split ], [ %.sroa.029.0159, %bb.cg ], [ %.sroa.029.0, %bb.ae ]
  %.sroa.030.0154 = phi i1 [ %.sroa.030.1.ph, %.split ], [ %.sroa.030.0158, %bb.cg ], [ %.sroa.030.0, %bb.ae ]
  %.sroa.031.0153 = phi i1 [ %.sroa.031.1.ph, %.split ], [ %.sroa.031.0157, %bb.cg ], [ %.sroa.031.0, %bb.ae ]
  %.pn49.pn152 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.split ], [ %.pn49.pn156, %bb.cg ], [ %.pn49.pn, %bb.ae ] ; 5 uses
  switch i64 %i.ad, label %bb.ch [
    i64 0, label %bb.ci
    i64 1, label %bb.cj
  ]

bb.cg:                                            ; preds = %.split.thread, %bb.ae
  %.sroa.3.sroa.0.0.copyload394 = phi i64 [ 0, %.split.thread ], [ %.sroa.3.sroa.0.0.copyload395, %bb.ae ]
  %.sroa.029.0159 = phi i1 [ true, %.split.thread ], [ %.sroa.029.0, %bb.ae ]
  %.sroa.030.0158 = phi i1 [ true, %.split.thread ], [ %.sroa.030.0, %bb.ae ]
  %.sroa.031.0157 = phi i1 [ true, %.split.thread ], [ %.sroa.031.0, %bb.ae ]
  %.pn49.pn156 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn49.pn, %bb.ae ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #29
          to label %.thread146 unwind label %bb.u

bb.ch:                                            ; preds = %.thread146
  br i1 %.sroa.031.0153, label %bb.cm, label %.thread

bb.ci:                                            ; preds = %.thread146
  %i.ds = icmp ne i64 %.sroa.3.sroa.0.0.copyload393, 0
  %or.cond = and i1 %i.ds, %.sroa.029.0155
  br i1 %or.cond, label %bb.ck, label %.thread

bb.cj:                                            ; preds = %.thread146
  %i.dt = icmp ne i64 %.sroa.3.sroa.0.0.copyload393, 0
  %or.cond3 = and i1 %i.dt, %.sroa.030.0154
  br i1 %or.cond3, label %bb.cl, label %.thread

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.3.0.copyload) ]
  br label %.invoke

.invoke:                                          ; preds = %bb.cl, %bb.ck
  %i.du = phi ptr [ %.sroa.3.sroa.3.0.copyload, %bb.ck ], [ %i.dv, %bb.cl ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %i.du) #29
          to label %.thread unwind label %bb.u

bb.cl:                                            ; preds = %bb.cj
  %i.dv = inttoptr i64 %.sroa.3.sroa.0.0.copyload393 to ptr
  br label %.invoke

bb.cm:                                            ; preds = %bb.ch
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio(i64 %.sroa.3.sroa.0.0.copyload393, ptr %.sroa.3.sroa.3.0.copyload) #29
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCslghKHtsL3a4_5tokio7runtime7runtimeNtB4_7RuntimeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_threadNtB2_11MultiThread8shutdown(ptr noalias nofree noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15try_set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread8shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEEB15_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !range !14, !alias.scope !1098, !noundef !9
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEEB15_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.k = load i64, ptr %i.a, align 8, !range !13, !alias.scope !1100, !noundef !9 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEEB15_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !1104, !nonnull !9, !noundef !9
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !1105
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEEB15_.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEEB15_.exit

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !1108, !nonnull !9, !noundef !9
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !noalias !1109
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEEB15_.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEEB15_.exit

bb.n:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEEB15_.exit: ; preds = %bb.e, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEEB15_.exit, %bb.b
  ret void

bb.p:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNvNtNtCslghKHtsL3a4_5tokio7runtime7runtime10display_eq8FormatEqNtNtCs3oUPovFnLWP_4core3fmt5Write10write_charBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
end_hunk_6
