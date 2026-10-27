Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.08?download=true
inline.NumInlined: 531
inline.NumDeleted: 320
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs6_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEE9pop_frontB1v_:bb.a
bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.f, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = load i64, ptr %i.c, align 8, !noundef !4
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.a, i64 noundef 40, i64 noundef 8) #25, !noalias !695
  br label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEE9pop_frontB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !4   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4 ; 3 uses
  store ptr %i.e, ptr %1, align 8
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.f, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = load i64, ptr %i.c, align 8, !noundef !4
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.a, i64 noundef 40, i64 noundef 8) #25, !noalias !698
  br label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEE9pop_frontB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !4   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4 ; 3 uses
  store ptr %i.e, ptr %1, align 8
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.f, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = load i64, ptr %i.c, align 8, !noundef !4
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.a, i64 noundef 40, i64 noundef 8) #25, !noalias !701
  br label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTmIB1c_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEE9pop_frontB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !4   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4 ; 3 uses
  store ptr %i.e, ptr %1, align 8
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.f, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = load i64, ptr %i.c, align 8, !noundef !4
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.a, i64 noundef 40, i64 noundef 8) #25, !noalias !704
  br label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecyEE9pop_frontCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !4   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4 ; 3 uses
  store ptr %i.e, ptr %1, align 8
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.f, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = load i64, ptr %i.c, align 8, !noundef !4
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.a, i64 noundef 40, i64 noundef 8) #25, !noalias !707
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCsbzNSmZPCnTx_10tgrep_core6ondiskNtB4_11LookupEntry6decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbzNSmZPCnTx_10tgrep_core.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.07.0.copyload = load i64, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.07.0.copyload, ptr %0, align 8
  %i.c = load <4 x i32>, ptr %1, align 1
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <2 x i32> <i32 0, i32 3>
  store <2 x i32> %i.d, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbzNSmZPCnTx_10tgrep_core6ondisk15file_table_body(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = tail call noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 12)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i64 %2, 15
  br i1 %i.g, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.e

bb.d:                                             ; preds = %.split, %bb.g, %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core6ondisk15file_table_body0B5_.exit, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !710
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 29, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !710
  %i.h = load i64, ptr %i.a, align 8, !range !9, !noalias !710, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !10, !noalias !710, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.f, label %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core6ondisk15file_table_body0B5_.exit, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.l, align 8, !noalias !710
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #28, !noalias !710
  unreachable

_RNCNvNtCsbzNSmZPCnTx_10tgrep_core6ondisk15file_table_body0B5_.exit: ; preds = %bb.e
  %i.n = load ptr, ptr %i.l, align 8, !noalias !710, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp samesign ugt i64 %i.k, 28
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !710
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.n, ptr noundef nonnull align 1 dereferenceable(29) @3, i64 29, i1 false), !noalias !710
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = inttoptr i64 %i.k to ptr
  store i64 3, ptr %0, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 29, ptr %.sroa.641.0..sroa_idx, align 8
  br label %bb.d

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.037.0.copyload = load i32, ptr %i.r, align 1 ; 2 uses
  store i32 %.sroa.037.0.copyload, ptr %i.c, align 4
  %i.s = icmp eq i32 %.sroa.037.0.copyload, 3
  br i1 %i.s, label %bb.g, label %.split

.split:                                           ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.428.0..sroa_idx, ptr noundef nonnull @6, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.g:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbzNSmZPCnTx_10tgrep_core.exit
  %i.t = add nsw i64 %2, -16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.w, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbzNSmZPCnTx_10tgrep_core6ondisk19decode_file_entries(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.m, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.445.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.a

._crit_edge:                                      ; preds = %bb.t, %.split
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.b

bb.a:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.0.095 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.t ] ; 3 uses
  %i.r = add nuw i64 %.sroa.0.095, 6              ; 4 uses
  %i.s = icmp ugt i64 %i.r, %2
  br i1 %i.s, label %bb.c, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbzNSmZPCnTx_10tgrep_core.exit

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTmNtNtBG_6string6StringEEECsbzNSmZPCnTx_10tgrep_core.exit76, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.095 ; 2 uses
  %.sroa.027.0.copyload = load i32, ptr %i.t, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.028.0.copyload = load i16, ptr %i.u, align 1
  %i.v = zext i16 %.sroa.028.0.copyload to i64    ; 3 uses
  store i64 %i.v, ptr %i.g, align 8
  %i.w = add nuw i64 %i.r, %i.v                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, %2
  br i1 %i.x, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.y = sub nuw nsw i64 %2, %.sroa.0.095
  store i64 %i.y, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @8, ptr noundef nonnull %i.h)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.h, %bb.g, %bb.c, %bb.l
  %lpad.loopexit.split-lp132 = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.body73:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.aq, %bb.q ], [ %lpad.loopexit.split-lp132, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.body73
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTmNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %.body73
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTmNtNtB7_6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.x

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.g:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ab = sub nuw nsw i64 %2, %i.r
  store i64 %i.ab, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ac, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @7, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  invoke void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.v)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.ae = load i64, ptr %i.c, align 8, !range !714, !noundef !4 ; 2 uses
  %.not63 = icmp eq i64 %i.ae, -1
  %i.af = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.ag = load i64, ptr %.sroa.445.0..sroa_idx, align 8 ; 6 uses
  br i1 %.not63, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ag, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %i.a, align 8, !range !9, !noundef !4
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = load i64, ptr %i.n, align 8, !range !10, !noundef !4 ; 4 uses
  br i1 %i.ai, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.ak = load i64, ptr %i.o, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.ak) #28
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.am = icmp ule i64 %i.ag, %i.aj
  call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not64 = icmp eq i64 %i.ag, 0
  br i1 %.not64, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %i.af, i64 %i.ag, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.m, %bb.n
  %.sroa.041.0 = phi i64 [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %bb.i ]
  %.sroa.3.0 = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.af, %bb.i ]
  %.sroa.445.0 = phi i64 [ 0, %bb.m ], [ %i.ag, %bb.n ], [ %i.ag, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.027.0.copyload, ptr %i.b, align 8
  store i64 %.sroa.041.0, ptr %i.p, align 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx43, align 8
  store i64 %.sroa.445.0, ptr %.sroa.445.0..sroa_idx46, align 8
  %i.an = load i64, ptr %i.m, align 8, !alias.scope !715, !noundef !4 ; 3 uses
  %i.ao = load i64, ptr %i.k, align 8, !range !6, !alias.scope !715, !noundef !4
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTmNtNtB7_6string6StringEE8grow_oneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.t unwind label %bb.q, !noalias !716

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #27
          to label %.body73 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.s:                                             ; preds = %bb.l
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.as = load ptr, ptr %i.l, align 8, !alias.scope !715, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.au = add i64 %i.an, 1
  store i64 %i.au, ptr %i.m, align 8, !alias.scope !715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.av = icmp ult i64 %i.w, %2
  br i1 %i.av, label %bb.a, label %._crit_edge
end_hunk_0
