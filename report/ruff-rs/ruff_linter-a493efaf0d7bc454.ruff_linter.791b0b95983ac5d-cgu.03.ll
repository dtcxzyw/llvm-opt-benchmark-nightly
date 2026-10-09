Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.03?download=true
inline.NumInlined: 4272
inline.NumDeleted: 1863
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvMs1_NtCsEhZmuQNqkz_11ruff_linter10directivesNtB5_13TodoDirective12from_comment:bb.a
  %i.fb = icmp sgt i8 %i.fa, -65
  br i1 %i.fb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %.split.i72, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsEhZmuQNqkz_11ruff_linter.exit
  %i.fc = sub nuw i64 %2, %i.ew
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  br label %bb.b

bb.aj:                                            ; preds = %bb.ah, %.split.i72
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ew, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCscdodAO9FK5_5alloc6string6StringE18disconnect_sendersCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull align 128 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCscdodAO9FK5_5alloc6string6StringE10disconnectCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !5156)
  %i.c = load i64, ptr %i.b, align 8, !range !7, !alias.scope !5156, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsEhZmuQNqkz_11ruff_linter.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5156
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !5156, !nonnull !6, !align !15, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !8, !alias.scope !5156, !noundef !6
  store ptr %i.f, ptr %i.a, align 8, !noalias !5156
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !5156
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #55
          to label %bb.d unwind label %bb.c, !noalias !5156

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #57
          to label %common.resume unwind label %bb.e, !noalias !5156

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !5156
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.u, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !5156, !nonnull !6, !align !15, !noundef !6 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !8, !alias.scope !5156, !noundef !6 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !8, !noundef !6
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  br i1 %i.s, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsEhZmuQNqkz_11ruff_linter.exit
  store i8 1, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10disconnect(ptr noalias noundef align 8 dereferenceable(48) %i.t)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsEhZmuQNqkz_11ruff_linter(ptr nonnull %i.m, i8 %i.o) #57
          to label %common.resume unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10disconnect(ptr noalias noundef align 8 dereferenceable(48) %i.v)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsEhZmuQNqkz_11ruff_linter.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.y = and i64 %i.x, 9223372036854775807
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.aa = call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.aa, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i8 1, ptr %i.w monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ab = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsEhZmuQNqkz_11ruff_linter.exit, !prof !9

bb.m:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.m
  %.sroa.0.0 = xor i1 %i.s, true
  ret i1 %.sroa.0.0

bb.n:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 4 ptr @_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine11first_token(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5159)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !5159, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5159, !nonnull !6, !align !36, !noundef !6 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !noalias !5159, !noundef !6 ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noalias !5159, !noundef !6 ; 3 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !5159, !noundef !6 ; 2 uses
  %i.k = icmp ult i32 %i.g, %i.d
  %.not.i = icmp ult i64 %i.j, %i.h
  %or.cond.i = or i1 %i.k, %.not.i
  br i1 %or.cond.i, label %bb.b, label %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #55, !noalias !5159
  unreachable

_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !5159, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.e
  %.not = icmp eq i32 %i.g, %i.d
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %i.n
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine14tokens_trimmed(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5166)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !5166, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5166, !nonnull !6, !align !36, !noundef !6 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !noalias !5166, !noundef !6 ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noalias !5166, !noundef !6 ; 3 uses
  %i.h = zext i32 %i.g to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !5166, !noundef !6 ; 2 uses
  %i.k = icmp ult i32 %i.g, %i.d
  %.not.i = icmp ult i64 %i.j, %i.h
  %or.cond.i = or i1 %i.k, %.not.i
  br i1 %or.cond.i, label %bb.b, label %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #55, !noalias !5166
  unreachable

_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !5166, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = sub nuw nsw i64 %i.h, %i.e               ; 6 uses
  %.idx14 = mul nuw nsw i64 %i.e, 12              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx14 ; 2 uses
  %.idx = mul nuw nsw i64 %i.h, 12                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 2 uses
  %gepdiff = sub nuw nsw i64 %.idx, %.idx14       ; 2 uses
  %i.q = udiv exact i64 %gepdiff, 12
  %i.r = icmp eq i32 %i.d, %i.g
  br i1 %i.r, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit, %bb.c
  %.sroa.02.08.i = phi i64 [ %i.w, %bb.c ], [ 0, %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit ] ; 5 uses
  %i.s = phi ptr [ %i.v, %bb.c ], [ %i.o, %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit ] ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val.i = load i8, ptr %i.t, align 4, !range !19, !noalias !5167, !noundef !6
  %i.u = add nsw i8 %.val.i, -17
  %switch.i.i = icmp ult i8 %i.u, -5
  br i1 %switch.i.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.02.08.i, 1
  %i.x = icmp eq ptr %i.v, %i.p
  br i1 %i.x, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit.thread, label %.lr.ph.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit: ; preds = %.lr.ph.i
  %i.y = icmp samesign ult i64 %.sroa.02.08.i, %i.q
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ugt i64 %.sroa.02.08.i, %i.n
  br i1 %i.z, label %bb.e, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit.thread, !prof !5168

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit.thread: ; preds = %bb.c, %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit
  %.sroa.0.0.i29 = phi i64 [ %.sroa.02.08.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit ], [ %i.n, %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit ], [ %i.n, %bb.c ] ; 2 uses
  %i.aa = sub nuw nsw i64 %i.n, %.sroa.0.0.i29    ; 2 uses
  %.idx15 = mul nuw nsw i64 %.sroa.0.0.i29, 12    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx15 ; 2 uses
  %gepdiff16 = sub nuw nsw i64 %gepdiff, %.idx15
  %i.ac = udiv exact i64 %gepdiff16, 12           ; 2 uses
  %i.ad = add nuw nsw i64 %.idx14, %.idx15
  %.not1737 = icmp samesign eq i64 %i.ad, %.idx
  br i1 %.not1737, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmeds_0EB10_.exit.thread, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds i8, ptr %i.af, i64 -12 ; 2 uses
  %.not17 = icmp eq ptr %i.ab, %i.ae
  br i1 %.not17, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmeds_0EB10_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit.thread, %bb.d
  %.sroa.03.0.i38 = phi i64 [ %i.ag, %bb.d ], [ %i.ac, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit.thread ] ; 4 uses
  %i.af = phi ptr [ %i.ae, %bb.d ], [ %i.p, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit.thread ] ; 2 uses
  %i.ag = add nsw i64 %.sroa.03.0.i38, -1         ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 -4
  %.val.i9 = load i8, ptr %i.ah, align 4, !range !19, !noalias !5169, !noundef !6
  %i.ai = add nsw i8 %.val.i9, -17
  %switch.i.i10 = icmp ult i8 %i.ai, -5
  br i1 %switch.i.i10, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmeds_0EB10_.exit, label %bb.d

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmeds_0EB10_.exit: ; preds = %.lr.ph
  %i.aj = icmp ult i64 %i.ag, %i.ac
  tail call void @llvm.assume(i1 %i.aj)
  %.not = icmp ugt i64 %.sroa.03.0.i38, %i.aa
  br i1 %.not, label %bb.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmeds_0EB10_.exit.thread, !prof !5170

bb.e:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.02.08.i, i64 noundef %i.n, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221) #55
  unreachable

bb.f:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmeds_0EB10_.exit
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.0.i38, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #55
  unreachable

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmeds_0EB10_.exit.thread: ; preds = %bb.d, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit.thread, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmeds_0EB10_.exit
  %spec.select.i32 = phi i64 [ %.sroa.03.0.i38, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmeds_0EB10_.exit ], [ 0, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines16LogicalLineTokenENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs1_BS_NtBS_11LogicalLine14tokens_trimmed0EB10_.exit.thread ], [ 0, %bb.d ]
  %i.ak = insertvalue { ptr, i64 } poison, ptr %i.ab, 0
  %i.al = insertvalue { ptr, i64 } %i.ak, i64 %spec.select.i32, 1
  ret { ptr, i64 } %i.al
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i32 } @_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine18leading_whitespace(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !alias.scope !5181, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !alias.scope !5181, !nonnull !6, !align !36, !noundef !6 ; 2 uses
  %.val2 = load i32, ptr %1, align 4              ; 5 uses
  %i.b = load i32, ptr %.val1, align 4, !noalias !5182, !noundef !6 ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noalias !5182, !noundef !6 ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !5182, !noundef !6 ; 2 uses
  %i.i = icmp ult i32 %i.e, %i.b
  %.not.i.i = icmp ult i64 %i.h, %i.f
  %or.cond.i.i = or i1 %i.i, %.not.i.i
  br i1 %or.cond.i.i, label %bb.b, label %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit.i, !prof !43

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #55, !noalias !5182
  unreachable

_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit.i: ; preds = %bb.a
  %.not.i = icmp eq i32 %i.e, %i.b
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #55
  unreachable

bb.d:                                             ; preds = %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine6tokens.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !5182, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.c
  %i.m = load i32, ptr %i.l, align 4, !noundef !6 ; 5 uses
  %.not2.i = icmp ugt i32 %i.m, %.val2
  br i1 %.not2.i, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #55
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %.val.i = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val3.i = load i64, ptr %i.p, align 8, !noundef !6 ; 5 uses
  %i.q = zext i32 %i.m to i64                     ; 5 uses
  %i.r = zext i32 %.val2 to i64                   ; 5 uses
  %i.s = icmp eq i32 %i.m, 0
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not5.i.i.i = icmp ugt i64 %.val3.i, %i.q
  br i1 %.not5.i.i.i, label %bb.i, label %.split.i.i.i

bb.h:                                             ; preds = %bb.i, %.split.i.i.i, %bb.f
  %i.t = icmp eq i32 %.val2, 0
  br i1 %i.t, label %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine11text_before.exit, label %bb.j

.split.i.i.i:                                     ; preds = %bb.g
  %i.u = icmp eq i64 %.val3.i, %i.q
  br i1 %i.u, label %bb.h, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.q
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !5183, !noundef !6
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %bb.h, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.j:                                             ; preds = %bb.h
  %.not6.i.i.i = icmp ugt i64 %.val3.i, %i.r
  br i1 %.not6.i.i.i, label %bb.k, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.j
  %i.y = icmp eq i64 %.val3.i, %i.r
  br i1 %i.y, label %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine11text_before.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.r
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !5183, !noundef !6
  %i.ab = icmp sgt i8 %i.aa, -65
  br i1 %i.ab, label %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine11text_before.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i: ; preds = %bb.k, %.split7.i.i.i, %bb.i, %.split.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val3.i, i64 noundef %i.q, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #55
  unreachable

_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine11text_before.exit: ; preds = %bb.h, %.split7.i.i.i, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.q ; 4 uses
  %.sroa.6.0.extract.trunc.i.i.i = sub nuw i32 %.val2, %i.m
  %i.ad = icmp eq i32 %.val2, %i.m
  br i1 %i.ad, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RNvMs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB5_11LogicalLine11text_before.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.r
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.preheader.i
  %.sroa.01.027.i = phi i64 [ %.sroa.01.1.i, %bb.p ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.03.026.i = phi i1 [ %.sroa.03.1.i, %bb.p ], [ false, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.09.025.i = phi i32 [ %.sroa.09.1.i, %bb.p ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.5.024.i = phi ptr [ %.sroa.5.3.ph.i, %bb.p ], [ %i.ae, %.lr.ph.preheader.i ] ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.5.024.i, i64 -1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !5184, !noalias !5185, !noundef !6 ; 3 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.l, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i: ; preds = %.lr.ph.i
  %i.ai = icmp ne ptr %i.ac, %i.af
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds i8, ptr %.sroa.5.024.i, i64 -2 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !5184, !noalias !5185, !noundef !6 ; 3 uses
  %i.al = and i8 %i.ak, 31
  %i.am = zext nneg i8 %i.al to i32
  %i.an = icmp slt i8 %i.ak, -64
  br i1 %i.an, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %i.ao = zext nneg i8 %i.ag to i32
  br label %bb.o

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i
  %i.ap = icmp ne ptr %i.ac, %i.aj
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds i8, ptr %.sroa.5.024.i, i64 -3 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !5184, !noalias !5185, !noundef !6 ; 3 uses
  %i.as = and i8 %i.ar, 15
  %i.at = zext nneg i8 %i.as to i32
  %i.au = icmp slt i8 %i.ar, -64
  br i1 %i.au, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i, label %bb.n

bb.m:                                             ; preds = %bb.n, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i
  %.sroa.5.1.i = phi ptr [ %.sroa.5.2.i, %bb.n ], [ %i.aj, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i ]
  %.sroa.010.0.i.i = phi i32 [ %i.bl, %bb.n ], [ %i.am, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i ]
  %i.av = shl nuw nsw i32 %.sroa.010.0.i.i, 6
  %i.aw = and i8 %i.ag, 63
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax
  br label %bb.o

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i
  %i.az = icmp ne ptr %i.ac, %i.aq
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds i8, ptr %.sroa.5.024.i, i64 -4 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !5184, !noalias !5185, !noundef !6
  %i.bc = and i8 %i.bb, 7
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 6
  %i.bf = and i8 %i.ar, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i
  %.sroa.5.2.i = phi ptr [ %i.ba, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i ], [ %i.aq, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i ]
  %.sroa.010.1.i.i = phi i32 [ %i.bh, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i ], [ %i.at, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i ]
end_hunk_0
