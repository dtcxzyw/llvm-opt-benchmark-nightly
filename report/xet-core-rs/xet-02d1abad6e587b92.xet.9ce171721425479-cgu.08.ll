Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.08?download=true
inline.NumInlined: 1501
inline.NumDeleted: 682
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet:bb.a
.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.014.023.i = phi ptr [ %i.m, %bb.d ], [ %i.c, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.l, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %bb.d ], [ %i.d, %.lr.ph.preheader.i ]
  %i.j = icmp eq ptr %.sroa.014.023.i, %i.i
  br i1 %i.j, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 48
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.sroa.7.022.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.014.023.i, i64 48, i1 false), !noalias !1985
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit: ; preds = %.lr.ph.i, %bb.d, %bb.a
  %.sroa.10.0.i31.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %bb.d ], [ %i.g, %.lr.ph.i ]
  store i64 %i.d, ptr %0, align 8, !alias.scope !1985, !noalias !1988
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i31.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1985, !noalias !1988
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1985, !noalias !1988
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  %i.e = mul nuw nsw i64 %i.d, 48                 ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1995
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1995 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #30, !noalias !1996
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.014.023.i = phi ptr [ %i.m, %bb.d ], [ %i.c, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.l, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %bb.d ], [ %i.d, %.lr.ph.preheader.i ]
  %i.j = icmp eq ptr %.sroa.014.023.i, %i.i
  br i1 %i.j, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 48
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.sroa.7.022.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.014.023.i, i64 48, i1 false), !noalias !1994
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit: ; preds = %.lr.ph.i, %bb.d, %bb.a
  %.sroa.10.0.i31.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %bb.d ], [ %i.g, %.lr.ph.i ]
  store i64 %i.d, ptr %0, align 8, !alias.scope !1994, !noalias !1997
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i31.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1994, !noalias !1997
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1994, !noalias !1997
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  %i.e = mul nuw nsw i64 %i.d, 48                 ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2004
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2004 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #30, !noalias !2005
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.014.023.i = phi ptr [ %i.m, %bb.d ], [ %i.c, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.l, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %bb.d ], [ %i.d, %.lr.ph.preheader.i ]
  %i.j = icmp eq ptr %.sroa.014.023.i, %i.i
  br i1 %i.j, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 48
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.sroa.7.022.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.014.023.i, i64 48, i1 false), !noalias !2003
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit: ; preds = %.lr.ph.i, %bb.d, %bb.a
  %.sroa.10.0.i31.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %bb.d ], [ %i.g, %.lr.ph.i ]
  store i64 %i.d, ptr %0, align 8, !alias.scope !2003, !noalias !2006
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i31.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2003, !noalias !2006
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !2003, !noalias !2006
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsQbU2fm3lSD_3xet11xet_session20upload_stream_handle15XetStreamUploadENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  %i.e = shl nuw nsw i64 %i.d, 4                  ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsQbU2fm3lSD_3xet11xet_session20upload_stream_handle15XetStreamUploadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2013
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2013 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #30, !noalias !2014
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %.sroa.014.025.i = phi ptr [ %i.l, %bb.h ], [ %i.c, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.024.i = phi i64 [ %i.m, %bb.h ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.023.i = phi i64 [ %i.j, %bb.h ], [ %i.d, %.lr.ph.preheader.i ]
  %i.j = add nsw i64 %.sroa.10.023.i, -1          ; 2 uses
  %i.k = icmp eq ptr %.sroa.014.025.i, %i.i
  br i1 %i.k, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsQbU2fm3lSD_3xet11xet_session20upload_stream_handle15XetStreamUploadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.014.025.i, i64 16
  %i.m = add nuw nsw i64 %.sroa.7.024.i, 1
  %.val12.i = load ptr, ptr %.sroa.014.025.i, align 8, !alias.scope !2012, !noalias !2015, !nonnull !7, !noundef !7 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.014.025.i, i64 8
  %.val13.i = load ptr, ptr %i.n, align 8, !alias.scope !2012, !noalias !2015 ; 3 uses
  %i.o = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !2014
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.q = atomicrmw add ptr %.val13.i, i64 1 monotonic, align 8, !noalias !2014
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.7.024.i ; 2 uses
  store ptr %.val12.i, ptr %i.s, align 8, !noalias !2014
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.val13.i, ptr %i.t, align 8, !noalias !2014
  %i.u = icmp eq i64 %i.j, 0
  br i1 %i.u, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsQbU2fm3lSD_3xet11xet_session20upload_stream_handle15XetStreamUploadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsQbU2fm3lSD_3xet11xet_session20upload_stream_handle15XetStreamUploadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit: ; preds = %bb.h, %.lr.ph.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %.lr.ph.i ], [ %i.g, %bb.h ]
  store i64 %i.d, ptr %0, align 8, !noalias !2012
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2012
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2012
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  %i.e = mul nuw nsw i64 %i.d, 56                 ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2025
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2025 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #30, !noalias !2026
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %.lr.ph.preheader.i
  %.sroa.012.052.i = phi ptr [ %i.l, %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.c, %.lr.ph.preheader.i ] ; 7 uses
  %.sroa.7.051.i = phi i64 [ %i.m, %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.050.i = phi i64 [ %i.j, %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.d, %.lr.ph.preheader.i ]
  %i.j = add nsw i64 %.sroa.10.050.i, -1          ; 2 uses
  %i.k = icmp eq ptr %.sroa.012.052.i, %i.i
  br i1 %i.k, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 56
  %i.m = add nuw nsw i64 %.sroa.7.051.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 16
  %i.o = load <2 x i64>, ptr %i.n, align 8, !alias.scope !2028, !noalias !2029
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 32
  %i.q = load <2 x i32>, ptr %i.p, align 8, !alias.scope !2028, !noalias !2029
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 40
  %i.s = load <2 x i64>, ptr %i.r, align 8, !alias.scope !2028, !noalias !2029
  %i.t = load ptr, ptr %.sroa.012.052.i, align 8, !alias.scope !2028, !noalias !2029, !nonnull !7, !noundef !7 ; 2 uses
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8, !noalias !2030
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2028, !noalias !2029, !nonnull !7, !noundef !7 ; 2 uses
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8, !noalias !2030
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %.sroa.7.051.i ; 5 uses
  store ptr %i.t, ptr %i.aa, align 8, !noalias !2026
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.x, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !2026
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x i64> %i.o, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !2026
  %.sroa.738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store <2 x i32> %i.q, ptr %.sroa.738.0..sroa_idx.i, align 8, !noalias !2026
  %.sroa.940.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store <2 x i64> %i.s, ptr %.sroa.940.0..sroa_idx.i, align 8, !noalias !2026
  %i.ab = icmp eq i64 %i.j, 0
  br i1 %i.ab, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit: ; preds = %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %.lr.ph.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %.lr.ph.i ], [ %i.g, %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  store i64 %i.d, ptr %0, align 8, !noalias !2024
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2024
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2024
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !2036, !noalias !2037
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !alias.scope !2036, !noalias !2037
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8, !alias.scope !2036, !noalias !2037
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsQbU2fm3lSD_3xet.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2038
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2038 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.d) #30, !noalias !2039
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !2036, !noalias !2037
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8, !alias.scope !2036, !noalias !2037
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !2036
  store i64 %i.d, ptr %i.k, align 8, !alias.scope !2036, !noalias !2037
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsQbU2fm3lSD_3xet.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsQbU2fm3lSD_3xet.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !2045, !noalias !2046
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8, !alias.scope !2045, !noalias !2046
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !2045, !noalias !2046
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsQbU2fm3lSD_3xet.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2047
  %i.i = tail call noundef align 4 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !2047 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #30, !noalias !2048
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !2045, !noalias !2046
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8, !alias.scope !2045, !noalias !2046
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull readonly align 4 %i.c, i64 %i.e, i1 false), !noalias !2045
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !2045, !noalias !2046
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsQbU2fm3lSD_3xet.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsQbU2fm3lSD_3xet.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  %i.g = icmp eq ptr %.val1, %.val
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit.i
  %.sroa.0.011.i = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.0.011.i, 1        ; 2 uses
  %.val8.i = load i64, ptr %i.h, align 8, !alias.scope !2055 ; 2 uses
  %i.j = icmp eq i64 %.val8.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val9.i = load ptr, ptr %i.k, align 8, !alias.scope !2055, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %.val8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2056
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.l = icmp eq i64 %i.i, %i.f
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !7 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VechENtNtBO_5alloc6GlobalEECsQbU2fm3lSD_3xet.exit4, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit
  %i.p = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.q = mul nuw i64 %i.n, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2057
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VechENtNtBO_5alloc6GlobalEECsQbU2fm3lSD_3xet.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VechENtNtBO_5alloc6GlobalEECsQbU2fm3lSD_3xet.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsQbU2fm3lSD_3xet.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3                   ; 3 uses
  %i.g = icmp eq ptr %.val1, %.val
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit8.i, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %.body
  %i.k = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.l = shl nuw i64 %i.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2072
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsQbU2fm3lSD_3xet.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i
  %.sroa.0.09.i = phi i64 [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !2075, !nonnull !7, !noundef !7
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !2076
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.r = icmp eq i64 %i.n, %i.f
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.n, %i.f
  br i1 %i.t, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsQbU2fm3lSD_3xet.exit8.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.v = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2078)
end_hunk_0
begin_hunk_1_@_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtB7_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet:bb.a
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2688)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtCsexYYUdYSQU6_5alloc6string6StringEECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtCsexYYUdYSQU6_5alloc6string6StringEECsQbU2fm3lSD_3xet.exit.i
  %.sroa.0.07.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtCsexYYUdYSQU6_5alloc6string6StringEECsQbU2fm3lSD_3xet.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %.sroa.0.07.i ; 6 uses
  %i.g = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2690)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !2691 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !2691, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2692
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val2.i.i.i = load i64, ptr %i.k, align 8, !range !11, !alias.scope !2691, !noundef !7 ; 2 uses
  %i.l = icmp sgt i64 %.val2.i.i.i, 0
  br i1 %i.l, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoECsQbU2fm3lSD_3xet.exit.i.i

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val3.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !2691, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2693
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoECsQbU2fm3lSD_3xet.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoECsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.val.i.i = load i64, ptr %i.n, align 8, !alias.scope !2694 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtCsexYYUdYSQU6_5alloc6string6StringEECsQbU2fm3lSD_3xet.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoECsQbU2fm3lSD_3xet.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.val1.i.i = load ptr, ptr %i.p, align 8, !alias.scope !2694, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2695
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtCsexYYUdYSQU6_5alloc6string6StringEECsQbU2fm3lSD_3xet.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtCsexYYUdYSQU6_5alloc6string6StringEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoECsQbU2fm3lSD_3xet.exit.i.i
  %i.q = icmp eq i64 %i.g, %i.d
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtCsexYYUdYSQU6_5alloc6string6StringEECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtCsexYYUdYSQU6_5alloc6string6StringEECsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtCsexYYUdYSQU6_5alloc6string6StringEECsQbU2fm3lSD_3xet.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRShBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2706)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsQbU2fm3lSD_3xet.exit.i
  %.sroa.0.07.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsQbU2fm3lSD_3xet.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [168 x i8], ptr %i.b, i64 %.sroa.0.07.i ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2708)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !2709 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsQbU2fm3lSD_3xet.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !2709, !nonnull !7, !noundef !7
  %i.k = mul nuw i64 %.val.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2710
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsQbU2fm3lSD_3xet.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsQbU2fm3lSD_3xet.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.val2.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !2709 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsQbU2fm3lSD_3xet.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsQbU2fm3lSD_3xet.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.val3.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !2709, !nonnull !7, !noundef !7
  %i.o = mul nuw i64 %.val2.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2711
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsQbU2fm3lSD_3xet.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsQbU2fm3lSD_3xet.exit.i.i.i
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsQbU2fm3lSD_3xet.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyTmmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTymEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEINtNtCskKLDkoKarTP_4core7convert4FromRSBF_E4fromCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2717)
  %i.a = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2718
  %i.c = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2718 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.a) #30, !noalias !2719
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %i.k, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet.exit.i ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.j, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.f, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet.exit.i ], [ %2, %.lr.ph.preheader.i ]
  %i.f = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.g = icmp eq ptr %.sroa.013.023.i, %i.e
  br i1 %i.g, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.013.023.i, align 8, !alias.scope !2717, !noalias !2720, !nonnull !7, !noundef !7 ; 2 uses
  %i.h = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !2719
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.d
  %i.j = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.7.022.i
  store ptr %.val12.i, ptr %i.l, align 8, !noalias !2719
  %i.m = icmp eq i64 %i.f, 0
  br i1 %i.m, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit: ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet.exit.i, %.lr.ph.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.c, %.lr.ph.i ], [ %i.c, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet.exit.i ]
  store i64 %2, ptr %0, align 8, !noalias !2717
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2717
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2717
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !18, !noalias !2725, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsQbU2fm3lSD_3xet.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsQbU2fm3lSD_3xet.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs94TQx44N27d_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @72, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB1L_17FileUploadSession17register_new_xorb00s0_0EINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(424), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB1J_21SessionShardInterface34upload_and_register_session_shards00EINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(448), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB1M_17SingleFileCleaner22deduper_process_chunks00EINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(960), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB2Q_17FileUploadSession17register_new_xorb00s0_0EEEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB2O_21SessionShardInterface34upload_and_register_session_shards00EEEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB2R_17SingleFileCleaner22deduper_process_chunks00EEEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime11bridge_syncNtNtB21_13upload_commit15XetUploadCommitNCNvMB3j_INtNtB21_18auth_group_builder16AuthGroupBuilderB3h_E14build_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime11bridge_syncNtNtB21_18upload_file_handle13XetFileUploadNCNvMs1_NtB21_13upload_commitNtB46_15XetUploadCommit21upload_bytes_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime11bridge_syncNtNtB21_18upload_file_handle13XetFileUploadNCNvMs1_NtB21_13upload_commitNtB46_15XetUploadCommit25upload_from_path_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime11bridge_syncNtNtB21_19file_download_group20XetFileDownloadGroupNCNvMB3j_INtNtB21_18auth_group_builder16AuthGroupBuilderB3h_E14build_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime11bridge_syncNtNtB21_20file_download_handle15XetFileDownloadNCNvMs_NtB21_19file_download_groupNtB49_20XetFileDownloadGroup30download_file_to_path_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime11bridge_syncNtNtB21_20upload_stream_handle15XetStreamUploadNCNvMs1_NtB21_13upload_commitNtB4a_15XetUploadCommit22upload_stream_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime11bridge_syncNtNtB21_21download_stream_group22XetDownloadStreamGroupNCNvMs_B3j_INtNtB21_18auth_group_builder16AuthGroupBuilderB3h_E14build_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime11bridge_syncNtNtB21_22download_stream_handle17XetDownloadStreamNCNvMs1_NtB21_21download_stream_groupNtB4e_22XetDownloadStreamGroup24download_stream_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime11bridge_syncNtNtB21_22download_stream_handle26XetUnorderedDownloadStreamNCNvMs1_NtB21_21download_stream_groupNtB4n_22XetDownloadStreamGroup34download_unordered_stream_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime22bridge_sync_finalizingINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtB21_20file_download_handle17XetDownloadReportENCNvMs_NtB21_19file_download_groupNtB6d_20XetFileDownloadGroup15finish_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime22bridge_sync_finalizingNtNtB21_13upload_commit15XetCommitReportNCNvMs1_B3u_NtB3u_15XetUploadCommit15commit_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime22bridge_sync_finalizingNtNtB21_13upload_commit15XetFileMetadataNCNvMs0_NtB21_20upload_stream_handleNtB4e_15XetStreamUpload15finish_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime22bridge_sync_finalizingNtNtB21_13upload_commit15XetFileMetadataNCNvMs_NtB21_18upload_file_handleNtB4d_13XetFileUpload27finalize_ingestion_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB1Z_11TaskRuntime22bridge_sync_finalizingNtNtB21_20file_download_handle17XetDownloadReportNCNvMB3u_NtB3u_15XetFileDownload15finish_blocking0E0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB23_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB1Y_17FileUploadSession12upload_filesNtNtB1m_6string6StringINtNtNtNtBQ_4iter8adapters3zip3ZipINtNtNtB1m_3vec9into_iter8IntoIterB3z_EIB4u_NtNtB20_12file_cleaner12Sha256PolicyEEE00EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1Y_10XetRuntime15bridge_to_ownedINtNtBQ_6result6ResultNtNtNtCsQbU2fm3lSD_3xet11xet_session13upload_commit15XetFileMetadataNtNtB3Q_5error8XetErrorENCNCINvMs1_NtB3O_12task_runtimeNtB5p_11TaskRuntime15run_inner_asyncB3K_IBM_IB1i_DNtNtNtBQ_6future6future6Futurep6OutputB3o_NtNtBQ_6marker4SendEL_EEE00E00EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB3Q_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1Y_10XetRuntime15bridge_to_ownedINtNtBQ_6result6ResultNtNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handle17XetDownloadReportNtNtB3Q_5error8XetErrorENCNCINvMs1_NtB3O_12task_runtimeNtB5y_11TaskRuntime15run_inner_asyncB3K_IBM_IB1i_DNtNtNtBQ_6future6future6Futurep6OutputB3o_NtNtBQ_6marker4SendEL_EEE00E00EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB3Q_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvMs_NtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockINtB20_10RwTaskLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB3e_5error9CoreErrorE6updateNCNCNCNvMs0_B3a_NtB3a_16ShardFileManager15register_shards0s0_00NCB5e_s0_0E00EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCINvNtNtCsarFSTFZzLuM_11xet_runtime4core9par_utils30run_constrained_with_semaphoreINtNtCs942S7uueXw1_7tracing10instrument12InstrumentedNCNCNCNCNvNtNtCsQbU2fm3lSD_3xet6legacy11data_client18upload_bytes_async00s0_00ENtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoNtNtB5r_5error9DataErrorINtNtNtNtBQ_4iter8adapters3map3MapINtNtB6P_3zip3ZipINtNtNtB1m_3vec9into_iter8IntoIterINtB7E_3VechEEIB7A_NtNtB5p_12file_cleaner12Sha256PolicyEENCB48_s0_0EE00EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB4i_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB24_9XorbBlock13retrieve_data000s0_0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB22_16ShardFileManager15register_shards0s0_00EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB1X_17FileUploadSession18spawn_upload_bytes00EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB1X_17FileUploadSession22spawn_upload_from_path00EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms7managerNtB1X_25ReconstructionTermManager14prefetch_block00EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB1X_8FileTerm13get_data_task0s_0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMs0_NtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupNtB20_25XetFileDownloadGroupInner27start_download_file_to_path00EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMs_NtNtCsjHtSR7YjKD4_8xet_data10processing21file_download_sessionNtB1Z_19FileDownloadSession24download_file_background00EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs2_NtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking15callback_bridgeNtB1Y_28GroupProgressCallbackUpdater5start0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs3_NtNtNtCsQbU2fm3lSD_3xet6legacy17progress_tracking15callback_bridgeNtB1Y_27ItemProgressCallbackUpdater5start0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session13upload_commitNtB1X_20XetUploadCommitInner21register_spawned_task0EEINtNtB1m_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB21_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime11bridge_syncNtNtBW_13upload_commit15XetUploadCommitNCNvMB2d_INtNtBW_18auth_group_builder16AuthGroupBuilderB2b_E14build_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(7720), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime11bridge_syncNtNtBW_18upload_file_handle13XetFileUploadNCNvMs1_NtBW_13upload_commitNtB2Z_15XetUploadCommit21upload_bytes_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime11bridge_syncNtNtBW_18upload_file_handle13XetFileUploadNCNvMs1_NtBW_13upload_commitNtB2Z_15XetUploadCommit25upload_from_path_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(712), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime11bridge_syncNtNtBW_19file_download_group20XetFileDownloadGroupNCNvMB2d_INtNtBW_18auth_group_builder16AuthGroupBuilderB2b_E14build_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(7720), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime11bridge_syncNtNtBW_20file_download_handle15XetFileDownloadNCNvMs_NtBW_19file_download_groupNtB32_20XetFileDownloadGroup30download_file_to_path_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(984), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime11bridge_syncNtNtBW_20upload_stream_handle15XetStreamUploadNCNvMs1_NtBW_13upload_commitNtB33_15XetUploadCommit22upload_stream_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(440), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime11bridge_syncNtNtBW_21download_stream_group22XetDownloadStreamGroupNCNvMs_B2d_INtNtBW_18auth_group_builder16AuthGroupBuilderB2b_E14build_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(7720), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime11bridge_syncNtNtBW_22download_stream_handle17XetDownloadStreamNCNvMs1_NtBW_21download_stream_groupNtB37_22XetDownloadStreamGroup24download_stream_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(696), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime11bridge_syncNtNtBW_22download_stream_handle26XetUnorderedDownloadStreamNCNvMs1_NtBW_21download_stream_groupNtB3g_22XetDownloadStreamGroup34download_unordered_stream_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(696), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime22bridge_sync_finalizingINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdNtNtBW_20file_download_handle17XetDownloadReportENCNvMs_NtBW_19file_download_groupNtB56_20XetFileDownloadGroup15finish_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1592), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime22bridge_sync_finalizingNtNtBW_13upload_commit15XetCommitReportNCNvMs1_B2o_NtB2o_15XetUploadCommit15commit_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(3896), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime22bridge_sync_finalizingNtNtBW_13upload_commit15XetFileMetadataNCNvMs0_NtBW_20upload_stream_handleNtB37_15XetStreamUpload15finish_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(7400), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime22bridge_sync_finalizingNtNtBW_13upload_commit15XetFileMetadataNCNvMs_NtBW_18upload_file_handleNtB36_13XetFileUpload27finalize_ingestion_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(408), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtBU_11TaskRuntime22bridge_sync_finalizingNtNtBW_20file_download_handle17XetDownloadReportNCNvMB2o_NtB2o_15XetFileDownload15finish_blocking0E0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBY_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(408), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtBT_17FileUploadSession12upload_filesNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtB2x_3vec9into_iter8IntoIterB2t_EIB3U_NtNtBV_12file_cleaner12Sha256PolicyEEE00INtNtB2x_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4112), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskNCNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtBT_10XetRuntime15bridge_to_ownedINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsQbU2fm3lSD_3xet11xet_session13upload_commit15XetFileMetadataNtNtB30_5error8XetErrorENCNCINvMs1_NtB2Y_12task_runtimeNtB4z_11TaskRuntime15run_inner_asyncB2U_INtNtB2n_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputB2i_NtNtB2n_6marker4SendEL_EEE00E00INtNtB5T_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB30_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(320), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0
end_hunk_1
