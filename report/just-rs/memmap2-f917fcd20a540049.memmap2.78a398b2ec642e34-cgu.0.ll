Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/memmap2-f917fcd20a540049.memmap2.78a398b2ec642e34-cgu.0?download=true
inline.NumInlined: 84
inline.NumDeleted: 32
begin_hunk_0_@_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner7map_mut:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !45
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.m, align 8, !alias.scope !45
  br label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner3new.exit

bb.d:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i
  %i.n = tail call noundef ptr @__errno_location() #14
  %i.o = load i32, ptr %i.n, align 4, !noalias !45, !noundef !4
  %i.p = load atomic ptr, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !45
  %.not.i.i = icmp eq ptr %i.p, @2
  br i1 %.not.i.i, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !45
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.e, %bb.d
  %i.q = sext i32 %i.o to i64
  %i.r = shl nsw i64 %i.q, 32
  %i.s = or disjoint i64 %i.r, 2
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !45
  br label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner3new.exit

_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner3new.exit: ; preds = %bb.c, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i
  %storemerge.i = phi i64 [ 0, %bb.c ], [ 1, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !45
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner8map_copy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %. = select i1 %4, i32 32770, i32 2             ; 2 uses
  %i.a = or disjoint i32 %., 16384
  %.sroa.01.0 = select i1 %5, i32 %i.a, i32 %.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.b = load atomic i64, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8, !noalias !48 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i: ; preds = %bb.a
  %i.d = tail call noundef i64 @sysconf(i32 noundef 30) #14, !noalias !48 ; 3 uses
  store atomic i64 %i.d, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8, !noalias !48
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i

bb.b:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !48
  unreachable

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i: ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i, %bb.a
  %.sroa.0.0.i3.i = phi i64 [ %i.d, %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i ], [ %i.b, %bb.a ]
  %i.f = urem i64 %3, %.sroa.0.0.i3.i             ; 3 uses
  %i.g = add i64 %i.f, %1
  %..i.i.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.g, i64 1)
  %i.h = sub nuw i64 %3, %i.f
  %i.i = tail call noundef ptr @mmap64(ptr noundef null, i64 noundef %..i.i.i, i32 noundef 3, i32 noundef range(i32 1, -66584576) %.sroa.01.0, i32 noundef %2, i64 noundef %i.h) #14, !noalias !48 ; 2 uses
  %i.j = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.m, align 8, !alias.scope !48
  br label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner3new.exit

bb.d:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i
  %i.n = tail call noundef ptr @__errno_location() #14
  %i.o = load i32, ptr %i.n, align 4, !noalias !48, !noundef !4
  %i.p = load atomic ptr, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !48
  %.not.i.i = icmp eq ptr %i.p, @2
  br i1 %.not.i.i, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !48
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.e, %bb.d
  %i.q = sext i32 %i.o to i64
  %i.r = shl nsw i64 %i.q, 32
  %i.s = or disjoint i64 %i.r, 2
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !48
  br label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner3new.exit

_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner3new.exit: ; preds = %bb.c, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i
  %storemerge.i = phi i64 [ 0, %bb.c ], [ 1, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !48
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner8map_exec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %. = select i1 %4, i32 32769, i32 1             ; 2 uses
  %i.a = or disjoint i32 %., 16384
  %.sroa.01.0 = select i1 %5, i32 %i.a, i32 %.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.b = load atomic i64, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8, !noalias !51 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i: ; preds = %bb.a
  %i.d = tail call noundef i64 @sysconf(i32 noundef 30) #14, !noalias !51 ; 3 uses
  store atomic i64 %i.d, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8, !noalias !51
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i

bb.b:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !51
  unreachable

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i: ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i, %bb.a
  %.sroa.0.0.i3.i = phi i64 [ %i.d, %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i ], [ %i.b, %bb.a ]
  %i.f = urem i64 %3, %.sroa.0.0.i3.i             ; 3 uses
  %i.g = add i64 %i.f, %1
  %..i.i.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.g, i64 1)
  %i.h = sub nuw i64 %3, %i.f
  %i.i = tail call noundef ptr @mmap64(ptr noundef null, i64 noundef %..i.i.i, i32 noundef 5, i32 noundef range(i32 1, -66584576) %.sroa.01.0, i32 noundef %2, i64 noundef %i.h) #14, !noalias !51 ; 2 uses
  %i.j = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.m, align 8, !alias.scope !51
  br label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner3new.exit

bb.d:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i
  %i.n = tail call noundef ptr @__errno_location() #14
  %i.o = load i32, ptr %i.n, align 4, !noalias !51, !noundef !4
  %i.p = load atomic ptr, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !51
  %.not.i.i = icmp eq ptr %i.p, @2
  br i1 %.not.i.i, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !51
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.e, %bb.d
  %i.q = sext i32 %i.o to i64
  %i.r = shl nsw i64 %i.q, 32
  %i.s = or disjoint i64 %i.r, 2
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !51
  br label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner3new.exit

_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner3new.exit: ; preds = %bb.c, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i
  %storemerge.i = phi i64 [ 0, %bb.c ], [ 1, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !51
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCsam9QwBXndzI_7memmap26adviceNtB2_6Advice12is_supported(i32 noundef range(i32 0, 101) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i32 @madvise(ptr noundef null, i64 noundef 0, i32 noundef %0) #14
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs0_Csam9QwBXndzI_7memmap2NtB5_11MmapOptions12validate_len(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 33) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi ptr [ %i.c, %bb.c ], [ %i.b, %bb.b ]
  %.sroa.0.0 = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_Csam9QwBXndzI_7memmap2NtB5_11MmapOptions8map_anon(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !56, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %i.b, i64 %i.d, i64 0    ; 2 uses
  %i.e = icmp slt i64 %.sroa.0.0, 0               ; 2 uses
  br i1 %i.e, label %4, label %2

2:                                                ; preds = %bb.a
  %3 = inttoptr i64 %.sroa.0.0 to ptr
  br label %_RNvMs0_Csam9QwBXndzI_7memmap2NtB5_11MmapOptions12validate_len.exit

4:                                                ; preds = %bb.a
  %5 = tail call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 33) #16
  br label %_RNvMs0_Csam9QwBXndzI_7memmap2NtB5_11MmapOptions12validate_len.exit

_RNvMs0_Csam9QwBXndzI_7memmap2NtB5_11MmapOptions12validate_len.exit: ; preds = %2, %4
  %.sroa.3.0.i = phi ptr [ %5, %4 ], [ %3, %2 ]   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMs0_Csam9QwBXndzI_7memmap2NtB5_11MmapOptions12validate_len.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i, ptr %i.f, align 8
  br label %bb.h

bb.c:                                             ; preds = %_RNvMs0_Csam9QwBXndzI_7memmap2NtB5_11MmapOptions12validate_len.exit
  %6 = ptrtoint ptr %.sroa.3.0.i to i64           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.h = load i8, ptr %i.g, align 2, !range !57, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.k = load i8, ptr %i.j, align 1, !range !57, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i8, ptr %i.l, align 8, !range !57, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.p = load i8, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.r = load i8, ptr %i.q, align 4, !range !57, !noundef !4
  %..i = select i1 %i.i, i32 131106, i32 34
  %i.s = zext nneg i8 %i.k to i32
  %i.t = shl nuw nsw i32 %i.s, 15
  %.sroa.01.0.i = or disjoint i32 %i.t, %..i      ; 2 uses
  %i.u = zext i8 %i.p to i32
  %i.v = shl i32 %i.u, 26
  %i.w = zext nneg i8 %i.r to i32
  %.sroa.03.0.i = shl nuw nsw i32 %i.w, 14
  %i.x = or disjoint i32 %i.v, %.sroa.01.0.i
  %i.y = or disjoint i32 %i.x, 262144
  %i.z = select i1 %i.n, i32 %i.y, i32 %.sroa.01.0.i
  %i.aa = or disjoint i32 %i.z, %.sroa.03.0.i
  %i.ab = load atomic i64, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8, !noalias !58
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i.i, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i.i

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i.i: ; preds = %bb.c
  %i.ad = tail call noundef i64 @sysconf(i32 noundef 30) #14, !noalias !58 ; 2 uses
  store atomic i64 %i.ad, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8, !noalias !58
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i.i

bb.d:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !58
  unreachable

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i.i: ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i.i, %bb.c
  %..i.i.i.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %6, i64 1)
  %i.af = tail call noundef ptr @mmap64(ptr noundef null, i64 noundef %..i.i.i.i, i32 noundef 3, i32 noundef range(i32 1, -66584576) %i.aa, i32 noundef -1, i64 noundef 0) #14, !noalias !58 ; 2 uses
  %i.ag = icmp eq ptr %i.af, inttoptr (i64 -1 to ptr)
  br i1 %i.ag, label %bb.e, label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner8map_anon.exit

bb.e:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i.i
  %i.ah = tail call noundef ptr @__errno_location() #14
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !58, !noundef !4
  %i.aj = load atomic ptr, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !58
  %.not.i.i.i = icmp eq ptr %i.aj, @2
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !58
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ak = sext i32 %i.ai to i64
  %i.al = shl nsw i64 %i.ak, 32
  %i.am = or disjoint i64 %i.al, 2
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  br label %bb.h

_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner8map_anon.exit: ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %6, ptr %i.aq, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner8map_anon.exit, %bb.b
  %storemerge14 = phi i64 [ 1, %bb.b ], [ 0, %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner8map_anon.exit ], [ 1, %bb.g ]
  store i64 %storemerge14, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMs1_Csam9QwBXndzI_7memmap2NtB5_4Mmap12advise_range(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 101) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp ugt i64 %2, %.val1
  %i.c = icmp ugt i64 %3, %.val1
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner6advise.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i: ; preds = %bb.b
  %i.f = tail call noundef i64 @sysconf(i32 noundef 30) #14 ; 3 uses
  store atomic i64 %i.f, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i: ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i, %bb.b
  %.sroa.0.0.i2.i = phi i64 [ %i.f, %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i ], [ %i.d, %bb.b ]
  %i.h = ptrtoint ptr %.val to i64
  %i.i = add i64 %2, %i.h
  %i.j = urem i64 %i.i, %.sroa.0.0.i2.i           ; 2 uses
  %i.k = sub i64 %2, %i.j
  %i.l = add i64 %i.j, %3
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.k
  %i.n = tail call noundef i32 @madvise(ptr noundef %i.m, i64 noundef %i.l, i32 noundef range(i32 0, 101) %1) #14
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner6advise.exit, label %bb.d

bb.c:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #15
  unreachable

bb.d:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i
  %i.p = tail call noundef ptr @__errno_location() #14
  %i.q = load i32, ptr %i.p, align 4, !noundef !4
  %i.r = load atomic ptr, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i.i = icmp eq ptr %i.r, @2
  br i1 %.not.i.i, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.e, %bb.d
  %i.s = sext i32 %i.q to i64
  %i.t = shl nsw i64 %i.s, 32
  %i.u = or disjoint i64 %i.t, 2
  %i.v = inttoptr i64 %i.u to ptr
  br label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner6advise.exit

_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner6advise.exit: ; preds = %bb.a, %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i
  %.sroa.0.0.i = phi ptr [ null, %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i ], [ %i.v, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i ], [ inttoptr (i64 85899345923 to ptr), %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMs1_Csam9QwBXndzI_7memmap2NtB5_4Mmap16unchecked_advise(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 4, 10) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.c = load atomic i64, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i: ; preds = %bb.a
  %i.e = tail call noundef i64 @sysconf(i32 noundef 30) #14 ; 3 uses
  store atomic i64 %i.e, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i: ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i, %bb.a
  %.sroa.0.0.i2.i = phi i64 [ %i.e, %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i ], [ %i.c, %bb.a ]
  %i.g = ptrtoint ptr %.val to i64
  %i.h = urem i64 %i.g, %.sroa.0.0.i2.i           ; 2 uses
  %i.i = sub i64 0, %i.h
  %i.j = add i64 %i.h, %i.b
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.i
  %i.l = tail call noundef i32 @madvise(ptr noundef %i.k, i64 noundef %i.j, i32 noundef range(i32 0, 101) %1) #14
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner6advise.exit, label %bb.c

bb.b:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #15
  unreachable

bb.c:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i
  %i.n = tail call noundef ptr @__errno_location() #14
  %i.o = load i32, ptr %i.n, align 4, !noundef !4
  %i.p = load atomic ptr, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i.i = icmp eq ptr %i.p, @2
  br i1 %.not.i.i, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.d, %bb.c
  %i.q = sext i32 %i.o to i64
  %i.r = shl nsw i64 %i.q, 32
  %i.s = or disjoint i64 %i.r, 2
  %i.t = inttoptr i64 %i.s to ptr
  br label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner6advise.exit

_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner6advise.exit: ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i
  %.sroa.0.0.i = phi ptr [ null, %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i ], [ %i.t, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMs1_Csam9QwBXndzI_7memmap2NtB5_4Mmap22unchecked_advise_range(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 4, 10) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp ugt i64 %2, %.val1
  %i.c = icmp ugt i64 %3, %.val1
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner6advise.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i: ; preds = %bb.b
  %i.f = tail call noundef i64 @sysconf(i32 noundef 30) #14 ; 3 uses
  store atomic i64 %i.f, ptr @_RNvNvNtCsam9QwBXndzI_7memmap22os9page_size9PAGE_SIZE.0 monotonic, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i

_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i: ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i, %bb.b
  %.sroa.0.0.i2.i = phi i64 [ %i.f, %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i ], [ %i.d, %bb.b ]
  %i.h = ptrtoint ptr %.val to i64
  %i.i = add i64 %2, %i.h
  %i.j = urem i64 %i.i, %.sroa.0.0.i2.i           ; 2 uses
  %i.k = sub i64 %2, %i.j
  %i.l = add i64 %i.j, %3
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.k
  %i.n = tail call noundef i32 @madvise(ptr noundef %i.m, i64 noundef %i.l, i32 noundef range(i32 0, 101) %1) #14
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner6advise.exit, label %bb.d

bb.c:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.i
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #15
  unreachable

bb.d:                                             ; preds = %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i
  %i.p = tail call noundef ptr @__errno_location() #14
  %i.q = load i32, ptr %i.p, align 4, !noundef !4
  %i.r = load atomic ptr, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i.i = icmp eq ptr %i.r, @2
  br i1 %.not.i.i, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.e, %bb.d
  %i.s = sext i32 %i.q to i64
  %i.t = shl nsw i64 %i.s, 32
  %i.u = or disjoint i64 %i.t, 2
  %i.v = inttoptr i64 %i.u to ptr
  br label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner6advise.exit

_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner6advise.exit: ; preds = %bb.a, %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i
  %.sroa.0.0.i = phi ptr [ null, %_RNvNtCsam9QwBXndzI_7memmap22os9page_size.exit.thread.i ], [ %i.v, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i ], [ inttoptr (i64 85899345923 to ptr), %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMs1_Csam9QwBXndzI_7memmap2NtB5_4Mmap4lock(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = tail call noundef i32 @mlock(ptr noundef %.val, i64 noundef %.val1) #14
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_RNvMNtCsam9QwBXndzI_7memmap22osNtB2_9MmapInner4lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @__errno_location() #14
  %i.e = load i32, ptr %i.d, align 4, !noundef !4
  %i.f = load atomic ptr, ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i.i = icmp eq ptr %i.f, @2
  br i1 %.not.i.i, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.c, !prof !5
end_hunk_0
