Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEEECs8frGy5WneL6_4fish
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !13, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit, !prof !15

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !13, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish.exit, !prof !15

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EEEECs8frGy5WneL6_4fish(ptr %.0.val, i8 %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB1J_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, !prof !15

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB1J_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit

_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB1J_EEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEB1A_(ptr %.0.val, i8 %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB17_.exit, !prof !15

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB17_.exit

_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB17_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEECs8frGy5WneL6_4fish(ptr %.0.val, i8 %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, !prof !15

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit

_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBI_8builtins11fish_indent13throwing_mainEs_0EBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %i.b = load ptr, ptr %.val1, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.b(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !16, !invariant.load !11 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2I_4SyncEL_EECs8frGy5WneL6_4fish.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #50
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2I_4SyncEL_EECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !16, !invariant.load !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !17, !invariant.load !11
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #50
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2I_4SyncEL_EECs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBI_8builtins15fish_key_reader13throwing_mainEs_0EBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %i.b = load ptr, ptr %.val1, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.b(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !16, !invariant.load !11 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2I_4SyncEL_EECs8frGy5WneL6_4fish.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #50
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2I_4SyncEL_EECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !16, !invariant.load !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !17, !invariant.load !11
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #50
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2I_4SyncEL_EECs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !11
  switch i64 %i.a, label %bb.b [
    i64 2, label %bb.c
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15fd_readable_set13FdReadableSetEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast10ElseClauseEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !97, !nonnull !11, !noundef !11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !97, !noundef !11 ; 5 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit unwind label %bb.b, !noalias !97, !inline_history !0

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = mul nuw nsw i64 %i.d, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef 8) #50, !noalias !97
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit1

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit1: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit: ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit
  %i.i = mul nuw nsw i64 %i.d, 160
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #50, !noalias !97
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_.exit, %bb.d
  ret void
}

end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBG_:bb.a
bb.o:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !506, !inline_history !475
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i: ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBG_.exit.i
  %i.bf = icmp eq i64 %i.u, %i.r
  br i1 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i: ; preds = %bb.r
  %i.bg = icmp eq i64 %i.bj, %i.r
  br i1 %i.bg, label %.body14, label %.lr.ph170

.body.i:                                          ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ap, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEBF_.exit._crit_edge ], [ %i.ap, %bb.n ]
  %i.bh = icmp eq i64 %i.u, %i.r
  br i1 %i.bh, label %.body14, label %.lr.ph170

.lr.ph170:                                        ; preds = %.body.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i
  %.sroa.0.1.i169 = phi i64 [ %i.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i ], [ %i.u, %.body.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %.sroa.0.1.i169 ; 5 uses
  %i.bj = add i64 %.sroa.0.1.i169, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522), !noalias !506
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %.val1.i.i16 = load i64, ptr %i.bk, align 8, !alias.scope !523, !noalias !506, !noundef !11 ; 2 uses
  %i.bl = icmp eq i64 %.val1.i.i16, 0
  br i1 %i.bl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i18, label %bb.p

bb.p:                                             ; preds = %.lr.ph170
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %.val.i.i17 = load ptr, ptr %i.bm, align 8, !alias.scope !523, !noalias !506, !nonnull !11, !noundef !11
  %i.bn = mul nuw nsw i64 %.val1.i.i16, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i17, i64 noundef range(i64 1, -9223372036854775808) %i.bn, i64 noundef 4) #50, !noalias !524, !inline_history !495
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i18

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i18: ; preds = %bb.p, %.lr.ph170
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9StatementEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bo)
          to label %bb.r unwind label %bb.q, !noalias !506, !inline_history !495

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i18
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bq)
          to label %.body20 unwind label %bb.s, !noalias !506, !inline_history !496

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast22VariableAssignmentListEBF_.exit.i18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.br)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i unwind label %bb.t, !inline_history !495

bb.s:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !506, !inline_history !495
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body20

.body20:                                          ; preds = %bb.q, %bb.t
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !506, !inline_history !497
  unreachable

.body14:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationEBF_.exit7.i, %.body.i
  %i.bu = mul nuw nsw i64 %i.r, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef range(i64 1, -9223372036854775808) %i.bu, i64 noundef 8) #50, !noalias !506
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit.i
  %i.bv = mul nuw nsw i64 %i.r, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef range(i64 1, -9223372036854775808) %i.bv, i64 noundef 8) #50, !noalias !506
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit

bb.u:                                             ; preds = %.body11
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !inline_history !503
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast11JobPipelineEBF_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast30JobConjunctionContinuationListEBF_.exit
  %i.bx = icmp eq i64 %i.c, %1
  br i1 %i.bx, label %._crit_edge, label %.lr.ph67

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_.exit, %bb.a
  ret void

bb.v:                                             ; preds = %.lr.ph172
  %i.by = add i64 %.sroa.0.1171, 1                ; 2 uses
  %i.bz = icmp eq i64 %i.by, %1
  br i1 %i.bz, label %._crit_edge173, label %.lr.ph172

.body:                                            ; preds = %.body14, %.body11
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body12, %.body11 ], [ %eh.lpad-body.i, %.body14 ]
  %i.ca = icmp eq i64 %i.c, %1
  br i1 %i.ca, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %.body, %bb.v
  %.sroa.0.1171 = phi i64 [ %i.by, %bb.v ], [ %i.c, %.body ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.0.1171
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.cb) #48
          to label %bb.v unwind label %bb.w

._crit_edge173:                                   ; preds = %bb.v, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.w:                                             ; preds = %.lr.ph172
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: noreturn nonlazybind uwtable
define hidden void @_RINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB4_8builtins11fish_indent13throwing_mainEB4_() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish3nix6isatty(i32 noundef 0)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBL_8builtins11fish_indent13throwing_mainEs_0E3newBL_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit, %bb.a
  %i.c = call fastcc noundef i32 @_RNvYNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent13throwing_mainINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_() #52
  call fastcc void @_RNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB6_8builtins11fish_indent13throwing_mainE0B6_() #52
  call void @_RNvNtCsaL1QbXo9JQH_3std7process4exit(i32 noundef %i.c) #53
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 14)
  %i.d = load i64, ptr %i.a, align 8, !range !24, !noundef !11
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.l, %bb.k ], [ %i.l, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call { ptr, ptr } @_RNvNtCsaL1QbXo9JQH_3std9panicking9take_hook() ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 7 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 8 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50
  %i.j = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 97) 16, i64 noundef range(i64 1, 9) 8) #50 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBL_8builtins11fish_indent13throwing_mainEs_0E3newBL_.exit, !prof !15

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #53
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.m = load ptr, ptr %i.i, align 8, !invariant.load !11, !noalias !527 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  invoke void %i.m(ptr noundef nonnull %i.h)
          to label %bb.j unwind label %bb.l, !noalias !527

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !16, !invariant.load !11, !noalias !527 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !17, !invariant.load !11, !noalias !527
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #50, !noalias !527
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !16, !invariant.load !11, !noalias !527 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !17, !invariant.load !11, !noalias !527
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #50, !noalias !527
  br label %.body

.body:                                            ; preds = %bb.l, %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBL_8builtins11fish_indent13throwing_mainEs_0E3newBL_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h), "nonnull"(ptr %i.i) ]
  store ptr %i.h, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.y, align 8
  call void @_RNvNtCsaL1QbXo9JQH_3std9panicking8set_hook(ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @9)
  br label %bb.b
}

; Function Attrs: noreturn nonlazybind uwtable
define hidden void @_RINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB4_8builtins15fish_key_reader13throwing_mainEB4_() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish3nix6isatty(i32 noundef 0)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBL_8builtins15fish_key_reader13throwing_mainEs_0E3newBL_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit, %bb.a
  %i.c = call fastcc noundef i32 @_RNvYNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader13throwing_mainINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_() #52
  call fastcc void @_RNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB6_8builtins15fish_key_reader13throwing_mainE0B6_() #52
  call void @_RNvNtCsaL1QbXo9JQH_3std7process4exit(i32 noundef %i.c) #53
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 14)
  %i.d = load i64, ptr %i.a, align 8, !range !24, !noundef !11
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.l, %bb.k ], [ %i.l, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call { ptr, ptr } @_RNvNtCsaL1QbXo9JQH_3std9panicking9take_hook() ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 7 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 8 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50
  %i.j = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 97) 16, i64 noundef range(i64 1, 9) 8) #50 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBL_8builtins15fish_key_reader13throwing_mainEs_0E3newBL_.exit, !prof !15

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #53
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.m = load ptr, ptr %i.i, align 8, !invariant.load !11, !noalias !530 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  invoke void %i.m(ptr noundef nonnull %i.h)
          to label %bb.j unwind label %bb.l, !noalias !530

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !16, !invariant.load !11, !noalias !530 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !17, !invariant.load !11, !noalias !530
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #50, !noalias !530
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !16, !invariant.load !11, !noalias !530 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !17, !invariant.load !11, !noalias !530
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #50, !noalias !530
  br label %.body

.body:                                            ; preds = %bb.l, %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBL_8builtins15fish_key_reader13throwing_mainEs_0E3newBL_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs8frGy5WneL6_4fish.exit3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h), "nonnull"(ptr %i.i) ]
  store ptr %i.h, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.y, align 8
  call void @_RNvNtCsaL1QbXo9JQH_3std9panicking8set_hook(ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @10)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8frGy5WneL6_4fish5input6decode24decode_utf8_at_least_oneNCNvYNtNtNtB6_6reader6reader6ReaderNtB2_19InputEventQueuerExt12on_byte_read0EB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.val.i = load ptr, ptr %2, align 8, !nonnull !11, !align !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 2096
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtBa_5input6decode19InputEventQueuerExt12on_byte_read0Ba_.exit, %bb.a
  %i.e = phi i64 [ %i.v, %_RNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtBa_5input6decode19InputEventQueuerExt12on_byte_read0Ba_.exit ], [ %.pre, %bb.a ]
  %i.f = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %i.g = invoke noundef i8 @_RNvNtNtCs8frGy5WneL6_4fish5input6decode11decode_utf8(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i1 noundef zeroext false, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.f, %.noexc, %bb.e, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #48
          to label %common.resume unwind label %bb.l

bb.d:                                             ; preds = %bb.b
  switch i8 %i.g, label %default.unreachable9 [
    i8 0, label %bb.e
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

default.unreachable9:                             ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.i = invoke noundef i32 @_RNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB8_5input5input16InputEventQueuer9get_in_fdB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.e
  %i.j = load ptr, ptr %i.d, align 8, !noalias !535, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !536, !noalias !535, !noundef !11
  %i.m = invoke { i8, i8 } @_RNvNtNtCs8frGy5WneL6_4fish5input5input16next_input_event(i32 noundef %i.i, i32 noundef %i.l, i64 undef, i32 noundef -1)
          to label %.noexc7 unwind label %bb.c    ; 2 uses

.noexc7:                                          ; preds = %.noexc
  %i.n = load i64, ptr %i.c, align 8, !alias.scope !537, !noundef !11 ; 3 uses
  %i.o = load i64, ptr %1, align 8, !range !16, !alias.scope !537, !noundef !11
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %_RNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtBa_5input6decode19InputEventQueuerExt12on_byte_read0Ba_.exit

bb.f:                                             ; preds = %.noexc7
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #47
          to label %_RNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtBa_5input6decode19InputEventQueuerExt12on_byte_read0Ba_.exit unwind label %bb.c

_RNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtBa_5input6decode19InputEventQueuerExt12on_byte_read0Ba_.exit: ; preds = %bb.f, %.noexc7
  %i.q = extractvalue { i8, i8 } %i.m, 0
  %i.r = icmp eq i8 %i.q, 0
  %i.s = extractvalue { i8, i8 } %i.m, 1
  %.sroa.02.0.i = select i1 %i.r, i8 %i.s, i8 0
  %i.t = load ptr, ptr %i.b, align 8, !alias.scope !537, !nonnull !11, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  store i8 %.sroa.02.0.i, ptr %i.u, align 1
  %i.v = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.v, ptr %i.c, align 8, !alias.scope !537
  br label %bb.b

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.h, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.l:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBR_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 4)
  %i.c = load i64, ptr %i.a, align 8, !range !26, !noundef !11
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !27, !noundef !11 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #53
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.j = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.l, align 8
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE11extend_withBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %2, i32 noundef %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #48
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.m
}
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_8Iterator4folduNCINvNvB1R_8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2K_3VechE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.val7.i.i.i = load i8, ptr %i.ad, align 1, !noalias !631, !noundef !11
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 %i.ac
  store i8 %.val7.i.i.i, ptr %i.af, align 1, !noalias !632
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %.val7.i.i.i.1 = load i8, ptr %i.ae, align 1, !noalias !631, !noundef !11
  %i.ah = getelementptr i8, ptr %.sroa.6.0.copyload.i.i, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  store i8 %.val7.i.i.i.1, ptr %i.ai, align 1, !noalias !632
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %.val7.i.i.i.2 = load i8, ptr %i.ag, align 1, !noalias !631, !noundef !11
  %i.ak = getelementptr i8, ptr %.sroa.6.0.copyload.i.i, i64 %i.ac
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  store i8 %.val7.i.i.i.2, ptr %i.al, align 1, !noalias !632
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %.val7.i.i.i.3 = load i8, ptr %i.aj, align 1, !noalias !631, !noundef !11
  %i.an = getelementptr i8, ptr %.sroa.6.0.copyload.i.i, i64 %i.ac
  %i.ao = getelementptr i8, ptr %i.an, i64 3
  store i8 %.val7.i.i.i.3, ptr %i.ao, align 1, !noalias !632
  %i.ap = add i64 %i.ac, 4                        ; 2 uses
  %i.aq = icmp eq ptr %i.am, %i.b
  br i1 %i.aq, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !623

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa5 = phi ptr [ %i.q, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %.lcssa21.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.am, %.lr.ph.i.i.i ]
  %.lcssa = phi i64 [ %i.p, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa20.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ap, %.lr.ph.i.i.i ]
  store ptr %.lcssa5, ptr %0, align 8, !alias.scope !630
  br label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB37_3VechE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish.exit

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB37_3VechE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %._crit_edge.i.i.i
  %.val6.i.i.i = phi i64 [ %.lcssa, %._crit_edge.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val6.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !631
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_8Iterator8try_foldjNCINvNvXs0_NtBW_10take_whileINtB2q_9TakeWhileppEB1R_8try_fold5checkhjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB3p_B3m_10wrap_mut_2jhNCNvYIB2I_BQ_B45_EB1R_5count0E0E0INtNtB3r_12control_flow11ControlFlowB3m_jEEB4d_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !650, !noalias !645, !nonnull !11, !noundef !11 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %.val, align 8, !alias.scope !650, !noalias !645 ; 5 uses
  %i.c = icmp eq ptr %.promoted.i.i.i, %i.b
  br i1 %i.c, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs0_NtBW_10take_whileINtB2E_9TakeWhileppENtB6_8Iterator8try_fold5checkhjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB3N_B3K_10wrap_mut_2jhNCNvYIB2W_BQ_B4t_EB3f_5count0E0E0INtNtB3P_12control_flow11ControlFlowB3K_jEEB4B_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %.promoted27.i.i.i = ptrtoaddr ptr %.promoted.i.i.i to i64 ; 2 uses
  %i.d = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %i.e = add i64 %1, %i.d
  %i.f = sub i64 %i.e, %.promoted27.i.i.i
  %i.g = sub i64 %i.d, %.promoted27.i.i.i
  %scevgep28.i.i.i = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.g
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.01.019.i.i.i = phi i64 [ %i.l, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.h = phi ptr [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i ], [ %.promoted.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  %.val9.i.i.i = load i8, ptr %i.h, align 1, !noalias !651, !noundef !11
  %.not.i.i.i.i.i = icmp eq i8 %.val9.i.i.i, 92
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq i64 %.sroa.01.019.i.i.i, -1
  br i1 %i.j, label %bb.c, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = sub i64 0, %1
  %scevgep.i.i.i = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.k
  store ptr %scevgep.i.i.i, ptr %.val, align 8, !alias.scope !650, !noalias !645
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #54, !noalias !651
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i: ; preds = %bb.b
  %i.l = add nuw i64 %.sroa.01.019.i.i.i, 1
  %i.m = icmp eq ptr %i.i, %i.b
  br i1 %i.m, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.i, ptr %.val, align 8, !alias.scope !650, !noalias !645
  store i8 1, ptr %3, align 1, !alias.scope !652
  br label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs0_NtBW_10take_whileINtB2E_9TakeWhileppENtB6_8Iterator8try_fold5checkhjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB3N_B3K_10wrap_mut_2jhNCNvYIB2W_BQ_B4t_EB3f_5count0E0E0INtNtB3P_12control_flow11ControlFlowB3K_jEEB4B_.exit

..loopexit_crit_edge.i.i.i:                       ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i
  store ptr %scevgep28.i.i.i, ptr %.val, align 8, !alias.scope !650, !noalias !645
  br label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs0_NtBW_10take_whileINtB2E_9TakeWhileppENtB6_8Iterator8try_fold5checkhjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB3N_B3K_10wrap_mut_2jhNCNvYIB2W_BQ_B4t_EB3f_5count0E0E0INtNtB3P_12control_flow11ControlFlowB3K_jEEB4B_.exit

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs0_NtBW_10take_whileINtB2E_9TakeWhileppENtB6_8Iterator8try_fold5checkhjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB3N_B3K_10wrap_mut_2jhNCNvYIB2W_BQ_B4t_EB3f_5count0E0E0INtNtB3P_12control_flow11ControlFlowB3K_jEEB4B_.exit: ; preds = %bb.a, %bb.d, %..loopexit_crit_edge.i.i.i
  %.sroa.01.018.i.i.i = phi i64 [ %.sroa.01.019.i.i.i, %bb.d ], [ %i.f, %..loopexit_crit_edge.i.i.i ], [ %1, %bb.a ]
  %.sroa.0.0.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %..loopexit_crit_edge.i.i.i ], [ 0, %bb.a ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i.i.i, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.01.018.i.i.i, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItermEENtB6_8Iterator4folduNCINvNvB1R_8for_each4callmNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2K_3VecmE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !alias.scope !678 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !678 ; 6 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !678 ; 3 uses
  %.sroa.6.0.copyload.i.i9 = ptrtoaddr ptr %.sroa.6.0.copyload.i.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !680, !nonnull !11, !noundef !11 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !680 ; 6 uses
  %.promoted.i.i.i8 = ptrtoaddr ptr %.promoted.i.i.i to i64 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i.i.i, %i.b
  br i1 %i.c, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItermEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callmNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB37_3VecmE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.d = ptrtoaddr ptr %i.b to i64
  %i.e = add i64 %i.d, -4
  %i.f = sub i64 %i.e, %.promoted.i.i.i8          ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.i = shl i64 %.sroa.4.0.copyload.i.i, 2
  %i.j = add i64 %i.i, %.sroa.6.0.copyload.i.i9
  %i.k = sub i64 %.promoted.i.i.i8, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775800      ; 4 uses
  %i.l = add i64 %.sroa.4.0.copyload.i.i, %n.vec  ; 2 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.m ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.6.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !noalias !681
  %wide.load10 = load <4 x i32>, ptr %i.q, align 4, !noalias !681
  %i.r = getelementptr [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !noalias !682
  store <4 x i32> %wide.load10, ptr %i.s, align 4, !noalias !682
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !672

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader12

.lr.ph.i.i.i.preheader12:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload.i.i, %vector.memcheck ], [ %.sroa.4.0.copyload.i.i, %.lr.ph.i.i.i.preheader ], [ %i.l, %middle.block ]
  %.ph13 = phi ptr [ %.promoted.i.i.i, %vector.memcheck ], [ %.promoted.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader12, %.lr.ph.i.i.i
  %i.u = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader12 ] ; 2 uses
  %i.v = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.ph13, %.lr.ph.i.i.i.preheader12 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %.val7.i.i.i = load i32, ptr %i.v, align 4, !noalias !681, !noundef !11
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload.i.i, i64 %i.u
  store i32 %.val7.i.i.i, ptr %i.x, align 4, !noalias !682
  %i.y = add i64 %i.u, 1                          ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.b
  br i1 %i.z, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !673

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa5 = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph.i.i.i ]
  %.lcssa = phi i64 [ %i.l, %middle.block ], [ %i.y, %.lr.ph.i.i.i ]
  store ptr %.lcssa5, ptr %0, align 8, !alias.scope !680
  br label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItermEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callmNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB37_3VecmE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish.exit

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItermEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callmNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB37_3VecmE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %._crit_edge.i.i.i
  %.val6.i.i.i = phi i64 [ %.lcssa, %._crit_edge.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val6.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !681
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc11BuiltinDataENCNvB1x_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedENvMs0_NtB1D_8completeNtB4E_10Completion15from_completionENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5t_8for_each4callB4T_NCINvMsk_NtB3P_3vecINtB6J_3VecB4T_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !alias.scope !714 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !714 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !714
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc11BuiltinDataENCNvB1t_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtB31_9utfstring11Utf32StringNtNtB1z_8complete10CompletionuNvMs0_B5W_B5U_15from_completionNCINvNvB4u_8for_each4callB5U_NCINvMsk_NtB3L_3vecINtB7v_3VecB5U_E14extend_trustedIBO_BN_B6o_EE0E0E0EB1z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.val10.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %bb.b ], [ %i.u, %bb.f ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.f ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.i.i ; 2 uses
  %.val15.i.i.i = load ptr, ptr %i.k, align 8, !noalias !715, !nonnull !11, !align !31, !noundef !11
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val16.i.i.i = load i64, ptr %i.l, align 8, !noalias !715, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !716
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 2305843009213693952) %.val16.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !715

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !range !26, !noalias !716, !noundef !11
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = load i64, ptr %i.i, align 8, !range !27, !noalias !716, !noundef !11 ; 3 uses
  br i1 %i.n, label %bb.d, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i.i, !prof !15

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.p = load i64, ptr %i.j, align 8, !noalias !716
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.p) #53
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !715

.noexc17.i.i.i:                                   ; preds = %bb.d
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.q = load ptr, ptr %i.j, align 8, !noalias !716, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = icmp ule i64 %.val16.i.i.i, %i.o
  call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !716
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val16.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtBZ_9utfstring11Utf32StringuNvYBV_NtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedNCIB2_B1F_NtNtCs8frGy5WneL6_4fish8complete10CompletionuNvMs0_B3e_B3c_15from_completionNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3c_NCINvMsk_NtB2k_3vecINtB5w_3VecB3c_E14extend_trustedINtB4_3MapIB6d_IB6d_INtNtNtBa_5slice4iter4IterNtNtNtNtB3g_8builtins6shared4misc11BuiltinDataENCNvB6Y_17builtin_get_names0EB2a_EB3V_EE0E0E0E0B3g_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i.i
  %i.s = shl nuw nsw i64 %.val16.i.i.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull readonly align 4 %.val15.i.i.i, i64 %i.s, i1 false), !noalias !717
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtBZ_9utfstring11Utf32StringuNvYBV_NtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedNCIB2_B1F_NtNtCs8frGy5WneL6_4fish8complete10CompletionuNvMs0_B3e_B3c_15from_completionNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3c_NCINvMsk_NtB2k_3vecINtB5w_3VecB3c_E14extend_trustedINtB4_3MapIB6d_IB6d_INtNtNtBa_5slice4iter4IterNtNtNtNtB3g_8builtins6shared4misc11BuiltinDataENCNvB6Y_17builtin_get_names0EB2a_EB3V_EE0E0E0E0B3g_.exit.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtBZ_9utfstring11Utf32StringuNvYBV_NtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedNCIB2_B1F_NtNtCs8frGy5WneL6_4fish8complete10CompletionuNvMs0_B3e_B3c_15from_completionNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3c_NCINvMsk_NtB2k_3vecINtB5w_3VecB3c_E14extend_trustedINtB4_3MapIB6d_IB6d_INtNtNtBa_5slice4iter4IterNtNtNtNtB3g_8builtins6shared4misc11BuiltinDataENCNvB6Y_17builtin_get_names0EB2a_EB3V_EE0E0E0E0B3g_.exit.i.i.i.i: ; preds = %bb.e, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !718
  store i64 %i.o, ptr %i.a, align 8, !noalias !719
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !719
  store i64 %.val16.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !719
  invoke void @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion15from_completion(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !715

bb.f:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtBZ_9utfstring11Utf32StringuNvYBV_NtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedNCIB2_B1F_NtNtCs8frGy5WneL6_4fish8complete10CompletionuNvMs0_B3e_B3c_15from_completionNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3c_NCINvMsk_NtB2k_3vecINtB5w_3VecB3c_E14extend_trustedINtB4_3MapIB6d_IB6d_INtNtNtBa_5slice4iter4IterNtNtNtNtB3g_8builtins6shared4misc11BuiltinDataENCNvB6Y_17builtin_get_names0EB2a_EB3V_EE0E0E0E0B3g_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !718
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %.sroa.8.0.copyload.i.i, i64 %.val10.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !720
  %i.u = add i64 %.val10.i.i.i, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !718
  %i.v = add nuw i64 %.sroa.01.0.i.i.i, 1         ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.h
  br i1 %i.w, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc11BuiltinDataENCNvB1t_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtB31_9utfstring11Utf32StringNtNtB1z_8complete10CompletionuNvMs0_B5W_B5U_15from_completionNCINvNvB4u_8for_each4callB5U_NCINvMsk_NtB3L_3vecINtB7v_3VecB5U_E14extend_trustedIBO_BN_B6o_EE0E0E0EB1z_.exit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtBZ_9utfstring11Utf32StringuNvYBV_NtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedNCIB2_B1F_NtNtCs8frGy5WneL6_4fish8complete10CompletionuNvMs0_B3e_B3c_15from_completionNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3c_NCINvMsk_NtB2k_3vecINtB5w_3VecB3c_E14extend_trustedINtB4_3MapIB6d_IB6d_INtNtNtBa_5slice4iter4IterNtNtNtNtB3g_8builtins6shared4misc11BuiltinDataENCNvB6Y_17builtin_get_names0EB2a_EB3V_EE0E0E0E0B3g_.exit.i.i.i.i, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val10.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !715
  resume { ptr, i32 } %lpad.loopexit.split-lp24

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc11BuiltinDataENCNvB1t_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtB31_9utfstring11Utf32StringNtNtB1z_8complete10CompletionuNvMs0_B5W_B5U_15from_completionNCINvNvB4u_8for_each4callB5U_NCINvMsk_NtB3L_3vecINtB7v_3VecB5U_E14extend_trustedIBO_BN_B6o_EE0E0E0EB1z_.exit: ; preds = %bb.f, %bb.a
  %storemerge.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %bb.a ], [ %i.u, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %storemerge.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !715
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB1v_8wildcard8expanderNtB2f_16WildCardExpander3new0ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3i_7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB41_E6extendBX_E0ENtNtB5L_8iterator8Iterator4folduNCINvNvB6u_8for_each4callTB41_uENCINvXs1i_NtB3k_3mapINtB7G_7HashMapB41_uB4S_EIB5H_B7p_E6extendBN_E0E0EB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB1r_8wildcard8expanderNtB2b_16WildCardExpander3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringTB40_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB58_7HashSetB40_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB39_7collect6ExtendB40_E6extendBN_E0NCINvNvB35_8for_each4callB4R_NCINvXs1i_NtB5a_3mapINtB81_7HashMapB40_uB5V_EIB6K_B4R_E6extendIBO_BN_B4Z_EE0E0E0EB1r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 56
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !733
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g)
  %i.h = call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !734 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !733
  %i.i = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.f
  br i1 %i.j, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB1r_8wildcard8expanderNtB2b_16WildCardExpander3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringTB40_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB58_7HashSetB40_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB39_7collect6ExtendB40_E6extendBN_E0NCINvNvB35_8for_each4callB4R_NCINvXs1i_NtB5a_3mapINtB81_7HashMapB40_uB5V_EIB6K_B4R_E6extendIBO_BN_B4Z_EE0E0E0EB1r_.exit, label %bb.c

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB1r_8wildcard8expanderNtB2b_16WildCardExpander3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringTB40_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB58_7HashSetB40_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB39_7collect6ExtendB40_E6extendBN_E0NCINvNvB35_8for_each4callB4R_NCINvXs1i_NtB5a_3mapINtB81_7HashMapB40_uB5V_EIB6K_B4R_E6extendIBO_BN_B4Z_EE0E0E0EB1r_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i32 } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10take_while9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish6parser5BlockEENCNvMs5_B29_NtB29_6Parser17get_function_names0_0ENCB2L_s1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTRB27_lEB4L_uINtNtNtBc_3ops12control_flow11ControlFlowB4L_ENCB2L_s2_0NCINvNvB3H_4find5checkB4L_NCINvNvXs0_NtB8_10skip_whileINtB6t_9SkipWhileppEB3H_4next5checkB4L_NCB2L_s3_0E0E0E0B4Y_EB2b_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !13, !alias.scope !738, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish6parser5BlockEENCNvMs5_B1T_NtB1T_6Parser17get_function_names0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRB1R_TB4q_lEuINtNtNtBc_3ops12control_flow11ControlFlowB4v_ENCB2v_s1_0NCIB41_B4v_B4v_uB4D_NCB2v_s2_0NCINvNvB3g_4find5checkB4v_NCINvNvXs0_NtB8_10skip_whileINtB6C_9SkipWhileppEB3g_4next5checkB4v_NCB2v_s3_0E0E0E0E0B4D_EB1V_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !739
  store ptr %i.g, ptr %i.a, align 8, !noalias !739
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !738
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !738
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %i.i, align 8, !noalias !739
  call void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtCs8frGy5WneL6_4fish6parser5BlockEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs0_NtB7_10take_whileINtB2R_9TakeWhileppEB1Y_8try_fold5checkRB1m_uINtNtNtBb_3ops12control_flow11ControlFlowTB3L_lEENCNvMs5_B1o_NtB1o_6Parser17get_function_names0_0NCINvNtB7_3map12map_try_foldB3L_B4w_uB3R_NCB4G_s1_0NCIB5t_B4w_B4w_uB3R_NCB4G_s2_0NCINvNvB1Y_4find5checkB4w_NCINvNvXs0_NtB7_10skip_whileINtB7k_9SkipWhileppEB1Y_4next5checkB4w_NCB4G_s3_0E0E0E0E0E0IB3S_B3R_EEB1q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !739
  %i.j = load i64, ptr %i.b, align 8, !range !26, !noalias !739, !noundef !11
  %i.k = trunc nuw i64 %i.j to i1                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !739, !align !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i32, ptr %i.n, align 8, !noalias !739
  %.sroa.4.0.i = select i1 %i.k, i32 %i.o, i32 undef
  %.sroa.0.0.i = select i1 %i.k, ptr %i.m, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !739
  br label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish6parser5BlockEENCNvMs5_B1T_NtB1T_6Parser17get_function_names0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRB1R_TB4q_lEuINtNtNtBc_3ops12control_flow11ControlFlowB4v_ENCB2v_s1_0NCIB41_B4v_B4v_uB4D_NCB2v_s2_0NCINvNvB3g_4find5checkB4v_NCINvNvXs0_NtB8_10skip_whileINtB6C_9SkipWhileppEB3g_4next5checkB4v_NCB2v_s3_0E0E0E0E0B4D_EB1V_.exit

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish6parser5BlockEENCNvMs5_B1T_NtB1T_6Parser17get_function_names0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRB1R_TB4q_lEuINtNtNtBc_3ops12control_flow11ControlFlowB4v_ENCB2v_s1_0NCIB41_B4v_B4v_uB4D_NCB2v_s2_0NCINvNvB3g_4find5checkB4v_NCINvNvXs0_NtB8_10skip_whileINtB6C_9SkipWhileppEB3g_4next5checkB4v_NCB2v_s3_0E0E0E0E0B4D_EB1V_.exit: ; preds = %bb.a, %bb.b
  %.sroa.4.1.i = phi i32 [ %.sroa.4.0.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.b ], [ null, %bb.a ]
  %i.p = insertvalue { ptr, i32 } poison, ptr %.sroa.0.1.i, 0
  %i.q = insertvalue { ptr, i32 } %i.p, i32 %.sroa.4.1.i, 1
  ret { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBY_INtNtBc_6option7IterMutQNtNtNtCse7JGOylGlDZ_3nix3sys6select5FdSetEB1l_EB1l_ENCNCINvB1L_7pselectINtB1o_6OptionlEB1I_IB2T_B1I_EB3c_RNtNtB1N_4time8TimeSpecRNtNtB1N_6signal6SigSetE00ENtNtNtBa_6traits8iterator8Iterator4foldlNvYlNtNtBc_3cmp3Ord3maxECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.b = call noundef i32 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option7IterMutQNtNtNtCse7JGOylGlDZ_3nix3sys6select5FdSetEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4foldlNCINvNtB7_3map8map_foldQB1r_llNCNCINvB1u_7pselectINtB17_6OptionlEB1r_IB3K_B1r_EB43_RNtNtB1w_4time8TimeSpecRNtNtB1w_6signal6SigSetE00NvYlNtNtBb_3cmp3Ord3maxE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, i32 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameEB1h_ENCNvMs_NtNtB2b_8builtins4bindNtB38_11BuiltinBind10list_modes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB41_8for_each4callNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMsk_B1m_INtB1m_3VecB54_E14extend_trustedBN_E0E0EB2b_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1O_NtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtB1U_8builtins4bindNtB4O_11BuiltinBind10list_modes0NCINvNvB2K_8for_each4callB3P_NCINvMsk_B15_INtB15_3VecB3P_E14extend_trustedINtB3t_3MapBO_B4H_EE0E0E0EB1U_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_values0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3s_8for_each4callNtNtB1O_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB59_3VecB4v_E14extend_trustedBN_E0E0EB2E_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !alias.scope !757 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !757 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !757
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtB1x_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_values0NCINvNvB2f_8for_each4callB3k_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5n_3VecB3k_E14extend_trustedINtB2Y_3MapBP_B3Q_EE0E0E0EB3Y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val10.i.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.b ], [ %i.s, %bb.g ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.i ; 2 uses
  %.val15.i.i = load ptr, ptr %i.i, align 8, !noalias !758, !nonnull !11, !align !31, !noundef !11
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val16.i.i = load i64, ptr %i.j, align 8, !noalias !758, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !759
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val16.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !758

.noexc.i.i:                                       ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !range !26, !noalias !759, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = load i64, ptr %i.g, align 8, !range !27, !noalias !759, !noundef !11 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %.noexc.i.i
  %i.n = load i64, ptr %i.h, align 8, !noalias !759
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.n) #53
          to label %.noexc17.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !758

.noexc17.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i
  %i.o = load ptr, ptr %i.h, align 8, !noalias !759, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = icmp ule i64 %.val16.i.i, %i.m
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !759
  %.not.i.i.i.i.i = icmp eq i64 %.val16.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %.val16.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr nonnull readonly align 4 %.val15.i.i, i64 %i.q, i1 false), !noalias !760
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload.i, i64 %.val10.i.i ; 3 uses
  store i64 %i.m, ptr %i.r, align 8, !noalias !761
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !761
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val16.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !761
  %i.s = add i64 %.val10.i.i, 1                   ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtB1x_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_values0NCINvNvB2f_8for_each4callB3k_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5n_3VecB3k_E14extend_trustedINtB2Y_3MapBP_B3Q_EE0E0E0EB3Y_.exit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val10.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !758
  resume { ptr, i32 } %lpad.loopexit.split-lp24

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtB1x_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_values0NCINvNvB2f_8for_each4callB3k_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5n_3VecB3k_E14extend_trustedINtB2Y_3MapBP_B3Q_EE0E0E0EB3Y_.exit: ; preds = %bb.g, %bb.a
  %storemerge.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.a ], [ %i.s, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !758
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_valuess0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3v_8for_each4callNtNtB1O_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB4y_E14extend_trustedBN_E0E0EB2E_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !alias.scope !778 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !778 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !778
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtB1x_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_valuess0_0NCINvNvB2f_8for_each4callB3k_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5q_3VecB3k_E14extend_trustedINtB2Y_3MapBP_B3Q_EE0E0E0EB3Y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val10.i.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.b ], [ %i.s, %bb.g ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.i ; 2 uses
  %.val15.i.i = load ptr, ptr %i.i, align 8, !noalias !779, !nonnull !11, !align !31, !noundef !11
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val16.i.i = load i64, ptr %i.j, align 8, !noalias !779, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !780
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val16.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !779

.noexc.i.i:                                       ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !range !26, !noalias !780, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = load i64, ptr %i.g, align 8, !range !27, !noalias !780, !noundef !11 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %.noexc.i.i
  %i.n = load i64, ptr %i.h, align 8, !noalias !780
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.n) #53
          to label %.noexc17.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !779

.noexc17.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i
  %i.o = load ptr, ptr %i.h, align 8, !noalias !780, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = icmp ule i64 %.val16.i.i, %i.m
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !780
  %.not.i.i.i.i.i = icmp eq i64 %.val16.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %.val16.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr nonnull readonly align 4 %.val15.i.i, i64 %i.q, i1 false), !noalias !781
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload.i, i64 %.val10.i.i ; 3 uses
  store i64 %i.m, ptr %i.r, align 8, !noalias !782
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !782
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val16.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !782
  %i.s = add i64 %.val10.i.i, 1                   ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtB1x_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_valuess0_0NCINvNvB2f_8for_each4callB3k_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5q_3VecB3k_E14extend_trustedINtB2Y_3MapBP_B3Q_EE0E0E0EB3Y_.exit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val10.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !779
  resume { ptr, i32 } %lpad.loopexit.split-lp24

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtB1x_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_valuess0_0NCINvNvB2f_8for_each4callB3k_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5q_3VecB3k_E14extend_trustedINtB2Y_3MapBP_B3Q_EE0E0E0EB3Y_.exit: ; preds = %bb.g, %bb.a
  %storemerge.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.a ], [ %i.s, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !779
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItermEENCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB1U_5RegexNtNtB1W_3ffi15CodeUnitWidth32E12replace_impl0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3p_8for_each4callcNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4C_3VeccE14extend_trustedBN_E0E0ECs8frGy5WneL6_4fish(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !alias.scope !795 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !795 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !795
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmcuNCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB2H_5RegexNtNtB2J_3ffi15CodeUnitWidth32E12replace_impl0NCINvNvB1v_8for_each4callcNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4K_3VeccE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val10.i.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.b ], [ %i.k, %bb.e ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.e ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.i
  %.val15.i.i = load i32, ptr %i.f, align 4, !noalias !796, !noundef !11 ; 2 uses
  %i.g = xor i32 %.val15.i.i, 55296
  %i.h = add i32 %i.g, -1114112
  %i.i = icmp ult i32 %i.h, -1112064
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull inttoptr (i64 75 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #54
          to label %.noexc.i.i unwind label %bb.f, !noalias !796

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload.i, i64 %.val10.i.i
  store i32 %.val15.i.i, ptr %i.j, align 4, !noalias !797
  %i.k = add i64 %.val10.i.i, 1                   ; 2 uses
  %i.l = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.e
  br i1 %i.m, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmcuNCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB2H_5RegexNtNtB2J_3ffi15CodeUnitWidth32E12replace_impl0NCINvNvB1v_8for_each4callcNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4K_3VeccE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECs8frGy5WneL6_4fish.exit, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val10.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !796
  resume { ptr, i32 } %i.n

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmcuNCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB2H_5RegexNtNtB2J_3ffi15CodeUnitWidth32E12replace_impl0NCINvNvB1v_8for_each4callcNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4K_3VeccE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %bb.a
  %storemerge.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.a ], [ %i.k, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !796
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish3key3KeyENCNvMs5_NtNtB1N_5input7bindingNtNtNtB1N_6reader6reader6Reader15binding_executes_0ENCB2h_s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4Y_11Utf32StringINtNtB3O_7collect6ExtendcE6extendBN_E0E0EB1N_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish3key3KeyENCNvMs5_NtNtB1x_5input7bindingNtNtNtB1x_6reader6reader6Reader15binding_executes_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldRB1t_cuNCB21_s0_0NCINvNvB3j_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB5b_11Utf32StringINtNtB3n_7collect6ExtendcE6extendINtB42_3MapBQ_B4r_EE0E0E0EB1x_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtCs8frGy5WneL6_4fish3key3KeyuNCNvMs5_NtNtB16_5input7bindingNtNtNtB16_6reader6reader6Reader15binding_executes_0NCINvNtB6_3map8map_foldB11_cuNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4y_11Utf32StringINtNtB3F_7collect6ExtendcE6extendINtB2W_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterB12_EB1y_EB3k_EE0E0E0E0B16_.exit.i.i, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.s, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtCs8frGy5WneL6_4fish3key3KeyuNCNvMs5_NtNtB16_5input7bindingNtNtNtB16_6reader6reader6Reader15binding_executes_0NCINvNtB6_3map8map_foldB11_cuNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4y_11Utf32StringINtNtB3F_7collect6ExtendcE6extendINtB2W_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterB12_EB1y_EB3k_EE0E0E0E0B16_.exit.i.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load <4 x i8>, ptr %i.i, align 4, !alias.scope !808, !noalias !809
  %.fr = freeze <4 x i8> %i.j
  %i.k = trunc <4 x i8> %.fr to <4 x i1>
  %i.l = bitcast <4 x i1> %i.k to i4
  %.not = icmp eq i4 %i.l, 0
  br i1 %.not, label %bb.d, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtCs8frGy5WneL6_4fish3key3KeyuNCNvMs5_NtNtB16_5input7bindingNtNtNtB16_6reader6reader6Reader15binding_executes_0NCINvNtB6_3map8map_foldB11_cuNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4y_11Utf32StringINtNtB3F_7collect6ExtendcE6extendINtB2W_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterB12_EB1y_EB3k_EE0E0E0E0B16_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %.val3.i.i.i = load i32, ptr %i.h, align 4, !range !32, !alias.scope !808, !noalias !809, !noundef !11
  %i.m = load i64, ptr %i.f, align 8, !alias.scope !810, !noalias !808, !noundef !11 ; 3 uses
  %i.n = load i64, ptr %2, align 8, !range !16, !alias.scope !810, !noalias !808, !noundef !11
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish3key3KeycuNCNvMs5_NtNtBZ_5input7bindingNtNtNtBZ_6reader6reader6Reader15binding_executes0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB3O_11Utf32StringINtNtB2V_7collect6ExtendcE6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterBV_ENCB1u_s_0EB1s_EE0E0E0BZ_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #47, !noalias !808
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish3key3KeycuNCNvMs5_NtNtBZ_5input7bindingNtNtNtBZ_6reader6reader6Reader15binding_executes0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB3O_11Utf32StringINtNtB2V_7collect6ExtendcE6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterBV_ENCB1u_s_0EB1s_EE0E0E0BZ_.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish3key3KeycuNCNvMs5_NtNtBZ_5input7bindingNtNtNtBZ_6reader6reader6Reader15binding_executes0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB3O_11Utf32StringINtNtB2V_7collect6ExtendcE6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterBV_ENCB1u_s_0EB1s_EE0E0E0BZ_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr %i.g, align 8, !alias.scope !810, !noalias !808, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  store i32 %.val3.i.i.i, ptr %i.q, align 4, !noalias !808
  %i.r = add i64 %i.m, 1
  store i64 %i.r, ptr %i.f, align 8, !alias.scope !810, !noalias !808
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtCs8frGy5WneL6_4fish3key3KeyuNCNvMs5_NtNtB16_5input7bindingNtNtNtB16_6reader6reader6Reader15binding_executes_0NCINvNtB6_3map8map_foldB11_cuNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4y_11Utf32StringINtNtB3F_7collect6ExtendcE6extendINtB2W_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterB12_EB1y_EB3k_EE0E0E0E0B16_.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtCs8frGy5WneL6_4fish3key3KeyuNCNvMs5_NtNtB16_5input7bindingNtNtNtB16_6reader6reader6Reader15binding_executes_0NCINvNtB6_3map8map_foldB11_cuNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4y_11Utf32StringINtNtB3F_7collect6ExtendcE6extendINtB2W_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterB12_EB1y_EB3k_EE0E0E0E0B16_.exit.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish3key3KeycuNCNvMs5_NtNtBZ_5input7bindingNtNtNtBZ_6reader6reader6Reader15binding_executes0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB3O_11Utf32StringINtNtB2V_7collect6ExtendcE6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterBV_ENCB1u_s_0EB1s_EE0E0E0BZ_.exit.i.i.i, %bb.c
  %i.s = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.e
  br i1 %i.t, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish3key3KeyENCNvMs5_NtNtB1x_5input7bindingNtNtNtB1x_6reader6reader6Reader15binding_executes_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldRB1t_cuNCB21_s0_0NCINvNvB3j_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB5b_11Utf32StringINtNtB3n_7collect6ExtendcE6extendINtB42_3MapBQ_B4r_EE0E0E0EB1x_.exit, label %bb.c

_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish3key3KeyENCNvMs5_NtNtB1x_5input7bindingNtNtNtB1x_6reader6reader6Reader15binding_executes_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldRB1t_cuNCB21_s0_0NCINvNvB3j_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB5b_11Utf32StringINtNtB3n_7collect6ExtendcE6extendINtB42_3MapBQ_B4r_EE0E0E0EB1x_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtCs8frGy5WneL6_4fish3key3KeyuNCNvMs5_NtNtB16_5input7bindingNtNtNtB16_6reader6reader6Reader15binding_executes_0NCINvNtB6_3map8map_foldB11_cuNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4y_11Utf32StringINtNtB3F_7collect6ExtendcE6extendINtB2W_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterB12_EB1y_EB3k_EE0E0E0E0B16_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivehENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1G_11BuiltinBind9key_names0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2M_8for_each4callNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4P_3VecB3P_E14extend_trustedBN_E0E0EB1K_(i24 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %.sroa.4.0.extract.shift.i = lshr i24 %0, 8     ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc i24 %.sroa.4.0.extract.shift.i to i8 ; 2 uses
  %.sroa.6.0.extract.shift.i = lshr i24 %0, 16    ; 2 uses
  %.sroa.6.0.extract.trunc.i = trunc nuw i24 %.sroa.6.0.extract.shift.i to i8 ; 4 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !832 ; 4 uses
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.62.0.copyload.i = load i64, ptr %.sroa.62.0..sroa_idx.i, align 8, !alias.scope !832 ; 3 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.12.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !832 ; 2 uses
  %i.c = trunc i24 %0 to i1
  %.not.i.i = icmp ugt i8 %.sroa.4.0.extract.trunc.i, %.sroa.6.0.extract.trunc.i
  %or.cond.i = select i1 %i.c, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RINvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivehENtNtNtB8_6traits8iterator8Iterator4folduNCINvNtNtB8_8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3s_11BuiltinBind9key_names0NCINvNvB1g_8for_each4callB2t_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB59_3VecB2t_E14extend_trustedINtB1Z_3MapBE_B3l_EE0E0E0EB3w_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.d = icmp ult i8 %.sroa.4.0.extract.trunc.i, %.sroa.6.0.extract.trunc.i
  br i1 %i.d, label %.lr.ph.i.i, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.sroa.4.0.extract.trunc.mask.i = and i24 %.sroa.4.0.extract.shift.i, 255
  %i.e = zext nneg i24 %.sroa.4.0.extract.trunc.mask.i to i32
  %wide.trip.count.i.i = zext nneg i24 %.sroa.6.0.extract.shift.i to i32
  br label %bb.b

._crit_edge.thread.i.i:                           ; preds = %bb.c, %.preheader.i.i
  %.sroa.62.0.i = phi i64 [ %.sroa.62.0.copyload.i, %.preheader.i.i ], [ %i.p, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !833
  %i.f = add i8 %.sroa.6.0.extract.trunc.i, -1
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.f, 12
  br i1 %or.cond.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1U_11BuiltinBind9key_names0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB44_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range14RangeInclusivehEB1N_EE0E0E0B1Y_.exit.i.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs8frGy5WneL6_4fish.exit.thread.i.i.i.i.invoke.i.i, !prof !33

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs8frGy5WneL6_4fish.exit.thread.i.i.i.i.invoke.i.i: ; preds = %bb.b, %._crit_edge.thread.i.i
  %.sroa.62.1.i = phi i64 [ %.sroa.62.0.i, %._crit_edge.thread.i.i ], [ %.sroa.62.3.i, %bb.b ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #54
          to label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs8frGy5WneL6_4fish.exit.thread.i.i.i.i.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !834

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs8frGy5WneL6_4fish.exit.thread.i.i.i.i.cont.i.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs8frGy5WneL6_4fish.exit.thread.i.i.i.i.invoke.i.i
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1U_11BuiltinBind9key_names0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB44_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range14RangeInclusivehEB1N_EE0E0E0B1Y_.exit.i.i.i: ; preds = %._crit_edge.thread.i.i
  %i.g = add nuw nsw i8 %.sroa.6.0.extract.trunc.i, -14
  %i.h = zext i8 %i.g to i32
  %i.i = invoke noundef range(i32 0, 1114112) i32 @_RNvCskr4qsHYS30i_15fish_widestring11char_offset(i32 noundef 62720, i32 noundef %i.h)
          to label %.noexc11.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !834

.noexc11.i.i:                                     ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1U_11BuiltinBind9key_names0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB44_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range14RangeInclusivehEB1N_EE0E0E0B1Y_.exit.i.i.i
  %.sroa.02.0.insert.ext.i.i.i.i.i = zext nneg i32 %i.i to i64
  invoke void @_RNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_3KeyE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.02.0.insert.ext.i.i.i.i.i)
          to label %._crit_edge._crit_edge.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !834

._crit_edge._crit_edge.i.i:                       ; preds = %.noexc11.i.i
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.12.0.copyload.i, i64 %.sroa.62.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !835
  %i.k = add i64 %.sroa.62.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !833
  br label %_RINvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivehENtNtNtB8_6traits8iterator8Iterator4folduNCINvNtNtB8_8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3s_11BuiltinBind9key_names0NCINvNvB1g_8for_each4callB2t_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB59_3VecB2t_E14extend_trustedINtB1Z_3MapBE_B3l_EE0E0E0EB3w_.exit

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.62.3.i = phi i64 [ %.sroa.62.0.copyload.i, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 4 uses
  %indvars.iv.i.i = phi i32 [ %i.e, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 3 uses
  %indvars28.i.i = trunc i32 %indvars.iv.i.i to i8
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !836
  %i.l = add i8 %indvars28.i.i, -1
  %or.cond.i.i.i.i13.i.i = icmp ult i8 %i.l, 12
  br i1 %or.cond.i.i.i.i13.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1U_11BuiltinBind9key_names0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB44_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range14RangeInclusivehEB1N_EE0E0E0B1Y_.exit.i15.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs8frGy5WneL6_4fish.exit.thread.i.i.i.i.invoke.i.i, !prof !33

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1U_11BuiltinBind9key_names0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB44_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range14RangeInclusivehEB1N_EE0E0E0B1Y_.exit.i15.i.i: ; preds = %bb.b
  %i.m = add nuw nsw i32 %indvars.iv.i.i, 242
  %i.n = invoke noundef range(i32 0, 1114112) i32 @_RNvCskr4qsHYS30i_15fish_widestring11char_offset(i32 noundef 62720, i32 noundef %i.m)
          to label %.noexc18.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !834

.noexc18.i.i:                                     ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1U_11BuiltinBind9key_names0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB44_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range14RangeInclusivehEB1N_EE0E0E0B1Y_.exit.i15.i.i
  %.sroa.02.0.insert.ext.i.i.i16.i.i = zext nneg i32 %i.n to i64
  invoke void @_RNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_3KeyE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.02.0.insert.ext.i.i.i16.i.i)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !834

bb.c:                                             ; preds = %.noexc18.i.i
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.12.0.copyload.i, i64 %.sroa.62.3.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !837
  %i.p = add i64 %.sroa.62.3.i, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !836
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %bb.b

.loopexit.split-lp.loopexit.i.i:                  ; preds = %.noexc18.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1U_11BuiltinBind9key_names0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB44_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range14RangeInclusivehEB1N_EE0E0E0B1Y_.exit.i15.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.noexc11.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1U_11BuiltinBind9key_names0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB44_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range14RangeInclusivehEB1N_EE0E0E0B1Y_.exit.i.i.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs8frGy5WneL6_4fish.exit.thread.i.i.i.i.invoke.i.i
  %.sroa.62.2.i = phi i64 [ %.sroa.62.0.i, %.noexc11.i.i ], [ %.sroa.62.0.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB1U_11BuiltinBind9key_names0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB44_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range14RangeInclusivehEB1N_EE0E0E0B1Y_.exit.i.i.i ], [ %.sroa.62.1.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs8frGy5WneL6_4fish.exit.thread.i.i.i.i.invoke.i.i ]
  %lpad.loopexit.split-lp24.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i
  %.val8.i.i = phi i64 [ %.sroa.62.3.i, %.loopexit.split-lp.loopexit.i.i ], [ %.sroa.62.2.i, %.loopexit.split-lp.loopexit.split-lp.i.i ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp24.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i) ]
  store i64 %.val8.i.i, ptr %.sroa.01.0.copyload.i, align 8, !noalias !834
  resume { ptr, i32 } %lpad.phi.i.i

_RINvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivehENtNtNtB8_6traits8iterator8Iterator4folduNCINvNtNtB8_8adapters3map8map_foldhNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3s_11BuiltinBind9key_names0NCINvNvB1g_8for_each4callB2t_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB59_3VecB2t_E14extend_trustedINtB1Z_3MapBE_B3l_EE0E0E0EB3w_.exit: ; preds = %bb.a, %._crit_edge._crit_edge.i.i
  %storemerge.i = phi i64 [ %i.k, %._crit_edge._crit_edge.i.i ], [ %.sroa.62.0.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i) ]
  store i64 %storemerge.i, ptr %.sroa.01.0.copyload.i, align 8, !noalias !834
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringKj1_ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2w_7HashSetB1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1r_E6extendAB1r_B2j_E0ENtNtB4c_8iterator8Iterator4folduNCINvNvB51_8for_each4callTB1r_uENCINvXs1i_NtB2y_3mapINtB6d_7HashMapB1r_uB3j_EIB48_B5W_E6extendBN_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.d = load i64, ptr %i.b, align 8, !alias.scope !856, !noundef !11 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !856, !noundef !11 ; 4 uses
  %i.g = icmp ule i64 %i.d, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %.not1.i.i = icmp eq i64 %i.d, %i.f
  br i1 %.not1.i.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldBT_TBT_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3s_7HashSetBT_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB1T_7collect6ExtendBT_E6extendABT_B1L_E0NCINvNvB1P_8for_each4callB3c_NCINvXs1i_NtB3u_3mapINtB6o_7HashMapBT_uB4e_EIB53_B3c_E6extendINtB2F_3MapBE_B3j_EE0E0E0ECs8frGy5WneL6_4fish.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.f, 1
  store i64 1, ptr %i.b, align 8, !alias.scope !856
  %i.h = icmp eq i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !857
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br i1 %.not.i.i, label %.lr.ph.i.us.i, label %.lr.ph.i.preheader2.i

.lr.ph.i.preheader2.i:                            ; preds = %.lr.ph.i.preheader.i
  %i.j = invoke noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.peel.i unwind label %.split.loopexit.split-lp.i, !noalias !854 ; 0 uses

.noexc.peel.i:                                    ; preds = %.lr.ph.i.preheader2.i
  unreachable

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.preheader.i
  %i.k = invoke noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.us.i unwind label %.split.loopexit.split-lp.i, !noalias !854 ; 0 uses

.noexc.us.i:                                      ; preds = %.lr.ph.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !857
  br label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldBT_TBT_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3s_7HashSetBT_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB1T_7collect6ExtendBT_E6extendABT_B1L_E0NCINvNvB1P_8for_each4callB3c_NCINvXs1i_NtB3u_3mapINtB6o_7HashMapBT_uB4e_EIB53_B3c_E6extendINtB2F_3MapBE_B3j_EE0E0E0ECs8frGy5WneL6_4fish.exit

.split.loopexit.split-lp.i:                       ; preds = %.lr.ph.i.us.i, %.lr.ph.i.preheader2.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEj1_NtB4_11PartialDrop12partial_dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1, i64 noundef %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringKj1_EECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.split.loopexit.split-lp.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringKj1_EECs8frGy5WneL6_4fish.exit.i: ; preds = %.split.loopexit.split-lp.i
  resume { ptr, i32 } %lpad.loopexit.split-lp.i

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldBT_TBT_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3s_7HashSetBT_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB1T_7collect6ExtendBT_E6extendABT_B1L_E0NCINvNvB1P_8for_each4callB3c_NCINvXs1i_NtB3u_3mapINtB6o_7HashMapBT_uB4e_EIB53_B3c_E6extendINtB2F_3MapBE_B3j_EE0E0E0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %.noexc.us.i
  %i.m = phi i64 [ 1, %.noexc.us.i ], [ %i.d, %bb.a ] ; 2 uses
  call void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEj1_NtB4_11PartialDrop12partial_dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.m, i64 noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB2b_17LocalizationState15update_from_env17update_precedenceNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB5L_13FlattenCompatppE13iter_try_fold7flattenINtNtB1r_3vec3VecB3U_EuINtNtNtBc_3ops12control_flow11ControlFlowB3U_ENCINvNvXsi_B5L_B5Y_B4S_8try_fold7flattenINtNtB6N_9into_iter8IntoIterB3U_EuB77_NCINvNvB4S_4find5checkB3U_QNCB22_s_0E0E0E0B77_EB2f_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !873, !nonnull !11, !noundef !11
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !873
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..8.val.sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.6.0..8.val.sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.7.0..8.val.sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.b, align 8, !nonnull !11, !align !12
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3L_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5L_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2Q_NCINvNvXsi_B5L_B5Y_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2Q_NCINvNvB7c_4find5checkB1T_QNCB3C_s_0E0E0E0E0B3P_.exit.i, %bb.a
  %i.e = phi ptr [ %i.g, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3L_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5L_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2Q_NCINvNvXsi_B5L_B5Y_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2Q_NCINvNvB7c_4find5checkB1T_QNCB3C_s_0E0E0E0E0B3P_.exit.i ], [ %.promoted.i, %bb.a ] ; 4 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBN_3vec3VecNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB39_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB51_17LocalizationState15update_from_env17update_precedenceB39_E0NCINvNvMsg_NtB2i_7flattenINtB71_13FlattenCompatppE13iter_try_fold7flattenB2T_uB46_NCINvNvXsi_B71_B7f_B1m_8try_fold7flattenINtNtB2W_9into_iter8IntoIterB39_EuB46_NCINvNvB1m_4find5checkB39_QNCB4S_s_0E0E0E0E0B46_EB55_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !873
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !noalias !874, !nonnull !11, !noundef !11
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %.val8.i = load i64, ptr %i.i, align 8, !noalias !874, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !875
  call void @_RINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB6_17LocalizationState17find_best_matchesNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val8.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i.i), !noalias !875
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !875 ; 2 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !875, !nonnull !11, !noundef !11 ; 5 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !875 ; 2 uses
  %i.j = icmp ult i64 %.sroa.5.0.copyload.i.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.l = load ptr, ptr %2, align 8, !alias.scope !877, !noalias !878, !noundef !11
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3L_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5L_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2Q_NCINvNvXsi_B5L_B5Y_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2Q_NCINvNvB7c_4find5checkB1T_QNCB3C_s_0E0E0E0E0B3P_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3L_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5L_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2Q_NCINvNvXsi_B5L_B5Y_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2Q_NCINvNvB7c_4find5checkB1T_QNCB3C_s_0E0E0E0E0B3P_.exit.i unwind label %bb.e, !noalias !879

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.4.0.copyload.i.i, ptr %2, align 8, !alias.scope !880, !noalias !878
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx2.i.i.i, align 8, !alias.scope !880, !noalias !878
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..8.val.sroa_idx4.i.i.i, align 8, !alias.scope !880, !noalias !878
  store ptr %i.k, ptr %.sroa.7.0..8.val.sroa_idx6.i.i.i, align 8, !alias.scope !880, !noalias !878
  resume { ptr, i32 } %i.n

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3L_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5L_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2Q_NCINvNvXsi_B5L_B5Y_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2Q_NCINvNvB7c_4find5checkB1T_QNCB3C_s_0E0E0E0E0B3P_.exit.i: ; preds = %bb.d, %bb.c
  store ptr %.sroa.4.0.copyload.i.i, ptr %2, align 8, !alias.scope !880, !noalias !878
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx2.i.i.i, align 8, !alias.scope !880, !noalias !878
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..8.val.sroa_idx4.i.i.i, align 8, !alias.scope !880, !noalias !878
  store ptr %i.k, ptr %.sroa.7.0..8.val.sroa_idx6.i.i.i, align 8, !alias.scope !880, !noalias !878
  %i.o = tail call { ptr, i64 } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduQNCINvNvB1T_4find5checkBX_QNCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3A_17LocalizationState15update_from_env17update_precedenceBX_Es_0E0INtNtNtB21_3ops12control_flow11ControlFlowBX_EEB3E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !878 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !875
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  %.not7.i = icmp eq ptr %i.p, null
  br i1 %.not7.i, label %bb.b, label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3L_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5L_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2Q_NCINvNvXsi_B5L_B5Y_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2Q_NCINvNvB7c_4find5checkB1T_QNCB3C_s_0E0E0E0E0B3P_.exit.i
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBN_3vec3VecNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB39_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB51_17LocalizationState15update_from_env17update_precedenceB39_E0NCINvNvMsg_NtB2i_7flattenINtB71_13FlattenCompatppE13iter_try_fold7flattenB2T_uB46_NCINvNvXsi_B71_B7f_B1m_8try_fold7flattenINtNtB2W_9into_iter8IntoIterB39_EuB46_NCINvNvB1m_4find5checkB39_QNCB4S_s_0E0E0E0E0B46_EB55_.exit

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBN_3vec3VecNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB39_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB51_17LocalizationState15update_from_env17update_precedenceB39_E0NCINvNvMsg_NtB2i_7flattenINtB71_13FlattenCompatppE13iter_try_fold7flattenB2T_uB46_NCINvNvXsi_B71_B7f_B1m_8try_fold7flattenINtNtB2W_9into_iter8IntoIterB39_EuB46_NCINvNvB1m_4find5checkB39_QNCB4S_s_0E0E0E0E0B46_EB55_.exit: ; preds = %bb.b, %bb.f
  %.sroa.3.0.i = phi i64 [ %i.q, %bb.f ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.p, %bb.f ], [ null, %bb.b ]
  %i.r = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.s = insertvalue { ptr, i64 } %i.r, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB2b_17LocalizationState15update_from_env17update_precedenceNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB5N_13FlattenCompatppE13iter_try_fold7flattenINtNtB1r_3vec3VecB3U_EuINtNtNtBc_3ops12control_flow11ControlFlowB3U_ENCINvNvXsi_B5N_B60_B4U_8try_fold7flattenINtNtB6P_9into_iter8IntoIterB3U_EuB79_NCINvNvB4U_4find5checkB3U_QNCB22_s_0E0E0E0B79_EB2f_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !896, !nonnull !11, !noundef !11
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !896
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..8.val.sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.6.0..8.val.sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.7.0..8.val.sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.b, align 8, !nonnull !11, !align !12
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3N_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5N_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2S_NCINvNvXsi_B5N_B60_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2S_NCINvNvB7e_4find5checkB1T_QNCB3E_s_0E0E0E0E0B3R_.exit.i, %bb.a
  %i.e = phi ptr [ %i.g, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3N_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5N_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2S_NCINvNvXsi_B5N_B60_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2S_NCINvNvB7e_4find5checkB1T_QNCB3E_s_0E0E0E0E0B3R_.exit.i ], [ %.promoted.i, %bb.a ] ; 4 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBN_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB39_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB53_17LocalizationState15update_from_env17update_precedenceB39_E0NCINvNvMsg_NtB2i_7flattenINtB73_13FlattenCompatppE13iter_try_fold7flattenB2T_uB48_NCINvNvXsi_B73_B7h_B1m_8try_fold7flattenINtNtB2W_9into_iter8IntoIterB39_EuB48_NCINvNvB1m_4find5checkB39_QNCB4U_s_0E0E0E0E0B48_EB57_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !896
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !noalias !897, !nonnull !11, !noundef !11
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %.val8.i = load i64, ptr %i.i, align 8, !noalias !897, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !898
  call void @_RINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB6_17LocalizationState17find_best_matchesNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val8.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i.i), !noalias !898
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !898 ; 2 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !898, !nonnull !11, !noundef !11 ; 5 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !898 ; 2 uses
  %i.j = icmp ult i64 %.sroa.5.0.copyload.i.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %.sroa.5.0.copyload.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.l = load ptr, ptr %2, align 8, !alias.scope !900, !noalias !901, !noundef !11
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3N_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5N_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2S_NCINvNvXsi_B5N_B60_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2S_NCINvNvB7e_4find5checkB1T_QNCB3E_s_0E0E0E0E0B3R_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3N_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5N_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2S_NCINvNvXsi_B5N_B60_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2S_NCINvNvB7e_4find5checkB1T_QNCB3E_s_0E0E0E0E0B3R_.exit.i unwind label %bb.e, !noalias !902

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.4.0.copyload.i.i, ptr %2, align 8, !alias.scope !903, !noalias !901
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx2.i.i.i, align 8, !alias.scope !903, !noalias !901
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..8.val.sroa_idx4.i.i.i, align 8, !alias.scope !903, !noalias !901
  store ptr %i.k, ptr %.sroa.7.0..8.val.sroa_idx6.i.i.i, align 8, !alias.scope !903, !noalias !901
  resume { ptr, i32 } %i.n

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3N_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5N_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2S_NCINvNvXsi_B5N_B60_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2S_NCINvNvB7e_4find5checkB1T_QNCB3E_s_0E0E0E0E0B3R_.exit.i: ; preds = %bb.d, %bb.c
  store ptr %.sroa.4.0.copyload.i.i, ptr %2, align 8, !alias.scope !903, !noalias !901
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx2.i.i.i, align 8, !alias.scope !903, !noalias !901
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..8.val.sroa_idx4.i.i.i, align 8, !alias.scope !903, !noalias !901
  store ptr %i.k, ptr %.sroa.7.0..8.val.sroa_idx6.i.i.i, align 8, !alias.scope !903, !noalias !901
  %i.o = tail call { ptr, i64 } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduQNCINvNvB1V_4find5checkBX_QNCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3C_17LocalizationState15update_from_env17update_precedenceBX_Es_0E0INtNtNtB23_3ops12control_flow11ControlFlowBX_EEB3G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !901 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !898
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  %.not7.i = icmp eq ptr %i.p, null
  br i1 %.not7.i, label %bb.b, label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB14_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB1T_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB3N_17LocalizationState15update_from_env17update_precedenceB1T_E0NCINvNvMsg_NtB6_7flattenINtB5N_13FlattenCompatppE13iter_try_fold7flattenB1C_uB2S_NCINvNvXsi_B5N_B60_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB1F_9into_iter8IntoIterB1T_EuB2S_NCINvNvB7e_4find5checkB1T_QNCB3E_s_0E0E0E0E0B3R_.exit.i
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBN_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB39_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB53_17LocalizationState15update_from_env17update_precedenceB39_E0NCINvNvMsg_NtB2i_7flattenINtB73_13FlattenCompatppE13iter_try_fold7flattenB2T_uB48_NCINvNvXsi_B73_B7h_B1m_8try_fold7flattenINtNtB2W_9into_iter8IntoIterB39_EuB48_NCINvNvB1m_4find5checkB39_QNCB4U_s_0E0E0E0E0B48_EB57_.exit

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBN_3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowB39_ENCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB53_17LocalizationState15update_from_env17update_precedenceB39_E0NCINvNvMsg_NtB2i_7flattenINtB73_13FlattenCompatppE13iter_try_fold7flattenB2T_uB48_NCINvNvXsi_B73_B7h_B1m_8try_fold7flattenINtNtB2W_9into_iter8IntoIterB39_EuB48_NCINvNvB1m_4find5checkB39_QNCB4U_s_0E0E0E0E0B48_EB57_.exit: ; preds = %bb.b, %bb.f
  %.sroa.3.0.i = phi i64 [ %i.q, %bb.f ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.p, %bb.f ], [ null, %bb.b ]
  %i.r = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.s = insertvalue { ptr, i64 } %i.r, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENCNCINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB2b_17LocalizationState35update_from_status_language_builtinB1n_E00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB43_4find5checkNtCslSwhfOFuxKz_17fish_localization8LanguageQNCB24_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB57_EEB2f_(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !916
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !noalias !916
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !917, !nonnull !11, !noundef !11
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !917
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = phi ptr [ %i.j, %bb.c ], [ %.promoted.i, %bb.a ] ; 4 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_NtCslSwhfOFuxKz_17fish_localization8LanguageuINtNtNtBa_3ops12control_flow11ControlFlowB2T_ENCNCINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB4x_17LocalizationState35update_from_status_language_builtinBJ_E00NCINvNvB1m_4find5checkB2T_QNCB4q_s_0E0E0B3C_EB4B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !917
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !noalias !915, !nonnull !11, !noundef !11 ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 16
  %.val8.i = load i64, ptr %i.l, align 8, !noalias !915, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !918
  store ptr %.val.i, ptr %i.a, align 8, !noalias !919
  store i64 %.val8.i, ptr %i.g, align 8, !noalias !919
  %i.m = call noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtBX_17LocalizationState35update_from_status_language_builtinNtNtCs1xwejQucwHj_5alloc6string6StringEs_0INtB7_5FnMutTRNtCslSwhfOFuxKz_17fish_localization8LanguageEE8call_mutB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !918
  br i1 %i.m, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_NtCslSwhfOFuxKz_17fish_localization8LanguageuINtNtNtBa_3ops12control_flow11ControlFlowB2T_ENCNCINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB4x_17LocalizationState35update_from_status_language_builtinBJ_E00NCINvNvB1m_4find5checkB2T_QNCB4q_s_0E0E0B3C_EB4B_.exit, label %bb.b

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_NtCslSwhfOFuxKz_17fish_localization8LanguageuINtNtNtBa_3ops12control_flow11ControlFlowB2T_ENCNCINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB4x_17LocalizationState35update_from_status_language_builtinBJ_E00NCINvNvB1m_4find5checkB2T_QNCB4q_s_0E0E0B3C_EB4B_.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i = phi i64 [ undef, %bb.b ], [ %.val8.i, %bb.c ]
  %.sroa.0.0.i = phi ptr [ null, %bb.b ], [ %.val.i, %bb.c ]
  %i.n = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMso_NtNtB1r_6reader6readerNtB2e_6Reader18handle_completions0ENtNtNtBa_6traits8iterator8Iterator4foldmNvYmNtNtBc_3cmp3Ord3minEB1r_(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1F_8adapters3map8map_foldRBQ_mmNCNvMso_NtNtBU_6reader6readerNtB37_6Reader18handle_completions0NvYmNtNtBb_3cmp3Ord3minE0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 56
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi i32 [ %2, %bb.b ], [ %..i.i.i.i, %bb.c ]
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.g = tail call noundef i32 @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion4rank(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f)
  %..i.i.i.i = tail call noundef i32 @llvm.umin.i32(i32 %i.g, i32 %.sroa.02.0.i) ; 2 uses
  %i.h = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.e
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1F_8adapters3map8map_foldRBQ_mmNCNvMso_NtNtBU_6reader6readerNtB37_6Reader18handle_completions0NvYmNtNtBb_3cmp3Ord3minE0EBU_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1F_8adapters3map8map_foldRBQ_mmNCNvMso_NtNtBU_6reader6readerNtB37_6Reader18handle_completions0NvYmNtNtBb_3cmp3Ord3minE0EBU_.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i32 [ %2, %bb.a ], [ %..i.i.i.i, %bb.c ]
  ret i32 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENvMs0_B1p_B1n_4rankENtNtNtBa_6traits8iterator8Iterator4foldmNvYmNtNtBc_3cmp3Ord3minEB1r_(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1F_8adapters3map8map_foldRBQ_mmNvMs0_BS_BQ_4rankNvYmNtNtBb_3cmp3Ord3minE0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 56
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi i32 [ %2, %bb.b ], [ %..i.i.i.i, %bb.c ]
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.g = tail call noundef i32 @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion4rank(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f)
  %..i.i.i.i = tail call noundef i32 @llvm.umin.i32(i32 %i.g, i32 %.sroa.02.0.i) ; 2 uses
  %i.h = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.e
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1F_8adapters3map8map_foldRBQ_mmNvMs0_BS_BQ_4rankNvYmNtNtBb_3cmp3Ord3minE0EBU_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1F_8adapters3map8map_foldRBQ_mmNvMs0_BS_BQ_4rankNvYmNtNtBb_3cmp3Ord3minE0EBU_.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i32 [ %2, %bb.a ], [ %..i.i.i.i, %bb.c ]
  ret i32 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3i_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4T_3VecB4l_E14extend_trustedBN_E0E0EB2n_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB59_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val15.i = load ptr, ptr %i.g, align 8, !noalias !930, !nonnull !11, !noundef !11
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val16.i = load i64, ptr %i.h, align 8, !noalias !930, !noundef !11
  %i.i = invoke { ptr, i64 } @_RNvCs5UXtnEuoeIl_11fish_common15truncate_at_nul(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val15.i, i64 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !noalias !930 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !noalias !931, !captures !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.k, ptr %i.m, align 8, !noalias !932
  %i.n = add i64 %.val10.i, 1                     ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB59_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !930
  resume { ptr, i32 } %i.q

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB59_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !930
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB2k_16ExecutionContext22run_function_statement0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5l_3VecB4N_E14extend_trustedBN_E0E0EB2m_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB3A_16ExecutionContext22run_function_statement0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5B_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val15.i = load ptr, ptr %i.g, align 8, !noalias !943, !nonnull !11, !noundef !11
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val16.i = load i64, ptr %i.h, align 8, !noalias !943, !noundef !11
  %i.i = invoke { ptr, i64 } @_RNvCs5UXtnEuoeIl_11fish_common15truncate_at_nul(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val15.i, i64 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !noalias !943 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !noalias !944, !captures !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.k, ptr %i.m, align 8, !noalias !945
  %i.n = add i64 %.val10.i, 1                     ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB3A_16ExecutionContext22run_function_statement0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5B_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3C_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !943
  resume { ptr, i32 } %i.q

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMNtCs8frGy5WneL6_4fish15parse_executionNtB3A_16ExecutionContext22run_function_statement0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5B_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3C_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !943
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2m_11BuiltinBind9key_namess0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3v_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB56_3VecB4y_E14extend_trustedINtNtB8_5chain5ChainIBO_IBY_TcB4y_EENCB2h_s_0EBN_EE0E0EB2q_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind9key_namess0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5m_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtB2y_3MapIBG_TcB36_EENCB3x_s_0EIB6E_BF_B3v_EEE0E0E0EB3G_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 24                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 24
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !956, !nonnull !11, !noundef !11
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !956, !noundef !11
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store ptr %.val15.i, ptr %i.k, align 8, !noalias !957, !captures !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val16.i, ptr %i.l, align 8, !noalias !958
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %.val15.i.1 = load ptr, ptr %i.n, align 8, !noalias !956, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val16.i.1 = load i64, ptr %i.o, align 8, !noalias !956, !noundef !11
  %i.p = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store ptr %.val15.i.1, ptr %i.q, align 8, !noalias !957, !captures !34
  %i.r = getelementptr i8, ptr %i.p, i64 24
  store i64 %.val16.i.1, ptr %i.r, align 8, !noalias !958
  %i.s = add i64 %i.g, 2                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind9key_namess0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5m_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtB2y_3MapIBG_TcB36_EENCB3x_s_0EIB6E_BF_B3v_EEE0E0E0EB3G_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind9key_namess0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5m_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtB2y_3MapIBG_TcB36_EENCB3x_s_0EIB6E_BF_B3v_EEE0E0E0EB3G_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind9key_namess0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5m_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtB2y_3MapIBG_TcB36_EENCB3x_s_0EIB6E_BF_B3v_EEE0E0E0EB3G_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind9key_namess0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5m_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtB2y_3MapIBG_TcB36_EENCB3x_s_0EIB6E_BF_B3v_EEE0E0E0EB3G_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind9key_namess0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5m_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtB2y_3MapIBG_TcB36_EENCB3x_s_0EIB6E_BF_B3v_EEE0E0E0EB3G_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind9key_namess0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5m_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtB2y_3MapIBG_TcB36_EENCB3x_s_0EIB6E_BF_B3v_EEE0E0E0EB3G_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val15.i.epil = load ptr, ptr %i.v, align 8, !noalias !956, !nonnull !11, !noundef !11
  %i.w = getelementptr i8, ptr %i.u, i64 16
  %.val16.i.epil = load i64, ptr %i.w, align 8, !noalias !956, !noundef !11
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.epil, ptr %i.x, align 8, !noalias !957, !captures !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.val16.i.epil, ptr %i.y, align 8, !noalias !958
  %i.z = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind9key_namess0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5m_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtB2y_3MapIBG_TcB36_EENCB3x_s_0EIB6E_BF_B3v_EEE0E0E0EB3G_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind9key_namess0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5m_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtB2y_3MapIBG_TcB36_EENCB3x_s_0EIB6E_BF_B3v_EEE0E0E0EB3G_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind9key_namess0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5m_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtB2y_3MapIBG_TcB36_EENCB3x_s_0EIB6E_BF_B3v_EEE0E0E0EB3G_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind9key_namess0_0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5m_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtB2y_3MapIBG_TcB36_EENCB3x_s_0EIB6E_BF_B3v_EEE0E0E0EB3G_.exit.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !956
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21exec_external_command0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringNCINvMsk_NtB4h_3vecINtB52_3VecB4b_E14extend_trustedBN_E0E0EB2l_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_NtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringuNCNvNtCs8frGy5WneL6_4fish4exec21exec_external_command0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtB3c_3vecINtB5j_3VecB36_E14extend_trustedINtB2y_3MapBF_B3P_EE0E0E0EB3V_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val15.i = load ptr, ptr %i.g, align 8, !noalias !969, !nonnull !11, !noundef !11
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val16.i = load i64, ptr %i.h, align 8, !noalias !969, !noundef !11
  %i.i = invoke { ptr, i64 } @_RNvCskr4qsHYS30i_15fish_widestring11wcs2zstring(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val15.i, i64 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !noalias !969 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !noalias !970
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.k, ptr %i.m, align 8, !noalias !971
  %i.n = add i64 %.val10.i, 1                     ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_NtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringuNCNvNtCs8frGy5WneL6_4fish4exec21exec_external_command0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtB3c_3vecINtB5j_3VecB36_E14extend_trustedINtB2y_3MapBF_B3P_EE0E0E0EB3V_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !969
  resume { ptr, i32 } %i.q

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_NtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringuNCNvNtCs8frGy5WneL6_4fish4exec21exec_external_command0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtB3c_3vecINtB5j_3VecB36_E14extend_trustedINtB2y_3MapBF_B3P_EE0E0E0EB3V_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !969
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringNCINvMsk_NtB4h_3vecINtB52_3VecB4b_E14extend_trustedBN_E0E0EB2l_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_NtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringuNCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtB3c_3vecINtB5j_3VecB36_E14extend_trustedINtB2y_3MapBF_B3P_EE0E0E0EB3V_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val15.i = load ptr, ptr %i.g, align 8, !noalias !982, !nonnull !11, !noundef !11
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val16.i = load i64, ptr %i.h, align 8, !noalias !982, !noundef !11
  %i.i = invoke { ptr, i64 } @_RNvCskr4qsHYS30i_15fish_widestring11wcs2zstring(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val15.i, i64 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !noalias !982 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !noalias !983
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.k, ptr %i.m, align 8, !noalias !984
  %i.n = add i64 %.val10.i, 1                     ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_NtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringuNCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtB3c_3vecINtB5j_3VecB36_E14extend_trustedINtB2y_3MapBF_B3P_EE0E0E0EB3V_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !982
  resume { ptr, i32 } %i.q

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_NtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringuNCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtB3c_3vecINtB5j_3VecB36_E14extend_trustedINtB2y_3MapBF_B3P_EE0E0E0EB3V_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !982
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB37_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4I_3VecB4a_E14extend_trustedINtNtB8_5chain5ChainINtNtBc_6option8IntoIterB4a_EBN_EE0E0EB2l_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4Y_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtNtBb_6option8IntoIterB36_EINtB2y_3MapBF_B3v_EEE0E0E0EB3B_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 24                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 24
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !995, !nonnull !11, !noundef !11
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !995, !noundef !11
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store ptr %.val15.i, ptr %i.k, align 8, !noalias !996, !captures !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val16.i, ptr %i.l, align 8, !noalias !997
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %.val15.i.1 = load ptr, ptr %i.n, align 8, !noalias !995, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val16.i.1 = load i64, ptr %i.o, align 8, !noalias !995, !noundef !11
  %i.p = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store ptr %.val15.i.1, ptr %i.q, align 8, !noalias !996, !captures !34
  %i.r = getelementptr i8, ptr %i.p, i64 24
  store i64 %.val16.i.1, ptr %i.r, align 8, !noalias !997
  %i.s = add i64 %i.g, 2                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4Y_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtNtBb_6option8IntoIterB36_EINtB2y_3MapBF_B3v_EEE0E0E0EB3B_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4Y_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtNtBb_6option8IntoIterB36_EINtB2y_3MapBF_B3v_EEE0E0E0EB3B_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4Y_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtNtBb_6option8IntoIterB36_EINtB2y_3MapBF_B3v_EEE0E0E0EB3B_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4Y_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtNtBb_6option8IntoIterB36_EINtB2y_3MapBF_B3v_EEE0E0E0EB3B_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4Y_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtNtBb_6option8IntoIterB36_EINtB2y_3MapBF_B3v_EEE0E0E0EB3B_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4Y_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtNtBb_6option8IntoIterB36_EINtB2y_3MapBF_B3v_EEE0E0E0EB3B_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val15.i.epil = load ptr, ptr %i.v, align 8, !noalias !995, !nonnull !11, !noundef !11
  %i.w = getelementptr i8, ptr %i.u, i64 16
  %.val16.i.epil = load i64, ptr %i.w, align 8, !noalias !995, !noundef !11
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.epil, ptr %i.x, align 8, !noalias !996, !captures !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.val16.i.epil, ptr %i.y, align 8, !noalias !997
  %i.z = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4Y_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtNtBb_6option8IntoIterB36_EINtB2y_3MapBF_B3v_EEE0E0E0EB3B_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4Y_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtNtBb_6option8IntoIterB36_EINtB2y_3MapBF_B3v_EEE0E0E0EB3B_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4Y_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtNtBb_6option8IntoIterB36_EINtB2y_3MapBF_B3v_EEE0E0E0EB3B_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtCs8frGy5WneL6_4fish9text_face15parse_text_face0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4Y_3VecB36_E14extend_trustedINtNtB2A_5chain5ChainINtNtBb_6option8IntoIterB36_EINtB2y_3MapBF_B3v_EEE0E0E0EB3B_.exit.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !995
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4P_3VecB4h_E14extend_trustedBN_E0E0EB2n_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB55_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 24                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 24
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !1008, !nonnull !11, !noundef !11
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !1008, !noundef !11
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store ptr %.val15.i, ptr %i.k, align 8, !noalias !1009, !captures !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val16.i, ptr %i.l, align 8, !noalias !1010
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %.val15.i.1 = load ptr, ptr %i.n, align 8, !noalias !1008, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val16.i.1 = load i64, ptr %i.o, align 8, !noalias !1008, !noundef !11
  %i.p = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store ptr %.val15.i.1, ptr %i.q, align 8, !noalias !1009, !captures !34
  %i.r = getelementptr i8, ptr %i.p, i64 24
  store i64 %.val16.i.1, ptr %i.r, align 8, !noalias !1010
  %i.s = add i64 %i.g, 2                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB55_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB55_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB55_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB55_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB55_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB55_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val15.i.epil = load ptr, ptr %i.v, align 8, !noalias !1008, !nonnull !11, !noundef !11
  %i.w = getelementptr i8, ptr %i.u, i64 16
  %.val16.i.epil = load i64, ptr %i.w, align 8, !noalias !1008, !noundef !11
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.epil, ptr %i.x, align 8, !noalias !1009, !captures !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.val16.i.epil, ptr %i.y, align 8, !noalias !1010
  %i.z = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB55_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB55_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB55_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB55_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1008
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4W_3VecB4o_E14extend_trustedBN_E0E0EB2n_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 24                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 24
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !1021, !nonnull !11, !noundef !11
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !1021, !noundef !11
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store ptr %.val15.i, ptr %i.k, align 8, !noalias !1022, !captures !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val16.i, ptr %i.l, align 8, !noalias !1023
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %.val15.i.1 = load ptr, ptr %i.n, align 8, !noalias !1021, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val16.i.1 = load i64, ptr %i.o, align 8, !noalias !1021, !noundef !11
  %i.p = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store ptr %.val15.i.1, ptr %i.q, align 8, !noalias !1022, !captures !34
  %i.r = getelementptr i8, ptr %i.p, i64 24
  store i64 %.val16.i.1, ptr %i.r, align 8, !noalias !1023
  %i.s = add i64 %i.g, 2                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val15.i.epil = load ptr, ptr %i.v, align 8, !noalias !1021, !nonnull !11, !noundef !11
  %i.w = getelementptr i8, ptr %i.u, i64 16
  %.val16.i.epil = load i64, ptr %i.w, align 8, !noalias !1021, !noundef !11
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.epil, ptr %i.x, align 8, !noalias !1022, !captures !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.val16.i.epil, ptr %i.y, align 8, !noalias !1023
  %i.z = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1021
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3r_8for_each4callRNtNtB1r_6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB52_3VecB4u_E14extend_trustedBN_E0E0EB2n_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5i_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 24                  ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 24
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !1034, !nonnull !11, !noundef !11
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !1034, !noundef !11
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store ptr %.val15.i, ptr %i.k, align 8, !noalias !1035, !captures !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val16.i, ptr %i.l, align 8, !noalias !1036
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %.val15.i.1 = load ptr, ptr %i.n, align 8, !noalias !1034, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val16.i.1 = load i64, ptr %i.o, align 8, !noalias !1034, !noundef !11
  %i.p = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store ptr %.val15.i.1, ptr %i.q, align 8, !noalias !1035, !captures !34
  %i.r = getelementptr i8, ptr %i.p, i64 24
  store i64 %.val16.i.1, ptr %i.r, align 8, !noalias !1036
  %i.s = add i64 %i.g, 2                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5i_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5i_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5i_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5i_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5i_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5i_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val15.i.epil = load ptr, ptr %i.v, align 8, !noalias !1034, !nonnull !11, !noundef !11
  %i.w = getelementptr i8, ptr %i.u, i64 16
  %.val16.i.epil = load i64, ptr %i.w, align 8, !noalias !1034, !noundef !11
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.epil, ptr %i.x, align 8, !noalias !1035, !captures !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.val16.i.epil, ptr %i.y, align 8, !noalias !1036
  %i.z = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5i_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5i_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5i_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_RNtNtBU_6utfstr8Utf32StruNCNvNtNtCs8frGy5WneL6_4fish9highlight11file_tester20is_potential_cd_path0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5i_3VecB36_E14extend_trustedINtB2y_3MapBF_B3v_EE0E0E0EB3D_.exit.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1034
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2g_11BuiltinBind3add0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3g_8for_each4callNtNtB1s_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4X_3VecB4j_E14extend_trustedBN_E0E0EB2k_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind3add0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5d_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3G_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !1047, !nonnull !11, !align !31, !noundef !11
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !1047, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1048
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val16.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1047

.noexc.i:                                         ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !range !26, !noalias !1048, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = load i64, ptr %i.g, align 8, !range !27, !noalias !1048, !noundef !11 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.h, align 8, !noalias !1048
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.n) #53
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1047

.noexc17.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i
  %i.o = load ptr, ptr %i.h, align 8, !noalias !1048, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = icmp ule i64 %.val16.i, %i.m
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1048
  %.not.i.i.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %.val16.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr nonnull readonly align 4 %.val15.i, i64 %i.q, i1 false), !noalias !1048
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  store i64 %i.m, ptr %i.r, align 8, !noalias !1049
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val16.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1049
  %i.s = add i64 %.val10.i, 1                     ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind3add0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5d_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3G_.exit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1047
  resume { ptr, i32 } %lpad.loopexit.split-lp24

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3C_11BuiltinBind3add0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5d_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3G_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1047
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4emit4emit0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4callNtNtB1s_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4C_3VecB3Y_E14extend_trustedBN_E0E0EB2h_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins4emit4emit0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4S_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !1060, !nonnull !11, !align !31, !noundef !11
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !1060, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1061
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val16.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1060

.noexc.i:                                         ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !range !26, !noalias !1061, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = load i64, ptr %i.g, align 8, !range !27, !noalias !1061, !noundef !11 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.h, align 8, !noalias !1061
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.n) #53
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1060

.noexc17.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i
  %i.o = load ptr, ptr %i.h, align 8, !noalias !1061, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = icmp ule i64 %.val16.i, %i.m
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1061
  %.not.i.i.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %.val16.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr nonnull readonly align 4 %.val15.i, i64 %i.q, i1 false), !noalias !1061
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  store i64 %i.m, ptr %i.r, align 8, !noalias !1062
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1062
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val16.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1062
  %i.s = add i64 %.val10.i, 1                     ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins4emit4emit0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4S_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3D_.exit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1060
  resume { ptr, i32 } %lpad.loopexit.split-lp24

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins4emit4emit0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4S_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3D_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1060
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4test4test0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4callNtNtB1s_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4C_3VecB3Y_E14extend_trustedBN_E0E0EB2h_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins4test4test0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4S_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !1073, !nonnull !11, !align !31, !noundef !11
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !1073, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1074
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val16.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1073

.noexc.i:                                         ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !range !26, !noalias !1074, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = load i64, ptr %i.g, align 8, !range !27, !noalias !1074, !noundef !11 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.h, align 8, !noalias !1074
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.n) #53
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1073

.noexc17.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i
  %i.o = load ptr, ptr %i.h, align 8, !noalias !1074, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = icmp ule i64 %.val16.i, %i.m
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1074
  %.not.i.i.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %.val16.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr nonnull readonly align 4 %.val15.i, i64 %i.q, i1 false), !noalias !1074
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  store i64 %i.m, ptr %i.r, align 8, !noalias !1075
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1075
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val16.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1075
  %i.s = add i64 %.val10.i, 1                     ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins4test4test0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4S_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3D_.exit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1073
  resume { ptr, i32 } %lpad.loopexit.split-lp24

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins4test4test0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4S_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3D_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1073
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Z_8for_each4callNtNtB1s_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4G_3VecB42_E14extend_trustedBN_E0E0EB2h_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4W_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !1086, !nonnull !11, !align !31, !noundef !11
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !1086, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1087
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val16.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1086

.noexc.i:                                         ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !range !26, !noalias !1087, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = load i64, ptr %i.g, align 8, !range !27, !noalias !1087, !noundef !11 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.h, align 8, !noalias !1087
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.n) #53
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1086

.noexc17.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i
  %i.o = load ptr, ptr %i.h, align 8, !noalias !1087, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = icmp ule i64 %.val16.i, %i.m
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1087
  %.not.i.i.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %.val16.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr nonnull readonly align 4 %.val15.i, i64 %i.q, i1 false), !noalias !1087
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  store i64 %i.m, ptr %i.r, align 8, !noalias !1088
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1088
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val16.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1088
  %i.s = add i64 %.val10.i, 1                     ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4W_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3D_.exit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1086
  resume { ptr, i32 } %lpad.loopexit.split-lp24

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtBV_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins6source6source0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4W_3VecB30_E14extend_trustedINtB2s_3MapBF_B3v_EE0E0E0EB3D_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1086
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB32_8for_each4callNtNtCs1xwejQucwHj_5alloc6string6StringNCINvMsk_NtB49_3vecINtB4Q_3VecB45_E14extend_trustedBN_E0E0EB2h_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtCs1xwejQucwHj_5alloc6string6StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss2_0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB34_3vecINtB57_3VecB30_E14extend_trustedINtB2s_3MapBF_B3D_EE0E0E0EB3L_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ae, %._crit_edge ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.af, %._crit_edge ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.m, align 8, !alias.scope !1116, !noalias !1117, !nonnull !11, !align !31, !noundef !11 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load i64, ptr %i.n, align 8, !alias.scope !1116, !noalias !1117, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1118
  store i64 0, ptr %i.d, align 8, !noalias !1118
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1118
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1118
  store i64 1610612768, ptr %i.k, align 8, !noalias !1118
  store ptr %i.d, ptr %i.c, align 8, !noalias !1118
  store ptr @767, ptr %i.l, align 8, !noalias !1118
  call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %.idx = shl nuw nsw i64 %.val16.i, 2
  %i.o = getelementptr inbounds nuw i8, ptr %.val15.i, i64 %.idx
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i36 = icmp eq i64 %.val16.i, 0
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i36, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.noexc4.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.p, %bb.d ], [ %.val15.i, %bb.c ] ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !1119, !noalias !1120, !noundef !11 ; 4 uses
  %i.s = xor i32 %i.r, 55296
  %i.t = add i32 %i.s, -1114112
  %i.u = icmp ult i32 %i.t, -1112064
  br i1 %i.u, label %.split.i.i.i.i.i.i.i.i, label %bb.e

.split.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1121
  store i32 %i.r, ptr %i.b, align 4, !noalias !1121
  br label %.invoke.i.i.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.v = icmp ult i32 %i.r, 1114112
  call void @llvm.assume(i1 %i.v)
  %i.w = invoke noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef range(i32 0, 1114112) %i.r)
          to label %.noexc4.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1118

.noexc4.i.i.i.i:                                  ; preds = %bb.e
  br i1 %i.w, label %.invoke.i.i.i.i, label %bb.d

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.invoke.i.i.i.i
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #48
          to label %bb.g unwind label %bb.f, !noalias !1118

.invoke.i.i.i.i:                                  ; preds = %.noexc4.i.i.i.i, %.split.i.i.i.i.i.i.i.i
  %i.x = phi ptr [ @46, %.split.i.i.i.i.i.i.i.i ], [ @768, %.noexc4.i.i.i.i ]
  %i.y = phi i64 [ 43, %.split.i.i.i.i.i.i.i.i ], [ 55, %.noexc4.i.i.i.i ]
  %i.z = phi ptr [ %i.b, %.split.i.i.i.i.i.i.i.i ], [ %i.a, %.noexc4.i.i.i.i ]
  %i.aa = phi ptr [ @52, %.split.i.i.i.i.i.i.i.i ], [ @55, %.noexc4.i.i.i.i ]
  %i.ab = phi ptr [ @731, %.split.i.i.i.i.i.i.i.i ], [ @770, %.noexc4.i.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.y, ptr noundef nonnull %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #54
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1118

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !1118
  unreachable

._crit_edge:                                      ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1118
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1123
  %i.ae = add i64 %.val10.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.af = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.j
  br i1 %i.ag, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtCs1xwejQucwHj_5alloc6string6StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss2_0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB34_3vecINtB57_3VecB30_E14extend_trustedINtB2s_3MapBF_B3D_EE0E0E0EB3L_.exit, label %bb.c

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1117
  resume { ptr, i32 } %lpad.loopexit.split-lp37

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtCs1xwejQucwHj_5alloc6string6StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss2_0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB34_3vecINtB57_3VecB30_E14extend_trustedINtB2s_3MapBF_B3D_EE0E0E0EB3L_.exit: ; preds = %._crit_edge, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ae, %._crit_edge ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1117
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4callINtNtCs1xwejQucwHj_5alloc6borrow3CowB1o_ENCINvMsk_NtB4n_3vecINtB56_3VecB4i_E14extend_trustedBN_E0E0EB2h_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CowBR_EuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB35_3vecINtB5m_3VecB30_E14extend_trustedINtB2s_3MapBF_B3F_EE0E0E0EB3N_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 16
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.p, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.q, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.h, align 8, !noalias !1132, !nonnull !11, !align !31, !noundef !11
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val16.i = load i64, ptr %i.i, align 8, !noalias !1132, !noundef !11
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 3 uses
  store i64 -1, ptr %i.j, align 8, !noalias !1133
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.val15.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1133
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.val16.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1133
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val15.i.1 = load ptr, ptr %i.l, align 8, !noalias !1132, !nonnull !11, !align !31, !noundef !11
  %i.m = getelementptr i8, ptr %i.k, i64 24
  %.val16.i.1 = load i64, ptr %i.m, align 8, !noalias !1132, !noundef !11
  %i.n = getelementptr [24 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 24
  store i64 -1, ptr %i.o, align 8, !noalias !1133
  %.sroa.42.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.n, i64 32
  store ptr %.val15.i.1, ptr %.sroa.42.0..sroa_idx.i.i.1, align 8, !noalias !1133
  %.sroa.53.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.n, i64 40
  store i64 %.val16.i.1, ptr %.sroa.53.0..sroa_idx.i.i.1, align 8, !noalias !1133
  %i.p = add i64 %i.g, 2                          ; 3 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CowBR_EuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB35_3vecINtB5m_3VecB30_E14extend_trustedINtB2s_3MapBF_B3F_EE0E0E0EB3N_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CowBR_EuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB35_3vecINtB5m_3VecB30_E14extend_trustedINtB2s_3MapBF_B3F_EE0E0E0EB3N_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.r = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CowBR_EuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB35_3vecINtB5m_3VecB30_E14extend_trustedINtB2s_3MapBF_B3F_EE0E0E0EB3N_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CowBR_EuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB35_3vecINtB5m_3VecB30_E14extend_trustedINtB2s_3MapBF_B3F_EE0E0E0EB3N_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CowBR_EuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB35_3vecINtB5m_3VecB30_E14extend_trustedINtB2s_3MapBF_B3F_EE0E0E0EB3N_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.q, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CowBR_EuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB35_3vecINtB5m_3VecB30_E14extend_trustedINtB2s_3MapBF_B3F_EE0E0E0EB3N_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %.val15.i.epil = load ptr, ptr %i.s, align 8, !noalias !1132, !nonnull !11, !align !31, !noundef !11
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val16.i.epil = load i64, ptr %i.t, align 8, !noalias !1132, !noundef !11
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 3 uses
  store i64 -1, ptr %i.u, align 8, !noalias !1133
  %.sroa.42.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val15.i.epil, ptr %.sroa.42.0..sroa_idx.i.i.epil, align 8, !noalias !1133
  %.sroa.53.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.val16.i.epil, ptr %.sroa.53.0..sroa_idx.i.i.epil, align 8, !noalias !1133
  %i.v = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CowBR_EuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB35_3vecINtB5m_3VecB30_E14extend_trustedINtB2s_3MapBF_B3F_EE0E0E0EB3N_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CowBR_EuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB35_3vecINtB5m_3VecB30_E14extend_trustedINtB2s_3MapBF_B3F_EE0E0E0EB3N_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CowBR_EuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB35_3vecINtB5m_3VecB30_E14extend_trustedINtB2s_3MapBF_B3F_EE0E0E0EB3N_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_INtNtCs1xwejQucwHj_5alloc6borrow3CowBR_EuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse19argparse_parse_args0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtB35_3vecINtB5m_3VecB30_E14extend_trustedINtB2s_3MapBF_B3F_EE0E0E0EB3N_.exit.loopexit.unr-lcssa ], [ %i.v, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1132
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB2j_11BuiltinBind9key_namess_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB3r_8for_each4callB1p_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4I_3VecB1p_E14extend_trustedINtNtB8_5chain5ChainBN_IBO_IBY_NtNtB1u_9utfstring11Utf32StringENCB2e_s0_0EEE0E0EB2n_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !1136
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_BS_uNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3e_11BuiltinBind9key_namess_0QNCINvNvB1F_8for_each4callBS_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4X_3VecBS_E14extend_trustedINtNtB2x_5chain5ChainINtB2v_3MapBF_B37_EIB6e_IBG_NtNtBX_9utfstring11Utf32StringENCB39_s0_0EEE0E0E0EB3i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !noalias !1136, !nonnull !11, !align !31, !noundef !11
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %.val8.i = load i64, ptr %i.i, align 8, !noalias !1136, !noundef !11
  call void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2I_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtB3J_3map3MapINtNtNtBb_5slice4iter4IterTcB1O_EENCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB56_11BuiltinBind9key_namess_0EIB4b_IB4s_NtNtB1T_9utfstring11Utf32StringENCB51_s0_0EEE0E0INtB7_5FnMutTuB1O_EE8call_mutB5a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %.val8.i)
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_BS_uNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3e_11BuiltinBind9key_namess_0QNCINvNvB1F_8for_each4callBS_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4X_3VecBS_E14extend_trustedINtNtB2x_5chain5ChainINtB2v_3MapBF_B37_EIB6e_IBG_NtNtBX_9utfstring11Utf32StringENCB39_s0_0EEE0E0E0EB3i_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_BS_uNCNvMs_NtNtCs8frGy5WneL6_4fish8builtins4bindNtB3e_11BuiltinBind9key_namess_0QNCINvNvB1F_8for_each4callBS_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4X_3VecBS_E14extend_trustedINtNtB2x_5chain5ChainINtB2v_3MapBF_B37_EIB6e_IBG_NtNtBX_9utfstring11Utf32StringENCB39_s0_0EEE0E0E0EB3i_.exit: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItercENCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB1x_6Reader23handle_readline_commands1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3E_13FlattenCompatppE9iter_fold7flattenNtNtBc_4char11ToUppercaseuNCINvNvXsi_B3E_B3R_B2P_4fold7flattenB4y_uNCINvNvB2P_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB6d_11Utf32StringINtNtB2T_7collect6ExtendcE6extendINtB3E_7FlatMapBX_B4y_B1p_EE0E0E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRcNtNtBb_4char11ToUppercaseuNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2L_6Reader23handle_readline_commands1_0NCINvNvMsg_NtB1K_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenB2d_uNCINvNvXsi_B4d_B4r_BS_4fold7flattenB2d_uNCINvNvBS_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB6q_11Utf32StringINtNtBW_7collect6ExtendcE6extendINtB4d_7FlatMapBF_B2d_B2D_EE0E0E0E0E0EB2P_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val8.i = load i32, ptr %i.j, align 4, !range !32, !noalias !1139, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1139
  call void @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11conversions8to_upper(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i32 noundef %.val8.i)
  %i.k = load i32, ptr %i.h, align 8, !range !32, !noalias !1139, !noundef !11
  %i.l = icmp eq i32 %i.k, 0
  %i.m = load i32, ptr %i.i, align 4, !range !32, !noalias !1139
  %i.n = icmp eq i32 %i.m, 0
  %spec.select.i.i.i.i = select i1 %i.n, i64 1, i64 2
  %.sroa.4.0.i.i.i.i = select i1 %i.l, i64 %spec.select.i.i.i.i, i64 3
  store i64 0, ptr %i.b, align 8, !noalias !1139
  store i64 %.sroa.4.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !1139
  call void @_RINvXsu_NtCs3oUPovFnLWP_4core4charNtB6_11ToUppercaseNtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvBO_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB29_11Utf32StringINtNtBS_7collect6ExtendcE6extendINtNtNtBU_8adapters7flatten7FlatMapINtNtNtB8_5slice4iter4ItercEBw_NCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB4M_6Reader23handle_readline_commands1_0EE0E0EB4Q_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1139
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRcNtNtBb_4char11ToUppercaseuNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2L_6Reader23handle_readline_commands1_0NCINvNvMsg_NtB1K_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenB2d_uNCINvNvXsi_B4d_B4r_BS_4fold7flattenB2d_uNCINvNvBS_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB6q_11Utf32StringINtNtBW_7collect6ExtendcE6extendINtB4d_7FlatMapBF_B2d_B2D_EE0E0E0E0E0EB2P_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRcNtNtBb_4char11ToUppercaseuNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2L_6Reader23handle_readline_commands1_0NCINvNvMsg_NtB1K_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenB2d_uNCINvNvXsi_B4d_B4r_BS_4fold7flattenB2d_uNCINvNvBS_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB6q_11Utf32StringINtNtBW_7collect6ExtendcE6extendINtB4d_7FlatMapBF_B2d_B2D_EE0E0E0E0E0EB2P_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItercENCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB1x_6Reader23handle_readline_commands2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3E_13FlattenCompatppE9iter_fold7flattenNtNtBc_4char11ToLowercaseuNCINvNvXsi_B3E_B3R_B2P_4fold7flattenB4y_uNCINvNvB2P_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB6d_11Utf32StringINtNtB2T_7collect6ExtendcE6extendINtB3E_7FlatMapBX_B4y_B1p_EE0E0E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRcNtNtBb_4char11ToLowercaseuNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2L_6Reader23handle_readline_commands2_0NCINvNvMsg_NtB1K_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenB2d_uNCINvNvXsi_B4d_B4r_BS_4fold7flattenB2d_uNCINvNvBS_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB6q_11Utf32StringINtNtBW_7collect6ExtendcE6extendINtB4d_7FlatMapBF_B2d_B2D_EE0E0E0E0E0EB2P_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val8.i = load i32, ptr %i.j, align 4, !range !32, !noalias !1142, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1142
  call void @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11conversions8to_lower(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i32 noundef %.val8.i)
  %i.k = load i32, ptr %i.h, align 8, !range !32, !noalias !1142, !noundef !11
  %i.l = icmp eq i32 %i.k, 0
  %i.m = load i32, ptr %i.i, align 4, !range !32, !noalias !1142
  %i.n = icmp eq i32 %i.m, 0
  %spec.select.i.i.i.i = select i1 %i.n, i64 1, i64 2
  %.sroa.4.0.i.i.i.i = select i1 %i.l, i64 %spec.select.i.i.i.i, i64 3
  store i64 0, ptr %i.b, align 8, !noalias !1142
  store i64 %.sroa.4.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !1142
  call void @_RINvXsO_NtCs3oUPovFnLWP_4core4charNtB6_11ToLowercaseNtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvBO_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB29_11Utf32StringINtNtBS_7collect6ExtendcE6extendINtNtNtBU_8adapters7flatten7FlatMapINtNtNtB8_5slice4iter4ItercEBw_NCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB4M_6Reader23handle_readline_commands2_0EE0E0EB4Q_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1142
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRcNtNtBb_4char11ToLowercaseuNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2L_6Reader23handle_readline_commands2_0NCINvNvMsg_NtB1K_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenB2d_uNCINvNvXsi_B4d_B4r_BS_4fold7flattenB2d_uNCINvNvBS_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB6q_11Utf32StringINtNtBW_7collect6ExtendcE6extendINtB4d_7FlatMapBF_B2d_B2D_EE0E0E0E0E0EB2P_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRcNtNtBb_4char11ToLowercaseuNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB2L_6Reader23handle_readline_commands2_0NCINvNvMsg_NtB1K_7flattenINtB4d_13FlattenCompatppE9iter_fold7flattenB2d_uNCINvNvXsi_B4d_B4r_BS_4fold7flattenB2d_uNCINvNvBS_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB6q_11Utf32StringINtNtBW_7collect6ExtendcE6extendINtB4d_7FlatMapBF_B2d_B2D_EE0E0E0E0E0EB2P_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.o, align 1, !noalias !1151, !noundef !11 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !1152, !noundef !11
  %i.q = icmp eq i8 %.val15.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !1152, !noundef !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val15.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !1153
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val15.i.1 = load i8, ptr %i.u, align 1, !noalias !1151, !noundef !11 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !1152, !noundef !11
  %i.w = icmp eq i8 %.val15.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !1152, !noundef !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val15.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !1153
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load i8, ptr %i.ac, align 1, !noalias !1151, !noundef !11 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !1152, !noundef !11
  %i.ae = icmp eq i8 %.val15.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !1152, !noundef !11
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val15.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !1153
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8frGy5WneL6_4fish.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1151
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent11fish_indent0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callNtNtB1v_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4V_3VecB4h_E14extend_trustedBN_E0E0EB2k_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldQBT_NtNtBY_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent11fish_indent0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB33_E14extend_trustedINtB2v_3MapBF_B3y_EE0E0E0EB3G_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !1164, !nonnull !11, !align !31, !noundef !11
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !1164, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1165
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val16.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1164

.noexc.i:                                         ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !range !26, !noalias !1165, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = load i64, ptr %i.g, align 8, !range !27, !noalias !1165, !noundef !11 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.h, align 8, !noalias !1165
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.n) #53
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1164

.noexc17.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i
  %i.o = load ptr, ptr %i.h, align 8, !noalias !1165, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = icmp ule i64 %.val16.i, %i.m
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1165
  %.not.i.i.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %.val16.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr nonnull readonly align 4 %.val15.i, i64 %i.q, i1 false), !noalias !1165
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  store i64 %i.m, ptr %i.r, align 8, !noalias !1166
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1166
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val16.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1166
  %i.s = add i64 %.val10.i, 1                     ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldQBT_NtNtBY_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent11fish_indent0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB33_E14extend_trustedINtB2v_3MapBF_B3y_EE0E0E0EB3G_.exit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1164
  resume { ptr, i32 } %lpad.loopexit.split-lp24

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldQBT_NtNtBY_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent11fish_indent0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB33_E14extend_trustedINtB2v_3MapBF_B3y_EE0E0E0EB3G_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1164
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callNtNtB1v_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB53_3VecB4p_E14extend_trustedBN_E0E0EB2k_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldQBT_NtNtBY_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5j_3VecB33_E14extend_trustedINtB2v_3MapBF_B3y_EE0E0E0EB3G_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !1177, !nonnull !11, !align !31, !noundef !11
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val16.i = load i64, ptr %i.j, align 8, !noalias !1177, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1178
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val16.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1177

.noexc.i:                                         ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !range !26, !noalias !1178, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = load i64, ptr %i.g, align 8, !range !27, !noalias !1178, !noundef !11 ; 3 uses
  br i1 %i.l, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.h, align 8, !noalias !1178
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.n) #53
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1177

.noexc17.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i
  %i.o = load ptr, ptr %i.h, align 8, !noalias !1178, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = icmp ule i64 %.val16.i, %i.m
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1178
  %.not.i.i.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %.val16.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr nonnull readonly align 4 %.val15.i, i64 %i.q, i1 false), !noalias !1178
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  store i64 %i.m, ptr %i.r, align 8, !noalias !1179
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1179
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val16.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1179
  %i.s = add i64 %.val10.i, 1                     ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldQBT_NtNtBY_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5j_3VecB33_E14extend_trustedINtB2v_3MapBF_B3y_EE0E0E0EB3G_.exit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1177
  resume { ptr, i32 } %lpad.loopexit.split-lp24

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldQBT_NtNtBY_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5j_3VecB33_E14extend_trustedINtB2v_3MapBF_B3y_EE0E0E0EB3G_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1177
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB10_22DedupPred2CoalescePredNtB10_7DedupEqENtB10_7NoCountENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB6y_13FlattenCompatppE9iter_fold7flattenARej2_uNCINvNvXsi_B6y_B6L_B5J_4fold7flattenINtNtNtBc_5array4iter8IntoIterB7t_KB7v_EuNCINvNvB5J_8for_each4callB7t_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9r_11Utf32StringINtNtB5N_7collect6ExtendB7t_E6extendINtB6y_7FlatMapBX_B7s_B4t_EE0E0E0E0EB4B_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB6_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB6_22DedupPred2CoalescePredNtB6_7DedupEqENtB6_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3I_8adapters3map8map_foldB1W_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4K_7flattenINtB6N_13FlattenCompatppE9iter_fold7flattenB5g_uNCINvNvXsi_B6N_B71_B3C_4fold7flattenINtNtNtB3K_5array4iter8IntoIterB5h_KB5j_EuNCINvNvB3C_8for_each4callB5h_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9G_11Utf32StringINtNtB3G_7collect6ExtendB5h_E6extendINtB6N_7FlatMapBQ_B5g_B5n_EE0E0E0E0E0EB5v_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB14_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB29_9utfstring11Utf32StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB5n_E0INtNtBc_6result6ResultB4M_zEEB2Z_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtBa_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtB1k_9utfstring11Utf32StringENCINvNtNtB28_8adapters3map12map_try_foldBX_B3G_B36_INtNtB2a_6result6ResultB36_zENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3G_E0E0B51_EB5C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB14_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB29_9utfstring11Utf32StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB5m_E0INtNtBc_6result6ResultB4L_zEEB2Z_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtBa_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtB1k_9utfstring11Utf32StringENCINvNtNtB28_8adapters3map12map_try_foldBX_B3G_B36_INtNtB2a_6result6ResultB36_zENCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_varss_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3G_E0E0B51_EB5C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCINvMs8_B1N_NtB1N_9Completer21apply_var_assignmentsNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB3k_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB3k_E0INtNtBc_6result6ResultB4V_zEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCINvNtNtB1M_8adapters3map12map_try_foldBX_B3k_B2K_INtNtB1O_6result6ResultB2K_zENCINvMs8_BZ_NtBZ_9Completer21apply_var_assignmentsB3k_E0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3k_E0E0B51_EB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtB1P_15parse_executionNtB2z_16ExecutionContext26apply_variable_assignments0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB56_E0INtNtBc_6result6ResultB4v_zEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8frGy5WneL6_4fish8complete10CompletionENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCINvNtNtB1M_8adapters3map12map_try_foldBX_B3k_B2K_INtNtB1O_6result6ResultB2K_zENCNvMNtB11_15parse_executionNtB5z_16ExecutionContext26apply_variable_assignments0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3k_E0E0B51_EB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENCINvMs8_NtB1P_8completeNtB2w_9Completer38mark_completions_duplicating_argumentsINtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_8find_map5checkRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtB5b_9utfstring11Utf32StringQNCB2p_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5R_EEB1P_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8frGy5WneL6_4fish9tokenizer3TokENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldBX_RNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StruINtNtNtB1H_3ops12control_flow11ControlFlowNtNtB3q_9utfstring11Utf32StringENCINvMs8_NtB11_8completeNtB5s_9Completer38mark_completions_duplicating_argumentsINtB8_3VecBX_EE0NCINvNvB1z_8find_map5checkB3l_B4N_QNCB5l_s_0E0E0B47_EB11_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2M_7HashSetB1L_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1L_E6extendINtB12_3VecB1L_EE0ENtNtB4s_8iterator8Iterator4folduNCINvNvB5o_8for_each4callTB1L_uENCINvXs1i_NtB2O_3mapINtB6A_7HashMapB1L_uB3z_EIB4o_B6j_E6extendBN_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldBX_TBX_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3I_7HashSetBX_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB1T_7collect6ExtendBX_E6extendINtB8_3VecBX_EE0NCINvNvB1P_8for_each4callB3s_NCINvXs1i_NtB3K_3mapINtB6K_7HashMapBX_uB4u_EIB5j_B3s_E6extendINtB2V_3MapBI_B3z_EE0E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENvMs0_NtCs8frGy5WneL6_4fish8completeNtB2J_10Completion15from_completionENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3N_8for_each4callB3d_NCINvMsk_B12_INtB12_3VecB3d_E14extend_trustedBN_E0E0EB2L_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldBX_NtNtCs8frGy5WneL6_4fish8complete10CompletionuNvMs0_B3u_B3s_15from_completionNCINvNvB1P_8for_each4callB3s_NCINvMsk_B8_INtB8_3VecB3s_E14extend_trustedINtB2V_3MapBI_B4b_EE0E0E0EB3w_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENCNvMs6_B1N_NtB1N_10BindingSet9get_namess_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1N_11BindingNameENCINvNtB12_16in_place_collect24write_in_place_with_dropB4x_E0INtNtBc_6result6ResultB3W_zEEB1R_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtBZ_11BindingNameENCINvNtNtB1P_8adapters3map12map_try_foldBX_B3n_B2N_INtNtB1R_6result6ResultB2N_zENCNvMs6_BZ_NtBZ_10BindingSet9get_namess_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3n_E0E0B4v_EB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callNtNtB1Q_9utfstring11Utf32StringNCINvMsk_B12_INtB12_3VecB4p_E14extend_trustedBN_E0E0EB2F_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldBX_NtNtB12_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads3_0NCINvNvB1J_8for_each4callB3m_NCINvMsk_B8_INtB8_3VecB3m_E14extend_trustedINtB2P_3MapBI_B3S_EE0E0E0EB40_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads4_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callNtNtB1Q_9utfstring11Utf32StringNCINvMsk_B12_INtB12_3VecB4p_E14extend_trustedBN_E0E0EB2F_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldBX_NtNtB12_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads4_0NCINvNvB1J_8for_each4callB3m_NCINvMsk_B8_INtB8_3VecB3m_E14extend_trustedINtB2P_3MapBI_B3S_EE0E0E0EB40_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callNtNtB1Q_9utfstring11Utf32StringNCINvMsk_B12_INtB12_3VecB4p_E14extend_trustedBN_E0E0EB2F_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldBX_NtNtB12_9utfstring11Utf32StringuNCNvNtNtCs8frGy5WneL6_4fish8builtins4read4reads5_0NCINvNvB1J_8for_each4callB3m_NCINvMsk_B8_INtB8_3VecB3m_E14extend_trustedINtB2P_3MapBI_B3S_EE0E0E0EB40_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2F_5SplitNtB2H_16StringSubCommand6handles_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4b_8for_each4callINtNtB14_6borrow3CowB1M_ENCINvMsk_B12_INtB12_3VecB5e_E14extend_trustedBN_E0E0EB2L_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldBX_INtNtBa_6borrow3CowBY_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB3S_5SplitNtB3U_16StringSubCommand6handles_0NCINvNvB1J_8for_each4callB3m_NCINvMsk_B8_INtB8_3VecB3m_E14extend_trustedINtB2P_3MapBI_B3K_EE0E0E0EB3Y_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENcNtINtNtB14_6borrow3CowB1M_E8Borrowed0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callB2B_NCINvMsk_B12_INtB12_3VecB4e_E14extend_trustedBN_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldBX_INtNtBa_6borrow3CowBY_EuNcNtB3m_8Borrowed0NCINvNvB1J_8for_each4callB3m_NCINvMsk_B8_INtB8_3VecB3m_E14extend_trustedINtB2P_3MapBI_B3K_EE0E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_vars0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB32_8for_each4callcNCINvXs1V_NtB13_9utfstringNtB4g_11Utf32StringINtNtB36_7collect6ExtendcE6extendINtNtB8_5chain5ChainBX_BN_EE0E0EB1Z_(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB13_8adapters3map8map_foldccuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_vars0NCINvNvBX_8for_each4callcNCINvXs1V_NtB9_9utfstringNtB4j_11Utf32StringINtNtB11_7collect6ExtendcE6extendINtNtB25_5chain5ChainB3_INtB23_3MapB3_B2A_EEE0E0E0EB2I_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldccuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_vars0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB3b_11Utf32StringINtNtB2i_7collect6ExtendcE6extendINtNtB6_5chain5ChainNtNtNtB3d_6utfstr4iter10CharsUtf32INtB4_3MapB4X_BX_EEE0E0E0B15_.exit.i, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.e, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldccuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_vars0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB3b_11Utf32StringINtNtB2i_7collect6ExtendcE6extendINtNtB6_5chain5ChainNtNtNtB3d_6utfstr4iter10CharsUtf32INtB4_3MapB4X_BX_EEE0E0E0B15_.exit.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4 ; 2 uses
  %i.f = load i32, ptr %.sroa.0.07.i, align 4, !noalias !1189, !noundef !11 ; 5 uses
  %i.g = xor i32 %i.f, 55296
  %i.h = add i32 %i.g, -1114112
  %i.i = icmp ult i32 %i.h, -1112064
  br i1 %i.i, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1190
  store i32 %i.f, ptr %i.a, align 4, !noalias !1190
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @731) #54, !noalias !1191
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.f, 1114112
  tail call void @llvm.assume(i1 %i.j)
  %i.k = tail call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish5wutil13fish_iswalnum(i32 noundef range(i32 0, 1114112) %i.f)
  %i.l = load i64, ptr %i.c, align 8, !alias.scope !1192, !noundef !11 ; 3 uses
  %i.m = load i64, ptr %2, align 8, !range !16, !alias.scope !1192, !noundef !11
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldccuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_vars0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB3b_11Utf32StringINtNtB2i_7collect6ExtendcE6extendINtNtB6_5chain5ChainNtNtNtB3d_6utfstr4iter10CharsUtf32INtB4_3MapB4X_BX_EEE0E0E0B15_.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #47
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldccuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_vars0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB3b_11Utf32StringINtNtB2i_7collect6ExtendcE6extendINtNtB6_5chain5ChainNtNtNtB3d_6utfstr4iter10CharsUtf32INtB4_3MapB4X_BX_EEE0E0E0B15_.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldccuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_vars0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB3b_11Utf32StringINtNtB2i_7collect6ExtendcE6extendINtNtB6_5chain5ChainNtNtNtB3d_6utfstr4iter10CharsUtf32INtB4_3MapB4X_BX_EEE0E0E0B15_.exit.i: ; preds = %bb.d, %bb.c
  %..i.i.i = select i1 %i.k, i32 %i.f, i32 95
  %i.o = load ptr, ptr %i.d, align 8, !alias.scope !1192, !nonnull !11, !noundef !11
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  store i32 %..i.i.i, ptr %i.p, align 4
  %i.q = add i64 %i.l, 1
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !1192
  %i.r = icmp eq ptr %i.e, %1
  br i1 %i.r, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB13_8adapters3map8map_foldccuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_vars0NCINvNvBX_8for_each4callcNCINvXs1V_NtB9_9utfstringNtB4j_11Utf32StringINtNtB11_7collect6ExtendcE6extendINtNtB25_5chain5ChainB3_INtB23_3MapB3_B2A_EEE0E0E0EB2I_.exit, label %bb.b

_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB13_8adapters3map8map_foldccuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_vars0NCINvNvBX_8for_each4callcNCINvXs1V_NtB9_9utfstringNtB4j_11Utf32StringINtNtB11_7collect6ExtendcE6extendINtNtB25_5chain5ChainB3_INtB23_3MapB3_B2A_EEE0E0E0EB2I_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldccuNCNvNtNtCs8frGy5WneL6_4fish8builtins8argparse24set_argparse_result_vars0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB3b_11Utf32StringINtNtB2i_7collect6ExtendcE6extendINtNtB6_5chain5ChainNtNtNtB3d_6utfstr4iter10CharsUtf32INtB4_3MapB4X_BX_EEE0E0E0B15_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2F_5SplitNtB2H_16StringSubCommand6handle0ENtNtNtBa_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtB4d_8iterator8Iterator8for_each4callINtNtB14_6borrow3CowB1M_ENCINvMsk_B12_INtB12_3VecB5Q_E14extend_trustedINtNtB8_3rev3RevBN_EE0E0EB2L_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !1213, !nonnull !11, !noundef !11 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !1213, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1J_8adapters3map8map_foldBR_INtNtBa_6borrow3CowBS_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB44_5SplitNtB46_16StringSubCommand6handle0NCINvNvNtNtB1H_8iterator8Iterator8for_each4callB3y_NCINvMsk_B8_INtB8_3VecB3y_E14extend_trustedINtNtB33_3rev3RevINtB31_3MapB3_B3W_EEE0E0E0EB4a_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

.body.i:                                          ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1214
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i unwind label %bb.e, !noalias !1215

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtNtCs1xwejQucwHj_5alloc6borrow3CowBV_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2s_5SplitNtB2u_16StringSubCommand6handle0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtB1K_3vecINtB51_3VecB1F_E14extend_trustedINtNtB6_3rev3RevINtB4_3MapINtNtB51_9into_iter8IntoIterBU_EB2k_EEE0E0E0B2y_.exit.i, %.lr.ph.i
  %.val7.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.r, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtNtCs1xwejQucwHj_5alloc6borrow3CowBV_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2s_5SplitNtB2u_16StringSubCommand6handle0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtB1K_3vecINtB51_3VecB1F_E14extend_trustedINtNtB6_3rev3RevINtB4_3MapINtNtB51_9into_iter8IntoIterBU_EB2k_EEE0E0E0B2y_.exit.i ] ; 3 uses
  %i.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.j, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtNtCs1xwejQucwHj_5alloc6borrow3CowBV_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2s_5SplitNtB2u_16StringSubCommand6handle0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtB1K_3vecINtB51_3VecB1F_E14extend_trustedINtNtB6_3rev3RevINtB4_3MapINtNtB51_9into_iter8IntoIterBU_EB2k_EEE0E0E0B2y_.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1217, !nonnull !11, !align !31, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !noalias !1217, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1218
  store i64 0, ptr %i.a, align 8, !noalias !1218
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1218
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1218
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.m)
          to label %.noexc.i.i.i.i unwind label %bb.c, !noalias !1218

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  invoke void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1R_8for_each4callcNCINvXs1V_NtB12_9utfstringNtB35_11Utf32StringINtNtB1V_7collect6ExtendcE6extendBM_E0E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %i.k, ptr noundef nonnull readonly %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtNtCs1xwejQucwHj_5alloc6borrow3CowBV_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2s_5SplitNtB2u_16StringSubCommand6handle0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtB1K_3vecINtB51_3VecB1F_E14extend_trustedINtNtB6_3rev3RevINtB4_3MapINtNtB51_9into_iter8IntoIterBU_EB2k_EEE0E0E0B2y_.exit.i unwind label %bb.c, !noalias !1219

bb.c:                                             ; preds = %.noexc.i.i.i.i, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.d, align 8, !alias.scope !1220
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #48
          to label %.body.i unwind label %bb.d, !noalias !1219

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !1219
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtNtCs1xwejQucwHj_5alloc6borrow3CowBV_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2s_5SplitNtB2u_16StringSubCommand6handle0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtB1K_3vecINtB51_3VecB1F_E14extend_trustedINtNtB6_3rev3RevINtB4_3MapINtNtB51_9into_iter8IntoIterBU_EB2k_EEE0E0E0B2y_.exit.i: ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1218
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.val7.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1222
  %i.r = add i64 %.val7.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = icmp eq ptr %i.g, %i.j
  br i1 %i.s, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1J_8adapters3map8map_foldBR_INtNtBa_6borrow3CowBS_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB44_5SplitNtB46_16StringSubCommand6handle0NCINvNvNtNtB1H_8iterator8Iterator8for_each4callB3y_NCINvMsk_B8_INtB8_3VecB3y_E14extend_trustedINtNtB33_3rev3RevINtB31_3MapB3_B3W_EEE0E0E0EB4a_.exit.loopexit, label %bb.b

bb.e:                                             ; preds = %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !1215
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.o

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1J_8adapters3map8map_foldBR_INtNtBa_6borrow3CowBS_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB44_5SplitNtB46_16StringSubCommand6handle0NCINvNvNtNtB1H_8iterator8Iterator8for_each4callB3y_NCINvMsk_B8_INtB8_3VecB3y_E14extend_trustedINtNtB33_3rev3RevINtB31_3MapB3_B3W_EEE0E0E0EB4a_.exit.loopexit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtNtCs1xwejQucwHj_5alloc6borrow3CowBV_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB2s_5SplitNtB2u_16StringSubCommand6handle0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtB1K_3vecINtB51_3VecB1F_E14extend_trustedINtNtB6_3rev3RevINtB4_3MapINtNtB51_9into_iter8IntoIterBU_EB2k_EEE0E0E0B2y_.exit.i
  store ptr %i.j, ptr %i.d, align 8, !alias.scope !1220
  br label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1J_8adapters3map8map_foldBR_INtNtBa_6borrow3CowBS_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB44_5SplitNtB46_16StringSubCommand6handle0NCINvNvNtNtB1H_8iterator8Iterator8for_each4callB3y_NCINvMsk_B8_INtB8_3VecB3y_E14extend_trustedINtNtB33_3rev3RevINtB31_3MapB3_B3W_EEE0E0E0EB4a_.exit

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1J_8adapters3map8map_foldBR_INtNtBa_6borrow3CowBS_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB44_5SplitNtB46_16StringSubCommand6handle0NCINvNvNtNtB1H_8iterator8Iterator8for_each4callB3y_NCINvMsk_B8_INtB8_3VecB3y_E14extend_trustedINtNtB33_3rev3RevINtB31_3MapB3_B3W_EEE0E0E0EB4a_.exit: ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1J_8adapters3map8map_foldBR_INtNtBa_6borrow3CowBS_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB44_5SplitNtB46_16StringSubCommand6handle0NCINvNvNtNtB1H_8iterator8Iterator8for_each4callB3y_NCINvMsk_B8_INtB8_3VecB3y_E14extend_trustedINtNtB33_3rev3RevINtB31_3MapB3_B3W_EEE0E0E0EB4a_.exit.loopexit, %bb.a
  %.val9.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1J_8adapters3map8map_foldBR_INtNtBa_6borrow3CowBS_EuNCNvXs2_NtNtNtCs8frGy5WneL6_4fish8builtins6string5splitNtB44_5SplitNtB46_16StringSubCommand6handle0NCINvNvNtNtB1H_8iterator8Iterator8for_each4callB3y_NCINvMsk_B8_INtB8_3VecB3y_E14extend_trustedINtNtB33_3rev3RevINtB31_3MapB3_B3W_EEE0E0E0EB4a_.exit.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val9.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1214
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs_Cse7JGOylGlDZ_3nixNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB5_7NixPath13with_nix_pathlNCINvMs_NtNtB5_3sys7inotifyNtB1D_7Inotify9add_watchBn_E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i32, i32 } @_RINvXs1_Cse7JGOylGlDZ_3nixShNtB6_7NixPath13with_nix_pathlNCINvMs_NtNtB6_3sys7inotifyNtB11_7Inotify9add_watchNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %3)
  ret { i32, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs_Cse7JGOylGlDZ_3nixNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB5_7NixPath13with_nix_pathlNCINvNtB5_6unistd6accessBn_E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i32, i32 } @_RINvXs1_Cse7JGOylGlDZ_3nixShNtB6_7NixPath13with_nix_pathlNCINvNtB6_6unistd6accessNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %2)
  ret { i32, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2o_9TakeWhileppEB1v_8try_fold5checkcjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEs_0NCINvMB3n_B3k_10wrap_mut_2jcNCNvYIB2G_INtNtB7_8peekable8PeekableBP_EB43_EB1v_5count0E0E0INtNtB3p_12control_flow11ControlFlowB3k_jEEB4c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1232, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !1232 ; 3 uses
  %i.c = icmp eq ptr %.promoted.i, %i.b
  br i1 %i.c, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4ItercENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBR_8adapters6copied13copy_try_foldcjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2o_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB1H_10take_whileINtB3P_9TakeWhileppEBL_8try_fold5checkcjB2Y_NCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEs_0NCINvMB31_B2Y_10wrap_mut_2jcNCNvYIB48_INtNtB1H_8peekable8PeekableINtB1F_6CopiedB3_EEB4P_EBL_5count0E0E0E0B2j_EB4Y_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %2, align 8, !alias.scope !1230 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldcjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkcjB1K_NCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEs_0NCINvMB1N_B1K_10wrap_mut_2jcNCNvYIB2T_INtNtB6_8peekable8PeekableINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEEEB45_EB3c_5count0E0E0E0B4e_.exit.i, %.lr.ph.i
  %.sroa.01.020.i = phi i64 [ %1, %.lr.ph.i ], [ %i.k, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldcjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkcjB1K_NCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEs_0NCINvMB1N_B1K_10wrap_mut_2jcNCNvYIB2T_INtNtB6_8peekable8PeekableINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEEEB45_EB3c_5count0E0E0E0B4e_.exit.i ] ; 3 uses
  %i.d = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.e, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldcjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkcjB1K_NCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEs_0NCINvMB1N_B1K_10wrap_mut_2jcNCNvYIB2T_INtNtB6_8peekable8PeekableINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEEEB45_EB3c_5count0E0E0E0B4e_.exit.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  %.val10.i = load i32, ptr %i.d, align 4, !range !32, !noalias !1233, !noundef !11
  %i.f = icmp eq i32 %.val10.i, 95
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.g = load i64, ptr %.val.i.i.i, align 8, !noalias !1233, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %.val.i.i.i, align 8, !noalias !1233
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = icmp eq i64 %.sroa.01.020.i, -1
  br i1 %i.i, label %bb.f, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldcjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkcjB1K_NCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEs_0NCINvMB1N_B1K_10wrap_mut_2jcNCNvYIB2T_INtNtB6_8peekable8PeekableINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEEEB45_EB3c_5count0E0E0E0B4e_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.j = mul i64 %1, -4
  %scevgep.i = getelementptr i8, ptr %.promoted.i, i64 %i.j
  store ptr %scevgep.i, ptr %0, align 8, !alias.scope !1232
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #54, !noalias !1233
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldcjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkcjB1K_NCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEs_0NCINvMB1N_B1K_10wrap_mut_2jcNCNvYIB2T_INtNtB6_8peekable8PeekableINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEEEB45_EB3c_5count0E0E0E0B4e_.exit.i: ; preds = %bb.e
  %i.k = add nuw i64 %.sroa.01.020.i, 1           ; 2 uses
  %i.l = icmp eq ptr %i.e, %i.b
  br i1 %i.l, label %..loopexit_crit_edge.i, label %bb.b

bb.g:                                             ; preds = %bb.c
  store ptr %i.e, ptr %0, align 8, !alias.scope !1232
  store i8 1, ptr %3, align 1, !alias.scope !1231
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4ItercENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBR_8adapters6copied13copy_try_foldcjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2o_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB1H_10take_whileINtB3P_9TakeWhileppEBL_8try_fold5checkcjB2Y_NCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEs_0NCINvMB31_B2Y_10wrap_mut_2jcNCNvYIB48_INtNtB1H_8peekable8PeekableINtB1F_6CopiedB3_EEB4P_EBL_5count0E0E0E0B2j_EB4Y_.exit

..loopexit_crit_edge.i:                           ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldcjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkcjB1K_NCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEs_0NCINvMB1N_B1K_10wrap_mut_2jcNCNvYIB2T_INtNtB6_8peekable8PeekableINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEEEB45_EB3c_5count0E0E0E0B4e_.exit.i
  store ptr %i.e, ptr %0, align 8, !alias.scope !1232
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4ItercENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBR_8adapters6copied13copy_try_foldcjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2o_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB1H_10take_whileINtB3P_9TakeWhileppEBL_8try_fold5checkcjB2Y_NCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEs_0NCINvMB31_B2Y_10wrap_mut_2jcNCNvYIB48_INtNtB1H_8peekable8PeekableINtB1F_6CopiedB3_EEB4P_EBL_5count0E0E0E0B2j_EB4Y_.exit

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4ItercENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBR_8adapters6copied13copy_try_foldcjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2o_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB1H_10take_whileINtB3P_9TakeWhileppEBL_8try_fold5checkcjB2Y_NCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScEs_0NCINvMB31_B2Y_10wrap_mut_2jcNCNvYIB48_INtNtB1H_8peekable8PeekableINtB1F_6CopiedB3_EEB4P_EBL_5count0E0E0E0B2j_EB4Y_.exit: ; preds = %bb.a, %bb.g, %..loopexit_crit_edge.i
  %.sroa.01.019.i = phi i64 [ %.sroa.01.020.i, %bb.g ], [ %i.k, %..loopexit_crit_edge.i ], [ %1, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.g ], [ 0, %..loopexit_crit_edge.i ], [ 0, %bb.a ]
  %i.m = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.n = insertvalue { i64, i64 } %i.m, i64 %.sroa.01.019.i, 1
  ret { i64, i64 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i32 -1, 1114112) i32 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkcQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0E0INtNtNtBb_3ops12control_flow11ControlFlowcEEB2K_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !1244
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1245, !nonnull !11, !noundef !11
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !1245
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = phi ptr [ %i.g, %bb.c ], [ %.promoted.i, %bb.a ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4ItercENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldcuINtNtNtBa_3ops12control_flow11ControlFlowcENCINvNvBL_4find5checkcQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0E0E0B2j_EB3w_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !1245
  %.val.i = load i32, ptr %i.e, align 4, !range !32, !noalias !1243, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1246
  store i32 %.val.i, ptr %i.a, align 4, !noalias !1247
  %i.h = call noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0INtB7_5FnMutTRcEE8call_mutBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !1243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1246
  br i1 %i.h, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4ItercENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldcuINtNtNtBa_3ops12control_flow11ControlFlowcENCINvNvBL_4find5checkcQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0E0E0B2j_EB3w_.exit, label %bb.b

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4ItercENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldcuINtNtNtBa_3ops12control_flow11ControlFlowcENCINvNvBL_4find5checkcQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0E0E0B2j_EB3w_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ -1, %bb.b ], [ %.val.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtNtBb_3num7nonzero7NonZerojENCNvXs_NvB1v_10advance_byINtNtB7_10skip_while9SkipWhileBP_NCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00ENtB2P_13SpecAdvanceBy15spec_advance_by0INtNtBb_6option6OptionB2c_EEB3M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1254, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !1254 ; 4 uses
  %.promoted.i2 = ptrtoaddr ptr %.promoted.i to i64
  %i.d = sub i64 %i.c, %.promoted.i2
  %i.e = add i64 %1, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e) ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %i.g = add nuw i64 %i.f, 1                      ; 2 uses
  %i.h = and i64 %i.g, 3                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 4, i64 %i.h
  %n.vec = sub i64 %i.g, %i.j                     ; 3 uses
  %i.k = getelementptr i8, ptr %.promoted.i, i64 %n.vec
  %i.l = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1252

middle.block:                                     ; preds = %vector.body
  %i.n = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.n, ptr %0, align 8, !alias.scope !1254
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.ph = phi ptr [ %.promoted.i, %bb.a ], [ %i.k, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ %1, %bb.a ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.o = phi ptr [ %i.q, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.r, %bb.b ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtBR_8adapters6copied13copy_try_foldhB1z_INtNtBa_6option6OptionB1z_ENCNvXs_NvBL_10advance_byINtNtB2c_10skip_while9SkipWhileINtB2a_6CopiedB3_ENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00ENtB3p_13SpecAdvanceBy15spec_advance_by0E0B2R_EB4B_.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !alias.scope !1254
  %i.r = add i64 %.sroa.01.0.i, -1                ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtBR_8adapters6copied13copy_try_foldhB1z_INtNtBa_6option6OptionB1z_ENCNvXs_NvBL_10advance_byINtNtB2c_10skip_while9SkipWhileINtB2a_6CopiedB3_ENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00ENtB3p_13SpecAdvanceBy15spec_advance_by0E0B2R_EB4B_.exit, label %scalar.ph, !llvm.loop !1253

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtBR_8adapters6copied13copy_try_foldhB1z_INtNtBa_6option6OptionB1z_ENCNvXs_NvBL_10advance_byINtNtB2c_10skip_while9SkipWhileINtB2a_6CopiedB3_ENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00ENtB3p_13SpecAdvanceBy15spec_advance_by0E0B2R_EB4B_.exit: ; preds = %scalar.ph, %bb.b
  %.sroa.0.0.i = phi i64 [ %.sroa.01.0.i, %scalar.ph ], [ 0, %bb.b ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i1, i8 } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkhNCINvNvXs0_NtB7_10skip_whileINtB2L_9SkipWhileppEB1v_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0INtNtNtBb_3ops12control_flow11ControlFlowhEEB3K_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef captures(none) dereferenceable(1) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1262, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !1262 ; 4 uses
  %i.c = load i8, ptr %1, align 1, !range !13, !alias.scope !1261
  %.fr17.i = freeze i8 %i.c
  %i.d = trunc i8 %.fr17.i to i1
  %.not18.i = icmp eq ptr %.promoted.i, %i.b      ; 2 uses
  br i1 %i.d, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.us.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i.preheader

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i.preheader: ; preds = %bb.a
  br i1 %.not18.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhNCINvNvXs0_NtB1H_10skip_whileINtB3x_9SkipWhileppEBL_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B2j_EB4w_.exit, label %.lr.ph

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.us.i: ; preds = %bb.a
  br i1 %.not18.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhNCINvNvXs0_NtB1H_10skip_whileINtB3x_9SkipWhileppEBL_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B2j_EB4w_.exit, label %.split14.us.i

.split14.us.i:                                    ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.us.i
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 1
  store ptr %i.e, ptr %0, align 8, !alias.scope !1262
  %.val6.us.i = load i8, ptr %.promoted.i, align 1, !noalias !1263, !noundef !11
  br label %.split14.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i: ; preds = %.lr.ph
  %.not.i = icmp eq ptr %i.g, %i.b
  br i1 %.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhNCINvNvXs0_NtB1H_10skip_whileINtB3x_9SkipWhileppEBL_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B2j_EB4w_.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i.preheader, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i
  %i.f = phi ptr [ %i.g, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i ], [ %.promoted.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i.preheader ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 4 uses
  %.val6.i = load i8, ptr %i.f, align 1, !noalias !1263, !noundef !11
  %i.h = icmp eq i8 %.val6.i, 45
  br i1 %i.h, label %.split14.i.loopexit, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i

.split14.i.loopexit:                              ; preds = %.lr.ph
  store ptr %i.g, ptr %0, align 8, !alias.scope !1262
  br label %.split14.i

.split14.i:                                       ; preds = %.split14.i.loopexit, %.split14.us.i
  %.us-phi15.i = phi i8 [ %.val6.us.i, %.split14.us.i ], [ 45, %.split14.i.loopexit ]
  store i8 1, ptr %1, align 1, !alias.scope !1261
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhNCINvNvXs0_NtB1H_10skip_whileINtB3x_9SkipWhileppEBL_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B2j_EB4w_.exit

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhNCINvNvXs0_NtB1H_10skip_whileINtB3x_9SkipWhileppEBL_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B2j_EB4w_.exit.loopexit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i
  store ptr %i.g, ptr %0, align 8, !alias.scope !1262
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhNCINvNvXs0_NtB1H_10skip_whileINtB3x_9SkipWhileppEBL_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B2j_EB4w_.exit

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhNCINvNvXs0_NtB1H_10skip_whileINtB3x_9SkipWhileppEBL_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B2j_EB4w_.exit: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhNCINvNvXs0_NtB1H_10skip_whileINtB3x_9SkipWhileppEBL_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B2j_EB4w_.exit.loopexit, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i.preheader, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.us.i, %.split14.i
  %i.i = phi i1 [ true, %.split14.i ], [ false, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.us.i ], [ false, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i.preheader ], [ false, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhNCINvNvXs0_NtB1H_10skip_whileINtB3x_9SkipWhileppEBL_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B2j_EB4w_.exit.loopexit ]
  %.sroa.3.0.i = phi i8 [ %.us-phi15.i, %.split14.i ], [ undef, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.us.i ], [ undef, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkhNCINvNvXs0_NtB6_10skip_whileINtB2O_9SkipWhileppEB1T_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B3N_.exit.i.preheader ], [ undef, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhNCINvNvXs0_NtB1H_10skip_whileINtB3x_9SkipWhileppEBL_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0E0B2j_EB4w_.exit.loopexit ]
  %i.j = insertvalue { i1, i8 } poison, i1 %i.i, 0
  %i.k = insertvalue { i1, i8 } %i.j, i8 %.sroa.3.0.i, 1
  ret { i1, i8 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator5eq_byINtNtB8_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvYB3_B2d_2eqB2R_E0ECs8frGy5WneL6_4fish(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !alias.scope !1297 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1297 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1297 ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %0 to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = add i64 %.sroa.5.0.copyload, %i.d
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB2f_12iter_compare7compareINtNtB8_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB2d_5eq_by7compareccNCINvYB3_B2d_2eqB3w_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB5D_uNtNtBc_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i, label %.lr.ph

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowIB16_uNtNtBa_3cmp8OrderingEENCINvNtB6_3map12map_try_foldhcuB15_NvYcINtNtBa_7convert4FromhE4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB15_NCINvNvB3q_12iter_compare7compareINtNtB6_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB3o_5eq_by7compareccNCINvYINtB2h_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB2L_EB3o_2eqB4R_E0E0E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.h = icmp eq ptr %i.l, %1
  br i1 %i.h, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB2f_12iter_compare7compareINtNtB8_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB2d_5eq_by7compareccNCINvYB3_B2d_2eqB3w_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB5D_uNtNtBc_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowIB16_uNtNtBa_3cmp8OrderingEENCINvNtB6_3map12map_try_foldhcuB15_NvYcINtNtBa_7convert4FromhE4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB15_NCINvNvB3q_12iter_compare7compareINtNtB6_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB3o_5eq_by7compareccNCINvYINtB2h_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB2L_EB3o_2eqB4R_E0E0E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i
  %i.i = phi ptr [ %i.l, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowIB16_uNtNtBa_3cmp8OrderingEENCINvNtB6_3map12map_try_foldhcuB15_NvYcINtNtBa_7convert4FromhE4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB15_NCINvNvB3q_12iter_compare7compareINtNtB6_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB3o_5eq_by7compareccNCINvYINtB2h_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB2L_EB3o_2eqB4R_E0E0E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i ], [ %0, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.g, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowIB16_uNtNtBa_3cmp8OrderingEENCINvNtB6_3map12map_try_foldhcuB15_NvYcINtNtBa_7convert4FromhE4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB15_NCINvNvB3q_12iter_compare7compareINtNtB6_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB3o_5eq_by7compareccNCINvYINtB2h_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB2L_EB3o_2eqB4R_E0E0E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload, %bb.a ] ; 3 uses
  %i.k = phi i64 [ %i.o, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowIB16_uNtNtBa_3cmp8OrderingEENCINvNtB6_3map12map_try_foldhcuB15_NvYcINtNtBa_7convert4FromhE4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB15_NCINvNvB3q_12iter_compare7compareINtNtB6_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB3o_5eq_by7compareccNCINvYINtB2h_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB2L_EB3o_2eqB4R_E0E0E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %.val7.i.i.i.i.i.i.i = load i8, ptr %i.i, align 1, !noalias !1298, !noundef !11
  %i.m = zext i8 %.val7.i.i.i.i.i.i.i to i32
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtBS_6copied6CopiedINtNtNtB9_5slice4iter4IterhEENvYcINtNtB9_7convert4FromhE4fromEINtB3_10SpecIterEqINtNtBS_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4r_2eqB2S_E0E0ECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = add i64 %i.k, -1
  %i.p = icmp eq ptr %i.j, %.sroa.4.0.copyload
  br i1 %i.p, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtBS_6copied6CopiedINtNtNtB9_5slice4iter4IterhEENvYcINtNtB9_7convert4FromhE4fromEINtB3_10SpecIterEqINtNtBS_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4r_2eqB2S_E0E0ECs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.j, align 4, !noalias !1299, !noundef !11 ; 4 uses
  %i.r = xor i32 %i.q, 55296
  %i.s = add i32 %i.r, -1114112
  %i.t = icmp ult i32 %i.s, -1112064
  br i1 %i.t, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d

.split.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1300
  store i32 %i.q, ptr %i.b, align 4, !noalias !1300
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @731) #54, !noalias !1299
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult i32 %i.q, 1114112
  tail call void @llvm.assume(i1 %i.u)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.q, %i.m
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowIB16_uNtNtBa_3cmp8OrderingEENCINvNtB6_3map12map_try_foldhcuB15_NvYcINtNtBa_7convert4FromhE4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB15_NCINvNvB3q_12iter_compare7compareINtNtB6_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB3o_5eq_by7compareccNCINvYINtB2h_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB2L_EB3o_2eqB4R_E0E0E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtBS_6copied6CopiedINtNtNtB9_5slice4iter4IterhEENvYcINtNtB9_7convert4FromhE4fromEINtB3_10SpecIterEqINtNtBS_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4r_2eqB2S_E0E0ECs8frGy5WneL6_4fish.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB2f_12iter_compare7compareINtNtB8_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB2d_5eq_by7compareccNCINvYB3_B2d_2eqB3w_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB5D_uNtNtBc_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowIB16_uNtNtBa_3cmp8OrderingEENCINvNtB6_3map12map_try_foldhcuB15_NvYcINtNtBa_7convert4FromhE4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB15_NCINvNvB3q_12iter_compare7compareINtNtB6_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB3o_5eq_by7compareccNCINvYINtB2h_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB2L_EB3o_2eqB4R_E0E0E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i, %bb.a
  %.lcssa13 = phi ptr [ %.sroa.0.0.copyload, %bb.a ], [ %i.g, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowIB16_uNtNtBa_3cmp8OrderingEENCINvNtB6_3map12map_try_foldhcuB15_NvYcINtNtBa_7convert4FromhE4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB15_NCINvNvB3q_12iter_compare7compareINtNtB6_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB3o_5eq_by7compareccNCINvYINtB2h_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB2L_EB3o_2eqB4R_E0E0E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.v = icmp eq i64 %i.e, %i.c
  %i.w = icmp eq ptr %.lcssa13, %.sroa.4.0.copyload
  %or.cond.i.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtBS_6copied6CopiedINtNtNtB9_5slice4iter4IterhEENvYcINtNtB9_7convert4FromhE4fromEINtB3_10SpecIterEqINtNtBS_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4r_2eqB2S_E0E0ECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB2f_12iter_compare7compareINtNtB8_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB2d_5eq_by7compareccNCINvYB3_B2d_2eqB3w_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB5D_uNtNtBc_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.x = load i32, ptr %.lcssa13, align 4, !noalias !1301, !noundef !11 ; 3 uses
  %i.y = xor i32 %i.x, 55296
  %i.z = add i32 %i.y, -1114112
  %i.aa = icmp ult i32 %i.z, -1112064
  br i1 %i.aa, label %.split.i.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1302
  store i32 %i.x, ptr %i.a, align 4, !noalias !1302
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @731) #54, !noalias !1301
  unreachable

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.e
  %i.ab = icmp ult i32 %i.x, 1114112
  tail call void @llvm.assume(i1 %i.ab)
  br label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtBS_6copied6CopiedINtNtNtB9_5slice4iter4IterhEENvYcINtNtB9_7convert4FromhE4fromEINtB3_10SpecIterEqINtNtBS_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4r_2eqB2S_E0E0ECs8frGy5WneL6_4fish.exit

_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtBS_6copied6CopiedINtNtNtB9_5slice4iter4IterhEENvYcINtNtB9_7convert4FromhE4fromEINtB3_10SpecIterEqINtNtBS_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4r_2eqB2S_E0E0ECs8frGy5WneL6_4fish.exit: ; preds = %.lr.ph, %bb.b, %bb.d, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB2f_12iter_compare7compareINtNtB8_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB2d_5eq_by7compareccNCINvYB3_B2d_2eqB3w_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB5D_uNtNtBc_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i
  %i.ac = phi i1 [ true, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB2f_12iter_compare7compareINtNtB8_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EcuNCINvNvB2d_5eq_by7compareccNCINvYB3_B2d_2eqB3w_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB5D_uNtNtBc_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i ], [ false, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i ], [ false, %bb.d ], [ false, %bb.b ], [ false, %.lr.ph ]
  ret i1 %i.ac
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1n_8builtins15fish_key_reader11should_exits0_0ENtNtNtBa_6traits8iterator8Iterator5eq_byNtNtNtBc_3str4iter5CharsNCINvYB3_B2W_2eqB3A_E0EB1n_(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull readonly captures(address) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventcuINtNtNtBa_3ops12control_flow11ControlFlowIB1N_uNtNtBa_3cmp8OrderingEENCNvNtNtB16_8builtins15fish_key_reader11should_exits0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB1M_NCINvNvB3V_12iter_compare7compareNtNtNtBa_3str4iter5CharscuNCINvNvB3T_5eq_by7compareccNCINvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EB3T_2eqB5m_E0E0E0E0E0B16_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventcuINtNtNtBa_3ops12control_flow11ControlFlowIB1N_uNtNtBa_3cmp8OrderingEENCNvNtNtB16_8builtins15fish_key_reader11should_exits0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB1M_NCINvNvB3V_12iter_compare7compareNtNtNtBa_3str4iter5CharscuNCINvNvB3T_5eq_by7compareccNCINvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EB3T_2eqB5m_E0E0E0E0E0B16_.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.a
  %.sroa.05.0.i.i.i = phi ptr [ %2, %bb.a ], [ %.sroa.05.1.i.i.i, %bb.e ] ; 11 uses
  %i.a = phi ptr [ %0, %bb.a ], [ %i.c, %bb.e ]   ; 3 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1n_8builtins15fish_key_reader11should_exits0_0ENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB2Y_12iter_compare7compareNtNtNtBc_3str4iter5CharscuNCINvNvB2W_5eq_by7compareccNCINvYB3_B2W_2eqB4f_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB5x_uNtNtBc_3cmp8OrderingEEEB1n_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventcuINtNtNtBa_3ops12control_flow11ControlFlowIB1N_uNtNtBa_3cmp8OrderingEENCNvNtNtB16_8builtins15fish_key_reader11should_exits0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB1M_NCINvNvB3V_12iter_compare7compareNtNtNtBa_3str4iter5CharscuNCINvNvB3T_5eq_by7compareccNCINvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EB3T_2eqB5m_E0E0E0E0E0B16_.exit.i.i.i.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.val7.i.i.i.i.i.i = load i32, ptr %i.a, align 4, !range !32, !noalias !1320, !noundef !11
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.05.0.i.i.i, %3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1K_8builtins15fish_key_reader11should_exits0_0EINtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4l_2eqB3B_E0E0EB1K_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 1 ; 3 uses
  %i.e = load i8, ptr %.sroa.05.0.i.i.i, align 1, !noalias !1321, !noundef !11 ; 5 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.d, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.g = and i8 %i.e, 31
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %i.i = icmp ne ptr %i.d, %3
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 2 ; 3 uses
  %i.k = load i8, ptr %i.d, align 1, !noalias !1321, !noundef !11
  %i.l = shl nuw nsw i32 %i.h, 6
  %i.m = and i8 %i.k, 63
  %i.n = zext nneg i8 %i.m to i32                 ; 2 uses
  %i.o = or disjoint i32 %i.l, %i.n
  %i.p = icmp samesign ugt i8 %i.e, -33
  br i1 %i.p, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i8 %i.e to i32
  br label %bb.e

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i.i.i
  %i.r = icmp ne ptr %i.j, %3
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 3 ; 3 uses
  %i.t = load i8, ptr %i.j, align 1, !noalias !1321, !noundef !11
  %i.u = shl nuw nsw i32 %i.n, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = shl nuw nsw i32 %i.h, 12
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = icmp samesign ugt i8 %i.e, -17
  br i1 %i.aa, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i.i.i.i, label %bb.e

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i.i.i.i
  %i.ab = icmp ne ptr %i.s, %3
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 4
  %i.ad = load i8, ptr %i.s, align 1, !noalias !1321, !noundef !11
  %i.ae = shl nuw nsw i32 %i.h, 18
  %i.af = and i32 %i.ae, 1835008
  %i.ag = shl nuw nsw i32 %i.x, 6
  %i.ah = and i8 %i.ad, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.af
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.1.i.i.i = phi ptr [ %i.d, %bb.d ], [ %i.ac, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i.i.i ]
  %spec.select.i.ph.i.i.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.d ], [ %i.ak, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val7.i.i.i.i.i.i, %spec.select.i.ph.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventcuINtNtNtBa_3ops12control_flow11ControlFlowIB1N_uNtNtBa_3cmp8OrderingEENCNvNtNtB16_8builtins15fish_key_reader11should_exits0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB1M_NCINvNvB3V_12iter_compare7compareNtNtNtBa_3str4iter5CharscuNCINvNvB3T_5eq_by7compareccNCINvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EB3T_2eqB5m_E0E0E0E0E0B16_.exit.i.i.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1K_8builtins15fish_key_reader11should_exits0_0EINtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4l_2eqB3B_E0E0EB1K_.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1n_8builtins15fish_key_reader11should_exits0_0ENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB2Y_12iter_compare7compareNtNtNtBc_3str4iter5CharscuNCINvNvB2W_5eq_by7compareccNCINvYB3_B2W_2eqB4f_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB5x_uNtNtBc_3cmp8OrderingEEEB1n_.exit.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventcuINtNtNtBa_3ops12control_flow11ControlFlowIB1N_uNtNtBa_3cmp8OrderingEENCNvNtNtB16_8builtins15fish_key_reader11should_exits0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB1M_NCINvNvB3V_12iter_compare7compareNtNtNtBa_3str4iter5CharscuNCINvNvB3T_5eq_by7compareccNCINvYINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB2T_EB3T_2eqB5m_E0E0E0E0E0B16_.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %.not.i.i.i.i = icmp eq ptr %.sroa.05.0.i.i.i, %3
  br i1 %.not.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1K_8builtins15fish_key_reader11should_exits0_0EINtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4l_2eqB3B_E0E0EB1K_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1n_8builtins15fish_key_reader11should_exits0_0ENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB2Y_12iter_compare7compareNtNtNtBc_3str4iter5CharscuNCINvNvB2W_5eq_by7compareccNCINvYB3_B2W_2eqB4f_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB5x_uNtNtBc_3cmp8OrderingEEEB1n_.exit.i.i.i
  %i.al = load i8, ptr %.sroa.05.0.i.i.i, align 1, !noalias !1322, !noundef !11 ; 3 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1K_8builtins15fish_key_reader11should_exits0_0EINtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4l_2eqB3B_E0E0EB1K_.exit, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 1
  %i.ao = icmp ne ptr %i.an, %3
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp samesign ugt i8 %i.al, -33
  br i1 %i.ap, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1K_8builtins15fish_key_reader11should_exits0_0EINtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4l_2eqB3B_E0E0EB1K_.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 2
  %i.ar = icmp ne ptr %i.aq, %3
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ugt i8 %i.al, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1K_8builtins15fish_key_reader11should_exits0_0EINtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4l_2eqB3B_E0E0EB1K_.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 3
  %i.au = icmp ne ptr %i.at, %3
  tail call void @llvm.assume(i1 %i.au)
  br label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1K_8builtins15fish_key_reader11should_exits0_0EINtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4l_2eqB3B_E0E0EB1K_.exit

_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1K_8builtins15fish_key_reader11should_exits0_0EINtB3_10SpecIterEqNtNtNtB9_3str4iter5CharsE12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B4l_2eqB3B_E0E0EB1K_.exit: ; preds = %bb.b, %bb.e, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1n_8builtins15fish_key_reader11should_exits0_0ENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB2Y_12iter_compare7compareNtNtNtBc_3str4iter5CharscuNCINvNvB2W_5eq_by7compareccNCINvYB3_B2W_2eqB4f_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB5x_uNtNtBc_3cmp8OrderingEEEB1n_.exit.i.i.i, %bb.f, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i
  %i.av = phi i1 [ true, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1n_8builtins15fish_key_reader11should_exits0_0ENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB2Y_12iter_compare7compareNtNtNtBc_3str4iter5CharscuNCINvNvB2W_5eq_by7compareccNCINvYB3_B2W_2eqB4f_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB5x_uNtNtBc_3cmp8OrderingEEEB1n_.exit.i.i.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i ], [ false, %bb.f ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i ], [ false, %bb.e ], [ false, %bb.b ]
  ret i1 %i.av
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1U_5slice4iter4ItercEEECs8frGy5WneL6_4fish(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRNtNtB7_9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11
end_hunk_2
begin_hunk_3_@_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRNtNtB7_9utfstring11Utf32StringECs8frGy5WneL6_4fish:bb.a
  %i.e = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1U_5slice4iter4ItercEEECs8frGy5WneL6_4fish(ptr noundef nonnull %.val, ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECs8frGy5WneL6_4fish(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.b = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OncecEINtNtNtBY_8adapters6copied6CopiedINtNtNtB10_5slice4iter4ItercEEECs8frGy5WneL6_4fish(i32 noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvCskr4qsHYS30i_15fish_widestring17subslice_positioncRScBR_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findRScECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvCskr4qsHYS30i_15fish_widestring17subslice_positioncRScBR_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EIBS_INtNtBW_6copied6CopiedINtNtNtB10_5slice4iter4ItercEEEECs8frGy5WneL6_4fish(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtNtB10_3str4iter5CharsEIBS_INtNtBW_6copied6CopiedINtNtNtB10_5slice4iter4ItercEEEECs8frGy5WneL6_4fish(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.b = tail call noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtBY_7sources4once4OncecEEIBS_INtNtBW_6copied6CopiedINtNtNtB10_5slice4iter4ItercEEEECs8frGy5WneL6_4fish(i32 noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator5eq_byNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvYB3_BH_2eqB1s_E0ECs8frGy5WneL6_4fish(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull readonly captures(address) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtBe_3str4iter5CharsB6_2eqB2Y_E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtBe_3str4iter5CharsB6_2eqB2Y_E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.f, %bb.a
  %.sroa.05.0.i.i.i = phi ptr [ %2, %bb.a ], [ %i.ar, %bb.f ] ; 5 uses
  %i.c = phi ptr [ %0, %bb.a ], [ %i.al, %bb.f ]  ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not.i.i.i.i.i.i, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator12try_for_eachNCINvNvBJ_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvBH_5eq_by7compareccNCINvYB3_BH_2eqB26_E0E0E0INtNtNtB9_3ops12control_flow11ControlFlowIB3S_uNtNtB9_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtBe_3str4iter5CharsB6_2eqB2Y_E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.c, align 1, !noalias !1341, !noundef !11 ; 5 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = and i8 %i.e, 31
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %i.i = icmp ne ptr %i.d, %1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.k = load i8, ptr %i.d, align 1, !noalias !1341, !noundef !11
  %i.l = shl nuw nsw i32 %i.h, 6
  %i.m = and i8 %i.k, 63
  %i.n = zext nneg i8 %i.m to i32                 ; 2 uses
  %i.o = or disjoint i32 %i.l, %i.n
  %i.p = icmp samesign ugt i8 %i.e, -33
  br i1 %i.p, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i8 %i.e to i32
  br label %bb.d

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i
  %i.r = icmp ne ptr %i.j, %1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  %i.t = load i8, ptr %i.j, align 1, !noalias !1341, !noundef !11
  %i.u = shl nuw nsw i32 %i.n, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = shl nuw nsw i32 %i.h, 12
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = icmp samesign ugt i8 %i.e, -17
  br i1 %i.aa, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, label %bb.d

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i
  %i.ab = icmp ne ptr %i.s, %1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ad = load i8, ptr %i.s, align 1, !noalias !1341, !noundef !11
  %i.ae = shl nuw nsw i32 %i.h, 18
  %i.af = and i32 %i.ae, 1835008
  %i.ag = shl nuw nsw i32 %i.x, 6
  %i.ah = and i8 %i.ad, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.af
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.s, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.j, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.d, %bb.c ]
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.z, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.ak, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.o, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.q, %bb.c ]
  %i.am = icmp eq ptr %.sroa.05.0.i.i.i, %3
  br i1 %i.am, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtB9_3str4iter5CharsINtB3_10SpecIterEqNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1t_E0E0ECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load i32, ptr %.sroa.05.0.i.i.i, align 4, !noalias !1342, !noundef !11 ; 4 uses
  %i.ao = xor i32 %i.an, 55296
  %i.ap = add i32 %i.ao, -1114112
  %i.aq = icmp ult i32 %i.ap, -1112064
  br i1 %i.aq, label %.split.i.i.i.i.i.i.i.i, label %bb.f

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1343
  store i32 %i.an, ptr %i.b, align 4, !noalias !1343
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @731) #54, !noalias !1342
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 4
  %i.as = icmp ult i32 %i.an, 1114112
  tail call void @llvm.assume(i1 %i.as)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %spec.select.i.ph.i.i.i.i.i, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtBe_3str4iter5CharsB6_2eqB2Y_E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtB9_3str4iter5CharsINtB3_10SpecIterEqNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1t_E0E0ECs8frGy5WneL6_4fish.exit

_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator12try_for_eachNCINvNvBJ_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvBH_5eq_by7compareccNCINvYB3_BH_2eqB26_E0E0E0INtNtNtB9_3ops12control_flow11ControlFlowIB3S_uNtNtB9_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callcINtNtNtBe_3ops12control_flow11ControlFlowIB1m_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvB6_5eq_by7compareccNCINvYNtNtNtBe_3str4iter5CharsB6_2eqB2Y_E0E0E0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.at = icmp eq ptr %.sroa.05.0.i.i.i, %3
  br i1 %i.at, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtB9_3str4iter5CharsINtB3_10SpecIterEqNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1t_E0E0ECs8frGy5WneL6_4fish.exit, label %bb.g

bb.g:                                             ; preds = %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator12try_for_eachNCINvNvBJ_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvBH_5eq_by7compareccNCINvYB3_BH_2eqB26_E0E0E0INtNtNtB9_3ops12control_flow11ControlFlowIB3S_uNtNtB9_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.au = load i32, ptr %.sroa.05.0.i.i.i, align 4, !noalias !1344, !noundef !11 ; 3 uses
  %i.av = xor i32 %i.au, 55296
  %i.aw = add i32 %i.av, -1114112
  %i.ax = icmp ult i32 %i.aw, -1112064
  br i1 %i.ax, label %.split.i.i.i.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1345
  store i32 %i.au, ptr %i.a, align 4, !noalias !1345
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @731) #54, !noalias !1344
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %bb.g
  %i.ay = icmp ult i32 %i.au, 1114112
  tail call void @llvm.assume(i1 %i.ay)
  br label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtB9_3str4iter5CharsINtB3_10SpecIterEqNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1t_E0E0ECs8frGy5WneL6_4fish.exit

_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtNtB9_3str4iter5CharsINtB3_10SpecIterEqNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareccNCINvYBN_B2J_2eqB1t_E0E0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.f, %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator12try_for_eachNCINvNvBJ_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvBH_5eq_by7compareccNCINvYB3_BH_2eqB26_E0E0E0INtNtNtB9_3ops12control_flow11ControlFlowIB3S_uNtNtB9_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.az = phi i1 [ true, %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator12try_for_eachNCINvNvBJ_12iter_compare7compareNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32cuNCINvNvBH_5eq_by7compareccNCINvYB3_BH_2eqB26_E0E0E0INtNtNtB9_3ops12control_flow11ControlFlowIB3S_uNtNtB9_3cmp8OrderingEEECs8frGy5WneL6_4fish.exit.i.i.i ], [ false, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ], [ false, %bb.f ], [ false, %bb.d ]
  ret i1 %i.az
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.x, !prof !14

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %0, align 8              ; 16 uses
  %i.b = icmp ugt i64 %2, 4294967295
  br i1 %i.b, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc i64 %1 to i32                      ; 3 uses
  %i.d = trunc nuw i64 %2 to i32                  ; 3 uses
  %i.e = icmp ult i32 %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %4 = sub nuw i32 %i.d, %i.c                     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !1385, !noundef !11 ; 3 uses
  %i.h = icmp ugt i32 %i.g, 63
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.k = load i64, ptr %i.j, align 4, !alias.scope !1386, !noalias !1387
  %i.l = icmp ugt i64 %i.k, 1023
  br i1 %i.l, label %bb.f, label %.thread.i.i.i.i15.i.i.i.i, !prof !15

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs_NtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i) #47, !noalias !1388
  br label %.thread.i.i.i.i15.i.i.i.i

.thread.i.i.i.i15.i.i.i.i:                        ; preds = %bb.f, %bb.e
  tail call void @_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.f), !noalias !1387
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.m = zext nneg i32 %i.g to i64
  %i.n = add nuw nsw i32 %i.g, 1
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i

_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i: ; preds = %bb.g, %.thread.i.i.i.i15.i.i.i.i
  %.in.i.i.i.i13.i.i.i.i = phi ptr [ %i.f, %.thread.i.i.i.i15.i.i.i.i ], [ %i.o, %bb.g ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i15.i.i.i.i ], [ %i.n, %bb.g ] ; 4 uses
  %i.p = load i32, ptr %.in.i.i.i.i13.i.i.i.i, align 4, !alias.scope !1389, !noalias !1387, !noundef !11
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i, ptr %i.f, align 4, !alias.scope !1389, !noalias !1387
  %i.q = zext i32 %4 to i64
  %i.r = zext i32 %i.p to i64
  %i.s = mul nuw i64 %i.r, %i.q                   ; 2 uses
  %i.t = lshr i64 %i.s, 32                        ; 2 uses
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  %i.v = sub i32 %i.c, %i.d
  %i.w = icmp ult i32 %i.v, %i.u
  br i1 %i.w, label %bb.h, label %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs8frGy5WneL6_4fish.exit.i.i

bb.h:                                             ; preds = %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i
  %i.x = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i, 63
  br i1 %i.x, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.aa = load i64, ptr %i.z, align 4, !alias.scope !1390, !noalias !1391
  %i.ab = icmp ugt i64 %i.aa, 1023
  br i1 %i.ab, label %bb.j, label %.thread.i.i.i.i19.i.i.i.i, !prof !15

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs_NtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.y) #47, !noalias !1392
  br label %.thread.i.i.i.i19.i.i.i.i

.thread.i.i.i.i19.i.i.i.i:                        ; preds = %bb.j, %bb.i
  tail call void @_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.y, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.f), !noalias !1391
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit20.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.ac = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i to i64
  %i.ad = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ac
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit20.i.i.i.i

_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit20.i.i.i.i: ; preds = %bb.k, %.thread.i.i.i.i19.i.i.i.i
  %.in.i.i.i.i17.i.i.i.i = phi ptr [ %i.f, %.thread.i.i.i.i19.i.i.i.i ], [ %i.ae, %bb.k ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i18.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i19.i.i.i.i ], [ %i.ad, %bb.k ]
  %i.af = load i32, ptr %.in.i.i.i.i17.i.i.i.i, align 4, !alias.scope !1393, !noalias !1391, !noundef !11
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i18.i.i.i.i, ptr %i.f, align 4, !alias.scope !1393, !noalias !1391
  %i.ag = tail call i32 @llvm.umulh.i32(i32 %i.af, i32 %4)
  %i.ah = xor i32 %i.u, -1
  %.not10.i.i.i.i = icmp ugt i32 %i.ag, %i.ah
  %i.ai = zext i1 %.not10.i.i.i.i to i64
  %i.aj = add nuw nsw i64 %i.t, %i.ai
  br label %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs8frGy5WneL6_4fish.exit.i.i

bb.l:                                             ; preds = %bb.b
  %5 = sub nuw i64 %2, %1                         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 9 uses
  %i.al = load i32, ptr %i.ak, align 4, !noalias !1394, !noundef !11 ; 4 uses
  %i.am = icmp ult i32 %i.al, 63
  br i1 %i.am, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !1395, !noalias !1396, !noundef !11
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.ar = load i64, ptr %i.aq, align 4, !alias.scope !1397, !noalias !1396
  %i.as = icmp ugt i64 %i.ar, 1023
  br i1 %i.as, label %bb.n, label %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i, !prof !15

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs_NtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ap) #47, !noalias !1398
  br label %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i

_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i: ; preds = %bb.n, %bb.m
  tail call void @_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ap, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.ak), !noalias !1396
  %i.at = load i32, ptr %i.ak, align 4, !alias.scope !1395, !noalias !1396, !noundef !11 ; 2 uses
  %.not.i.i.i.i11.i.i.i.i = icmp eq i32 %i.al, 63
  br i1 %.not.i.i.i.i11.i.i.i.i, label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !1395, !noalias !1396, !noundef !11
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i

bb.p:                                             ; preds = %bb.l
  %i.aw = zext nneg i32 %i.al to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !alias.scope !1395, !noalias !1396, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !1395, !noalias !1396, !noundef !11
  %i.bb = add nuw nsw i32 %i.al, 2
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i

_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i: ; preds = %bb.p, %bb.o, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i
  %.sroa.0.018.i.i.i.i12.i.i.i.i = phi i32 [ %i.bb, %bb.p ], [ 1, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i ], [ 2, %bb.o ] ; 5 uses
  %.sroa.02.017.i.i.i.i13.i.i.i.i = phi i32 [ %i.ay, %bb.p ], [ %i.ao, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i ], [ %i.at, %bb.o ]
  %.sroa.03.016.i.i.i.i14.i.i.i.i = phi i32 [ %i.ba, %bb.p ], [ %i.at, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i10.i.i.i.i ], [ %i.av, %bb.o ]
  store i32 %.sroa.0.018.i.i.i.i12.i.i.i.i, ptr %i.ak, align 4, !alias.scope !1395, !noalias !1396
  %i.bc = zext i32 %.sroa.03.016.i.i.i.i14.i.i.i.i to i64
  %i.bd = shl nuw i64 %i.bc, 32
  %i.be = zext i32 %.sroa.02.017.i.i.i.i13.i.i.i.i to i64
  %i.bf = or disjoint i64 %i.bd, %i.be
  %i.bg = zext i64 %5 to i128
  %i.bh = zext i64 %i.bf to i128
  %i.bi = mul nuw i128 %i.bh, %i.bg               ; 2 uses
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = trunc nuw i128 %i.bj to i64             ; 2 uses
  %i.bl = trunc i128 %i.bi to i64                 ; 2 uses
  %i.bm = sub i64 %1, %2
  %i.bn = icmp ult i64 %i.bm, %i.bl
  br i1 %i.bn, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i
  %i.bo = icmp samesign ult i32 %.sroa.0.018.i.i.i.i12.i.i.i.i, 63
  br i1 %i.bo, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.bq = load i32, ptr %i.bp, align 4, !alias.scope !1399, !noalias !1400, !noundef !11
  %i.br = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.bt = load i64, ptr %i.bs, align 4, !alias.scope !1401, !noalias !1400
  %i.bu = icmp ugt i64 %i.bt, 1023
  br i1 %i.bu, label %bb.s, label %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i, !prof !15

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMs_NtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.br) #47, !noalias !1402
  br label %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i

_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i: ; preds = %bb.s, %bb.r
  tail call void @_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.br, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.ak), !noalias !1400
  %i.bv = load i32, ptr %i.ak, align 4, !alias.scope !1399, !noalias !1400, !noundef !11 ; 2 uses
  %.not.i.i.i.i17.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i12.i.i.i.i, 63
  br i1 %.not.i.i.i.i17.i.i.i.i, label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !alias.scope !1399, !noalias !1400, !noundef !11
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i

bb.u:                                             ; preds = %bb.q
  %i.by = zext nneg i32 %.sroa.0.018.i.i.i.i12.i.i.i.i to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !alias.scope !1399, !noalias !1400, !noundef !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !alias.scope !1399, !noalias !1400, !noundef !11
  %i.cd = add nuw nsw i32 %.sroa.0.018.i.i.i.i12.i.i.i.i, 2
  br label %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i

_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i: ; preds = %bb.u, %bb.t, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i
  %.sroa.0.018.i.i.i.i18.i.i.i.i = phi i32 [ %i.cd, %bb.u ], [ 1, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i ], [ 2, %bb.t ]
  %.sroa.02.017.i.i.i.i19.i.i.i.i = phi i32 [ %i.ca, %bb.u ], [ %i.bq, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i ], [ %i.bv, %bb.t ]
  %.sroa.03.016.i.i.i.i20.i.i.i.i = phi i32 [ %i.cc, %bb.u ], [ %i.bv, %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i.i.i ], [ %i.bx, %bb.t ]
  store i32 %.sroa.0.018.i.i.i.i18.i.i.i.i, ptr %i.ak, align 4, !alias.scope !1399, !noalias !1400
  %i.ce = zext i32 %.sroa.03.016.i.i.i.i20.i.i.i.i to i64
  %i.cf = shl nuw i64 %i.ce, 32
  %i.cg = zext i32 %.sroa.02.017.i.i.i.i19.i.i.i.i to i64
  %i.ch = or disjoint i64 %i.cf, %i.cg
  %i.ci = tail call i64 @llvm.umulh.i64(i64 %i.ch, i64 %5)
  %i.cj = xor i64 %i.bl, -1
  %.not7.i.i.i.i = icmp ugt i64 %i.ci, %i.cj
  %i.ck = zext i1 %.not7.i.i.i.i to i64
  %i.cl = add nuw i64 %i.ck, %i.bk
  br label %bb.v

_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit20.i.i.i.i, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.aj, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit20.i.i.i.i ], [ %i.t, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs8frGy5WneL6_4fish.exit16.i.i.i.i ]
  %i.cm = add i64 %.sroa.04.0.i.i.i.i, %1
  %.sroa.6.0.extract.shift.i.i = and i64 %i.cm, 4294967295
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit

bb.v:                                             ; preds = %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.cl, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit21.i.i.i.i ], [ %i.bk, %_RINvYNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs8frGy5WneL6_4fish.exit15.i.i.i.i ]
  %i.cn = add i64 %.sroa.01.0.i.i.i.i, %1
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit

bb.w:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1403
  store i8 0, ptr %i.a, align 1, !noalias !1403
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #54, !noalias !1404
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtCsfFbyYyxlmiH_4rand5distr7uniform5ErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.v, %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.74.0.ph = phi i64 [ %.sroa.6.0.extract.shift.i.i, %_RINvXsl_NtNtNtCsfFbyYyxlmiH_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs8frGy5WneL6_4fish.exit.i.i ], [ %i.cn, %bb.v ]
  ret i64 %.sroa.74.0.ph

bb.x:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #54
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtBa_6poison5mutex5MutexNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEE5force0E0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !12, !noundef !11 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !13, !noundef !11
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison5mutex5MutexNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEE5force0Cs8frGy5WneL6_4fish.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #54
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison5mutex5MutexNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEE5force0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.a), !inline_history !1405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #54
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtBa_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0E0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !12, !noundef !11 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !13, !noundef !11
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0Cs8frGy5WneL6_4fish.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #54
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtB6_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a), !inline_history !1406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #54
  unreachable
end_hunk_3
begin_hunk_4_@_RNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB6_8builtins15fish_key_reader13throwing_mainEs_0B6_:bb.a
  %i.at = load i8, ptr %i.n, align 8, !range !13, !alias.scope !1450, !noundef !11
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1451
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !35, !alias.scope !1450, !noundef !11
  store i8 %i.aw, ptr %i.b, align 1, !noalias !1451
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #54
          to label %.noexc30 unwind label %bb.n

.noexc30:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ax = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, i32 noundef 2)
          to label %bb.s unwind label %bb.r       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #48
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions5sleep(i64 noundef 1, i32 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  call void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #53
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.v, %bb.aj, %bb.af, %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39, %bb.r, %bb.n, %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.u:                                             ; preds = %bb.aj, %bb.af, %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39, %bb.r, %bb.n, %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn26 = phi { ptr, i32 } [ %i.bv, %bb.aj ], [ %i.bp, %bb.af ], [ %i.bg, %bb.z ], [ %.pn24, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39 ], [ %i.ay, %bb.r ], [ %i.as, %bb.n ], [ %i.ak, %bb.i ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ]
  resume { ptr, i32 } %.pn26

bb.v:                                             ; preds = %bb.x, %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  %i.ba = load i8, ptr %i.k, align 8, !range !13, !alias.scope !1452, !noundef !11
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.x, label %.noexc40.preheader, !prof !15

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1453
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !range !35, !alias.scope !1452, !noundef !11
  store i8 %i.bd, ptr %i.c, align 1, !noalias !1453
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #54
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.x
  unreachable

.noexc40.preheader:                               ; preds = %bb.w
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit41 unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39: ; preds = %bb.v, %bb.y
  %.pn24 = phi { ptr, i32 } [ %i.be, %bb.y ], [ %i.az, %bb.v ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #48
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.noexc40.preheader
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit39

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit41: ; preds = %.noexc40.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bf = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, i32 noundef 2)
          to label %bb.aa unwind label %bb.z      ; 0 uses

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit41
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #48
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit41
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 0, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvCs5UXtnEuoeIl_11fish_common12read_blocked(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, i32 noundef 0, ptr noalias nofree noundef nonnull %i.i, i64 noundef 1)
  %i.bh = load i32, ptr %i.h, align 8, !range !20, !noundef !11
  %i.bi = trunc nuw i32 %i.bh to i1
  br i1 %i.bi, label %._crit_edge, label %.lr.ph, !prof !36

.lr.ph:                                           ; preds = %bb.aa
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ae
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !11
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.58.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.58.0..sroa_idx13, align 8
  %.sroa.615.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.615.0..sroa_idx20, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @16, ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.ag unwind label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.bm = load i8, ptr %i.i, align 1, !noundef !11
  switch i8 %i.bm, label %bb.ae [
    i8 113, label %bb.ac
    i8 10, label %bb.ac
    i8 13, label %bb.ac
  ]

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvCs5UXtnEuoeIl_11fish_common12read_blocked(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, i32 noundef 0, ptr noalias nofree noundef nonnull %i.i, i64 noundef 1)
  %i.bn = load i32, ptr %i.h, align 8, !range !20, !noundef !11
  %i.bo = trunc nuw i32 %i.bn to i1
  br i1 %i.bo, label %._crit_edge, label %bb.ab, !prof !37

bb.af:                                            ; preds = %bb.ah, %bb.ac
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #48
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %i.bq = load i8, ptr %i.e, align 8, !range !13, !alias.scope !1454, !noundef !11
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !15

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1455
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !range !35, !alias.scope !1454, !noundef !11
  store i8 %i.bt, ptr %i.d, align 1, !noalias !1455
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #54
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bu = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i32 noundef 2)
          to label %bb.ak unwind label %bb.aj     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #48
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ae, %bb.aa, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB6_22HighlightColorResolver21resolve_spec_uncached0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(18) %0, ptr %.0.val, ptr nofree readonly captures(none) %.8.val, i8 noundef range(i8 0, 30) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [18 x i8], align 1                ; 6 uses
  %i.c = alloca [3 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNCNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB6_22HighlightColorResolver21resolve_spec_uncached0Ba_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.e = zext nneg i8 %1 to i64
  %switch.gep41 = getelementptr inbounds nuw i8, ptr @switch.table._RNCNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB6_22HighlightColorResolver21resolve_spec_uncached0Ba_.466, i64 %i.e
  %switch.load42 = load i8, ptr %switch.gep41, align 1 ; 2 uses
  store i8 %1, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %switch.load42, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 0, ptr %i.g, align 1
  %i.h = icmp eq i8 %1, %switch.load42
  %narrow = select i1 %i.h, i8 1, i8 %switch.load
  %spec.select.1 = zext i8 %narrow to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %spec.select.1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !11, !nonnull !11
  br label %switch.lookup43

switch.lookup43:                                  ; preds = %switch.lookup, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit
  %.sroa.021.017 = phi ptr [ %i.c, %switch.lookup ], [ %i.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.021.017, i64 1 ; 2 uses
  %i.m = load i8, ptr %.sroa.021.017, align 1, !range !38, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = zext nneg i8 %i.m to i64
  %switch.gep44 = getelementptr inbounds nuw i8, ptr @switch.table._RNCNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB6_22HighlightColorResolver21resolve_spec_uncached0Ba_.467, i64 %i.n
  %switch.load45 = load i8, ptr %switch.gep44, align 1
  %switch.ext46 = zext i8 %switch.load45 to i64
  %i.o = zext nneg i8 %i.m to i64
  %switch.gep47 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNCNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB6_22HighlightColorResolver21resolve_spec_uncached0Ba_.468, i64 %i.o
  %switch.load48 = load ptr, ptr %switch.gep47, align 8
  call void %i.k(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %switch.load48, i64 noundef %switch.ext46) #52
  %i.p = load ptr, ptr %i.a, align 8, !noundef !11
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit, label %bb.a

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 3, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 3, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 3, ptr %i.s, align 1
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %0, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 6, ptr %.sroa.8.0..sroa_idx, align 1
  br label %bb.l

bb.a:                                             ; preds = %switch.lookup43
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight29parse_text_face_for_highlight(ptr noalias nofree noundef nonnull sret([18 x i8]) align 1 captures(none) dereferenceable(18) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.e

bb.b:                                             ; preds = %bb.h
  %.pr = load ptr, ptr %i.a, align 8, !alias.scope !1480 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  %i.t = icmp eq ptr %.pr, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = atomicrmw add ptr %.pr, i64 -1 release, align 8, !noalias !1481
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #47
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit: ; preds = %switch.lookup43, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = icmp eq ptr %i.l, %i.i
  br i1 %i.w, label %._crit_edge, label %switch.lookup43

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !1482, !noundef !11 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !1483
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #47
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57 unwind label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %i.b, align 1, !range !28, !noundef !11
  %.not54 = icmp eq i8 %i.ac, 2
  br i1 %.not54, label %bb.b, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef nonnull align 1 dereferenceable(18) %i.b, i64 18, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %i.ad = load ptr, ptr %i.a, align 8, !alias.scope !1484, !noundef !11 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !1485
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #47
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58: ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit58, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit57: ; preds = %bb.f, %bb.e, %bb.g
  resume { ptr, i32 } %i.x
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.08.us = phi i16 [ %i.w, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !1491 ; 2 uses
  %.sroa.518.0.copyload.i.us = load ptr, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !1491 ; 2 uses
  %.sroa.619.0.copyload.i.us = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !1491 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1491 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i.us, i64 %.sroa.619.0.copyload.i.us)
  %exitcond.not.i.us17.not = icmp ult i64 %.sroa.619.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us17.not, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us), "nonnull"(ptr %.sroa.518.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us
  %i.p = add i64 %.sroa.619.0.i.us18, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader, %bb.b
  %.sroa.619.0.i.us18 = phi i64 [ %i.p, %bb.b ], [ %.sroa.619.0.copyload.i.us, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.518.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.s = load i8, ptr %i.q, align 1, !noundef !11
  %i.t = load i8, ptr %i.r, align 1, !noundef !11
  %.not17.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs8frGy5WneL6_4fish.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.08.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.08 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit
end_hunk_4
begin_hunk_5_@_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor5check:bb.a
  %.sroa.08.059.us.1 = load i64, ptr %i.l, align 8, !noundef !11
  %i.ak = icmp ult i64 %.sroa.08.059.us.1, %i.ah
  br i1 %i.ak, label %bb.i, label %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_.exit.us.2

bb.i:                                             ; preds = %bb.h
  store i64 %i.ah, ptr %i.l, align 8
  br label %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_.exit.us.2

_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_.exit.us.2: ; preds = %bb.i, %bb.h, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_.exit.us.1
  %.sroa.0.3.us.1 = phi i1 [ %.sroa.0.3.us, %bb.h ], [ %.sroa.0.3.us, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_.exit.us.1 ], [ true, %bb.i ] ; 2 uses
  %.sroa.037.0.us.2 = load i64, ptr %i.n, align 8, !noundef !11
  %.not42.us.2 = icmp eq i64 %.sroa.037.0.us.2, -1
  br i1 %.not42.us.2, label %.split154, label %bb.j

bb.j:                                             ; preds = %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_.exit.us.2
  %.sroa.06.050.us.2 = load i64, ptr %i.n, align 8, !noundef !11
  %.not43.us.2 = icmp ugt i64 %.sroa.06.050.us.2, %i.ag
  br i1 %.not43.us.2, label %.split151.us, label %bb.k, !prof !15

bb.k:                                             ; preds = %bb.j
  %.sroa.08.059.us.2 = load i64, ptr %i.n, align 8, !noundef !11
  %i.al = icmp ult i64 %.sroa.08.059.us.2, %i.ag
  br i1 %i.al, label %.split154.sink.split, label %.split154

bb.l:                                             ; preds = %bb.a, %.split154
  %.sroa.0.0 = phi i1 [ %.us-phi155, %.split154 ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

.split154.sink.split:                             ; preds = %bb.bv, %bb.k
  %.lcssa205.sink = phi i64 [ %i.ag, %bb.k ], [ %i.eu, %bb.bv ]
  store i64 %.lcssa205.sink, ptr %i.n, align 8
  br label %.split154

.split154:                                        ; preds = %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_.exit.thread, %.split154.sink.split, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_.exit.us.2, %bb.k
  %.us-phi155 = phi i1 [ true, %.split154.sink.split ], [ %.sroa.0.3.us.1, %bb.k ], [ %.sroa.0.3.us.1, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_.exit.us.2 ], [ true, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.l

bb.m:                                             ; preds = %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1790
  store i64 %i.ew, ptr %i.i, align 16, !noalias !1790
  store i64 %i.ev, ptr %i.t, align 8, !noalias !1790
  store i64 %i.eu, ptr %i.u, align 16, !noalias !1790
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEB1A_.exit.i, %bb.m
  %i.am = load i64, ptr %i.t, align 8, !noalias !1790, !noundef !11
  %i.an = load i64, ptr %i.s, align 8, !noalias !1790, !noundef !11
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i, label %_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor10await_gens.exit

_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.n
  %i.ap = load i64, ptr %i.u, align 16, !noalias !1790, !noundef !11
  %i.aq = load i64, ptr %i.r, align 8, !noalias !1790, !noundef !11
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.o, label %_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor10await_gens.exit

bb.o:                                             ; preds = %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1792
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtCs8frGy5WneL6_4fish13topic_monitor4DataE4lockB11_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.v), !noalias !1792
  call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  %i.as = load i64, ptr %i.f, align 8, !range !26, !alias.scope !1793, !noalias !1792, !noundef !11
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.p, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit3.i.i, !prof !15

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1794
  %i.au = load ptr, ptr %i.w, align 8, !alias.scope !1793, !noalias !1792, !nonnull !11, !align !12, !noundef !11
  %i.av = load i8, ptr %i.x, align 8, !range !13, !alias.scope !1793, !noalias !1792, !noundef !11
  store ptr %i.au, ptr %i.a, align 8, !noalias !1794
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 %i.av, ptr %i.aw, align 8, !noalias !1794
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #53
          to label %bb.v unwind label %bb.q, !noalias !1795

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1796, !noalias !1795, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %.val1.i = load i8, ptr %i.aw, align 8, !range !13, !alias.scope !1796, !noalias !1795, !noundef !11
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.az = trunc nuw i8 %.val1.i to i1
  br i1 %i.az, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1797
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44, label %bb.s, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.bd = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.s
  br i1 %i.bd, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44, label %bb.t

bb.t:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ay monotonic, align 4, !noalias !1797
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44: ; preds = %bb.t, %.noexc, %bb.r, %bb.q
  %i.be = atomicrmw xchg ptr %.val.i, i32 0 release, align 4, !noalias !1797
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.u, label %common.resume, !prof !15

bb.u:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i)
          to label %common.resume unwind label %bb.w

bb.v:                                             ; preds = %bb.p
  unreachable

bb.w:                                             ; preds = %bb.u, %bb.s
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !1795
  unreachable

common.resume:                                    ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i12.i, %bb.as, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, %bb.az, %bb.bf, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.u, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44
  %common.resume.op = phi { ptr, i32 } [ %i.ea, %bb.bf ], [ %lpad.loopexit.split-lp242, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.co, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i12.i ], [ %i.co, %bb.as ], [ %lpad.loopexit.split-lp242, %bb.az ], [ %i.ax, %bb.u ], [ %i.ax, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i44 ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit3.i.i: ; preds = %bb.o
  %i.bh = load ptr, ptr %i.w, align 8, !alias.scope !1793, !noalias !1792, !nonnull !11, !align !12, !noundef !11
  %i.bi = load i8, ptr %i.x, align 8, !range !13, !alias.scope !1793, !noalias !1792, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1792
  br label %bb.x

bb.x:                                             ; preds = %bb.al, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit3.i.i
  %.sroa.10.0.i.i = phi i8 [ %i.bi, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit3.i.i ], [ %.sroa.10.1.i.i, %bb.al ] ; 4 uses
  %.sroa.0.0.i6.i = phi ptr [ %i.bh, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit3.i.i ], [ %.sroa.0.1.i.i, %bb.al ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1792
  invoke fastcc void @_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor20updated_gens_in_data(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %0, ptr nonnull %.sroa.0.0.i6.i)
          to label %bb.y unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1792

bb.y:                                             ; preds = %bb.x
  %i.bj = load i64, ptr %i.i, align 16, !alias.scope !1791, !noalias !1790, !noundef !11
  %i.bk = load i64, ptr %i.e, align 8, !noalias !1792, !noundef !11
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.z, label %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.z:                                             ; preds = %bb.y
  %i.bm = load i64, ptr %i.t, align 8, !alias.scope !1791, !noalias !1790, !noundef !11
  %i.bn = load i64, ptr %i.y, align 8, !noalias !1792, !noundef !11
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.z
  %i.bp = load i64, ptr %i.u, align 16, !alias.scope !1791, !noalias !1790, !noundef !11
  %i.bq = load i64, ptr %i.z, align 8, !noalias !1792, !noundef !11
  %i.br = icmp eq i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.aa, label %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.aa:                                            ; preds = %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i, i64 32
  %i.bt = load i8, ptr %i.bs, align 8, !range !13, !noalias !1792, !noundef !11
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ab, label %bb.ac

_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i, %bb.z, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1790
  br label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1792
  %i.bv = trunc nuw i8 %.sroa.10.0.i.i to i1
  call void @_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync6poison7condvarNtB3_7Condvar4waitNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 4 %i.ab, ptr noundef nonnull align 8 %.sroa.0.0.i6.i, i1 noundef zeroext %i.bv), !noalias !1792
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  %i.bw = load i64, ptr %i.d, align 8, !range !26, !alias.scope !1798, !noalias !1792, !noundef !11
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %bb.an, label %bb.av, !prof !15

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1792
  %i.by = load atomic i8, ptr %i.aa monotonic, align 4, !noalias !1792
  %i.bz = and i8 %i.by, -128                      ; 2 uses
  store i8 %i.bz, ptr %i.c, align 1, !noalias !1792
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.ae, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedhhECs4iCdMoxqDDc_12aho_corasick(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @136, ptr noundef nonnull @163, ptr nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #53
          to label %bb.am unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1792

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1792
  %i.cb = cmpxchg ptr %i.aa, i8 0, i8 -128 seq_cst seq_cst, align 1, !noalias !1792
  %.sroa.18.0.in.i.i.i = extractvalue { i8, i1 } %i.cb, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i, i64 32
  store i8 1, ptr %i.cc, align 8, !noalias !1792
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i
  %.sroa.0.0.i21.i.i = phi i1 [ true, %bb.af ], [ false, %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1792
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i6.i) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i, i64 4
  %i.ce = trunc nuw i8 %.sroa.10.0.i.i to i1
  br i1 %i.ce, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1792
  %i.cg = and i64 %i.cf, 9223372036854775807
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ai, !prof !14

bb.ai:                                            ; preds = %bb.ah
  %i.ci = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47, !noalias !1792
  br i1 %i.ci, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store atomic i8 1, ptr %i.cd monotonic, align 1, !noalias !1792
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.cj = atomicrmw xchg ptr %.sroa.0.0.i6.i, i32 0 release, align 4, !noalias !1792
  %i.ck = icmp eq i32 %i.cj, 2
  br i1 %i.ck, label %bb.ak, label %_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor37try_update_gens_maybe_becoming_reader.exit.i, !prof !15

bb.ak:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.0.0.i6.i), !noalias !1792
  br label %_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor37try_update_gens_maybe_becoming_reader.exit.i

bb.al:                                            ; preds = %bb.av, %bb.ae
  %.sroa.10.1.i.i = phi i8 [ %i.cz, %bb.av ], [ %.sroa.10.0.i.i, %bb.ae ]
  %.sroa.0.1.i.i = phi ptr [ %i.cy, %bb.av ], [ %.sroa.0.0.i6.i, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1792
  br label %bb.x

bb.am:                                            ; preds = %bb.ad
  unreachable

bb.an:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1799
  %i.cl = load ptr, ptr %i.ac, align 8, !alias.scope !1798, !noalias !1792, !nonnull !11, !align !12, !noundef !11
  %i.cm = load i8, ptr %i.ad, align 8, !range !13, !alias.scope !1798, !noalias !1792, !noundef !11
  store ptr %i.cl, ptr %i.b, align 8, !noalias !1799
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i8 %i.cm, ptr %i.cn, align 8, !noalias !1799
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #53
          to label %bb.at unwind label %bb.ao, !noalias !1800

bb.ao:                                            ; preds = %bb.an
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1801, !noalias !1800, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %.val1.i.i = load i8, ptr %i.cn, align 8, !range !13, !alias.scope !1801, !noalias !1800, !noundef !11
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.cq = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.cq, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i12.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cr = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1802
  %i.cs = and i64 %i.cr, 9223372036854775807
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i12.i, label %bb.aq, !prof !14

bb.aq:                                            ; preds = %bb.ap
  %i.cu = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
          to label %.noexc13.i unwind label %bb.au, !noalias !1790

.noexc13.i:                                       ; preds = %bb.aq
  br i1 %i.cu, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i12.i, label %bb.ar

bb.ar:                                            ; preds = %.noexc13.i
  store atomic i8 1, ptr %i.cp monotonic, align 4, !noalias !1802
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i12.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i12.i: ; preds = %bb.ar, %.noexc13.i, %bb.ap, %bb.ao
  %i.cv = atomicrmw xchg ptr %.val.i.i, i32 0 release, align 4, !noalias !1802
  %i.cw = icmp eq i32 %i.cv, 2
  br i1 %i.cw, label %bb.as, label %common.resume, !prof !15

bb.as:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i12.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i)
          to label %common.resume unwind label %bb.au, !noalias !1790

bb.at:                                            ; preds = %bb.an
  unreachable

bb.au:                                            ; preds = %bb.as, %bb.aq
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !1800
  unreachable

bb.av:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.ac, align 8, !alias.scope !1798, !noalias !1792, !nonnull !11, !align !12, !noundef !11
  %i.cz = load i8, ptr %i.ad, align 8, !range !13, !alias.scope !1798, !noalias !1792, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1792
  br label %bb.al

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.ad
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i6.i) ], !noalias !1791
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i, i64 4
  %i.db = trunc nuw i8 %.sroa.10.0.i.i to i1
  br i1 %i.db, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.aw

bb.aw:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.dc = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1792
  %i.dd = and i64 %i.dc, 9223372036854775807
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.ax, !prof !14

bb.ax:                                            ; preds = %bb.aw
  %i.df = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
          to label %.noexc.i unwind label %bb.ba, !noalias !1790

.noexc.i:                                         ; preds = %bb.ax
  br i1 %i.df, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.ay

bb.ay:                                            ; preds = %.noexc.i
  store atomic i8 1, ptr %i.da monotonic, align 1, !noalias !1792
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i: ; preds = %bb.ay, %.noexc.i, %bb.aw, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.dg = atomicrmw xchg ptr %.sroa.0.0.i6.i, i32 0 release, align 4, !noalias !1792
  %i.dh = icmp eq i32 %i.dg, 2
  br i1 %i.dh, label %bb.az, label %common.resume, !prof !15

bb.az:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.0.0.i6.i)
          to label %common.resume unwind label %bb.ba, !noalias !1790

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !1792
  unreachable

_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor37try_update_gens_maybe_becoming_reader.exit.i: ; preds = %bb.ak, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  br i1 %.sroa.0.0.i21.i.i, label %bb.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEB1A_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEB1A_.exit.i: ; preds = %bb.bp, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor37try_update_gens_maybe_becoming_reader.exit.i
  %i.dj = load i64, ptr %i.i, align 16, !noalias !1790, !noundef !11
  %i.dk = load i64, ptr %i.j, align 8, !noalias !1790, !noundef !11
  %i.dl = icmp eq i64 %i.dj, %i.dk
  br i1 %i.dl, label %bb.n, label %_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor10await_gens.exit

bb.bb:                                            ; preds = %_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor37try_update_gens_maybe_becoming_reader.exit.i
  %i.dm = load i64, ptr %i.i, align 16, !noalias !1790, !noundef !11
  %i.dn = load i64, ptr %i.j, align 8, !noalias !1790, !noundef !11
  %i.do = icmp eq i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.bc, label %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit8.thread.i, !prof !45

bb.bc:                                            ; preds = %bb.bb
  %i.dp = load i64, ptr %i.t, align 8, !noalias !1790, !noundef !11
  %i.dq = load i64, ptr %i.s, align 8, !noalias !1790, !noundef !11
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit8.i, label %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit8.thread.i, !prof !45

_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit8.i: ; preds = %bb.bc
  %i.ds = load i64, ptr %i.u, align 16, !noalias !1790, !noundef !11
  %i.dt = load i64, ptr %i.r, align 8, !noalias !1790, !noundef !11
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.bd, label %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit8.thread.i, !prof !46

_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit8.thread.i: ; preds = %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit8.i, %bb.bc, %bb.bb
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCs8frGy5WneL6_4fish13topic_monitor15GenerationsListBM_EBQ_(i8 noundef 0, ptr noundef nonnull align 8 %i.i, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull @152, ptr nonnull inttoptr (i64 115 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #54, !noalias !1790
  unreachable

bb.bd:                                            ; preds = %_RNvXsi_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15GenerationsListNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit8.i
  call void @_RNvMs1_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_15BinarySemaphore4wait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !noalias !1790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1790
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtCs8frGy5WneL6_4fish13topic_monitor4DataE4lockB11_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.v), !noalias !1790
  call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  %i.dv = load i64, ptr %i.h, align 8, !range !26, !alias.scope !1803, !noalias !1790, !noundef !11
  %i.dw = trunc nuw i64 %i.dv to i1
  br i1 %i.dw, label %bb.be, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit.i, !prof !15

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1804
  %i.dx = load ptr, ptr %i.ae, align 8, !alias.scope !1803, !noalias !1790, !nonnull !11, !align !12, !noundef !11
  %i.dy = load i8, ptr %i.af, align 8, !range !13, !alias.scope !1803, !noalias !1790, !noundef !11
  store ptr %i.dx, ptr %i.g, align 8, !noalias !1804
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.dy, ptr %i.dz, align 8, !noalias !1804
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #53
          to label %bb.bg unwind label %bb.bf, !noalias !1805

bb.bf:                                            ; preds = %bb.be
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #48
          to label %common.resume unwind label %bb.bh, !noalias !1805

bb.bg:                                            ; preds = %bb.be
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !1805
end_hunk_5
begin_hunk_6_@_RNvXs5p_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_5Token14allowed_tokens
define internal noundef { ptr, i64 } @_RNvXs5p_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_5Token14allowed_tokens(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @487, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs5p_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_5Token14token_type_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs5p_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_5Token7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @737, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5s_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs5s_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs5t_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5w_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @738, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @724, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @721, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @725, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @722)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs60_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordBeginNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @739, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @724, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @721, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @729, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @728)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6N_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordInNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @740, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @724, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @721, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @729, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @728)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6f_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @742, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6f_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @742, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs6g_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs6g_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @743, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6g_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @744, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs6g_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !53, !noundef !11
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs6h_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs6h_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs6i_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6l_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @745, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @724, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @721, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @729, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @728)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6s_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordForNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @746, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @724, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @721, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @729, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @728)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6z_NtCs8frGy5WneL6_4fish3astNtB6_15KeywordFunctionNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @747, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @724, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @721, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @729, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @728)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_15InputEventQueueNtB5_16InputEventQueuer18select_interrupted(ptr noalias nofree noundef align 8 dereferenceable(176) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 17 uses
  %i.h = alloca [48 x i8], align 8                ; 11 uses
  %i.i = tail call noundef i32 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader33reader_test_and_clear_interrupted()
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtB4_16InputEventQueuer21enqueue_interrupt_keyB8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  %i.k = tail call { ptr, i1 } @_RNvNtCs8frGy5WneL6_4fish6common11shell_modes(), !noalias !2916 ; 2 uses
  %i.l = extractvalue { ptr, i1 } %i.k, 0         ; 5 uses
  %i.m = extractvalue { ptr, i1 } %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i8, ptr %i.n, align 8, !noalias !2916, !noundef !11 ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  br i1 %i.m, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2916
  %i.r = and i64 %i.q, 9223372036854775807
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47, !noalias !2916
  br i1 %i.t, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store atomic i8 1, ptr %i.p monotonic, align 4, !noalias !2916
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.u = atomicrmw xchg ptr %i.l, i32 0 release, align 4, !noalias !2916
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit.i, !prof !15

bb.f:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.l), !noalias !2916
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.f, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.w = icmp eq i8 %i.o, 0
  br i1 %i.w, label %_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtB4_16InputEventQueuer21enqueue_interrupt_keyB8_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2916
  switch i8 %i.o, label %bb.h [
    i8 13, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i
    i8 9, label %.fold.split.i.i.i.i.i
    i8 32, label %.fold.split3.i.i.i.i.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = tail call noundef align 4 ptr @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader28get_terminal_mode_on_startup(), !noalias !2917 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

.fold.split.i.i.i.i.i:                            ; preds = %bb.g
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i

.fold.split3.i.i.i.i.i:                           ; preds = %bb.g
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 19
  %i.z = load i8, ptr %i.y, align 1, !noalias !2917, !noundef !11
  %i.aa = icmp eq i8 %i.o, %i.z
  br i1 %i.aa, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  switch i8 %i.o, label %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i.i.i [
    i8 127, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i
    i8 27, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i

_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i.i.i: ; preds = %bb.j
  %i.ab = icmp ult i8 %i.o, 32
  br i1 %i.ab, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i.i.i
  %i.ac = icmp samesign ult i8 %i.o, 27
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = or disjoint i8 %i.o, 64
  %i.ae = zext nneg i8 %i.ad to i64
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.af = or disjoint i8 %i.o, 96
  %i.ag = zext nneg i8 %i.af to i64
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i

_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i: ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %.fold.split3.i.i.i.i.i, %.fold.split.i.i.i.i.i, %bb.g
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ 0, %.fold.split3.i.i.i.i.i ], [ 0, %bb.i ], [ 0, %.fold.split.i.i.i.i.i ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.k ], [ 4294967296, %bb.m ], [ 4294967296, %bb.n ]
  %.sroa.0.0.i.ph.i.i.i = phi i64 [ 62734, %.fold.split3.i.i.i.i.i ], [ 62720, %bb.i ], [ 62733, %.fold.split.i.i.i.i.i ], [ 62721, %bb.j ], [ 62723, %bb.g ], [ 62722, %bb.k ], [ %i.ae, %bb.m ], [ %i.ag, %bb.n ]
  %i.ah = or disjoint i64 %.sroa.0.0.i.ph.i.i.i, %.sroa.4.0.i.ph.i.i.i
  br label %bb.p

bb.o:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i.i.i
  %i.ai = zext i8 %i.o to i64
  br label %bb.p

.thread41.i:                                      ; preds = %bb.al, %bb.ak, %bb.ai
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.p:                                             ; preds = %bb.o, %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i
  %i.aj = phi i64 [ %i.ai, %bb.o ], [ %i.ah, %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i.i.i ]
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, i8 0, i64 9, i1 false), !noalias !2916
  store i64 0, ptr %i.h, align 8, !noalias !2916
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !2916
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !2916
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.aj, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2916
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !2916
  %.sroa.010.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !2916
  store i64 -2, ptr %0, align 8, !alias.scope !2916
  %.not.i = icmp eq i64 %.sroa.010.0.copyload.i, -2
  br i1 %.not.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !2916
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE14push_front_mutB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2918
  br label %bb.r

bb.r:                                             ; preds = %bb.am, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2916
  br label %_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtB4_16InputEventQueuer21enqueue_interrupt_keyB8_.exit

bb.s:                                             ; preds = %bb.p
  %i.am = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 40) monotonic, align 8, !noalias !2916
  %.not18.i = icmp eq i8 %i.am, 0
  br i1 %.not18.i, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2916
  store i64 0, ptr %i.g, align 8, !noalias !2916
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.an, align 8, !noalias !2916
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  store i64 0, ptr %i.ao, align 8, !noalias !2916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2916
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 24), align 8, !alias.scope !2919, !noalias !2916, !nonnull !11, !align !31, !noundef !11
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 32), align 8, !alias.scope !2919, !noalias !2916, !noundef !11
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ap, i64 noundef %i.aq)
          to label %_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str.exit.i unwind label %bb.u, !noalias !2916

bb.u:                                             ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.w, %_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str.exit.i, %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #48
          to label %.thread.i unwind label %bb.ao, !noalias !2916

_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2916
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !2916, !nonnull !11, !noundef !11 ; 3 uses
  %i.au = load i64, ptr %i.f, align 8, !range !16, !noalias !2916, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !2916, !noundef !11 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw
  store ptr %i.at, ptr %i.e, align 8, !noalias !2916
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.au, ptr %i.az, align 8, !noalias !2916
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.at, ptr %i.ba, align 8, !noalias !2916
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ay, ptr %i.bb, align 8, !noalias !2916
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.v unwind label %bb.u, !noalias !2916

bb.v:                                             ; preds = %_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2916
  %i.bc = load i64, ptr %i.ao, align 8, !alias.scope !2920, !noalias !2916, !noundef !11 ; 4 uses
  %i.bd = load i64, ptr %i.g, align 8, !range !16, !alias.scope !2920, !noalias !2916, !noundef !11
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #47
          to label %bb.x unwind label %bb.u, !noalias !2916

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bf = load ptr, ptr %i.an, align 8, !alias.scope !2920, !noalias !2916, !nonnull !11, !noundef !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc
  store i8 58, ptr %i.bg, align 1, !noalias !2916
  %i.bh = add i64 %i.bc, 1                        ; 3 uses
  store i64 %i.bh, ptr %i.ao, align 8, !alias.scope !2920, !noalias !2916
  %i.bi = load i64, ptr %i.g, align 8, !range !16, !alias.scope !2921, !noalias !2916, !noundef !11
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #47
          to label %bb.z unwind label %bb.u, !noalias !2916

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bk = load ptr, ptr %i.an, align 8, !alias.scope !2921, !noalias !2916, !nonnull !11, !noundef !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh
end_hunk_6
begin_hunk_7_@_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtB4_16InputEventQueuer6readchB8_:bb.a
          to label %bb.cd unwind label %.loopexit.split-lp.i.i, !noalias !3190

.loopexit.split-lp.i.i:                           ; preds = %bb.cb, %.thread.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #48
          to label %.body56.i unwind label %bb.cc, !noalias !3190

bb.cc:                                            ; preds = %.loopexit.split-lp.i.i
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49, !noalias !3190
  unreachable

bb.cd:                                            ; preds = %bb.cb, %.noexc.i55.i
  %i.fi = load ptr, ptr %.sroa.4.0..sroa_idx.i54.i, align 8, !alias.scope !3191, !noalias !3189, !nonnull !11, !noundef !11
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fe
  store i32 27, ptr %i.fj, align 4, !noalias !3190
  %i.fk = add i64 %i.fe, 1
  store i64 %i.fk, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3191, !noalias !3189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3189
  store i64 62722, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !3155
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !3155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.523.0..sroa_idx.i, i8 0, i64 9, i1 false), !noalias !3155
  invoke fastcc void @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt13enqueue_eventB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.i)
          to label %bb.ce unwind label %.loopexit

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3155
  br label %_RNCNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtBa_6decode19InputEventQueuerExt12on_byte_reads0_00Bc_.exit.i

_RNCNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtBa_6decode19InputEventQueuerExt12on_byte_reads0_00Bc_.exit.thread121.i: ; preds = %bb.bx, %_RNCNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtBa_6decode19InputEventQueuerExt12on_byte_reads0_00Bc_.exit.i
  %.pre115124.i = phi i64 [ %.pre115.i, %_RNCNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtBa_6decode19InputEventQueuerExt12on_byte_reads0_00Bc_.exit.i ], [ %.pre.pre.i, %bb.bx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !3155
  invoke fastcc void @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt13enqueue_eventB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ch unwind label %.loopexit

_RNCNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtBa_6decode19InputEventQueuerExt12on_byte_reads0_00Bc_.exit.thread118.i: ; preds = %bb.ch, %_RNCNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtBa_6decode19InputEventQueuerExt12on_byte_reads0_00Bc_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtBK_6decode19InputEventQueuerExt12on_byte_reads_0EBM_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3155
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt12on_byte_readB8_.exit unwind label %bb.cf

bb.cf:                                            ; preds = %_RNCNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtBa_6decode19InputEventQueuerExt12on_byte_reads0_00Bc_.exit.thread118.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume.i unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume.i:                                  ; preds = %bb.cm, %bb.cf, %.thread80.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.fu, %bb.cm ], [ %i.fl, %bb.cf ], [ %.pn.pn.i, %.thread80.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ch:                                            ; preds = %_RNCNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtBa_6decode19InputEventQueuerExt12on_byte_reads0_00Bc_.exit.thread121.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3155
  br label %_RNCNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtBa_6decode19InputEventQueuerExt12on_byte_reads0_00Bc_.exit.thread118.i

bb.ci:                                            ; preds = %.body56.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #48
          to label %.thread80.i unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %bb.ci, %.thread80.i
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

.thread76.i:                                      ; preds = %.thread87.i, %bb.ab, %bb.w
  %eh.lpad-body79.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread87.i ], [ %i.bz, %bb.w ], [ %i.ck, %bb.ab ] ; 2 uses
  %i.fo = load i64, ptr %i.m, align 8, !range !59, !alias.scope !3192, !noalias !3155, !noundef !11 ; 2 uses
  %i.fp = icmp ne i64 %i.fo, -9223372036854775803
  call void @llvm.assume(i1 %i.fp)
  %i.fq = icmp ult i64 %i.fo, -9223372036854775804
  br i1 %i.fq, label %bb.ck, label %.thread80.i

bb.ck:                                            ; preds = %.thread76.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.thread80.i unwind label %bb.cj

bb.cl:                                            ; preds = %bb.ah, %bb.ag
  %i.fr = load ptr, ptr %i.ab, align 8, !alias.scope !3162, !nonnull !11, !noundef !11
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.cn
  store i8 %i.bs, ptr %i.fs, align 1
  %i.ft = add i64 %i.cn, 1
  store i64 %i.ft, ptr %i.aa, align 8, !alias.scope !3162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3155
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt12on_byte_readB8_.exit unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume.i unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #49
  unreachable

_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt12on_byte_readB8_.exit: ; preds = %_RNCNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtBa_6decode19InputEventQueuerExt12on_byte_reads0_00Bc_.exit.thread118.i, %bb.cl
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3155
  br label %.backedge

bb.co:                                            ; preds = %bb.o
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fw, align 8
  br label %bb.cr

bb.cp:                                            ; preds = %bb.o
  call void @_RNvXs7_NtNtCs8frGy5WneL6_4fish5input5inputNtB5_15InputEventQueueNtB5_16InputEventQueuer18select_interrupted(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1)
  br label %.backedge

bb.cq:                                            ; preds = %bb.o
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 3, ptr %i.fx, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.co
  %storemerge = phi i64 [ -9223372036854775805, %bb.cq ], [ -9223372036854775806, %bb.co ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB6_6decode19InputEventQueuerExt13enqueue_eventB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 20 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 17 uses
  %.val19 = load i64, ptr %0, align 8, !range !58, !noundef !11
  %.not65 = icmp eq i64 %.val19, -2
  br i1 %.not65, label %bb.c, label %bb.b

.thread62:                                        ; preds = %bb.bo, %bb.k, %bb.as, %bb.ar, %bb.e, %bb.ap, %bb.am, %bb.i, %_RNvMs1_NtCs8frGy5WneL6_4fish3keyNtB5_3Key16from_single_byte.exit, %bb.n
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.s = load i64, ptr %1, align 8, !range !25, !noundef !11 ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  %i.u = add i64 %i.s, -9223372036854775807
  %i.v = select i1 %i.t, i64 %i.u, i64 0
  switch i64 %i.v, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.e
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.f, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE14push_front_mutB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3223
  br label %bb.bq

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.f, %bb.b, %bb.b, %bb.b
  %i.y = invoke { ptr, i1 } @_RNvNtCs8frGy5WneL6_4fish6common11shell_modes()
          to label %bb.g unwind label %.thread62  ; 2 uses

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !55, !noundef !11
  %switch = icmp samesign ult i64 %i.aa, 2
  br i1 %switch, label %bb.c, label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.ab = extractvalue { ptr, i1 } %i.y, 0        ; 5 uses
  %i.ac = extractvalue { ptr, i1 } %i.y, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !noundef !11 ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br i1 %i.ac, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #47
          to label %.noexc unwind label %.thread62

.noexc:                                           ; preds = %bb.i
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %.noexc, %bb.h, %bb.g
  %i.ak = atomicrmw xchg ptr %i.ab, i32 0 release, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit, !prof !15

bb.k:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit unwind label %.thread62

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.k
  %i.am = icmp ne i8 %i.ae, 0
  %i.an = load i64, ptr %1, align 8, !range !25
  %i.ao = icmp sgt i64 %i.an, -1
  %or.cond = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE13push_back_mutB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3224
  br label %bb.bq

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  switch i8 %i.ae, label %bb.n [
    i8 13, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i
    i8 9, label %.fold.split.i.i.i
    i8 32, label %.fold.split3.i.i.i
  ]

bb.n:                                             ; preds = %bb.m
  %i.ar = invoke noundef align 4 ptr @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader28get_terminal_mode_on_startup()
          to label %.noexc22 unwind label %.thread62 ; 2 uses

.noexc22:                                         ; preds = %bb.n
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

.fold.split.i.i.i:                                ; preds = %bb.m
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i

.fold.split3.i.i.i:                               ; preds = %bb.m
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i

bb.o:                                             ; preds = %.noexc22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 19
  %i.at = load i8, ptr %i.as, align 1, !noundef !11
  %i.au = icmp eq i8 %i.ae, %i.at
  br i1 %i.au, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %.noexc22
  switch i8 %i.ae, label %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i [
    i8 127, label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i
    i8 27, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i

_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i: ; preds = %bb.p
  %i.av = icmp ult i8 %i.ae, 32
  br i1 %i.av, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i
  %i.aw = icmp samesign ult i8 %i.ae, 27
  br i1 %i.aw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = or disjoint i8 %i.ae, 64
  %i.ay = zext nneg i8 %i.ax to i64
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i

bb.t:                                             ; preds = %bb.r
  %i.az = or disjoint i8 %i.ae, 96
  %i.ba = zext nneg i8 %i.az to i64
  br label %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i

_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i: ; preds = %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %.fold.split3.i.i.i, %.fold.split.i.i.i, %bb.m
  %.sroa.4.0.i.ph.i = phi i64 [ 0, %.fold.split3.i.i.i ], [ 0, %bb.o ], [ 0, %.fold.split.i.i.i ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %bb.q ], [ 4294967296, %bb.s ], [ 4294967296, %bb.t ]
  %.sroa.0.0.i.ph.i = phi i64 [ 62734, %.fold.split3.i.i.i ], [ 62720, %bb.o ], [ 62733, %.fold.split.i.i.i ], [ 62721, %bb.p ], [ 62723, %bb.m ], [ 62722, %bb.q ], [ %i.ay, %bb.s ], [ %i.ba, %bb.t ]
  %i.bb = or disjoint i64 %.sroa.0.0.i.ph.i, %.sroa.4.0.i.ph.i
  br label %_RNvMs1_NtCs8frGy5WneL6_4fish3keyNtB5_3Key16from_single_byte.exit

bb.u:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish3key31canonicalize_keyed_control_char.exit.i.i
  %i.bc = zext i8 %i.ae to i64
  br label %_RNvMs1_NtCs8frGy5WneL6_4fish3keyNtB5_3Key16from_single_byte.exit

_RNvMs1_NtCs8frGy5WneL6_4fish3keyNtB5_3Key16from_single_byte.exit: ; preds = %bb.u, %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i
  %i.bd = phi i64 [ %i.bc, %bb.u ], [ %i.bb, %_RNvNtCs8frGy5WneL6_4fish3key25canonicalize_control_char.exit.thread.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.bd, ptr %i.m, align 8
  %i.bf = invoke noundef i8 @_RNvNtNtCs8frGy5WneL6_4fish5input7binding22match_key_event_to_key(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.be, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.v unwind label %.thread62

bb.v:                                             ; preds = %_RNvMs1_NtCs8frGy5WneL6_4fish3keyNtB5_3Key16from_single_byte.exit
  %.not = icmp eq i8 %i.bf, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %.not, label %bb.l, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 40) monotonic, align 8
  %.not13 = icmp eq i8 %i.bg, 0
  br i1 %.not13, label %bb.ao, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 6 uses
  store i64 0, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 24), align 8, !alias.scope !3225, !nonnull !11, !align !31, !noundef !11
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 32), align 8, !alias.scope !3225, !noundef !11
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bj, i64 noundef %i.bk)
          to label %_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.ai, %bb.ac, %bb.aa, %bb.x, %bb.aj, %bb.ag, %bb.af, %bb.ad, %_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #48
          to label %.thread unwind label %bb.br

_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str.exit: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.bo = load i64, ptr %i.q, align 8, !range !16, !noundef !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !11 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, -1
  call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  store ptr %i.bn, ptr %i.l, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.bo, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bn, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.bs, ptr %i.bv, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.z unwind label %bb.y

bb.z:                                             ; preds = %_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bw = load i64, ptr %i.bi, align 8, !alias.scope !3226, !noundef !11 ; 4 uses
  %i.bx = load i64, ptr %i.r, align 8, !range !16, !alias.scope !3226, !noundef !11
  %i.by = icmp eq i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #47
          to label %bb.ab unwind label %bb.y

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.bz = load ptr, ptr %i.bh, align 8, !alias.scope !3226, !nonnull !11, !noundef !11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw
  store i8 58, ptr %i.ca, align 1
  %i.cb = add i64 %i.bw, 1                        ; 3 uses
  store i64 %i.cb, ptr %i.bi, align 8, !alias.scope !3226
  %i.cc = load i64, ptr %i.r, align 8, !range !16, !alias.scope !3227, !noundef !11
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #47
          to label %bb.ad unwind label %bb.y

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.ce = load ptr, ptr %i.bh, align 8, !alias.scope !3227, !nonnull !11, !noundef !11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cb
  store i8 32, ptr %i.cf, align 1
  %i.cg = add i64 %i.bw, 2
  store i64 %i.cg, ptr %i.bi, align 8, !alias.scope !3227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 68, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ae unwind label %bb.y
end_hunk_7
