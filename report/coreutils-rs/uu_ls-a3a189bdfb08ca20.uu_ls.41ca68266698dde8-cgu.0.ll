Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ls-a3a189bdfb08ca20.uu_ls.41ca68266698dde8-cgu.0?download=true
inline.NumInlined: 3251
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls4statECs5EcwQX7phGK_5uu_ls:bb.a
  %i.c = load i64, ptr %i.b, align 8, !range !15, !noundef !4 ; 2 uses
  switch i64 %i.c, label %bb.b [
    i64 -1, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECs5EcwQX7phGK_5uu_ls.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.411.0.copyload = load ptr, ptr %.sroa.411.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.411.0.copyload, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !1012
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECs5EcwQX7phGK_5uu_ls.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECs5EcwQX7phGK_5uu_ls.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 -22, ptr %i.d, align 2
  store i16 1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECs5EcwQX7phGK_5uu_ls.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1015
  %i.i = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.f, ptr nonnull %i.a, ptr null) #37, !noalias !1016, !srcloc !28
  %i.j = extractvalue { ptr, i32, i32 } %i.i, 0   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.k, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !1017
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCs5EcwQX7phGK_5uu_ls.exit

bb.e:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = trunc i64 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.m, ptr %i.n, align 2, !alias.scope !1016, !noalias !1017
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCs5EcwQX7phGK_5uu_ls.exit

_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCs5EcwQX7phGK_5uu_ls.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i = phi i16 [ 0, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1015
  store i16 %.sink.i.i, ptr %0, align 8, !alias.scope !1016, !noalias !1017
  store i8 0, ptr %i.f, align 1
  %i.o = icmp eq i64 %i.h, 0
  br i1 %i.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECs5EcwQX7phGK_5uu_ls.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCs5EcwQX7phGK_5uu_ls.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.h, i64 noundef 1) #37
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECs5EcwQX7phGK_5uu_ls.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECs5EcwQX7phGK_5uu_ls.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCs5EcwQX7phGK_5uu_ls.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECs5EcwQX7phGK_5uu_ls.exit
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls5lstatECs5EcwQX7phGK_5uu_ls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(152) initializes((0, 2)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 256, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NvMs_NtNtCs7tKScEop1B6_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #37
  %i.c = load i64, ptr %i.b, align 8, !range !15, !noundef !4 ; 2 uses
  switch i64 %i.c, label %bb.b [
    i64 -1, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECs5EcwQX7phGK_5uu_ls.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.411.0.copyload = load ptr, ptr %.sroa.411.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.411.0.copyload, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !1026
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECs5EcwQX7phGK_5uu_ls.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECs5EcwQX7phGK_5uu_ls.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 -22, ptr %i.d, align 2
  store i16 1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECs5EcwQX7phGK_5uu_ls.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1029
  %i.i = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.f, ptr nonnull %i.a, ptr nonnull inttoptr (i64 256 to ptr)) #37, !noalias !1030, !srcloc !28
  %i.j = extractvalue { ptr, i32, i32 } %i.i, 0   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.k, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !1031
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCs5EcwQX7phGK_5uu_ls.exit

bb.e:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = trunc i64 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.m, ptr %i.n, align 2, !alias.scope !1030, !noalias !1031
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCs5EcwQX7phGK_5uu_ls.exit

_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCs5EcwQX7phGK_5uu_ls.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i = phi i16 [ 0, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1029
  store i16 %.sink.i.i, ptr %0, align 8, !alias.scope !1030, !noalias !1031
  store i8 0, ptr %i.f, align 1
  %i.o = icmp eq i64 %i.h, 0
  br i1 %i.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECs5EcwQX7phGK_5uu_ls.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCs5EcwQX7phGK_5uu_ls.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.h, i64 noundef 1) #37
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECs5EcwQX7phGK_5uu_ls.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str7CStringECs5EcwQX7phGK_5uu_ls.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCs5EcwQX7phGK_5uu_ls.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7tKScEop1B6_5alloc3ffi5c_str8NulErrorECs5EcwQX7phGK_5uu_ls.exit
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable14driftsort_mainNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSBZ_11sort_by_keybNCNvB11_12sort_entriess4_0E0INtNtB1C_3vec3VecBZ_EEB11_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = sub nuw nsw i64 %1, %i.a
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 26315)
  %..i5 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.b)
  %..i6 = tail call noundef i64 @llvm.umax.i64(i64 %..i5, i64 48) ; 2 uses
  %i.c = mul nuw nsw i64 %..i6, 304               ; 3 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !1038
  %i.d = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #37, !noalias !1038 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #39, !noalias !1039
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i64 %1, 33
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift4sortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSBW_11sort_by_keybNCNvBY_12sort_entriess4_0E0EBY_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef %..i6, i1 noundef zeroext %i.f, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #37
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #37, !noalias !1040
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SBT_16sort_unstable_byNCNvBV_12sort_entriess0_0E0EBV_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load i64, ptr %i.c, align 8, !range !27, !noundef !4 ; 3 uses
  %cond.i.i.i = icmp eq i64 %i.d, -2              ; 2 uses
  %spec.select.i.i.i = select i1 %cond.i.i.i, i64 8, i64 32
  %spec.select5.i.i.i = select i1 %cond.i.i.i, i64 16, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select5.i.i.i
  %.sroa.0.0.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i.i.i = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !range !27, !noundef !4
  %cond.i5.i.i = icmp eq i64 %i.h, -2             ; 2 uses
  %spec.select.i6.i.i = select i1 %cond.i5.i.i, i64 8, i64 32
  %spec.select5.i7.i.i = select i1 %cond.i5.i.i, i64 16, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i6.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select5.i7.i.i
  %.sroa.0.0.i8.i.i = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i9.i.i = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i, i64 %.sroa.4.0.i9.i.i)
  %i.k = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i, ptr nonnull %.sroa.0.0.i8.i.i, i64 %spec.store.select.i.i) ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp eq i32 %i.k, 0
  %i.n = sub i64 %.sroa.4.0.i.i.i, %.sroa.4.0.i9.i.i
  %spec.select.i.i = select i1 %i.m, i64 %i.n, i64 %i.l
  %i.o = icmp slt i64 %spec.select.i.i, 0         ; 2 uses
  %.not40 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.o, label %.preheader, label %.preheader30

.preheader30:                                     ; preds = %bb.b
  br i1 %.not40, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not40, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit, label %.lr.ph36

.lr.ph:                                           ; preds = %.preheader30, %bb.c
  %i.p = phi i64 [ %i.s, %bb.c ], [ %i.d, %.preheader30 ]
  %.sroa.01.0.i32 = phi i64 [ %i.ac, %bb.c ], [ 2, %.preheader30 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.0.i32 ; 3 uses
  %3 = add nsw i64 %.sroa.01.0.i32, -1            ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8, !range !27, !noundef !4 ; 2 uses
  %cond.i.i.i2 = icmp eq i64 %i.s, -2             ; 2 uses
  %spec.select.i.i.i3 = select i1 %cond.i.i.i2, i64 8, i64 32
  %spec.select5.i.i.i4 = select i1 %cond.i.i.i2, i64 16, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select.i.i.i3
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select5.i.i.i4
  %.sroa.0.0.i.i.i5 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i.i.i6 = load i64, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %cond.i5.i.i7 = icmp eq i64 %i.p, -2            ; 2 uses
  %spec.select.i6.i.i8 = select i1 %cond.i5.i.i7, i64 8, i64 32
  %spec.select5.i7.i.i9 = select i1 %cond.i5.i.i7, i64 16, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select.i6.i.i8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select5.i7.i.i9
  %.sroa.0.0.i8.i.i10 = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i9.i.i11 = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i12 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i6, i64 %.sroa.4.0.i9.i.i11)
  %i.x = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i5, ptr nonnull %.sroa.0.0.i8.i.i10, i64 %spec.store.select.i.i12) ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub i64 %.sroa.4.0.i.i.i6, %.sroa.4.0.i9.i.i11
  %spec.select.i.i13 = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = icmp slt i64 %spec.select.i.i13, 0
  br i1 %i.ab, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ac = add nuw nsw i64 %.sroa.01.0.i32, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit.thread, label %.lr.ph

.lr.ph36:                                         ; preds = %.preheader, %bb.d
  %i.ad = phi i64 [ %i.ag, %bb.d ], [ %i.d, %.preheader ]
  %.sroa.01.1.i35 = phi i64 [ %i.aq, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.1.i35 ; 3 uses
  %6 = add nsw i64 %.sroa.01.1.i35, -1            ; 2 uses
  %7 = icmp samesign ult i64 %6, %1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %6 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !range !27, !noundef !4 ; 2 uses
  %cond.i.i.i14 = icmp eq i64 %i.ag, -2           ; 2 uses
  %spec.select.i.i.i15 = select i1 %cond.i.i.i14, i64 8, i64 32
  %spec.select5.i.i.i16 = select i1 %cond.i.i.i14, i64 16, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %spec.select.i.i.i15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %spec.select5.i.i.i16
  %.sroa.0.0.i.i.i17 = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i.i.i18 = load i64, ptr %i.ai, align 8, !noundef !4 ; 2 uses
  %cond.i5.i.i19 = icmp eq i64 %i.ad, -2          ; 2 uses
  %spec.select.i6.i.i20 = select i1 %cond.i5.i.i19, i64 8, i64 32
  %spec.select5.i7.i.i21 = select i1 %cond.i5.i.i19, i64 16, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 %spec.select.i6.i.i20
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 %spec.select5.i7.i.i21
  %.sroa.0.0.i8.i.i22 = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i9.i.i23 = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i24 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i18, i64 %.sroa.4.0.i9.i.i23)
  %i.al = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i17, ptr nonnull %.sroa.0.0.i8.i.i22, i64 %spec.store.select.i.i24) ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.sroa.4.0.i.i.i18, %.sroa.4.0.i9.i.i23
  %spec.select.i.i25 = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i25, 0
  br i1 %i.ap, label %bb.d, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit

bb.d:                                             ; preds = %.lr.ph36
  %i.aq = add nuw nsw i64 %.sroa.01.1.i35, 1      ; 2 uses
  %exitcond43.not = icmp eq i64 %i.aq, %1
  br i1 %exitcond43.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit.thread, label %.lr.ph36

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit: ; preds = %.lr.ph, %.lr.ph36, %.preheader30, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader30 ], [ 2, %.preheader ], [ %.sroa.01.1.i35, %.lr.ph36 ], [ %.sroa.01.0.i32, %.lr.ph ] ; 2 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.as, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit.thread, label %bb.e

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit
  br i1 %i.o, label %bb.f, label %.thread

bb.e:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit
  %i.at = or i64 %1, 1
  %i.au = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 1
  %i.ax = xor i32 %i.aw, 126
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB17_16sort_unstable_byNCNvB19_12sort_entriess0_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noundef align 8 null, i32 noundef %i.ax, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #37
  br label %.thread

.thread:                                          ; preds = %bb.a, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit.thread, %bb.f, %bb.e
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess0_0E0EB14_.exit.thread
  %i.ay = lshr i64 %1, 1                          ; 4 uses
  %i.az = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %1
  %i.ba = sub nsw i64 0, %i.ay
  %i.bb = getelementptr inbounds [304 x i8], ptr %i.az, i64 %i.ba
  tail call fastcc void @_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCs5EcwQX7phGK_5uu_ls8PathDataEBQ_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %i.ay, ptr noalias nofree noundef nonnull align 8 %i.bb, i64 noundef %i.ay, i64 noundef %i.ay) #40
  br label %.thread
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SBT_16sort_unstable_byNCNvBV_12sort_entriess1_0E0EBV_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %0) #40 ; 2 uses
  %.not16 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader6

.preheader6:                                      ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit, label %.lr.ph12

.lr.ph:                                           ; preds = %.preheader6, %bb.c
  %.sroa.01.0.i8 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader6 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.0.i8
  %3 = add nsw i64 %.sroa.01.0.i8, -1             ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %3
  %i.e = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %5) #40
  br i1 %i.e, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i8, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit.thread, label %.lr.ph

.lr.ph12:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i11 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.1.i11
  %6 = add nsw i64 %.sroa.01.1.i11, -1            ; 2 uses
  %7 = icmp samesign ult i64 %6, %1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %6
  %i.h = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull align 8 %8) #40
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit

bb.d:                                             ; preds = %.lr.ph12
  %i.i = add nuw nsw i64 %.sroa.01.1.i11, 1       ; 2 uses
  %exitcond19.not = icmp eq i64 %i.i, %1
  br i1 %exitcond19.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit.thread, label %.lr.ph12

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit: ; preds = %.lr.ph, %.lr.ph12, %.preheader6, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader6 ], [ 2, %.preheader ], [ %.sroa.01.1.i11, %.lr.ph12 ], [ %.sroa.01.0.i8, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit.thread, label %bb.e

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit
  br i1 %i.c, label %bb.f, label %.thread

bb.e:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB17_16sort_unstable_byNCNvB19_12sort_entriess1_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noundef align 8 null, i32 noundef %i.p, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #37
  br label %.thread

.thread:                                          ; preds = %bb.a, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit.thread, %bb.f, %bb.e
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess1_0E0EB14_.exit.thread
  %i.q = lshr i64 %1, 1                           ; 4 uses
  %i.r = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %1
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [304 x i8], ptr %i.r, i64 %i.s
  tail call fastcc void @_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCs5EcwQX7phGK_5uu_ls8PathDataEBQ_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %i.q, ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %i.q, i64 noundef %i.q) #40
  br label %.thread
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SBT_16sort_unstable_byNCNvBV_12sort_entriess2_0E0EBV_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %0) #40 ; 2 uses
  %.not16 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader6

.preheader6:                                      ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit, label %.lr.ph12

.lr.ph:                                           ; preds = %.preheader6, %bb.c
  %.sroa.01.0.i8 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader6 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.0.i8
  %3 = add nsw i64 %.sroa.01.0.i8, -1             ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %3
  %i.e = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %5) #40
  br i1 %i.e, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i8, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit.thread, label %.lr.ph

.lr.ph12:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i11 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.1.i11
  %6 = add nsw i64 %.sroa.01.1.i11, -1            ; 2 uses
  %7 = icmp samesign ult i64 %6, %1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %6
  %i.h = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull align 8 %8) #40
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit

bb.d:                                             ; preds = %.lr.ph12
  %i.i = add nuw nsw i64 %.sroa.01.1.i11, 1       ; 2 uses
  %exitcond19.not = icmp eq i64 %i.i, %1
  br i1 %exitcond19.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit.thread, label %.lr.ph12

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit: ; preds = %.lr.ph, %.lr.ph12, %.preheader6, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader6 ], [ 2, %.preheader ], [ %.sroa.01.1.i11, %.lr.ph12 ], [ %.sroa.01.0.i8, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit.thread, label %bb.e

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit
  br i1 %i.c, label %bb.f, label %.thread

bb.e:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB17_16sort_unstable_byNCNvB19_12sort_entriess2_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noundef align 8 null, i32 noundef %i.p, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #37
  br label %.thread

.thread:                                          ; preds = %bb.a, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit.thread, %bb.f, %bb.e
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess2_0E0EB14_.exit.thread
  %i.q = lshr i64 %1, 1                           ; 4 uses
  %i.r = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %1
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [304 x i8], ptr %i.r, i64 %i.s
  tail call fastcc void @_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCs5EcwQX7phGK_5uu_ls8PathDataEBQ_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %i.q, ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %i.q, i64 noundef %i.q) #40
  br label %.thread
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SBT_16sort_unstable_byNCNvBV_12sort_entriess3_0E0EBV_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load i64, ptr %i.c, align 8, !range !27, !noundef !4 ; 3 uses
  %cond.i.i.i = icmp eq i64 %i.d, -2              ; 2 uses
  %spec.select.i.i.i = select i1 %cond.i.i.i, i64 8, i64 32
  %spec.select5.i.i.i = select i1 %cond.i.i.i, i64 16, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select5.i.i.i
  %.sroa.0.0.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i.i.i = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !range !27, !noundef !4
  %cond.i8.i.i = icmp eq i64 %i.h, -2             ; 2 uses
  %spec.select.i9.i.i = select i1 %cond.i8.i.i, i64 8, i64 32
  %spec.select5.i10.i.i = select i1 %cond.i8.i.i, i64 16, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i9.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select5.i10.i.i
  %.sroa.0.0.i11.i.i = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i12.i.i = load i64, ptr %i.j, align 8, !noundef !4 ; 4 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i, i64 %.sroa.4.0.i12.i.i)
  %i.k = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i, ptr nonnull %.sroa.0.0.i11.i.i, i64 %spec.store.select.i.i) ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp eq i32 %i.k, 0
  %i.n = sub i64 %.sroa.4.0.i.i.i, %.sroa.4.0.i12.i.i
  %spec.select.i.i = select i1 %i.m, i64 %i.n, i64 %i.l
  %i.o = icmp eq i64 %.sroa.4.0.i.i.i, %.sroa.4.0.i12.i.i
  %i.p = icmp slt i64 %spec.select.i.i, 0
  %i.q = icmp ult i64 %.sroa.4.0.i.i.i, %.sroa.4.0.i12.i.i
  %i.r = select i1 %i.o, i1 %i.p, i1 %i.q         ; 2 uses
  %.not40 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader30

.preheader30:                                     ; preds = %bb.b
  br i1 %.not40, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not40, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit, label %.lr.ph36

.lr.ph:                                           ; preds = %.preheader30, %bb.c
  %i.s = phi i64 [ %i.v, %bb.c ], [ %i.d, %.preheader30 ]
  %.sroa.01.0.i32 = phi i64 [ %i.ai, %bb.c ], [ 2, %.preheader30 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.0.i32 ; 3 uses
  %3 = add nsw i64 %.sroa.01.0.i32, -1            ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !range !27, !noundef !4 ; 2 uses
  %cond.i.i.i2 = icmp eq i64 %i.v, -2             ; 2 uses
  %spec.select.i.i.i3 = select i1 %cond.i.i.i2, i64 8, i64 32
  %spec.select5.i.i.i4 = select i1 %cond.i.i.i2, i64 16, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %spec.select.i.i.i3
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %spec.select5.i.i.i4
  %.sroa.0.0.i.i.i5 = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i.i.i6 = load i64, ptr %i.x, align 8, !noundef !4 ; 4 uses
  %cond.i8.i.i7 = icmp eq i64 %i.s, -2            ; 2 uses
  %spec.select.i9.i.i8 = select i1 %cond.i8.i.i7, i64 8, i64 32
  %spec.select5.i10.i.i9 = select i1 %cond.i8.i.i7, i64 16, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select.i9.i.i8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select5.i10.i.i9
  %.sroa.0.0.i11.i.i10 = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i12.i.i11 = load i64, ptr %i.z, align 8, !noundef !4 ; 4 uses
  %spec.store.select.i.i12 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i6, i64 %.sroa.4.0.i12.i.i11)
  %i.aa = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i5, ptr nonnull %.sroa.0.0.i11.i.i10, i64 %spec.store.select.i.i12) ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %.sroa.4.0.i.i.i6, %.sroa.4.0.i12.i.i11
  %spec.select.i.i13 = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp eq i64 %.sroa.4.0.i.i.i6, %.sroa.4.0.i12.i.i11
  %i.af = icmp slt i64 %spec.select.i.i13, 0
  %i.ag = icmp ult i64 %.sroa.4.0.i.i.i6, %.sroa.4.0.i12.i.i11
  %i.ah = select i1 %i.ae, i1 %i.af, i1 %i.ag
  br i1 %i.ah, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ai = add nuw nsw i64 %.sroa.01.0.i32, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit.thread, label %.lr.ph

.lr.ph36:                                         ; preds = %.preheader, %bb.d
  %i.aj = phi i64 [ %i.am, %bb.d ], [ %i.d, %.preheader ]
  %.sroa.01.1.i35 = phi i64 [ %i.az, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.1.i35 ; 3 uses
  %6 = add nsw i64 %.sroa.01.1.i35, -1            ; 2 uses
  %7 = icmp samesign ult i64 %6, %1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %6 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i64, ptr %i.al, align 8, !range !27, !noundef !4 ; 2 uses
  %cond.i.i.i14 = icmp eq i64 %i.am, -2           ; 2 uses
  %spec.select.i.i.i15 = select i1 %cond.i.i.i14, i64 8, i64 32
  %spec.select5.i.i.i16 = select i1 %cond.i.i.i14, i64 16, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %spec.select.i.i.i15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %spec.select5.i.i.i16
  %.sroa.0.0.i.i.i17 = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i.i.i18 = load i64, ptr %i.ao, align 8, !noundef !4 ; 4 uses
  %cond.i8.i.i19 = icmp eq i64 %i.aj, -2          ; 2 uses
  %spec.select.i9.i.i20 = select i1 %cond.i8.i.i19, i64 8, i64 32
  %spec.select5.i10.i.i21 = select i1 %cond.i8.i.i19, i64 16, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 %spec.select.i9.i.i20
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 %spec.select5.i10.i.i21
  %.sroa.0.0.i11.i.i22 = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i12.i.i23 = load i64, ptr %i.aq, align 8, !noundef !4 ; 4 uses
  %spec.store.select.i.i24 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i18, i64 %.sroa.4.0.i12.i.i23)
  %i.ar = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i17, ptr nonnull %.sroa.0.0.i11.i.i22, i64 %spec.store.select.i.i24) ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp eq i32 %i.ar, 0
  %i.au = sub i64 %.sroa.4.0.i.i.i18, %.sroa.4.0.i12.i.i23
  %spec.select.i.i25 = select i1 %i.at, i64 %i.au, i64 %i.as
  %i.av = icmp eq i64 %.sroa.4.0.i.i.i18, %.sroa.4.0.i12.i.i23
  %i.aw = icmp slt i64 %spec.select.i.i25, 0
  %i.ax = icmp ult i64 %.sroa.4.0.i.i.i18, %.sroa.4.0.i12.i.i23
  %i.ay = select i1 %i.av, i1 %i.aw, i1 %i.ax
  br i1 %i.ay, label %bb.d, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit

bb.d:                                             ; preds = %.lr.ph36
  %i.az = add nuw nsw i64 %.sroa.01.1.i35, 1      ; 2 uses
  %exitcond43.not = icmp eq i64 %i.az, %1
  br i1 %exitcond43.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit.thread, label %.lr.ph36

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit: ; preds = %.lr.ph, %.lr.ph36, %.preheader30, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader30 ], [ 2, %.preheader ], [ %.sroa.01.1.i35, %.lr.ph36 ], [ %.sroa.01.0.i32, %.lr.ph ] ; 2 uses
  %i.ba = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bb, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit.thread, label %bb.e

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit
  br i1 %i.r, label %bb.f, label %.thread

bb.e:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit
  %i.bc = or i64 %1, 1
  %i.bd = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.bc, i1 true)
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = xor i32 %i.bf, 126
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB17_16sort_unstable_byNCNvB19_12sort_entriess3_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noundef align 8 null, i32 noundef %i.bg, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #37
  br label %.thread

.thread:                                          ; preds = %bb.a, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit.thread, %bb.f, %bb.e
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit.thread
  %i.bh = lshr i64 %1, 1                          ; 4 uses
  %i.bi = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %1
  %i.bj = sub nsw i64 0, %i.bh
  %i.bk = getelementptr inbounds [304 x i8], ptr %i.bi, i64 %i.bj
  tail call fastcc void @_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCs5EcwQX7phGK_5uu_ls8PathDataEBQ_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %i.bh, ptr noalias nofree noundef nonnull align 8 %i.bk, i64 noundef %i.bh, i64 noundef %i.bh) #40
  br label %.thread
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SBT_16sort_unstable_byNCNvBV_12sort_entriess_0E0EBV_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %0) #40 ; 2 uses
  %.not16 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader6

.preheader6:                                      ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit, label %.lr.ph12

.lr.ph:                                           ; preds = %.preheader6, %bb.c
  %.sroa.01.0.i8 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader6 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.0.i8
  %3 = add nsw i64 %.sroa.01.0.i8, -1             ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %3
  %i.e = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %5) #40
  br i1 %i.e, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i8, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread, label %.lr.ph

.lr.ph12:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i11 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.1.i11
  %6 = add nsw i64 %.sroa.01.1.i11, -1            ; 2 uses
  %7 = icmp samesign ult i64 %6, %1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %6
  %i.h = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull align 8 %8) #40
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit

bb.d:                                             ; preds = %.lr.ph12
  %i.i = add nuw nsw i64 %.sroa.01.1.i11, 1       ; 2 uses
  %exitcond19.not = icmp eq i64 %i.i, %1
  br i1 %exitcond19.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread, label %.lr.ph12

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit: ; preds = %.lr.ph, %.lr.ph12, %.preheader6, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader6 ], [ 2, %.preheader ], [ %.sroa.01.1.i11, %.lr.ph12 ], [ %.sroa.01.0.i8, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread, label %bb.e

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit
  br i1 %i.c, label %bb.f, label %.thread

bb.e:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB17_16sort_unstable_byNCNvB19_12sort_entriess_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noundef align 8 null, i32 noundef %i.p, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #37
  br label %.thread

.thread:                                          ; preds = %bb.a, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread, %bb.f, %bb.e
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread
  %i.q = lshr i64 %1, 1                           ; 4 uses
  %i.r = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %1
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [304 x i8], ptr %i.r, i64 %i.s
  tail call fastcc void @_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCs5EcwQX7phGK_5uu_ls8PathDataEBQ_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %i.q, ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %i.q, i64 noundef %i.q) #40
  br label %.thread
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SBT_20sort_unstable_by_keyINtNtB8_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBV_12sort_entries0E0EBV_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val3 = load ptr, ptr %2, align 8, !nonnull !4, !align !16, !noundef !4 ; 6 uses
  %.val1.i = load ptr, ptr %.val3, align 8        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !6, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.c, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %i.d) #37 ; 0 uses
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !range !8
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i: ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %i.c, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %.not.i.i.i = icmp eq i64 %i.f, 2
  br i1 %.not.i.i.i, label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 275
  %i.h = load i8, ptr %i.g, align 1, !range !29, !noundef !4
  %i.i = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.b, i8 noundef %i.h) #37 ; 2 uses
  %i.j = extractvalue { i64, i32 } %i.i, 1        ; 2 uses
  %.not8.i.i = icmp eq i32 %i.j, -1               ; 2 uses
  %i.k = extractvalue { i64, i32 } %i.i, 0
  %spec.select.i.i = select i1 %.not8.i.i, i32 0, i32 %i.j
  %spec.select9.i.i = select i1 %.not8.i.i, i64 0, i64 %i.k
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i

_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i: ; preds = %bb.d, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i
  %.sroa.5.0.i.i = phi i32 [ %spec.select.i.i, %bb.d ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i ]
  %.sroa.0.0.i.i = phi i64 [ %spec.select9.i.i, %bb.d ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i ] ; 2 uses
  %.val.i = load ptr, ptr %.val3, align 8         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !4 ; 2 uses
  %.not.i.i.i6.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i.i6.i, label %bb.e, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i, !prof !7

bb.e:                                             ; preds = %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i
  %i.n = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.l, ptr noundef nonnull align 8 %0) #37 ; 0 uses
  %.pre.i.i14.i = load i64, ptr %i.l, align 8, !range !8
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i: ; preds = %bb.e, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i
  %i.o = phi i64 [ %i.m, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i ], [ %.pre.i.i14.i, %bb.e ]
  %.not.i.i8.i = icmp eq i64 %i.o, 2
  br i1 %.not.i.i8.i, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 275
  %i.q = load i8, ptr %i.p, align 1, !range !29, !noundef !4
  %i.r = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l, i8 noundef %i.q) #37 ; 2 uses
  %i.s = extractvalue { i64, i32 } %i.r, 1        ; 2 uses
  %.not8.i9.i = icmp eq i32 %i.s, -1              ; 2 uses
  %i.t = extractvalue { i64, i32 } %i.r, 0
  %spec.select.i10.i = select i1 %.not8.i9.i, i32 0, i32 %i.s
  %spec.select9.i11.i = select i1 %.not8.i9.i, i64 0, i64 %i.t
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit: ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i, %bb.f
  %.sroa.5.0.i12.i = phi i32 [ %spec.select.i10.i, %bb.f ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i ]
  %.sroa.0.0.i13.i = phi i64 [ %spec.select9.i11.i, %bb.f ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i ] ; 2 uses
  %i.u = icmp eq i64 %.sroa.0.0.i13.i, %.sroa.0.0.i.i
  %i.v = icmp ult i32 %.sroa.5.0.i12.i, %.sroa.5.0.i.i
  %i.w = icmp slt i64 %.sroa.0.0.i13.i, %.sroa.0.0.i.i
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w         ; 2 uses
  %.not60 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.x, label %.preheader, label %.preheader52

.preheader52:                                     ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit
  br i1 %.not60, label %.thread, label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit
  br i1 %.not60, label %.thread77, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader52, %bb.k
  %.sroa.01.0.i54 = phi i64 [ %i.ay, %bb.k ], [ 2, %.preheader52 ] ; 4 uses
  %i.y = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.0.i54 ; 2 uses
  %i.z = add nsw i64 %.sroa.01.0.i54, -1          ; 2 uses
  %i.aa = icmp samesign ult i64 %i.z, %1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.z ; 2 uses
  %.val1.i4 = load ptr, ptr %.val3, align 8       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !6, !noundef !4 ; 2 uses
  %.not.i.i.i.i5 = icmp eq i64 %i.ad, -1
  br i1 %.not.i.i.i.i5, label %bb.g, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6, !prof !7

bb.g:                                             ; preds = %.lr.ph
  %i.ae = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.ac, ptr noundef nonnull align 8 %i.y) #37 ; 0 uses
  %.pre.i.i.i24 = load i64, ptr %i.ac, align 8, !range !8
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6: ; preds = %bb.g, %.lr.ph
  %i.af = phi i64 [ %i.ad, %.lr.ph ], [ %.pre.i.i.i24, %bb.g ]
  %.not.i.i.i7 = icmp eq i64 %i.af, 2
  br i1 %.not.i.i.i7, label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11, label %bb.h

bb.h:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i4) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i4, i64 275
  %i.ah = load i8, ptr %i.ag, align 1, !range !29, !noundef !4
  %i.ai = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ac, i8 noundef %i.ah) #37 ; 2 uses
  %i.aj = extractvalue { i64, i32 } %i.ai, 1      ; 2 uses
  %.not8.i.i8 = icmp eq i32 %i.aj, -1             ; 2 uses
  %i.ak = extractvalue { i64, i32 } %i.ai, 0
  %spec.select.i.i9 = select i1 %.not8.i.i8, i32 0, i32 %i.aj
  %spec.select9.i.i10 = select i1 %.not8.i.i8, i64 0, i64 %i.ak
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11

_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11: ; preds = %bb.h, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6
  %.sroa.5.0.i.i12 = phi i32 [ %spec.select.i.i9, %bb.h ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6 ]
  %.sroa.0.0.i.i13 = phi i64 [ %spec.select9.i.i10, %bb.h ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6 ] ; 2 uses
  %.val.i14 = load ptr, ptr %.val3, align 8       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !range !6, !noundef !4 ; 2 uses
  %.not.i.i.i6.i15 = icmp eq i64 %i.am, -1
  br i1 %.not.i.i.i6.i15, label %bb.i, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16, !prof !7

bb.i:                                             ; preds = %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11
  %i.an = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.al, ptr noundef nonnull align 8 %i.ab) #37 ; 0 uses
  %.pre.i.i14.i23 = load i64, ptr %i.al, align 8, !range !8
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16: ; preds = %bb.i, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11
  %i.ao = phi i64 [ %i.am, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11 ], [ %.pre.i.i14.i23, %bb.i ]
  %.not.i.i8.i17 = icmp eq i64 %i.ao, 2
  br i1 %.not.i.i8.i17, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit25, label %bb.j

bb.j:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i14) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i14, i64 275
  %i.aq = load i8, ptr %i.ap, align 1, !range !29, !noundef !4
  %i.ar = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.al, i8 noundef %i.aq) #37 ; 2 uses
  %i.as = extractvalue { i64, i32 } %i.ar, 1      ; 2 uses
  %.not8.i9.i18 = icmp eq i32 %i.as, -1           ; 2 uses
  %i.at = extractvalue { i64, i32 } %i.ar, 0
  %spec.select.i10.i19 = select i1 %.not8.i9.i18, i32 0, i32 %i.as
  %spec.select9.i11.i20 = select i1 %.not8.i9.i18, i64 0, i64 %i.at
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit25

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit25: ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16, %bb.j
  %.sroa.5.0.i12.i21 = phi i32 [ %spec.select.i10.i19, %bb.j ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16 ]
  %.sroa.0.0.i13.i22 = phi i64 [ %spec.select9.i11.i20, %bb.j ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16 ] ; 2 uses
  %i.au = icmp eq i64 %.sroa.0.0.i13.i22, %.sroa.0.0.i.i13
  %i.av = icmp ult i32 %.sroa.5.0.i12.i21, %.sroa.5.0.i.i12
  %i.aw = icmp slt i64 %.sroa.0.0.i13.i22, %.sroa.0.0.i.i13
  %i.ax = select i1 %i.au, i1 %i.av, i1 %i.aw
  br i1 %i.ax, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB14_12sort_entries0E0EB14_.exit, label %bb.k

bb.k:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit25
  %i.ay = add nuw nsw i64 %.sroa.01.0.i54, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %1
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB1m_11sort_by_keybNCNvB1o_12sort_entriess4_0E0EB1o_:.lr.ph
  call void @llvm.assume(i1 %i.ae)
  br label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store ptr %i.af, ptr %i.j, align 8, !alias.scope !1105, !noalias !1104
  store i8 3, ptr %i.c, align 8, !alias.scope !1105, !noalias !1104
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #37, !noalias !1104
  br label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i

_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1104
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i

bb.j:                                             ; preds = %bb.f
  %.sroa.71.0.copyload.i.i = load i32, ptr %.sroa.71.0..sroa_idx.i.i, align 8, !noalias !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1102
  %i.ag = and i32 %.sroa.71.0.copyload.i.i, 61440
  %i.ah = icmp eq i32 %i.ag, 16384
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i

bb.k:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i.i
  %i.ai = load i32, ptr %i.k, align 4, !noundef !4
  %i.aj = and i32 %i.ai, 61440
  %i.ak = icmp eq i32 %i.aj, 16384
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i

_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i: ; preds = %bb.k, %bb.j, %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i
  %.sroa.02.0.in.i.i = phi i1 [ %i.ak, %bb.k ], [ false, %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i ], [ %i.ah, %bb.j ]
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -8
  %i.am = load i8, ptr %i.al, align 8, !range !11, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -80 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !range !9, !noundef !4 ; 2 uses
  %.not.i.i.i10.i = icmp eq i32 %i.ap, 2
  br i1 %.not.i.i.i10.i, label %bb.m, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i11.i, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.aq = call fastcc noundef nonnull align 4 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8FileTypeEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData9file_type0E0zEB2m_(ptr noundef nonnull align 4 %i.ao, ptr noundef nonnull align 8 %i.q) #37 ; 0 uses
  %.pre.i.i12.i = load i32, ptr %i.ao, align 8, !range !30
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i11.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i11.i: ; preds = %bb.m, %bb.l
  %i.ar = phi i32 [ %i.ap, %bb.l ], [ %.pre.i.i12.i, %bb.m ]
  %i.as = trunc nuw i32 %i.ar to i1
  br i1 %i.as, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i11.i, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i
  %.sroa.03.0.in.i1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -296
  %.sroa.03.0.i2.i = load ptr, ptr %.sroa.03.0.in.i1.i, align 8, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i3.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -288
  %.sroa.3.0.i4.i = load i64, ptr %.sroa.3.0.in.i3.i, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1107
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i2.i, i64 noundef %.sroa.3.0.i4.i) #37, !noalias !1108
  %i.at = load i64, ptr %i.b, align 8, !range !8, !noalias !1107, !noundef !4
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr %i.l, align 8, !noalias !1107, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1109
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = and i64 %i.aw, 3
  switch i64 %i.ax, label %default.unreachable [
    i64 2, label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i
    i64 3, label %bb.p
    i64 0, label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i
    i64 1, label %bb.q
  ], !prof !13

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp ult ptr %i.av, inttoptr (i64 188978561024 to ptr)
  %i.az = and i64 %i.aw, 1095216660480
  %i.ba = icmp ne i64 %i.az, 1095216660480
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.assume(i1 %i.ba)
  br label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i

bb.q:                                             ; preds = %bb.o
  %i.bb = getelementptr i8, ptr %i.av, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  store ptr %i.bb, ptr %i.m, align 8, !alias.scope !1110, !noalias !1109
  store i8 3, ptr %i.a, align 8, !alias.scope !1110, !noalias !1109
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #37, !noalias !1109
  br label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i

_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1109
  br label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit

bb.r:                                             ; preds = %bb.n
  %.sroa.71.0.copyload.i6.i = load i32, ptr %.sroa.71.0..sroa_idx.i5.i, align 8, !noalias !1111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1107
  %i.bc = and i32 %.sroa.71.0.copyload.i6.i, 61440
  %i.bd = icmp eq i32 %i.bc, 16384
  br label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit

bb.s:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i11.i
  %i.be = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -76
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  %i.bg = and i32 %i.bf, 61440
  %i.bh = icmp eq i32 %i.bg, 16384
  br label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit

_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit: ; preds = %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i, %bb.r, %bb.s
  %.sroa.02.0.in.i7.i = phi i1 [ %i.bh, %bb.s ], [ false, %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i ], [ %i.bd, %bb.r ]
  %i.bi = xor i1 %.sroa.02.0.in.i7.i, true
  %i.bj = and i1 %.sroa.02.0.in.i.i, %i.bi
  br i1 %i.bj, label %bb.c, label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit._crit_edge

_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit._crit_edge: ; preds = %bb.c, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit, %bb.b
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.b ], [ %0, %bb.c ], [ %.sroa.0.0.i1, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(304) %i.e, i64 304, i1 false), !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB18_11sort_by_keybNCNvB1a_12sort_entriess4_0E0EB1a_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB18_11sort_by_keybNCNvB1a_12sort_entriess4_0E0EB1a_.exit: ; preds = %bb.a, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit._crit_edge
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 304 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.f
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift4sortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSBW_11sort_by_keybNCNvBY_12sort_entriess4_0E0EBY_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 30340039594917026) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [176 x i8], align 8               ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [176 x i8], align 8               ; 7 uses
  %i.i = alloca [66 x i8], align 1                ; 4 uses
  %i.j = alloca [528 x i8], align 8               ; 4 uses
  %i.k = icmp samesign ult i64 %1, 2
  br i1 %i.k, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = udiv i64 4611686018427387904, %1
  %i.m = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.m, 0
  %i.n = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.l, %i.n         ; 2 uses
  %i.o = icmp samesign ult i64 %1, 4097
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i64 @_RNvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1) #37
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = lshr i64 %1, 1
  %i.r = sub nuw nsw i64 %1, %i.q
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.p, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.sroa.71.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.71.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.71.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.71.0..sroa_idx.i5.i50 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i129 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.bf, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.bf ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.hm, %bb.bf ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.hk, %bb.bf ] ; 3 uses
  %i.aa = icmp ult i64 %.sroa.09.0, %1            ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit
  %.sroa.021.0 = phi i8 [ %i.bg, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.ab = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.ab, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.ad = sub nuw nsw i64 %1, %.sroa.09.0         ; 13 uses
  %i.ae = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.ad, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread127, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.af = icmp samesign ult i64 %i.ad, 2
  br i1 %i.af, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  %i.ah = call fastcc noundef zeroext i1 @_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_(ptr noundef nonnull align 8 %i.ag, ptr noundef nonnull align 8 %i.ae) #40, !noalias !1177, !inline_history !1116 ; 2 uses
  %.not98 = icmp eq i64 %i.ad, 2                  ; 2 uses
  br i1 %i.ah, label %.preheader, label %.preheader72

.preheader72:                                     ; preds = %bb.k
  br i1 %.not98, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not98, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread127, label %.lr.ph85

.lr.ph:                                           ; preds = %.preheader72, %bb.l
  %.sroa.01.0.i.i81 = phi i64 [ %i.ak, %bb.l ], [ 2, %.preheader72 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [304 x i8], ptr %i.ae, i64 %.sroa.01.0.i.i81
  %6 = add nsw i64 %.sroa.01.0.i.i81, -1          ; 2 uses
  %7 = icmp ult i64 %6, %i.ad
  call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [304 x i8], ptr %i.ae, i64 %6
  %i.aj = call fastcc noundef zeroext i1 @_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_(ptr noundef nonnull align 8 %i.ai, ptr noundef nonnull align 8 %8) #40, !noalias !1177, !inline_history !1116
  br i1 %i.aj, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ak = add nuw i64 %.sroa.01.0.i.i81, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.ad
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i, label %.lr.ph

.lr.ph85:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i84 = phi i64 [ %i.an, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.al = getelementptr inbounds nuw [304 x i8], ptr %i.ae, i64 %.sroa.01.1.i.i84
  %9 = add nsw i64 %.sroa.01.1.i.i84, -1          ; 2 uses
  %10 = icmp ult i64 %9, %i.ad
  call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [304 x i8], ptr %i.ae, i64 %9
  %i.am = call fastcc noundef zeroext i1 @_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_(ptr noundef nonnull align 8 %i.al, ptr noundef nonnull align 8 %11) #40, !noalias !1177, !inline_history !1116
  br i1 %i.am, label %bb.m, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i

bb.m:                                             ; preds = %.lr.ph85
  %i.an = add nuw i64 %.sroa.01.1.i.i84, 1        ; 2 uses
  %exitcond105.not = icmp eq i64 %i.an, %i.ad
  br i1 %exitcond105.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i, label %.lr.ph85

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph85
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i84, %.lr.ph85 ], [ %i.ad, %bb.m ], [ %.sroa.01.0.i.i81, %.lr.ph ], [ %i.ad, %bb.l ] ; 4 uses
  %i.ao = icmp samesign ule i64 %.sroa.0.0.i.i, %i.ad
  call void @llvm.assume(i1 %i.ao)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread127: ; preds = %.preheader
  br i1 %.not5.i129, label %bb.i, label %.thread130

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread: ; preds = %.preheader72
  br i1 %.not5.i123, label %bb.i, label %.thread

bb.n:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i
  br i1 %i.ah, label %.thread130, label %.thread

bb.o:                                             ; preds = %bb.i
  %..i36 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 30340039594917026) %i.ad, i64 %.sroa.01.0)
  %i.ap = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 30340039594917026) %i.ad, i64 16) ; 2 uses
  call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_11sort_by_keybNCNvB17_12sort_entriess4_0E0EB17_(ptr noalias nofree noundef nonnull align 8 %i.ae, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 30340039594917026) %3, i32 noundef 0, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1116
  %i.aq = shl nuw nsw i64 %..i35, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit

.thread:                                          ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread, %bb.j, %.thread130, %bb.n
  %.sroa.0.0.i.i6770 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i124132, %.thread130 ], [ %i.ad, %bb.j ], [ 2, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread ]
  %i.as = shl nuw nsw i64 %.sroa.0.0.i.i6770, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit

.thread130:                                       ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread127, %bb.n
  %.sroa.0.0.i.i124132 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread127 ] ; 3 uses
  %i.au = lshr i64 %.sroa.0.0.i.i124132, 1        ; 4 uses
  %i.av = getelementptr inbounds nuw [304 x i8], ptr %i.ae, i64 %.sroa.0.0.i.i124132
  %i.aw = sub nsw i64 0, %i.au
  %i.ax = getelementptr inbounds [304 x i8], ptr %i.av, i64 %i.aw
  call fastcc void @_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCs5EcwQX7phGK_5uu_ls8PathDataEBQ_(ptr noalias nofree noundef nonnull align 8 %i.ae, i64 noundef %i.au, ptr noalias nofree noundef nonnull align 8 %i.ax, i64 noundef %i.au, i64 noundef %i.au) #40, !noalias !1177
  br label %.thread

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit: ; preds = %bb.o, %bb.p, %.thread
  %.sroa.0.0.i32 = phi i64 [ %i.at, %.thread ], [ %i.ar, %bb.p ], [ %i.ap, %bb.o ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ba = sub nsw i64 %factor, %i.ay
  %i.bb = add nuw nsw i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.g

bb.q:                                             ; preds = %.lr.ph91, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit
  %.sroa.02.190 = phi i64 [ %.sroa.02.0, %.lr.ph91 ], [ %i.bh, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit ] ; 2 uses
  %.sroa.023.189 = phi i64 [ %.sroa.023.0, %.lr.ph91 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.190, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit, %bb.q, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.189, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.190, %bb.q ], [ 1, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.aa, label %bb.bf, label %bb.bg

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.023.189, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.189 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.189
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl nuw nsw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bu, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bz = or i64 %i.bo, 1
  %i.ca = call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_11sort_by_keybNCNvB17_12sort_entriess4_0E0EB17_(ptr noalias nofree noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 30340039594917026) %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 30340039594917026) %3, i32 noundef %i.cd, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1117
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw [304 x i8], ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_11sort_by_keybNCNvB17_12sort_entriess4_0E0EB17_(ptr noalias nofree noundef nonnull align 8 %i.ce, i64 noundef range(i64 0, 30340039594917026) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 30340039594917026) %3, i32 noundef %i.cj, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1117
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5merge5mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSBX_11sort_by_keybNCNvBZ_12sort_entriess4_0E0EBZ_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %..i.i = call i64 @llvm.umin.i64(i64 %i.bp, i64 range(i64 0, -9223372036854775808) %i.bo) ; 2 uses
  %i.cm = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cm, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5merge5mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSBX_11sort_by_keybNCNvBZ_12sort_entriess4_0E0EBZ_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw [304 x i8], ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cn, ptr %i.bs
  %i.co = mul nuw nsw i64 %..i.i, 304             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.co, i1 false), !alias.scope !1178
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.co ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit62
  %i.cq = phi ptr [ %i.ev, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit62 ], [ %i.cp, %.critedge.i ] ; 6 uses
  %i.cr = phi ptr [ %i.et, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit62 ], [ %i.cn, %.critedge.i ] ; 6 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.cu, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit62 ], [ %i.ac, %.critedge.i ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -304 ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -304 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -304 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 -8
  %i.cw = load i8, ptr %i.cv, align 8, !range !11, !noalias !1179, !noundef !4
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.preheader.i
  %i.cy = getelementptr inbounds i8, ptr %i.cq, i64 -80 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 8, !range !9, !noalias !1179, !noundef !4 ; 2 uses
  %.not.i.i.i.i59 = icmp eq i32 %i.cz, 2
  br i1 %.not.i.i.i.i59, label %bb.aa, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i.i60, !prof !7

bb.aa:                                            ; preds = %bb.z
  %i.da = call fastcc noundef nonnull align 4 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8FileTypeEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData9file_type0E0zEB2m_(ptr noundef nonnull align 4 %i.cy, ptr noundef nonnull align 8 %i.ct) #37, !noalias !1179 ; 0 uses
  %.pre.i.i.i61 = load i32, ptr %i.cy, align 8, !range !30, !noalias !1179
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i.i60

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i.i60: ; preds = %bb.aa, %bb.z
  %i.db = phi i32 [ %i.cz, %bb.z ], [ %.pre.i.i.i61, %bb.aa ]
  %i.dc = trunc nuw i32 %i.db to i1
  br i1 %i.dc, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i.i60, %.preheader.i
  %.sroa.03.0.in.i.i38 = getelementptr inbounds i8, ptr %i.cq, i64 -296
  %.sroa.03.0.i.i39 = load ptr, ptr %.sroa.03.0.in.i.i38, align 8, !noalias !1179, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i40 = getelementptr inbounds i8, ptr %i.cq, i64 -288
  %.sroa.3.0.i.i41 = load i64, ptr %.sroa.3.0.in.i.i40, align 8, !noalias !1179, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1180
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i.i39, i64 noundef %.sroa.3.0.i.i41) #37, !noalias !1181
  %i.dd = load i64, ptr %i.d, align 8, !range !8, !noalias !1180, !noundef !4
  %i.de = icmp eq i64 %i.dd, 2
  br i1 %i.de, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.df = load ptr, ptr %i.w, align 8, !noalias !1180, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1182
  %i.dg = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.dh = and i64 %i.dg, 3
  switch i64 %i.dh, label %.unreachabledefault [
    i64 2, label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i58
    i64 3, label %bb.ad
    i64 0, label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i58
    i64 1, label %bb.ae
  ], !prof !13

.unreachabledefault:                              ; preds = %bb.ac
end_hunk_1
