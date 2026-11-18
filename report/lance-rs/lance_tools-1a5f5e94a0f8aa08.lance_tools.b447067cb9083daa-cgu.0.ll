Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-1a5f5e94a0f8aa08.lance_tools.b447067cb9083daa-cgu.0?download=true
inline.NumInlined: 683
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs8_NtCsftBYP88YJaE_11lance_tools3cliNtB5_13LanceFileArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14CommandFactory7command:bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !805
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  store i64 -1, ptr %i.u, align 8, !alias.scope !805
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 700
  store i32 0, ptr %i.v, align 4, !alias.scope !805
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  store i32 0, ptr %i.w, align 8, !alias.scope !805
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %i.x, align 8, !alias.scope !805
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx.i, align 8, !alias.scope !805
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !805
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.643.sroa.4.0..sroa.643.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !805
  %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643.sroa.5.0..sroa.643.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !805
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx.i, align 8, !alias.scope !805
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !805
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i, align 8, !alias.scope !805
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i64 0, ptr %.sroa.534.0..sroa_idx.i, align 8, !alias.scope !805
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store ptr null, ptr %i.y, align 8, !alias.scope !805
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.z, align 8, !alias.scope !805
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.aa, align 8, !alias.scope !805
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store ptr null, ptr %i.ab, align 8, !alias.scope !805
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  store ptr null, ptr %i.ac, align 8, !alias.scope !805
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -1, ptr %i.ad, align 8, !alias.scope !805
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 708
  store i8 0, ptr %i.ae, align 4, !alias.scope !805
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  store ptr null, ptr %i.af, align 8, !alias.scope !805
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i64 0, ptr %i.ag, align 8, !alias.scope !805
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.455.0..sroa_idx.i, align 8, !alias.scope !805
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !805
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !805
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i64 0, ptr %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !805
  call void @_RNvXsa_NtCsftBYP88YJaE_11lance_tools3cliNtB5_13LanceFileArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive4Args12augment_args(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtCsftBYP88YJaE_11lance_tools3cliNtB5_13LanceFileArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches16from_arg_matches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !809 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvXsH_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !811
  invoke void @_RNvXsc_NtCsftBYP88YJaE_11lance_tools3cliNtB5_16LanceFileCommandNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noalias !811, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !811
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !811
  br label %bb.e

bb.c:                                             ; preds = %.noexc
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !811
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload.i, ptr %.sroa.68.0..sroa_idx.i, align 8, !alias.scope !810
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10ArgMatchesECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.b) #24
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.h, align 8, !alias.scope !810
  store i64 %i.c, ptr %0, align 8, !alias.scope !810
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10ArgMatchesECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtCsftBYP88YJaE_11lance_tools3cliNtB5_13LanceFileArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !guid !812 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCsftBYP88YJaE_11lance_tools3cliNtB5_16LanceFileCommandNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs9_NtCsftBYP88YJaE_11lance_tools3cliNtB5_13LanceFileArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches23update_from_arg_matches(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !813 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsH_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.b = invoke noundef align 8 ptr @_RNvXsc_NtCsftBYP88YJaE_11lance_tools3cliNtB5_16LanceFileCommandNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RNvXs9_NtCsftBYP88YJaE_11lance_tools3cliNtB5_13LanceFileArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10ArgMatchesECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.a) #24
          to label %bb.d unwind label %bb.c

_RNvXs9_NtCsftBYP88YJaE_11lance_tools3cliNtB5_13LanceFileArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut.exit: ; preds = %bb.a
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10ArgMatchesECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs9_NtCsftBYP88YJaE_11lance_tools3cliNtB5_13LanceFileArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !guid !814 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXsc_NtCsftBYP88YJaE_11lance_tools3cliNtB5_16LanceFileCommandNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsH_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #4 personality ptr @rust_eh_personality !guid !891 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.740.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %.sroa.841.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i = load ptr, ptr %i.k, align 8, !alias.scope !893, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.l, align 8, !alias.scope !893, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.m = shl nuw i64 %.val3.i, 4                  ; 3 uses
  %i.n = icmp eq i64 %.val3.i, 0                  ; 2 uses
  br i1 %i.n, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !895
  %i.o = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.m, i64 noundef range(i64 1, 9) 8) #22, !noalias !895 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %.lr.ph.preheader.i.i.i.a

bb.b:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.m) #23, !noalias !896
  unreachable

.lr.ph.preheader.i.i.i.a:                         ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %2 = getelementptr inbounds nuw [16 x i8], ptr %.val2.i, i64 %.val3.i
  br label %.lr.ph.i.i.i.a

.lr.ph.i.i.i.a:                                   ; preds = %bb.c, %.lr.ph.preheader.i.i.i.a
  %.sroa.016.025.i.i.i = phi ptr [ %5, %bb.c ], [ %.val2.i, %.lr.ph.preheader.i.i.i.a ] ; 4 uses
  %.sroa.7.024.i.i.i = phi i64 [ %4, %bb.c ], [ 0, %.lr.ph.preheader.i.i.i.a ] ; 2 uses
  %.sroa.10.023.i.i.i = phi i64 [ %3, %bb.c ], [ %.val3.i, %.lr.ph.preheader.i.i.i.a ]
  %i.q = icmp eq ptr %.sroa.016.025.i.i.i, %2
  br i1 %i.q, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.a
  %3 = add nsw i64 %.sroa.10.023.i.i.i, -1        ; 2 uses
  %4 = add nuw nsw i64 %.sroa.7.024.i.i.i, 1
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i.i.i, i64 16
  %.val14.i.i.i.a = load ptr, ptr %.sroa.016.025.i.i.i, align 8, !alias.scope !894, !noalias !897, !nonnull !5, !noundef !5
  %i.r = getelementptr i8, ptr %.sroa.016.025.i.i.i, i64 8
  %.val15.i.i.i.a = load i64, ptr %i.r, align 8, !alias.scope !894, !noalias !897, !noundef !5
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.7.024.i.i.i ; 2 uses
  store ptr %.val14.i.i.i.a, ptr %i.s, align 8, !noalias !896
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.val15.i.i.i.a, ptr %i.t, align 8, !noalias !896
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i, label %.lr.ph.i.i.i.a

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i: ; preds = %bb.c, %.lr.ph.i.i.i.a, %bb.a
  %.sroa.10.0.i33.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.o, %.lr.ph.i.i.i.a ], [ %i.o, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4.i = load ptr, ptr %i.u, align 8, !alias.scope !893, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i = load i64, ptr %i.v, align 8, !alias.scope !893, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !899
  %i.w = mul nuw nsw i64 %.val5.i, 104            ; 2 uses
  %i.x = icmp eq i64 %.val5.i, 0
  br i1 %i.x, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i6.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i: ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i
  store i64 0, ptr %i.i, align 8, !noalias !899
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !899
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %_RNvXs7_NtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB5_7FlatMapNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i6.i: ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !900
  %i.aa = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.w, i64 noundef range(i64 1, 9) 8) #22, !noalias !900 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.d, label %.lr.ph.i.i7.i

bb.d:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i6.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.w) #23
          to label %.noexc.i unwind label %bb.af, !noalias !901

.noexc.i:                                         ; preds = %bb.d
  unreachable

.lr.ph.i.i7.i:                                    ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i6.i
  store i64 %.val5.i, ptr %i.i, align 8, !noalias !899
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !noalias !899
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 0, ptr %i.ad, align 8, !noalias !899
  %7 = getelementptr inbounds nuw [104 x i8], ptr %.val4.i, i64 %.val5.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br label %8

8:                                                ; preds = %.loopexit.i.i.i, %.lr.ph.i.i7.i
  %.sroa.012.0112.i.i.i = phi ptr [ %.val4.i, %.lr.ph.i.i7.i ], [ %i.al, %.loopexit.i.i.i ] ; 11 uses
  %.sroa.7.0110.i.i.i = phi i64 [ 0, %.lr.ph.i.i7.i ], [ %i.am, %.loopexit.i.i.i ] ; 3 uses
  %.sroa.10.0109.i.i.i = phi i64 [ %.val5.i, %.lr.ph.i.i7.i ], [ %9, %.loopexit.i.i.i ]
  %9 = add nsw i64 %.sroa.10.0109.i.i.i, -1       ; 2 uses
  %10 = icmp eq ptr %.sroa.012.0112.i.i.i, %7
  br i1 %10, label %_RNvXs7_NtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB5_7FlatMapNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit, label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.f:                                             ; preds = %8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.0112.i.i.i, i64 104
  %i.am = add nuw nsw i64 %.sroa.7.0110.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.0112.i.i.i, i64 97
  %i.ao = load i8, ptr %i.an, align 1, !range !903, !alias.scope !904, !noalias !905, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.0112.i.i.i, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !904, !noalias !905, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.0112.i.i.i, i64 40
  %.val2.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !904, !noalias !905, !noundef !5 ; 4 uses
  %i.ar = shl nuw i64 %.val2.i.i.i.i, 3           ; 4 uses
  %i.as = icmp eq i64 %.val2.i.i.i.i, 0           ; 2 uses
  br i1 %i.as, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !906
  %i.at = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ar, i64 noundef range(i64 1, 9) 8) #22, !noalias !906 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ar) #23
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !899

.noexc.i.i.i:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.at, ptr nonnull readonly align 8 %.val.i.i.i.i, i64 %i.ar, i1 false), !noalias !907
  br label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i: ; preds = %bb.h, %bb.f
  %.sroa.6.0.i.i.i.i = phi ptr [ %i.at, %bb.h ], [ inttoptr (i64 8 to ptr), %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !908
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0112.i.i.i, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !904, !noalias !905, !nonnull !5, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0112.i.i.i, i64 64
  %.val4.i.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !904, !noalias !905, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !910
  %i.ax = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.ax, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i10.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i9.i.i.i.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i10.i.i.i.i: ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i
  store i64 0, ptr %i.g, align 8, !noalias !910
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !noalias !910
  br label %.loopexit23.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i9.i.i.i.i: ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i
  %i.ay = mul nuw nsw i64 %.val4.i.i.i.i, 24      ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !911
  %i.az = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ay, i64 noundef range(i64 1, 9) 8) #22, !noalias !911 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %.lr.ph.preheader.i.i.i.i.i.i

bb.i:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i9.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ay) #23
          to label %.noexc.i.i.i.i unwind label %bb.r, !noalias !908

.noexc.i.i.i.i:                                   ; preds = %bb.i
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i9.i.i.i.i
  store i64 %.val4.i.i.i.i, ptr %i.g, align 8, !noalias !910
  store ptr %i.az, ptr %i.ae, align 8, !noalias !910
  %11 = getelementptr inbounds nuw [24 x i8], ptr %.val3.i.i.i.i, i64 %.val4.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.014.039.i.i.i.i.i.i = phi ptr [ %i.bb, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i.i ], [ %.val3.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.sroa.7.038.i.i.i.i.i.i = phi i64 [ %i.bc, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.037.i.i.i.i.i.i = phi i64 [ %12, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i.i ], [ %.val4.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ]
  %12 = add nsw i64 %.sroa.10.037.i.i.i.i.i.i, -1 ; 2 uses
  %13 = icmp eq ptr %.sroa.014.039.i.i.i.i.i.i, %11
  br i1 %13, label %.loopexit23.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.014.039.i.i.i.i.i.i, i64 24
  %i.bc = add nuw nsw i64 %.sroa.7.038.i.i.i.i.i.i, 1
  %i.bd = getelementptr i8, ptr %.sroa.014.039.i.i.i.i.i.i, i64 8
  %.val12.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !909, !noalias !912, !nonnull !5, !noundef !5 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.014.039.i.i.i.i.i.i, i64 16
  %.val13.i.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !909, !noalias !912, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.bf = icmp eq i64 %.val13.i.i.i.i.i.i, 0
  br i1 %i.bf, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bg = shl nuw nsw i64 %.val13.i.i.i.i.i.i, 5  ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !914
  %i.bh = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bg, i64 noundef range(i64 1, 9) 8) #22, !noalias !914 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.k, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bg) #23
          to label %.noexc.i.i.i.i.i.i unwind label %bb.p, !noalias !910

.noexc.i.i.i.i.i.i:                               ; preds = %bb.k
  unreachable

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  %14 = getelementptr inbounds nuw [32 x i8], ptr %.val12.i.i.i.i.i.i, i64 %.val13.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.n, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.sroa.012.034.i.i.i.i.i.i.i.i = phi ptr [ %i.bo, %bb.n ], [ %.val12.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.7.033.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %bb.n ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.032.i.i.i.i.i.i.i.i = phi i64 [ %15, %bb.n ], [ %.val13.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ]
  %15 = add nsw i64 %.sroa.10.032.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %16 = icmp eq ptr %.sroa.012.034.i.i.i.i.i.i.i.i, %14
  br i1 %16, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.bj = load <2 x ptr>, ptr %.sroa.012.034.i.i.i.i.i.i.i.i, align 8, !alias.scope !916, !noalias !917
  %i.bk = load ptr, ptr %.sroa.012.034.i.i.i.i.i.i.i.i, align 8, !alias.scope !916, !noalias !917, !nonnull !5, !noundef !5
  %i.bl = atomicrmw add ptr %i.bk, i64 1 monotonic, align 8, !noalias !918
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bn = add nuw nsw i64 %.sroa.7.033.i.i.i.i.i.i.i.i, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i.i.i.i.i.i.i, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i.i.i.i.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %.sroa.7.033.i.i.i.i.i.i.i.i ; 2 uses
  store <2 x ptr> %i.bj, ptr %i.bq, align 8, !noalias !919
  %.sroa.524.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !noalias !920
  %i.br = icmp eq i64 %15, 0
  br i1 %i.br, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i, %bb.j
  %.sroa.5.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bh, %bb.n ]
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.sroa.7.038.i.i.i.i.i.i ; 3 uses
  store i64 %.val13.i.i.i.i.i.i, ptr %i.bs, align 8, !noalias !910
  %.sroa.425.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.425.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !910
  %.sroa.526.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %.val13.i.i.i.i.i.i, ptr %.sroa.526.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !910
  %i.bt = icmp eq i64 %12, 0
  br i1 %i.bt, label %.loopexit23.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25, !noalias !910
  unreachable

bb.p:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.038.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !910
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_NtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueEEECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.g) #24
          to label %.body.i.i.i.i unwind label %bb.o, !noalias !910

.body.i.i.i.i:                                    ; preds = %.body21.i.i.i.i, %bb.r, %bb.p
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body22.i.i.i.i, %.body21.i.i.i.i ], [ %i.bw, %bb.r ], [ %i.bv, %bb.p ] ; 2 uses
  br i1 %i.as, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %.body.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i.i, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !908
  br label %bb.ae

bb.r:                                             ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit23.i.i.i.i:                              ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i10.i.i.i.i
  store i64 %.val4.i.i.i.i, ptr %i.af, align 8, !noalias !910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !910
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0112.i.i.i, i64 80
  %.val7.i.i.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !904, !noalias !905, !nonnull !5, !noundef !5 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.012.0112.i.i.i, i64 88
  %.val8.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !904, !noalias !905, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !923
  %i.bz = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.bz, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i19.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i11.i.i.i.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i19.i.i.i.i: ; preds = %.loopexit23.i.i.i.i
  store i64 0, ptr %i.f, align 8, !noalias !923
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8, !noalias !923
  br label %.loopexit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i11.i.i.i.i: ; preds = %.loopexit23.i.i.i.i
  %i.ca = mul nuw nsw i64 %.val8.i.i.i.i, 24      ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !924
  %i.cb = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ca, i64 noundef range(i64 1, 9) 8) #22, !noalias !924 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.s, label %.lr.ph.i.i12.i.i.i.i

bb.s:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i11.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ca) #23
          to label %.noexc20.i.i.i.i unwind label %bb.ab, !noalias !908

.noexc20.i.i.i.i:                                 ; preds = %bb.s
  unreachable

.lr.ph.i.i12.i.i.i.i:                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i11.i.i.i.i
  store i64 %.val8.i.i.i.i, ptr %i.f, align 8, !noalias !923
  store ptr %i.cb, ptr %i.ag, align 8, !noalias !923
  %17 = getelementptr inbounds nuw [24 x i8], ptr %.val7.i.i.i.i, i64 %.val8.i.i.i.i
  br label %18

18:                                               ; preds = %.loopexit.i.i.i.i.i.i, %.lr.ph.i.i12.i.i.i.i
  %.sroa.014.031.i.i.i.i.i.i = phi ptr [ %.val7.i.i.i.i, %.lr.ph.i.i12.i.i.i.i ], [ %i.ce, %.loopexit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.7.029.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i12.i.i.i.i ], [ %i.cf, %.loopexit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.028.i.i.i.i.i.i = phi i64 [ %.val8.i.i.i.i, %.lr.ph.i.i12.i.i.i.i ], [ %19, %.loopexit.i.i.i.i.i.i ]
  %19 = add nsw i64 %.sroa.10.028.i.i.i.i.i.i, -1 ; 2 uses
  %20 = icmp eq ptr %.sroa.014.031.i.i.i.i.i.i, %17
  br i1 %20, label %.loopexit.i.i.i, label %bb.u

bb.t:                                             ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.u:                                             ; preds = %18
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.014.031.i.i.i.i.i.i, i64 24
  %i.cf = add nuw nsw i64 %.sroa.7.029.i.i.i.i.i.i, 1
  %i.cg = getelementptr i8, ptr %.sroa.014.031.i.i.i.i.i.i, i64 8
  %.val12.i.i13.i.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !922, !noalias !925, !nonnull !5, !noundef !5 ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.014.031.i.i.i.i.i.i, i64 16
  %.val13.i.i14.i.i.i.i = load i64, ptr %i.ch, align 8, !alias.scope !922, !noalias !925, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !927
  %i.ci = icmp eq i64 %.val13.i.i14.i.i.i.i, 0
  br i1 %i.ci, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i15.i.i.i.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.u
  store i64 0, ptr %i.d, align 8, !noalias !927
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8, !noalias !927
  br label %.loopexit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i15.i.i.i.i: ; preds = %bb.u
  %i.cj = mul nuw nsw i64 %.val13.i.i14.i.i.i.i, 24 ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !928
  %i.ck = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cj, i64 noundef range(i64 1, 9) 8) #22, !noalias !928 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.v, label %.lr.ph.preheader.i.i.i.i16.i.i.i.i

bb.v:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i15.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cj) #23
          to label %.noexc.i.i18.i.i.i.i unwind label %bb.t, !noalias !923

.noexc.i.i18.i.i.i.i:                             ; preds = %bb.v
  unreachable

.lr.ph.preheader.i.i.i.i16.i.i.i.i:               ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i15.i.i.i.i
  store i64 %.val13.i.i14.i.i.i.i, ptr %i.d, align 8, !noalias !927
  store ptr %i.ck, ptr %i.ai, align 8, !noalias !927
  %21 = getelementptr inbounds nuw [24 x i8], ptr %.val12.i.i13.i.i.i.i, i64 %.val13.i.i14.i.i.i.i
  br label %.lr.ph.i.i.i.i17.i.i.i.i

.lr.ph.i.i.i.i17.i.i.i.i:                         ; preds = %_RNvXs8_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_8OsStringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i16.i.i.i.i
  %.sroa.014.037.i.i.i.i.i.i.i.i = phi ptr [ %i.cm, %_RNvXs8_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_8OsStringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i ], [ %.val12.i.i13.i.i.i.i, %.lr.ph.preheader.i.i.i.i16.i.i.i.i ] ; 4 uses
  %.sroa.7.036.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %_RNvXs8_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_8OsStringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i16.i.i.i.i ] ; 3 uses
  %.sroa.10.035.i.i.i.i.i.i.i.i = phi i64 [ %22, %_RNvXs8_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_8OsStringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i ], [ %.val13.i.i14.i.i.i.i, %.lr.ph.preheader.i.i.i.i16.i.i.i.i ]
  %22 = add nsw i64 %.sroa.10.035.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %23 = icmp eq ptr %.sroa.014.037.i.i.i.i.i.i.i.i, %21
  br i1 %23, label %.loopexit.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i17.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.014.037.i.i.i.i.i.i.i.i, i64 24
  %i.cn = add nuw nsw i64 %.sroa.7.036.i.i.i.i.i.i.i.i, 1
  %i.co = getelementptr i8, ptr %.sroa.014.037.i.i.i.i.i.i.i.i, i64 8
  %.val12.i.i.i.i.i.i.i.i = load ptr, ptr %i.co, align 8, !alias.scope !926, !noalias !929, !nonnull !5, !noundef !5
  %i.cp = getelementptr i8, ptr %.sroa.014.037.i.i.i.i.i.i.i.i, i64 16
  %.val13.i.i.i.i.i.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !926, !noalias !929, !noundef !5 ; 6 uses
  %i.cq = icmp eq i64 %.val13.i.i.i.i.i.i.i.i, 0
  br i1 %i.cq, label %_RNvXs8_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_8OsStringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !930
  %i.cr = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val13.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #22, !noalias !930 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val13.i.i.i.i.i.i.i.i) #23
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.z, !noalias !927

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 1 %.val12.i.i.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val13.i.i.i.i.i.i.i.i, i1 false), !noalias !931
  br label %_RNvXs8_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_8OsStringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i

_RNvXs8_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_8OsStringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.w
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %bb.y ], [ inttoptr (i64 1 to ptr), %bb.w ]
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.sroa.7.036.i.i.i.i.i.i.i.i ; 3 uses
  store i64 %.val13.i.i.i.i.i.i.i.i, ptr %i.ct, align 8, !noalias !927
  %.sroa.425.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.425.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !927
  %.sroa.526.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 %.val13.i.i.i.i.i.i.i.i, ptr %.sroa.526.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !927
  %i.cu = icmp eq i64 %22, 0
  br i1 %i.cu, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i17.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cv = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.036.i.i.i.i.i.i.i.i, ptr %i.aj, align 8, !noalias !927
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24, !noalias !927
  br label %bb.aa

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvXs8_NtNtCsgczF5crJ4sT_3std3ffi6os_strNtB5_8OsStringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i17.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i.i.i.i.i.i
  store i64 %.val13.i.i14.i.i.i.i, ptr %i.aj, align 8, !noalias !927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !927
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.sroa.7.029.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cx = icmp eq i64 %19, 0
  br i1 %i.cx, label %.loopexit.i.i.i, label %18

bb.aa:                                            ; preds = %bb.z, %bb.t
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cd, %bb.t ], [ %i.cv, %bb.z ]
  store i64 %.sroa.7.029.i.i.i.i.i.i, ptr %i.ah, align 8, !noalias !923
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_NtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEEECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.f) #24, !noalias !923
  br label %.body21.i.i.i.i

bb.ab:                                            ; preds = %bb.s
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body21.i.i.i.i

.body21.i.i.i.i:                                  ; preds = %bb.ab, %bb.aa
  %eh.lpad-body22.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.ab ], [ %eh.lpad-body.i.i.i.i.i.i, %bb.aa ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_NtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueEEECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.h) #24
          to label %.body.i.i.i.i unwind label %bb.ac, !noalias !908

bb.ac:                                            ; preds = %.body21.i.i.i.i
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25, !noalias !908
  unreachable

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.i.i.i, %18, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i19.i.i.i.i
  store i64 %.val8.i.i.i.i, ptr %i.ah, align 8, !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.841.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.841.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !923
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.012.0112.i.i.i, i64 96
  %i.db = load i8, ptr %i.da, align 8, !range !932, !alias.scope !904, !noalias !905, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.740.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !908
  %i.dc = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %.sroa.7.0110.i.i.i ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.0112.i.i.i, i64 24, i1 false), !noalias !933
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store i64 %.val2.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !899
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store ptr %.sroa.6.0.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !899
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store i64 %.val2.i.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !899
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740.i.i.i, i64 24, i1 false), !noalias !899
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.841.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.841.i.i.i, i64 24, i1 false), !noalias !899
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  store i8 %i.db, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !899
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 97
  store i8 %i.ao, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 1, !noalias !899
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.740.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.841.i.i.i)
  %i.dd = icmp eq i64 %9, 0
  br i1 %i.dd, label %_RNvXs7_NtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB5_7FlatMapNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit, label %8

bb.ad:                                            ; preds = %bb.ae
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25, !noalias !899
  unreachable

bb.ae:                                            ; preds = %bb.q, %.body.i.i.i.i, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %.pn.i.i.i.i, %bb.q ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  store i64 %.sroa.7.0110.i.i.i, ptr %i.ad, align 8, !noalias !899
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgEECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.i) #24
          to label %.body.i unwind label %bb.ad, !noalias !899

bb.af:                                            ; preds = %bb.d
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.af, %bb.ae
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.df, %bb.af ], [ %eh.lpad-body.i.i.i, %bb.ae ] ; 2 uses
  br i1 %i.n, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %.body.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i33.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !901
  br label %common.resume

common.resume:                                    ; preds = %.body, %.body.i, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.ag ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXs7_NtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB5_7FlatMapNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit: ; preds = %8, %.loopexit.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i
  %24 = phi ptr [ %i.z, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i ], [ %i.ad, %.loopexit.i.i.i ], [ %i.ad, %8 ]
  store i64 %.val5.i, ptr %24, align 8, !noalias !899
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !899
  store i64 %.val3.i, ptr %i.j, align 8, !alias.scope !892
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.10.0.i33.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !892
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.val3.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !892
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !align !10, !noundef !5 ; 3 uses
  %.not = icmp eq ptr %i.di, null
  br i1 %.not, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %_RNvXs7_NtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB5_7FlatMapNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.dj = tail call noalias noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 80, i64 noundef range(i64 1, 9) 8) #22 ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.ai, label %.noexc, !prof !4

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #23
          to label %.noexc5 unwind label %bb.ao

.noexc5:                                          ; preds = %bb.ai
  unreachable

.noexc:                                           ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !934
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.di)
          to label %.noexc2 unwind label %bb.al, !inline_history !889

.noexc2:                                          ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !934
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  invoke fastcc void @_RNvXsH_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dl)
          to label %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10SubCommandENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit unwind label %bb.aj, !noalias !935, !inline_history !890

bb.aj:                                            ; preds = %.noexc2
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load i64, ptr %i.b, align 8, !noalias !934 ; 2 uses
  %i.dn = icmp eq i64 %.val.i.i, 0
  br i1 %i.dn, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i = load ptr, ptr %i.do, align 8, !noalias !934, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !935
  br label %bb.am

bb.al:                                            ; preds = %.noexc
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.dp, %bb.al ], [ %i.dm, %bb.ak ], [ %i.dm, %bb.aj ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dj, i64 noundef 80, i64 noundef 8) #22, !noalias !936
  br label %.body

_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10SubCommandENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit: ; preds = %.noexc2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !937
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dj, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.an

bb.an:                                            ; preds = %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10SubCommandENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit, %_RNvXs7_NtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB5_7FlatMapNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvXs7_NtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB5_7FlatMapNtNtB7_2id2IdNtNtNtNtB9_6parser7matches11matched_arg10MatchedArgENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit ], [ %i.dj, %_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10SubCommandENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsftBYP88YJaE_11lance_tools.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.0.0, ptr %i.dr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.ao:                                            ; preds = %bb.ai
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %bb.ao
  %eh.lpad-body = phi { ptr, i32 } [ %i.ds, %bb.ao ], [ %eh.lpad-body4, %bb.am ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(48) %i.j) #24
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %.body
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsftBYP88YJaE_11lance_tools(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !939 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXs6_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6SchemaNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtCsftBYP88YJaE_11lance_tools3cliNtB5_13LanceFileArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive4Args12augment_args(ptr dead_on_unwind noalias noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(712) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !950 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [712 x i8], align 8               ; 8 uses
  %i.c = alloca [712 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.b, ptr noundef nonnull align 8 dereferenceable(712) %1, i64 712, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !951
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !951
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.3.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !951
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !alias.scope !951
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !951
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @34, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !alias.scope !951
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 13, ptr %.sroa.0.sroa.11.0..sroa_idx, align 8, !alias.scope !951
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !alias.scope !951
  %.sroa.2.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 89
  store i8 1, ptr %.sroa.2.0..sroa_idx10, align 1, !alias.scope !951
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !953, !noundef !5 ; 3 uses
  %i.g = load i64, ptr %i.d, align 8, !range !7, !alias.scope !953, !noundef !5
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdRkAOB6wJ8u_12clap_builder7builder9arg_group8ArgGroupE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.d unwind label %.body.i, !noalias !954

.body.i:                                          ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdRkAOB6wJ8u_12clap_builder7builder9arg_group8ArgGroupECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.a) #24, !noalias !952
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdRkAOB6wJ8u_12clap_builder7builder7command7CommandECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.b) #24
          to label %.body unwind label %bb.c, !noalias !955

bb.c:                                             ; preds = %.body.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25, !noalias !955
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !953, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !952
  %i.n = add i64 %i.f, 1
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.c, ptr noundef nonnull align 8 dereferenceable(712) %i.b, i64 712, i1 false), !alias.scope !956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXsd_NtCsftBYP88YJaE_11lance_tools3cliNtB5_16LanceFileCommandNtNtCsdRkAOB6wJ8u_12clap_builder6derive10Subcommand19augment_subcommands(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noundef !5
  %i.q = or i32 %i.p, 66048
  store i32 %i.q, ptr %i.o, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.body:                                            ; preds = %.body.i
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtCsftBYP88YJaE_11lance_tools3cliNtB5_13LanceFileArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive4Args23augment_args_for_update(ptr dead_on_unwind noalias noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(712) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !967 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [712 x i8], align 8               ; 8 uses
  %i.c = alloca [712 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.b, ptr noundef nonnull align 8 dereferenceable(712) %1, i64 712, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !968
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !968
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.3.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !968
end_hunk_0
