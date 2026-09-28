Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2mu2Cb9JdUH_5ravif:bb.a
  br i1 %.not, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninittEECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull writeonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(none) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %1, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull align 2 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull writeonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(none) %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %1, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull align 2 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedbbECs2mu2Cb9JdUH_5ravif(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #28
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedhhECs2mu2Cb9JdUH_5ravif(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #28
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failediiECs2mu2Cb9JdUH_5ravif(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #28
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedttECs2mu2Cb9JdUH_5ravif(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECs2mu2Cb9JdUH_5ravif(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 4 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardANtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsj8_ENCNvMse_B10_BX_3new0ECs2mu2Cb9JdUH_5ravif(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardANtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsj8_ENCNvMse_B10_BX_3new0ECs2mu2Cb9JdUH_5ravif(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardANtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsj8_ENCNvMsd_BQ_BN_3new0ECs2mu2Cb9JdUH_5ravif(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %2) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardANtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsj8_ENCNvMsd_BQ_BN_3new0ECs2mu2Cb9JdUH_5ravif(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %2) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead20estimate_intra_costshECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [320 x i8], align 64              ; 3 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = tail call noundef i8 @_RNvMs1_NtCsdEEMmLUVy6d_5rav1e9partitionNtB5_9BlockSize21from_width_and_height(i64 noundef 8, i64 noundef 8) ; 4 uses
  %i.m = zext nneg i8 %i.l to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead20estimate_intra_coststECs2mu2Cb9JdUH_5ravif, i64 %i.m
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !4
  %i.q = lshr i64 %i.p, 3                         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.t = lshr i64 %i.s, 3                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.u = mul i64 %i.t, %i.q                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.u, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.v = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !7, !noundef !4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.w, label %bb.a, label %bb.b, !prof !8

bb.a:                                             ; preds = %switch.lookup
  %i.aa = load i64, ptr %i.z, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #25
  unreachable

bb.b:                                             ; preds = %switch.lookup
  %i.ab = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %i.ac = icmp ule i64 %i.u, %i.y
  tail call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.y, ptr %i.k, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.ae, align 8
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.b
  %.not108 = icmp eq i64 %i.t, 0
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ag = load <2 x i64>, ptr %i.n, align 8       ; 3 uses
  %i.ah = load <2 x i64>, ptr %i.af, align 8      ; 3 uses
  %i.ai = sub <2 x i64> %i.ag, %i.ah
  %i.aj = load ptr, ptr %1, align 8, !nonnull !4  ; 2 uses
  %i.ak = icmp eq i64 %i.s, 0
  %i.al = extractelement <2 x i64> %i.ah, i64 0   ; 4 uses
  %i.am = sub i64 0, %i.al
  %i.an = extractelement <2 x i64> %i.ah, i64 1   ; 3 uses
  %i.ao = sub i64 0, %i.an
  %invariant.op = add i64 %i.al, 8
  %invariant.gep = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ar = extractelement <2 x i64> %i.ag, i64 0   ; 3 uses
  %i.as = mul i64 %i.an, %i.ar
  %i.at = getelementptr i8, ptr %i.aj, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 %i.al
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.1396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.1897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.899.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.13100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.18101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br i1 %.not108, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph107
  %i.bl = extractelement <2 x i64> %i.ag, i64 1
  %i.bm = zext nneg i8 %i.l to i64
  %switch.gep124 = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif, i64 %i.bm
  %i.bn = zext nneg i8 %i.l to i64
  %switch.gep127 = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif.208, i64 %i.bn
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.w
  %exitcond109.not = icmp eq i64 %i.bp, %i.q
  br i1 %exitcond109.not, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph107, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bo = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecmE16into_boxed_sliceCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret { ptr, i64 } %i.bo

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.sroa.07.0106 = phi i64 [ %i.bp, %..loopexit_crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.07.0106, 1       ; 2 uses
  %i.bq = shl nuw i64 %.sroa.07.0106, 3           ; 11 uses
  %.not5.i29 = icmp slt i64 %i.bq, %i.ao
  %i.br = add i64 %i.an, %i.bq                    ; 2 uses
  %i.bs = add i64 %i.br, 8
  %.not7.i31 = icmp sgt i64 %i.bs, %i.bl
  %i.bt = mul i64 %i.br, %i.ar
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bt
  br label %bb.d

.loopexit104:                                     ; preds = %bb.h, %_RNvMsw_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionINtB5_14PlaneRegionMuthE10from_sliceCs2mu2Cb9JdUH_5ravif.exit, %switch.lookup123, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit104
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit104 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.y unwind label %bb.x

bb.d:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.09.0105 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %bb.w ] ; 3 uses
  %i.bu = add nuw nsw i64 %.sroa.09.0105, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bv = shl nuw i64 %.sroa.09.0105, 3           ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  br i1 %i.ak, label %.noexc32, label %bb.e, !prof !11

.noexc32:                                         ; preds = %bb.d
  store ptr null, ptr %i.ap, align 8, !alias.scope !1114, !noalias !1115
  store ptr %i.n, ptr %i.j, align 8, !alias.scope !1114, !noalias !1115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false), !alias.scope !1114, !noalias !1115
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not.i28 = icmp slt i64 %i.bv, %i.am           ; 2 uses
  %brmerge = select i1 %.not.i28, i1 true, i1 %.not5.i29, !prof !22
  br i1 %brmerge, label %.invoke.split.loop.exit132, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %.reass = add i64 %i.bv, %invariant.op
  %.not6.i30 = icmp sgt i64 %.reass, %i.ar        ; 3 uses
  %brmerge120 = select i1 %.not6.i30, i1 true, i1 %.not7.i31, !prof !22
  br i1 %brmerge120, label %.invoke.split.loop.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr i8, ptr %gep, i64 %i.bv
  store ptr %i.bw, ptr %i.ap, align 8, !alias.scope !1116, !noalias !1117
  store ptr %i.n, ptr %i.j, align 8, !alias.scope !1116, !noalias !1117
  store i64 %i.bv, ptr %i.aq, align 8, !alias.scope !1118, !noalias !1119
  store i64 %i.bq, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !1118, !noalias !1119
  store i64 8, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !1118, !noalias !1119
  store i64 8, ptr %.sroa.18.0..sroa_idx, align 8, !alias.scope !1118, !noalias !1119
  br label %bb.h

bb.h:                                             ; preds = %.noexc32, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !1120, !noalias !1121
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !1120, !noalias !1121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store <2 x i64> %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1121
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e9partition15get_intra_edgeshECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 64 dereferenceable(320) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, i64 noundef %.sroa.09.0105, i64 noundef %.sroa.07.0106, i64 noundef 0, i64 noundef 0, i8 noundef %i.l, i64 noundef %i.bv, i64 noundef %i.bq, i8 noundef 1, i64 noundef %2, i8 noundef 0, i1 noundef zeroext false, i32 2)
          to label %bb.i unwind label %.loopexit104

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bx = load i64, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.by = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.bz = load i64, ptr %i.ay, align 8, !alias.scope !1123, !noalias !1125, !noundef !4
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = load i64, ptr %i.az, align 8, !alias.scope !1123, !noalias !1125
  %i.cc = icmp eq i64 %i.cb, 0
  %or.cond.i38 = select i1 %i.ca, i1 true, i1 %i.cc, !prof !11
  br i1 %or.cond.i38, label %.noexc43, label %bb.j, !prof !11

.noexc43:                                         ; preds = %bb.i
  store ptr null, ptr %i.bd, align 8, !alias.scope !1126, !noalias !1127
  store ptr %i.ax, ptr %i.f, align 8, !alias.scope !1126, !noalias !1127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i8 0, i64 32, i1 false), !alias.scope !1126, !noalias !1127
  br label %_RNvMsw_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionINtB5_14PlaneRegionMuthE10from_sliceCs2mu2Cb9JdUH_5ravif.exit

bb.j:                                             ; preds = %bb.i
  %i.cd = load i64, ptr %i.ba, align 8, !alias.scope !1123, !noalias !1125, !noundef !4 ; 3 uses
  %i.ce = sub i64 0, %i.cd
  %.not.i39 = icmp slt i64 %i.bv, %i.ce
  br i1 %.not.i39, label %.invoke, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.bb, align 8, !alias.scope !1123, !noalias !1125, !noundef !4 ; 2 uses
  %i.cg = sub i64 0, %i.cf
  %.not5.i40 = icmp slt i64 %i.bq, %i.cg
  br i1 %.not5.i40, label %.invoke, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  %i.ch = add nuw i64 %i.bv, 8
  %i.ci = add i64 %i.ch, %i.cd
  %.not6.i41 = icmp sgt i64 %i.ci, %i.bx
  br i1 %.not6.i41, label %.invoke, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.cj = add i64 %i.cf, %i.bq                    ; 2 uses
  %i.ck = add i64 %i.cj, 8
  %i.cl = load i64, ptr %i.bc, align 8, !alias.scope !1123, !noalias !1125, !noundef !4
  %.not7.i42 = icmp sgt i64 %i.ck, %i.cl
  br i1 %.not7.i42, label %.invoke, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.cm = mul i64 %i.cj, %i.bx
  %i.cn = getelementptr i8, ptr %i.by, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cd
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.bv
  store ptr %i.cp, ptr %i.bd, align 8, !alias.scope !1122, !noalias !1128
  store ptr %i.ax, ptr %i.f, align 8, !alias.scope !1122, !noalias !1128
  store i64 %i.bv, ptr %i.be, align 8, !alias.scope !1129, !noalias !1130
  store i64 %i.bq, ptr %.sroa.895.0..sroa_idx, align 8, !alias.scope !1129, !noalias !1130
  store i64 8, ptr %.sroa.1396.0..sroa_idx, align 8, !alias.scope !1129, !noalias !1130
  store i64 8, ptr %.sroa.1897.0..sroa_idx, align 8, !alias.scope !1129, !noalias !1130
  br label %_RNvMsw_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionINtB5_14PlaneRegionMuthE10from_sliceCs2mu2Cb9JdUH_5ravif.exit

_RNvMsw_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionINtB5_14PlaneRegionMuthE10from_sliceCs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.n, %.noexc43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.bv, ptr %i.e, align 8
  store i64 %i.bq, ptr %i.bf, align 8
  store i64 8, ptr %i.bg, align 8
  store i64 8, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 -2, ptr %i.bi, align 4
  invoke void @_RINvMs_NtCsdEEMmLUVy6d_5rav1e7predictNtB5_14PredictionMode13predict_intrahECs2mu2Cb9JdUH_5ravif(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f, i8 noundef %switch.load, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) inttoptr (i64 2 to ptr), i64 noundef 0, i32 2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.o unwind label %.loopexit104

bb.o:                                             ; preds = %_RNvMsw_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionINtB5_14PlaneRegionMuthE10from_sliceCs2mu2Cb9JdUH_5ravif.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cq = load i64, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.cr = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %i.cs = load i64, ptr %i.ay, align 8, !alias.scope !1132, !noalias !1134, !noundef !4
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = load i64, ptr %i.az, align 8, !alias.scope !1132, !noalias !1134
  %i.cv = icmp eq i64 %i.cu, 0
  %or.cond.i = select i1 %i.ct, i1 true, i1 %i.cv, !prof !11
  br i1 %or.cond.i, label %.noexc, label %bb.p, !prof !11

.noexc:                                           ; preds = %bb.o
  store ptr null, ptr %i.bj, align 8, !alias.scope !1135, !noalias !1136
  store ptr %i.ax, ptr %i.c, align 8, !alias.scope !1135, !noalias !1136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false), !alias.scope !1135, !noalias !1136
  br label %switch.lookup123

bb.p:                                             ; preds = %bb.o
  %i.cw = load i64, ptr %i.ba, align 8, !alias.scope !1132, !noalias !1134, !noundef !4 ; 3 uses
  %i.cx = sub i64 0, %i.cw
  %.not.i = icmp slt i64 %i.bv, %i.cx
  br i1 %.not.i, label %.invoke, label %bb.q, !prof !8

.invoke.split.loop.exit:                          ; preds = %bb.f
  %.mux121.le = select i1 %.not6.i30, ptr @83, ptr @84, !prof !22
  %.mux122.le = select i1 %.not6.i30, i64 92, i64 103, !prof !22
  br label %.invoke

.invoke.split.loop.exit132:                       ; preds = %bb.e
  %.mux.le = select i1 %.not.i28, ptr @79, ptr @82, !prof !22
  br label %.invoke

.invoke:                                          ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.p, %bb.q, %bb.r, %bb.s, %.invoke.split.loop.exit132, %.invoke.split.loop.exit
  %i.cy = phi ptr [ @82, %bb.q ], [ @83, %bb.r ], [ @84, %bb.s ], [ @82, %bb.k ], [ @79, %bb.p ], [ %.mux121.le, %.invoke.split.loop.exit ], [ %.mux.le, %.invoke.split.loop.exit132 ], [ @83, %bb.l ], [ @84, %bb.m ], [ @79, %bb.j ]
  %i.cz = phi i64 [ 51, %bb.q ], [ 92, %bb.r ], [ 103, %bb.s ], [ 51, %bb.k ], [ 51, %bb.p ], [ %.mux122.le, %.invoke.split.loop.exit ], [ 51, %.invoke.split.loop.exit132 ], [ 92, %bb.l ], [ 103, %bb.m ], [ 51, %bb.j ]
  %i.da = phi ptr [ @81, %bb.q ], [ @81, %bb.r ], [ @81, %bb.s ], [ @85, %bb.k ], [ @81, %bb.p ], [ @81, %.invoke.split.loop.exit ], [ @81, %.invoke.split.loop.exit132 ], [ @85, %bb.l ], [ @85, %bb.m ], [ @85, %bb.j ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.db = load i64, ptr %i.bb, align 8, !alias.scope !1132, !noalias !1134, !noundef !4 ; 2 uses
  %i.dc = sub i64 0, %i.db
  %.not5.i = icmp slt i64 %i.bq, %i.dc
  br i1 %.not5.i, label %.invoke, label %bb.r, !prof !8

bb.r:                                             ; preds = %bb.q
  %i.dd = add nuw i64 %i.bv, 8
  %i.de = add i64 %i.dd, %i.cw
  %.not6.i = icmp sgt i64 %i.de, %i.cq
  br i1 %.not6.i, label %.invoke, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.df = add i64 %i.db, %i.bq                    ; 2 uses
  %i.dg = add i64 %i.df, 8
  %i.dh = load i64, ptr %i.bc, align 8, !alias.scope !1132, !noalias !1134, !noundef !4
  %.not7.i = icmp sgt i64 %i.dg, %i.dh
  br i1 %.not7.i, label %.invoke, label %bb.t, !prof !8

bb.t:                                             ; preds = %bb.s
  %i.di = mul i64 %i.df, %i.cq
  %i.dj = getelementptr i8, ptr %i.cr, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.cw
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.bv
  store ptr %i.dl, ptr %i.bj, align 8, !alias.scope !1131, !noalias !1137
  store ptr %i.ax, ptr %i.c, align 8, !alias.scope !1131, !noalias !1137
  store i64 %i.bv, ptr %i.bk, align 8, !alias.scope !1138, !noalias !1139
  store i64 %i.bq, ptr %.sroa.899.0..sroa_idx, align 8, !alias.scope !1138, !noalias !1139
  store i64 8, ptr %.sroa.13100.0..sroa_idx, align 8, !alias.scope !1138, !noalias !1139
  store i64 8, ptr %.sroa.18101.0..sroa_idx, align 8, !alias.scope !1138, !noalias !1139
  br label %switch.lookup123

switch.lookup123:                                 ; preds = %.noexc, %bb.t
  %switch.load125 = load i8, ptr %switch.gep124, align 1
  %switch.ext = zext nneg i8 %switch.load125 to i64
  %i.dm = shl nuw nsw i64 1, %switch.ext
  %switch.load128 = load i8, ptr %switch.gep127, align 1
  %switch.ext129 = zext nneg i8 %switch.load128 to i64
  %i.dn = shl nuw nsw i64 1, %switch.ext129
  %i.do = invoke noundef i32 @_RINvNtNtCsdEEMmLUVy6d_5rav1e4dist4rust8get_satdhECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, i64 noundef %i.dm, i64 noundef %i.dn, i64 noundef %2)
          to label %bb.u unwind label %.loopexit104

bb.u:                                             ; preds = %switch.lookup123
  %i.dp = load i64, ptr %i.ae, align 8, !alias.scope !1140, !noundef !4 ; 3 uses
  %i.dq = load i64, ptr %i.k, align 8, !range !23, !alias.scope !1140, !noundef !4
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #29
          to label %bb.w unwind label %.loopexit104

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ds = load ptr, ptr %i.ad, align 8, !alias.scope !1140, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dp
  store i32 %i.do, ptr %i.dt, align 4
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.ae, align 8, !alias.scope !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond.not = icmp eq i64 %i.bu, %i.t
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.y
  resume { ptr, i32 } %lpad.phi

bb.x:                                             ; preds = %bb.c
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.z

bb.y:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECs2mu2Cb9JdUH_5ravif.exit unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.x, %bb.aa
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead20estimate_intra_coststECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [576 x i8], align 64              ; 3 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = tail call noundef i8 @_RNvMs1_NtCsdEEMmLUVy6d_5rav1e9partitionNtB5_9BlockSize21from_width_and_height(i64 noundef 8, i64 noundef 8) ; 4 uses
  %i.m = zext nneg i8 %i.l to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead20estimate_intra_coststECs2mu2Cb9JdUH_5ravif, i64 %i.m
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !4
  %i.q = lshr i64 %i.p, 3                         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.t = lshr i64 %i.s, 3                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.u = mul i64 %i.t, %i.q                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.u, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.v = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !7, !noundef !4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.w, label %bb.a, label %bb.b, !prof !8

bb.a:                                             ; preds = %switch.lookup
  %i.aa = load i64, ptr %i.z, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #25
  unreachable

bb.b:                                             ; preds = %switch.lookup
  %i.ab = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %i.ac = icmp ule i64 %i.u, %i.y
  tail call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.y, ptr %i.k, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.ae, align 8
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.b
  %.not108 = icmp eq i64 %i.t, 0
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ag = load <2 x i64>, ptr %i.n, align 8       ; 3 uses
  %i.ah = load <2 x i64>, ptr %i.af, align 8      ; 3 uses
  %i.ai = sub <2 x i64> %i.ag, %i.ah
  %i.aj = load ptr, ptr %1, align 8, !nonnull !4  ; 2 uses
  %i.ak = icmp eq i64 %i.s, 0
  %i.al = extractelement <2 x i64> %i.ah, i64 0   ; 4 uses
  %i.am = sub i64 0, %i.al
  %i.an = extractelement <2 x i64> %i.ah, i64 1   ; 3 uses
  %i.ao = sub i64 0, %i.an
  %invariant.op = add i64 %i.al, 8
  %invariant.gep = getelementptr [2 x i8], ptr %i.aj, i64 %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ar = extractelement <2 x i64> %i.ag, i64 0   ; 3 uses
  %i.as = mul i64 %i.an, %i.ar
  %i.at = getelementptr [2 x i8], ptr %i.aj, i64 %i.as
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.al
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.1396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.1897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.899.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.13100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.18101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br i1 %.not108, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph107
  %i.bl = extractelement <2 x i64> %i.ag, i64 1
  %i.bm = zext nneg i8 %i.l to i64
  %switch.gep124 = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif, i64 %i.bm
  %i.bn = zext nneg i8 %i.l to i64
  %switch.gep127 = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif.208, i64 %i.bn
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %bb.w
  %exitcond109.not = icmp eq i64 %i.bp, %i.q
  br i1 %exitcond109.not, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph107, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bo = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecmE16into_boxed_sliceCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret { ptr, i64 } %i.bo

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.sroa.07.0106 = phi i64 [ %i.bp, %..loopexit_crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.07.0106, 1       ; 2 uses
  %i.bq = shl nuw i64 %.sroa.07.0106, 3           ; 11 uses
  %.not5.i29 = icmp slt i64 %i.bq, %i.ao
  %i.br = add i64 %i.an, %i.bq                    ; 2 uses
  %i.bs = add i64 %i.br, 8
  %.not7.i31 = icmp sgt i64 %i.bs, %i.bl
  %i.bt = mul i64 %i.br, %i.ar
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  br label %bb.d

.loopexit104:                                     ; preds = %bb.h, %_RNvMsw_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionINtB5_14PlaneRegionMuttE10from_sliceCs2mu2Cb9JdUH_5ravif.exit, %switch.lookup123, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit104
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit104 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.y unwind label %bb.x

bb.d:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.09.0105 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %bb.w ] ; 3 uses
  %i.bu = add nuw nsw i64 %.sroa.09.0105, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bv = shl nuw i64 %.sroa.09.0105, 3           ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  br i1 %i.ak, label %.noexc32, label %bb.e, !prof !11

.noexc32:                                         ; preds = %bb.d
  store ptr null, ptr %i.ap, align 8, !alias.scope !1171, !noalias !1172
  store ptr %i.n, ptr %i.j, align 8, !alias.scope !1171, !noalias !1172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false), !alias.scope !1171, !noalias !1172
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not.i28 = icmp slt i64 %i.bv, %i.am           ; 2 uses
  %brmerge = select i1 %.not.i28, i1 true, i1 %.not5.i29, !prof !22
  br i1 %brmerge, label %.invoke.split.loop.exit132, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %.reass = add i64 %i.bv, %invariant.op
  %.not6.i30 = icmp sgt i64 %.reass, %i.ar        ; 3 uses
  %brmerge120 = select i1 %.not6.i30, i1 true, i1 %.not7.i31, !prof !22
  br i1 %brmerge120, label %.invoke.split.loop.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr [2 x i8], ptr %gep, i64 %i.bv
  store ptr %i.bw, ptr %i.ap, align 8, !alias.scope !1173, !noalias !1174
  store ptr %i.n, ptr %i.j, align 8, !alias.scope !1173, !noalias !1174
  store i64 %i.bv, ptr %i.aq, align 8, !alias.scope !1175, !noalias !1176
  store i64 %i.bq, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !1175, !noalias !1176
  store i64 8, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !1175, !noalias !1176
  store i64 8, ptr %.sroa.18.0..sroa_idx, align 8, !alias.scope !1175, !noalias !1176
  br label %bb.h

bb.h:                                             ; preds = %.noexc32, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !1177, !noalias !1178
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !1177, !noalias !1178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store <2 x i64> %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1178
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e9partition15get_intra_edgestECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 64 dereferenceable(576) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, i64 noundef %.sroa.09.0105, i64 noundef %.sroa.07.0106, i64 noundef 0, i64 noundef 0, i8 noundef %i.l, i64 noundef %i.bv, i64 noundef %i.bq, i8 noundef 1, i64 noundef %2, i8 noundef 0, i1 noundef zeroext false, i32 2)
          to label %bb.i unwind label %.loopexit104

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bx = load i64, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.by = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %i.bz = load i64, ptr %i.ay, align 8, !alias.scope !1180, !noalias !1182, !noundef !4
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = load i64, ptr %i.az, align 8, !alias.scope !1180, !noalias !1182
  %i.cc = icmp eq i64 %i.cb, 0
  %or.cond.i38 = select i1 %i.ca, i1 true, i1 %i.cc, !prof !11
  br i1 %or.cond.i38, label %.noexc43, label %bb.j, !prof !11

.noexc43:                                         ; preds = %bb.i
  store ptr null, ptr %i.bd, align 8, !alias.scope !1183, !noalias !1184
  store ptr %i.ax, ptr %i.f, align 8, !alias.scope !1183, !noalias !1184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i8 0, i64 32, i1 false), !alias.scope !1183, !noalias !1184
  br label %_RNvMsw_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionINtB5_14PlaneRegionMuttE10from_sliceCs2mu2Cb9JdUH_5ravif.exit

bb.j:                                             ; preds = %bb.i
  %i.cd = load i64, ptr %i.ba, align 8, !alias.scope !1180, !noalias !1182, !noundef !4 ; 3 uses
  %i.ce = sub i64 0, %i.cd
  %.not.i39 = icmp slt i64 %i.bv, %i.ce
  br i1 %.not.i39, label %.invoke, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.bb, align 8, !alias.scope !1180, !noalias !1182, !noundef !4 ; 2 uses
  %i.cg = sub i64 0, %i.cf
  %.not5.i40 = icmp slt i64 %i.bq, %i.cg
  br i1 %.not5.i40, label %.invoke, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  %i.ch = add nuw i64 %i.bv, 8
  %i.ci = add i64 %i.ch, %i.cd
  %.not6.i41 = icmp sgt i64 %i.ci, %i.bx
  br i1 %.not6.i41, label %.invoke, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.cj = add i64 %i.cf, %i.bq                    ; 2 uses
  %i.ck = add i64 %i.cj, 8
  %i.cl = load i64, ptr %i.bc, align 8, !alias.scope !1180, !noalias !1182, !noundef !4
  %.not7.i42 = icmp sgt i64 %i.ck, %i.cl
  br i1 %.not7.i42, label %.invoke, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.cm = mul i64 %i.cj, %i.bx
  %i.cn = getelementptr [2 x i8], ptr %i.by, i64 %i.cm
  %i.co = getelementptr [2 x i8], ptr %i.cn, i64 %i.cd
  %i.cp = getelementptr [2 x i8], ptr %i.co, i64 %i.bv
  store ptr %i.cp, ptr %i.bd, align 8, !alias.scope !1179, !noalias !1185
  store ptr %i.ax, ptr %i.f, align 8, !alias.scope !1179, !noalias !1185
  store i64 %i.bv, ptr %i.be, align 8, !alias.scope !1186, !noalias !1187
  store i64 %i.bq, ptr %.sroa.895.0..sroa_idx, align 8, !alias.scope !1186, !noalias !1187
  store i64 8, ptr %.sroa.1396.0..sroa_idx, align 8, !alias.scope !1186, !noalias !1187
  store i64 8, ptr %.sroa.1897.0..sroa_idx, align 8, !alias.scope !1186, !noalias !1187
  br label %_RNvMsw_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionINtB5_14PlaneRegionMuttE10from_sliceCs2mu2Cb9JdUH_5ravif.exit

_RNvMsw_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionINtB5_14PlaneRegionMuttE10from_sliceCs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.n, %.noexc43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.bv, ptr %i.e, align 8
  store i64 %i.bq, ptr %i.bf, align 8
  store i64 8, ptr %i.bg, align 8
  store i64 8, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 -2, ptr %i.bi, align 4
  invoke void @_RINvMs_NtCsdEEMmLUVy6d_5rav1e7predictNtB5_14PredictionMode13predict_intratECs2mu2Cb9JdUH_5ravif(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f, i8 noundef %switch.load, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) inttoptr (i64 2 to ptr), i64 noundef 0, i32 2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.o unwind label %.loopexit104

bb.o:                                             ; preds = %_RNvMsw_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionINtB5_14PlaneRegionMuttE10from_sliceCs2mu2Cb9JdUH_5ravif.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cq = load i64, ptr %i.ax, align 8, !noundef !4 ; 2 uses
  %i.cr = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %i.cs = load i64, ptr %i.ay, align 8, !alias.scope !1189, !noalias !1191, !noundef !4
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = load i64, ptr %i.az, align 8, !alias.scope !1189, !noalias !1191
  %i.cv = icmp eq i64 %i.cu, 0
  %or.cond.i = select i1 %i.ct, i1 true, i1 %i.cv, !prof !11
  br i1 %or.cond.i, label %.noexc, label %bb.p, !prof !11

.noexc:                                           ; preds = %bb.o
  store ptr null, ptr %i.bj, align 8, !alias.scope !1192, !noalias !1193
  store ptr %i.ax, ptr %i.c, align 8, !alias.scope !1192, !noalias !1193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false), !alias.scope !1192, !noalias !1193
  br label %switch.lookup123

bb.p:                                             ; preds = %bb.o
  %i.cw = load i64, ptr %i.ba, align 8, !alias.scope !1189, !noalias !1191, !noundef !4 ; 3 uses
  %i.cx = sub i64 0, %i.cw
  %.not.i = icmp slt i64 %i.bv, %i.cx
  br i1 %.not.i, label %.invoke, label %bb.q, !prof !8

.invoke.split.loop.exit:                          ; preds = %bb.f
  %.mux121.le = select i1 %.not6.i30, ptr @83, ptr @84, !prof !22
  %.mux122.le = select i1 %.not6.i30, i64 92, i64 103, !prof !22
  br label %.invoke

.invoke.split.loop.exit132:                       ; preds = %bb.e
  %.mux.le = select i1 %.not.i28, ptr @79, ptr @82, !prof !22
  br label %.invoke

.invoke:                                          ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.p, %bb.q, %bb.r, %bb.s, %.invoke.split.loop.exit132, %.invoke.split.loop.exit
  %i.cy = phi ptr [ @82, %bb.q ], [ @83, %bb.r ], [ @84, %bb.s ], [ @82, %bb.k ], [ @79, %bb.p ], [ %.mux121.le, %.invoke.split.loop.exit ], [ %.mux.le, %.invoke.split.loop.exit132 ], [ @83, %bb.l ], [ @84, %bb.m ], [ @79, %bb.j ]
  %i.cz = phi i64 [ 51, %bb.q ], [ 92, %bb.r ], [ 103, %bb.s ], [ 51, %bb.k ], [ 51, %bb.p ], [ %.mux122.le, %.invoke.split.loop.exit ], [ 51, %.invoke.split.loop.exit132 ], [ 92, %bb.l ], [ 103, %bb.m ], [ 51, %bb.j ]
  %i.da = phi ptr [ @81, %bb.q ], [ @81, %bb.r ], [ @81, %bb.s ], [ @85, %bb.k ], [ @81, %bb.p ], [ @81, %.invoke.split.loop.exit ], [ @81, %.invoke.split.loop.exit132 ], [ @85, %bb.l ], [ @85, %bb.m ], [ @85, %bb.j ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.db = load i64, ptr %i.bb, align 8, !alias.scope !1189, !noalias !1191, !noundef !4 ; 2 uses
  %i.dc = sub i64 0, %i.db
  %.not5.i = icmp slt i64 %i.bq, %i.dc
  br i1 %.not5.i, label %.invoke, label %bb.r, !prof !8

bb.r:                                             ; preds = %bb.q
  %i.dd = add nuw i64 %i.bv, 8
  %i.de = add i64 %i.dd, %i.cw
  %.not6.i = icmp sgt i64 %i.de, %i.cq
  br i1 %.not6.i, label %.invoke, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.df = add i64 %i.db, %i.bq                    ; 2 uses
  %i.dg = add i64 %i.df, 8
  %i.dh = load i64, ptr %i.bc, align 8, !alias.scope !1189, !noalias !1191, !noundef !4
  %.not7.i = icmp sgt i64 %i.dg, %i.dh
  br i1 %.not7.i, label %.invoke, label %bb.t, !prof !8

bb.t:                                             ; preds = %bb.s
  %i.di = mul i64 %i.df, %i.cq
  %i.dj = getelementptr [2 x i8], ptr %i.cr, i64 %i.di
  %i.dk = getelementptr [2 x i8], ptr %i.dj, i64 %i.cw
  %i.dl = getelementptr [2 x i8], ptr %i.dk, i64 %i.bv
  store ptr %i.dl, ptr %i.bj, align 8, !alias.scope !1188, !noalias !1194
  store ptr %i.ax, ptr %i.c, align 8, !alias.scope !1188, !noalias !1194
  store i64 %i.bv, ptr %i.bk, align 8, !alias.scope !1195, !noalias !1196
  store i64 %i.bq, ptr %.sroa.899.0..sroa_idx, align 8, !alias.scope !1195, !noalias !1196
  store i64 8, ptr %.sroa.13100.0..sroa_idx, align 8, !alias.scope !1195, !noalias !1196
  store i64 8, ptr %.sroa.18101.0..sroa_idx, align 8, !alias.scope !1195, !noalias !1196
  br label %switch.lookup123

switch.lookup123:                                 ; preds = %.noexc, %bb.t
  %switch.load125 = load i8, ptr %switch.gep124, align 1
  %switch.ext = zext nneg i8 %switch.load125 to i64
  %i.dm = shl nuw nsw i64 1, %switch.ext
  %switch.load128 = load i8, ptr %switch.gep127, align 1
  %switch.ext129 = zext nneg i8 %switch.load128 to i64
  %i.dn = shl nuw nsw i64 1, %switch.ext129
  %i.do = invoke noundef i32 @_RINvNtNtCsdEEMmLUVy6d_5rav1e4dist4rust8get_satdtECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, i64 noundef %i.dm, i64 noundef %i.dn, i64 noundef %2)
          to label %bb.u unwind label %.loopexit104

bb.u:                                             ; preds = %switch.lookup123
  %i.dp = load i64, ptr %i.ae, align 8, !alias.scope !1197, !noundef !4 ; 3 uses
end_hunk_0
