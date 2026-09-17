Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_shuf-96b04ff6b68f93b7.uu_shuf.5e03469bff93765e-cgu.0?download=true
inline.NumInlined: 1089
inline.NumDeleted: 516
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvNtNtCsjXcachvKq5y_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs84qwSrTN5pO_7uu_shuf:.preheader.preheader
  %i.cz = add <8 x i32> %i.ce, %i.g               ; 2 uses
  %i.da = add <8 x i32> %i.cm, %i.h               ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !214
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.db, align 4, !noalias !215
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.dc, align 4, !noalias !214
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.dd, align 4, !noalias !215
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.de, align 4, !noalias !214
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.df, align 4, !noalias !215
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.dg, align 4, !noalias !214
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.dh, align 4, !noalias !215
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.di, align 4, !noalias !214
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.dj, align 4, !noalias !215
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.dk, align 4, !noalias !214
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.dl, align 4, !noalias !215
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dm, align 4, !noalias !214
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dn, align 4, !noalias !215
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.do, align 4, !noalias !214
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.dp, align 4, !noalias !215
  %i.dq = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %i.dr = bitcast <4 x i64> %i.dq to <8 x i32>
  %i.ds = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.ds, ptr %i.c, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs84qwSrTN5pO_7uu_shuf(<2 x i64> %.0.val) unnamed_addr #4 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !10, !alias.scope !218, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !218
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !218
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) #26, !noalias !218
  %i.h = load i64, ptr %i.a, align 8, !range !16, !noalias !218, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !219, !noalias !218, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !218
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #27
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !218, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !218
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !218
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !218
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultINtNtCs7tKScEop1B6_5alloc3vec3VechENtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_B1i_INtNtB1n_5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs84qwSrTN5pO_7uu_shuf15read_input_files_0EB3y_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  %i.e = load i64, ptr %1, align 8, !range !11, !noundef !5
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !228
  store i64 1, ptr %i.d, align 8, !noalias !228
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !228
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !228
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 0, ptr %i.i, align 8, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !229
  store i64 0, ptr %i.c, align 8, !noalias !229
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !229
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !229
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.j, align 8, !noalias !229
  store ptr %i.c, ptr %i.b, align 8, !noalias !229
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @99, ptr %i.k, align 8, !noalias !229
  %i.l = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26, !noalias !230
  br i1 %i.l, label %bb.c, label %_RNCNvCs84qwSrTN5pO_7uu_shuf15read_input_files_0B3_.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #29, !noalias !230
  unreachable

_RNCNvCs84qwSrTN5pO_7uu_shuf15read_input_files_0B3_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !228
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !231
  %i.m = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !231 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !9

bb.d:                                             ; preds = %_RNCNvCs84qwSrTN5pO_7uu_shuf15read_input_files_0B3_.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27, !noalias !231
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNCNvCs84qwSrTN5pO_7uu_shuf15read_input_files_0B3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @35, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef range(i64 0, 576460752303423488) i64 @_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs84qwSrTN5pO_7uu_shuf(ptr %.0.val, i64 noundef range(i64 0, 576460752303423488) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.u, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %0, 4294967295
  br i1 %i.b, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw i64 %0 to i32                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 9 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !268, !noundef !5 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 63
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %i.i = load i64, ptr %i.h, align 4, !alias.scope !269, !noalias !270
  %i.j = icmp ugt i64 %i.i, 1023
  br i1 %i.j, label %bb.e, label %.thread.i.i.i.i14.i.i.i.i, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g) #28, !noalias !270
  br label %.thread.i.i.i.i14.i.i.i.i

.thread.i.i.i.i14.i.i.i.i:                        ; preds = %bb.e, %bb.d
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d) #26, !noalias !271
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = add nuw nsw i32 %i.e, 1
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i: ; preds = %bb.f, %.thread.i.i.i.i14.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i14.i.i.i.i ], [ %i.m, %bb.f ] ; 4 uses
  %.in.i.i.i.i13.i.i.i.i = phi ptr [ %i.d, %.thread.i.i.i.i14.i.i.i.i ], [ %i.l, %bb.f ]
  %i.n = load i32, ptr %.in.i.i.i.i13.i.i.i.i, align 4, !alias.scope !272, !noalias !271, !noundef !5
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, ptr %i.d, align 4, !alias.scope !272, !noalias !271
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw i64 %0, %i.o                     ; 2 uses
  %i.q = lshr i64 %i.p, 32                        ; 2 uses
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  %i.s = sub i32 0, %i.c
  %i.t = icmp ult i32 %i.s, %i.r
  br i1 %i.t, label %bb.g, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtCs7g3JyErIm42_4rand5distr7uniform5ErrorE6unwrapCs84qwSrTN5pO_7uu_shuf.exit

bb.g:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i
  %i.u = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, 63
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %i.x = load i64, ptr %i.w, align 4, !alias.scope !273, !noalias !274
  %i.y = icmp ugt i64 %i.x, 1023
  br i1 %i.y, label %bb.i, label %.thread.i.i.i.i18.i.i.i.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.v) #28, !noalias !274
  br label %.thread.i.i.i.i18.i.i.i.i

.thread.i.i.i.i18.i.i.i.i:                        ; preds = %bb.i, %bb.h
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.v, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d) #26, !noalias !275
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit19.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.z = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, 1
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit19.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit19.i.i.i.i: ; preds = %bb.j, %.thread.i.i.i.i18.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i18.i.i.i.i ], [ %i.ab, %bb.j ]
  %.in.i.i.i.i17.i.i.i.i = phi ptr [ %i.d, %.thread.i.i.i.i18.i.i.i.i ], [ %i.aa, %bb.j ]
  %i.ac = load i32, ptr %.in.i.i.i.i17.i.i.i.i, align 4, !alias.scope !276, !noalias !275, !noundef !5
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i, ptr %i.d, align 4, !alias.scope !276, !noalias !275
  %2 = tail call i32 @llvm.umulh.i32(i32 %i.ac, i32 %i.c)
  %i.ad = xor i32 %i.r, -1
  %.not9.i.i.i.i = icmp ugt i32 %2, %i.ad
  %i.ae = zext i1 %.not9.i.i.i.i to i64
  %i.af = add nuw nsw i64 %i.q, %i.ae
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtCs7g3JyErIm42_4rand5distr7uniform5ErrorE6unwrapCs84qwSrTN5pO_7uu_shuf.exit

bb.k:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 9 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !277, !noundef !5 ; 4 uses
  %i.ai = icmp ult i32 %i.ah, 63
  br i1 %i.ai, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 268
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !278, !noalias !279, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %i.an = load i64, ptr %i.am, align 4, !alias.scope !280, !noalias !281
  %i.ao = icmp ugt i64 %i.an, 1023
  br i1 %i.ao, label %bb.m, label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.al) #28, !noalias !281
  br label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i

_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i: ; preds = %bb.m, %bb.l
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.al, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.ag) #26, !noalias !279
  %i.ap = load i32, ptr %i.ag, align 4, !alias.scope !278, !noalias !279, !noundef !5 ; 2 uses
  %.not.i.i.i.i10.i.i.i.i = icmp eq i32 %i.ah, 63
  br i1 %.not.i.i.i.i10.i.i.i.i, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !278, !noalias !279, !noundef !5
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.as = zext nneg i32 %i.ah to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !278, !noalias !279, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !278, !noalias !279, !noundef !5
  %i.ax = add nuw nsw i32 %i.ah, 2
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i.i: ; preds = %bb.o, %bb.n, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i
  %.sroa.0.018.i.i.i.i11.i.i.i.i = phi i32 [ %i.ax, %bb.o ], [ 1, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i ], [ 2, %bb.n ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i.i = phi i32 [ %i.au, %bb.o ], [ %i.ak, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i ], [ %i.ap, %bb.n ]
  %.sroa.03.016.i.i.i.i13.i.i.i.i = phi i32 [ %i.aw, %bb.o ], [ %i.ap, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i ], [ %i.ar, %bb.n ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i.i, ptr %i.ag, align 4, !alias.scope !278, !noalias !279
  %i.ay = zext i32 %.sroa.03.016.i.i.i.i13.i.i.i.i to i64
  %i.az = shl nuw i64 %i.ay, 32
  %i.ba = zext i32 %.sroa.02.017.i.i.i.i12.i.i.i.i to i64
  %i.bb = or disjoint i64 %i.az, %i.ba
  %i.bc = zext i64 %i.bb to i128
  %i.bd = zext nneg i64 %0 to i128
  %i.be = mul nuw nsw i128 %i.bc, %i.bd           ; 2 uses
  %i.bf = lshr i128 %i.be, 64
  %i.bg = trunc nuw nsw i128 %i.bf to i64         ; 2 uses
  %i.bh = trunc i128 %i.be to i64                 ; 2 uses
  %i.bi = sub nsw i64 0, %0
  %i.bj = icmp ult i64 %i.bi, %i.bh
  br i1 %i.bj, label %bb.p, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtCs7g3JyErIm42_4rand5distr7uniform5ErrorE6unwrapCs84qwSrTN5pO_7uu_shuf.exit

bb.p:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i.i
  %i.bk = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i.i, 63
  br i1 %i.bk, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.val, i64 268
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !282, !noalias !283, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %i.bp = load i64, ptr %i.bo, align 4, !alias.scope !284, !noalias !285
  %i.bq = icmp ugt i64 %i.bp, 1023
  br i1 %i.bq, label %bb.r, label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i, !prof !6

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bn) #28, !noalias !285
  br label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i

_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i: ; preds = %bb.r, %bb.q
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bn, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.ag) #26, !noalias !283
  %i.br = load i32, ptr %i.ag, align 4, !alias.scope !282, !noalias !283, !noundef !5 ; 2 uses
  %.not.i.i.i.i16.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i.i, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !alias.scope !282, !noalias !283, !noundef !5
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i.i

bb.t:                                             ; preds = %bb.p
  %i.bu = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i.i to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !282, !noalias !283, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !alias.scope !282, !noalias !283, !noundef !5
  %i.bz = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i.i, 2
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i.i: ; preds = %bb.t, %bb.s, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i
  %.sroa.0.018.i.i.i.i17.i.i.i.i = phi i32 [ %i.bz, %bb.t ], [ 1, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i ], [ 2, %bb.s ]
  %.sroa.02.017.i.i.i.i18.i.i.i.i = phi i32 [ %i.bw, %bb.t ], [ %i.bm, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i ], [ %i.br, %bb.s ]
  %.sroa.03.016.i.i.i.i19.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.br, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i ], [ %i.bt, %bb.s ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i.i, ptr %i.ag, align 4, !alias.scope !282, !noalias !283
  %i.ca = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i.i to i64
  %i.cb = shl nuw i64 %i.ca, 32
  %i.cc = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i.i to i64
  %i.cd = or disjoint i64 %i.cb, %i.cc
  %3 = tail call i64 @llvm.umulh.i64(i64 %i.cd, i64 range(i64 0, 576460752303423488) %0)
  %i.ce = xor i64 %i.bh, -1
  %.not6.i.i.i.i = icmp ugt i64 %3, %i.ce
  %i.cf = zext i1 %.not6.i.i.i.i to i64
  %i.cg = add nuw nsw i64 %i.cf, %i.bg
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtCs7g3JyErIm42_4rand5distr7uniform5ErrorE6unwrapCs84qwSrTN5pO_7uu_shuf.exit

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtCs7g3JyErIm42_4rand5distr7uniform5ErrorE6unwrapCs84qwSrTN5pO_7uu_shuf.exit: ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit19.i.i.i.i, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i.i, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i.i
  %.sroa.62.0 = phi i64 [ %i.q, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i ], [ %i.af, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit19.i.i.i.i ], [ %i.cg, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i.i ], [ %i.bg, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i.i ]
  ret i64 %.sroa.62.0

bb.u:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #29
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs84qwSrTN5pO_7uu_shuf10split_seps(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i8 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = lshr i64 %2, 6                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = shl nuw nsw i64 %i.b, 4                  ; 2 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.lr.ph.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !298
  %i.e = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !298 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %i.g = ptrtoint ptr %i.e to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #27
  unreachable

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.105.0 = phi i64 [ %i.g, %bb.b ], [ 8, %bb.a ]
  %i.h = inttoptr i64 %.sroa.105.0 to ptr         ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %i.k = phi ptr [ %i.h, %.lr.ph.i ], [ %i.ae, %bb.g ]
  %i.l = phi i64 [ 0, %.lr.ph.i ], [ %i.ah, %bb.g ] ; 7 uses
  %i.m = phi i64 [ %2, %.lr.ph.i ], [ %i.y, %bb.g ] ; 5 uses
  %i.n = phi ptr [ %1, %.lr.ph.i ], [ %i.z, %bb.g ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %i.p = icmp samesign eq i64 %i.m, 0
  br i1 %i.p, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.02.08.i.i.i = phi i64 [ %i.t, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.q = phi ptr [ %i.s, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %.val6.i.i.i = load i8, ptr %i.q, align 1, !noalias !300, !noundef !5
  %i.r = icmp eq i8 %.val6.i.i.i, %3
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.t = add nuw i64 %.sroa.02.08.i.i.i, 1
  %i.u = icmp eq ptr %i.s, %i.o
  br i1 %i.u, label %.loopexit.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.v = add nuw i64 %.sroa.02.08.i.i.i, 1        ; 2 uses
  %i.w = sub nuw i64 %i.m, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.e, %bb.f, %bb.d
  %i.y = phi i64 [ %i.w, %bb.f ], [ 0, %bb.d ], [ %i.m, %bb.e ]
  %i.z = phi ptr [ %i.x, %bb.f ], [ %i.n, %bb.d ], [ %i.n, %bb.e ]
  %.val412.i = phi i8 [ 0, %bb.f ], [ 1, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %.sroa.5.1.i.ph.i = phi i64 [ %.sroa.02.08.i.i.i, %bb.f ], [ 0, %bb.d ], [ %i.m, %bb.e ]
  %i.aa = icmp samesign ult i64 %i.l, 576460752303423488
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %i.a, align 8, !range !10, !alias.scope !299, !noalias !301, !noundef !5
  %i.ac = icmp eq i64 %i.l, %i.ab
  br i1 %i.ac, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRShE7reserveCs84qwSrTN5pO_7uu_shuf.exit.i, label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRShE7reserveCs84qwSrTN5pO_7uu_shuf.exit.i: ; preds = %.loopexit.i.i
  %narrow.i = sub nuw nsw i8 2, %.val412.i
  %i.ad = zext nneg i8 %narrow.i to i64
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.l, i64 noundef range(i64 1, 0) %i.ad, i64 noundef 8, i64 noundef 16) #26, !noalias !301
  %.pre = load ptr, ptr %i.i, align 8, !alias.scope !299, !noalias !301
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRShE7reserveCs84qwSrTN5pO_7uu_shuf.exit.i, %.loopexit.i.i
  %i.ae = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRShE7reserveCs84qwSrTN5pO_7uu_shuf.exit.i ], [ %i.k, %.loopexit.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.l ; 2 uses
  store ptr %i.n, ptr %i.af, align 8, !noalias !302, !captures !303
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.sroa.5.1.i.ph.i, ptr %i.ag, align 8, !noalias !302
  %i.ah = add nuw nsw i64 %i.l, 1                 ; 3 uses
  store i64 %i.ah, ptr %i.j, align 8, !alias.scope !299, !noalias !301
  %i.ai = trunc nuw i8 %.val412.i to i1
  br i1 %i.ai, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.aj = load ptr, ptr %i.i, align 8, !alias.scope !304, !nonnull !5, !noundef !5
  %i.ak = getelementptr [16 x i8], ptr %i.aj, i64 %i.ah
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %.val.i = load i64, ptr %i.al, align 8, !noalias !304, !noundef !5
  %i.am = icmp eq i64 %.val.i, 0
  br i1 %i.am, label %bb.i, label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecRShE6pop_ifNCNvCs84qwSrTN5pO_7uu_shuf10split_sepss_0EBU_.exit

bb.i:                                             ; preds = %bb.h
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !304
  %i.an = load i64, ptr %i.a, align 8, !range !10, !alias.scope !304, !noundef !5
  %i.ao = icmp samesign ult i64 %i.l, %i.an
  tail call void @llvm.assume(i1 %i.ao)
  br label %_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecRShE6pop_ifNCNvCs84qwSrTN5pO_7uu_shuf10split_sepss_0EBU_.exit

_RINvMs_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecRShE6pop_ifNCNvCs84qwSrTN5pO_7uu_shuf10split_sepss_0EBU_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs84qwSrTN5pO_7uu_shuf11open_output(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !388
  store i128 79537652246452167413109620736, ptr %i.i, align 16, !noalias !388
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !388
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = load i32, ptr %i.j, align 8, !range !390, !alias.scope !389, !noalias !391, !noundef !5
  %i.l = trunc nuw i32 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.ap

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !389, !noalias !391, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !392
  store i64 0, ptr %i.g, align 8, !noalias !392
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !392
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !392
  store i64 1, ptr %i.f, align 8, !noalias !392
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !392
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %2, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !392
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 1, ptr %i.o, align 8, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !393
  store i64 0, ptr %i.c, align 8, !noalias !393
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !393
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !393
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.p, align 8, !noalias !393
  store ptr %i.c, ptr %i.b, align 8, !noalias !393
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @99, ptr %i.q, align 8, !noalias !393
  %i.r = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26, !noalias !394
  br i1 %i.r, label %bb.d, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf.exit.i.i, !prof !6

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #29, !noalias !394
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs84qwSrTN5pO_7uu_shuf.exit.i.i: ; preds = %bb.c
  %.sroa.0.0.copyload70.i.i = load i64, ptr %i.c, align 8, !noalias !395 ; 4 uses
  %.sroa.5.0.copyload73.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !395, !nonnull !5, !noundef !5 ; 9 uses
  %.sroa.8.0.copyload76.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !395 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !392
  switch i64 %.sroa.8.0.copyload76.i.i, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit.i.i
end_hunk_0
begin_hunk_1_@_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error16value_validationCs84qwSrTN5pO_7uu_shuf:bb.a
  %.sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.sroa.411.0..sroa.4.0..sroa_idx6.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.48, i64 31, i1 false)
  %i.e = call noundef nonnull align 8 ptr @_RINvMNtCsgNwXemyrBWj_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj2_EB5_(ptr noalias noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error8with_cmdCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [126 x i8], align 2               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !872, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !872, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i27, i64 16 ; 2 uses
  %i.k = add i64 %.sroa.8.0.i.i26, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.01.i.i27 = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.8.0.i.i26 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.01.i.i27, align 8, !noalias !872
  %i.m = icmp eq i128 %.val.i.i, -159004430768447808090885082428108441544
  br i1 %i.m, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !872, !noundef !5 ; 2 uses
  %i.p = icmp ult i64 %.sroa.8.0.i.i26, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i26, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29, !noalias !872
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !872, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.8.0.i.i26 ; 2 uses
  %.val5.i = load ptr, ptr %i.s, align 8, !noalias !870, !nonnull !5, !noundef !5
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val6.i = load ptr, ptr %i.t, align 8, !noalias !870, !nonnull !5, !align !14, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !15, !invariant.load !5, !noalias !870
  %i.w = add nsw i64 %i.v, -1
  %i.x = and i64 %i.w, -16
  %i.y = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !870
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !5, !noalias !870, !nonnull !5
  call void %i.ab(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.z) #30, !noalias !870, !inline_history !867
  %i.ac = load i128, ptr %i.a, align 16, !noalias !870, !noundef !5
  %.not.i = icmp eq i128 %i.ac, -159004430768447808090885082428108441544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !870
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #29, !noalias !870
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %bb.b, %bb.a, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.z, %bb.e ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not, ptr @73, ptr %.sroa.0.0.i ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.c, ptr noundef nonnull align 2 dereferenceable(14) %., i64 14, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %., i64 14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ae, ptr noundef nonnull align 2 dereferenceable(14) %i.ad, i64 14, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %., i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ag, ptr noundef nonnull align 2 dereferenceable(14) %i.af, i64 14, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %., i64 42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ai, ptr noundef nonnull align 2 dereferenceable(14) %i.ah, i64 14, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %., i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ak, ptr noundef nonnull align 2 dereferenceable(14) %i.aj, i64 14, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %., i64 70
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.am, ptr noundef nonnull align 2 dereferenceable(14) %i.al, i64 14, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %., i64 84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ao, ptr noundef nonnull align 2 dereferenceable(14) %i.an, i64 14, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %., i64 98
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.aq, ptr noundef nonnull align 2 dereferenceable(14) %i.ap, i64 14, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %., i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.as, ptr noundef nonnull align 2 dereferenceable(14) %i.ar, i64 14, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.at, ptr noundef nonnull align 2 dereferenceable(126) %i.c, i64 126, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 700
  %i.av = load i32, ptr %i.au, align 4, !noundef !5 ; 4 uses
  %i.aw = and i32 %i.av, 536870912
  %.not12 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.ay = load i32, ptr %i.ax, align 8            ; 4 uses
  %i.az = and i32 %i.ay, 536870912
  %.not13 = icmp eq i32 %i.az, 0
  %or.cond = select i1 %.not12, i1 %.not13, i1 false
  %i.ba = or i32 %i.ay, %i.av
  %i.bb = lshr i32 %i.ba, 28
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %spec.select = and i8 %i.bc, 1
  %.sroa.09.0 = select i1 %or.cond, i8 %spec.select, i8 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 %.sroa.09.0, ptr %i.bd, align 1
  %i.be = and i32 %i.av, 262144
  %.not.i19 = icmp eq i32 %i.be, 0
  %i.bf = and i32 %i.ay, 262144
  %.not1.i = icmp eq i32 %i.bf, 0
  %or.cond1.i = select i1 %.not.i19, i1 %.not1.i, i1 false
  br i1 %or.cond1.i, label %bb.g, label %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.g:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit
  %i.bg = or i32 %i.ay, %i.av                     ; 2 uses
  %i.bh = and i32 %i.bg, 536870912
  %or.cond.i = icmp eq i32 %i.bh, 0
  br i1 %or.cond.i, label %bb.h, label %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.h:                                             ; preds = %bb.g
  %i.bi = lshr i32 %i.bg, 28
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %spec.select.i = and i8 %i.bj, 1
  br label %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit

_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit, %bb.g, %bb.h
  %.sroa.0.0.i20 = phi i8 [ 2, %bb.g ], [ 2, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs84qwSrTN5pO_7uu_shuf.exit ], [ %spec.select.i, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %.sroa.0.0.i20, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsgNwXemyrBWj_12clap_builder5error6format13get_help_flag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) #26
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.val17 = load i64, ptr %i.bl, align 8, !range !873, !noundef !5 ; 2 uses
  %i.bm = icmp sgt i64 %.val17, 0
  br i1 %i.bm, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CoweEEECs84qwSrTN5pO_7uu_shuf.exit

bb.i:                                             ; preds = %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit
  %i.bn = getelementptr i8, ptr %0, i64 88
  %.val18 = load ptr, ptr %i.bn, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18, i64 noundef %.val17, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !874
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CoweEEECs84qwSrTN5pO_7uu_shuf.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CoweEEECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef range(i64 0, 4294967296) i64 @_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = add i32 %i.b, 1                          ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !noundef !5  ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i8 %i.e, -1
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = icmp eq i32 %i.c, 2
  br i1 %i.i, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.sroa.0.012.i = add i32 %i.b, 2                ; 3 uses
  %i.j = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.c, i32 %.sroa.0.012.i) ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %._crit_edge.i, label %.lr.ph.i, !prof !891

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.03.1.lcssa.i = phi i32 [ %i.c, %.preheader.i ], [ %i.ay, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.012.i, %.preheader.i ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %i.l = sub i32 %.sroa.0.0.lcssa.i, %i.c
  %i.m = trunc i32 %i.l to i8
  %i.n = add i8 %i.m, -1
  %i.o = icmp eq i32 %.sroa.03.1.lcssa.i, 0
  br i1 %i.o, label %bb.k, label %.thread.i, !prof !892

.thread.i:                                        ; preds = %._crit_edge.i, %bb.c
  %.sroa.03.010.i = phi i32 [ %.sroa.03.1.lcssa.i, %._crit_edge.i ], [ 479001600, %bb.c ] ; 3 uses
  %.sroa.05.09.i = phi i8 [ %i.n, %._crit_edge.i ], [ 10, %bb.c ]
  %.val11.i = load ptr, ptr %0, align 8, !noalias !893, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.p = load ptr, ptr %.val11.i, align 8, !alias.scope !894, !noalias !893, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !895, !noalias !896, !noundef !5 ; 3 uses
  %i.s = icmp ugt i32 %i.r, 63
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.thread.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 272 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 320
  %i.v = load i64, ptr %i.u, align 4, !alias.scope !897, !noalias !898
  %i.w = icmp ugt i64 %i.v, 1023
  br i1 %i.w, label %bb.e, label %.thread.i.i.i.i.i14.i.i.i.i.i, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t) #28, !noalias !898
  br label %.thread.i.i.i.i.i14.i.i.i.i.i

.thread.i.i.i.i.i14.i.i.i.i.i:                    ; preds = %bb.e, %bb.d
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.q) #26, !noalias !896
  br label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i.i

bb.f:                                             ; preds = %.thread.i
  %i.x = zext nneg i32 %i.r to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.x
  %i.z = add nuw nsw i32 %i.r, 1
  br label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i.i

_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i.i: ; preds = %bb.f, %.thread.i.i.i.i.i14.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i12.i.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i14.i.i.i.i.i ], [ %i.z, %bb.f ]
  %.in.i.i.i.i.i13.i.i.i.i.i = phi ptr [ %i.q, %.thread.i.i.i.i.i14.i.i.i.i.i ], [ %i.y, %bb.f ]
  %i.aa = load i32, ptr %.in.i.i.i.i.i13.i.i.i.i.i, align 4, !alias.scope !895, !noalias !896, !noundef !5
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i12.i.i.i.i.i, ptr %i.q, align 4, !alias.scope !895, !noalias !896
  %i.ab = zext i32 %i.aa to i64
  %i.ac = zext i32 %.sroa.03.010.i to i64
  %i.ad = mul nuw i64 %i.ab, %i.ac                ; 2 uses
  %i.ae = lshr i64 %i.ad, 32                      ; 2 uses
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  %i.ag = sub i32 0, %.sroa.03.010.i
  %i.ah = icmp ugt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs84qwSrTN5pO_7uu_shuf.exit

bb.g:                                             ; preds = %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.ai = load ptr, ptr %.val11.i, align 8, !alias.scope !899, !noalias !893, !nonnull !5, !noundef !5 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !900, !noalias !901, !noundef !5 ; 3 uses
  %i.al = icmp ugt i32 %i.ak, 63
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 272 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 320
  %i.ao = load i64, ptr %i.an, align 4, !alias.scope !902, !noalias !903
  %i.ap = icmp ugt i64 %i.ao, 1023
  br i1 %i.ap, label %bb.i, label %.thread.i.i.i.i.i18.i.i.i.i.i, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.am) #28, !noalias !903
  br label %.thread.i.i.i.i.i18.i.i.i.i.i

.thread.i.i.i.i.i18.i.i.i.i.i:                    ; preds = %bb.i, %bb.h
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.am, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.aj) #26, !noalias !901
  br label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit19.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.aq = zext nneg i32 %i.ak to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.aq
  %i.as = add nuw nsw i32 %i.ak, 1
  br label %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit19.i.i.i.i.i

_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit19.i.i.i.i.i: ; preds = %bb.j, %.thread.i.i.i.i.i18.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i16.i.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i18.i.i.i.i.i ], [ %i.as, %bb.j ]
  %.in.i.i.i.i.i17.i.i.i.i.i = phi ptr [ %i.aj, %.thread.i.i.i.i.i18.i.i.i.i.i ], [ %i.ar, %bb.j ]
  %i.at = load i32, ptr %.in.i.i.i.i.i17.i.i.i.i.i, align 4, !alias.scope !900, !noalias !901, !noundef !5
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i16.i.i.i.i.i, ptr %i.aj, align 4, !alias.scope !900, !noalias !901
  %1 = tail call i32 @llvm.umulh.i32(i32 %i.at, i32 %.sroa.03.010.i)
  %i.au = xor i32 %i.af, -1
  %.not9.i.i.i.i.i = icmp ugt i32 %1, %i.au
  %i.av = zext i1 %.not9.i.i.i.i.i to i64
  %i.aw = add nuw nsw i64 %i.ae, %i.av
  br label %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs84qwSrTN5pO_7uu_shuf.exit

bb.k:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #29, !noalias !893
  unreachable

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.ax = phi { i32, i1 } [ %i.az, %.lr.ph.i ], [ %i.j, %.preheader.i ]
  %.sroa.0.013.i = phi i32 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.012.i, %.preheader.i ]
  %i.ay = extractvalue { i32, i1 } %i.ax, 0       ; 2 uses
  %.sroa.0.0.i = add i32 %.sroa.0.013.i, 1        ; 3 uses
  %i.az = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ay, i32 %.sroa.0.0.i) ; 2 uses
  %i.ba = extractvalue { i32, i1 } %i.az, 1
  br i1 %i.ba, label %._crit_edge.i, label %.lr.ph.i, !prof !904

_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs84qwSrTN5pO_7uu_shuf.exit: ; preds = %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i.i, %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit19.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.aw, %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit19.i.i.i.i.i ], [ %i.ae, %_RINvYQNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECs84qwSrTN5pO_7uu_shuf.exit15.i.i.i.i.i ]
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.04.0.i.i.i.i.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i, ptr %i.h, align 4, !noalias !893
  br label %bb.l

bb.l:                                             ; preds = %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs84qwSrTN5pO_7uu_shuf.exit, %bb.b
  %.sroa.01.0 = phi i8 [ %.sroa.05.09.i, %_RNCNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs6thread9ThreadRngE10next_index0Cs84qwSrTN5pO_7uu_shuf.exit ], [ %i.g, %bb.b ] ; 2 uses
  %i.bb = icmp eq i8 %.sroa.01.0, 0
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !5
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.be = icmp eq i32 %i.c, 0
  br i1 %i.be, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.sroa.0.0.in = phi i32 [ %i.bd, %bb.m ], [ %i.bh, %bb.p ]
  %.sroa.0.0 = zext i32 %.sroa.0.0.in to i64
  store i8 %.sroa.01.0, ptr %i.d, align 8
  store i32 %i.c, ptr %i.a, align 8
  ret i64 %.sroa.0.0

bb.p:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !5 ; 2 uses
  %i.bh = urem i32 %i.bg, %i.c
  %i.bi = udiv i32 %i.bg, %i.c
  store i32 %i.bi, ptr %i.bf, align 4
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #29
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_Cs84qwSrTN5pO_7uu_shufNtB5_10WrappedRng17choose_from_range(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i8, ptr %i.b, align 8, !range !20, !noundef !5 ; 2 uses
  %i.d = add nsw i8 %i.c, -2
  %.inv = icmp samesign ult i8 %i.c, 2
  %narrow = select i1 %.inv, i8 2, i8 %i.d
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.v
    i8 2, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8               ; 14 uses
  %.not.i.i = icmp ugt i64 %.0.val, %.8.val
  br i1 %.not.i.i, label %bb.u, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.e = sub nuw i64 %.8.val, %.0.val             ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 13 uses
  %i.i = load i32, ptr %i.h, align 4, !noalias !937, !noundef !5 ; 7 uses
  %i.j = icmp ult i32 %i.i, 63                    ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 268
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !938, !noalias !939, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.o = load i64, ptr %i.n, align 4, !alias.scope !940, !noalias !941
  %i.p = icmp ugt i64 %i.o, 1023
  br i1 %i.p, label %bb.g, label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i, !prof !6

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.m) #28, !noalias !941
  br label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i

_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.h) #26, !noalias !939
  %i.q = load i32, ptr %i.h, align 4, !alias.scope !938, !noalias !939, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.i, 63
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !938, !noalias !939, !noundef !5
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.t = zext nneg i32 %i.i to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !938, !noalias !939, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !938, !noalias !939, !noundef !5
  %i.y = add nuw nsw i32 %i.i, 2
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit.i.i.i: ; preds = %bb.i, %bb.h, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.i ], [ 1, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i ], [ 2, %bb.h ]
  %.sroa.02.017.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.l, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i ], [ %i.q, %bb.h ]
  %.sroa.03.016.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.i ], [ %i.q, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i ], [ %i.s, %bb.h ]
  store i32 %.sroa.0.018.i.i.i.i.i.i.i, ptr %i.h, align 4, !alias.scope !938, !noalias !939
  %i.z = zext i32 %.sroa.03.016.i.i.i.i.i.i.i to i64
  %i.aa = shl nuw i64 %i.z, 32
  %i.ab = zext i32 %.sroa.02.017.i.i.i.i.i.i.i to i64
  %i.ac = or disjoint i64 %i.aa, %i.ab
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEECs84qwSrTN5pO_7uu_shuf.exit

bb.j:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 268
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !942, !noalias !943, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.ah = load i64, ptr %i.ag, align 4, !alias.scope !944, !noalias !945
  %i.ai = icmp ugt i64 %i.ah, 1023
  br i1 %i.ai, label %bb.l, label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.af) #28, !noalias !945
  br label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i

_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i: ; preds = %bb.l, %bb.k
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.af, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.h) #26, !noalias !943
  %i.aj = load i32, ptr %i.h, align 4, !alias.scope !942, !noalias !943, !noundef !5 ; 2 uses
  %.not.i.i.i.i10.i.i.i = icmp eq i32 %i.i, 63
  br i1 %.not.i.i.i.i10.i.i.i, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !942, !noalias !943, !noundef !5
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i

bb.n:                                             ; preds = %bb.j
  %i.am = zext nneg i32 %i.i to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !942, !noalias !943, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !942, !noalias !943, !noundef !5
  %i.ar = add nuw nsw i32 %i.i, 2
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i: ; preds = %bb.n, %bb.m, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i
  %.sroa.0.018.i.i.i.i11.i.i.i = phi i32 [ %i.ar, %bb.n ], [ 1, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ 2, %bb.m ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i = phi i32 [ %i.ao, %bb.n ], [ %i.ae, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ %i.aj, %bb.m ]
  %.sroa.03.016.i.i.i.i13.i.i.i = phi i32 [ %i.aq, %bb.n ], [ %i.aj, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ %i.al, %bb.m ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i, ptr %i.h, align 4, !alias.scope !942, !noalias !943
  %i.as = zext i32 %.sroa.03.016.i.i.i.i13.i.i.i to i64
  %i.at = shl nuw i64 %i.as, 32
  %i.au = zext i32 %.sroa.02.017.i.i.i.i12.i.i.i to i64
  %i.av = or disjoint i64 %i.at, %i.au
  %i.aw = zext i64 %i.av to i128
  %i.ax = zext i64 %i.f to i128
  %i.ay = mul nuw i128 %i.aw, %i.ax               ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = trunc nuw i128 %i.az to i64             ; 2 uses
  %i.bb = trunc i128 %i.ay to i64                 ; 2 uses
  %i.bc = xor i64 %i.e, -1
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i
  %i.be = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i, 63
  br i1 %i.be, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 268
  %i.bg = load i32, ptr %i.bf, align 4, !alias.scope !946, !noalias !947, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.bj = load i64, ptr %i.bi, align 4, !alias.scope !948, !noalias !949
  %i.bk = icmp ugt i64 %i.bj, 1023
  br i1 %i.bk, label %bb.q, label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i, !prof !6

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bh) #28, !noalias !949
  br label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i

_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i: ; preds = %bb.q, %bb.p
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bh, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.h) #26, !noalias !947
  %i.bl = load i32, ptr %i.h, align 4, !alias.scope !946, !noalias !947, !noundef !5 ; 2 uses
  %.not.i.i.i.i16.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !alias.scope !946, !noalias !947, !noundef !5
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.bo = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !alias.scope !946, !noalias !947, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !alias.scope !946, !noalias !947, !noundef !5
  %i.bt = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i, 2
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i: ; preds = %bb.s, %bb.r, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i
  %.sroa.0.018.i.i.i.i17.i.i.i = phi i32 [ %i.bt, %bb.s ], [ 1, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ 2, %bb.r ]
  %.sroa.02.017.i.i.i.i18.i.i.i = phi i32 [ %i.bq, %bb.s ], [ %i.bg, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ %i.bl, %bb.r ]
  %.sroa.03.016.i.i.i.i19.i.i.i = phi i32 [ %i.bs, %bb.s ], [ %i.bl, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ %i.bn, %bb.r ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i, ptr %i.h, align 4, !alias.scope !946, !noalias !947
  %i.bu = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i to i64
  %i.bv = shl nuw i64 %i.bu, 32
  %i.bw = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i to i64
  %i.bx = or disjoint i64 %i.bv, %i.bw
  %2 = tail call i64 @llvm.umulh.i64(i64 %i.bx, i64 %i.f)
  %i.by = xor i64 %i.bb, -1
  %.not6.i.i.i = icmp ugt i64 %2, %i.by
  %i.bz = zext i1 %.not6.i.i.i to i64
  %i.ca = add nuw i64 %i.bz, %i.ba
  br label %bb.t

bb.t:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i
  %.sroa.01.0.i.i.i = phi i64 [ %i.ca, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i ], [ %i.ba, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i ]
  %i.cb = add i64 %.sroa.01.0.i.i.i, %.0.val
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEECs84qwSrTN5pO_7uu_shuf.exit

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #29, !noalias !950
  unreachable

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit.i.i.i, %bb.t
  %.sroa.61.0.i = phi i64 [ %i.cb, %bb.t ], [ %i.ac, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.61.0.i, ptr %i.cc, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.a
  %.val1 = load ptr, ptr %1, align 8
  %i.cd = sub i64 %.8.val, %.0.val
  %i.ce = tail call fastcc noundef i64 @_RNvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB2_9SeededRng16generate_at_most(ptr %.val1, i64 noundef %i.cd) #26
  %i.cf = add i64 %i.ce, %.0.val
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.cg, align 8
  br label %bb.z

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !952
  %i.ch = sub i64 %.8.val, %.0.val
  call fastcc void @_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE16generate_at_mostB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.ch) #26, !noalias !951
  %i.ci = load ptr, ptr %i.a, align 8, !noalias !952, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !952, !nonnull !5, !align !14, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !952
  br label %_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_rangeB6_.exit

bb.y:                                             ; preds = %bb.w
  %i.cl = load i64, ptr %i.cj, align 8, !noalias !952, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !952
  %i.cm = add i64 %i.cl, %.0.val
  %i.cn = inttoptr i64 %i.cm to ptr
  br label %_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_rangeB6_.exit

_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_rangeB6_.exit: ; preds = %bb.x, %bb.y
  %.sink1.i = phi ptr [ %i.cn, %bb.y ], [ %i.ck, %bb.x ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1.i, ptr %i.co, align 8, !alias.scope !951, !noalias !953
  br label %bb.z

bb.z:                                             ; preds = %_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_rangeB6_.exit, %bb.v, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEECs84qwSrTN5pO_7uu_shuf.exit
  %.sink = phi ptr [ %i.ci, %_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_rangeB6_.exit ], [ null, %bb.v ], [ null, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEECs84qwSrTN5pO_7uu_shuf.exit ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs84qwSrTN5pO_7uu_shuf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 17) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !7
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #26
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.k = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #26
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE16generate_at_mostB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = icmp ult i64 %i.d, %2
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8, !alias.scope !970, !noalias !971
  %.pre.i.i.fr = freeze ptr %.pre.i.i             ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.p = icmp eq ptr %.pre.i.i.fr, null
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre = load i64, ptr %i.g, align 8, !alias.scope !970, !noalias !971
  %.pre35 = load i64, ptr %i.h, align 8, !alias.scope !970, !noalias !971
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.q = load i64, ptr %i.g, align 8, !alias.scope !970, !noalias !971, !noundef !5 ; 2 uses
  %i.r = load i64, ptr %i.h, align 8, !alias.scope !970, !noalias !971, !noundef !5 ; 2 uses
  %.not.i.i.us = icmp ult i64 %i.q, %i.r
  br i1 %.not.i.i.us, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !974
  store ptr null, ptr %i.a, align 8, !noalias !974
  store i64 %i.k, ptr %i.l, align 8, !noalias !974
  store i64 0, ptr %i.m, align 8, !noalias !974
  %i.s = load i8, ptr %i.o, align 8, !range !17, !alias.scope !970, !noalias !971, !noundef !5
  store i8 %i.s, ptr %i.n, align 8, !noalias !974
  %i.t = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #26, !noalias !975 ; 2 uses
  store i64 0, ptr %i.g, align 8, !alias.scope !970, !noalias !971
  %i.u = load i64, ptr %i.m, align 8, !noalias !974, !noundef !5 ; 2 uses
  store i64 %i.u, ptr %i.h, align 8, !alias.scope !970, !noalias !971
  %i.v = load i8, ptr %i.n, align 8, !range !17, !noalias !974, !noundef !5
  store i8 %i.v, ptr %i.o, align 8, !alias.scope !970, !noalias !971
  %.not3.i.i.us = icmp eq ptr %i.t, null
  br i1 %.not3.i.i.us, label %bb.c, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !974
  br label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.us

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.us: ; preds = %bb.c, %.lr.ph.split.us
  %i.w = phi i64 [ %i.r, %.lr.ph.split.us ], [ %i.u, %bb.c ]
  %i.x = phi i64 [ %i.q, %.lr.ph.split.us ], [ 0, %bb.c ]
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = inttoptr i64 %i.y to ptr
  br label %bb.e

._crit_edge:                                      ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48, %bb.a
  %.lcssa22 = phi i64 [ %i.d, %bb.a ], [ %i.bo, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48 ] ; 4 uses
  %i.aa = icmp eq i64 %2, -1
  br i1 %i.aa, label %bb.g, label %bb.h

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48
  %i.ab = phi i64 [ %.pre35, %.lr.ph.split.preheader ], [ %i.bf, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48 ] ; 2 uses
  %i.ac = phi i64 [ %.pre, %.lr.ph.split.preheader ], [ %..i.i, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
end_hunk_1
begin_hunk_2_@_RNvMNtNtCsgNwXemyrBWj_12clap_builder6output5usageNtB2_5Usage3new

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5write(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write14write_vectored(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write18write_all_vectored(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsb_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsb_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io5write5Write14write_vectored(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #23

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #24

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXse_CsacedJx9u1BN_4sha3NtB5_8Sha3_256NtCsjseir0iHWAJ_6digest11FixedOutput13finalize_into(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(208), ptr noalias nofree noundef dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCsdpq09Y9gzqS_11rand_chacha4guts11init_chacha(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 16 captures(address) dereferenceable(48), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #19

; Function Attrs: noinline nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8, i8 noundef range(i8 0, 17), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #7

; Function Attrs: noinline nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RINvMNtCsgNwXemyrBWj_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj2_EB5_(ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsgNwXemyrBWj_12clap_builder5error6format13get_help_flag(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() unnamed_addr #1

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #19

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef align 4 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs6JMX4GRUq9U_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3ArgNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(640), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsgNwXemyrBWj_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCsdpq09Y9gzqS_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef align 16 dereferenceable(48), i32 noundef, ptr noalias nofree noundef align 4 dereferenceable(256)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCs7tKScEop1B6_5alloc5boxed7convertINtBd_3BoxDNtNtCs6JMX4GRUq9U_4core5error5ErrorNtNtB12_6marker4SyncNtB1z_4SendEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCs7tKScEop1B6_5alloc5boxed7convertINtBc_3BoxDNtNtCs6JMX4GRUq9U_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #19

attributes #0 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #5 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { norecurse nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #22 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { noinline nounwind }
attributes #29 = { noinline noreturn nounwind }
attributes #30 = { inlinehint nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", i32 2002, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!10 = !{i64 0, i64 -9223372036854775808}
!11 = !{i64 -1, i64 -9223372036854775808}
!12 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!13 = !{i32 0, i32 -1}
!14 = !{i64 8}
!15 = !{i64 1, i64 536870913}
!16 = !{i64 0, i64 2}
!17 = !{i8 0, i8 2}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{i8 0, i8 4}
!21 = !{i64 4}
!22 = !{!"branch_weights", !"expected", i32 4292819, i32 2143190829}
!23 = !{!"branch_weights", !"expected", i32 2143184379, i32 4299269}
!24 = !{i8 0, i8 3}
!25 = !{i8 0, i8 44}
!26 = distinct !{!26, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf"}
!27 = distinct !{!27, !26, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf: argument 0"}
!28 = distinct !{!28, !26, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf: argument 1"}
!29 = distinct !{!29, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf"}
!30 = distinct !{!30, !29, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf: argument 0"}
!31 = distinct !{!31, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf"}
!32 = distinct !{!32, !31, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf: argument 0"}
!33 = distinct !{!33, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf"}
!34 = distinct !{!34, !33, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf: argument 0"}
!35 = distinct !{!35, !33, !"_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECs84qwSrTN5pO_7uu_shuf: argument 1"}
!36 = distinct !{!36, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRyECs84qwSrTN5pO_7uu_shuf"}
!37 = distinct !{!37, !36, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRyECs84qwSrTN5pO_7uu_shuf: argument 0"}
!38 = distinct !{!38, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE14reserve_rehashNCINvNtBa_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0Cs84qwSrTN5pO_7uu_shuf"}
!39 = distinct !{!39, !38, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE14reserve_rehashNCINvNtBa_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0Cs84qwSrTN5pO_7uu_shuf: argument 0"}
!40 = distinct !{!40, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRyNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECs84qwSrTN5pO_7uu_shuf"}
!41 = distinct !{!41, !40, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRyNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECs84qwSrTN5pO_7uu_shuf: argument 0"}
!42 = distinct !{!42, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128"}
!43 = distinct !{!43, !42, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!44 = distinct !{!44, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf"}
!45 = distinct !{!45, !44, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!46 = distinct !{!46, !44, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 1"}
!47 = distinct !{!47, !44, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 0:It1"}
!48 = distinct !{!48, !44, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 1:It1"}
!49 = distinct !{!49, !44, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 0:It2"}
!50 = distinct !{!50, !44, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 1:It2"}
!51 = distinct !{!51, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7GWc7oqutCf_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs7tKScEop1B6_5alloc5alloc6GlobalE0EECs84qwSrTN5pO_7uu_shuf"}
!52 = distinct !{!52, !51, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7GWc7oqutCf_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs7tKScEop1B6_5alloc5alloc6GlobalE0EECs84qwSrTN5pO_7uu_shuf: argument 0"}
!53 = distinct !{!53, !"_RNvXs1_NtCs7GWc7oqutCf_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs7tKScEop1B6_5alloc5alloc6GlobalE0ENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs84qwSrTN5pO_7uu_shuf"}
!54 = distinct !{!54, !53, !"_RNvXs1_NtCs7GWc7oqutCf_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs7tKScEop1B6_5alloc5alloc6GlobalE0ENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs84qwSrTN5pO_7uu_shuf: argument 0"}
!55 = distinct !{!55, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!56 = distinct !{!56, !55, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!57 = distinct !{!57, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRyECs84qwSrTN5pO_7uu_shuf"}
!58 = distinct !{!58, !57, !"_RINvYNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRyECs84qwSrTN5pO_7uu_shuf: argument 0"}
!59 = distinct !{!59, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE14reserve_rehashNCINvNtBa_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0Cs84qwSrTN5pO_7uu_shuf"}
!60 = distinct !{!60, !59, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTyyEE14reserve_rehashNCINvNtBa_3map11make_hasheryyNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0E0Cs84qwSrTN5pO_7uu_shuf: argument 0"}
!61 = distinct !{!61, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRyNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECs84qwSrTN5pO_7uu_shuf"}
!62 = distinct !{!62, !61, !"_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRyNtB8_4Hash4hashNtCs4jvHr4X8PhZ_10rustc_hash8FxHasherECs84qwSrTN5pO_7uu_shuf: argument 0"}
!63 = distinct !{!63, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128"}
!64 = distinct !{!64, !63, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!65 = distinct !{!65, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf"}
!66 = distinct !{!66, !65, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!67 = distinct !{!67, !65, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 0:It1"}
!68 = distinct !{!68, !65, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 1"}
!69 = distinct !{!69, !65, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 1:It1"}
!70 = !{!27}
!71 = !{!28}
!72 = !{!27, !28}
!73 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!74 = !{!32, !30}
!75 = !{!30}
!76 = !{!34, !27}
!77 = !{!35, !28}
!78 = !{!37}
!79 = !{!41, !39}
!80 = !{!43}
!81 = !{!"branch_weights", i32 1, i32 1999}
!82 = !{!"branch_weights", i32 0, i32 1}
!83 = !{!45}
!84 = !{!46}
!85 = !{!47}
!86 = !{!48}
!87 = !{!49}
!88 = !{!50}
!89 = !{!54, !52}
!90 = !{!56}
!91 = !{!58}
!92 = !{!62, !60, !56}
!93 = !{!64, !56}
!94 = !{!67, !66}
!95 = !{!69, !68}
!96 = distinct !{!96, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs84qwSrTN5pO_7uu_shuf"}
!97 = distinct !{!97, !96, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECs84qwSrTN5pO_7uu_shuf: argument 0"}
!98 = distinct !{!98, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintEE3newCs84qwSrTN5pO_7uu_shuf"}
!99 = distinct !{!99, !98, !"_RNvMNtCs7tKScEop1B6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintEE3newCs84qwSrTN5pO_7uu_shuf: argument 0"}
!100 = distinct !{!100, !"_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf"}
!101 = distinct !{!101, !100, !"_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf: argument 0"}
!102 = distinct !{!102, !100, !"_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf: argument 1"}
!103 = distinct !{!103, !100, !"_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf: argument 3"}
!104 = distinct !{!104, !100, !"_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCs84qwSrTN5pO_7uu_shuf: argument 2"}
!105 = distinct !{!105, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs84qwSrTN5pO_7uu_shuf"}
!106 = distinct !{!106, !105, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs84qwSrTN5pO_7uu_shuf: argument 0"}
!107 = distinct !{!107, !105, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCs84qwSrTN5pO_7uu_shuf: argument 1"}
!108 = distinct !{!108, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8push_mutCs84qwSrTN5pO_7uu_shuf"}
!109 = distinct !{!109, !108, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8push_mutCs84qwSrTN5pO_7uu_shuf: argument 0"}
!110 = distinct !{!110, !108, !"_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8push_mutCs84qwSrTN5pO_7uu_shuf: argument 1"}
!111 = distinct !{!111, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf"}
!112 = distinct !{!112, !111, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 0"}
!113 = distinct !{!113, !111, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 0:It1"}
!114 = distinct !{!114, !111, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 1"}
!115 = distinct !{!115, !111, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 1:It1"}
!116 = distinct !{!116, !111, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 0:It2"}
!117 = distinct !{!117, !111, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 0:It3"}
!118 = distinct !{!118, !111, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 1:It2"}
!119 = distinct !{!119, !111, !"_RINvNtCs6JMX4GRUq9U_4core3ptr10swap_chunkKj8_ECs84qwSrTN5pO_7uu_shuf: argument 1:It3"}
!120 = distinct !{!120, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEECs84qwSrTN5pO_7uu_shuf"}
!121 = distinct !{!121, !120, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueEECs84qwSrTN5pO_7uu_shuf: argument 0"}
!122 = distinct !{!122, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueECs84qwSrTN5pO_7uu_shuf"}
!123 = distinct !{!123, !122, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueECs84qwSrTN5pO_7uu_shuf: argument 0"}
!124 = distinct !{!124, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECs84qwSrTN5pO_7uu_shuf"}
!125 = distinct !{!125, !124, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1r_4SendEL_EECs84qwSrTN5pO_7uu_shuf: argument 0"}
!126 = distinct !{!126, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs84qwSrTN5pO_7uu_shuf"}
!127 = distinct !{!127, !126, !"_RNvXsE_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCs6JMX4GRUq9U_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs84qwSrTN5pO_7uu_shuf: argument 0"}
!128 = !{!97}
!129 = !{!99, !97}
!130 = !{!101}
!131 = !{!102}
!132 = !{!103}
!133 = !{!102, !97}
!134 = !{!101, !104, !103}
!135 = !{!101, !102, !104, !103, !97}
!136 = !{!106, !102, !97}
!137 = !{!107, !101, !104, !103}
!138 = !{!101, !103}
!139 = !{!109, !102, !97}
!140 = !{!110, !101, !104, !103}
!141 = !{!101, !104}
!142 = !{!113, !112}
!143 = !{!112}
!144 = !{!114, !101, !102, !104, !103, !97}
!145 = !{!113}
!146 = !{!115, !101, !102, !104, !103, !97}
!147 = !{!102, !104, !97}
!148 = !{!117, !116}
!149 = !{!116}
!150 = !{!118, !101, !102, !104, !103, !97}
end_hunk_2
