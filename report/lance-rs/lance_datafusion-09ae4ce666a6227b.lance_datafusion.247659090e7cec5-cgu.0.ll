Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message16header_as_schema:bb.a
  %i.q = call noundef i16 @_RNvMs_NtCsl5zbFZW529v_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i16 noundef 6), !noalias !91204 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !91204
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.s = zext i16 %i.q to i64
  %i.t = add i64 %i.g, %i.s                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91210)
  call void @llvm.experimental.noalias.scope.decl(metadata !91211)
  %i.u = icmp ugt i64 %i.t, %i.e
  br i1 %i.u, label %bb.d, label %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit, !prof !316

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #72, !noalias !91212
  unreachable

_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.v, align 1, !alias.scope !91213, !noalias !91204
  %i.w = icmp eq i8 %.sroa.0.0.copyload.i.i.i, 1
  br i1 %i.w, label %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i2, label %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.thread

_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i2: ; preds = %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !91214
  %.sroa.0.0.copyload.i2.i = load i32, ptr %i.k, align 1, !alias.scope !91215, !noalias !91216
  %i.x = sub i32 %i.l, %.sroa.0.0.copyload.i2.i
  %i.y = sext i32 %i.x to i64
  store ptr %i.c, ptr %i.a, align 8, !alias.scope !91217, !noalias !91218
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.z, align 8, !alias.scope !91217, !noalias !91218
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !91217, !noalias !91218
  %i.ab = call noundef i16 @_RNvMs_NtCsl5zbFZW529v_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i16 noundef 8), !noalias !91214 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !91214
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i2
  %i.ad = zext i16 %i.ab to i64
  %i.ae = add i64 %i.g, %i.ad                     ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91219)
  %i.af = add i64 %i.ae, 4                        ; 2 uses
  %i.ag = icmp ult i64 %i.ae, -4
  %i.ah = icmp ule i64 %i.af, %i.e
  %or.cond.i.i3 = and i1 %i.ag, %i.ah
  br i1 %or.cond.i.i3, label %bb.g, label %bb.f, !prof !544

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2441) #72, !noalias !91220
  unreachable

_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i, %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.ai, align 1, !alias.scope !91219, !noalias !91221
  %i.aj = zext i32 %.sroa.0.0.copyload.i.i4 to i64
  %i.ak = add i64 %i.ae, %i.aj
  store ptr %i.c, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %.sroa.516.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i2
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr9arguments12ArgumentNameEE6removeCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91225)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !91225, !noalias !91226, !noundef !315 ; 4 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr9arguments12ArgumentNameEE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr9arguments12ArgumentNameEE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr9arguments12ArgumentNameEE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !91225, !noalias !91226, !nonnull !315, !noundef !315 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !91225 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, i64 24, i1 false), !noalias !91225
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = shl nuw nsw i64 %i.b, 5
  %i.i = add nsw i64 %i.h, -32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.i, i1 false), !noalias !91227
  %i.j = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !91225, !noalias !91226
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -2
  br i1 %.not, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr9arguments12ArgumentNameEE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.b, !prof !585

bb.b:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr9arguments12ArgumentNameEE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr9arguments12ArgumentNameEE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %bb.a, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr9arguments12ArgumentNameEE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit
  %i.k = phi i64 [ 0, %bb.a ], [ %i.j, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs1Jc0oVeks7E_15datafusion_expr9arguments12ArgumentNameEE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit ]
  tail call void @_RNvNvMs_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef 0, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @768) #72
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE6removeCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91231)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !91231, !noalias !91232, !noundef !315 ; 4 uses
  %i.c = icmp ult i64 %i.b, 82351536043346213
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !91231, !noalias !91232, !nonnull !315, !noundef !315 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 16, !noalias !91231 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx2, i64 104, i1 false), !noalias !91231
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = mul nuw nsw i64 %i.b, 112
  %i.i = add nsw i64 %i.h, -112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.f, ptr nonnull align 16 %i.g, i64 %i.i, i1 false), !noalias !91233
  %i.j = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !91231, !noalias !91232
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -2
  br i1 %.not, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.b, !prof !585

bb.b:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %bb.a, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit
  %i.k = phi i64 [ 0, %bb.a ], [ %i.j, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit ]
  tail call void @_RNvNvMs_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef 0, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @767) #72
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsE6removeCsc85D0lJ81Z_16lance_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1360) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [1352 x i8], align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91237)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !91237, !noalias !91238, !noundef !315 ; 4 uses
  %i.c = icmp ult i64 %i.b, 6781891203569689
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !91237, !noalias !91238, !nonnull !315, !noundef !315 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !91237 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(1352) %.sroa.6.0..sroa_idx2, i64 1352, i1 false), !noalias !91237
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1360
  %i.h = mul nuw nsw i64 %i.b, 1360
  %i.i = add nsw i64 %i.h, -1360
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.i, i1 false), !noalias !91239
  %i.j = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !91237, !noalias !91238
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -2
  br i1 %.not, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit.thread, label %bb.b, !prof !585

bb.b:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1352) %.sroa.6, i64 1352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit.thread: ; preds = %bb.a, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit
  %i.k = phi i64 [ 0, %bb.a ], [ %i.j, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsE10try_removeCsc85D0lJ81Z_16lance_datafusion.exit ]
  tail call void @_RNvNvMs_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef 0, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @547) #72
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #71 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsc85D0lJ81Z_16lance_datafusion10projectionNtB4_14ProjectionPlan11from_schema(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 10 uses
  %i.c = alloca [144 x i8], align 16              ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %.sroa.07.sroa.0 = alloca [184 x i8], align 8   ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 4 uses
  %i.i = alloca [128 x i8], align 8               ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 10 uses
  %i.l = alloca [192 x i8], align 8               ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  store ptr %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %2, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !315, !noundef !315 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !315 ; 6 uses
  %.idx = mul nuw nsw i64 %i.w, 192
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.y = icmp eq i64 %i.w, 0                      ; 2 uses
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %.sroa.0.0136 = phi i8 [ %.sroa.0.1, %bb.k ], [ 0, %bb.a ] ; 6 uses
  %.sroa.01.0135 = phi i8 [ %.sroa.01.1, %bb.k ], [ 0, %bb.a ] ; 6 uses
  %.sroa.02.0134 = phi i8 [ %.sroa.02.1, %bb.k ], [ 0, %bb.a ] ; 6 uses
  %.sroa.03.0133 = phi i8 [ %.sroa.03.1, %bb.k ], [ 0, %bb.a ] ; 6 uses
  %.sroa.04.0132 = phi i8 [ %.sroa.04.1, %bb.k ], [ 0, %bb.a ] ; 6 uses
  %.sroa.05.0131 = phi ptr [ %i.z, %bb.k ], [ %i.u, %bb.a ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.0131, i64 192 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.0131, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !315, !noundef !315 ; 19 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.0131, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !315 ; 2 uses
  switch i64 %i.ad, label %_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit.thread [
    i64 6, label %.split
    i64 8, label %_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit
    i64 10, label %.split82
    i64 28, label %.split81
    i64 23, label %.split80
  ]

.split:                                           ; preds = %.lr.ph
  %i.ae = load i32, ptr %i.ab, align 1
  %i.af = xor i32 %i.ae, 2003792479
  %i.ag = getelementptr i8, ptr %i.ab, i64 4
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = zext i16 %i.ah to i32
  %i.aj = xor i32 %i.ai, 25705
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.w, label %_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit.thread

.split82:                                         ; preds = %.lr.ph
  %i.ao = load i64, ptr %i.ab, align 1
  %i.ap = xor i64 %i.ao, 8315446390917395039
  %i.aq = getelementptr i8, ptr %i.ab, i64 8
  %i.ar = load i16, ptr %i.aq, align 1
  %i.as = zext i16 %i.ar to i64
  %i.at = xor i64 %i.as, 29797
  %i.au = or i64 %i.ap, %i.at
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.y, label %_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit.thread

.split81:                                         ; preds = %.lr.ph
  %i.ay = load i128, ptr %i.ab, align 1
  %i.az = xor i128 %i.ay, 134856309361218565000496722921877631583
  %i.ba = getelementptr i8, ptr %i.ab, i64 12
  %i.bb = load i128, ptr %i.ba, align 1
  %i.bc = xor i128 %i.bb, 146793563287289136079465169310077706596
  %i.bd = or i128 %i.az, %i.bc
  %i.be = icmp ne i128 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.z, label %_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit.thread

.split80:                                         ; preds = %.lr.ph
  %i.bh = load i128, ptr %i.ab, align 1
  %i.bi = xor i128 %i.bh, 126880940986635193078986189425519587935
  %i.bj = getelementptr i8, ptr %i.ab, i64 7
  %i.bk = load i128, ptr %i.bj, align 1
  %i.bl = xor i128 %i.bk, 146793563287289136079465169310077706597
  %i.bm = or i128 %i.bi, %i.bl
  %i.bn = icmp ne i128 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.aa, label %_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit.thread

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.sroa.04.0.lcssa = phi i8 [ 0, %bb.a ], [ %.sroa.04.1, %bb.k ]
  %.sroa.03.0.lcssa = phi i8 [ 0, %bb.a ], [ %.sroa.03.1, %bb.k ]
  %.sroa.02.0.lcssa = phi i8 [ 0, %bb.a ], [ %.sroa.02.1, %bb.k ]
  %.sroa.01.0.lcssa = phi i8 [ 0, %bb.a ], [ %.sroa.01.1, %bb.k ]
  %.sroa.0.0.lcssa = phi i8 [ 0, %bb.a ], [ %.sroa.0.1, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 24
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bq)
          to label %bb.ac unwind label %bb.ab

.thread93:                                        ; preds = %bb.ax, %.body.i54
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.fg)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema11ProjectableEL_EECsc85D0lJ81Z_16lance_datafusion.exit51

.thread76.loopexit:                               ; preds = %bb.d, %bb.b, %_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit.thread
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

.thread76.loopexit.split-lp:                      ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit: ; preds = %.lr.ph
  %i.br = load i64, ptr %i.ab, align 1
  %i.bs = icmp ne i64 %i.br, 8242823587773248095
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.x, label %_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit.thread

_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit.thread: ; preds = %.lr.ph, %.split82, %.split81, %.split80, %.split, %_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit
  %i.bv = load ptr, ptr %i.p, align 8, !nonnull !315, !noundef !315
  %i.bw = load ptr, ptr %i.q, align 8, !nonnull !315, !align !324, !noundef !315 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !340, !invariant.load !315
  %i.bz = add nsw i64 %i.by, -1
  %i.ca = and i64 %i.bz, -16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !invariant.load !315, !nonnull !315
  %i.cf = invoke noundef nonnull align 8 ptr %i.ce(ptr noundef nonnull %i.cc)
          to label %bb.b unwind label %.thread76.loopexit

bb.b:                                             ; preds = %_RNvCs63DIHKhvmTb_10lance_core16is_system_column.exit.thread
  %i.cg = invoke noundef align 8 ptr @_RNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6Schema5field(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cf, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad)
          to label %bb.c unwind label %.thread76.loopexit

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.05.0131)
          to label %bb.f unwind label %.thread76.loopexit

bb.e:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.05.0131, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.ch, ptr %i.m, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @710, ptr noundef nonnull %i.m)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit unwind label %.thread76.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.ci = load i64, ptr %i.s, align 8, !alias.scope !91305, !noalias !91306, !noundef !315 ; 3 uses
  %i.cj = load i64, ptr %i.o, align 8, !range !322, !alias.scope !91305, !noalias !91306, !noundef !315
  %i.ck = icmp eq i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10dying_nextCsc85D0lJ81Z_16lance_datafusion:bb.a

._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.an, align 8, !alias.scope !94769, !noalias !94770
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !94769, !noalias !94770
  br label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !94767, !noalias !94768, !noundef !315 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.an, align 8, !alias.scope !94767, !noalias !94768, !nonnull !315, !noundef !315 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i2.prol ], [ %i.ap, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 368
  %i.as = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ar, align 8, !noalias !94771, !nonnull !315, !noundef !315 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !94743

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i2.preheader ], [ %i.as, %.lr.ph.i.i2.prol ]
  %i.at = icmp ult i64 %i.ap, 8
  br i1 %i.at, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store i64 1, ptr %1, align 8, !alias.scope !94767, !noalias !94768
  br label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.bc, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 368
  %.sroa.013.0.i.i = load ptr, ptr %i.au, align 8, !noalias !94771, !nonnull !315, !noundef !315
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 368
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.av, align 8, !noalias !94771, !nonnull !315, !noundef !315
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 368
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.aw, align 8, !noalias !94771, !nonnull !315, !noundef !315
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 368
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.ax, align 8, !noalias !94771, !nonnull !315, !noundef !315
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 368
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.ay, align 8, !noalias !94771, !nonnull !315, !noundef !315
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 368
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.az, align 8, !noalias !94771, !nonnull !315, !noundef !315
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 368
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ba, align 8, !noalias !94771, !nonnull !315, !noundef !315
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 368
  %i.bc = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.bb, align 8, !noalias !94771, !nonnull !315, !noundef !315 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %._crit_edge.i.i, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.am, %._RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit_crit_edge.i ], [ %.sroa.013.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94772)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 362
  %i.bf = load i16, ptr %i.be, align 2, !noalias !94773, !noundef !315
  %i.bg = zext i16 %i.bf to i64
  %i.bh = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.bg
  br i1 %i.bh, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.j
  %.sroa.0.042.i.i.i.i = phi ptr [ %i.bj, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i ] ; 4 uses
  %.sroa.5.041.i.i.i.i = phi i64 [ %i.cb, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i.i, i64 352
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !94774, !noundef !315 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bk = zext i16 %i.cd to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %i.bk, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %i.cb, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE10init_frontCsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %i.bj, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bn = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 376
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bq, %.prol.preheader ], [ %i.bp, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !94775, !nonnull !315, !noundef !315 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 368 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !94757

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bp, %bb.i ], [ %i.bq, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.br = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.br, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.ca, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !94775, !nonnull !315, !noundef !315
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 368
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bs, align 8, !noalias !94775, !nonnull !315, !noundef !315
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 368
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bt, align 8, !noalias !94775, !nonnull !315, !noundef !315
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 368
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.bu, align 8, !noalias !94775, !nonnull !315, !noundef !315
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 368
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bv, align 8, !noalias !94775, !nonnull !315, !noundef !315
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 368
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bw, align 8, !noalias !94775, !nonnull !315, !noundef !315
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 368
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bx, align 8, !noalias !94775, !nonnull !315, !noundef !315
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 368
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.by, align 8, !noalias !94775, !nonnull !315, !noundef !315 ; 2 uses
  %i.bz = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 368
  br i1 %i.bz, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = add i64 %.sroa.5.041.i.i.i.i, 1         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i.i, i64 360
  %i.cd = load i16, ptr %i.cc, align 8, !noalias !94774 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 368, i64 464
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #71, !noalias !94776
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 362
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !94773, !noundef !315
  %i.cg = icmp ult i16 %i.cd, %i.cf
  br i1 %i.cg, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i36.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i37.i.i.i.i = select i1 %.not.i36.i.i.i.i, i64 368, i64 464
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef %..i37.i.i.i.i, i64 noundef 8) #71, !noalias !94776
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #72
          to label %.noexc.i.i unwind label %bb.l, !noalias !94777

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #72, !noalias !94778
  unreachable

_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bm, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.al, align 8, !alias.scope !94769, !noalias !94770
  store i64 0, ptr %i.an, align 8, !alias.scope !94769, !noalias !94770
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !94769, !noalias !94770
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit, %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingReNtNtCs2bHstFFhpHt_17datafusion_common6config12ExtensionBoxE16deallocating_endNtNtBc_5alloc6GlobalECsc85D0lJ81Z_16lance_datafusion.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 129) %0, i64 noundef range(i64 1, 1777) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.a = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #71 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #72
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsc85D0lJ81Z_16lance_datafusion12logical_expr11coerce_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.618 = alloca [56 x i8], align 8          ; 6 uses
  %i.b = alloca [112 x i8], align 16              ; 5 uses
  %i.c = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.612 = alloca [56 x i8], align 8          ; 6 uses
  %i.d = alloca [112 x i8], align 16              ; 5 uses
  %i.e = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = load i64, ptr %1, align 16, !range !333, !noundef !315 ; 3 uses
  %i.h = icmp ne i64 %i.g, 35
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i64 %i.g, -3
  %i.j = icmp sgt i64 %i.g, 2
  %i.k = select i1 %i.j, i64 %i.i, i64 32
  switch i64 %i.k, label %bb.b [
    i64 3, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvXs12_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtCsc85D0lJ81Z_16lance_datafusion12logical_expr13resolve_value(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.l = load i64, ptr %i.a, align 16, !range !337, !noundef !315 ; 2 uses
  %i.m = icmp eq i64 %i.l, -2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.618, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false)
  br i1 %i.m, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !315, !noundef !315
  call void @_RNvNtCsc85D0lJ81Z_16lance_datafusion12logical_expr11coerce_expr(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  %i.q = load i64, ptr %i.e, align 16, !range !337, !noundef !315 ; 2 uses
  %i.r = icmp eq i64 %i.q, -2
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  br i1 %i.r, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.618, i64 56, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.529.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.618, i64 56, i1 false)
  store i64 %i.l, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  br label %bb.g

bb.g:                                             ; preds = %bb.w, %bb.u, %bb.f, %bb.e, %bb.b
  ret void

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 -2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.i:                                             ; preds = %bb.d
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.88.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.88.0..sroa_idx9, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.q, ptr %i.d, align 16
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !94785
  %i.v = tail call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !94785 ; 7 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.j, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE3newCsc85D0lJ81Z_16lance_datafusion.exit33, !prof !316

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.d) #73
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

common.resume:                                    ; preds = %bb.m, %.body, %bb.k, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.k ], [ %i.ai, %bb.p ], [ %i.al, %.body ], [ %i.ad, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE3newCsc85D0lJ81Z_16lance_datafusion.exit33: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.v, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false)
  store ptr %i.v, ptr %i.f, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !range !550, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 16, !nonnull !315, !noundef !315
  invoke void @_RNvNtCsc85D0lJ81Z_16lance_datafusion12logical_expr11coerce_expr(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE3newCsc85D0lJ81Z_16lance_datafusion.exit33
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #73
          to label %common.resume unwind label %bb.v

bb.n:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE3newCsc85D0lJ81Z_16lance_datafusion.exit33
  %i.ae = load i64, ptr %i.c, align 16, !range !337, !noundef !315 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.612, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 56, i1 false)
  br i1 %i.af, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.612, i64 56, i1 false)
  store i64 -2, ptr %0, align 16
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.v) #74
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.p, !noalias !94786, !inline_history !350

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef 112, i64 noundef 16) #71, !noalias !94786, !inline_history !350
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.o
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef 112, i64 noundef 16) #71, !noalias !94786, !inline_history !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612)
  br label %bb.w

bb.q:                                             ; preds = %bb.n
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.814.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.814.0..sroa_idx15, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.526.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ae, ptr %i.b, align 16
  %.sroa.612.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.612.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.612, i64 56, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !94787
  %i.aj = tail call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !94787 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.r, label %bb.u, !prof !316

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
          to label %.noexc34 unwind label %bb.s

.noexc34:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.b) #73
          to label %.body unwind label %bb.t
end_hunk_1
begin_hunk_2_@_RNvXsd_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a

bb.e:                                             ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.i, %.lr.ph.i.i
  %.sroa.012.038.i.i = phi ptr [ %.val, %.lr.ph.i.i ], [ %i.r, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.i ] ; 11 uses
  %.sroa.7.037.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.s, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.i ] ; 2 uses
  %.sroa.10.036.i.i = phi i64 [ %.val3, %.lr.ph.i.i ], [ %i.p, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.i ]
  %i.p = add nsw i64 %.sroa.10.036.i.i, -1        ; 2 uses
  %i.q = icmp eq ptr %.sroa.012.038.i.i, %i.o
  br i1 %i.q, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.038.i.i, i64 56
  %i.s = add nuw nsw i64 %.sroa.7.037.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120953)
  %i.t = load i64, ptr %.sroa.012.038.i.i, align 8, !range !318, !alias.scope !120954, !noalias !120955, !noundef !315 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.t, -1
  br i1 %.not.i.i.i, label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120956
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120958)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.038.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !120959, !noalias !120960, !nonnull !315, !noundef !315 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.038.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !120959, !noalias !120960, !noundef !315 ; 3 uses
  %i.y = atomicrmw add ptr %i.v, i64 1 monotonic, align 8, !noalias !120961
  %i.z = icmp slt i64 %i.y, 0                     ; 3 uses
  switch i64 %i.t, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  br i1 %i.z, label %bb.k, label %_RNvXse_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  br i1 %i.z, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.g
  br i1 %i.z, label %bb.p, label %bb.o

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.s, %bb.l
  %.sink18.i.sroa.phi.i.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i.i, %bb.s ], [ %.sink18.i.sroa.gep1.i.i.i, %bb.l ]
  %.sink16.i.i.i.i = phi ptr [ %i.ah, %bb.s ], [ %i.v, %bb.l ]
  %.sink15.i.sroa.phi.i.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i.i, %bb.s ], [ %.sink15.i.sroa.gep2.i.i.i, %bb.l ]
  %.sink13.i.i.i.i = phi i64 [ %i.aj, %bb.s ], [ %i.x, %bb.l ]
  %.sink12.ph.i.i.i.i = phi i64 [ 40, %bb.s ], [ 24, %bb.l ]
  %.sink10.ph.i.i.i.i = phi ptr [ %i.an, %bb.s ], [ %i.ab, %bb.l ]
  %.sink9.ph.i.i.i.i = phi i64 [ 48, %bb.s ], [ 32, %bb.l ]
  %.sink7.ph.i.i.i.i = phi i64 [ %i.ap, %bb.s ], [ %i.ad, %bb.l ]
  store ptr %.sink16.i.i.i.i, ptr %.sink18.i.sroa.phi.i.i.i, align 8, !alias.scope !120957, !noalias !120962
  store i64 %.sink13.i.i.i.i, ptr %.sink15.i.sroa.phi.i.i.i, align 8, !alias.scope !120957, !noalias !120962
  br label %_RNvXse_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i

bb.l:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.038.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !120959, !noalias !120960, !nonnull !315, !noundef !315 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.038.i.i, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !120959, !noalias !120960, !noundef !315
  %i.ae = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !120961
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.n, label %.sink.split.i.i.i.i

bb.m:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.038.i.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !120959, !noalias !120960, !nonnull !315, !noundef !315 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.038.i.i, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !120959, !noalias !120960, !noundef !315
  %i.ak = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8, !noalias !120961
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.038.i.i, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !120959, !noalias !120960, !nonnull !315, !noundef !315 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.038.i.i, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !120959, !noalias !120960, !noundef !315
  %i.aq = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !noalias !120961
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.q
  store ptr %i.v, ptr %.sink18.i.sroa.gep1.i.i.i, align 8, !alias.scope !120957, !noalias !120962
  store i64 %i.x, ptr %.sink15.i.sroa.gep2.i.i.i, align 8, !alias.scope !120957, !noalias !120962
  br label %.sink.split.i.i.i.i

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.h
  %.sink12.i.i.i.i = phi i64 [ 8, %bb.h ], [ %.sink12.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %.sink10.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ %.sink10.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %.sink9.i.i.i.i = phi i64 [ 16, %bb.h ], [ %.sink9.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %.sink7.i.i.i.i = phi i64 [ %i.x, %bb.h ], [ %.sink7.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink12.i.i.i.i
  store ptr %.sink10.i.i.i.i, ptr %i.as, align 8, !alias.scope !120957, !noalias !120962
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink9.i.i.i.i
  store i64 %.sink7.i.i.i.i, ptr %i.at, align 8, !alias.scope !120957, !noalias !120962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.515.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sink18.i.sroa.gep1.i.i.i, i64 48, i1 false), !noalias !120963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120956
  br label %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %_RNvXse_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i.i, %bb.f
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %.sroa.7.037.i.i ; 2 uses
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.422.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.515.i.i, i64 48, i1 false), !noalias !120964
  store i64 %i.t, ptr %i.au, align 8, !noalias !120964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515.i.i)
  %i.av = icmp eq i64 %i.p, 0
  br i1 %i.av, label %.loopexit, label %bb.e

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.y ], [ %i.ay, %bb.x ]
  %i.aw = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !120965
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc85D0lJ81Z_16lance_datafusion.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc85D0lJ81Z_16lance_datafusion.exit unwind label %bb.aa

bb.x:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit:                                        ; preds = %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.i, %bb.e, %bb.b
  %.sroa.5.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.m, %bb.e ], [ %i.m, %_RNvXs4_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceENtNtB7_5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion.exit.i.i ]
  store i64 %.val3, ptr %i.c, align 8, !alias.scope !120950, !noalias !120951
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !120950, !noalias !120951
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.val3, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !120950, !noalias !120951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4 = load ptr, ptr %i.az, align 8, !nonnull !315, !noundef !315
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5 = load i64, ptr %i.ba, align 8, !noundef !315
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common23functional_dependencies20FunctionalDependenceENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %.val4, i64 %.val5)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs2bHstFFhpHt_17datafusion_common15table_reference14TableReferenceEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #73
          to label %bb.v unwind label %bb.aa

bb.z:                                             ; preds = %.loopexit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.bd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.aa:                                            ; preds = %bb.w, %bb.y
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.v, %bb.w
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.b = tail call noalias noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 16) #71 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120969
  invoke fastcc void @_RNvXs12_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !120968

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !120969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120969
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 16) #71
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.b = tail call noalias noundef align 16 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 16) #71 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120973
  invoke fastcc void @_RNvXso_NtCs2bHstFFhpHt_17datafusion_common6scalarNtB5_11ScalarValueNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !120972

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !120973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120973
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #71
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120977
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !120976

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !120977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120977
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 328, i64 noundef 8) #71
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3400 x i8], align 8              ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(3400) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 3400, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3400) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120981
  invoke fastcc void @_RNvXsdw_NtCs40MM8ukkVQd_9sqlparser3astNtB6_9StatementNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(3400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(3400) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !120980

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3400) %i.b, ptr noundef nonnull align 8 dereferenceable(3400) %i.a, i64 3400, i1 false), !noalias !120981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120981
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs40MM8ukkVQd_9sqlparser3ast9StatementE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 3400, i64 noundef 8) #71
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120985
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.0.val)
          to label %bb.c unwind label %bb.d, !inline_history !120984

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !120985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120985
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 24, i64 noundef 8) #71
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11TableSampleENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i.i = alloca [320 x i8], align 8       ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [328 x i8], align 8               ; 4 uses
  %i.f = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 2 uses
  %i.g = alloca [488 x i8], align 8               ; 9 uses
  %i.h = alloca [88 x i8], align 8                ; 8 uses
  %i.i = alloca [336 x i8], align 8               ; 9 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.j = tail call noalias noundef align 8 dereferenceable_or_null(1248) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1248, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11TableSampleE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1248) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11TableSampleE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !nonnull !315, !noundef !315 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121013)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1240
  %.val.i = load i8, ptr %i.m, align 1, !range !327, !alias.scope !121013, !noalias !121014, !noundef !315
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1241
  %i.o = load i8, ptr %i.n, align 1, !range !547, !alias.scope !121013, !noalias !121014, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !121015
  %i.p = load i64, ptr %i.l, align 8, !range !347, !alias.scope !121013, !noalias !121014, !noundef !315
  %.not5.i = icmp eq i64 %i.p, -4
  br i1 %.not5.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11TableSampleE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121016)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  %i.r = load i8, ptr %i.q, align 8, !range !327, !alias.scope !121017, !noalias !121018, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !121019
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1248) %i.l)
          to label %.noexc unwind label %bb.z, !inline_history !120992

.noexc:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 329
  %i.t = load i8, ptr %i.s, align 1, !range !391, !alias.scope !121017, !noalias !121018, !noundef !315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.i, ptr noundef nonnull align 8 dereferenceable(328) %i.e, i64 328, i1 false), !noalias !121015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !121019
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  store i8 %i.r, ptr %.sroa.46.0..sroa_idx, align 8, !noalias !121015
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 329
  store i8 %i.t, ptr %.sroa.57.0..sroa_idx, align 1, !noalias !121015
  br label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11TableSampleE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  store i64 -4, ptr %i.i, align 8, !noalias !121015
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !121015
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 1152 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !376, !alias.scope !121013, !noalias !121014, !noundef !315
  %.not6.i = icmp eq i64 %i.v, -1
  br i1 %.not6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121020)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 1232
  %i.x = load i8, ptr %i.w, align 8, !range !327, !alias.scope !121021, !noalias !121022, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !121023
  invoke fastcc void @_RNvXso_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_5ValueNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.u)
          to label %_RNvXs8r_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i unwind label %bb.j, !noalias !121014, !inline_history !120992

_RNvXs8r_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 1200
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !121022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !121015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !121023
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i8 %i.x, ptr %.sroa.410.0..sroa_idx, align 8, !noalias !121015
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 -1, ptr %i.h, align 8, !noalias !121015
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs8r_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !121015
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 664 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !345, !alias.scope !121013, !noalias !121014, !noundef !315
  %.not7.i = icmp eq i64 %i.ab, -5
  br i1 %.not7.i, label %bb.r, label %bb.k

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %.body.i, %bb.t, %bb.j
  %.pn.pn.i = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %.pn.i, %bb.t ], [ %.pn.i, %.body.i ] ; 2 uses
  %i.ac = load i64, ptr %i.i, align 8, !range !347, !alias.scope !121024, !noalias !121015, !noundef !315
  %i.ad = icmp eq i64 %i.ac, -4
  br i1 %i.ad, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.i)
          to label %bb.ab unwind label %bb.y, !noalias !121014, !inline_history !120998

bb.j:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121025)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !121026
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 992
  invoke fastcc void @_RNvXso_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_5ValueNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.af)
          to label %.noexc14.i unwind label %bb.u

.noexc14.i:                                       ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1040
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !alias.scope !121027, !noalias !121014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !121026
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1072
  invoke fastcc void @_RNvXso_NtNtCs40MM8ukkVQd_9sqlparser3ast5valueNtB5_5ValueNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ai)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc14.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %.noexc14.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 1120
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !alias.scope !121028, !noalias !121029
  %i.am = load i64, ptr %i.aa, align 8, !range !347, !alias.scope !121030, !noalias !121029, !noundef !315
  %.not.i12.i = icmp eq i64 %i.am, -4
  br i1 %.not.i12.i, label %_RNvXs8Z_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121026
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.aa)
          to label %bb.p unwind label %bb.o, !noalias !121029, !inline_history !121008

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value5ValueECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.b), !noalias !121029
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 8, !noalias !121026
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx2.i.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121026
  br label %_RNvXs8Z_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i

bb.q:                                             ; preds = %bb.l, %bb.o
  %.pn.i.i = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.aj, %bb.l ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value5ValueECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.c), !noalias !121029
  br label %.body.i

_RNvXs8Z_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %bb.p, %bb.m
  %.sroa.0.0.i13.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.p ], [ -4, %bb.m ]
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !121015
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !121015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !121026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !121026
  store i64 %.sroa.0.0.i13.i, ptr %i.g, align 8, !noalias !121015
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i.i, i64 320, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.h
  store i64 -5, ptr %i.g, align 8, !noalias !121015
  br label %bb.s

bb.s:                                             ; preds = %_RNvXs8Z_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 336 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !347, !alias.scope !121013, !noalias !121014, !noundef !315
  %.not8.i = icmp eq i64 %i.ap, -4
  br i1 %.not8.i, label %bb.aa, label %bb.v

.body.i:                                          ; preds = %bb.q, %bb.u, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.at, %bb.w ], [ %i.as, %bb.u ], [ %.pn.i.i, %bb.q ] ; 2 uses
  %i.aq = load i64, ptr %i.h, align 8, !range !376, !alias.scope !121031, !noalias !121015, !noundef !315
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.t

bb.t:                                             ; preds = %.body.i
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5value5ValueECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.h), !noalias !121014, !inline_history !120992
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.u:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !121015
  invoke fastcc void @_RNvXs7L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_4ExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ao)
          to label %bb.x unwind label %bb.w, !noalias !121014, !inline_history !120992

bb.w:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17TableSampleBucketEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(488) %i.g) #73
          to label %.body.i unwind label %bb.y, !noalias !121014, !inline_history !120992

bb.x:                                             ; preds = %bb.v
  %.sroa.01.0.copyload2.i = load i64, ptr %i.f, align 8, !noalias !121015
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx3.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !121015
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !121014, !inline_history !120992
  unreachable

bb.z:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.s, %bb.x
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload2.i, %bb.x ], [ -4, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.j, ptr noundef nonnull align 8 dereferenceable(336) %i.i, i64 336, i1 false), !noalias !315
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false), !noalias !315
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(488) %i.g, i64 488, i1 false), !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !121015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !121015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !121015
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 336
  store i64 %.sroa.01.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !121032
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, i64 320, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1240
  store i8 %.val.i, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !121032
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1241
  store i8 %i.o, ptr %.sroa.9.0..sroa_idx, align 1, !noalias !121032
  ret ptr %i.j

bb.ab:                                            ; preds = %bb.z, %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.z ], [ %.pn.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query15TableSampleSeedEECsc85D0lJ81Z_16lance_datafusion.exit.i ], [ %.pn.pn.i, %bb.i ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 1248, i64 noundef 8) #71
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121036
  invoke fastcc void @_RNvXs1w_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_5QueryNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !121035

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.b, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false), !noalias !121036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121036
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 1400, i64 noundef 8) #71
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3408 x i8], align 8              ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(3408) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 3408, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3408) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121040
  invoke fastcc void @_RNvXs1Q_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_7SetExprNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(3408) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(3408) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !121039

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3408) %i.b, ptr noundef nonnull align 8 dereferenceable(3408) %i.a, i64 3408, i1 false), !noalias !121040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121040
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 3408, i64 noundef 8) #71
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit, !prof !316

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !315, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121044
  invoke fastcc void @_RNvXsh_NtNtCs40MM8ukkVQd_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d)
          to label %bb.c unwind label %bb.d, !inline_history !121043

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !121044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121044
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsc85D0lJ81Z_16lance_datafusion.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 56, i64 noundef 8) #71
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_planNtB5_12EmissionTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !391, !noundef !315 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsd_NtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_planNtB5_12EmissionTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsd_NtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_planNtB5_12EmissionTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.4335, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsd_NtCsc85D0lJ81Z_16lance_datafusion4execNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextNtB5_17SessionContextExt13read_one_shot(ptr dead_on_unwind noalias noundef writable sret([336 x i8]) align 16 captures(none) dereferenceable(336) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !315, !nonnull !315
  %i.j = invoke noundef nonnull ptr %i.i(ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.w       ; 5 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.j, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = invoke { ptr, ptr } @_RNvMsb_NtCsc85D0lJ81Z_16lance_datafusion4execNtB5_22OneShotPartitionStream3new(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, ptr } %i.k, 0
  %i.n = extractvalue { ptr, ptr } %i.k, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.n, ptr %i.q, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !121061
  %i.r = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !121061 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %bb.h, !prof !316

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #72
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCsc85D0lJ81Z_16lance_datafusion4exec22OneShotPartitionStreamEEB1i_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #73
          to label %bb.u unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.r, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.v = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit22, !prof !316

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #72
          to label %.noexc21 unwind label %bb.q

.noexc21:                                         ; preds = %bb.i
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit22: ; preds = %bb.h
  store ptr %i.r, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @4587, ptr %i.x, align 8
  store i64 1, ptr %i.c, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.z, align 8
  call void @_RNvMNtCs5q7AjagIPjV_18datafusion_catalog9streamingNtB2_14StreamingTable7try_new(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noundef nonnull %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = load i64, ptr %i.e, align 8, !range !334, !noundef !315 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false)
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 -1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.p

bb.k:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit22
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 1, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.aa, ptr %i.af, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !121062
  %i.ag = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !121062 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %bb.o, !prof !316

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #72
          to label %.noexc23 unwind label %bb.m

.noexc23:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs5q7AjagIPjV_18datafusion_catalog9streaming14StreamingTableEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #73
          to label %.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.o:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMs3_NtNtCseMy6uzTzNin_10datafusion9execution7contextNtB5_14SessionContext10read_table(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @4589)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
end_hunk_2
