Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.15?download=true
inline.NumInlined: 1048
inline.NumDeleted: 586
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBI_2__HEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #27, !noalias !1371
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d
  %i.j = and i64 %i.d, 1152921504606846975
  %i.k = add i64 %i.d, -1
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.k) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.l, 1152921504606846974      ; 4 uses
  %i.m = shl nuw i64 %n.vec, 4
  %i.n = getelementptr i8, ptr %i.c, i64 %i.m
  %i.o = sub i64 %i.d, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.p = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.p
  %i.q = getelementptr i8, ptr %i.c, i64 %i.p
  %next.gep3 = getelementptr i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !noalias !1368
  %wide.load4 = load <2 x i64>, ptr %next.gep3, align 8, !noalias !1368
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %index
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i64> %wide.load, ptr %i.r, align 8, !noalias !1371
  store <2 x i64> %wide.load4, ptr %i.t, align 8, !noalias !1371
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %.lr.ph.i.preheader, label %vector.body, !llvm.loop !1366

.lr.ph.i.preheader:                               ; preds = %vector.body, %.lr.ph.preheader.i
  %.sroa.016.025.i.ph = phi ptr [ %i.c, %.lr.ph.preheader.i ], [ %i.n, %vector.body ]
  %.sroa.7.024.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %vector.body ]
  %.sroa.10.023.i.ph = phi i64 [ %i.d, %.lr.ph.preheader.i ], [ %i.o, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.sroa.016.025.i = phi ptr [ %i.y, %bb.d ], [ %.sroa.016.025.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.7.024.i = phi i64 [ %i.x, %bb.d ], [ %.sroa.7.024.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.10.023.i = phi i64 [ %i.w, %bb.d ], [ %.sroa.10.023.i.ph, %.lr.ph.i.preheader ]
  %i.v = icmp eq ptr %.sroa.016.025.i, %i.i
  br i1 %i.v, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBN_2__HENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = add nsw i64 %.sroa.10.023.i, -1          ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.7.024.i, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 16
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.7.024.i
  %i.aa = load <2 x i64>, ptr %.sroa.016.025.i, align 8, !alias.scope !1369, !noalias !1368
  store <2 x i64> %i.aa, ptr %i.z, align 8, !noalias !1371
  %i.ab = icmp eq i64 %i.w, 0
  br i1 %i.ab, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBN_2__HENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i, !llvm.loop !1367

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBN_2__HENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit: ; preds = %.lr.ph.i, %bb.d, %bb.a
  %.sroa.10.0.i33.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %bb.d ], [ %i.g, %.lr.ph.i ]
  store i64 %i.d, ptr %0, align 8, !alias.scope !1368, !noalias !1369
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i33.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1368, !noalias !1369
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1368, !noalias !1369
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %i.e = mul nuw nsw i64 %i.d, 48                 ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1378
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1378 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #27, !noalias !1379
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.014.023.i = phi ptr [ %i.m, %bb.d ], [ %i.c, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.l, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %bb.d ], [ %i.d, %.lr.ph.preheader.i ]
  %i.j = icmp eq ptr %.sroa.014.023.i, %i.i
  br i1 %i.j, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 48
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.sroa.7.022.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.014.023.i, i64 48, i1 false), !noalias !1377
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit: ; preds = %.lr.ph.i, %bb.d, %bb.a
  %.sroa.10.0.i31.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %bb.d ], [ %i.g, %.lr.ph.i ]
  store i64 %i.d, ptr %0, align 8, !alias.scope !1377, !noalias !1380
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i31.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1377, !noalias !1380
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1377, !noalias !1380
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.e = mul nuw nsw i64 %i.d, 56                 ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1390
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1390 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #27, !noalias !1391
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
  br i1 %i.k, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 56
  %i.m = add nuw nsw i64 %.sroa.7.051.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 16
  %i.o = load <2 x i64>, ptr %i.n, align 8, !alias.scope !1393, !noalias !1394
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 32
  %i.q = load <2 x i32>, ptr %i.p, align 8, !alias.scope !1393, !noalias !1394
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 40
  %i.s = load <2 x i64>, ptr %i.r, align 8, !alias.scope !1393, !noalias !1394
  %i.t = load ptr, ptr %.sroa.012.052.i, align 8, !alias.scope !1393, !noalias !1394, !nonnull !7, !noundef !7 ; 2 uses
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8, !noalias !1395
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1393, !noalias !1394, !nonnull !7, !noundef !7 ; 2 uses
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8, !noalias !1395
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
  store ptr %i.t, ptr %i.aa, align 8, !noalias !1391
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.x, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !1391
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x i64> %i.o, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !1391
  %.sroa.738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store <2 x i32> %i.q, ptr %.sroa.738.0..sroa_idx.i, align 8, !noalias !1391
  %.sroa.940.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store <2 x i64> %i.s, ptr %.sroa.940.0..sroa_idx.i, align 8, !noalias !1391
  %i.ab = icmp eq i64 %i.j, 0
  br i1 %i.ab, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit: ; preds = %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %.lr.ph.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %.lr.ph.i ], [ %i.g, %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  store i64 %i.d, ptr %0, align 8, !noalias !1389
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1389
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1389
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !1401, !noalias !1402
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !alias.scope !1401, !noalias !1402
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8, !alias.scope !1401, !noalias !1402
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1403
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1403 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.d) #27, !noalias !1404
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !1401, !noalias !1402
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8, !alias.scope !1401, !noalias !1402
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !1401
  store i64 %i.d, ptr %i.k, align 8, !alias.scope !1401, !noalias !1402
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !1410, !noalias !1411
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8, !alias.scope !1410, !noalias !1411
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !1410, !noalias !1411
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1412
  %i.i = tail call noundef align 4 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1412 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #27, !noalias !1413
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !1410, !noalias !1411
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8, !alias.scope !1410, !noalias !1411
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull readonly align 4 %i.c, i64 %i.e, i1 false), !noalias !1410
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !1410, !noalias !1411
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %.body
  %i.k = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.l = shl nuw i64 %i.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1428
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i
  %.sroa.0.09.i = phi i64 [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !1431, !nonnull !7, !noundef !7
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !1432
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.r = icmp eq i64 %i.n, %i.f
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.n, %i.f
  br i1 %i.t, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.v = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  %i.w = load ptr, ptr %i.u, align 8, !alias.scope !1435, !nonnull !7, !noundef !7
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !1436
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.z = icmp eq i64 %i.v, %i.f
  br i1 %i.z, label %.body, label %.lr.ph12.i

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !7 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit4, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit
  %i.ae = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.af = shl nuw i64 %i.ac, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1437
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit, %bb.g
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.b, %.body
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
end_hunk_0
begin_hunk_1_@_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1900, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1901
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val2.i.i.i = load i64, ptr %i.k, align 8, !range !14, !alias.scope !1900, !noundef !7 ; 2 uses
  %i.l = icmp sgt i64 %.val2.i.i.i, 0
  br i1 %i.l, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBI_.exit.i

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val3.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1900, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1902
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBI_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBI_.exit.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBJ_.exit, label %.lr.ph.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBJ_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBI_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRShBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i
  %.sroa.0.07.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [168 x i8], ptr %i.b, i64 %.sroa.0.07.i ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1916 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1916, !nonnull !7, !noundef !7
  %i.k = mul nuw i64 %.val.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1917
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.val2.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1916 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.val3.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1916, !nonnull !7, !noundef !7
  %i.o = mul nuw i64 %.val2.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1918
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyTmmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTymEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEINtNtCskKLDkoKarTP_4core7convert4FromRSBF_E4fromCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  %i.a = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1925
  %i.c = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1925 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.a) #27, !noalias !1926
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i, %.lr.ph.preheader.i
  %.sroa.013.023.i = phi ptr [ %i.k, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.j, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.f, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i ], [ %2, %.lr.ph.preheader.i ]
  %i.f = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.g = icmp eq ptr %.sroa.013.023.i, %i.e
  br i1 %i.g, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.013.023.i, align 8, !alias.scope !1924, !noalias !1927, !nonnull !7, !noundef !7 ; 2 uses
  %i.h = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !1926
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.d
  %i.j = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.7.022.i
  store ptr %.val12.i, ptr %i.l, align 8, !noalias !1926
  %i.m = icmp eq i64 %i.f, 0
  br i1 %i.m, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i, %.lr.ph.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.c, %.lr.ph.i ], [ %i.c, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i ]
  store i64 %2, ptr %0, align 8, !noalias !1924
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1924
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1924
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs94TQx44N27d_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @49, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_CsakO97VULfQA_8tempfileNtB5_7Builder10tempdir_inRNtNtCsG258MDvU3F_3std4path7PathBufECsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBb_4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEE6insertCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBT_14metadata_shard12xorb_structs11MDBXorbInfoEyEINtNtBR_18passthrough_hasher15U64DirectHasherBN_EE6insertCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3setINtB5_4IterjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBz_2__CENtB6_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtB6_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking15upload_tracking23XorbPartCompletionStatsNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtNtCskKLDkoKarTP_4core6option6OptionTjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntrybEENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBR_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking15upload_tracking23XorbPartCompletionStatsEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB25_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager17ChunkCacheElementEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync9once_cellINtB5_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block13XorbBlockDataEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapmjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapmmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCskKLDkoKarTP_4core2io4util5ChainINtBZ_4TakeNtNtCsG258MDvU3F_3std2fs4FileEINtNtB11_6cursor6CursorINtNtB8_3vec3VechEEEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteB1L_EECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(1928)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB8_3vec3VechEEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(1928)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(1928)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1b_14metadata_shard12file_structs11MDBFileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB3w_21SessionShardInterface3new00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtNtCsG258MDvU3F_3std4path7PathBufNCINvMsk_NtB1s_3vecINtB6T_3VecB6c_E14extend_trustedBN_E0E0EB3C_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCNCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data10processing14migration_tool7migrate18migrate_files_impl000ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3z_8for_each4callNtNtB2c_12file_cleaner12Sha256PolicyNCINvMsk_NtB1r_3vecINtB5l_3VecB4C_E14extend_trustedBN_E0E0EB2e_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4j_8for_each4callINtB1p_5RangeyNtB1p_2__HENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5U_3VecB5m_E14extend_trustedBN_E0E0EB2z_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callINtB1p_5RangemNtB1p_2__CENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5T_3VecB5l_E14extend_trustedBN_E0E0EB2z_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2z_11FileDeduperNtNtNtB2D_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5o_8for_each4callNtNtNtB1t_10merklehash9data_hash8DataHashNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7f_3VecB6r_E14extend_trustedBN_E0E0EB2D_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2z_11FileDeduperNtNtNtB2D_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5q_8for_each4callTNtNtNtB1t_10merklehash9data_hash8DataHashyENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7k_3VecB6t_E14extend_trustedBN_E0E0EB2D_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2Z_11FileDeduperNtNtNtB33_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5G_8for_each4callNtB1p_21FileVerificationEntryNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7l_3VecB6J_E14extend_trustedBN_E0E0EB33_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2I_11FileDeduperNtNtNtB2M_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5q_8for_each4callB1o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB1o_E14extend_trustedBN_E0E0EB2M_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENCNCNvB1N_24retrieve_file_term_block0s6_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callNtB1N_8FileTermNCINvMsk_B12_INtB12_3VecB56_E14extend_trustedBN_E0E0EB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication15data_aggregatorNtB1S_14DataAggregator8merge_in0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calljNCINvMsk_B12_INtB12_3VecjE14extend_trustedBN_E0E0EB1W_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockINtB2_19RwTaskLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB1o_5error9CoreErrorENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashTjjEINtNtBS_18passthrough_hasher15U64DirectHasherBO_EE12contains_keyBO_ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCslc8SwK8fohf_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1o_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB7_8BTreeMapmmEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTmmEE9from_iterINtNtNtB1j_8adapters3map3MapINtNtB2w_6filter6FilterINtNtNtB1l_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB3N_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB4Q_9XorbBlock26determine_size_if_possible0ENCB4K_s_0EEB4W_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapmjE6insertCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapmjE3getmECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapmjE5entryCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs2_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_5EntrymjE9or_insertCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), i64 noundef) unnamed_addr #0
end_hunk_1
