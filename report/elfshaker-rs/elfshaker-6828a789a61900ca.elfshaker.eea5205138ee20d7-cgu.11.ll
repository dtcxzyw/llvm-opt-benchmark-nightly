Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.11?download=true
inline.NumInlined: 637
inline.NumDeleted: 466
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker:bb.a

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !8
  store i8 3, ptr %i.a, align 8, !alias.scope !8
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskuiImRAV2ip_9elfshaker(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !12, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !12, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #28
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit
    i64 1, label %bb.c
  ], !prof !7

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !13
  store i8 3, ptr %i.a, align 8, !alias.scope !13
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1l_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardNtCse7cAXHj51Pq_3log5LevelEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsh_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtCse7cAXHj51Pq_3log5LevelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtCse7cAXHj51Pq_3log5LevelEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtCse7cAXHj51Pq_3log5LevelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i = load i64, ptr %i.a, align 8, !alias.scope !22, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val3.i.i, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i.i = load ptr, ptr %i.c, align 8, !alias.scope !22, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, 0) %.val3.i.i, i64 noundef 1) #28, !noalias !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i = load i32, ptr %i.d, align 8, !range !23, !alias.scope !22, !noundef !5
  %i.e = tail call noundef i32 @close(i32 noundef %.val.i.i) #28, !noalias !22 ; 0 uses
  %i.f = load i64, ptr %0, align 8, !range !24, !alias.scope !25, !noundef !5
  %1 = trunc nuw i64 %i.f to i1
  br i1 %1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsfwHX9XeyMnn_4zstd6stream3zio6reader6ReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBI_3raw7DecoderEECskuiImRAV2ip_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs6_CscCEFg35tJHG_9zstd_safeNtB5_4DCtxNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsfwHX9XeyMnn_4zstd6stream3zio6reader6ReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBI_3raw7DecoderEECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsfwHX9XeyMnn_4zstd6stream3zio6reader6ReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBI_3raw7DecoderEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0EBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs8DirEntryECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !39, !nonnull !5, !noundef !5
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !39
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECskuiImRAV2ip_9elfshaker.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.e, align 8, !alias.scope !30, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.f, align 8, !alias.scope !30 ; 2 uses
  store i8 0, ptr %.val2.i, align 1
  %i.g = icmp eq i64 %.val3.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECskuiImRAV2ip_9elfshaker.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %.val3.i, i64 noundef 1) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECskuiImRAV2ip_9elfshaker.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !30, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !alias.scope !30 ; 2 uses
  store i8 0, ptr %.val.i, align 1
  %i.j = icmp eq i64 %.val1.i, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix8DirEntryECskuiImRAV2ip_9elfshaker.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECskuiImRAV2ip_9elfshaker.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix8DirEntryECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix8DirEntryECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECskuiImRAV2ip_9elfshaker.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !40, !noundef !5 ; 3 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775804
  tail call void @llvm.assume(i1 %i.f)
  %i.g = xor i64 %i.e, -9223372036854775808
  %i.h = icmp slt i64 %i.e, 0
  %i.i = select i1 %i.h, i64 %i.g, i64 4
  switch i64 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs974quTetXso_9rmp_serde6decode5ErrorECskuiImRAV2ip_9elfshaker.exit [
    i64 3, label %bb.b
    i64 4, label %bb.e
    i64 6, label %bb.h
    i64 7, label %bb.k
    i64 8, label %bb.x
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs974quTetXso_9rmp_serde6decode5ErrorECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorECskuiImRAV2ip_9elfshaker.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i6, %bb.x, %bb.x, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit5.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit3.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit9, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.d

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1v_4repo10repositoryNtB2k_10Repository16extract_snapshots_0ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3w_7HashSetRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtNtB4m_4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB4f_E6extendBX_E0ENtNtB5D_8iterator8Iterator4folduNCINvNvB6m_8for_each4callTB4f_uENCINvXs1i_NtB3y_3mapINtB7y_7HashMapB4f_uB4Y_EIB5z_B7h_E6extendBN_E0E0EB1v_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i.i
  %i.g = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringuNtNtNtBU_4hash6random11RandomStateE6insertCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f) ; 0 uses
  %i.h = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.e
  br i1 %i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1r_4repo10repositoryNtB2g_10Repository16extract_snapshots_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringTB4e_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB5e_7HashSetB4e_NtNtNtB4l_4hash6random11RandomStateEINtNtB3n_7collect6ExtendB4e_E6extendBN_E0NCINvNvB3j_8for_each4callB4X_NCINvXs1i_NtB5g_3mapINtB7T_7HashMapB4e_uB61_EIB6C_B4X_E6extendIBO_BN_B55_EE0E0E0EB1r_.exit, label %bb.c

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1r_4repo10repositoryNtB2g_10Repository16extract_snapshots_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringTB4e_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB5e_7HashSetB4e_NtNtNtB4l_4hash6random11RandomStateEINtNtB3n_7collect6ExtendB4e_E6extendBN_E0NCINvNvB3j_8for_each4callB4X_NCINvXs1i_NtB5g_3mapINtB7T_7HashMapB4e_uB61_EIB6C_B4X_E6extendIBO_BN_B55_EE0E0E0EB1r_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateIBO_INtNtNtBc_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB1X_10repositoryNtB2P_10Repository11loose_packs0s_0EENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1T_18sort_by_cached_keyTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeB1T_EB2F_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5x_8for_each4callTB4F_jENCINvMsk_NtB3Q_3vecINtB6Q_3VecB6A_E14extend_trustedBN_E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !418, !noalias !421, !noundef !5
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !421, !noalias !418 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !421, !noalias !418 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !421, !noalias !418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !426, !noalias !427, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !426, !noalias !427, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !426, !noalias !427, !nonnull !5, !align !65, !noundef !5
  %i.l = icmp eq ptr %i.g, %i.i
  br i1 %i.l, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB1S_10repositoryNtB2K_10Repository11loose_packs0s_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeB1O_EETB4B_jEuNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1O_18sort_by_cached_keyB4B_B2A_Es_0NCINvNvB3D_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1U_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.h, %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository11loose_packs0s_00Bf_.exit.i.i.i.i.i.i, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %bb.i, %bb.b
  %.val10.i.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.b ], [ %i.ae, %bb.i ] ; 3 uses
  %i.v = phi i64 [ %i.f, %bb.b ], [ %i.af, %bb.i ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.01.0.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !432
  %i.x = load ptr, ptr %i.k, align 8, !noalias !432, !nonnull !5, !align !65, !noundef !5
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository16pack_index_mtime(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !429

.noexc.i.i.i:                                     ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.y = load i64, ptr %i.c, align 8, !range !112, !alias.scope !439, !noalias !442, !noundef !5
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, -2
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !445
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository11loose_packs0s_00Bf_.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !449

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #30
          to label %bb.j unwind label %bb.g, !noalias !450

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !450
  unreachable

_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository11loose_packs0s_00Bf_.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !445
  store i64 0, ptr %i.d, align 8, !noalias !451
  store i32 0, ptr %i.r, align 8, !noalias !451
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %.noexc15.i.i.i unwind label %bb.c, !noalias !429

.noexc15.i.i.i:                                   ; preds = %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository11loose_packs0s_00Bf_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !444
  br label %bb.i

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.ab = load i64, ptr %i.s, align 8, !alias.scope !439, !noalias !442, !noundef !5
  %i.ac = load i32, ptr %i.t, align 8, !range !452, !alias.scope !439, !noalias !442, !noundef !5
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %.noexc16.i.i.i unwind label %bb.c, !noalias !429

.noexc16.i.i.i:                                   ; preds = %bb.h
  store i64 %i.ab, ptr %i.d, align 8, !noalias !451
  store i32 %i.ac, ptr %i.r, align 8, !noalias !451
  br label %bb.i

bb.i:                                             ; preds = %.noexc16.i.i.i, %.noexc15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !432
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5.0.copyload.i, i64 %.val10.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !453
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %i.v, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !454
  %i.ae = add i64 %.val10.i.i.i, 1                ; 2 uses
  %i.af = add i64 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !429
  %i.ag = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.p
  br i1 %i.ah, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB1S_10repositoryNtB2K_10Repository11loose_packs0s_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeB1O_EETB4B_jEuNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1O_18sort_by_cached_keyB4B_B2A_Es_0NCINvNvB3D_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1U_.exit, label %bb.d

bb.j:                                             ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.z, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val10.i.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !429
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB1S_10repositoryNtB2K_10Repository11loose_packs0s_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeB1O_EETB4B_jEuNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1O_18sort_by_cached_keyB4B_B2A_Es_0NCINvNvB3D_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1U_.exit: ; preds = %bb.i, %bb.a
  %storemerge.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.ae, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %storemerge.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !429
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENCINvXsf_B2f_NtB2f_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB4q_10ReadReaderINtNtNtNtB1w_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB4s_6config13DefaultConfigEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7d_8for_each4callTmB2d_ENCINvMsk_B1u_INtB1u_3VecB8g_E14extend_trustedBN_E0E0EB2h_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 32, i1 false), !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !468
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !465, !noalias !470, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !465
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.d, ptr %i.e, align 8, !noalias !468
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1U_8adapters9enumerateINtB2Z_9EnumeratepEB1O_4fold9enumerateBX_uNCINvNtB31_3map8map_foldTjBX_ETmBX_EuNCINvXsf_BZ_NtBZ_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB60_10ReadReaderINtNtNtNtBa_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB62_6config13DefaultConfigEE0NCINvNvB1O_8for_each4callB4A_NCINvMsk_B8_INtB8_3VecB4A_E14extend_trustedINtB4b_3MapIB3r_BI_EB4H_EE0E0E0E0EB11_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !468
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENCINvXsf_B2f_NtB2f_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB4q_10ReadReaderINtNtNtNtB1w_2io8buffered9bufreader9BufReaderRShEENtNtB4s_6config13DefaultConfigEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6M_8for_each4callTmB2d_ENCINvMsk_B1u_INtB1u_3VecB7P_E14extend_trustedBN_E0E0EB2h_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 32, i1 false), !noalias !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !474
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !471, !noalias !476, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !471
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.d, ptr %i.e, align 8, !noalias !474
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1U_8adapters9enumerateINtB2Z_9EnumeratepEB1O_4fold9enumerateBX_uNCINvNtB31_3map8map_foldTjBX_ETmBX_EuNCINvXsf_BZ_NtBZ_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB60_10ReadReaderINtNtNtNtBa_2io8buffered9bufreader9BufReaderRShEENtNtB62_6config13DefaultConfigEE0NCINvNvB1O_8for_each4callB4A_NCINvMsk_B8_INtB8_3VecB4A_E14extend_trustedINtB4b_3MapIB3r_BI_EB4H_EE0E0E0E0EB11_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !474
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtCskuiImRAV2ip_9elfshaker4repo4pack16assign_to_frames0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2p_8for_each4callINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB1x_7packidx9FileEntryENCINvMsk_B3v_IB3t_B3s_E14extend_trustedBN_E0E0EB1x_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuNCNvNtNtB2G_4repo4pack16assign_to_frames0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3o_EE0E0E0EB2G_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0
  %.neg = add i64 %0, 1
  %lcmp.mod.not = trunc i64 %i.b to i1
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.c = add nuw i64 %0, 1
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !477
  %.sroa.42.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.prol, align 8, !noalias !477
  %.sroa.53.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.prol, align 8, !noalias !477
  %i.e = add i64 %.sroa.4.0.copyload, 1           ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.prol ]
  %i.f = icmp eq i64 %1, %.neg
  br i1 %i.f, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuNCNvNtNtB2G_4repo4pack16assign_to_frames0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3o_EE0E0E0EB2G_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.g = phi i64 [ %i.l, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %i.g ; 3 uses
  store i64 0, ptr %i.h, align 8, !noalias !477
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !477
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !477
  %i.i = add nuw i64 %.sroa.0.010.i, 2            ; 2 uses
  %i.j = getelementptr [24 x i8], ptr %.sroa.6.0.copyload, i64 %i.g ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 24
  store i64 0, ptr %i.k, align 8, !noalias !477
  %.sroa.42.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.j, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.1, align 8, !noalias !477
  %.sroa.53.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.j, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.1, align 8, !noalias !477
  %i.l = add i64 %i.g, 2                          ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuNCNvNtNtB2G_4repo4pack16assign_to_frames0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3o_EE0E0E0EB2G_.exit, label %.lr.ph.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuNCNvNtNtB2G_4repo4pack16assign_to_frames0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3o_EE0E0E0EB2G_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.l, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !486
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj14_ENCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1C_10Repository12explode_pack0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callNtNtB1G_7packidx9FileEntryNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4v_3VecB3W_E14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !65, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !65, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj14_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB13_8adapters3map8map_foldRBQ_NtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryuNCNvMs0_NtNtB2p_4repo10repositoryNtB3e_10Repository12explode_pack0NCINvNvBX_8for_each4callB2l_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB2l_E14extend_trustedINtB1N_3MapBF_B36_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 20
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.v, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !487
  %i.r = invoke noundef nonnull align 8 ptr @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex15object_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.q)
          to label %.noexc.i unwind label %bb.e, !noalias !487

.noexc.i:                                         ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8, !noalias !490, !nonnull !5, !align !65, !noundef !5
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository17loose_object_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noundef nonnull align 8 %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.q)
          to label %bb.d unwind label %bb.e, !noalias !487

bb.d:                                             ; preds = %.noexc.i
  %i.t = load <2 x i64>, ptr %i.r, align 8, !noalias !496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.q, i64 20, i1 false), !noalias !497
  store <2 x i64> %i.t, ptr %i.o, align 8, !noalias !498
  store i32 420, ptr %i.p, align 4, !noalias !498
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !497
  %i.v = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !487
  %i.w = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.m
  br i1 %i.x, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj14_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB13_8adapters3map8map_foldRBQ_NtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryuNCNvMs0_NtNtB2p_4repo10repositoryNtB3e_10Repository12explode_pack0NCINvNvBX_8for_each4callB2l_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB2l_E14extend_trustedINtB1N_3MapBF_B36_EE0E0E0EB2p_.exit, label %bb.c

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !487
  resume { ptr, i32 } %i.y

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj14_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB13_8adapters3map8map_foldRBQ_NtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryuNCNvMs0_NtNtB2p_4repo10repositoryNtB3e_10Repository12explode_pack0NCINvNvBX_8for_each4callB2l_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB2l_E14extend_trustedINtB1N_3MapBF_B36_EE0E0E0EB2p_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.v, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !487
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENCINvMsa_NtNtB1Y_4repo4packNtB2P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0ENtNtNtBa_6traits8iterator8Iterator4foldyNCINvNtB8_7flatten11flatten_oneINtNtBc_6option6OptionyEyNCINvXsC_NtB4d_5accumyNtB5Q_3Sum3sumINtB4S_7FlatMapBX_B5i_B2G_EE0E0EB1Y_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB2f_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionyEyNCINvMsa_NtNtB1r_4repo4packNtB45_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB31_7flatten11flatten_oneB3x_yNCINvXsC_NtB2d_5accumyNtB68_3Sum3sumINtB5t_7FlatMapBF_B3x_B3W_EE0E0E0EB1r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.ad, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %spec.select.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i ]
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %.val11.i = load i64, ptr %i.g, align 8, !noundef !5 ; 3 uses
  %.not.i.i = icmp eq i64 %.val11.i, 0
  br i1 %.not.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 64 ; 3 uses
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !500, !noundef !5
  %i.k = getelementptr i8, ptr %.val.i, i64 32
  %.val3.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !500, !noundef !5
  %i.l = add i64 %.val3.i.i.i.i.i, %.val.i.i.i.i.i ; 3 uses
  %i.m = icmp eq i64 %.val11.i, 1
  br i1 %i.m, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %.val11.i, 288230376151711743    ; 4 uses
  %xtraiter = and i64 %i.n, 288230376151711743
  %i.o = icmp eq i64 %xtraiter, 1
  br i1 %i.o, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.n, 288230376151711742
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.x, %bb.f ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.l, %.new ], [ %..i.i.i.i.i.i.i.i.i.1, %bb.f ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.i.i.i.i ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %.val.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noundef !5
  %i.r = getelementptr i8, ptr %i.p, i64 32
  %.val11.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noundef !5
  %i.s = add i64 %.val11.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %..i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.s, i64 %.sroa.02.0.i.i.i.i.i.i)
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.i.i.i.i ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 88
  %.val.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !noundef !5
  %i.v = getelementptr i8, ptr %i.t, i64 96
  %.val11.i.i.i.i.i.i.1 = load i64, ptr %i.v, align 8, !noundef !5
  %i.w = add i64 %.val11.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.1
  %..i.i.i.i.i.i.i.i.i.1 = tail call noundef i64 @llvm.umax.i64(i64 %i.w, i64 %..i.i.i.i.i.i.i.i.i) ; 3 uses
  %i.x = add nuw i64 %.sroa.04.0.i.i.i.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa, label %bb.f

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = trunc i64 %i.n to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i

.epil.preheader:                                  ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.x, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ %i.l, %bb.e ], [ %..i.i.i.i.i.i.i.i.i.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.i.i.i.i.epil.init ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %.val.i.i.i.i.i.i.epil = load i64, ptr %i.z, align 8, !noundef !5
  %i.aa = getelementptr i8, ptr %i.y, i64 32
  %.val11.i.i.i.i.i.i.epil = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ab = add i64 %.val11.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.epil
  %..i.i.i.i.i.i.i.i.i.epil = tail call noundef i64 @llvm.umax.i64(i64 %i.ab, i64 %.sroa.02.0.i.i.i.i.i.i.epil.init)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i: ; preds = %.epil.preheader, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa, %bb.d, %bb.c
  %i.ac = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ], [ %..i.i.i.i.i.i.i.i.i.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa ], [ %..i.i.i.i.i.i.i.i.i.epil, %.epil.preheader ]
  %spec.select.i.i.i = add i64 %i.ac, %.sroa.02.0.i ; 2 uses
  %i.ad = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.e
  br i1 %i.ae, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB2f_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionyEyNCINvMsa_NtNtB1r_4repo4packNtB45_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB31_7flatten11flatten_oneB3x_yNCINvXsC_NtB2d_5accumyNtB68_3Sum3sumINtB5t_7FlatMapBF_B3x_B3W_EE0E0E0EB1r_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB2f_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionyEyNCINvMsa_NtNtB1r_4repo4packNtB45_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB31_7flatten11flatten_oneB3x_yNCINvXsC_NtB2d_5accumyNtB68_3Sum3sumINtB5t_7FlatMapBF_B3x_B3W_EE0E0E0EB1r_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %spec.select.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB2a_10Repository24find_duplicate_snapshots00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3E_8for_each4callTB1n_Ahj14_ENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB53_7HashMapB1n_B4M_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3I_7collect6ExtendB4H_E6extendBN_E0E0EB2e_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [21 x i8], align 1                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [21 x i8], align 1                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !65, !noundef !5
  %i.k = icmp eq ptr %i.f, %i.h
  br i1 %i.k, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_TBQ_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB3d_10Repository24find_duplicate_snapshots00NCINvNvB1t_8for_each4callB2R_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5j_7HashMapBQ_B2V_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB2R_E6extendINtB2j_3MapBF_B33_EE0E0E0EB3h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs1xwejQucwHj_5alloc6string6StringTBV_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1T_10Repository24find_duplicate_snapshots00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4t_7HashMapBV_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3x_7collect6ExtendB1x_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1J_EE0E0E0B1X_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.z, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs1xwejQucwHj_5alloc6string6StringTBV_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1T_10Repository24find_duplicate_snapshots00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4t_7HashMapBV_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3x_7collect6ExtendB1x_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1J_EE0E0E0B1X_.exit.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !506
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !513
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r), !noalias !515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !513
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !516, !noalias !517, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !516, !noalias !517, !noundef !5
  invoke void @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex25compute_snapshot_checksum(ptr noalias nofree noundef nonnull sret([21 x i8]) align 1 captures(none) dereferenceable(21) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.e unwind label %.loopexit.i, !noalias !515

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #30
          to label %bb.i unwind label %bb.h, !noalias !515

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.c, align 1, !range !4, !noalias !513, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs1xwejQucwHj_5alloc6string6StringTBV_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1T_10Repository24find_duplicate_snapshots00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4t_7HashMapBV_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3x_7collect6ExtendB1x_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1J_EE0E0E0B1X_.exit.i, label %bb.f, !prof !518

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #32
          to label %bb.g unwind label %.loopexit.split-lp.i, !noalias !515

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !515
  unreachable

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs1xwejQucwHj_5alloc6string6StringTBV_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1T_10Repository24find_duplicate_snapshots00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4t_7HashMapBV_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3x_7collect6ExtendB1x_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1J_EE0E0E0B1X_.exit.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef nonnull align 1 dereferenceable(20) %i.p, i64 20, i1 false), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 24, i1 false), !noalias !519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !520
  call void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([21 x i8]) align 1 captures(none) dereferenceable(21) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(20) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !506
  %i.z = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.o
  br i1 %i.aa, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_TBQ_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB3d_10Repository24find_duplicate_snapshots00NCINvNvB1t_8for_each4callB2R_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5j_7HashMapBQ_B2V_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB2R_E6extendINtB2j_3MapBF_B33_EE0E0E0EB3h_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_TBQ_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB3d_10Repository24find_duplicate_snapshots00NCINvNvB1t_8for_each4callB2R_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5j_7HashMapBQ_B2V_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB2R_E6extendINtB2j_3MapBF_B33_EE0E0E0EB3h_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs1xwejQucwHj_5alloc6string6StringTBV_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1T_10Repository24find_duplicate_snapshots00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4t_7HashMapBV_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3x_7collect6ExtendB1x_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1J_EE0E0E0B1X_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1r_4repo10repositoryNtB2g_10Repository18compute_entry_diff0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3j_8for_each4callTTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtB1p_12FileMetadataERB1n_ENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5Q_7HashMapB4n_B5A_NtNtNtB4v_4hash6random11RandomStateEINtNtB3n_7collect6ExtendB4m_E6extendBN_E0E0EB1r_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diff0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB64_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 6
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !525
  store ptr %i.g, ptr %i.a, align 8, !noalias !534
  store ptr %i.h, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !534
  store ptr %i.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !534
  %i.j = call noundef align 8 ptr @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtNtCskuiImRAV2ip_9elfshaker7packidx12FileMetadataERNtB1H_9FileEntryNtNtNtBV_4hash6random11RandomStateE6insertB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g), !noalias !535 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !525
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diff0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB64_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diff0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB64_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1r_4repo10repositoryNtB2g_10Repository18compute_entry_diffs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4callTTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtB1p_12FileMetadataERB1n_ENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5S_7HashMapB4p_B5C_NtNtNtB4x_4hash6random11RandomStateEINtNtB3p_7collect6ExtendB4o_E6extendBN_E0E0EB1r_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diffs_0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB66_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 6
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !536
  store ptr %i.g, ptr %i.a, align 8, !noalias !545
  store ptr %i.h, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !545
  store ptr %i.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !545
  %i.j = call noundef align 8 ptr @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtNtCskuiImRAV2ip_9elfshaker7packidx12FileMetadataERNtB1H_9FileEntryNtNtNtBV_4hash6random11RandomStateE6insertB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g), !noalias !546 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !536
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diffs_0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB66_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diffs_0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB66_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufENCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsB1M_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callINtNtBc_6result6ResultAhj14_NtNtNtBc_2io5error5ErrorENCINvMsk_B12_INtB12_3VecB4q_E14extend_trustedBN_E0E0EB2t_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
end_hunk_1
begin_hunk_2_@_RNvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1F_NtB1F_9PackIndex23entry_refs_from_handlesB1d_E0EINtNtB6_6result6ResultzNtB1F_9PackErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1H_:bb.a
  br i1 %.not.i3.i.i.i.i.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.c, align 8, !alias.scope !861, !noalias !887
  %.sroa.516.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.516.0..8.val.sroa_idx.i.i.i.i.i, align 8, !alias.scope !861, !noalias !887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !892
  resume { ptr, i32 } %i.n

_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1G_NtB1G_9PackIndex23entry_refs_from_handlesB1e_E0EINtNtB7_6result6ResultzNtB1G_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB45_12try_for_each4callNtB1G_12FileEntryRefINtNtNtB7_3ops12control_flow11ControlFlowB5h_ENcNtB5B_5Break0E0B5B_EB1I_.exit.thread6: ; preds = %bb.c, %bb.d
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.c, align 8, !alias.scope !861, !noalias !887
  %.sroa.516.0..8.val.sroa_idx17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.516.0..8.val.sroa_idx17.i.i.i.i.i, align 8, !alias.scope !861, !noalias !887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !893
  br label %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1G_NtB1G_9PackIndex23entry_refs_from_handlesB1e_E0EINtNtB7_6result6ResultzNtB1G_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB45_12try_for_each4callNtB1G_12FileEntryRefINtNtNtB7_3ops12control_flow11ControlFlowB5h_ENcNtB5B_5Break0E0B5B_EB1I_.exit.thread.sink.split

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !877
  %i.o = icmp eq ptr %i.i, %i.e
  br i1 %i.o, label %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1G_NtB1G_9PackIndex23entry_refs_from_handlesB1e_E0EINtNtB7_6result6ResultzNtB1G_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB45_12try_for_each4callNtB1G_12FileEntryRefINtNtNtB7_3ops12control_flow11ControlFlowB5h_ENcNtB5B_5Break0E0B5B_EB1I_.exit.thread, label %bb.b

bb.h:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  br label %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1G_NtB1G_9PackIndex23entry_refs_from_handlesB1e_E0EINtNtB7_6result6ResultzNtB1G_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB45_12try_for_each4callNtB1G_12FileEntryRefINtNtNtB7_3ops12control_flow11ControlFlowB5h_ENcNtB5B_5Break0E0B5B_EB1I_.exit.thread.sink.split

_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1G_NtB1G_9PackIndex23entry_refs_from_handlesB1e_E0EINtNtB7_6result6ResultzNtB1G_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB45_12try_for_each4callNtB1G_12FileEntryRefINtNtNtB7_3ops12control_flow11ControlFlowB5h_ENcNtB5B_5Break0E0B5B_EB1I_.exit.thread.sink.split: ; preds = %bb.h, %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1G_NtB1G_9PackIndex23entry_refs_from_handlesB1e_E0EINtNtB7_6result6ResultzNtB1G_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB45_12try_for_each4callNtB1G_12FileEntryRefINtNtNtB7_3ops12control_flow11ControlFlowB5h_ENcNtB5B_5Break0E0B5B_EB1I_.exit.thread6
  %storemerge.ph = phi ptr [ null, %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1G_NtB1G_9PackIndex23entry_refs_from_handlesB1e_E0EINtNtB7_6result6ResultzNtB1G_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB45_12try_for_each4callNtB1G_12FileEntryRefINtNtNtB7_3ops12control_flow11ControlFlowB5h_ENcNtB5B_5Break0E0B5B_EB1I_.exit.thread6 ], [ %.sroa.4.0.copyload.i.i.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !877
  br label %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1G_NtB1G_9PackIndex23entry_refs_from_handlesB1e_E0EINtNtB7_6result6ResultzNtB1G_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB45_12try_for_each4callNtB1G_12FileEntryRefINtNtNtB7_3ops12control_flow11ControlFlowB5h_ENcNtB5B_5Break0E0B5B_EB1I_.exit.thread

_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1G_NtB1G_9PackIndex23entry_refs_from_handlesB1e_E0EINtNtB7_6result6ResultzNtB1G_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB45_12try_for_each4callNtB1G_12FileEntryRefINtNtNtB7_3ops12control_flow11ControlFlowB5h_ENcNtB5B_5Break0E0B5B_EB1I_.exit.thread: ; preds = %bb.g, %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1G_NtB1G_9PackIndex23entry_refs_from_handlesB1e_E0EINtNtB7_6result6ResultzNtB1G_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB45_12try_for_each4callNtB1G_12FileEntryRefINtNtNtB7_3ops12control_flow11ControlFlowB5h_ENcNtB5B_5Break0E0B5B_EB1I_.exit.thread.sink.split, %bb.a
  %storemerge = phi ptr [ null, %bb.a ], [ %storemerge.ph, %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1G_NtB1G_9PackIndex23entry_refs_from_handlesB1e_E0EINtNtB7_6result6ResultzNtB1G_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB45_12try_for_each4callNtB1G_12FileEntryRefINtNtNtB7_3ops12control_flow11ControlFlowB5h_ENcNtB5B_5Break0E0B5B_EB1I_.exit.thread.sink.split ], [ null, %bb.g ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1F_NtB1F_9PackIndex23entry_refs_from_handlesB1d_E0EINtNtB6_6result6ResultzNtB1F_9PackErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !65, !noundef !5
  %i.c = load i64, ptr %i.b, align 8, !range !208, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IteryENCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB1N_4Pack9open_packs_0EINtNtB6_6result6ResultzNtNtB1P_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 8 uses
  %.sroa.4.sroa.7.i.i.i.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.9.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !894, !noalias !897, !nonnull !5, !align !65, !noundef !5 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !907, !noalias !910, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %1, align 8, !alias.scope !907, !noalias !910 ; 2 uses
  %i.i = icmp eq ptr %.promoted.i.i.i, %i.h
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderEEB1m_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.525.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.512.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.17.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.172.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !913, !noalias !914, !nonnull !5, !align !65, !noundef !5 ; 2 uses
  %.val1.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !913, !noalias !914 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %i.o = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.p, %bb.t ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %i.p, ptr %1, align 8, !alias.scope !907, !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i)
  %.val5.i.i.i = load i64, ptr %i.o, align 8, !noalias !917
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.sroa.7.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !918
  %i.q = load ptr, ptr %.val.i.i.i.i, align 8, !noalias !918, !nonnull !5, !noundef !5
  %i.r = load i64, ptr %i.n, align 8, !noalias !918, !noundef !5
  call void @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs9open_fileRNtNtCsaL1QbXo9JQH_3std4path4PathEB6_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.r), !noalias !918
  %i.s = load i32, ptr %i.c, align 8, !range !921, !noalias !918, !noundef !5
  %i.t = trunc nuw i32 %i.s to i1
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !918, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !918
  br label %_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.thread.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.l, align 4, !range !23, !noalias !918, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !918
  store i32 %i.w, ptr %i.d, align 4, !noalias !918
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.x = load i64, ptr %.val1.i.i.i.i, align 8, !noalias !918, !noundef !5
  %i.y = add i64 %i.x, %.val5.i.i.i
  %i.z = invoke { i64, ptr } @_RNvXsc_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs3oUPovFnLWP_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d, i64 noundef 0, i64 noundef %i.y)
          to label %bb.e unwind label %bb.q, !noalias !918 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = extractvalue { i64, ptr } %i.z, 1
  %.val35.i.i.i.i.i = load i32, ptr %i.d, align 4, !range !23, !noalias !918, !noundef !5
  %i.ad = call noundef i32 @close(i32 noundef %.val35.i.i.i.i.i) #28, !noalias !918 ; 0 uses
  br label %_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.thread.i.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !918
  %i.ae = load i32, ptr %i.d, align 4, !range !23, !noalias !918, !noundef !5
  call void @_RNvMNtNtCsfwHX9XeyMnn_4zstd6stream4readINtB2_7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEE3newCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, i32 noundef %i.ae), !noalias !918
  %i.af = load i64, ptr %i.a, align 8, !range !82, !noalias !918, !noundef !5 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 2
  %i.ah = load ptr, ptr %i.m, align 8, !noalias !918 ; 2 uses
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !918
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.512.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.525.0..sroa_idx.i.i.i.i.i, i64 56, i1 false), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !918
  store i64 %i.af, ptr %i.b, align 8, !noalias !918
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !918
  %i.ai = invoke noundef ptr @_RNvMs0_NtNtCsfwHX9XeyMnn_4zstd6stream3rawNtB5_7Decoder13set_parameter(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef 30)
          to label %bb.k unwind label %bb.j, !noalias !918 ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b) #30
          to label %common.resume.i.i.i.i unwind label %bb.p, !noalias !918

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.17.0..sroa_idx.i.i.i.i, align 8, !alias.scope !931, !noalias !918, !noundef !5 ; 2 uses
  %i.ak = icmp eq i64 %.val3.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !931, !noalias !918, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i.i.i.i.i.i.i, i64 noundef 1) #28, !noalias !932
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.al, align 8, !range !23, !alias.scope !931, !noalias !918, !noundef !5
  %i.am = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i.i.i) #28, !noalias !932 ; 0 uses
  %i.an = load i64, ptr %i.b, align 8, !range !24, !alias.scope !933, !noalias !918, !noundef !5
  %2 = trunc nuw i64 %i.an to i1
  br i1 %2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvXs6_CscCEFg35tJHG_9zstd_safeNtB5_4DCtxNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i.i.i.i.i), !noalias !918
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.h
  %.sroa.13.0.i.i.i.i = phi ptr [ %i.ah, %bb.h ], [ %i.ai, %bb.n ], [ %i.ai, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !918
  br label %_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.thread.i.i.i.i

bb.p:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !918
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.s, %bb.q, %bb.j
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.at, %bb.s ], [ %i.aj, %bb.j ], [ %lpad.thr_comm.split-lp.i.i.i.i.i, %bb.q ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.q:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i.i = load i32, ptr %i.d, align 4, !range !23, !noalias !918, !noundef !5
  %i.ap = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i) #28, !noalias !918 ; 0 uses
  br label %common.resume.i.i.i.i

_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.thread.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, %bb.f, %bb.c
  %.sroa.13.1.ph.i.i.i.i = phi ptr [ %.sroa.13.0.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i ], [ %i.ac, %bb.f ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !918
  br label %.loopexit.i.i.i

_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.i.i.i.i: ; preds = %bb.k
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !938 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !938 ; 2 uses
  %.sroa.13.0.copyload.i.i.i.i = load ptr, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i, align 8, !noalias !938 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.0..sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !938
  %.sroa.172.0.copyload.i.i.i.i = load i64, ptr %.sroa.172.0..sroa_idx.i.i.i.i, align 8, !noalias !938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !918
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %i.aq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, 2
  br i1 %i.aq, label %.loopexit.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRyINtNtBa_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderNtNtB1r_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2A_B1n_EENCNvMsa_B1p_NtB1p_4Pack9open_packs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IteryEB3p_EIB12_zB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5l_12try_for_each4callB1n_B3e_NcNtB3e_5Break0E0B3e_E0E0B1t_.exit.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.i.i.i.i, %_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.thread.i.i.i.i
  %.sroa.8.114.i.i.i.i = phi i64 [ -9223372036854775808, %_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.thread.i.i.i.i ], [ %.sroa.8.0.copyload.i.i.i.i, %_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.113.i.i.i.i = phi ptr [ %.sroa.13.1.ph.i.i.i.i, %_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.thread.i.i.i.i ], [ %.sroa.13.0.copyload.i.i.i.i, %_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.i.i.i.i ] ; 2 uses
  %i.ar = load i64, ptr %i.f, align 8, !range !112, !alias.scope !944, !noalias !947, !noundef !5
  %i.as = icmp eq i64 %i.ar, -2
  br i1 %i.as, label %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IteryENCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB1O_4Pack9open_packs_0EINtNtB7_6result6ResultzNtNtB1Q_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3y_12try_for_each4callNtB1O_10PackReaderINtNtNtB7_3ops12control_flow11ControlFlowB4K_ENcNtB52_5Break0E0B52_EB1S_.exit.thread61, label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IteryENCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB1O_4Pack9open_packs_0EINtNtB7_6result6ResultzNtNtB1Q_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3y_12try_for_each4callNtB1O_10PackReaderINtNtNtB7_3ops12control_flow11ControlFlowB4K_ENcNtB52_5Break0E0B52_EB1S_.exit.thread61 unwind label %bb.s, !noalias !947

bb.s:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.8.114.i.i.i.i, ptr %i.f, align 8, !alias.scope !902, !noalias !948
  %.sroa.4.sroa.6.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.13.113.i.i.i.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx.i.i.i.i, align 8, !alias.scope !902, !noalias !948
  %.sroa.4.sroa.7.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.sroa.7.0..8.val.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.sroa.7.i.i.i.i, i64 40, i1 false), !noalias !948
  br label %common.resume.i.i.i.i

_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IteryENCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB1O_4Pack9open_packs_0EINtNtB7_6result6ResultzNtNtB1Q_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3y_12try_for_each4callNtB1O_10PackReaderINtNtNtB7_3ops12control_flow11ControlFlowB4K_ENcNtB52_5Break0E0B52_EB1S_.exit.thread61: ; preds = %.loopexit.i.i.i, %bb.r
  store i64 %.sroa.8.114.i.i.i.i, ptr %i.f, align 8, !alias.scope !902, !noalias !948
  %.sroa.4.sroa.6.0..8.val.sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.13.113.i.i.i.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx6.i.i.i.i, align 8, !alias.scope !902, !noalias !948
  %.sroa.4.sroa.7.0..8.val.sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.sroa.7.0..8.val.sroa_idx8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.sroa.7.i.i.i.i, i64 40, i1 false), !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.7.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderEEB1m_.exit

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRyINtNtBa_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderNtNtB1r_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2A_B1n_EENCNvMsa_B1p_NtB1p_4Pack9open_packs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IteryEB3p_EIB12_zB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5l_12try_for_each4callB1n_B3e_NcNtB3e_5Break0E0B3e_E0E0B1t_.exit.i.i.i: ; preds = %_RNCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB7_4Pack9open_packs_0Bb_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.sroa.7.i.i.i.i, i64 40, i1 false), !alias.scope !949, !noalias !917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.7.i.i.i.i)
  %.not.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.t, label %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IteryENCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB1O_4Pack9open_packs_0EINtNtB7_6result6ResultzNtNtB1Q_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3y_12try_for_each4callNtB1O_10PackReaderINtNtNtB7_3ops12control_flow11ControlFlowB4K_ENcNtB52_5Break0E0B52_EB1S_.exit

bb.t:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRyINtNtBa_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderNtNtB1r_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2A_B1n_EENCNvMsa_B1p_NtB1p_4Pack9open_packs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IteryEB3p_EIB12_zB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5l_12try_for_each4callB1n_B3e_NcNtB3e_5Break0E0B3e_E0E0B1t_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  %i.au = icmp eq ptr %i.p, %i.h
  br i1 %i.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderEEB1m_.exit, label %bb.b

_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IteryENCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB1O_4Pack9open_packs_0EINtNtB7_6result6ResultzNtNtB1Q_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3y_12try_for_each4callNtB1O_10PackReaderINtNtNtB7_3ops12control_flow11ControlFlowB4K_ENcNtB52_5Break0E0B52_EB1S_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRyINtNtBa_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderNtNtB1r_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2A_B1n_EENCNvMsa_B1p_NtB1p_4Pack9open_packs_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IteryEB3p_EIB12_zB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB5l_12try_for_each4callB1n_B3e_NcNtB3e_5Break0E0B3e_E0E0B1t_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i.i.i, i64 40, i1 false), !noalias !894
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.656.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  store i64 %.sroa.01.0.copyload.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.172.0.copyload.i.i.i.i, ptr %.sroa.757.0..sroa_idx, align 8
  br label %bb.u

bb.u:                                             ; preds = %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IteryENCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB1O_4Pack9open_packs_0EINtNtB7_6result6ResultzNtNtB1Q_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3y_12try_for_each4callNtB1O_10PackReaderINtNtNtB7_3ops12control_flow11ControlFlowB4K_ENcNtB52_5Break0E0B52_EB1S_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderEEB1m_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderEEB1m_.exit: ; preds = %bb.t, %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IteryENCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB1O_4Pack9open_packs_0EINtNtB7_6result6ResultzNtNtB1Q_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3y_12try_for_each4callNtB1O_10PackReaderINtNtNtB7_3ops12control_flow11ControlFlowB4K_ENcNtB52_5Break0E0B52_EB1S_.exit.thread61, %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IteryENCNvMsa_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB1N_4Pack9open_packs_0EINtNtB6_6result6ResultzNtNtB1P_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !65, !noundef !5
  %i.c = load i64, ptr %i.b, align 8, !range !112, !noundef !5
  %.not = icmp eq i64 %i.c, -2
  %.val = load ptr, ptr %1, align 8, !nonnull !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %.sink = select i1 %.not, i64 %i.h, i64 0
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB2_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB6_6result6ResultAhj14_NtNtNtB6_2io5error5ErrorEEIB1M_zB2d_EENtNtNtB4_6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([21 x i8]) align 1 captures(none) dereferenceable(21) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [21 x i8], align 1                ; 6 uses
  %.sroa.5 = alloca [20 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !953
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !950, !noalias !955, !nonnull !5, !align !65, !noundef !5
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB12_2io5error5ErrorEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_folduNCINvXNtB2c_8adaptersINtB32_12GenericShuntBI_IBY_zB1F_EEB26_8try_folduNCINvNvB26_12try_for_each4callB1z_INtNtNtB12_3ops12control_flow11ControlFlowB1z_ENcNtB4C_5Break0E0B4C_E0IB4D_B4C_EECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([21 x i8]) align 1 captures(address) dereferenceable(21) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !955
  %i.e = load i8, ptr %i.b, align 1, !range !956, !noalias !953, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.e, 2
  br i1 %.not.i, label %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultAhj14_NtNtNtB7_2io5error5ErrorEEIB1N_zB2e_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB2Q_12try_for_each4callB28_INtNtNtB7_3ops12control_flow11ControlFlowB28_ENcNtB46_5Break0E0B46_ECskuiImRAV2ip_9elfshaker.exit.thread, label %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultAhj14_NtNtNtB7_2io5error5ErrorEEIB1N_zB2e_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB2Q_12try_for_each4callB28_INtNtNtB7_3ops12control_flow11ControlFlowB28_ENcNtB46_5Break0E0B46_ECskuiImRAV2ip_9elfshaker.exit

_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultAhj14_NtNtNtB7_2io5error5ErrorEEIB1N_zB2e_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB2Q_12try_for_each4callB28_INtNtNtB7_3ops12control_flow11ControlFlowB28_ENcNtB46_5Break0E0B46_ECskuiImRAV2ip_9elfshaker.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !953
  br label %bb.c

_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultAhj14_NtNtNtB7_2io5error5ErrorEEIB1N_zB2e_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB2Q_12try_for_each4callB28_INtNtNtB7_3ops12control_flow11ControlFlowB28_ENcNtB46_5Break0E0B46_ECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.5.0..sroa_idx, i64 20, i1 false), !noalias !950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !953
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultAhj14_NtNtNtB7_2io5error5ErrorEEIB1N_zB2e_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB2Q_12try_for_each4callB28_INtNtNtB7_3ops12control_flow11ControlFlowB28_ENcNtB46_5Break0E0B46_ECskuiImRAV2ip_9elfshaker.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.g, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.5, i64 20, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultAhj14_NtNtNtB7_2io5error5ErrorEEIB1N_zB2e_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB2Q_12try_for_each4callB28_INtNtNtB7_3ops12control_flow11ControlFlowB28_ENcNtB46_5Break0E0B46_ECskuiImRAV2ip_9elfshaker.exit, %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultAhj14_NtNtNtB7_2io5error5ErrorEEIB1N_zB2e_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB2Q_12try_for_each4callB28_INtNtNtB7_3ops12control_flow11ControlFlowB28_ENcNtB46_5Break0E0B46_ECskuiImRAV2ip_9elfshaker.exit.thread, %bb.b
  %storemerge = phi i8 [ 1, %bb.b ], [ 0, %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultAhj14_NtNtNtB7_2io5error5ErrorEEIB1N_zB2e_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB2Q_12try_for_each4callB28_INtNtNtB7_3ops12control_flow11ControlFlowB28_ENcNtB46_5Break0E0B46_ECskuiImRAV2ip_9elfshaker.exit.thread ], [ 0, %_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultAhj14_NtNtNtB7_2io5error5ErrorEEIB1N_zB2e_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB2Q_12try_for_each4callB28_INtNtNtB7_3ops12control_flow11ControlFlowB28_ENcNtB46_5Break0E0B46_ECskuiImRAV2ip_9elfshaker.exit ]
  store i8 %storemerge, ptr %0, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB2_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB6_6result6ResultAhj14_NtNtNtB6_2io5error5ErrorEEIB1M_zB2d_EENtNtNtB4_6traits8iterator8Iterator9size_hintCskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !65, !noundef !5
  %i.c = load ptr, ptr %i.b, align 8, !noundef !5
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.f = ptrtoint ptr %.val1 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB2_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB6_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2b_5error5ErrorEEIB1M_zB2Z_EENtNtNtB4_6traits8iterator8Iterator4nextB2d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 6 uses
end_hunk_2
