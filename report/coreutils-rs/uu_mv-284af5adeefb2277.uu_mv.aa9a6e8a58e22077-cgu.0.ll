Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_mv-284af5adeefb2277.uu_mv.aa9a6e8a58e22077-cgu.0?download=true
inline.NumInlined: 1919
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned7OwnedFdNCINvNtNtB6_2fs2at6openatRNtNtB14_4path4PathNtBY_10BorrowedFdE0ECseE7g6nXQLt3_5uu_mv
define internal fastcc range(i64 0, -4294967295) i64 @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned7OwnedFdNCINvNtNtB6_2fs2at6openatRNtNtB14_4path4PathNtBY_10BorrowedFdE0ECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 256, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NvMs_NtNtCs7tKScEop1B6_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #33
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !7 ; 2 uses
  switch i64 %i.b, label %bb.b [
    i64 -1, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.0.copyload = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.415.0.copyload, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !725
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %.val.i9 = load i32, ptr %.sroa.0.0.copyload, align 4, !range !24, !noalias !726, !noundef !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.g = load i32, ptr %.sroa.5.0.copyload, align 4, !noalias !726, !noundef !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.h = load i32, ptr %.sroa.6.0.copyload, align 4, !noalias !726, !noundef !7
  %i.i = or i32 %i.g, 32768
  %i.j = zext i32 %.val.i9 to i64
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = zext i32 %i.i to i64
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = zext i32 %i.h to i64
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 257 to ptr), ptr %i.k, ptr nonnull readonly %i.d, ptr nonnull %i.m, ptr %i.o) #38, !noalias !727, !srcloc !27
  %i.q = extractvalue { ptr, i32, i32 } %i.p, 0   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.s = icmp slt ptr %i.q, null
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = and i64 %i.r, 4294967295
  %or.cond.not.i.i = icmp eq i64 %i.t, 4294967295
  br i1 %or.cond.not.i.i, label %bb.g, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.c
  %i.u = shl i64 %i.r, 16
  %i.v = and i64 %i.u, 4294901760
  %i.w = or disjoint i64 %i.v, 1
  br label %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at6openatRNtNtCs2vKOLqTMYjT_3std4path4PathNtNtNtNtBL_2os2fd5owned10BorrowedFdE0CseE7g6nXQLt3_5uu_mv.exit

bb.f:                                             ; preds = %bb.d
  %i.x = shl i64 %i.r, 32
  br label %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at6openatRNtNtCs2vKOLqTMYjT_3std4path4PathNtNtNtNtBL_2os2fd5owned10BorrowedFdE0CseE7g6nXQLt3_5uu_mv.exit

bb.g:                                             ; preds = %bb.d
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #35, !noalias !727
  unreachable

_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at6openatRNtNtCs2vKOLqTMYjT_3std4path4PathNtNtNtNtBL_2os2fd5owned10BorrowedFdE0CseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.e, %bb.f
  %.sroa.3.0.insert.insert.i.i = phi i64 [ %i.w, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  store i8 0, ptr %i.d, align 1
  %i.y = icmp eq i64 %i.f, 0
  br i1 %i.y, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at6openatRNtNtCs2vKOLqTMYjT_3std4path4PathNtNtNtNtBL_2os2fd5owned10BorrowedFdE0CseE7g6nXQLt3_5uu_mv.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at6openatRNtNtCs2vKOLqTMYjT_3std4path4PathNtNtNtNtBL_2os2fd5owned10BorrowedFdE0CseE7g6nXQLt3_5uu_mv.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  %.sroa.0.0.insert.insert = phi i64 [ 4293525505, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.3.0.insert.insert.i.i, %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at6openatRNtNtCs2vKOLqTMYjT_3std4path4PathNtNtNtNtBL_2os2fd5owned10BorrowedFdE0CseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.3.0.insert.insert.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc range(i64 0, -4294967295) i64 @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtCs2vKOLqTMYjT_3std2os2fd5owned7OwnedFdNCINvNtNtB6_2fs3abs4openRNtNtB14_4path4PathE0ECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 256, -9223372036854775808) %1, i32 %.0.val, i32 %.0.val1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NvMs_NtNtCs7tKScEop1B6_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #33
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !7 ; 2 uses
  switch i64 %i.b, label %bb.b [
    i64 -1, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.46.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !730
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = or i32 %.0.val, 32768
  %i.h = zext i32 %i.g to i64
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = zext i32 %.0.val1 to i64
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 2 to ptr), ptr nonnull readonly %i.d, ptr nonnull %i.i, ptr %i.k) #38, !srcloc !25
  %i.m = extractvalue { ptr, i32, i32 } %i.l, 0   ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.o = icmp slt ptr %i.m, null
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %i.n, 4294967295
  %or.cond.not.i.i = icmp eq i64 %i.p, 4294967295
  br i1 %or.cond.not.i.i, label %bb.g, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.c
  %i.q = shl i64 %i.n, 16
  %i.r = and i64 %i.q, 4294901760
  %i.s = or disjoint i64 %i.r, 1
  br label %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs3abs4openRNtNtCs2vKOLqTMYjT_3std4path4PathE0CseE7g6nXQLt3_5uu_mv.exit

bb.f:                                             ; preds = %bb.d
  %i.t = shl i64 %i.n, 32
  br label %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs3abs4openRNtNtCs2vKOLqTMYjT_3std4path4PathE0CseE7g6nXQLt3_5uu_mv.exit

bb.g:                                             ; preds = %bb.d
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #35
  unreachable

_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs3abs4openRNtNtCs2vKOLqTMYjT_3std4path4PathE0CseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.e, %bb.f
  %.sroa.3.0.insert.insert.i.i = phi i64 [ %i.s, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  store i8 0, ptr %i.d, align 1
  %i.u = icmp eq i64 %i.f, 0
  br i1 %i.u, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs3abs4openRNtNtCs2vKOLqTMYjT_3std4path4PathE0CseE7g6nXQLt3_5uu_mv.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs3abs4openRNtNtCs2vKOLqTMYjT_3std4path4PathE0CseE7g6nXQLt3_5uu_mv.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  %.sroa.0.0.insert.insert = phi i64 [ 4293525505, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.3.0.insert.insert.i.i, %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs3abs4openRNtNtCs2vKOLqTMYjT_3std4path4PathE0CseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.3.0.insert.insert.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i16, i16 } @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathuNCINvNtNtB6_2fs2at13renameat_withRNtNtCs2vKOLqTMYjT_3std4path4PathB1u_NtNtNtNtB1z_2os2fd5owned10BorrowedFdB25_E0ECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 256, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [256 x i8], align 1               ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs_NvMs_NtNtCs7tKScEop1B6_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #33
  %i.e = load i64, ptr %i.d, align 8, !range !6, !noundef !7 ; 2 uses
  switch i64 %i.e, label %bb.b [
    i64 -1, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.412.0.copyload = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !745
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !746
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  store ptr %.sroa.6.0.copyload, ptr %i.c, align 8, !noalias !746
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.j, align 8, !noalias !746
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.i, ptr %i.k, align 8, !noalias !746
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.7.0.copyload, ptr %i.l, align 8, !noalias !746
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.8.0.copyload, ptr %i.m, align 8, !noalias !746
  %i.n = icmp samesign ugt i64 %.sroa.5.0.copyload, 255
  br i1 %i.n, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !747
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull readonly align 1 %.sroa.0.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.5.0.copyload, i1 false), !noalias !748
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.5.0.copyload
  store i8 0, ptr %i.o, align 1, !noalias !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !747
  %i.p = add nuw nsw i64 %.sroa.5.0.copyload, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.p) #33, !noalias !749
  %i.q = load i64, ptr %i.a, align 8, !range !23, !noalias !747, !noundef !7
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.s = call fastcc { i16, i16 } @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathuNCNCINvNtNtB6_2fs2at13renameat_withRNtNtCs2vKOLqTMYjT_3std4path4PathB1w_NtNtNtNtB1B_2os2fd5owned10BorrowedFdB27_E00ECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.copyload, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c) #33, !noalias !750 ; 2 uses
  %i.t = extractvalue { i16, i16 } %i.s, 0
  %i.u = extractvalue { i16, i16 } %i.s, 1
  br label %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at13renameat_withRNtNtCs2vKOLqTMYjT_3std4path4PathBO_NtNtNtNtBT_2os2fd5owned10BorrowedFdB1o_E0CseE7g6nXQLt3_5uu_mv.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !747
  br label %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at13renameat_withRNtNtCs2vKOLqTMYjT_3std4path4PathBO_NtNtNtNtBT_2os2fd5owned10BorrowedFdB1o_E0CseE7g6nXQLt3_5uu_mv.exit

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !747, !nonnull !7, !noundef !7
  %.val1.i.i.i.i = load i32, ptr %.sroa.6.0.copyload, align 4, !range !24, !noalias !751, !noundef !7
  %.val.i.i.i.i = load i32, ptr %.sroa.7.0.copyload, align 4, !range !24, !noalias !751, !noundef !7
  %i.x = load i32, ptr %.sroa.8.0.copyload, align 4, !noalias !751, !noundef !7
  %i.y = zext i32 %.val1.i.i.i.i to i64
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = zext i32 %.val.i.i.i.i to i64
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = zext i32 %i.x to i64
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},~{memory}"(ptr nonnull inttoptr (i64 316 to ptr), ptr %i.z, ptr nonnull readonly %i.g, ptr %i.ab, ptr nonnull readonly %i.w, ptr %i.ad) #38, !noalias !752, !srcloc !29
  %i.af = extractvalue { ptr, i32, i32 } %i.ae, 0 ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.af, null
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = trunc i64 %i.ag to i16
  %.sroa.0.0.i.i.i.i.i = zext i1 %.not.i.i.i.i.i to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !747
  br label %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at13renameat_withRNtNtCs2vKOLqTMYjT_3std4path4PathBO_NtNtNtNtBT_2os2fd5owned10BorrowedFdB1o_E0CseE7g6nXQLt3_5uu_mv.exit

_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at13renameat_withRNtNtCs2vKOLqTMYjT_3std4path4PathBO_NtNtNtNtBT_2os2fd5owned10BorrowedFdB1o_E0CseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.4.0.i.i.i = phi i16 [ %i.u, %bb.e ], [ -22, %bb.f ], [ %i.ah, %bb.g ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i16 [ %i.t, %bb.e ], [ 1, %bb.f ], [ %.sroa.0.0.i.i.i.i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !746
  store i8 0, ptr %i.g, align 1
  %i.ai = icmp eq i64 %i.i, 0
  br i1 %i.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at13renameat_withRNtNtCs2vKOLqTMYjT_3std4path4PathBO_NtNtNtNtBT_2os2fd5owned10BorrowedFdB1o_E0CseE7g6nXQLt3_5uu_mv.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.i, i64 noundef 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at13renameat_withRNtNtCs2vKOLqTMYjT_3std4path4PathBO_NtNtNtNtBT_2os2fd5owned10BorrowedFdB1o_E0CseE7g6nXQLt3_5uu_mv.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  %.sroa.3.0 = phi i16 [ -22, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.4.0.i.i.i, %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at13renameat_withRNtNtCs2vKOLqTMYjT_3std4path4PathBO_NtNtNtNtBT_2os2fd5owned10BorrowedFdB1o_E0CseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.4.0.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %.sroa.0.0 = phi i16 [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.0.0.i.i.i, %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at13renameat_withRNtNtCs2vKOLqTMYjT_3std4path4PathBO_NtNtNtNtBT_2os2fd5owned10BorrowedFdB1o_E0CseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.0.0.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %i.aj = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.ak = insertvalue { i16, i16 } %i.aj, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.ak
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i16, i16 } @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathuNCINvNtNtB6_2fs2at9symlinkatRNtNtCs2vKOLqTMYjT_3std4path4PathRNtNtNtB1u_3ffi6os_str5OsStrRNtNtNtNtB1u_2os2fd5owned7OwnedFdE0ECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 256, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [256 x i8], align 1               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs_NvMs_NtNtCs7tKScEop1B6_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #33
  %i.e = load i64, ptr %i.d, align 8, !range !6, !noundef !7 ; 2 uses
  switch i64 %i.e, label %bb.b [
    i64 -1, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.412.0.copyload = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !766
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !767
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  store ptr %i.g, ptr %i.c, align 8, !noalias !767
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !767
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.6.0.copyload, ptr %i.k, align 8, !noalias !767
  %i.l = icmp samesign ugt i64 %.sroa.5.0.copyload, 255
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !768
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull readonly align 1 %.sroa.0.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.5.0.copyload, i1 false), !noalias !769
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.5.0.copyload
  store i8 0, ptr %i.m, align 1, !noalias !768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !768
  %i.n = add nuw nsw i64 %.sroa.5.0.copyload, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.n) #33, !noalias !770
  %i.o = load i64, ptr %i.a, align 8, !range !23, !noalias !768, !noundef !7
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.q = call fastcc { i16, i16 } @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathuNCNCINvNtNtB6_2fs2at9symlinkatRNtNtCs2vKOLqTMYjT_3std4path4PathRNtNtNtB1w_3ffi6os_str5OsStrRNtNtNtNtB1w_2os2fd5owned7OwnedFdE00ECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.copyload, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) #33, !noalias !771 ; 2 uses
  %i.r = extractvalue { i16, i16 } %i.q, 0
  %i.s = extractvalue { i16, i16 } %i.q, 1
  br label %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at9symlinkatRNtNtCs2vKOLqTMYjT_3std4path4PathRNtNtNtBO_3ffi6os_str5OsStrRNtNtNtNtBO_2os2fd5owned7OwnedFdE0CseE7g6nXQLt3_5uu_mv.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !768
  br label %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at9symlinkatRNtNtCs2vKOLqTMYjT_3std4path4PathRNtNtNtBO_3ffi6os_str5OsStrRNtNtNtNtBO_2os2fd5owned7OwnedFdE0CseE7g6nXQLt3_5uu_mv.exit

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !768, !nonnull !7, !noundef !7
  %.val.i.i.i.i = load ptr, ptr %.sroa.6.0.copyload, align 8, !noalias !772, !nonnull !7, !align !30, !noundef !7
  %.val.i.i.i.i.i = load i32, ptr %.val.i.i.i.i, align 4, !range !24, !noalias !772, !noundef !7
  %i.v = zext i32 %.val.i.i.i.i.i to i64
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 266 to ptr), ptr nonnull readonly %i.g, ptr %i.w, ptr nonnull readonly %i.u) #38, !noalias !770, !srcloc !25
  %i.y = extractvalue { ptr, i32, i32 } %i.x, 0   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.y, null
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = trunc i64 %i.z to i16
  %.sroa.0.0.i.i.i.i = zext i1 %.not.i.i.i.i to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !768
  br label %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at9symlinkatRNtNtCs2vKOLqTMYjT_3std4path4PathRNtNtNtBO_3ffi6os_str5OsStrRNtNtNtNtBO_2os2fd5owned7OwnedFdE0CseE7g6nXQLt3_5uu_mv.exit

_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at9symlinkatRNtNtCs2vKOLqTMYjT_3std4path4PathRNtNtNtBO_3ffi6os_str5OsStrRNtNtNtNtBO_2os2fd5owned7OwnedFdE0CseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.4.0.i.i.i = phi i16 [ %i.s, %bb.e ], [ -22, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i16 [ %i.r, %bb.e ], [ 1, %bb.f ], [ %.sroa.0.0.i.i.i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !767
  store i8 0, ptr %i.g, align 1
  %i.ab = icmp eq i64 %i.i, 0
  br i1 %i.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at9symlinkatRNtNtCs2vKOLqTMYjT_3std4path4PathRNtNtNtBO_3ffi6os_str5OsStrRNtNtNtNtBO_2os2fd5owned7OwnedFdE0CseE7g6nXQLt3_5uu_mv.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.i, i64 noundef 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at9symlinkatRNtNtCs2vKOLqTMYjT_3std4path4PathRNtNtNtBO_3ffi6os_str5OsStrRNtNtNtNtBO_2os2fd5owned7OwnedFdE0CseE7g6nXQLt3_5uu_mv.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  %.sroa.3.0 = phi i16 [ -22, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.4.0.i.i.i, %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at9symlinkatRNtNtCs2vKOLqTMYjT_3std4path4PathRNtNtNtBO_3ffi6os_str5OsStrRNtNtNtNtBO_2os2fd5owned7OwnedFdE0CseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.4.0.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %.sroa.0.0 = phi i16 [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.0.0.i.i.i, %_RNCINvNtNtCscC7ZI6NG8RX_6rustix2fs2at9symlinkatRNtNtCs2vKOLqTMYjT_3std4path4PathRNtNtNtBO_3ffi6os_str5OsStrRNtNtNtNtBO_2os2fd5owned7OwnedFdE0CseE7g6nXQLt3_5uu_mv.exit ], [ %.sroa.0.0.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %i.ac = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.ad = insertvalue { i16, i16 } %i.ac, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.ad
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i16, i16 } @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathuNCNCINvNtNtB6_2fs2at13renameat_withRNtNtCs2vKOLqTMYjT_3std4path4PathB1w_NtNtNtNtB1B_2os2fd5owned10BorrowedFdB27_E00ECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 256, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.69.0.copyload = load ptr, ptr %.sroa.69.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NvMs_NtNtCs7tKScEop1B6_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #33
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !7 ; 2 uses
  switch i64 %i.b, label %bb.b [
    i64 -1, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.0.copyload = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.415.0.copyload, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !778
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %.val1.i7 = load i32, ptr %.sroa.0.0.copyload, align 4, !range !24, !noalias !779, !noundef !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.copyload) ]
  %.val.i8 = load i32, ptr %.sroa.69.0.copyload, align 4, !range !24, !noalias !779, !noundef !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.g = load i32, ptr %.sroa.7.0.copyload, align 4, !noalias !779, !noundef !7
  %i.h = zext i32 %.val1.i7 to i64
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = zext i32 %.val.i8 to i64
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = zext i32 %i.g to i64
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},{r8},~{memory}"(ptr nonnull inttoptr (i64 316 to ptr), ptr %i.i, ptr nonnull readonly %.sroa.5.0.copyload, ptr %i.k, ptr nonnull readonly %i.d, ptr %i.m) #38, !noalias !780, !srcloc !29
  %i.o = extractvalue { ptr, i32, i32 } %i.n, 0   ; 2 uses
  %.not.i.i = icmp ne ptr %i.o, null              ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = trunc i64 %i.p to i16                    ; 2 uses
  store i8 0, ptr %i.d, align 1
  %i.r = icmp eq i64 %i.f, 0
  br i1 %i.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  %.sroa.3.0 = phi i16 [ -22, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %i.q, %bb.c ], [ %i.q, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %.sroa.0.0.shrunk = phi i1 [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %.not.i.i, %bb.c ], [ %.not.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %.sroa.0.0 = zext i1 %.sroa.0.0.shrunk to i16
  %i.s = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.t = insertvalue { i16, i16 } %i.s, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.t
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i16, i16 } @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathuNCNCINvNtNtB6_2fs2at8renameatRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrB1q_RNtNtNtNtB1x_2os2fd5owned7OwnedFdB2a_E00ECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 256, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.69.0.copyload = load ptr, ptr %.sroa.69.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NvMs_NtNtCs7tKScEop1B6_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #33
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !7 ; 2 uses
  switch i64 %i.b, label %bb.b [
    i64 -1, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.0.copyload = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.415.0.copyload, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !786
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %.val1.i7 = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !787, !nonnull !7, !align !30, !noundef !7
  %.val.i.i = load i32, ptr %.val1.i7, align 4, !range !24, !noalias !787, !noundef !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.copyload) ]
  %.val.i8 = load ptr, ptr %.sroa.69.0.copyload, align 8, !noalias !787, !nonnull !7, !align !30, !noundef !7
  %.val.i2.i = load i32, ptr %.val.i8, align 4, !range !24, !noalias !787, !noundef !7
  %i.g = zext i32 %.val.i.i to i64
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = zext i32 %.val.i2.i to i64
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 264 to ptr), ptr %i.h, ptr nonnull readonly %.sroa.5.0.copyload, ptr %i.j, ptr nonnull readonly %i.d) #38, !noalias !788, !srcloc !27
  %i.l = extractvalue { ptr, i32, i32 } %i.k, 0   ; 2 uses
  %.not.i.i = icmp ne ptr %i.l, null              ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = trunc i64 %i.m to i16                    ; 2 uses
  store i8 0, ptr %i.d, align 1
  %i.o = icmp eq i64 %i.f, 0
  br i1 %i.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  %.sroa.3.0 = phi i16 [ -22, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %i.n, %bb.c ], [ %i.n, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %.sroa.0.0.shrunk = phi i1 [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %.not.i.i, %bb.c ], [ %.not.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %.sroa.0.0 = zext i1 %.sroa.0.0.shrunk to i16
  %i.p = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.q = insertvalue { i16, i16 } %i.p, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.q
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i16, i16 } @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathuNCNCINvNtNtB6_2fs2at9symlinkatRNtNtCs2vKOLqTMYjT_3std4path4PathRNtNtNtB1w_3ffi6os_str5OsStrRNtNtNtNtB1w_2os2fd5owned7OwnedFdE00ECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 256, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.510.0.copyload = load ptr, ptr %.sroa.510.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NvMs_NtNtCs7tKScEop1B6_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) #33
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !7 ; 2 uses
  switch i64 %i.b, label %bb.b [
    i64 -1, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.416.0.copyload = load ptr, ptr %.sroa.416.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.416.0.copyload, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !793
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.510.0.copyload) ]
  %.val.i9 = load ptr, ptr %.sroa.510.0.copyload, align 8, !noalias !794, !nonnull !7, !align !30, !noundef !7
  %.val.i.i = load i32, ptr %.val.i9, align 4, !range !24, !noalias !794, !noundef !7
  %i.g = zext i32 %.val.i.i to i64
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 266 to ptr), ptr nonnull %.sroa.0.0.copyload, ptr %i.h, ptr nonnull readonly %i.d) #38, !srcloc !25
  %i.j = extractvalue { ptr, i32, i32 } %i.i, 0   ; 2 uses
  %.not.i = icmp ne ptr %i.j, null                ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i16                    ; 2 uses
  store i8 0, ptr %i.d, align 1
  %i.m = icmp eq i64 %i.f, 0
  br i1 %i.m, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 1) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit
  %.sroa.3.0 = phi i16 [ -22, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %i.l, %bb.c ], [ %i.l, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %.sroa.0.0.shrunk = phi i1 [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECseE7g6nXQLt3_5uu_mv.exit ], [ %.not.i, %bb.c ], [ %.not.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  %.sroa.0.0 = zext i1 %.sroa.0.0.shrunk to i16
  %i.n = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.o = insertvalue { i16, i16 } %i.n, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.o
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore8features14backup_control18simple_backup_pathRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrECseE7g6nXQLt3_5uu_mv(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #33 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  %.sroa.4.0 = select i1 %.not, i64 0, i64 %i.d   ; 4 uses
  %.sroa.0.0 = select i1 %.not, ptr inttoptr (i64 1 to ptr), ptr %i.c
  %.not.i = icmp slt i64 %.sroa.4.0, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.sroa.4.0, 0
  br i1 %i.e, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseE7g6nXQLt3_5uu_mv.exit.thread22, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !807
  %i.f = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !807 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.415.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.a ]
  %.sroa.10.0.ph = phi i64 [ %i.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ undef, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.415.0.ph, i64 %.sroa.10.0.ph) #37
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseE7g6nXQLt3_5uu_mv.exit.thread22: ; preds = %bb.b, %bb.e
  %i.h = phi ptr [ %i.f, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  %.sroa.415.027 = phi i64 [ %i.d, %bb.e ], [ 0, %bb.b ] ; 5 uses
  store i64 %.sroa.415.027, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %.sroa.415.027, ptr %.sroa.510.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %.not28 = icmp eq i64 %4, 0
  br i1 %.not28, label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRNtB3_5OsStrECseE7g6nXQLt3_5uu_mv.exit, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCseE7g6nXQLt3_5uu_mv.exit.thread.i.i.i, !prof !9

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCseE7g6nXQLt3_5uu_mv.exit.thread.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseE7g6nXQLt3_5uu_mv.exit.thread22
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.415.027, i64 noundef %4, i64 noundef 1, i64 noundef 1) #33, !noalias !811
  %i.i = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !alias.scope !812, !noundef !7 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = load ptr, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !812, !nonnull !7, !noundef !7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !812
  %.sroa.013.0.copyload.pre = load i64, ptr %i.a, align 8
  br label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRNtB3_5OsStrECseE7g6nXQLt3_5uu_mv.exit

_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRNtB3_5OsStrECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseE7g6nXQLt3_5uu_mv.exit.thread22, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCseE7g6nXQLt3_5uu_mv.exit.thread.i.i.i
  %.sroa.4.0.copyload = phi ptr [ %i.k, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCseE7g6nXQLt3_5uu_mv.exit.thread.i.i.i ], [ %i.h, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseE7g6nXQLt3_5uu_mv.exit.thread22 ] ; 2 uses
  %.sroa.013.0.copyload = phi i64 [ %.sroa.013.0.copyload.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCseE7g6nXQLt3_5uu_mv.exit.thread.i.i.i ], [ %.sroa.415.027, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseE7g6nXQLt3_5uu_mv.exit.thread22 ] ; 2 uses
  %i.m = phi i64 [ %i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCseE7g6nXQLt3_5uu_mv.exit.thread.i.i.i ], [ %.sroa.415.027, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseE7g6nXQLt3_5uu_mv.exit.thread22 ]
  %i.n = add i64 %i.m, %4
  tail call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path15__with_file_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %i.n) #33, !noalias !813
  %i.o = icmp eq i64 %.sroa.013.0.copyload, 0
  br i1 %i.o, label %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path14with_file_nameNtNtNtB9_3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit, label %bb.d

bb.d:                                             ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRNtB3_5OsStrECseE7g6nXQLt3_5uu_mv.exit
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.013.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !814
  br label %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path14with_file_nameNtNtNtB9_3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit

_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path14with_file_nameNtNtNtB9_3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRNtB3_5OsStrECseE7g6nXQLt3_5uu_mv.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %.sroa.0.0, i64 %.sroa.4.0, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseE7g6nXQLt3_5uu_mv.exit.thread22
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsh036I4OHgIr_6uucore8features2fs12canonicalizeNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [256 x i8], align 1               ; 6 uses
  %i.f = alloca [152 x i8], align 8               ; 8 uses
  %i.g = alloca [176 x i8], align 8               ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [176 x i8], align 8               ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [168 x i8], align 8               ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5184 = alloca [136 x i8], align 8        ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [56 x i8], align 8                ; 4 uses
  %i.q = alloca [56 x i8], align 8                ; 9 uses
  %i.r = alloca [64 x i8], align 8                ; 5 uses
  %i.s = alloca [64 x i8], align 8                ; 2 uses
  %i.t = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 9 uses
  %i.u = alloca [48 x i8], align 8                ; 15 uses
  %i.v = alloca [24 x i8], align 8                ; 12 uses
  %i.w = alloca [64 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 13 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val100 = load ptr, ptr %i.ad, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val101 = load i64, ptr %i.ae, align 8, !noundef !7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val100, i64 noundef %.val101) #33
  %i.af = load i64, ptr %i.ac, align 8, !range !6, !noundef !7 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCseE7g6nXQLt3_5uu_mv.exit109, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCseE7g6nXQLt3_5uu_mv.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCseE7g6nXQLt3_5uu_mv.exit: ; preds = %bb.a
  %i.ak = getelementptr i8, ptr %i.ah, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %rhsc = load i8, ptr %i.al, align 1
  %i.am = icmp eq i8 %rhsc, 47
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCseE7g6nXQLt3_5uu_mv.exit109

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCseE7g6nXQLt3_5uu_mv.exit109: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCseE7g6nXQLt3_5uu_mv.exit, %bb.a
  %.sroa.0.0 = phi i1 [ %i.am, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCseE7g6nXQLt3_5uu_mv.exit ], [ false, %bb.a ]
  %i.an = icmp sgt i64 %i.af, 0
  br i1 %i.an, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECseE7g6nXQLt3_5uu_mv.exit

bb.b:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCseE7g6nXQLt3_5uu_mv.exit109
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !921
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECseE7g6nXQLt3_5uu_mv.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCseE7g6nXQLt3_5uu_mv.exit109, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ao = tail call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val100, i64 noundef %.val101) #33
  br i1 %i.ao, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECseE7g6nXQLt3_5uu_mv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @_RNvNtCs2vKOLqTMYjT_3std3env11current_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa) #33
  %i.ap = load i64, ptr %i.aa, align 8, !range !6, !noundef !7 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  br i1 %i.aq, label %bb.e, label %bb.f

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECseE7g6nXQLt3_5uu_mv.exit
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val100, i64 noundef %.val101) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit110

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECseE7g6nXQLt3_5uu_mv.exit135

bb.f:                                             ; preds = %bb.c
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.546.0.copyload = load i64, ptr %.sroa.546.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs12canonicalize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %.sroa.546.0.copyload) #33
end_hunk_0
begin_hunk_1_@_RNCNCNvCseE7g6nXQLt3_5uu_mv20rename_with_fallback00B5_:bb.a
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kr) #33, !noalias !1472
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1470
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsccOTLrEdJoZ_8fs_extra5error9ErrorKindECseE7g6nXQLt3_5uu_mv.exit.i.i.i

bb.bk:                                            ; preds = %bb.bg
  %i.ks = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ks, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsccOTLrEdJoZ_8fs_extra5error9ErrorKindECseE7g6nXQLt3_5uu_mv.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !1473
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsccOTLrEdJoZ_8fs_extra5error9ErrorKindECseE7g6nXQLt3_5uu_mv.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsccOTLrEdJoZ_8fs_extra5error9ErrorKindECseE7g6nXQLt3_5uu_mv.exit.i.i.i: ; preds = %bb.bl, %bb.bk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i, %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.kt = icmp eq i64 %.pr.i, 0
  br i1 %i.kt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCsccOTLrEdJoZ_8fs_extra5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsccOTLrEdJoZ_8fs_extra5error9ErrorKindECseE7g6nXQLt3_5uu_mv.exit.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ku, align 8, !alias.scope !1475, !noalias !1388, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !1476
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCsccOTLrEdJoZ_8fs_extra5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCsccOTLrEdJoZ_8fs_extra5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i: ; preds = %bb.bm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsccOTLrEdJoZ_8fs_extra5error9ErrorKindECseE7g6nXQLt3_5uu_mv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1388
  br label %bb.ac

bb.bn:                                            ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr15retrieve_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr15retrieve_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.thread.i
  %.sroa.7.072.i = phi i64 [ %.sroa.7.0.ph.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr15retrieve_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.thread.i ], [ %.sroa.7.0.copyload.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr15retrieve_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.i ] ; 4 uses
  %i.kv = icmp ne i64 %.sroa.7.072.i, 0
  call void @llvm.assume(i1 %i.kv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1477
  %i.kw = and i64 %.sroa.7.072.i, 3
  switch i64 %i.kw, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i
    i64 3, label %bb.bo
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i
    i64 1, label %bb.bp
  ], !prof !16

bb.bo:                                            ; preds = %bb.bn
  %i.kx = icmp ult i64 %.sroa.7.072.i, 188978561024
  call void @llvm.assume(i1 %i.kx)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.ky = inttoptr i64 %.sroa.7.072.i to ptr
  %i.kz = getelementptr i8, ptr %i.ky, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kz) ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.kz, ptr %i.la, align 8, !alias.scope !1478, !noalias !1477
  store i8 3, ptr %i.d, align 8, !alias.scope !1478, !noalias !1477
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.la) #33, !noalias !1479
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i: ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1477
  br label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr15retrieve_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.i
  %.sroa.455.0.i = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i ], [ %.sroa.12.0.copyload.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr15retrieve_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.i ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i ], [ %.sroa.7.0.copyload.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr15retrieve_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.i ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ @16, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i ], [ %.sroa.057.0.copyload.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr15retrieve_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.i ] ; 4 uses
  %i.lb = load ptr, ptr %i.ab, align 8, !noalias !1388, !noundef !7
  %.not25.i = icmp eq ptr %i.lb, null
  %..i = select i1 %.not25.i, ptr null, ptr %i.ab
  %i.lc = call fastcc noundef ptr @_RNvCseE7g6nXQLt3_5uu_mv22create_dir_fail_closed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj) #33, !noalias !1480 ; 2 uses
  %.not.i39.i = icmp eq ptr %i.lc, null
  br i1 %.not.i39.i, label %bb.br, label %_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents.exit.i

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1481
  call fastcc void @_RNvCseE7g6nXQLt3_5uu_mv18preserve_ownership(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj) #33, !noalias !1482
  %.val.i40.i = load i8, ptr %i.c, align 8, !range !17, !noalias !1481, !noundef !7
  %i.ld = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val12.i.i = load ptr, ptr %i.ld, align 8, !noalias !1481 ; 4 uses
  %i.le = icmp eq i8 %.val.i40.i, 0
  br i1 %i.le, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1483
  %i.lf = ptrtoint ptr %.val12.i.i to i64         ; 2 uses
  %i.lg = and i64 %i.lf, 3
  switch i64 %i.lg, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i.i.i
    i64 3, label %bb.bt
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i.i.i
    i64 1, label %bb.bu
  ], !prof !16

bb.bt:                                            ; preds = %bb.bs
  %i.lh = icmp ult ptr %.val12.i.i, inttoptr (i64 188978561024 to ptr)
  %i.li = and i64 %i.lf, 1095216660480
  %i.lj = icmp ne i64 %i.li, 1095216660480
  call void @llvm.assume(i1 %i.lh)
  call void @llvm.assume(i1 %i.lj)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.lk = getelementptr i8, ptr %.val12.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lk) ]
  %i.ll = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.lk, ptr %i.ll, align 8, !alias.scope !1484, !noalias !1483
  store i8 3, ptr %i.b, align 8, !alias.scope !1484, !noalias !1483
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ll) #33, !noalias !1485
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i.i.i: ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1483
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i.i.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1481
  %i.lm = call fastcc noundef ptr @_RNvCseE7g6nXQLt3_5uu_mv27copy_dir_contents_recursive(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) dereferenceable_or_null(64) %2, i1 noundef zeroext %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.am) #33
  br label %_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents.exit.i

_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i, %bb.bq
  %.sroa.04.0.i.i = phi ptr [ %i.lm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i.i ], [ %i.lc, %bb.bq ] ; 6 uses
  %.val3.i.i.i.i42.i = load <16 x i8>, ptr %.sroa.0.0.i, align 16, !noalias !1486
  %i.ln = icmp eq i64 %.sroa.3.0.i, 0             ; 3 uses
  br i1 %i.ln, label %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCseE7g6nXQLt3_5uu_mv.exit.i.i, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents.exit.i
  %i.lo = mul i64 %.sroa.3.0.i, 48                ; 2 uses
  %i.lp = add i64 %i.lo, 48                       ; 2 uses
  %i.lq = add i64 %.sroa.3.0.i, 17
  %i.lr = add i64 %i.lq, %i.lp                    ; 3 uses
  %i.ls = icmp uge i64 %i.lr, %i.lp
  call void @llvm.assume(i1 %i.ls)
  %i.lt = icmp ult i64 %i.lr, 9223372036854775793
  call void @llvm.assume(i1 %i.lt)
  %i.lu = sub i64 -48, %i.lo
  %i.lv = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 %i.lu
  br label %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCseE7g6nXQLt3_5uu_mv.exit.i.i

_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCseE7g6nXQLt3_5uu_mv.exit.i.i: ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents.exit.i
  %.sroa.49.0.i.i.i.i = phi i64 [ undef, %_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents.exit.i ], [ %i.lr, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.510.0.i.i.i.i = phi ptr [ undef, %_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents.exit.i ], [ %i.lv, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 2 uses
  %.sink.i.i.i.i.i = phi i64 [ 0, %_RNvCseE7g6nXQLt3_5uu_mv17copy_dir_contents.exit.i ], [ 16, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ]
  %i.lw = icmp eq i64 %.sroa.455.0.i, 0
  br i1 %i.lw, label %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCseE7g6nXQLt3_5uu_mv.exit.i.i
  %i.lx = icmp sgt <16 x i8> %.val3.i.i.i.i42.i, splat (i8 -1)
  %i.ly = bitcast <16 x i1> %i.lx to i16
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  br label %.lr.ph.i43.i

.lr.ph.i43.i:                                     ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit39.i.i, %.lr.ph.preheader.i.i
  %.sroa.10.0113.i.i = phi ptr [ %.sroa.10.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit39.i.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.17.0112.i.i = phi ptr [ %.sroa.17.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit39.i.i ], [ %i.lz, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.2344.0111.i.i = phi i16 [ %i.mi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit39.i.i ], [ %i.ly, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.2945.0110.i.i = phi i64 [ %i.ml, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit39.i.i ], [ %.sroa.455.0.i, %.lr.ph.preheader.i.i ]
  %.not11.i.i.i.i = icmp eq i16 %.sroa.2344.0111.i.i, 0
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i43.i, %.lr.ph.i.i.i.i
  %i.ma = phi ptr [ %i.me, %.lr.ph.i.i.i.i ], [ %.sroa.17.0112.i.i, %.lr.ph.i43.i ] ; 2 uses
  %i.mb = phi ptr [ %i.md, %.lr.ph.i.i.i.i ], [ %.sroa.10.0113.i.i, %.lr.ph.i43.i ]
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.ma, align 16, !noalias !1487
  %i.mc = icmp sgt <16 x i8> %.val9.i.i.i.i, splat (i8 -1)
  %i.md = getelementptr inbounds i8, ptr %i.mb, i64 -768 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.mc to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.i.i

_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i43.i
  %.sroa.17.1.i.i = phi ptr [ %.sroa.17.0112.i.i, %.lr.ph.i43.i ], [ %i.me, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.10.1.i.i = phi ptr [ %.sroa.10.0113.i.i, %.lr.ph.i43.i ], [ %i.md, %.lr.ph.i.i.i.i ] ; 4 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.2344.0111.i.i, %.lr.ph.i43.i ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.mf = add i16 %.lcssa.i.i.i.i, -1
  %i.mg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.mh = zext nneg i16 %i.mg to i64
  %i.mi = and i16 %i.mf, %.lcssa.i.i.i.i          ; 3 uses
  %i.mj = sub nsw i64 0, %i.mh
  %i.mk = getelementptr inbounds [48 x i8], ptr %.sroa.10.1.i.i, i64 %i.mj ; 6 uses
  %i.ml = add i64 %.sroa.2945.0110.i.i, -1        ; 6 uses
  %i.mm = getelementptr inbounds i8, ptr %i.mk, i64 -48
  %.sroa.052.0.copyload.i44.i = load i64, ptr %i.mm, align 8, !noalias !1488 ; 5 uses
  %.sroa.854.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.mk, i64 -40
  %.sroa.854.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.854.0..sroa_idx.i.i, align 8, !noalias !1488 ; 4 uses
  %.sroa.854.sroa.7.0..sroa.854.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds i8, ptr %i.mk, i64 -24
  %.sroa.854.sroa.7.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.854.sroa.7.0..sroa.854.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1488 ; 3 uses
  %.sroa.854.sroa.7.sroa.6.0..sroa.854.sroa.7.0..sroa.854.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds i8, ptr %i.mk, i64 -16
  %.sroa.854.sroa.7.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.854.sroa.7.sroa.6.0..sroa.854.sroa.7.0..sroa.854.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !1488 ; 4 uses
  %.not.i45.i = icmp eq i64 %.sroa.052.0.copyload.i44.i, -1
  br i1 %.not.i45.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.i.i
  %.sroa.854.sroa.7.sroa.7.0..sroa.854.sroa.7.0..sroa.854.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds i8, ptr %i.mk, i64 -8
  %.sroa.854.sroa.7.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.854.sroa.7.sroa.7.0..sroa.854.sroa.7.0..sroa.854.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !1488
  %.sroa.854.sroa.6.0..sroa.854.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds i8, ptr %i.mk, i64 -32
  %.sroa.854.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.854.sroa.6.0..sroa.854.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1488
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.854.sroa.7.sroa.6.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.854.sroa.0.0.copyload.i.i) ]
  %i.mn = call noundef ptr @_RNvNtNtCsiNTfMYMREvh_5xattr3sys11linux_macos8set_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.854.sroa.0.0.copyload.i.i, i64 noundef %.sroa.854.sroa.6.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.854.sroa.7.sroa.6.0.copyload.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.854.sroa.7.sroa.7.0.copyload.i.i, i1 noundef zeroext false) #33, !noalias !1489 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.mn, null
  %i.mo = icmp eq i64 %.sroa.854.sroa.7.sroa.0.0.copyload.i.i, 0 ; 2 uses
  br i1 %.not4.i.i, label %bb.ce, label %bb.bz

bb.bw:                                            ; preds = %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCseE7g6nXQLt3_5uu_mv.exit.i.i
  %i.mp = icmp eq i64 %i.ml, 0
  br i1 %i.mp, label %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.bw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i
  %.lcssa11.i.i.i.i.i.i.i = phi ptr [ %.lcssa10.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i ], [ %.sroa.17.1.i.i, %bb.bw ] ; 2 uses
  %i.mq = phi i64 [ %i.nd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i ], [ %i.ml, %bb.bw ]
  %.lcssa47.i.i.i.i.i.i.i = phi ptr [ %.lcssa46.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i ], [ %.sroa.10.1.i.i, %bb.bw ] ; 2 uses
  %i.mr = phi i16 [ %i.na, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i ], [ %i.mi, %bb.bw ] ; 2 uses
  %.not11.i.i.i.i.i.i.i.i = icmp eq i16 %i.mr, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ms = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa11.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.mt = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa47.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ]
  %.val9.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ms, align 16, !noalias !1490
  %i.mu = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.mv = getelementptr inbounds i8, ptr %i.mt, i64 -768 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.mu to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i

_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.lcssa10.i.i.i.i.i.i.i = phi ptr [ %.lcssa11.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ], [ %i.mw, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa46.i.i.i.i.i.i.i = phi ptr [ %.lcssa47.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ], [ %i.mv, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.mr, %.preheader.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.mx = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.my = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.mz = zext nneg i16 %i.my to i64
  %i.na = and i16 %i.mx, %.lcssa.i.i.i.i.i.i.i.i
  %i.nb = sub nsw i64 0, %i.mz
  %i.nc = getelementptr inbounds [48 x i8], ptr %.lcssa46.i.i.i.i.i.i.i, i64 %i.nb ; 4 uses
  %i.nd = add i64 %i.mq, -1                       ; 2 uses
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 -48
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.ne, align 8, !range !8, !alias.scope !1491, !noalias !1492, !noundef !7 ; 2 uses
  %i.nf = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.nf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i
  %i.ng = getelementptr inbounds i8, ptr %i.nc, i64 -40
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.ng, align 8, !alias.scope !1491, !noalias !1492, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !1493
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bx, %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i
  %i.nh = getelementptr inbounds i8, ptr %i.nc, i64 -24
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.nh, align 8, !range !8, !alias.scope !1491, !noalias !1492, !noundef !7 ; 2 uses
  %i.ni = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ni, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i
  %i.nj = getelementptr inbounds i8, ptr %i.nc, i64 -16
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.nj, align 8, !alias.scope !1491, !noalias !1492, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !1493
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i: ; preds = %bb.by, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i = icmp eq i64 %i.nd, 0
  br i1 %.old3.i.i.i.i.i.i.i, label %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i

_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit39.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i, %bb.bw, %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCseE7g6nXQLt3_5uu_mv.exit.i.i
  %i.nk = icmp eq i64 %.sroa.49.0.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.ln, %i.nk
  br i1 %or.cond.i.i, label %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr12apply_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.thread.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map8IntoIterNtNtNtBK_3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.sink.split.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map8IntoIterNtNtNtBK_3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.sink.split.i.i: ; preds = %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i30.i.i, %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i = phi ptr [ %i.mn, %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i30.i.i ], [ null, %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.510.0.i.i.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.510.0.i.i.i.i, i64 noundef %.sroa.49.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #33, !noalias !1494
  br label %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr12apply_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.i

bb.bz:                                            ; preds = %bb.bv
  br i1 %i.mo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECseE7g6nXQLt3_5uu_mv.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.854.sroa.7.sroa.6.0.copyload.i.i, i64 noundef %.sroa.854.sroa.7.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !1494
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECseE7g6nXQLt3_5uu_mv.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECseE7g6nXQLt3_5uu_mv.exit.i.i: ; preds = %bb.ca, %bb.bz
  %i.nl = icmp eq i64 %.sroa.052.0.copyload.i44.i, 0
  br i1 %i.nl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i46.i, label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECseE7g6nXQLt3_5uu_mv.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.854.sroa.0.0.copyload.i.i, i64 noundef %.sroa.052.0.copyload.i44.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !1494
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i46.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i46.i: ; preds = %bb.cb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECseE7g6nXQLt3_5uu_mv.exit.i.i
  %i.nm = icmp eq i64 %i.ml, 0
  br i1 %i.nm, label %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i30.i.i, label %.preheader.i.i.i.i.i12.i.i

.preheader.i.i.i.i.i12.i.i:                       ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i46.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i28.i.i
  %.lcssa11.i.i.i.i.i16.i.i = phi ptr [ %.lcssa10.i.i.i.i.i20.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i28.i.i ], [ %.sroa.17.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i46.i ] ; 2 uses
  %i.nn = phi i64 [ %i.oa, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i28.i.i ], [ %i.ml, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i46.i ]
  %.lcssa47.i.i.i.i.i17.i.i = phi ptr [ %.lcssa46.i.i.i.i.i21.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i28.i.i ], [ %.sroa.10.1.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i46.i ] ; 2 uses
  %i.no = phi i16 [ %i.nx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i28.i.i ], [ %i.mi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i46.i ] ; 2 uses
  %.not11.i.i.i.i.i.i18.i.i = icmp eq i16 %i.no, 0
  br i1 %.not11.i.i.i.i.i.i18.i.i, label %.lr.ph.i.i.i.i.i.i32.i.i, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i.i32.i.i:                         ; preds = %.preheader.i.i.i.i.i12.i.i, %.lr.ph.i.i.i.i.i.i32.i.i
  %i.np = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i.i32.i.i ], [ %.lcssa11.i.i.i.i.i16.i.i, %.preheader.i.i.i.i.i12.i.i ] ; 2 uses
  %i.nq = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i.i32.i.i ], [ %.lcssa47.i.i.i.i.i17.i.i, %.preheader.i.i.i.i.i12.i.i ]
  %.val9.i.i.i.i.i.i33.i.i = load <16 x i8>, ptr %i.np, align 16, !noalias !1495
  %i.nr = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i33.i.i, splat (i8 -1)
  %i.ns = getelementptr inbounds i8, ptr %i.nq, i64 -768 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i34.i.i = bitcast <16 x i1> %i.nr to i16 ; 2 uses
  %.not.i.i.i.i.i.i35.i.i = icmp eq i16 %.cast.i.i.i.i.i.i34.i.i, 0
  br i1 %.not.i.i.i.i.i.i35.i.i, label %.lr.ph.i.i.i.i.i.i32.i.i, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i19.i.i

_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i19.i.i: ; preds = %.lr.ph.i.i.i.i.i.i32.i.i, %.preheader.i.i.i.i.i12.i.i
  %.lcssa10.i.i.i.i.i20.i.i = phi ptr [ %.lcssa11.i.i.i.i.i16.i.i, %.preheader.i.i.i.i.i12.i.i ], [ %i.nt, %.lr.ph.i.i.i.i.i.i32.i.i ]
  %.lcssa46.i.i.i.i.i21.i.i = phi ptr [ %.lcssa47.i.i.i.i.i17.i.i, %.preheader.i.i.i.i.i12.i.i ], [ %i.ns, %.lr.ph.i.i.i.i.i.i32.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i22.i.i = phi i16 [ %i.no, %.preheader.i.i.i.i.i12.i.i ], [ %.cast.i.i.i.i.i.i34.i.i, %.lr.ph.i.i.i.i.i.i32.i.i ] ; 3 uses
  %i.nu = add i16 %.lcssa.i.i.i.i.i.i22.i.i, -1
  %i.nv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i22.i.i, i1 true)
  %i.nw = zext nneg i16 %i.nv to i64
  %i.nx = and i16 %i.nu, %.lcssa.i.i.i.i.i.i22.i.i
  %i.ny = sub nsw i64 0, %i.nw
  %i.nz = getelementptr inbounds [48 x i8], ptr %.lcssa46.i.i.i.i.i21.i.i, i64 %i.ny ; 4 uses
  %i.oa = add i64 %i.nn, -1                       ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %i.nz, i64 -48
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %.val2.i.i.i.i.i.i23.i.i = load i64, ptr %i.ob, align 8, !range !8, !alias.scope !1496, !noalias !1497, !noundef !7 ; 2 uses
  %i.oc = icmp eq i64 %.val2.i.i.i.i.i.i23.i.i, 0
  br i1 %i.oc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i25.i.i, label %bb.cc

bb.cc:                                            ; preds = %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i19.i.i
  %i.od = getelementptr inbounds i8, ptr %i.nz, i64 -40
  %.val3.i.i.i.i.i.i24.i.i = load ptr, ptr %i.od, align 8, !alias.scope !1496, !noalias !1497, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i24.i.i, i64 noundef %.val2.i.i.i.i.i.i23.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !1498
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i25.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i25.i.i: ; preds = %bb.cc, %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE9next_implKb0_ECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i19.i.i
  %i.oe = getelementptr inbounds i8, ptr %i.nz, i64 -24
  %.val.i.i.i.i.i.i26.i.i = load i64, ptr %i.oe, align 8, !range !8, !alias.scope !1496, !noalias !1497, !noundef !7 ; 2 uses
  %i.of = icmp eq i64 %.val.i.i.i.i.i.i26.i.i, 0
  br i1 %i.of, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i28.i.i, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i25.i.i
  %i.og = getelementptr inbounds i8, ptr %i.nz, i64 -16
  %.val1.i.i.i.i.i.i27.i.i = load ptr, ptr %i.og, align 8, !alias.scope !1496, !noalias !1497, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i27.i.i, i64 noundef %.val.i.i.i.i.i.i26.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !1498
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i28.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i28.i.i: ; preds = %bb.cd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i25.i.i
  %.old3.i.i.i.i.i29.i.i = icmp eq i64 %i.oa, 0
  br i1 %.old3.i.i.i.i.i29.i.i, label %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i30.i.i, label %.preheader.i.i.i.i.i12.i.i

_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i30.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i28.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit.i46.i
  %i.oh = icmp eq i64 %.sroa.49.0.i.i.i.i, 0
  %or.cond92.i.i = or i1 %i.ln, %i.oh
  br i1 %or.cond92.i.i, label %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr12apply_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map8IntoIterNtNtNtBK_3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.sink.split.i.i

bb.ce:                                            ; preds = %bb.bv
  br i1 %i.mo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECseE7g6nXQLt3_5uu_mv.exit38.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.854.sroa.7.sroa.6.0.copyload.i.i, i64 noundef %.sroa.854.sroa.7.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !1494
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECseE7g6nXQLt3_5uu_mv.exit38.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECseE7g6nXQLt3_5uu_mv.exit38.i.i: ; preds = %bb.cf, %bb.ce
  %i.oi = icmp eq i64 %.sroa.052.0.copyload.i44.i, 0
  br i1 %i.oi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit39.i.i, label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECseE7g6nXQLt3_5uu_mv.exit38.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.854.sroa.0.0.copyload.i.i, i64 noundef %.sroa.052.0.copyload.i44.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !1494
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit39.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECseE7g6nXQLt3_5uu_mv.exit39.i.i: ; preds = %bb.cg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECseE7g6nXQLt3_5uu_mv.exit38.i.i
  %i.oj = icmp eq i64 %i.ml, 0
  br i1 %i.oj, label %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i, label %.lr.ph.i43.i

_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr12apply_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.i: ; preds = %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i30.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map8IntoIterNtNtNtBK_3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.sink.split.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.mn, %_RNvMso_NtCs7GWc7oqutCf_9hashbrown3rawINtB5_7RawIterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEE13drop_elementsCseE7g6nXQLt3_5uu_mv.exit.i.i.i.i30.i.i ], [ %.sroa.0.0.ph.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map8IntoIterNtNtNtBK_3ffi6os_str8OsStringINtNtCs7tKScEop1B6_5alloc3vec3VechEEECseE7g6nXQLt3_5uu_mv.exit.sink.split.i.i ] ; 3 uses
  %.not26.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not26.i, label %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr12apply_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.thread.i, label %bb.ch

bb.ch:                                            ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features7fsxattr12apply_xattrsRNtNtCs2vKOLqTMYjT_3std4path4PathECseE7g6nXQLt3_5uu_mv.exit.i
  %i.ok = icmp eq ptr %.sroa.04.0.i.i, null
  br i1 %i.ok, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECseE7g6nXQLt3_5uu_mv.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1499
  %i.ol = ptrtoint ptr %.sroa.04.0.i.i to i64     ; 2 uses
  %i.om = and i64 %i.ol, 3
  switch i64 %i.om, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i47.i
    i64 3, label %bb.cj
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECseE7g6nXQLt3_5uu_mv.exit.i47.i
    i64 1, label %bb.ck
  ], !prof !16

bb.cj:                                            ; preds = %bb.ci
end_hunk_1
begin_hunk_2_@_RNvXsg_NtCs6Mg6kPLyuSp_9indicatif5styleNtB5_13TemplateErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt
define internal noundef zeroext i1 @_RNvXsg_NtCs6Mg6kPLyuSp_9indicatif5styleNtB5_13TemplateErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @182, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @183) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsl_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %.sroa.5 = alloca [39 x i8], align 1            ; 2 uses
  %.sroa.518 = alloca [39 x i8], align 1          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 2 uses
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !range !40, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i8, ptr %i.m, align 8, !range !40, !noundef !7
  %i.o = icmp eq i8 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.q = load i8, ptr %i.p, align 1, !range !40
  %i.r = icmp eq i8 %i.q, 2
  %or.cond = select i1 %i.o, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.t = load i8, ptr %i.s, align 1, !range !40
  %i.u = icmp eq i8 %i.t, 2
  %or.cond7 = select i1 %or.cond, i1 %i.u, i1 false
  %.pre40 = load ptr, ptr %0, align 8             ; 3 uses
  br i1 %or.cond7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %i.v = phi ptr [ %.pre, %._crit_edge ], [ %.pre40, %bb.d ], [ %.pre40, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !4943, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.x, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %bcmp = tail call i32 @bcmp(ptr nonnull %.pre40, ptr nonnull %i.y, i64 %i.g)
  %i.z = icmp eq i32 %bcmp, 0
  br i1 %i.z, label %bb.u, label %bb.c

bb.e:                                             ; preds = %bb.c
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.420.0..sroa_idx, i64 39, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !range !17, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !range !40, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.af = load i8, ptr %i.ae, align 1, !range !40, !noundef !7
  %i.ag = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !4943, !noundef !7 ; 2 uses
  %.not26 = icmp eq i8 %i.ai, -1
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.425.0..sroa_idx, i64 39, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !range !17, !noundef !7
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load i8, ptr %i.al, align 8, !range !40, !noundef !7
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.ao = load i8, ptr %i.an, align 1, !range !40, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4944
  store ptr %i.v, ptr %i.e, align 8, !noalias !4945
  %.sroa.4.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx27, align 8, !noalias !4945
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %i.x, ptr %.sroa.528.0..sroa_idx, align 8, !noalias !4945
  %.sroa.6.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.0..sroa_idx29, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518, i64 39, i1 false)
  %.sroa.7.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 %i.ad, ptr %.sroa.7.0..sroa_idx30, align 8, !noalias !4945
  %.sroa.8.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  store i8 %i.af, ptr %.sroa.8.0..sroa_idx31, align 1, !noalias !4945
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  store i8 %i.ab, ptr %.sroa.9.0..sroa_idx, align 2, !noalias !4945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4944
  store ptr %i.ag, ptr %i.d, align 8, !alias.scope !4946, !noalias !4947
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %.sroa.433.0..sroa_idx, align 8, !alias.scope !4946, !noalias !4947
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %i.ai, ptr %.sroa.534.0..sroa_idx, align 8, !alias.scope !4946, !noalias !4947
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.635.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5, i64 39, i1 false)
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i8 %i.am, ptr %.sroa.736.0..sroa_idx, align 8, !alias.scope !4946, !noalias !4947
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  store i8 %i.ao, ptr %.sroa.837.0..sroa_idx, align 1, !alias.scope !4946, !noalias !4947
  %.sroa.938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  store i8 %i.ak, ptr %.sroa.938.0..sroa_idx, align 2, !alias.scope !4946, !noalias !4947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4948
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #33, !noalias !4949
  %i.ap = load i8, ptr %i.b, align 8, !range !31, !noalias !4948, !noundef !7 ; 2 uses
  %.not16.i.i.i.i.i.i.i = icmp eq i8 %i.ap, -1
  br i1 %.not16.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h
  %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.710.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.811.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.912.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i
  %i.aq = phi i8 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bs, %bb.t ] ; 4 uses
  %.sroa.58.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i, align 1, !noalias !4948 ; 2 uses
  %.sroa.710.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.710.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4948 ; 10 uses
  %.sroa.811.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.811.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4948 ; 10 uses
  %.sroa.912.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.912.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4948 ; 4 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4948 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4950
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d) #33, !noalias !4951
  %i.ar = load i8, ptr %i.a, align 8, !range !31, !noalias !4950, !noundef !7 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 1, !noalias !4950 ; 2 uses
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !4950 ; 10 uses
  %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !4950 ; 5 uses
  %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !4950 ; 4 uses
  %.sroa.910.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !4950 ; 2 uses
  %i.as = icmp samesign ugt i8 %i.aq, 5
  %i.at = zext nneg i8 %i.aq to i64
  %i.au = add nsw i64 %i.at, -5
  %i.av = select i1 %i.as, i64 %i.au, i64 0       ; 2 uses
  %i.aw = icmp samesign ult i8 %i.ar, 6           ; 2 uses
  %i.ax = zext nneg i8 %i.ar to i64
  %i.ay = add nsw i64 %i.ax, -5
  %i.az = select i1 %i.aw, i64 0, i64 %i.ay
  %i.ba = icmp eq i64 %i.av, %i.az
  br i1 %i.ba, label %bb.k, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  switch i64 %i.av, label %bb.t [
    i64 0, label %bb.l
    i64 4, label %bb.s
  ]

bb.l:                                             ; preds = %bb.k
  br i1 %i.aw, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bb = icmp eq i8 %i.aq, %i.ar
  br i1 %i.bb, label %bb.n, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  switch i8 %i.aq, label %default.unreachable [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %.split31.i.i.i.i.i.i.i.i.i
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %.split29.i.i.i.i.i.i.i.i.i
  ]

default.unreachable:                              ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bc, label %.split27.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

.split27.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i), !alias.scope !4952, !noalias !4953
  %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %bb.t, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.be = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.be, label %_RNvXs7_NtNtCs6JMX4GRUq9U_4core3cmp5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCseE7g6nXQLt3_5uu_mv.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

_RNvXs7_NtNtCs6JMX4GRUq9U_4core3cmp5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCseE7g6nXQLt3_5uu_mv.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i), !alias.scope !4954, !noalias !4953
  %i.bf = icmp eq i32 %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.bg = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs2vKOLqTMYjT_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

.split31.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.n
  %i.bh = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i
  %cond.fr32.i.i.i.i.i.i.i.i.i = freeze i1 %i.bh
  br i1 %cond.fr32.i.i.i.i.i.i.i.i.i, label %bb.t, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

bb.q:                                             ; preds = %bb.n
  %i.bi = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bi, label %.split33.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

.split33.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i), !alias.scope !4955, !noalias !4953
  %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = icmp eq i32 %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %bb.t, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

bb.r:                                             ; preds = %bb.n
  %i.bk = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bk, label %_RNvXs7_NtNtCs6JMX4GRUq9U_4core3cmp5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCseE7g6nXQLt3_5uu_mv.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

_RNvXs7_NtNtCs6JMX4GRUq9U_4core3cmp5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCseE7g6nXQLt3_5uu_mv.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i), !alias.scope !4956, !noalias !4953
  %i.bl = icmp eq i32 %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.bm = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i.i
  %or.cond6.i.i.i.i.i.i.i.i.i.i = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond6.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

.split29.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.n
  %i.bn = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i
  %cond.fr30.i.i.i.i.i.i.i.i.i = freeze i1 %i.bn
  br i1 %cond.fr30.i.i.i.i.i.i.i.i.i, label %bb.t, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNvXs7_NtNtCs6JMX4GRUq9U_4core3cmp5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCseE7g6nXQLt3_5uu_mv.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i), !alias.scope !4957, !noalias !4953
  %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = icmp eq i32 %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %bb.t, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

bb.s:                                             ; preds = %bb.k
  %i.bp = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.bp, label %.split35.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

.split35.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i), !alias.scope !4958, !noalias !4959
  %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = icmp eq i32 %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %bb.t, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs2vKOLqTMYjT_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs7_NtNtCs6JMX4GRUq9U_4core3cmp5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCseE7g6nXQLt3_5uu_mv.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i.i) ]
  %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i), !alias.scope !4960, !noalias !4953
  %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.br = icmp eq i32 %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.br, label %bb.t, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i

bb.t:                                             ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs2vKOLqTMYjT_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i.i, %.split33.i.i.i.i.i.i.i.i.i, %.split31.i.i.i.i.i.i.i.i.i, %.split27.i.i.i.i.i.i.i.i.i, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4948
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #33, !noalias !4944
  %i.bs = load i8, ptr %i.b, align 8, !range !31, !noalias !4948, !noundef !7 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bs, -1
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.i

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs2vKOLqTMYjT_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CseE7g6nXQLt3_5uu_mv.exit.i.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i.i, %bb.s, %.split.i.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCs6JMX4GRUq9U_4core3cmp5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCseE7g6nXQLt3_5uu_mv.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %.split33.i.i.i.i.i.i.i.i.i, %bb.q, %.split31.i.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCs6JMX4GRUq9U_4core3cmp5implsRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCseE7g6nXQLt3_5uu_mv.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p, %.split27.i.i.i.i.i.i.i.i.i, %bb.o, %bb.m, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4948
  br label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECseE7g6nXQLt3_5uu_mv.exit

.loopexit.i.i.i.i:                                ; preds = %bb.t, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4961
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d) #33, !noalias !4944
  %i.bt = load i8, ptr %i.c, align 8, !range !31, !noalias !4961, !noundef !7
  %.not4.i.not.i.i.i = icmp eq i8 %i.bt, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4961
  br label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECseE7g6nXQLt3_5uu_mv.exit

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECseE7g6nXQLt3_5uu_mv.exit: ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i1 [ %.not4.i.not.i.i.i, %.loopexit.i.i.i.i ], [ false, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECseE7g6nXQLt3_5uu_mv.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4944
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECseE7g6nXQLt3_5uu_mv.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i.i.i.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3rev3RevNtNtCs2vKOLqTMYjT_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECseE7g6nXQLt3_5uu_mv.exit ], [ true, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !align !13, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !7, !nonnull !7
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #36
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtCs6Mg6kPLyuSp_9indicatif5styleNtB5_5StateNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !37, !noundef !7 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsp_NtCs6Mg6kPLyuSp_9indicatif5styleNtB5_5StateNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsp_NtCs6Mg6kPLyuSp_9indicatif5styleNtB5_5StateNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt.360, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #33
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @196, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @197, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @198, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_11UUsageErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @199, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @197, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @198, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @200, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @201) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write10write_charCseE7g6nXQLt3_5uu_mv(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !4971
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !4971
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !4971
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !4971
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !4971
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !4971
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !4971
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !4971
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !4971
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !4971
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4972)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !4972, !nonnull !7, !align !13, !noundef !7
  %i.ad = call noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i) #33, !noalias !4972 ; 2 uses
end_hunk_2
