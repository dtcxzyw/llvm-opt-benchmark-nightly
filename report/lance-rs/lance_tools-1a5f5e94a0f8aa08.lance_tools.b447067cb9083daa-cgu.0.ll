Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-1a5f5e94a0f8aa08.lance_tools.b447067cb9083daa-cgu.0?download=true
inline.NumInlined: 683
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCsdRkAOB6wJ8u_12clap_builder5errorNtB3_5Error3rawReECsftBYP88YJaE_11lance_tools:bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 -1, ptr %i.f, align 8
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i8 -1, ptr %.sroa.027.sroa.5.0..sroa_idx, align 4
  %.sroa.027.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 -1, ptr %.sroa.027.sroa.7.0..sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i16 0, ptr %.sroa.428.0..sroa_idx, align 4
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 134
  store i8 -1, ptr %.sroa.529.0..sroa_idx, align 2
  %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 138
  store i8 -1, ptr %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 142
  store i8 -1, ptr %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i16 0, ptr %.sroa.6.0..sroa_idx30, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i8 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 -1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 -1, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  store i8 -1, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 166
  store i8 -1, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 170
  store i8 -1, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 174
  store i16 0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 -1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i8 -1, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 -1, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.1331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 190
  store i8 -1, ptr %.sroa.1331.0..sroa_idx, align 2
  %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  store i8 -1, ptr %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  store i8 -1, ptr %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 202
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i8 -1, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i8 -1, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store i8 -1, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  store i8 -1, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 222
  store i8 -1, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store i8 -1, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 230
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 -2, ptr %.sroa.19.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 247
  store i8 2, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i8 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 246
  store i8 0, ptr %i.i, align 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !61
  %i.j = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef 8) #22, !noalias !61 ; 11 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, !prof !3

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #23
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdRkAOB6wJ8u_12clap_builder5error10ErrorInnerECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.a) #24
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.u, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.j, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !62
  %i.n = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #22, !noalias !62 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %2) #23
          to label %.noexc64 unwind label %bb.i

.noexc64:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.p = load i64, ptr %i.j, align 8, !range !5, !alias.scope !67, !noalias !65, !noundef !4
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !69, !noalias !65 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.s, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.sink.split.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.sink.split.i.i.i: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val3.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !69, !noalias !65, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !70
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.sink.split.i.i.i, %bb.g, %bb.f
  store i64 0, ptr %i.j, align 8, !alias.scope !64, !noalias !65
  %.sroa.5.0..sroa.0.0.3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa.0.0.3.sroa_idx.i, align 8, !alias.scope !71
  %.sroa.4.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.n, ptr %.sroa.4.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !71
  %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !71
  ret ptr %i.j

bb.i:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdRkAOB6wJ8u_12clap_builder5error5ErrorECsftBYP88YJaE_11lance_tools(ptr %i.j) #24
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.628.i.sroa.8 = alloca [16 x i8], align 8 ; 11 uses
  %.sroa.6.i.i.i = alloca [96 x i8], align 8      ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [104 x i8], align 16              ; 15 uses
  %i.h = alloca [104 x i8], align 8               ; 5 uses
  %i.i = alloca [16 x i8], align 16               ; 6 uses
  %i.j = alloca [104 x i8], align 8               ; 13 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 4 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  %.sroa.76.sroa.5 = alloca [16 x i8], align 8    ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.l = alloca [104 x i8], align 8               ; 8 uses
  %.sroa.10 = alloca [16 x i8], align 8           ; 4 uses
  %.sroa.12 = alloca [56 x i8], align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !202, !noalias !203, !nonnull !4, !noundef !4 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !202, !noalias !203, !noundef !4 ; 8 uses
  %.idx.i.i = shl nuw nsw i64 %i.p, 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.backedge.i.i.i
  %i.s = phi ptr [ %i.u, %.backedge.i.i.i ], [ %i.n, %bb.a ] ; 3 uses
  %i.t = phi i64 [ %i.ah, %.backedge.i.i.i ], [ 0, %bb.a ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %.val9.i.i.i = load i64, ptr %i.v, align 8, !noalias !204, !noundef !4
  %i.w = icmp eq i64 %.val9.i.i.i, 6
  br i1 %i.w, label %_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i.i, label %.backedge.i.i.i

_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %.val8.i.i.i = load ptr, ptr %i.s, align 8, !noalias !204, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = load i32, ptr %.val8.i.i.i, align 1
  %i.y = xor i32 %i.x, 1920298867
  %i.z = getelementptr i8, ptr %.val8.i.i.i, i64 4
  %i.aa = load i16, ptr %i.z, align 1
  %i.ab = zext i16 %i.aa to i32
  %i.ac = xor i32 %i.ab, 25955
  %i.ad = or i32 %i.y, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %bcmp.i.fr.i.i.i.i.i.i = freeze i32 %i.af
  %i.ag = icmp eq i32 %bcmp.i.fr.i.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.b, label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ah = add nuw nsw i64 %i.t, 1
  %i.ai = icmp eq ptr %i.u, %i.q
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.aj = icmp ult i64 %i.p, 576460752303423488
  tail call void @llvm.assume(i1 %i.aj)
  %.not.i.i.i.i = icmp samesign ult i64 %i.t, %i.p
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdE6removeCsftBYP88YJaE_11lance_tools.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvMs_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.t, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !noalias !207
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdE6removeCsftBYP88YJaE_11lance_tools.exit.i.i: ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.t ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !208, !nonnull !4, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noalias !208, !noundef !4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = xor i64 %i.t, -1                        ; 2 uses
  %i.aq = add nsw i64 %i.p, %i.ap
  %i.ar = shl nuw nsw i64 %i.aq, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.ao, i64 %i.ar, i1 false), !noalias !208
  %i.as = add nsw i64 %i.p, -1                    ; 5 uses
  store i64 %i.as, ptr %i.o, align 8, !alias.scope !209, !noalias !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !212, !noalias !213, !noundef !4 ; 5 uses
  %i.av = icmp ult i64 %i.au, 88686269585142076
  tail call void @llvm.assume(i1 %i.av)
  %.not.i.i9.i.i = icmp samesign ult i64 %i.t, %i.au
  br i1 %.not.i.i9.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCsftBYP88YJaE_11lance_tools.exit.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCsftBYP88YJaE_11lance_tools.exit.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdE6removeCsftBYP88YJaE_11lance_tools.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !212, !noalias !213, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw [104 x i8], ptr %i.ax, i64 %i.t ; 4 uses
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.ay, align 8, !noalias !214 ; 4 uses
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx2.i.i.i, i64 96, i1 false), !noalias !214
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.ba = add nsw i64 %i.au, %i.ap
  %i.bb = mul nuw nsw i64 %i.ba, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.az, i64 %i.bb, i1 false), !noalias !215
  %i.bc = add nsw i64 %i.au, -1                   ; 4 uses
  store i64 %i.bc, ptr %i.at, align 8, !alias.scope !212, !noalias !213
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -1
  br i1 %.not.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i, label %bb.d, !prof !216

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCsftBYP88YJaE_11lance_tools.exit.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdE6removeCsftBYP88YJaE_11lance_tools.exit.i.i
  %i.bd = phi i64 [ %i.au, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdE6removeCsftBYP88YJaE_11lance_tools.exit.i.i ], [ %i.bc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCsftBYP88YJaE_11lance_tools.exit.i.i.i ]
  tail call void @_RNvNvMs_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.t, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !217
  unreachable

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgE10try_removeCsftBYP88YJaE_11lance_tools.exit.i.i.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.i.i.i, i64 96, i1 false), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %i.j, align 8, !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !218
  store i128 104096430793012679123289265580101921712, ptr %i.f, align 16, !noalias !218
  invoke void @_RNvMNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.t, !noalias !218

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !218
  %.sroa.04.0.copyload.i = load i128, ptr %i.i, align 16, !noalias !218
  %i.be = icmp eq i128 %.sroa.04.0.copyload.i, 104096430793012679123289265580101921712
  br i1 %i.be, label %_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false), !noalias !218
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %.idx.i11.i = shl nuw nsw i64 %i.as, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i11.i
  %i.bg = icmp eq i64 %i.as, 0
  br i1 %i.bg, label %_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.backedge.i.i
  %.sroa.8.024.i.i = phi i64 [ %i.bi, %_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.backedge.i.i ], [ 0, %bb.f ] ; 4 uses
  %.sroa.012.023.i.i = phi ptr [ %i.bh, %_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.backedge.i.i ], [ %i.n, %bb.f ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 16 ; 2 uses
  %i.bi = add nuw nsw i64 %.sroa.8.024.i.i, 1
  %i.bj = getelementptr i8, ptr %.sroa.012.023.i.i, i64 8
  %.val9.i.i = load i64, ptr %i.bj, align 8, !noalias !222, !noundef !4
  %i.bk = icmp eq i64 %.val9.i.i, %i.an
  br i1 %i.bk, label %.split.i.i, label %_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val.i.i = load ptr, ptr %.sroa.012.023.i.i, align 8, !noalias !222, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %i.al, i64 %i.an), !noalias !223
  %i.bl = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bl, label %bb.n, label %_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.backedge.i.i

_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %i.bm = icmp eq ptr %i.bh, %i.bf
  br i1 %i.bm, label %_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit._crit_edge.i.i, label %.lr.ph.i.i

_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit._crit_edge.i.i: ; preds = %_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.backedge.i.i, %bb.f
  %i.bn = load i64, ptr %1, align 8, !range !6, !alias.scope !224, !noalias !225, !noundef !4
  %i.bo = icmp eq i64 %i.as, %i.bn
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit._crit_edge.i.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %._crit_edge.i.i unwind label %bb.l, !noalias !226

._crit_edge.i.i:                                  ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.m, align 8, !alias.scope !224, !noalias !225
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit._crit_edge.i.i
  %i.bp = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.n, %_RNvXsm_NtNtCsdRkAOB6wJ8u_12clap_builder4util2idNtB5_2IdNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit._crit_edge.i.i ]
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.as ; 2 uses
  store ptr %i.al, ptr %i.bq, align 8, !noalias !225
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.an, ptr %i.br, align 8, !noalias !227
  store i64 %i.p, ptr %i.o, align 8, !alias.scope !224, !noalias !225
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bt = load i64, ptr %i.at, align 8, !alias.scope !228, !noalias !229, !noundef !4 ; 3 uses
  %i.bu = load i64, ptr %i.bs, align 8, !range !6, !alias.scope !228, !noalias !229, !noundef !4
  %i.bv = icmp eq i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.i, label %_RNvMNtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCsftBYP88YJaE_11lance_tools.exit.thread.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RNvMNtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCsftBYP88YJaE_11lance_tools.exit.thread.i unwind label %bb.j, !noalias !230

bb.j:                                             ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.g) #24
          to label %common.resume unwind label %bb.k, !noalias !231

bb.k:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25, !noalias !230
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.j) #24
          to label %common.resume unwind label %bb.m, !noalias !232

bb.m:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25, !noalias !226
  unreachable

_RNvMNtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCsftBYP88YJaE_11lance_tools.exit.thread.i: ; preds = %bb.i, %bb.h
  %i.ca = load ptr, ptr %i.aw, align 8, !alias.scope !228, !noalias !229, !nonnull !4, !noundef !4
  %i.cb = getelementptr inbounds nuw [104 x i8], ptr %i.ca, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cb, ptr noundef nonnull align 16 dereferenceable(104) %i.g, i64 104, i1 false), !noalias !231
  %i.cc = add i64 %i.bt, 1
  store i64 %i.cc, ptr %i.at, align 8, !alias.scope !228, !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !218
  br label %_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.thread21

bb.n:                                             ; preds = %.split.i.i
  %i.cd = icmp ult i64 %.sroa.8.024.i.i, %i.bc
  br i1 %i.cd, label %_RNvMNtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCsftBYP88YJaE_11lance_tools.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.024.i.i, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
          to label %bb.p unwind label %bb.q, !noalias !222

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.j) #24
          to label %common.resume unwind label %bb.r, !noalias !218

bb.r:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25, !noalias !222
  unreachable

_RNvMNtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCsftBYP88YJaE_11lance_tools.exit.i: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw [104 x i8], ptr %i.ax, i64 %.sroa.8.024.i.i ; 8 uses
  %i.ch = load <2 x i64>, ptr %i.g, align 16, !alias.scope !233, !noalias !234
  %i.ci = load <2 x i64>, ptr %i.cg, align 1, !alias.scope !235, !noalias !222
  store <2 x i64> %i.ch, ptr %i.cg, align 1, !alias.scope !235, !noalias !222
  store <2 x i64> %i.ci, ptr %i.g, align 16, !alias.scope !233, !noalias !234
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.cl = load <2 x i64>, ptr %i.ck, align 16, !alias.scope !236, !noalias !234
  %i.cm = load <2 x i64>, ptr %i.cj, align 1, !alias.scope !237, !noalias !222
  store <2 x i64> %i.cl, ptr %i.cj, align 1, !alias.scope !237, !noalias !222
  store <2 x i64> %i.cm, ptr %i.ck, align 16, !alias.scope !236, !noalias !234
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.cp = load <2 x i64>, ptr %i.co, align 16, !alias.scope !238, !noalias !234
  %i.cq = load <2 x i64>, ptr %i.cn, align 1, !alias.scope !239, !noalias !222
  store <2 x i64> %i.cp, ptr %i.cn, align 1, !alias.scope !239, !noalias !222
  store <2 x i64> %i.cq, ptr %i.co, align 16, !alias.scope !238, !noalias !234
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.ct = load <2 x i64>, ptr %i.cs, align 16, !alias.scope !240, !noalias !234
  %i.cu = load <2 x i64>, ptr %i.cr, align 1, !alias.scope !241, !noalias !222
  store <2 x i64> %i.ct, ptr %i.cr, align 1, !alias.scope !241, !noalias !222
  store <2 x i64> %i.cu, ptr %i.cs, align 16, !alias.scope !240, !noalias !234
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.cx = load <2 x i64>, ptr %i.cw, align 16, !alias.scope !242, !noalias !234
  %i.cy = load <2 x i64>, ptr %i.cv, align 1, !alias.scope !243, !noalias !222
  store <2 x i64> %i.cx, ptr %i.cv, align 1, !alias.scope !243, !noalias !222
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !alias.scope !242, !noalias !234
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 80 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.db = load <2 x i64>, ptr %i.da, align 16, !alias.scope !244, !noalias !234
  %i.dc = load <2 x i64>, ptr %i.cz, align 1, !alias.scope !245, !noalias !222
  store <2 x i64> %i.db, ptr %i.cz, align 1, !alias.scope !245, !noalias !222
  store <2 x i64> %i.dc, ptr %i.da, align 16, !alias.scope !244, !noalias !234
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 96 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %.sroa.0.0.copyload.i.12.i.i.i.i.i.i = load i64, ptr %i.dd, align 1, !alias.scope !246, !noalias !248
  %.sroa.02.0.copyload.i.12.i.i.i.i.i.i = load i64, ptr %i.de, align 16, !alias.scope !249, !noalias !250
  store i64 %.sroa.02.0.copyload.i.12.i.i.i.i.i.i, ptr %i.dd, align 1, !alias.scope !246, !noalias !248
  store i64 %.sroa.0.0.copyload.i.12.i.i.i.i.i.i, ptr %i.de, align 16, !alias.scope !249, !noalias !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 16 dereferenceable(104) %i.g, i64 104, i1 false), !alias.scope !251, !noalias !252
  %.pr.i = load i64, ptr %i.h, align 8, !alias.scope !253, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !218
  %i.df = icmp eq i64 %.pr.i, -1
  br i1 %i.df, label %_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.thread21, label %bb.s

bb.s:                                             ; preds = %_RNvMNtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCsftBYP88YJaE_11lance_tools.exit.i
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.h), !noalias !218
  br label %_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.thread21

_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.thread21: ; preds = %_RNvMNtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCsftBYP88YJaE_11lance_tools.exit.thread.i, %_RNvMNtNtCsdRkAOB6wJ8u_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCsftBYP88YJaE_11lance_tools.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !218
  br label %bb.v

common.resume:                                    ; preds = %.body, %bb.j, %bb.l, %bb.q, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.by, %bb.l ], [ %i.bw, %bb.j ], [ %i.dg, %bb.t ], [ %i.ce, %bb.q ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.d
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_arg10MatchedArgECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(104) %i.j) #24
          to label %common.resume unwind label %bb.u, !noalias !218

bb.u:                                             ; preds = %bb.t
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25, !noalias !218
  unreachable

_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit: ; preds = %bb.e
  %.sroa.7.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !200 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.11.0.copyload = load i128, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !200 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !218
  %i.di = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -2
  br i1 %i.di, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.thread21, %_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit
  %.sroa.7.026 = phi i64 [ 0, %_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.thread21 ], [ %.sroa.7.0.copyload, %_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit ]
  %.sroa.11.025 = phi i128 [ 104096430793012679123289265580101921712, %_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.thread21 ], [ %.sroa.11.0.copyload, %_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  store i64 %.sroa.7.026, ptr %0, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i128 %.sroa.11.025, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.ay

bb.w:                                             ; preds = %_RINvMs1_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches16try_remove_arg_tNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %i.l, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.3.0..sroa_idx2, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i128 %.sroa.11.0.copyload, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.76.sroa.5)
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 12 uses
  %.promoted.i = load ptr, ptr %i.dj, align 8, !alias.scope !254, !noalias !255 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 6 uses
  %i.dm = load ptr, ptr %i.k, align 8, !alias.scope !254, !noalias !255
  %.fr.i = freeze ptr %i.dm
  %.not.i2.i = icmp eq ptr %.fr.i, null
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !254, !noalias !255, !nonnull !4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.621.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %.promoted48.i = load ptr, ptr %i.dk, align 8, !alias.scope !254, !noalias !255 ; 2 uses
  %.promoted49.i = load ptr, ptr %i.dl, align 8, !alias.scope !254, !noalias !255 ; 10 uses
  br i1 %.not.i2.i, label %.split.us.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.w
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsftBYP88YJaE_11lance_tools:bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.k = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #22
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge14 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge14, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsftBYP88YJaE_11lance_tools4util14path_to_parent(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMNtCs3PfUT229lOd_12object_store4pathNtB2_4Path5parts(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !645
  call void @_RNvXs4_NtNtCs3PfUT229lOd_12object_store4path5partsNtB5_9PathPartsNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.i), !noalias !644
  %i.l = load i64, ptr %i.e, align 8, !range !11, !noalias !645, !noundef !4 ; 4 uses
  %.not.i = icmp eq i64 %i.l, -2
  br i1 %.not.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit.thread, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit.thread: ; preds = %bb.a
  store i64 0, ptr %i.j, align 8, !alias.scope !644, !noalias !646
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !alias.scope !644, !noalias !646
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.n, align 8, !alias.scope !644, !noalias !646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.j

bb.b:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = icmp sgt i64 %i.l, 0
  br i1 %i.p, label %bb.c, label %common.resume

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !644
  br label %common.resume

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !645 ; 3 uses
  %.sroa.6.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx12.i, align 8, !noalias !645
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !647
  %i.q = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, 9) 8) #22, !noalias !647 ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #23
          to label %.noexc.i unwind label %bb.b, !noalias !644

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.l, ptr %i.q, align 8, !noalias !644
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !644
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !644
  store i64 4, ptr %i.f, align 8, !noalias !645
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !645
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !644
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !650
  invoke void @_RNvXs4_NtNtCs3PfUT229lOd_12object_store4path5partsNtB5_9PathPartsNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !644

.noexc7.i:                                        ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !range !11, !noalias !650, !noundef !4 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.s, -2
  br i1 %.not15.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc7.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.noexc8.i, %.lr.ph.i.i.i
  %i.t = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.z, %.noexc8.i ]
  %i.u = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.ab, %.noexc8.i ] ; 5 uses
  %i.v = phi i64 [ %i.s, %.lr.ph.i.i.i ], [ %i.ac, %.noexc8.i ] ; 3 uses
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !650 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !650
  %i.w = icmp samesign ult i64 %i.u, 384307168202282326
  call void @llvm.assume(i1 %i.w)
  %i.x = load i64, ptr %i.f, align 8, !range !6, !alias.scope !651, !noalias !652, !noundef !4
  %i.y = icmp eq i64 %i.u, %i.x
  br i1 %i.y, label %bb.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i_crit_edge.i, %bb.f
  %i.z = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i_crit_edge.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.u ; 3 uses
  store i64 %i.v, ptr %i.aa, align 8, !noalias !653
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !653
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !653
  %i.ab = add nuw nsw i64 %i.u, 1                 ; 2 uses
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !651, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !650
  invoke void @_RNvXs4_NtNtCs3PfUT229lOd_12object_store4path5partsNtB5_9PathPartsNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %.noexc8.i unwind label %.loopexit.i, !noalias !644

.noexc8.i:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i.i
  %i.ac = load i64, ptr %i.c, align 8, !range !11, !noalias !650, !noundef !4 ; 2 uses
  %.not.i.i6.i = icmp eq i64 %i.ac, -2
  br i1 %.not.i.i6.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit, label %bb.f

bb.g:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp sgt i64 %i.v, 0
  br i1 %i.ae, label %bb.h, label %.body.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !653
  br label %.body.i

bb.i:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.u, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i_crit_edge.i unwind label %bb.g, !noalias !644

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i_crit_edge.i: ; preds = %bb.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !651, !noalias !652
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE7reserveCsftBYP88YJaE_11lance_tools.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.f) #24, !noalias !644
  br label %common.resume

common.resume:                                    ; preds = %.body28.thread, %.body28, %bb.ai, %bb.b, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.c ], [ %eh.lpad-body.i, %.body.i ], [ %i.o, %bb.b ], [ %.pn.ph, %bb.ai ], [ %i.cn, %.body28.thread ], [ %i.cn, %.body28 ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit: ; preds = %.noexc8.i, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !646
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.af = icmp ult i64 %.pre, 384307168202282326
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %.pre, 0
  br i1 %i.ag, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit.thread, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %i.g, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_7Display3fmtCsftBYP88YJaE_11lance_tools, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @14, ptr noundef nonnull %i.g)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsftBYP88YJaE_11lance_tools.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsftBYP88YJaE_11lance_tools.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %.sroa.06.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !655, !noalias !656 ; 3 uses
  %.sroa.4.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i18, align 8, !alias.scope !655, !noalias !656 ; 3 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !655, !noalias !656
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !657
  %i.ai = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #22, !noalias !657 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.l, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsftBYP88YJaE_11lance_tools.exit.i, !prof !3

bb.l:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsftBYP88YJaE_11lance_tools.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc.i19 unwind label %bb.m, !noalias !658

.noexc.i19:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = icmp eq i64 %.sroa.06.0.copyload.i, 0
  br i1 %i.al, label %bb.ai, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.06.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !659
  br label %bb.ai

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsftBYP88YJaE_11lance_tools.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsftBYP88YJaE_11lance_tools.exit
  store i64 %.sroa.06.0.copyload.i, ptr %i.ai, align 8, !noalias !658
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !658
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !658
  store i8 0, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @10, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @16, ptr %.sroa.6.0..sroa_idx31, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %.val2.i = load i64, ptr %i.j, align 8, !range !6, !alias.scope !660, !noundef !4 ; 2 uses
  %i.am = icmp eq i64 %.val2.i, 0
  br i1 %i.am, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools.exit, label %bb.o

bb.o:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsftBYP88YJaE_11lance_tools.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.an, align 8, !alias.scope !660, !nonnull !4, !noundef !4
  %i.ao = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !660
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools.exit: ; preds = %bb.o, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsftBYP88YJaE_11lance_tools.exit.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.p:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEINtB2_18SpecFromIterNestedB11_NtB13_9PathPartsE9from_iterCsftBYP88YJaE_11lance_tools.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aq = add nsw i64 %.pre, -1                   ; 5 uses
  store i64 %i.aq, ptr %i.ap, align 8
  %i.ar = load i64, ptr %i.j, align 8, !range !6, !noundef !4 ; 3 uses
  %i.as = icmp samesign ult i64 %i.aq, %i.ar
  call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.aq ; 3 uses
  %.sroa.053.0.copyload = load i64, ptr %i.av, align 8 ; 4 uses
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.454.0.copyload = load ptr, ptr %.sroa.454.0..sroa_idx, align 8 ; 5 uses
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.555.0.copyload = load i64, ptr %.sroa.555.0..sroa_idx, align 8 ; 8 uses
  %.not.i21 = icmp slt i64 %.sroa.555.0.copyload, 0
  br i1 %.not.i21, label %bb.u, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.aw = icmp eq i64 %.sroa.555.0.copyload, 0    ; 2 uses
  br i1 %i.aw, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsftBYP88YJaE_11lance_tools.exit.thread70, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.q
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !661
  %i.ax = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.555.0.copyload, i64 noundef range(i64 1, 9) 1) #22, !noalias !661 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.u, label %bb.w

bb.r:                                             ; preds = %bb.u
  unreachable

bb.s:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i.i = add i64 %.sroa.053.0.copyload, -1
  %switch.i.i = icmp ult i64 %.0.val.off.i.i, -2
  br i1 %switch.i.i, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.454.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.454.0.copyload, i64 noundef %.sroa.053.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %bb.ai

bb.u:                                             ; preds = %bb.p, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i
  %.sroa.457.0.ph = phi i64 [ 1, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.p ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.457.0.ph, i64 %.sroa.555.0.copyload) #23
          to label %bb.r unwind label %bb.s

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsftBYP88YJaE_11lance_tools.exit.thread70: ; preds = %bb.q, %bb.w
  %i.ba = phi ptr [ %i.ax, %bb.w ], [ inttoptr (i64 1 to ptr), %bb.q ] ; 2 uses
  %.0.val.off.i.i22 = add i64 %.sroa.053.0.copyload, -1
  %switch.i.i23 = icmp ult i64 %.0.val.off.i.i22, -2
  br i1 %switch.i.i23, label %bb.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24

bb.v:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsftBYP88YJaE_11lance_tools.exit.thread70
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.454.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.454.0.copyload, i64 noundef %.sroa.053.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24

bb.w:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %.sroa.454.0.copyload, i64 %.sroa.555.0.copyload, i1 false)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsftBYP88YJaE_11lance_tools.exit.thread70

.body28:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit14.i.i, %bb.ah
  br i1 %i.aw, label %common.resume, label %.body28.thread

.body28.thread:                                   ; preds = %.body28
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %.sroa.555.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24: ; preds = %bb.v, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsftBYP88YJaE_11lance_tools.exit.thread70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @11, i64 24, i1 false), !noalias !662
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %.idx.i.i = mul nuw nsw i64 %i.aq, 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !664
  store ptr %i.au, ptr %i.a, align 8, !noalias !664
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ar, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !664
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bb, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !664
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.thread.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit14.i.i: ; preds = %bb.ag, %bb.af
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartEECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(32) %i.a) #24, !noalias !664
  %.val.i25 = load i64, ptr %i.b, align 8, !noalias !662 ; 2 uses
  %i.bf = icmp eq i64 %.val.i25, 0
  br i1 %i.bf, label %.body28, label %bb.ah

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i
  %i.bg = phi ptr [ inttoptr (i64 1 to ptr), %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i ], [ %i.by, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i ] ; 2 uses
  %i.bh = phi i64 [ 0, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i ], [ %i.bz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i ] ; 7 uses
  %i.bi = phi ptr [ %i.au, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.lr.ph.i.i ], [ %i.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  %.sroa.015.0.copyload16.i.i = load i64, ptr %i.bi, align 8, !noalias !665 ; 5 uses
  %.sroa.7.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx17.i.i, align 8, !noalias !665 ; 5 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx17.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx17.sroa_idx.i.i, align 8, !noalias !665 ; 5 uses
  %.not.i.i = icmp eq i64 %.sroa.015.0.copyload16.i.i, -2
  br i1 %.not.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.thread.i.i, label %bb.y

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24
  %i.bk = phi ptr [ %i.au, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit24 ], [ %i.bj, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.i.i ] ; 3 uses
  %i.bl = ptrtoint ptr %i.bb to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub nuw i64 %i.bl, %i.bm
  %i.bo = udiv exact i64 %i.bn, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.bp = icmp eq ptr %i.bb, %i.bk
  br i1 %i.bp, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.thread.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i = phi i64 [ %i.br, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.thread.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.0.013.i.i.i.i.i ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.0.013.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.bq, align 8, !range !10, !alias.scope !666, !noalias !667, !noundef !4 ; 2 uses
  %i.bs = icmp sgt i64 %.val8.i.i.i.i.i, 0
  br i1 %i.bs, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !666, !noalias !667, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !668
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i.i
  %i.bu = icmp eq i64 %i.br, %i.bo
  br i1 %i.bu, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.y:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsftBYP88YJaE_11lance_tools.exit.i.i
  %i.bv = icmp eq i64 %.sroa.7.sroa.5.0.copyload.i.i, 0
  br i1 %i.bv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp eq i64 %i.bh, 0
  %.pre39.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !663, !noalias !669 ; 3 uses
  br i1 %i.bx, label %bb.ae, label %bb.ac

bb.aa:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i, %bb.y
  %i.by = phi ptr [ %i.ck, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i ], [ %i.bg, %bb.y ]
  %i.bz = phi i64 [ %i.cm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i ], [ %i.bh, %bb.y ]
  %.0.val.off.i.i.i.i = add i64 %.sroa.015.0.copyload16.i.i, -1
  %switch.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i, -2
  br i1 %switch.i.i.i.i, label %bb.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i, i64 noundef %.sroa.015.0.copyload16.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !664
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECsftBYP88YJaE_11lance_tools.exit.i.i

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.ca = icmp eq i64 %.pre39.i.i, %i.bh
  br i1 %i.ca, label %bb.ad, label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i, !prof !3

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bh, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %._RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit_crit_edge.i.i unwind label %bb.af, !noalias !669

._RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit_crit_edge.i.i: ; preds = %bb.ad
  %.pre.pre.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !671, !noalias !669
  %.pre.i27 = load ptr, ptr %i.be, align 8, !alias.scope !672, !noalias !669
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i: ; preds = %._RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit_crit_edge.i.i, %bb.ac
  %i.cb = phi ptr [ %.pre.i27, %._RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit_crit_edge.i.i ], [ %i.bg, %bb.ac ]
  %.pre.i.i = phi i64 [ %.pre.pre.i.i, %._RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit_crit_edge.i.i ], [ %.pre39.i.i, %bb.ac ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bh
  store i8 47, ptr %i.cc, align 1, !noalias !673
  %i.cd = add nuw i64 %i.bh, 1                    ; 2 uses
  store i64 %i.cd, ptr %i.bd, align 8, !alias.scope !672, !noalias !669
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i, %bb.z
  %i.ce = phi i64 [ %.pre.i.i, %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i ], [ %.pre39.i.i, %bb.z ]
  %i.cf = phi i64 [ %i.cd, %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit.i.i ], [ 0, %bb.z ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp ugt i64 %.sroa.7.sroa.5.0.copyload.i.i, %i.cg
  br i1 %i.ch, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i, !prof !3

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i: ; preds = %bb.ae
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cf, i64 noundef %.sroa.7.sroa.5.0.copyload.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc11.i.i unwind label %bb.af, !noalias !669

.noexc11.i.i:                                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i
  %i.ci = load i64, ptr %i.bd, align 8, !alias.scope !675, !noalias !669, !noundef !4
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsftBYP88YJaE_11lance_tools.exit.i.i: ; preds = %.noexc11.i.i, %bb.ae
  %.sink51.i.i = phi i64 [ %i.ci, %.noexc11.i.i ], [ %i.cf, %bb.ae ] ; 3 uses
  %i.cj = icmp sgt i64 %.sink51.i.i, -1
  call void @llvm.assume(i1 %i.cj)
  %i.ck = load ptr, ptr %i.be, align 8, !alias.scope !675, !noalias !669, !nonnull !4, !noundef !4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink51.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull readonly align 1 %.sroa.7.sroa.0.0.copyload.i.i, i64 %.sroa.7.sroa.5.0.copyload.i.i, i1 false), !noalias !676
  %i.cm = add i64 %.sink51.i.i, %.sroa.7.sroa.5.0.copyload.i.i ; 2 uses
  store i64 %i.cm, ptr %i.bd, align 8, !alias.scope !675, !noalias !669
  br label %bb.aa

bb.af:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsftBYP88YJaE_11lance_tools.exit.thread.i.i.i, %bb.ad
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
