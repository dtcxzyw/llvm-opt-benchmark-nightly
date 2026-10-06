Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontdrasil-bdef820a3e288df5.fontdrasil.bcdef5e85db49d1a-cgu.05?download=true
inline.NumInlined: 146
inline.NumDeleted: 74
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_11sort_by_keyB15_NCNvXs7_B1K_INtB1K_8LocationB2p_EINtNtBa_7convert4FromINtNtB2W_3vec3VecB14_EE4from0E0EB1M_:bb.a
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.u)
  %i.x = tail call i32 @llvm.ucmp.i32.i32(i32 %i.v, i32 %i.w) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.08.0.val12 = load i32, ptr %.sroa.08.0, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %.sroa.0.0.val13, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.sroa.08.0.val12, ptr %i.c, align 4
  %i.y = load i32, ptr %i.d, align 4
  %i.z = load i32, ptr %i.c, align 4
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ac = tail call i32 @llvm.ucmp.i32.i32(i32 %i.aa, i32 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ad = xor i32 %i.ac, %i.x
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1F_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_11sort_by_keyB10_NCNvXs7_B1F_INtB1F_8LocationB2k_EINtNtBa_7convert4FromINtNtB2R_3vec3VecBZ_EE4from0E0EB1H_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.04.0.val14, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.08.0.val12, ptr %i.a, align 4
  %i.af = load i32, ptr %i.b, align 4
  %i.ag = load i32, ptr %i.a, align 4
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.aj = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ah, i32 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ak = xor i32 %i.aj, %i.x
  %i.al = icmp slt i32 %i.ak, 0
  %..i = select i1 %i.al, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1F_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_11sort_by_keyB10_NCNvXs7_B1F_INtB1F_8LocationB2k_EINtNtBa_7convert4FromINtNtB2R_3vec3VecBZ_EE4from0E0EB1H_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1F_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_11sort_by_keyB10_NCNvXs7_B1F_INtB1F_8LocationB2k_EINtNtBa_7convert4FromINtNtB2R_3vec3VecBZ_EE4from0E0EB1H_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB14_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB14_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB14_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [120 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYB14_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 5 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.n = tail call noundef range(i8 0, 3) i8 @_RINvNtCsf3Ta7LF998c_4core3cmp21default_chaining_implNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyBO_NvMB2_NtB2_8Ordering5is_ltEBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.04.0) ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %i.n to i1
  br label %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.r = load i64, ptr %i.p, align 8, !alias.scope !140, !noalias !141, !noundef !4
  %i.s = load i64, ptr %i.q, align 8, !alias.scope !141, !noalias !140, !noundef !4
  %i.t = icmp ult i64 %i.r, %i.s
  br label %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit

_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i = phi i1 [ %i.o, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.u = tail call noundef range(i8 0, 3) i8 @_RINvNtCsf3Ta7LF998c_4core3cmp21default_chaining_implNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyBO_NvMB2_NtB2_8Ordering5is_ltEBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.08.0) ; 2 uses
  %.not.i.i12 = icmp eq i8 %i.u, 2
  br i1 %.not.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit
  %i.v = trunc nuw i8 %i.u to i1
  br label %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit14

bb.g:                                             ; preds = %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.y = load i64, ptr %i.w, align 8, !alias.scope !148, !noalias !149, !noundef !4
  %i.z = load i64, ptr %i.x, align 8, !alias.scope !149, !noalias !148, !noundef !4
  %i.aa = icmp ult i64 %i.y, %i.z
  br label %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit14

_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit14: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i13 = phi i1 [ %i.v, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i13
  br i1 %i.ab, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYBZ_NtNtBa_3cmp10PartialOrd2ltEB14_.exit, label %bb.h

bb.h:                                             ; preds = %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.ac = tail call noundef range(i8 0, 3) i8 @_RINvNtCsf3Ta7LF998c_4core3cmp21default_chaining_implNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyBO_NvMB2_NtB2_8Ordering5is_ltEBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.04.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.08.0) ; 2 uses
  %.not.i.i15 = icmp eq i8 %i.ac, 2
  br i1 %.not.i.i15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = trunc nuw i8 %i.ac to i1
  br label %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit17

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.ag = load i64, ptr %i.ae, align 8, !alias.scope !156, !noalias !157, !noundef !4
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !157, !noalias !156, !noundef !4
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br label %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit17

_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit17: ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i16 = phi i1 [ %i.ad, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i16
  %..i = select i1 %i.aj, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYBZ_NtNtBa_3cmp10PartialOrd2ltEB14_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENvYBZ_NtNtBa_3cmp10PartialOrd2ltEB14_.exit: ; preds = %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit14, %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit17
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit14 ], [ %..i, %_RNvYNvYTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15LocationSortKeyjENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB19_3ops8function5FnMutTRB5_B2g_EE8call_mutBa_.exit17 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYBW_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cy, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cw, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB13_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB13_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB13_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 1
  %i.s = load i32, ptr %i.o, align 1
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.s)
  %i.v = icmp ult i32 %i.t, %i.u                  ; 2 uses
  %.not23.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.v, label %.preheader.i, label %.preheader12.i

.preheader12.i:                                   ; preds = %bb.k
  br i1 %.not23.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not23.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i, label %.lr.ph18.i

.lr.ph.i:                                         ; preds = %.preheader12.i, %bb.l
  %.sroa.01.0.i14.i = phi i64 [ %i.ac, %bb.l ], [ 2, %.preheader12.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i14.i
  %6 = add nsw i64 %.sroa.01.0.i14.i, -1          ; 2 uses
  %7 = icmp samesign ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %6
  %i.x = load i32, ptr %i.w, align 1
  %i.y = load i32, ptr %8, align 1
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.ab = icmp ult i32 %i.z, %i.aa
  br i1 %i.ab, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ac = add nuw nsw i64 %.sroa.01.0.i14.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit.i, label %.lr.ph.i

.lr.ph18.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i17.i = phi i64 [ %i.aj, %bb.m ], [ 2, %.preheader.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i17.i
  %9 = add nsw i64 %.sroa.01.1.i17.i, -1          ; 2 uses
  %10 = icmp samesign ult i64 %9, %i.n
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %9
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = load i32, ptr %11, align 1
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ai = icmp ult i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit.i

bb.m:                                             ; preds = %.lr.ph18.i
  %i.aj = add nuw nsw i64 %.sroa.01.1.i17.i, 1    ; 2 uses
  %exitcond26.not.i = icmp eq i64 %i.aj, %i.n
  br i1 %exitcond26.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit.i, label %.lr.ph18.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph18.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.m ], [ %.sroa.01.1.i17.i, %.lr.ph18.i ], [ %.sroa.01.0.i14.i, %.lr.ph.i ], [ %i.n, %bb.l ] ; 6 uses
  %i.ak = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ak)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB12_NtNtB8_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit.i
  br i1 %i.v, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i

bb.o:                                             ; preds = %bb.i
  %i.al = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 2305843009213693952) %i.n)
  %i.am = shl nuw nsw i64 %i.al, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB13_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit

bb.p:                                             ; preds = %bb.i
  %i.an = tail call i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB15_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull %i.o, i64 noundef %i.an, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #15
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB13_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i.epil.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i.loopexit.unr-lcssa, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i ], [ %i.bg, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.aq = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i.epil.init ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %i.ax, i64 %i.aq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.epil = load i32, ptr %i.ar, align 1, !alias.scope !174, !noalias !175
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.epil = load i32, ptr %i.as, align 1, !alias.scope !176, !noalias !177
  store i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.epil, ptr %i.ar, align 1, !alias.scope !174, !noalias !175
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.epil, ptr %i.as, align 1, !alias.scope !176, !noalias !177
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i.epil.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i.loopexit.unr-lcssa, %.preheader12.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i9.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader12.i ], [ %.sroa.0.0.i344145.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i344145.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i.epil.preheader ]
  %i.at = shl nuw nsw i64 %.sroa.0.0.i9.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB13_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit

bb.q:                                             ; preds = %bb.n
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.aw = phi i64 [ %i.av, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i344145.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i344145.i ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.aw, 1
  br i1 %i.ay, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i.epil.preheader, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i.new

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.aw, 9223372036854775806
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i.new ], [ %i.bg, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i ]
  %i.az = xor i64 %.sroa.0.016.i.i.i, -1
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.ba, align 1, !alias.scope !174, !noalias !175
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.bb, align 1, !alias.scope !176, !noalias !177
  store i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i, ptr %i.ba, align 1, !alias.scope !174, !noalias !175
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %i.bb, align 1, !alias.scope !176, !noalias !177
  %i.bc = xor i64 %.sroa.0.016.i.i.i, -2
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.ax, i64 %i.bc ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.be, align 1, !alias.scope !182, !noalias !183
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.bf, align 1, !alias.scope !184, !noalias !185
  store i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.1, ptr %i.be, align 1, !alias.scope !182, !noalias !183
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1, ptr %i.bf, align 1, !alias.scope !184, !noalias !185
  %i.bg = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB13_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.au, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types3tag3Tag7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i ], [ %i.ap, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw nsw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit
  %.sroa.02.136 = phi i64 [ %i.bq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bq = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !4 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 5 uses
  %i.by = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 5 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ca ; 3 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.135 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.135
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cd, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB15_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull %i.cb, i64 noundef range(i64 0, 2305843009213693952) %i.bx, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #15
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB15_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull %i.cn, i64 noundef range(i64 0, 2305843009213693952) %i.by, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYBX_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull %i.cb, i64 noundef range(i64 0, 2305843009213693952) %i.bz, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef %i.bx, ptr noalias nofree noundef nonnull %5)
  %i.ct = shl nuw nsw i64 %i.bz, 1
  %i.cu = or disjoint i64 %i.ct, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cu, %bb.x ], [ %i.ch, %bb.t ] ; 2 uses
  %i.cv = icmp ugt i64 %i.bq, 1
  br i1 %i.cv, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cw = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cx = lshr i64 %.sroa.018.0, 1
  %i.cy = add nuw nsw i64 %i.cx, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cz = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cz, 0
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBX_ENvYBW_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil:bb.a
_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i: ; preds = %bb.q
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i ; 3 uses
  %i.bf = icmp eq i64 %i.bd, 1
  br i1 %i.bf, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i.epil.preheader, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i.new

_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.bd, 9223372036854775806
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i.new ], [ %i.bp, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i ]
  %i.bg = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bi = getelementptr [16 x i8], ptr %i.be, i64 %i.bg ; 2 uses
  %i.bj = load <2 x double>, ptr %i.bh, align 8, !alias.scope !247, !noalias !248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !alias.scope !249, !noalias !226
  store <2 x double> %i.bj, ptr %i.bi, align 8, !alias.scope !250, !noalias !251
  %i.bk = xor i64 %.sroa.0.016.i.i.i, -2
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bn = getelementptr [16 x i8], ptr %i.be, i64 %i.bk ; 2 uses
  %i.bo = load <2 x double>, ptr %i.bm, align 8, !alias.scope !247, !noalias !248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !alias.scope !249, !noalias !226
  store <2 x double> %i.bo, ptr %i.bn, align 8, !alias.scope !250, !noalias !251
  %i.bp = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E12split_at_mutCsgdm2QMcbaeA_10fontdrasil.exit11.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB14_ENvYB13_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bc, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBv_E7reverseCsgdm2QMcbaeA_10fontdrasil.exit.i ], [ %i.av, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.bq = lshr i64 %.sroa.023.0, 1
  %i.br = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bs = sub nsw i64 %factor, %i.bq
  %i.bt = add nuw nsw i64 %i.br, %factor
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = mul i64 %i.bt, %.sroa.0.0
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB17_ENvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit
  %.sroa.02.136 = phi i64 [ %i.bz, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB17_ENvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB17_ENvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bz = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.cb, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB17_ENvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB17_ENvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB17_ENvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cd, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !4 ; 3 uses
  %i.cg = lshr i64 %i.cf, 1                       ; 5 uses
  %i.ch = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.ci = add nuw i64 %i.cg, %i.ch                ; 5 uses
  %i.cj = sub i64 %.sroa.09.0, %i.ci
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cj ; 3 uses
  %i.cl = icmp samesign ugt i64 %i.ci, %3
  %i.cm = trunc i64 %.sroa.023.135 to i1
  %i.cn = or i64 %i.cf, %.sroa.023.135
  %i.co = trunc i64 %i.cn to i1
  %or.cond3.i = or i1 %i.cl, %i.co
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = trunc i64 %i.cf to i1
  br i1 %i.cp, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cq = shl nuw nsw i64 %i.ci, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB17_ENvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cm, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cr = or i64 %i.cg, 1
  %i.cs = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB16_ENvYB15_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 576460752303423488) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #15
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cg
  %i.cx = or i64 %i.ch, 1
  %i.cy = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB16_ENvYB15_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 %i.cw, i64 noundef range(i64 0, 576460752303423488) %i.ch, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBY_ENvYBX_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 576460752303423488) %i.ci, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.cg, ptr noalias nofree noundef nonnull %5)
  %i.dc = shl nuw nsw i64 %i.ci, 1
  %i.dd = or disjoint i64 %i.dc, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB17_ENvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB17_ENvYB16_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dd, %bb.x ], [ %i.cq, %bb.t ] ; 2 uses
  %i.de = icmp ugt i64 %i.bz, 1
  br i1 %i.de, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.df = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dg = lshr i64 %.sroa.018.0, 1
  %i.dh = add nuw nsw i64 %i.dg, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.di = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.di, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dj = or i64 %1, 1
  %i.dk = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEB16_ENvYB15_NtNtBa_3cmp10PartialOrd2ltECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1C_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCNvXs7_B1C_INtB1C_8LocationB2h_EINtNtBa_7convert4FromINtNtB2O_3vec3VecBW_EE4from0E0EB1E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [66 x i8], align 1                ; 4 uses
  %i.h = alloca [528 x i8], align 8               ; 4 uses
  %i.i = icmp samesign ult i64 %1, 2
  br i1 %i.i, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = udiv i64 4611686018427387904, %1
  %i.k = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.k, 0
  %i.l = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.j, %i.l         ; 2 uses
  %i.m = icmp samesign ult i64 %1, 4097
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %1, 1
  %i.p = sub nuw nsw i64 %1, %i.o
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.p, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.q, %bb.d ], [ %i.n, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cx, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 3 uses
  %i.r = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2V_3vec3VecB13_EE4from0E0EB1L_.exit
  %.sroa.021.0 = phi i8 [ %i.bo, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2V_3vec3VecB13_EE4from0E0EB1L_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2V_3vec3VecB13_EE4from0E0EB1L_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.s = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.s, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.t = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %.not.i31 = icmp ult i64 %i.t, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2U_3vec3VecB12_EE4from0E0EB1K_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.v = icmp samesign ult i64 %i.t, 2
  br i1 %i.v, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_15NormalizedSpaceEE7reverseB1c_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val7.i = load i32, ptr %i.w, align 8, !alias.scope !258, !noalias !259 ; 3 uses
  %.val8.i = load i32, ptr %i.u, align 8, !alias.scope !258, !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !260
  store i32 %.val7.i, ptr %i.f, align 4, !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !260
  store i32 %.val8.i, ptr %i.e, align 4, !noalias !260
  %i.x = load i32, ptr %i.f, align 4
  %i.y = load i32, ptr %i.e, align 4
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.ab = icmp uge i32 %i.z, %i.aa                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !260
  %.not28.i = icmp eq i64 %i.t, 2                 ; 2 uses
  br i1 %i.ab, label %.preheader17.i, label %.preheader.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_15NormalizedSpaceEE7reverseB1c_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi i32 [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.ai, %bb.l ], [ 2, %.preheader17.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.01.0.i19.i
  %6 = add nsw i64 %.sroa.01.0.i19.i, -1
  %7 = icmp samesign ult i64 %6, %i.t
  tail call void @llvm.assume(i1 %7)
  %.val5.i = load i32, ptr %i.ac, align 8, !alias.scope !258, !noalias !259 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !260
  store i32 %.val5.i, ptr %i.d, align 4, !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !260
  store i32 %.val6.i, ptr %i.c, align 4, !noalias !260
  %i.ad = load i32, ptr %i.d, align 4
  %i.ae = load i32, ptr %i.c, align 4
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ah = icmp ult i32 %i.af, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !260
  br i1 %i.ah, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2U_3vec3VecB12_EE4from0E0EB1K_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ai = add nuw nsw i64 %.sroa.01.0.i19.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.t
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2U_3vec3VecB12_EE4from0E0EB1K_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi i32 [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.ap, %bb.m ], [ 2, %.preheader.i ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.01.1.i22.i
  %8 = add nsw i64 %.sroa.01.1.i22.i, -1
  %9 = icmp samesign ult i64 %8, %i.t
  tail call void @llvm.assume(i1 %9)
  %.val.i = load i32, ptr %i.aj, align 8, !alias.scope !258, !noalias !259 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  store i32 %.val.i, ptr %i.b, align 4, !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !260
  store i32 %.val4.i, ptr %i.a, align 4, !noalias !260
  %i.ak = load i32, ptr %i.b, align 4
  %i.al = load i32, ptr %i.a, align 4
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.ao = icmp ult i32 %i.am, %i.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2U_3vec3VecB12_EE4from0E0EB1K_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i22.i, 1    ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ap, %i.t
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2U_3vec3VecB12_EE4from0E0EB1K_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2U_3vec3VecB12_EE4from0E0EB1K_.exit.i: ; preds = %bb.m, %.lr.ph23.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.t, %bb.l ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %i.t, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.t
  tail call void @llvm.assume(i1 %i.aq)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2U_3vec3VecB12_EE4from0E0EB1K_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %or.cond.i = or i1 %i.ab, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_15NormalizedSpaceEE7reverseB1c_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.as = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 576460752303423488) %i.t)
  %i.at = shl nuw nsw i64 %i.as, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2V_3vec3VecB13_EE4from0E0EB1L_.exit

bb.p:                                             ; preds = %bb.i
  %i.au = tail call i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.t, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2X_3vec3VecB15_EE4from0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %i.u, i64 noundef %i.au, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15
  %i.av = shl nuw nsw i64 %i.au, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2V_3vec3VecB13_EE4from0E0EB1L_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_15NormalizedSpaceEE7reverseB1c_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_15NormalizedSpaceEEEB1I_.exit.i.i.i, %.preheader17.i, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.t, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i435054.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_15NormalizedSpaceEEEB1I_.exit.i.i.i ]
  %i.ax = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.ay = or disjoint i64 %i.ax, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2V_3vec3VecB13_EE4from0E0EB1L_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.az = phi i64 [ %i.ar, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i435054.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.0.0.i435054.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_15NormalizedSpaceEEEB1I_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bf, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_15NormalizedSpaceEEEB1I_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bb = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.0.017.i.i.i
  %i.bd = getelementptr [16 x i8], ptr %i.ba, i64 %i.bb
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsgdm2QMcbaeA_10fontdrasil(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, i64 noundef 2)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_15NormalizedSpaceEEEB1I_.exit.i.i.i unwind label %bb.q, !noalias !259

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #14, !noalias !259
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_15NormalizedSpaceEEEB1I_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bf = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bf, %i.az
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_15NormalizedSpaceEE7reverseB1c_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2V_3vec3VecB13_EE4from0E0EB1L_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_15NormalizedSpaceEE7reverseB1c_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ay, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_15NormalizedSpaceEE7reverseB1c_.exit.i ], [ %i.aw, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.bg = lshr i64 %.sroa.023.0, 1
  %i.bh = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bi = sub nsw i64 %factor, %i.bg
  %i.bj = add nuw i64 %i.bh, %factor
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 false)
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2Y_3vec3VecB16_EE4from0E0EB1O_.exit
  %.sroa.02.136 = phi i64 [ %i.bp, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2Y_3vec3VecB16_EE4from0E0EB1O_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2Y_3vec3VecB16_EE4from0E0EB1O_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bp = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.br, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2Y_3vec3VecB16_EE4from0E0EB1O_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2Y_3vec3VecB16_EE4from0E0EB1O_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2Y_3vec3VecB16_EE4from0E0EB1O_.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bt, align 1
  br i1 %i.r, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !4 ; 3 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 5 uses
  %i.bx = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.by = add nuw i64 %i.bw, %i.bx                ; 5 uses
  %i.bz = sub i64 %.sroa.09.0, %i.by
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bz ; 3 uses
  %i.cb = icmp samesign ugt i64 %i.by, %3
  %i.cc = trunc i64 %.sroa.023.135 to i1
  %i.cd = or i64 %i.bv, %.sroa.023.135
  %i.ce = trunc i64 %i.cd to i1
  %or.cond3.i = or i1 %i.cb, %i.ce
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cf = trunc i64 %i.bv to i1
  br i1 %i.cf, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cg = shl nuw nsw i64 %i.by, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2Y_3vec3VecB16_EE4from0E0EB1O_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cc, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ch = or i64 %i.bw, 1
  %i.ci = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2X_3vec3VecB15_EE4from0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 576460752303423488) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.bw
  %i.cn = or i64 %i.bx, 1
  %i.co = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = xor i32 %i.cq, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2X_3vec3VecB15_EE4from0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %i.cm, i64 noundef range(i64 0, 576460752303423488) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2P_3vec3VecBX_EE4from0E0EB1F_(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 576460752303423488) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bw, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cs = shl nuw nsw i64 %i.by, 1
  %i.ct = or disjoint i64 %i.cs, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2Y_3vec3VecB16_EE4from0E0EB1O_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2Y_3vec3VecB16_EE4from0E0EB1O_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ct, %bb.x ], [ %i.cg, %bb.t ] ; 2 uses
  %i.cu = icmp ugt i64 %i.bp, 1
  br i1 %i.cu, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cv = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cw = lshr i64 %.sroa.018.0, 1
  %i.cx = add nuw nsw i64 %i.cw, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cy = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cy, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cz = or i64 %1, 1
  %i.da = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cz, i1 true)
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 1
  %i.dd = xor i32 %i.dc, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_15NormalizedSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2X_3vec3VecB15_EE4from0E0EB1N_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_15NormalizedSpaceEEB1K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_1
