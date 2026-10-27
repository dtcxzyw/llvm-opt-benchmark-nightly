Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.14?download=true
inline.NumInlined: 1423
inline.NumDeleted: 703
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs7_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io4seek4Seek4seekCsQbU2fm3lSD_3xet:bb.a
  %i.s = trunc nuw i64 %i.q to i1
  br i1 %i.s, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = sub i64 0, %i.f
  %i.v = tail call { i64, ptr } @_RNvXsc_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.t, i64 noundef 2, i64 noundef %i.u) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = extractvalue { i64, ptr } %i.v, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.z = tail call { i64, ptr } @_RNvXsc_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.t, i64 noundef 2, i64 noundef %2) ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.d
  %.sroa.028.0 = phi ptr [ %i.r, %bb.d ], [ %i.ab, %bb.g ], [ %i.l, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.g, %bb.d, %bb.f, %bb.h
  %.sroa.6.0 = phi ptr [ %i.y, %bb.f ], [ %i.r, %bb.d ], [ %.sroa.028.0, %bb.h ], [ %i.ab, %bb.g ], [ %i.l, %bb.c ]
  %.sroa.06.0 = phi i64 [ 1, %bb.f ], [ 1, %bb.d ], [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %bb.c ]
  %i.ae = insertvalue { i64, ptr } poison, i64 %.sroa.06.0, 0
  %i.af = insertvalue { i64, ptr } %i.ae, ptr %.sroa.6.0, 1
  ret { i64, ptr } %i.af
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsQbU2fm3lSD_3xet11xet_session12task_runtime11TaskRuntimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 96, i64 noundef 8) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_group27XetDownloadStreamGroupInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 144, i64 noundef 8) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsV_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs4_NtNtCs6SYjS1KFWza_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXs17_NtB4_5implsyNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXs17_NtNtCs6SYjS1KFWza_10serde_core2de5implsyNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !align !21, !noundef !13
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handleNtB4_15XetFileDownloadNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 15)
  %i.b = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89)
  %i.e = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsQbU2fm3lSD_3xet11xet_session20upload_stream_handleNtB4_15XetStreamUploadNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 15)
  %i.b = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89)
  %i.e = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2929
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !2929
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !2929, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !39, !noalias !2929, !noundef !13 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !2929
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36, !noalias !2929
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2929, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = icmp samesign ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2929
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i, %bb.e
  %.sroa.014.024.i = phi ptr [ %i.v, %bb.e ], [ %i.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.u, %bb.e ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.p, %bb.e ], [ %i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i ]
  %i.p = add i64 %.sroa.10.022.i, -1              ; 2 uses
  %i.q = icmp eq ptr %.sroa.014.024.i, %i.n
  br i1 %i.q, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !2928, !nonnull !13, !noundef !13 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.r, align 8, !alias.scope !2928 ; 2 uses
  %i.s = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !2929
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.w, align 8, !noalias !2929
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.val13.i, ptr %i.x, align 8, !noalias !2929
  %i.y = icmp eq i64 %i.p, 0
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit: ; preds = %.lr.ph.i, %bb.e, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i
  store i64 %i.i, ptr %i.b, align 8, !noalias !2928
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2928
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2928
  %i.z = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EE16into_boxed_sliceCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.z
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2933)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2934
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !2934
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !2934, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !39, !noalias !2934, !noundef !13 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !2934
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36, !noalias !2934
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2934, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = icmp samesign ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2934
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i, %bb.e
  %.sroa.014.024.i = phi ptr [ %i.v, %bb.e ], [ %i.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.u, %bb.e ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.p, %bb.e ], [ %i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i ]
  %i.p = add i64 %.sroa.10.022.i, -1              ; 2 uses
  %i.q = icmp eq ptr %.sroa.014.024.i, %i.n
  br i1 %i.q, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !2933, !nonnull !13, !noundef !13 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.r, align 8, !alias.scope !2933 ; 2 uses
  %i.s = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !2934
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.w, align 8, !noalias !2934
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.val13.i, ptr %i.x, align 8, !noalias !2934
  %i.y = icmp eq i64 %i.p, 0
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsQbU2fm3lSD_3xet.exit: ; preds = %.lr.ph.i, %bb.e, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsQbU2fm3lSD_3xet.exit.i
  store i64 %i.i, ptr %i.b, align 8, !noalias !2933
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2933
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2933
  %i.z = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EE16into_boxed_sliceCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.z
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorE4fromCsQbU2fm3lSD_3xet(ptr noalias noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !noalias !2937
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.b = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #28 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorE3newCsQbU2fm3lSD_3xet.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #36
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #35
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorE3newCsQbU2fm3lSD_3xet.exit: ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @113, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB37_4SyncNtB2q_10UnwindSafeEL_EIBJ_uE4callCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !21, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !13, !nonnull !13
  tail call void %i.e(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef nonnull %i.a) #38
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleENtNtBG_4task8Schedule9yield_nowCsQbU2fm3lSD_3xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs5_NtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule8schedule(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native21THREAD_THREADPOOL_REF00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1v_6option6OptionQIB2a_INtNtB1v_4cell7RefCellIB2a_TmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtB8_10XetRuntimeEEEEEEEE9call_onceCsQbU2fm3lSD_3xet(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native21THREAD_THREADPOOL_REF0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !27, !noundef !13
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RNCNKNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native21THREAD_THREADPOOL_REF00CsQbU2fm3lSD_3xet.exit, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB1f_6option6OptionTmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEE16get_or_init_slowCsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %i.a)
  br label %_RNCNKNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native21THREAD_THREADPOOL_REF00CsQbU2fm3lSD_3xet.exit

_RNCNKNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native21THREAD_THREADPOOL_REF00CsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsQbU2fm3lSD_3xet(ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noalias !2942, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsQbU2fm3lSD_3xet.exit, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) ; 0 uses
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsQbU2fm3lSD_3xet.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsQbU2fm3lSD_3xet.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs94TQx44N27d_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @120, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @121, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsQbU2fm3lSD_3xet(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsiWcPrHiWZDL_10serde_json5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @122, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.119, %bb.k ] ; 3 uses
  %.sroa.6.039 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.117, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXs3_NtNtNtCsG258MDvU3F_3std3sys5stdio4unixNtB5_6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.040, i64 noundef %.sroa.6.039) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split26
    i64 0, label %.split27
    i64 1, label %.split
  ], !prof !23

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
end_hunk_0
