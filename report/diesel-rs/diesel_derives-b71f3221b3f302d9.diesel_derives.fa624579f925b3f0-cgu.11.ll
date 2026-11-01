Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.11?download=true
inline.NumInlined: 1470
inline.NumDeleted: 539
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvCsluMP4ekZjHw_14diesel_derives17derive_insertable:bb.a
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs1_Csf5uYjtxkodL_11proc_macro2NtB5_11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtCs50gxqRnCXtk_10proc_macro11TokenStreamE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, i32 noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3514
  call fastcc void @_RNvXsh_NtCshMFl0SviwmK_3syn5parseNvYNtNtB7_6derive11DeriveInputNtB5_5Parse5parseNtB5_6Parser6parse2CsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 captures(address) dereferenceable(240) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e), !noalias !3515
  %i.g = load i64, ptr %i.c, align 8, !range !46, !noalias !3514, !noundef !15
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !3514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3514
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(240) %i.c, i64 240, i1 false), !noalias !3514
  call void @_RNvNtCsluMP4ekZjHw_14diesel_derives10insertable6derive(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(240) %i.b), !noalias !3514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3514
  %i.k = load i64, ptr %i.d, align 8, !range !32, !noalias !3514, !noundef !15
  %i.l = icmp eq i64 %i.k, -2
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3514
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !3514
  call void @_RNvMNtCshMFl0SviwmK_3syn5errorNtB2_5Error18into_compile_error(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3514
  br label %_RNvCsluMP4ekZjHw_14diesel_derives23derive_insertable_inner.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !3516
  br label %_RNvCsluMP4ekZjHw_14diesel_derives23derive_insertable_inner.exit

_RNvCsluMP4ekZjHw_14diesel_derives23derive_insertable_inner.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = call noundef i32 @_RNvXs2_Csf5uYjtxkodL_11proc_macro2NtCs50gxqRnCXtk_10proc_macro11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_11TokenStreamE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i32 %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvCsluMP4ekZjHw_14diesel_derives17derive_selectable(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [240 x i8], align 8               ; 4 uses
  %i.d = alloca [240 x i8], align 8               ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs1_Csf5uYjtxkodL_11proc_macro2NtB5_11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtCs50gxqRnCXtk_10proc_macro11TokenStreamE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, i32 noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3523
  call fastcc void @_RNvXsh_NtCshMFl0SviwmK_3syn5parseNvYNtNtB7_6derive11DeriveInputNtB5_5Parse5parseNtB5_6Parser6parse2CsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 captures(address) dereferenceable(240) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f), !noalias !3524
  %i.h = load i64, ptr %i.d, align 8, !range !46, !noalias !3523, !noundef !15
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !3523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3523
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.c, ptr noundef nonnull align 8 dereferenceable(240) %i.d, i64 240, i1 false), !noalias !3523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3525
  store i64 -2, ptr %i.a, align 8, !noalias !3525
  call void @_RNvNtCsluMP4ekZjHw_14diesel_derives10selectable6derive(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(240) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !3523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3523
  %i.l = load i64, ptr %i.e, align 8, !range !32, !noalias !3523, !noundef !15
  %i.m = icmp eq i64 %i.l, -2
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3523
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !3523
  call void @_RNvMNtCshMFl0SviwmK_3syn5errorNtB2_5Error18into_compile_error(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3523
  br label %_RNvCsluMP4ekZjHw_14diesel_derives23derive_selectable_inner.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !3526
  br label %_RNvCsluMP4ekZjHw_14diesel_derives23derive_selectable_inner.exit

_RNvCsluMP4ekZjHw_14diesel_derives23derive_selectable_inner.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.o = call noundef i32 @_RNvXs2_Csf5uYjtxkodL_11proc_macro2NtCs50gxqRnCXtk_10proc_macro11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_11TokenStreamE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i32 %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvCsluMP4ekZjHw_14diesel_derives17sql_function_proc(i32 noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [400 x i8], align 8               ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [400 x i8], align 8               ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs1_Csf5uYjtxkodL_11proc_macro2NtB5_11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtCs50gxqRnCXtk_10proc_macro11TokenStreamE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, i32 noundef %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !3533)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3534
  call void @_RNvXsh_NtCshMFl0SviwmK_3syn5parseNvYNtNtCsluMP4ekZjHw_14diesel_derives12sql_function15SqlFunctionDeclNtB5_5Parse5parseNtB5_6Parser6parse2BC_(ptr noalias noundef nonnull sret([400 x i8]) align 8 captures(address) dereferenceable(400) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f), !noalias !3533
  %i.i = load i64, ptr %i.e, align 8, !range !30, !noalias !3534, !noundef !15
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !3534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !3534
  call void @_RNvMNtCshMFl0SviwmK_3syn5errorNtB2_5Error18into_compile_error(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3534
  br label %_RNvCsluMP4ekZjHw_14diesel_derives23sql_function_proc_inner.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.c, ptr noundef nonnull align 8 dereferenceable(400) %i.e, i64 400, i1 false), !noalias !3534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3536
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !3536
  %i.l = call noundef align 8 dereferenceable_or_null(400) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 400, i64 noundef 8) #20, !noalias !3536 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_RNCNvCsluMP4ekZjHw_14diesel_derives23sql_function_proc_inner0B3_.exit.i, !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 400) #24
          to label %.noexc.i.i unwind label %bb.f, !noalias !3536

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function15SqlFunctionDeclEBF_(ptr noalias noundef nonnull align 8 dereferenceable(400) %i.c) #21
          to label %bb.e unwind label %bb.g, !noalias !3537

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3537
  unreachable

_RNCNvCsluMP4ekZjHw_14diesel_derives23sql_function_proc_inner0B3_.exit.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.l, ptr noundef nonnull align 8 dereferenceable(400) %i.e, i64 400, i1 false), !noalias !3534
  store i64 1, ptr %i.a, align 8, !noalias !3536
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %i.p, align 8, !noalias !3536
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.q, align 8, !noalias !3536
  call void @_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function6expand(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i1 noundef zeroext true, i1 noundef zeroext false), !noalias !3534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3534
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !3534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3534
  store i64 %.sroa.0.0.copyload.i, ptr %i.g, align 8, !alias.scope !3533
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !3535
  br label %_RNvCsluMP4ekZjHw_14diesel_derives23sql_function_proc_inner.exit

_RNvCsluMP4ekZjHw_14diesel_derives23sql_function_proc_inner.exit: ; preds = %bb.b, %_RNCNvCsluMP4ekZjHw_14diesel_derives23sql_function_proc_inner0B3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.r = call noundef i32 @_RNvXs2_Csf5uYjtxkodL_11proc_macro2NtCs50gxqRnCXtk_10proc_macro11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_11TokenStreamE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i32 %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvCsluMP4ekZjHw_14diesel_derives18___diesel_public_if(i32 noundef %0, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 6 uses
  %i.c = alloca [24 x i8], align 16               ; 7 uses
  %i.d = alloca [256 x i8], align 8               ; 8 uses
  %i.e = alloca [256 x i8], align 8               ; 15 uses
  %i.f = alloca [32 x i8], align 8                ; 14 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [240 x i8], align 8               ; 7 uses
  %.sroa.13.i.i = alloca [224 x i8], align 8      ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 16               ; 6 uses
  %i.k = alloca [24 x i8], align 16               ; 7 uses
  %i.l = alloca [240 x i8], align 8               ; 8 uses
  %i.m = alloca [240 x i8], align 8               ; 11 uses
  %i.n = alloca [32 x i8], align 8                ; 14 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [240 x i8], align 8               ; 5 uses
  %i.q = alloca [256 x i8], align 8               ; 7 uses
  %i.r = alloca [24 x i8], align 16               ; 5 uses
  %i.s = alloca [32 x i8], align 16               ; 5 uses
  %i.t = alloca [240 x i8], align 8               ; 10 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.14.i = alloca [208 x i8], align 8        ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [32 x i8], align 16               ; 6 uses
  %i.y = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.y, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvXs1_Csf5uYjtxkodL_11proc_macro2NtB5_11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtCs50gxqRnCXtk_10proc_macro11TokenStreamE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, i32 noundef %0)
          to label %bb.b unwind label %bb.cr

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvXs1_Csf5uYjtxkodL_11proc_macro2NtB5_11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtCs50gxqRnCXtk_10proc_macro11TokenStreamE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, i32 noundef %1)
          to label %bb.c unwind label %bb.cp

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !3648)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !3651
  %i.z = invoke { ptr, i64 } @_RNvMNtCshMFl0SviwmK_3syn6bufferNtB2_11TokenBuffer4new2(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %.noexc.i unwind label %.body.i, !noalias !3649 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3650
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 10 uses
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 12 uses
  store ptr %i.aa, ptr %i.o, align 8, !noalias !3650
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !3650
  invoke void @_RNvNtCshMFl0SviwmK_3syn5parse22tokens_to_parse_buffer(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o)
          to label %bb.e unwind label %bb.d, !noalias !3650

.body.i.i:                                        ; preds = %bb.af, %bb.ae, %bb.ad, %bb.r, %bb.q, %bb.p, %bb.f, %bb.d
  %.pn8.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.f ], [ %i.ar, %bb.p ], [ %i.ad, %bb.d ], [ %i.ar, %bb.r ], [ %i.ar, %bb.q ], [ %i.bs, %bb.af ], [ %i.bs, %bb.ae ], [ %i.bs, %bb.ad ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives(ptr %i.aa, i64 %i.ab) #21
          to label %.body.thread.i unwind label %bb.ak, !noalias !3650

bb.d:                                             ; preds = %bb.ai, %bb.u, %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.e:                                             ; preds = %.noexc.i
  invoke void @_RNvXs_NtCsluMP4ekZjHw_14diesel_derives16diesel_public_ifNtB4_19EntryWithVisibilityNtNtCshMFl0SviwmK_3syn5parse5Parse5parse(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(none) dereferenceable(240) %i.l, ptr noundef nonnull align 8 %i.n)
          to label %_RNvYNvYNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if19EntryWithVisibilityNtNtCshMFl0SviwmK_3syn5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtB1i_11ParseBufferEE9call_onceB9_.exit.i.i unwind label %bb.g, !noalias !3650

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.i.i = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.ai, %bb.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.n) #21
          to label %.body.i.i unwind label %bb.ak, !noalias !3650

bb.g:                                             ; preds = %bb.ab, %bb.w, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RNvYNvYNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if19EntryWithVisibilityNtNtCshMFl0SviwmK_3syn5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtB1i_11ParseBufferEE9call_onceB9_.exit.i.i: ; preds = %bb.e
  %i.af = load i64, ptr %i.l, align 8, !range !46, !alias.scope !3652, !noalias !3650, !noundef !15 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.ag, label %bb.al, label %bb.h

bb.h:                                             ; preds = %_RNvYNvYNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if19EntryWithVisibilityNtNtCshMFl0SviwmK_3syn5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtB1i_11ParseBufferEE9call_onceB9_.exit.i.i
  %.sroa.6.0..sroa_idx30.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.6.0..sroa_idx30.i.i, i64 208, i1 false), !noalias !3650
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !3650
  store i64 %i.af, ptr %i.m, align 8, !noalias !3650
  invoke void @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %i.n)
          to label %bb.j unwind label %bb.i, !noalias !3650

bb.i:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if19EntryWithVisibilityEBF_(ptr noalias noundef align 8 dereferenceable(240) %i.m) #21
          to label %bb.f unwind label %bb.ak, !noalias !3650

bb.j:                                             ; preds = %bb.h
  %i.aj = load i64, ptr %i.k, align 16, !range !31, !alias.scope !3653, !noalias !3650, !noundef !15
  %.not.i.i.i = icmp eq i64 %i.aj, -1
  br i1 %.not.i.i.i, label %bb.k, label %bb.ab

bb.k:                                             ; preds = %bb.j
  %i.ak = invoke { ptr, ptr } @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer6cursor(ptr noundef nonnull align 8 %i.n)
          to label %bb.l unwind label %bb.i, !noalias !3650 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.al = extractvalue { ptr, ptr } %i.ak, 0
  %i.am = extractvalue { ptr, ptr } %i.ak, 1
  %i.an = invoke { i32, i8 } @_RNvNtCshMFl0SviwmK_3syn5parse33span_of_unexpected_ignoring_nones(ptr noundef %i.al, ptr noundef %i.am)
          to label %bb.m unwind label %bb.i, !noalias !3650 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ao = extractvalue { i32, i8 } %i.an, 1       ; 2 uses
  %.not6.not.i.i = icmp eq i8 %i.ao, -1
  br i1 %.not6.not.i.i, label %.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = extractvalue { i32, i8 } %i.an, 0
  invoke void @_RNvNtCshMFl0SviwmK_3syn5parse20err_unexpected_token(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, i32 noundef %i.ap, i8 noundef %i.ao)
          to label %bb.w unwind label %bb.i, !noalias !3650

.thread.i.i:                                      ; preds = %bb.m
  %.sroa.023.0.copyload24.i = load i64, ptr %i.m, align 8, !noalias !3654
  %2 = load <2 x i64>, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !3654
  %.sroa.13.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.13.sroa.9.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx29.i, align 8, !noalias !3654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.3.0..sroa_idx.i.i, i64 208, i1 false), !noalias !3654
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.thread.i.i
  %.sroa.9.2.i = phi i64 [ %.sroa.13.sroa.9.0.copyload.i, %.thread.i.i ], [ %.sroa.13.sroa.9.0.copyload46.i, %bb.w ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ %.sroa.023.0.copyload24.i, %.thread.i.i ], [ -1, %bb.w ] ; 2 uses
  %i.aq = phi <2 x i64> [ %2, %.thread.i.i ], [ %3, %bb.w ] ; 2 uses
  invoke void @_RNvXNtCshMFl0SviwmK_3syn5parseNtB2_11ParseBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.s unwind label %bb.p, !noalias !3650

bb.p:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3655)
  call void @llvm.experimental.noalias.scope.decl(metadata !3656)
  call void @llvm.experimental.noalias.scope.decl(metadata !3657)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !3658, !noalias !3650, !noundef !15 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.body.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = load i64, ptr %i.at, align 8, !noalias !3659, !noundef !15
  %i.aw = add i64 %i.av, -1                       ; 2 uses
  store i64 %i.aw, ptr %i.at, align 8, !noalias !3659
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.r, label %.body.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %.body.i.i unwind label %bb.v, !noalias !3650

bb.s:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3660)
  call void @llvm.experimental.noalias.scope.decl(metadata !3661)
  call void @llvm.experimental.noalias.scope.decl(metadata !3662)
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !3663, !noalias !3650, !noundef !15 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = load i64, ptr %i.az, align 8, !noalias !3664, !noundef !15
  %i.bc = add i64 %i.bb, -1                       ; 2 uses
  store i64 %i.bc, ptr %i.az, align 8, !noalias !3664
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i unwind label %bb.d, !noalias !3650

bb.v:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3650
  unreachable

bb.w:                                             ; preds = %bb.n
  %3 = load <2 x i64>, ptr %i.j, align 16, !noalias !3654
  %.sroa.13.8..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.13.sroa.9.0.copyload46.i = load i64, ptr %.sroa.13.8..sroa_idx30.i, align 16, !noalias !3654
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if19EntryWithVisibilityEBF_(ptr noalias noundef align 8 dereferenceable(240) %i.m)
          to label %bb.o unwind label %bb.g, !noalias !3650

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %cond = icmp eq i64 %i.ab, 0
  br i1 %cond, label %bb.aq, label %.lr.ph

bb.x:                                             ; preds = %.lr.ph
  %i.bf = icmp eq i64 %i.bh, %i.ab
  br i1 %i.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i, %bb.x
  %.sroa.0.0.i.i.i.i.i58 = phi i64 [ %i.bh, %bb.x ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.0.0.i.i.i.i.i58
  %i.bh = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i58, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer5EntryECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.bg)
          to label %bb.x unwind label %bb.z, !noalias !3650

bb.y:                                             ; preds = %.lr.ph60
  %i.bi = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i59, 1 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.ab
  br i1 %i.bj, label %common.resume.sink.split.i.i, label %.lr.ph60

bb.z:                                             ; preds = %.lr.ph
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = icmp eq i64 %i.bh, %i.ab
  br i1 %i.bl, label %common.resume.sink.split.i.i, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.z, %bb.y
  %.sroa.0.1.i.i.i.i.i59 = phi i64 [ %i.bi, %bb.y ], [ %i.bh, %bb.z ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.0.1.i.i.i.i.i59
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer5EntryECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.bm) #21
          to label %bb.y unwind label %bb.aa, !noalias !3650

bb.aa:                                            ; preds = %.lr.ph60
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3650
  unreachable

common.resume.sink.split.i.i:                     ; preds = %bb.y, %bb.an, %bb.z, %bb.ao
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.cm, %bb.ao ], [ %i.bk, %bb.z ], [ %i.cm, %bb.an ], [ %i.bk, %bb.y ]
  %i.bo = shl nuw nsw i64 %i.ab, 5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef %i.bo, i64 noundef 8) #20, !noalias !3650
  br label %.body.thread.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i: ; preds = %bb.x, %bb.am
  %.sroa.9.1.i = phi i64 [ %.sroa.9.0.i, %bb.am ], [ %.sroa.9.2.i, %bb.x ]
  %.sroa.023.1.i = phi i64 [ -1, %bb.am ], [ %.sroa.023.2.i, %bb.x ]
  %i.bp = phi <2 x i64> [ %i.br, %bb.am ], [ %i.aq, %bb.x ]
  %i.bq = shl nuw nsw i64 %i.ab, 5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef %i.bq, i64 noundef 8) #20, !noalias !3650
  br label %bb.aq

bb.ab:                                            ; preds = %bb.j
  %4 = load <2 x i64>, ptr %i.k, align 16, !noalias !3654
  %.sroa.434.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.13.sroa.9.0.copyload48.i = load i64, ptr %.sroa.434.0..sroa_idx35.i.i, align 16, !noalias !3654
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if19EntryWithVisibilityEBF_(ptr noalias noundef align 8 dereferenceable(240) %i.m)
          to label %bb.ac unwind label %bb.g, !noalias !3650

bb.ac:                                            ; preds = %bb.al, %bb.ab
  %.sroa.9.0.i = phi i64 [ %.sroa.13.sroa.9.0.copyload47.i, %bb.al ], [ %.sroa.13.sroa.9.0.copyload48.i, %bb.ab ] ; 2 uses
  %i.br = phi <2 x i64> [ %5, %bb.al ], [ %4, %bb.ab ] ; 2 uses
  invoke void @_RNvXNtCshMFl0SviwmK_3syn5parseNtB2_11ParseBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.ag unwind label %bb.ad, !noalias !3650

bb.ad:                                            ; preds = %bb.ac
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3665)
  call void @llvm.experimental.noalias.scope.decl(metadata !3666)
  call void @llvm.experimental.noalias.scope.decl(metadata !3667)
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !3668, !noalias !3650, !noundef !15 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.body.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = load i64, ptr %i.bu, align 8, !noalias !3669, !noundef !15
  %i.bx = add i64 %i.bw, -1                       ; 2 uses
  store i64 %i.bx, ptr %i.bu, align 8, !noalias !3669
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.af, label %.body.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %.body.i.i unwind label %bb.aj, !noalias !3650

bb.ag:                                            ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3670)
  call void @llvm.experimental.noalias.scope.decl(metadata !3671)
  call void @llvm.experimental.noalias.scope.decl(metadata !3672)
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !3673, !noalias !3650, !noundef !15 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit21.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = load i64, ptr %i.ca, align 8, !noalias !3674, !noundef !15
  %i.cd = add i64 %i.cc, -1                       ; 2 uses
  store i64 %i.cd, ptr %i.ca, align 8, !noalias !3674
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit21.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit21.i.i unwind label %bb.d, !noalias !3650

bb.aj:                                            ; preds = %bb.af
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3650
  unreachable

bb.ak:                                            ; preds = %bb.i, %bb.f, %.body.i.i
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3650
  unreachable

bb.al:                                            ; preds = %_RNvYNvYNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if19EntryWithVisibilityNtNtCshMFl0SviwmK_3syn5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtB1i_11ParseBufferEE9call_onceB9_.exit.i.i
  %5 = load <2 x i64>, ptr %i.ah, align 8, !noalias !3654
  %.sroa.13.8..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.13.sroa.9.0.copyload47.i = load i64, ptr %.sroa.13.8..sroa_idx31.i, align 8, !noalias !3654
  br label %bb.ac

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit21.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %cond73 = icmp eq i64 %i.ab, 0
  br i1 %cond73, label %.thread.i, label %.lr.ph62

bb.am:                                            ; preds = %.lr.ph62
  %i.ch = icmp eq i64 %i.cj, %i.ab
  br i1 %i.ch, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i, label %.lr.ph62

.lr.ph62:                                         ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit21.i.i, %bb.am
  %.sroa.0.0.i.i.i22.i.i61 = phi i64 [ %i.cj, %bb.am ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit21.i.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.0.0.i.i.i22.i.i61
  %i.cj = add nuw nsw i64 %.sroa.0.0.i.i.i22.i.i61, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer5EntryECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.ci)
          to label %bb.am unwind label %bb.ao, !noalias !3650

bb.an:                                            ; preds = %.lr.ph64
  %i.ck = add nuw nsw i64 %.sroa.0.1.i.i.i23.i.i63, 1 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, %i.ab
  br i1 %i.cl, label %common.resume.sink.split.i.i, label %.lr.ph64

bb.ao:                                            ; preds = %.lr.ph62
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = icmp eq i64 %i.cj, %i.ab
  br i1 %i.cn, label %common.resume.sink.split.i.i, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.ao, %bb.an
  %.sroa.0.1.i.i.i23.i.i63 = phi i64 [ %i.ck, %bb.an ], [ %i.cj, %bb.ao ] ; 2 uses
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.0.1.i.i.i23.i.i63
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer5EntryECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.co) #21
          to label %bb.an unwind label %bb.ap, !noalias !3650

bb.ap:                                            ; preds = %.lr.ph64
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3650
  unreachable

.thread.i:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !3675
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvCsluMP4ekZjHw_14diesel_derives24___diesel_public_if_inner0EBF_.exit.i

.body.i:                                          ; preds = %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.aq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i
  %.sroa.9.3.i = phi i64 [ %.sroa.9.2.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i ], [ %.sroa.9.1.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i ] ; 2 uses
  %.sroa.12.256.copyload21.i = phi i64 [ %.sroa.023.2.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i ], [ %.sroa.023.1.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i ] ; 3 uses
  %i.cq = phi <2 x i64> [ %i.aq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i ], [ %i.bp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !3675
  %i.cr = icmp eq i64 %.sroa.12.256.copyload21.i, -1
  br i1 %i.cr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvCsluMP4ekZjHw_14diesel_derives24___diesel_public_if_inner0EBF_.exit.i, label %bb.ar

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvCsluMP4ekZjHw_14diesel_derives24___diesel_public_if_inner0EBF_.exit.i: ; preds = %bb.aq, %.thread.i
  %.sroa.9.383.i = phi i64 [ %.sroa.9.0.i, %.thread.i ], [ %.sroa.9.3.i, %bb.aq ]
  %i.cs = phi <2 x i64> [ %i.br, %.thread.i ], [ %i.cq, %bb.aq ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp11TokenStreamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
  br label %.noexc

bb.ar:                                            ; preds = %bb.aq
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.14.i, i64 208, i1 false), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !3675
  store i64 %.sroa.12.256.copyload21.i, ptr %i.t, align 8, !noalias !3649
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store <2 x i64> %i.cq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3649
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.sroa.9.3.i, ptr %.sroa.534.0..sroa_idx.i, align 8, !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3677
  %i.ct = invoke { ptr, i64 } @_RNvMNtCshMFl0SviwmK_3syn6bufferNtB2_11TokenBuffer4new2(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc.i.i unwind label %.body.thread24.i.i, !noalias !3677 ; 2 uses

.body.thread24.i.i:                               ; preds = %bb.ar
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.noexc.i.i:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3676
  %i.cv = extractvalue { ptr, i64 } %i.ct, 0      ; 10 uses
  %i.cw = extractvalue { ptr, i64 } %i.ct, 1      ; 12 uses
  store ptr %i.cv, ptr %i.g, align 8, !noalias !3676
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !noalias !3676
  invoke void @_RNvNtCshMFl0SviwmK_3syn5parse22tokens_to_parse_buffer(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.at unwind label %bb.as, !noalias !3676

.body.i.i.i:                                      ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.be, %bb.bd, %bb.bc, %.body17.i.i.i, %bb.as
  %.pn8.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body17.i.i.i ], [ %i.dm, %bb.bc ], [ %i.cy, %bb.as ], [ %i.dm, %bb.be ], [ %i.dm, %bb.bd ], [ %i.ez, %bb.cb ], [ %i.ez, %bb.ca ], [ %i.ez, %bb.bz ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives(ptr %i.cv, i64 %i.cw) #21
          to label %.body.thread.i.i unwind label %bb.cg, !noalias !3676

bb.as:                                            ; preds = %bb.ce, %bb.bh, %.noexc.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.at:                                            ; preds = %.noexc.i.i
  invoke void @_RNvXNtCsluMP4ekZjHw_14diesel_derives16diesel_public_ifNtB2_8CfgInputNtNtCshMFl0SviwmK_3syn5parse5Parse5parse(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.d, ptr noundef nonnull align 8 %i.f)
          to label %_RNvYNvYNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputNtNtCshMFl0SviwmK_3syn5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtB16_11ParseBufferEE9call_onceB9_.exit.i.i.i unwind label %bb.au, !noalias !3676

.body17.i.i.i:                                    ; preds = %bb.bw, %bb.bu, %bb.bm, %bb.bk, %bb.aw, %bb.au
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dd, %bb.aw ], [ %i.ea, %bb.bk ], [ %i.cz, %bb.au ], [ %i.ed, %bb.bm ], [ %i.ev, %bb.bw ], [ %i.es, %bb.bu ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.f) #21
          to label %.body.i.i.i unwind label %bb.cg, !noalias !3676

bb.au:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i22.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i, %bb.at
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i.i.i

_RNvYNvYNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputNtNtCshMFl0SviwmK_3syn5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtB16_11ParseBufferEE9call_onceB9_.exit.i.i.i: ; preds = %bb.at
  %i.da = load i64, ptr %i.d, align 8, !range !3678, !alias.scope !3679, !noalias !3676, !noundef !15 ; 2 uses
  %i.db = icmp eq i64 %i.da, -1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.db, label %bb.ch, label %bb.av

bb.av:                                            ; preds = %_RNvYNvYNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputNtNtCshMFl0SviwmK_3syn5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtB16_11ParseBufferEE9call_onceB9_.exit.i.i.i
  %.sroa.6.0..sroa_idx40.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.6.0..sroa_idx40.i.i.i, i64 224, i1 false), !noalias !3676
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false), !noalias !3676
  store i64 %i.da, ptr %i.e, align 8, !noalias !3676
  invoke void @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.f)
          to label %bb.ax unwind label %bb.aw, !noalias !3676

bb.aw:                                            ; preds = %bb.bb, %bb.az, %bb.ay, %bb.av
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputEBF_(ptr noalias noundef align 8 dereferenceable(256) %i.e) #21
          to label %.body17.i.i.i unwind label %bb.cg, !noalias !3676

bb.ax:                                            ; preds = %bb.av
  %i.de = load i64, ptr %i.c, align 16, !range !31, !alias.scope !3680, !noalias !3676, !noundef !15
  %.not.i.i.i.i = icmp eq i64 %i.de, -1
  br i1 %.not.i.i.i.i, label %bb.ay, label %bb.bt

bb.ay:                                            ; preds = %bb.ax
  %i.df = invoke { ptr, ptr } @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer6cursor(ptr noundef nonnull align 8 %i.f)
          to label %bb.az unwind label %bb.aw, !noalias !3676 ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.dg = extractvalue { ptr, ptr } %i.df, 0
  %i.dh = extractvalue { ptr, ptr } %i.df, 1
  %i.di = invoke { i32, i8 } @_RNvNtCshMFl0SviwmK_3syn5parse33span_of_unexpected_ignoring_nones(ptr noundef %i.dg, ptr noundef %i.dh)
          to label %bb.ba unwind label %bb.aw, !noalias !3676 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.dj = extractvalue { i32, i8 } %i.di, 1       ; 2 uses
  %.not6.not.i.i.i = icmp eq i8 %i.dj, -1
  br i1 %.not6.not.i.i.i, label %.thread.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dk = extractvalue { i32, i8 } %i.di, 0
  invoke void @_RNvNtCshMFl0SviwmK_3syn5parse20err_unexpected_token(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.dk, i8 noundef %i.dj)
          to label %bb.bj unwind label %bb.aw, !noalias !3676

.thread.i.i.i:                                    ; preds = %bb.ba
  %.sroa.0.0.copyload3.i.i = load i64, ptr %i.e, align 8, !noalias !3681
  %6 = load <2 x i64>, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !3681
  %.sroa.12.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.12.i.sroa.8.0.copyload63.i = load i64, ptr %.sroa.12.0..sroa_idx8.i.i, align 8, !noalias !3681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.3.0..sroa_idx.i.i.i, i64 224, i1 false), !noalias !3681
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputEBF_.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputEBF_.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i, %.thread.i.i.i
  %.sroa.8.2.i.i = phi i64 [ %.sroa.12.i.sroa.8.0.copyload63.i, %.thread.i.i.i ], [ %.sroa.12.i.sroa.8.0.copyload62.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.0.copyload3.i.i, %.thread.i.i.i ], [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i ] ; 2 uses
  %i.dl = phi <2 x i64> [ %6, %.thread.i.i.i ], [ %7, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i ] ; 2 uses
  invoke void @_RNvXNtCshMFl0SviwmK_3syn5parseNtB2_11ParseBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.bf unwind label %bb.bc, !noalias !3676

bb.bc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputEBF_.exit.i.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3682)
  call void @llvm.experimental.noalias.scope.decl(metadata !3683)
  call void @llvm.experimental.noalias.scope.decl(metadata !3684)
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !3685, !noalias !3676, !noundef !15 ; 3 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.body.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dq = load i64, ptr %i.do, align 8, !noalias !3686, !noundef !15
  %i.dr = add i64 %i.dq, -1                       ; 2 uses
  store i64 %i.dr, ptr %i.do, align 8, !noalias !3686
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.be, label %.body.i.i.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dn)
          to label %.body.i.i.i unwind label %bb.bi, !noalias !3676

bb.bf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputEBF_.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3687)
  call void @llvm.experimental.noalias.scope.decl(metadata !3688)
  call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !3690, !noalias !3676, !noundef !15 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dw = load i64, ptr %i.du, align 8, !noalias !3691, !noundef !15
  %i.dx = add i64 %i.dw, -1                       ; 2 uses
  store i64 %i.dx, ptr %i.du, align 8, !noalias !3691
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.bh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i.i unwind label %bb.as, !noalias !3676

bb.bi:                                            ; preds = %bb.be
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3676
  unreachable

bb.bj:                                            ; preds = %bb.bb
  %7 = load <2 x i64>, ptr %i.b, align 16, !noalias !3681
  %.sroa.12.8..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.i.sroa.8.0.copyload62.i = load i64, ptr %.sroa.12.8..sroa_idx9.i.i, align 16, !noalias !3681
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4attr4MetaECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.e)
          to label %bb.bl unwind label %bb.bk, !noalias !3676

bb.bk:                                            ; preds = %bb.bj
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.eb) #21
          to label %.body17.i.i.i unwind label %bb.bo, !noalias !3676

bb.bl:                                            ; preds = %bb.bj
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 232 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCsf5uYjtxkodL_11proc_macro25IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i unwind label %bb.bm, !noalias !3676

bb.bm:                                            ; preds = %bb.bl
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCsf5uYjtxkodL_11proc_macro25IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %.body17.i.i.i unwind label %bb.bn, !noalias !3676

bb.bn:                                            ; preds = %bb.bm
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3676
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i.i.i.i: ; preds = %bb.bl
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCsf5uYjtxkodL_11proc_macro25IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputEBF_.exit.i.i.i unwind label %bb.au, !noalias !3676

bb.bo:                                            ; preds = %bb.bk
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3676
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %cond74 = icmp eq i64 %i.cw, 0
  br i1 %cond74, label %bb.cm, label %.lr.ph66

bb.bp:                                            ; preds = %.lr.ph66
  %i.eg = icmp eq i64 %i.ei, %i.cw
  br i1 %i.eg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i.i, label %.lr.ph66

.lr.ph66:                                         ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i.i, %bb.bp
  %.sroa.0.0.i.i.i.i.i.i65 = phi i64 [ %i.ei, %bb.bp ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %.sroa.0.0.i.i.i.i.i.i65
  %i.ei = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i65, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer5EntryECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.eh)
          to label %bb.bp unwind label %bb.br, !noalias !3676

bb.bq:                                            ; preds = %.lr.ph68
  %i.ej = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i67, 1 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, %i.cw
  br i1 %i.ek, label %common.resume.sink.split.i.i.i, label %.lr.ph68

bb.br:                                            ; preds = %.lr.ph66
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = icmp eq i64 %i.ei, %i.cw
  br i1 %i.em, label %common.resume.sink.split.i.i.i, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.br, %bb.bq
  %.sroa.0.1.i.i.i.i.i.i67 = phi i64 [ %i.ej, %bb.bq ], [ %i.ei, %bb.br ] ; 2 uses
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %.sroa.0.1.i.i.i.i.i.i67
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer5EntryECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.en) #21
          to label %bb.bq unwind label %bb.bs, !noalias !3676

bb.bs:                                            ; preds = %.lr.ph68
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3676
  unreachable

common.resume.sink.split.i.i.i:                   ; preds = %bb.bq, %bb.cj, %bb.br, %bb.ck
  %common.resume.op.ph.i.i.i = phi { ptr, i32 } [ %i.ft, %bb.ck ], [ %i.el, %bb.br ], [ %i.ft, %bb.cj ], [ %i.el, %bb.bq ]
  %i.ep = shl nuw nsw i64 %i.cw, 5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef %i.ep, i64 noundef 8) #20, !noalias !3676
  br label %.body.thread.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i.i: ; preds = %bb.bp, %bb.ci
  %.sroa.8.1.i.i = phi i64 [ %.sroa.8.0.i.i, %bb.ci ], [ %.sroa.8.2.i.i, %bb.bp ]
  %.sroa.0.1.i.i = phi i64 [ -1, %bb.ci ], [ %.sroa.0.2.i.i, %bb.bp ]
  %i.eq = phi <2 x i64> [ %i.ey, %bb.ci ], [ %i.dl, %bb.bp ]
  %i.er = shl nuw nsw i64 %i.cw, 5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef %i.er, i64 noundef 8) #20, !noalias !3676
  br label %bb.cm

bb.bt:                                            ; preds = %bb.ax
  %8 = load <2 x i64>, ptr %i.c, align 16, !noalias !3681
  %.sroa.444.0..sroa_idx45.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.12.i.sroa.8.0.copyload.i = load i64, ptr %.sroa.444.0..sroa_idx45.i.i.i, align 16, !noalias !3681
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4attr4MetaECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.e)
          to label %bb.bv unwind label %bb.bu, !noalias !3676

bb.bu:                                            ; preds = %bb.bt
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.et) #21
          to label %.body17.i.i.i unwind label %bb.by, !noalias !3676

bb.bv:                                            ; preds = %bb.bt
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 232 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCsf5uYjtxkodL_11proc_macro25IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i22.i.i.i unwind label %bb.bw, !noalias !3676

bb.bw:                                            ; preds = %bb.bv
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCsf5uYjtxkodL_11proc_macro25IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %.body17.i.i.i unwind label %bb.bx, !noalias !3676

bb.bx:                                            ; preds = %bb.bw
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3676
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i22.i.i.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtCsf5uYjtxkodL_11proc_macro25IdentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputEBF_.exit26.i.i.i unwind label %bb.au, !noalias !3676

bb.by:                                            ; preds = %bb.bu
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3676
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputEBF_.exit26.i.i.i: ; preds = %bb.ch, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i22.i.i.i
  %.sroa.8.0.i.i = phi i64 [ %.sroa.12.i.sroa.8.0.copyload64.i, %bb.ch ], [ %.sroa.12.i.sroa.8.0.copyload.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i22.i.i.i ] ; 2 uses
  %i.ey = phi <2 x i64> [ %9, %bb.ch ], [ %8, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit.i22.i.i.i ] ; 2 uses
  invoke void @_RNvXNtCshMFl0SviwmK_3syn5parseNtB2_11ParseBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.cc unwind label %bb.bz, !noalias !3676

bb.bz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputEBF_.exit26.i.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3692)
  call void @llvm.experimental.noalias.scope.decl(metadata !3693)
  call void @llvm.experimental.noalias.scope.decl(metadata !3694)
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !3695, !noalias !3676, !noundef !15 ; 3 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %.body.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fd = load i64, ptr %i.fb, align 8, !noalias !3696, !noundef !15
  %i.fe = add i64 %i.fd, -1                       ; 2 uses
  store i64 %i.fe, ptr %i.fb, align 8, !noalias !3696
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.cb, label %.body.i.i.i

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fa)
          to label %.body.i.i.i unwind label %bb.cf, !noalias !3676

bb.cc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputEBF_.exit26.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3697)
  call void @llvm.experimental.noalias.scope.decl(metadata !3698)
  call void @llvm.experimental.noalias.scope.decl(metadata !3699)
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !3700, !noalias !3676, !noundef !15 ; 3 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit31.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fj = load i64, ptr %i.fh, align 8, !noalias !3701, !noundef !15
  %i.fk = add i64 %i.fj, -1                       ; 2 uses
  store i64 %i.fk, ptr %i.fh, align 8, !noalias !3701
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.ce, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit31.i.i.i

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit31.i.i.i unwind label %bb.as, !noalias !3676

bb.cf:                                            ; preds = %bb.cb
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3676
  unreachable

bb.cg:                                            ; preds = %bb.aw, %.body17.i.i.i, %.body.i.i.i
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3676
  unreachable

bb.ch:                                            ; preds = %_RNvYNvYNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputNtNtCshMFl0SviwmK_3syn5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtB16_11ParseBufferEE9call_onceB9_.exit.i.i.i
  %9 = load <2 x i64>, ptr %i.dc, align 8, !noalias !3681
  %.sroa.12.8..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.12.i.sroa.8.0.copyload64.i = load i64, ptr %.sroa.12.8..sroa_idx10.i.i, align 8, !noalias !3681
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if8CfgInputEBF_.exit26.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit31.i.i.i: ; preds = %bb.ce, %bb.cd, %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %cond75 = icmp eq i64 %i.cw, 0
  br i1 %cond75, label %.thread.i6.i, label %.lr.ph70

bb.ci:                                            ; preds = %.lr.ph70
  %i.fo = icmp eq i64 %i.fq, %i.cw
  br i1 %i.fo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i.i, label %.lr.ph70

.lr.ph70:                                         ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit31.i.i.i, %bb.ci
  %.sroa.0.0.i.i.i32.i.i.i69 = phi i64 [ %i.fq, %bb.ci ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit31.i.i.i ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %.sroa.0.0.i.i.i32.i.i.i69
  %i.fq = add nuw nsw i64 %.sroa.0.0.i.i.i32.i.i.i69, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer5EntryECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.fp)
          to label %bb.ci unwind label %bb.ck, !noalias !3676

bb.cj:                                            ; preds = %.lr.ph72
  %i.fr = add nuw nsw i64 %.sroa.0.1.i.i.i33.i.i.i71, 1 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, %i.cw
  br i1 %i.fs, label %common.resume.sink.split.i.i.i, label %.lr.ph72

bb.ck:                                            ; preds = %.lr.ph70
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = icmp eq i64 %i.fq, %i.cw
  br i1 %i.fu, label %common.resume.sink.split.i.i.i, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.ck, %bb.cj
  %.sroa.0.1.i.i.i33.i.i.i71 = phi i64 [ %i.fr, %bb.cj ], [ %i.fq, %bb.ck ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %.sroa.0.1.i.i.i33.i.i.i71
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer5EntryECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.fv) #21
          to label %bb.cj unwind label %bb.cl, !noalias !3676

bb.cl:                                            ; preds = %.lr.ph72
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3676
  unreachable

.thread.i6.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit31.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.h, ptr noundef nonnull align 8 dereferenceable(240) %i.t, i64 240, i1 false), !noalias !3702
  br label %.thread84.i

bb.cm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i.i
  %.sroa.8.3.i.i = phi i64 [ %.sroa.8.1.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i.i ], [ %.sroa.8.2.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i.i ] ; 2 uses
  %.sroa.0.3.i.i = phi i64 [ %.sroa.0.1.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i.i ], [ %.sroa.0.2.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i.i ] ; 2 uses
  %i.fx = phi <2 x i64> [ %i.eq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn6buffer11TokenBufferECsluMP4ekZjHw_14diesel_derives.exit.sink.split.i.i.i ], [ %i.dl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.h, ptr noundef nonnull align 8 dereferenceable(240) %i.t, i64 240, i1 false), !noalias !3702
  %i.fy = icmp eq i64 %.sroa.0.3.i.i, -1
  br i1 %i.fy, label %.thread84.i, label %.noexc6

.thread84.i:                                      ; preds = %bb.cm, %.thread.i6.i
  %.sroa.8.328.i.i = phi i64 [ %.sroa.8.0.i.i, %.thread.i6.i ], [ %.sroa.8.3.i.i, %bb.cm ]
  %i.fz = phi <2 x i64> [ %i.ey, %.thread.i6.i ], [ %i.fx, %bb.cm ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if19EntryWithVisibilityEBF_(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3649
  br label %.noexc

.body.thread.i.i:                                 ; preds = %common.resume.sink.split.i.i.i, %.body.i.i.i, %.body.thread24.i.i
  %eh.lpad-body23.i.i = phi { ptr, i32 } [ %i.cu, %.body.thread24.i.i ], [ %common.resume.op.ph.i.i.i, %common.resume.sink.split.i.i.i ], [ %.pn8.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if19EntryWithVisibilityEBF_(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.t) #21
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.cn, !noalias !3702

bb.cn:                                            ; preds = %.body.thread.i.i
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3702
  unreachable

.noexc:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvCsluMP4ekZjHw_14diesel_derives24___diesel_public_if_inner0EBF_.exit.i, %.thread84.i
  %.sroa.0.0.i = phi i64 [ %.sroa.8.328.i.i, %.thread84.i ], [ %.sroa.9.383.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvCsluMP4ekZjHw_14diesel_derives24___diesel_public_if_inner0EBF_.exit.i ]
  %i.gb = phi <2 x i64> [ %i.fz, %.thread84.i ], [ %i.cs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvCsluMP4ekZjHw_14diesel_derives24___diesel_public_if_inner0EBF_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3649
  store <2 x i64> %i.gb, ptr %i.r, align 16, !noalias !3649
  %.sroa.5.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.0.0.i, ptr %.sroa.5.sroa.6.0..sroa_idx.i, align 16, !noalias !3649
  call void @_RNvMNtCshMFl0SviwmK_3syn5errorNtB2_5Error18into_compile_error(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3649
  br label %_RNvCsluMP4ekZjHw_14diesel_derives24___diesel_public_if_inner.exit

.noexc6:                                          ; preds = %bb.cm
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.13.i.i, i64 224, i1 false), !noalias !3649
  %.sroa.17.256..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.17.256..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.4.0..sroa_idx.i, i64 232, i1 false), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  store i64 %.sroa.0.3.i.i, ptr %i.q, align 8, !noalias !3649
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <2 x i64> %i.fx, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !3649
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.sroa.8.3.i.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !3649
  store i64 %.sroa.12.256.copyload21.i, ptr %i.p, align 8, !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3649
  call void @_RNvNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if6expand(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(256) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(240) %i.p)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gc = load <2 x i64>, ptr %i.s, align 16, !noalias !3649
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.gd = load <2 x i64>, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 16, !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3649
  store <2 x i64> %i.gc, ptr %i.x, align 16, !alias.scope !3648
  store <2 x i64> %i.gd, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 16, !alias.scope !3648
  br label %_RNvCsluMP4ekZjHw_14diesel_derives24___diesel_public_if_inner.exit

.body.thread.i:                                   ; preds = %.body.i, %common.resume.sink.split.i.i, %.body.i.i
  %eh.lpad-body69.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %.pn8.i.i, %.body.i.i ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp11TokenStreamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.co, !noalias !3675

bb.co:                                            ; preds = %.body.thread.i
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3675
  unreachable

_RNvCsluMP4ekZjHw_14diesel_derives24___diesel_public_if_inner.exit: ; preds = %.noexc6, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.gf = call noundef i32 @_RNvXs2_Csf5uYjtxkodL_11proc_macro2NtCs50gxqRnCXtk_10proc_macro11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_11TokenStreamE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret i32 %i.gf

bb.cp:                                            ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp11TokenStreamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cs, %bb.cp
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.cp, %.body.thread.i, %.body.thread.i.i, %bb.cr, %bb.cs
  %.pn11 = phi { ptr, i32 } [ %i.gh, %bb.cr ], [ %lpad.thr_comm.split-lp, %bb.cp ], [ %i.gh, %bb.cs ], [ %eh.lpad-body69.i, %.body.thread.i ], [ %eh.lpad-body23.i.i, %.body.thread.i.i ]
  resume { ptr, i32 } %.pn11

bb.cr:                                            ; preds = %bb.a
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = icmp eq i32 %1, 0
  br i1 %i.gi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvXs0_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.y)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.cq
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvCsluMP4ekZjHw_14diesel_derives19define_sql_function(i32 noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [400 x i8], align 8               ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [400 x i8], align 8               ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs1_Csf5uYjtxkodL_11proc_macro2NtB5_11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtCs50gxqRnCXtk_10proc_macro11TokenStreamE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, i32 noundef %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !3709)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3710
  call void @_RNvXsh_NtCshMFl0SviwmK_3syn5parseNvYNtNtCsluMP4ekZjHw_14diesel_derives12sql_function15SqlFunctionDeclNtB5_5Parse5parseNtB5_6Parser6parse2BC_(ptr noalias noundef nonnull sret([400 x i8]) align 8 captures(address) dereferenceable(400) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f), !noalias !3709
  %i.i = load i64, ptr %i.e, align 8, !range !30, !noalias !3710, !noundef !15
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !3710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !3710
  call void @_RNvMNtCshMFl0SviwmK_3syn5errorNtB2_5Error18into_compile_error(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3710
  br label %_RNvCsluMP4ekZjHw_14diesel_derives25define_sql_function_inner.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.c, ptr noundef nonnull align 8 dereferenceable(400) %i.e, i64 400, i1 false), !noalias !3710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3712
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !3712
  %i.l = call noundef align 8 dereferenceable_or_null(400) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 400, i64 noundef 8) #20, !noalias !3712 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_RNCNvCsluMP4ekZjHw_14diesel_derives25define_sql_function_inner0B3_.exit.i, !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 400) #24
          to label %.noexc.i.i unwind label %bb.f, !noalias !3712

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function15SqlFunctionDeclEBF_(ptr noalias noundef nonnull align 8 dereferenceable(400) %i.c) #21
          to label %bb.e unwind label %bb.g, !noalias !3713

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #22, !noalias !3713
  unreachable

_RNCNvCsluMP4ekZjHw_14diesel_derives25define_sql_function_inner0B3_.exit.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.l, ptr noundef nonnull align 8 dereferenceable(400) %i.e, i64 400, i1 false), !noalias !3710
  store i64 1, ptr %i.a, align 8, !noalias !3712
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %i.p, align 8, !noalias !3712
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.q, align 8, !noalias !3712
  call void @_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function6expand(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i1 noundef zeroext false, i1 noundef zeroext false), !noalias !3710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3710
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !3710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3710
  store i64 %.sroa.0.0.copyload.i, ptr %i.g, align 8, !alias.scope !3709
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !3711
  br label %_RNvCsluMP4ekZjHw_14diesel_derives25define_sql_function_inner.exit

_RNvCsluMP4ekZjHw_14diesel_derives25define_sql_function_inner.exit: ; preds = %bb.b, %_RNCNvCsluMP4ekZjHw_14diesel_derives25define_sql_function_inner0B3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.r = call noundef i32 @_RNvXs2_Csf5uYjtxkodL_11proc_macro2NtCs50gxqRnCXtk_10proc_macro11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_11TokenStreamE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i32 %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvCsluMP4ekZjHw_14diesel_derives19derive_as_changeset(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [240 x i8], align 8               ; 4 uses
  %i.c = alloca [240 x i8], align 8               ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs1_Csf5uYjtxkodL_11proc_macro2NtB5_11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtCs50gxqRnCXtk_10proc_macro11TokenStreamE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, i32 noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3717
  call fastcc void @_RNvXsh_NtCshMFl0SviwmK_3syn5parseNvYNtNtB7_6derive11DeriveInputNtB5_5Parse5parseNtB5_6Parser6parse2CsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 captures(address) dereferenceable(240) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e), !noalias !3718
  %i.g = load i64, ptr %i.c, align 8, !range !46, !noalias !3717, !noundef !15
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !3717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3717
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(240) %i.c, i64 240, i1 false), !noalias !3717
  call void @_RNvNtCsluMP4ekZjHw_14diesel_derives12as_changeset6derive(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(240) %i.b), !noalias !3717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3717
  %i.k = load i64, ptr %i.d, align 8, !range !32, !noalias !3717, !noundef !15
  %i.l = icmp eq i64 %i.k, -2
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3717
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !3717
  call void @_RNvMNtCshMFl0SviwmK_3syn5errorNtB2_5Error18into_compile_error(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3717
  br label %_RNvCsluMP4ekZjHw_14diesel_derives25derive_as_changeset_inner.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !3719
  br label %_RNvCsluMP4ekZjHw_14diesel_derives25derive_as_changeset_inner.exit

_RNvCsluMP4ekZjHw_14diesel_derives25derive_as_changeset_inner.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = call noundef i32 @_RNvXs2_Csf5uYjtxkodL_11proc_macro2NtCs50gxqRnCXtk_10proc_macro11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_11TokenStreamE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
end_hunk_0
