Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/smol_str-be35e377e053f107.smol_str.2f11b5af215aaa78-cgu.0?download=true
inline.NumInlined: 72
inline.NumDeleted: 50
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [160 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A                                                                                                                                ", align 1
@1 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/smol_str-0.3.6/src/lib.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"^\00\00\00\00\00\00\00\12\02\00\00$\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"^\00\00\00\00\00\00\00\10\02\00\009\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"^\00\00\00\00\00\00\00\89\03\00\00F\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"^\00\00\00\00\00\00\00\83\03\00\00+\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"^\00\00\00\00\00\00\00\A3\03\00\00B\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"^\00\00\00\00\00\00\00\9B\03\00\00\18\00\00\00" }>, align 8
@8 = private unnamed_addr constant [81 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/char/methods.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"P\00\00\00\00\00\00\00\D3\09\00\00\09\00\00\00" }>, align 8
@10 = private unnamed_addr constant [71 x i8] c"\12encode_utf8: need \C0\13 bytes to encode U+\C3 \00\00i\04\00\15 but buffer has just \C0\00", align 1

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderEBD_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.a = load i8, ptr %0, align 8, !range !4, !alias.scope !12, !noundef !5
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprEBD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !12 ; 2 uses
  %i.d = icmp eq i64 %.val.i, 0
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprEBD_.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !12, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !12
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprEBD_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprEBD_.exit: ; preds = %bb.a, %bb.b, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs42xZ1oUXfIG_8smol_str(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !6, !alias.scope !15, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !15
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs42xZ1oUXfIG_8smol_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i)
  %i.g = load i64, ptr %i.a, align 8, !range !16, !noalias !15, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !17, !noalias !15, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #21
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !15, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !15
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !15
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs42xZ1oUXfIG_8smol_str(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %.0.val, i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) #20
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.f = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef 1) #20
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit
  %.pn7 = phi ptr [ %i.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq ptr %.pn7, null
  br i1 %i.g, label %bb.e, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  br label %bb.f

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn79 = phi ptr [ %.pn7, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn79, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink10 = phi i64 [ %1, %bb.e ], [ %1, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink10, ptr %i.j, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [23 x i8], align 1                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.b = icmp ult i64 %2, 24
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 161
  br i1 %i.c, label %.lr.ph.preheader.i.i.i.i, label %.loopexit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.a, i8 0, i64 23, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false)
  %i.d = trunc nuw nsw i64 %2 to i8
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.8.1.copyload = load ptr, ptr %.7..7..7..sroa_idx, align 1
  %.15..15..15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %.15..15..15..sroa.9.1.copyload = load i64, ptr %.15..15..15..sroa_idx, align 1
  br label %bb.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %..i.i = tail call noundef range(i64 24, 33) i64 @llvm.umin.i64(i64 range(i64 24, 161) %2, i64 32) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %..i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB30_4Repr12new_on_stackReE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B30_.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.01.018.i.i.i.i = phi i64 [ %i.j, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB30_4Repr12new_on_stackReE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B30_.exit.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB30_4Repr12new_on_stackReE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B30_.exit.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !35, !noalias !36, !noundef !5
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB30_4Repr12new_on_stackReE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B30_.exit.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB1M_4Repr12new_on_stackReE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2D_5count0EB1M_.exit.i

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB30_4Repr12new_on_stackReE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B30_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.01.018.i.i.i.i, 1
  %i.k = icmp eq ptr %i.i, %i.e
  br i1 %i.k, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB1M_4Repr12new_on_stackReE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2D_5count0EB1M_.exit.i, label %.lr.ph.i.i.i.i

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB1M_4Repr12new_on_stackReE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2D_5count0EB1M_.exit.i: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB30_4Repr12new_on_stackReE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B30_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.1.i.i.i = phi i64 [ %..i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB30_4Repr12new_on_stackReE0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B30_.exit.i.i.i.i ], [ %.sroa.01.018.i.i.i.i, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.l = sub nsw i64 %2, %.sroa.0.1.i.i.i         ; 2 uses
  %i.m = icmp ult i64 %i.l, 129
  br i1 %i.m, label %3, label %.loopexit

3:                                                ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB1M_4Repr12new_on_stackReE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2D_5count0EB1M_.exit.i
  %4 = icmp ugt i64 %.sroa.0.1.i.i.i, %2
  br i1 %4, label %5, label %bb.d, !prof !7

bb.d:                                             ; preds = %3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.o = icmp samesign eq i64 %.sroa.0.1.i.i.i, %2
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i.i.i
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.s = phi ptr [ %i.p, %.lr.ph ], [ %i.q, %bb.e ] ; 2 uses
  %.val.i.i = load i8, ptr %i.s, align 1, !alias.scope !34, !noalias !37, !noundef !5
  %i.t = icmp eq i8 %.val.i.i, 32
  br i1 %i.t, label %bb.e, label %.loopexit

5:                                                ; preds = %3
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i.i, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22, !noalias !38
  unreachable

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.u = sub nsw i64 32, %.sroa.0.1.i.i.i         ; 3 uses
  %i.v = add nuw nsw i64 %i.l, 32                 ; 2 uses
  %.not.i = icmp ugt i64 %i.u, %i.v
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 160, i64 noundef %i.u, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !noalias !38
  unreachable

bb.h:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr @0, i64 %i.u
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.sroa.9.0 = phi i64 [ %.15..15..15..sroa.9.1.copyload, %bb.c ], [ %2, %bb.h ]
  %.sroa.8.0 = phi ptr [ %.7..7..7..sroa.8.1.copyload, %bb.c ], [ %i.w, %bb.h ]
  %.sroa.0.0 = phi i8 [ %i.d, %bb.c ], [ 24, %bb.h ]
  store i8 %.sroa.0.0, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.a, i64 7, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.m

.loopexit:                                        ; preds = %bb.f, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCINvMsB_Cs42xZ1oUXfIG_8smol_strNtB1M_4Repr12new_on_stackReE0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2D_5count0EB1M_.exit.i, %bb.b
  %i.x = tail call { i64, i64 } @_RNvNtCsbSS6DM8SDEO_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !39 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0        ; 3 uses
  %i.z = extractvalue { i64, i64 } %i.x, 1        ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.ab = inttoptr i64 %i.y to ptr
  br label %_RNCNvMsq_NtCsbSS6DM8SDEO_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs42xZ1oUXfIG_8smol_str.exit.i.i.i

bb.k:                                             ; preds = %.loopexit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !39
  %i.ac = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) %i.y) #20, !noalias !39
  br label %_RNCNvMsq_NtCsbSS6DM8SDEO_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs42xZ1oUXfIG_8smol_str.exit.i.i.i

_RNCNvMsq_NtCsbSS6DM8SDEO_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs42xZ1oUXfIG_8smol_str.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ab, %bb.j ], [ %i.ac, %bb.k ] ; 5 uses
  %i.ad = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %i.ad, label %bb.l, label %_RNvMsq_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs42xZ1oUXfIG_8smol_str.exit, !prof !7

bb.l:                                             ; preds = %_RNCNvMsq_NtCsbSS6DM8SDEO_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs42xZ1oUXfIG_8smol_str.exit.i.i.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef %i.y, i64 noundef %i.z) #21, !noalias !39
  unreachable

_RNvMsq_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs42xZ1oUXfIG_8smol_str.exit: ; preds = %_RNCNvMsq_NtCsbSS6DM8SDEO_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs42xZ1oUXfIG_8smol_str.exit.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i, align 8, !noalias !39
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  store i64 1, ptr %i.ae, align 8, !noalias !39
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.ah, align 8
  store i8 25, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvMsq_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs42xZ1oUXfIG_8smol_str.exit, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsF_Cs42xZ1oUXfIG_8smol_strNtB5_14SmolStrBuilder4push(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [31 x i8], align 1            ; 4 uses
  %i.b = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !52, !noundef !5 ; 5 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i32 %1, 2048
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.j, i64 3, i64 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 2, %bb.c ], [ %..i, %bb.d ], [ 1, %bb.b ] ; 3 uses
  %i.k = load i64, ptr %i.d, align 8, !range !6, !alias.scope !53, !noundef !5
  %i.l = sub nsw i64 %i.k, %i.f
  %i.m = icmp ugt i64 %.sroa.0.0.i, %i.l
  br i1 %i.m, label %bb.f, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs42xZ1oUXfIG_8smol_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.f, i64 noundef %.sroa.0.0.i)
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i: ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !52, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f ; 10 uses
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i
  %i.q = icmp samesign ult i32 %1, 2048
  %i.r = trunc i32 %1 to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 3 uses
  %i.u = lshr i32 %1, 6
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128                ; 2 uses
  %i.y = lshr i32 %1, 12
  %i.z = trunc i32 %i.y to i8                     ; 2 uses
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %i.ac = lshr i32 %1, 18
  %i.ad = trunc nuw nsw i32 %i.ac to i8
  %i.ae = or disjoint i8 %i.ad, -16
  br i1 %i.q, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i
  %i.af = trunc nuw nsw i32 %1 to i8
  store i8 %i.af, ptr %i.p, align 1, !noalias !52
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = or disjoint i8 %i.v, -64
  store i8 %i.ag, ptr %i.p, align 1, !noalias !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.t, ptr %i.ah, align 1, !noalias !52
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.g
  %i.ai = icmp samesign ult i32 %1, 65536
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = or disjoint i8 %i.z, -32
  store i8 %i.aj, ptr %i.p, align 1, !noalias !52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.x, ptr %i.ak, align 1, !noalias !52
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i8 %i.t, ptr %i.al, align 1, !noalias !52
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.l:                                             ; preds = %bb.j
  store i8 %i.ae, ptr %i.p, align 1, !noalias !52
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.ab, ptr %i.am, align 1, !noalias !52
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i8 %i.x, ptr %i.an, align 1, !noalias !52
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  store i8 %i.t, ptr %i.ao, align 1, !noalias !52
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  %i.ap = add nuw i64 %.sroa.0.0.i, %i.f
  store i64 %i.ap, ptr %i.e, align 8, !alias.scope !52
  br label %bb.aq

bb.m:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.ar = icmp samesign ult i32 %1, 128           ; 3 uses
  br i1 %i.ar, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = icmp samesign ult i32 %1, 2048
  br i1 %i.as, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = icmp samesign ult i32 %1, 65536
  %. = select i1 %i.at, i64 3, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.sroa.0.0 = phi i64 [ 2, %bb.n ], [ %., %bb.o ], [ 1, %bb.m ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !noundef !5 ; 15 uses
  %i.aw = add i64 %i.av, %.sroa.0.0               ; 5 uses
  %i.ax = icmp ult i64 %i.aw, 24
  br i1 %i.ax, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = icmp sgt i64 %i.aw, -1
  br i1 %i.ay, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i, label %bb.s

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.q
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !54
  %i.az = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aw, i64 noundef 1) #20, !noalias !54 ; 5 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bb = icmp ugt i64 %i.av, 23
  br i1 %i.bb, label %bb.ap, label %bb.ah, !prof !7

bb.s:                                             ; preds = %bb.q, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.q ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.aw) #21
  unreachable

bb.t:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i
  store i64 %i.aw, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bc = icmp ult i64 %i.av, 24
  br i1 %i.bc, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i15, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.av, i64 noundef 23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21
          to label %bb.af unwind label %bb.ag

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i15: ; preds = %bb.t
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %i.aq, i64 %i.av, i1 false), !noalias !55
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i15
  store i64 %i.av, ptr %.sroa.57.0..sroa_idx, align 8
  br i1 %i.ar, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = icmp samesign ult i32 %1, 2048
  %i.be = icmp samesign ult i32 %1, 65536
  %..i16 = select i1 %i.be, i64 3, i64 4
  %.sroa.0.0.i17 = select i1 %i.bd, i64 2, i64 %..i16 ; 5 uses
  %i.bf = icmp samesign ugt i64 %.sroa.0.0.i17, %.sroa.0.0
  br i1 %i.bf, label %bb.y, label %bb.z, !prof !56

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs42xZ1oUXfIG_8smol_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.av, i64 noundef %.sroa.0.0.i17)
          to label %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i18_crit_edge unwind label %bb.ag

._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i18_crit_edge: ; preds = %bb.y
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.z

bb.z:                                             ; preds = %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i18_crit_edge, %bb.x
  %.ph = phi ptr [ %i.az, %bb.x ], [ %.pre, %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i18_crit_edge ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.av ; 9 uses
  %i.bh = icmp samesign ult i32 %1, 2048
  %i.bi = trunc i32 %1 to i8
  %i.bj = and i8 %i.bi, 63
  %i.bk = or disjoint i8 %i.bj, -128              ; 3 uses
  %i.bl = lshr i32 %1, 6
  %i.bm = trunc i32 %i.bl to i8                   ; 2 uses
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128              ; 2 uses
  %i.bp = lshr i32 %1, 12
  %i.bq = trunc i32 %i.bp to i8                   ; 2 uses
  %i.br = and i8 %i.bq, 63
  %i.bs = or disjoint i8 %i.br, -128
  %i.bt = lshr i32 %1, 18
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %i.bv = or disjoint i8 %i.bu, -16
  br i1 %i.bh, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  %i.bx = trunc nuw nsw i32 %1 to i8
  store i8 %i.bx, ptr %i.bw, align 1, !noalias !57
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprEBD_.exit

bb.ab:                                            ; preds = %bb.z
  %i.by = or disjoint i8 %i.bm, -64
  store i8 %i.by, ptr %i.bg, align 1, !noalias !57
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.bk, ptr %i.bz, align 1, !noalias !57
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprEBD_.exit

bb.ac:                                            ; preds = %bb.z
  %i.ca = icmp samesign ult i32 %1, 65536
  br i1 %i.ca, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cb = or disjoint i8 %i.bq, -32
  store i8 %i.cb, ptr %i.bg, align 1, !noalias !57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.bo, ptr %i.cc, align 1, !noalias !57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.bk, ptr %i.cd, align 1, !noalias !57
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprEBD_.exit

bb.ae:                                            ; preds = %bb.ac
  store i8 %i.bv, ptr %i.bg, align 1, !noalias !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.bs, ptr %i.ce, align 1, !noalias !57
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.bo, ptr %i.cf, align 1, !noalias !57
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  store i8 %i.bk, ptr %i.cg, align 1, !noalias !57
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprEBD_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprEBD_.exit: ; preds = %bb.aa, %bb.ab, %bb.ad, %bb.ae
  %.sroa.0.0.i173840 = phi i64 [ %.sroa.0.0.i17, %bb.ae ], [ %.sroa.0.0.i17, %bb.ad ], [ %.sroa.0.0.i17, %bb.ab ], [ 1, %bb.aa ]
  %i.ch = add nuw nsw i64 %.sroa.0.0.i173840, %i.av
  store i64 %i.ch, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.5.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i8 1, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.aq, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.aq

bb.af:                                            ; preds = %bb.u
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs42xZ1oUXfIG_8smol_str.exit: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.ag
  resume { ptr, i32 } %i.ci

bb.ag:                                            ; preds = %bb.y, %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cj = icmp eq i64 %.val, 0
  br i1 %i.cj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs42xZ1oUXfIG_8smol_str.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.ag
  %.val14 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs42xZ1oUXfIG_8smol_str.exit

bb.ah:                                            ; preds = %bb.r
  %i.ck = sub nuw nsw i64 23, %i.av               ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  br i1 %i.ar, label %.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = icmp samesign ult i32 %1, 2048          ; 2 uses
  %i.cn = icmp samesign ult i32 %1, 65536         ; 2 uses
  %..i21 = select i1 %i.cn, i64 3, i64 4
  %.sroa.0.0.i22 = select i1 %i.cm, i64 2, i64 %..i21 ; 2 uses
  %i.co = icmp samesign ult i64 %i.ck, %.sroa.0.0.i22
  br i1 %i.co, label %bb.ao, label %bb.aj

.thread.i:                                        ; preds = %bb.ah
  %i.cp = icmp eq i64 %i.av, 23
  br i1 %i.cp, label %bb.ao, label %.thread7.i

bb.aj:                                            ; preds = %bb.ai
  %i.cq = trunc i32 %1 to i8
  %i.cr = and i8 %i.cq, 63
  %i.cs = or disjoint i8 %i.cr, -128              ; 3 uses
  %i.ct = lshr i32 %1, 6
  %i.cu = trunc i32 %i.ct to i8                   ; 2 uses
  %i.cv = and i8 %i.cu, 63
  %i.cw = or disjoint i8 %i.cv, -128              ; 2 uses
  %i.cx = lshr i32 %1, 12
  %i.cy = trunc i32 %i.cx to i8                   ; 2 uses
  %i.cz = and i8 %i.cy, 63
  %i.da = or disjoint i8 %i.cz, -128
  %i.db = lshr i32 %1, 18
  %i.dc = trunc nuw nsw i32 %i.db to i8
  %i.dd = or disjoint i8 %i.dc, -16
  br i1 %i.cm, label %bb.ak, label %bb.al

.thread7.i:                                       ; preds = %.thread.i
  %i.de = trunc nuw nsw i32 %1 to i8
  store i8 %i.de, ptr %i.cl, align 1, !alias.scope !58
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.ak:                                            ; preds = %bb.aj
  %i.df = or disjoint i8 %i.cu, -64
  store i8 %i.df, ptr %i.cl, align 1, !alias.scope !58
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store i8 %i.cs, ptr %i.dg, align 1, !alias.scope !58
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.al:                                            ; preds = %bb.aj
  br i1 %i.cn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dh = or disjoint i8 %i.cy, -32
  store i8 %i.dh, ptr %i.cl, align 1, !alias.scope !58
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store i8 %i.cw, ptr %i.di, align 1, !alias.scope !58
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i8 %i.cs, ptr %i.dj, align 1, !alias.scope !58
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.an:                                            ; preds = %bb.al
  store i8 %i.dd, ptr %i.cl, align 1, !alias.scope !58
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store i8 %i.da, ptr %i.dk, align 1, !alias.scope !58
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i8 %i.cw, ptr %i.dl, align 1, !alias.scope !58
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  store i8 %i.cs, ptr %i.dm, align 1, !alias.scope !58
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.ao:                                            ; preds = %.thread.i, %bb.ai
  %.sroa.0.06.i = phi i64 [ 1, %.thread.i ], [ %.sroa.0.0.i22, %bb.ai ]
  tail call fastcc void @_RNvNvNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw8do_panic7runtime(i32 noundef range(i32 0, 1114112) %1, i64 noundef %.sroa.0.06.i, i64 noundef range(i64 0, 24) %i.ck) #23, !noalias !58
  unreachable

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit: ; preds = %.thread7.i, %bb.ak, %bb.am, %bb.an
  %i.dn = load i64, ptr %i.au, align 8, !noundef !5
  %i.do = add i64 %i.dn, %.sroa.0.0
  store i64 %i.do, ptr %i.au, align 8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.r
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.av, i64 noundef 23, i64 noundef 23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22
  unreachable

bb.aq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str18SmolStrBuilderReprEBD_.exit, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit, %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsF_Cs42xZ1oUXfIG_8smol_strNtB5_14SmolStrBuilder6finish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %1, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.k, ptr noundef nonnull align 1 dereferenceable(23) %i.j, i64 23, i1 false)
  %i.l = trunc i64 %i.i to i8                     ; 2 uses
  %i.m = icmp ult i8 %i.l, 24
  tail call void @llvm.assume(i1 %i.m)
  store i8 %i.l, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsF_Cs42xZ1oUXfIG_8smol_strNtB5_14SmolStrBuilder8push_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !74, !noundef !5 ; 5 uses
  %i.f = load i64, ptr %i.c, align 8, !range !6, !alias.scope !74, !noundef !5
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.thread.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i, !prof !7

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.thread.i: ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs42xZ1oUXfIG_8smol_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.e, i64 noundef %2)
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !73, !noundef !5 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i: ; preds = %bb.b
  %i.k = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.k)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs42xZ1oUXfIG_8smol_str.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.thread.i
  %i.l = phi i64 [ %i.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.thread.i ], [ %i.e, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !73, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !73
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs42xZ1oUXfIG_8smol_str.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs42xZ1oUXfIG_8smol_str.exit: ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i, %bb.c
  %i.p = phi i64 [ %i.l, %bb.c ], [ %i.e, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i ]
  %i.q = add i64 %i.p, %2
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !73
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 9 uses
  %i.u = add i64 %i.t, %2                         ; 10 uses
  store i64 %i.u, ptr %i.s, align 8
  %i.v = icmp ult i64 %i.u, 24
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp sgt i64 %i.u, -1
  br i1 %i.w, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i, label %bb.g

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.e
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !75
  %i.x = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.u, i64 noundef 1) #20, !noalias !75 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.z = icmp ult i64 %i.u, %i.t
  br i1 %i.z, label %bb.o, label %bb.p, !prof !7

bb.g:                                             ; preds = %bb.e, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.e ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.u) #21
  unreachable

bb.h:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i
  %i.aa = icmp ult i64 %i.t, 24
  br i1 %i.aa, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i10, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.t, i64 noundef 23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21
          to label %bb.n unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs42xZ1oUXfIG_8smol_str.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i10: ; preds = %bb.h
  %.not.i11 = icmp eq i64 %i.t, 0
  br i1 %.not.i11, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i14, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %i.r, i64 %i.t, i1 false), !noalias !76
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i14

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i14: ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i10, %bb.j
  %.not.i15 = icmp eq i64 %2, 0
  br i1 %.not.i15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !77
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs42xZ1oUXfIG_8smol_str.exit.i14
  store i8 1, ptr %0, align 8
  %.sroa.5.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %.sroa.5.sroa.3.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %.sroa.5.sroa.4.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %.sroa.5.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs42xZ1oUXfIG_8smol_str.exit
  ret void

bb.n:                                             ; preds = %bb.i
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs42xZ1oUXfIG_8smol_str.exit: ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  resume { ptr, i32 } %i.ac

bb.o:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.t, i64 noundef %i.u, i64 noundef 23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !78, !noalias !79
  br label %bb.m
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvNvNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw8do_panic7runtime(i32 noundef range(i32 0, 1114112) %0, i64 noundef range(i64 1, 5) %1, i64 noundef range(i64 0, 4) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.d, align 4
  store i64 %1, ptr %i.c, align 8
  store i64 %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsw_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8UpperHex3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
  unreachable
}

; Function Attrs: cold noinline nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_RNvNvXs_Cs42xZ1oUXfIG_8smol_strNtB6_7SmolStrNtNtCshzWfHUSfYae_4core5clone5Clone5clone10cold_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %.sroa.6 = alloca [7 x i8], align 1             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.a = load i8, ptr %1, align 8, !range !9, !noundef !5 ; 3 uses
  %i.b = icmp samesign ugt i8 %i.a, 23
  %i.c = zext nneg i8 %i.a to i64
  %i.d = add nsw i64 %i.c, -23
  %i.e = select i1 %i.b, i64 %i.d, i64 0
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %i.f, i64 7, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.7.0 = phi ptr [ %.sroa.4.0.copyload, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ]
  %.sroa.0.0 = phi i8 [ %i.a, %bb.c ], [ 24, %bb.d ], [ 25, %bb.e ]
  %.sroa.9.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0 = load i64, ptr %.sroa.9.0.in, align 8
  store i8 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs3_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.a = load i8, ptr %0, align 8, !range !9, !alias.scope !83, !noalias !84, !noundef !5 ; 3 uses
  %i.b = icmp samesign ugt i8 %i.a, 23
  %i.c = zext nneg i8 %i.a to i64                 ; 2 uses
  %i.d = add nsw i64 %i.c, -23
  %i.e = select i1 %i.b, i64 %i.d, i64 0          ; 3 uses
  %i.f = load i8, ptr %1, align 8, !range !9, !alias.scope !84, !noalias !83, !noundef !5 ; 3 uses
  %i.g = icmp samesign ugt i8 %i.f, 23
  %i.h = zext nneg i8 %i.f to i64                 ; 2 uses
  %i.i = add nsw i64 %i.h, -23
  %i.j = select i1 %i.g, i64 %i.i, i64 0          ; 2 uses
  %.not.i = icmp eq i64 %i.e, %i.j
  br i1 %.not.i, label %bb.b, label %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %.split5
    i64 2, label %.split
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.a, %i.f
  br i1 %i.k, label %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit, label %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread

.split5:                                          ; preds = %bb.b
  %i.l = icmp eq ptr %0, %1
  br i1 %i.l, label %bb.l, label %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread6

.split:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !83, !noalias !84, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !84, !noalias !83, !nonnull !5, !noundef !5
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.l, label %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread7

_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.t = load i128, ptr %i.s, align 1
  %i.u = load i128, ptr %i.r, align 1
  %i.v = xor i128 %i.t, %i.u
  %i.w = getelementptr i8, ptr %i.s, i64 7
  %i.x = getelementptr i8, ptr %i.r, i64 7
  %i.y = load i128, ptr %i.w, align 1
  %i.z = load i128, ptr %i.x, align 1
  %i.aa = xor i128 %i.y, %i.z
  %i.ab = or i128 %i.v, %i.aa
  %i.ac = icmp ne i128 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread

_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread: ; preds = %bb.a
  switch i64 %i.e, label %bb.e [
    i64 0, label %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread
    i64 1, label %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread6
    i64 2, label %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread7
  ]

bb.e:                                             ; preds = %bb.f, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread
  unreachable

_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread: ; preds = %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit, %bb.d, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.f

_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread6: ; preds = %.split5, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  br label %bb.f

_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread7: ; preds = %.split, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  br label %bb.f

bb.f:                                             ; preds = %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread7, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread6, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread
  %.sroa.4.0 = phi i64 [ %i.c, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread ], [ %i.aj, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread6 ], [ %i.an, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread7 ] ; 2 uses
  %.sroa.01.0 = phi ptr [ %i.af, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread ], [ %i.ah, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread6 ], [ %i.ao, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit.thread.thread7 ]
  switch i64 %i.j, label %bb.e [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !5
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.43.0 = phi i64 [ %i.h, %bb.g ], [ %i.at, %bb.h ], [ %i.ax, %bb.i ]
  %.sroa.02.0 = phi ptr [ %i.ap, %bb.g ], [ %i.ar, %bb.h ], [ %i.ay, %bb.i ]
  %i.az = icmp eq i64 %.sroa.4.0, %.sroa.43.0
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %bcmp = tail call i32 @bcmp(ptr nonnull %.sroa.01.0, ptr nonnull %.sroa.02.0, i64 %.sroa.4.0)
  %i.ba = icmp eq i32 %bcmp, 0
  br label %bb.l

bb.l:                                             ; preds = %.split5, %.split, %bb.j, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit, %bb.k
  %.sroa.0.0 = phi i1 [ true, %_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr6ptr_eq.exit ], [ %i.ba, %bb.k ], [ false, %bb.j ], [ true, %.split ], [ true, %.split5 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsH_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrINtNtCshzWfHUSfYae_4core7convert4FromNtB5_14SmolStrBuilderE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
end_hunk_0
