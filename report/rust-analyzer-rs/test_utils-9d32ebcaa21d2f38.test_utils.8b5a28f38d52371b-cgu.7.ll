Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/test_utils-9d32ebcaa21d2f38.test_utils.8b5a28f38d52371b-cgu.7?download=true
inline.NumInlined: 87
inline.NumDeleted: 72
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterTddEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1y_8for_each4callB1s_NCINvNvNtB1C_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEB3q_EB1s_E0E0ECsbXLDOPgjE5X_10test_utils:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val8.i = load double, ptr %i.f, align 8, !noalias !29, !noundef !5
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load double, ptr %i.g, align 8, !noalias !29, !noundef !5
  tail call void @_RNvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits7collectTINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEBP_EINtB5_6ExtendTddEE10extend_oneCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, double noundef %.val8.i, double noundef %.val9.i)
  %i.h = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.e
  br i1 %i.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTddEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters6copied9copy_foldBQ_uNCINvNvBV_8for_each4callBQ_NCINvNvNtBZ_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEB3y_EBQ_E0E0E0ECsbXLDOPgjE5X_10test_utils.exit, label %bb.c

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTddEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters6copied9copy_foldBQ_uNCINvNvBV_8for_each4callBQ_NCINvNvNtBZ_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEB3y_EBQ_E0E0E0ECsbXLDOPgjE5X_10test_utils.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !40 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !41, !nonnull !5, !noundef !5 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noalias !41, !noundef !5 ; 11 uses
  %i.c = icmp samesign ult i64 %.val1.i, 17
  br i1 %i.c, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %.val1.i, 7
  br i1 %i.d, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i.i, label %bb.c

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i: ; preds = %bb.a
  %i.e = add i64 %.val1.i, -17                    ; 2 uses
  %i.f = lshr i64 %i.e, 4                         ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i.epil.preheader, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i.new

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i.new: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i
  %unroll_iter = and i64 %i.g, 2305843009213693950
  br label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i.new
  %.sroa.0.090.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i.new ], [ %i.r, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i.new ], [ %i.ab, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i = phi ptr [ %.val.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i.new ], [ %i.s, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i, align 1, !alias.scope !42, !noalias !43
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i = load i64, ptr %i.j, align 1, !alias.scope !42, !noalias !43
  %i.k = xor i64 %.sroa.037.0.copyload.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i
  %i.l = xor i64 %.sroa.039.0.copyload.i.i.i.i.i, -6626703657320631856
  %i.m = zext i64 %i.k to i128
  %i.n = zext i64 %i.l to i128
  %i.o = mul nuw i128 %i.n, %i.m                  ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64                   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.i, align 1, !alias.scope !42, !noalias !43
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.t, align 1, !alias.scope !42, !noalias !43
  %i.u = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i
  %i.v = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.1, -6626703657320631856
  %i.w = zext i64 %i.u to i128
  %i.x = zext i64 %i.v to i128
  %i.y = mul nuw i128 %i.x, %i.w                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i.unr-lcssa, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i
  %i.ac = and i64 %i.e, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i.epil.preheader, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i.unr-lcssa, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i ], [ %i.r, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i ], [ %i.ab, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.epil.init = phi ptr [ %.val.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.preheader.i.i.i.i.i ], [ %i.s, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %.sroa.037.0.copyload.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.epil.init, align 1, !alias.scope !42, !noalias !43
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.epil = load i64, ptr %i.ad, align 1, !alias.scope !42, !noalias !43
  %i.ae = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.epil.init
  %i.af = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.epil, -6626703657320631856
  %i.ag = zext i64 %i.ae to i128
  %i.ah = zext i64 %i.af to i128
  %i.ai = mul nuw i128 %i.ah, %i.ag               ; 2 uses
  %i.aj = lshr i128 %i.ai, 64
  %i.ak = xor i128 %i.aj, %i.ai
  %i.al = trunc i128 %i.ak to i64
  br label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i.unr-lcssa, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.lcssa = phi i64 [ %i.r, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.epil.init, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.ab, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i.unr-lcssa ], [ %i.al, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit74.i.i.i.i.i.epil.preheader ]
  %i.am = getelementptr i8, ptr %.val.i, i64 %.val1.i ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i = load i64, ptr %i.an, align 1, !alias.scope !42, !noalias !43
  %i.ao = xor i64 %.sroa.041.0.copyload.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.lcssa
  %i.ap = getelementptr i8, ptr %i.am, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i = load i64, ptr %i.ap, align 1, !alias.scope !42, !noalias !43
  %i.aq = xor i64 %.sroa.043.0.copyload.i.i.i.i.i, %.lcssa
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsbXLDOPgjE5X_10test_utils.exit

bb.c:                                             ; preds = %bb.b
  %i.ar = icmp samesign ugt i64 %.val1.i, 3
  br i1 %i.ar, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i.i, label %bb.d

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i.i: ; preds = %bb.b
  %.sroa.028.0.copyload.i.i.i.i.i = load i64, ptr %.val.i, align 1, !alias.scope !42, !noalias !43
  %i.as = xor i64 %.sroa.028.0.copyload.i.i.i.i.i, 2611923443488327891
  %i.at = getelementptr i8, ptr %.val.i, i64 %.val1.i
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i = load i64, ptr %i.au, align 1, !alias.scope !42, !noalias !43
  %i.av = xor i64 %.sroa.030.0.copyload.i.i.i.i.i, 1376283091369227076
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsbXLDOPgjE5X_10test_utils.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %.val1.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsbXLDOPgjE5X_10test_utils.exit, label %bb.e

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aw = getelementptr i8, ptr %.val.i, i64 %.val1.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i = load i32, ptr %i.ax, align 1, !alias.scope !42, !noalias !43
  %.sroa.032.0.copyload.i.i.i.i.i = load i32, ptr %.val.i, align 1, !alias.scope !42, !noalias !43
  %i.ay = zext i32 %.sroa.032.0.copyload.i.i.i.i.i to i64
  %i.az = xor i64 %i.ay, 2611923443488327891
  %i.ba = zext i32 %.sroa.033.0.copyload.i.i.i.i.i to i64
  %i.bb = xor i64 %i.ba, 1376283091369227076
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsbXLDOPgjE5X_10test_utils.exit

bb.e:                                             ; preds = %bb.d
  %i.bc = load i8, ptr %.val.i, align 1, !alias.scope !42, !noalias !43, !noundef !5
  %i.bd = lshr i64 %.val1.i, 1
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !42, !noalias !43, !noundef !5
  %i.bg = getelementptr i8, ptr %.val.i, i64 %.val1.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !42, !noalias !43, !noundef !5
  %i.bj = zext i8 %i.bc to i64
  %i.bk = xor i64 %i.bj, 2611923443488327891
  %i.bl = zext i8 %i.bi to i64
  %i.bm = shl nuw nsw i64 %i.bl, 8
  %i.bn = zext i8 %i.bf to i64
  %i.bo = or disjoint i64 %i.bm, %i.bn
  %i.bp = xor i64 %i.bo, 1376283091369227076
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsbXLDOPgjE5X_10test_utils.exit

_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsbXLDOPgjE5X_10test_utils.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i.i, %bb.d, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i.i, %bb.e
  %.sroa.06.1.i.i.i.i.i = phi i64 [ %i.av, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i.i ], [ %i.bb, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i.i ], [ %i.bp, %bb.e ], [ 1376283091369227076, %bb.d ], [ %i.aq, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.as, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i.i ], [ %i.az, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit.i.i.i.i.i ], [ %i.bk, %bb.e ], [ 2611923443488327891, %bb.d ], [ %i.ao, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbXLDOPgjE5X_10test_utils.exit70.i.i.i.i.i ]
  %i.bq = zext i64 %.sroa.0.1.i.i.i.i.i to i128
  %i.br = zext i64 %.sroa.06.1.i.i.i.i.i to i128
  %i.bs = mul nuw i128 %i.bq, %i.br               ; 2 uses
  %i.bt = lshr i128 %i.bs, 64
  %i.bu = xor i128 %i.bt, %i.bs
  %i.bv = trunc i128 %i.bu to i64
  %i.bw = xor i64 %.val1.i, %i.bv
  %i.bx = mul i64 %i.bw, 1452335207727870361
  %i.by = add i64 %i.bx, 4919460506697669435      ; 2 uses
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 26)
  ret i64 %i.bz
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCsbXLDOPgjE5X_10test_utils13assert_linearNtB2_12AssertLinear10next_round(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !91 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [56 x i8], align 8                ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 9 uses
  %.not = icmp eq i64 %i.t, 0
  %.pre = load ptr, ptr %i.r, align 8             ; 4 uses
  br i1 %.not, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr [56 x i8], ptr %.pre, i64 %i.t ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.v = getelementptr i8, ptr %i.u, i64 -48
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !92, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -40
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !92, !noundef !5
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  store i64 0, ptr %i.a, align 8, !alias.scope !94, !noalias !93
  %.sroa.4.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !alias.scope !94, !noalias !93
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i, i8 0, i64 16, i1 false), !alias.scope !94, !noalias !93
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !94, !noalias !93
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !94, !noalias !93
  invoke void @_RNvXs_NvNtNtNtCshzWfHUSfYae_4core4iter6traits7collect14default_extendTINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEB16_EINtB4_10SpecExtendINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterTddEEEE6extendCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.w, ptr noundef nonnull %i.z)
          to label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterTddEEENtNtNtBa_6traits8iterator8Iterator5unzipddINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEB29_ECsbXLDOPgjE5X_10test_utils.exit.i unwind label %bb.c, !noalias !93

bb.c:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEBC_EECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #19
          to label %common.resume unwind label %bb.d, !noalias !93

bb.d:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !93
  unreachable

common.resume:                                    ; preds = %bb.an, %bb.c, %.body93.i, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body93.i ], [ %i.kf, %bb.af ], [ %i.aa, %bb.c ], [ %i.kw, %bb.an ]
  resume { ptr, i32 } %common.resume.op

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterTddEEENtNtNtBa_6traits8iterator8Iterator5unzipddINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEB29_ECsbXLDOPgjE5X_10test_utils.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !92
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !92, !nonnull !5, !noundef !5 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !92, !noundef !5 ; 3 uses
  %.idx.i.i = shl i64 %i.ag, 3                    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i.i
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %.invoke.i, label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterTddEEENtNtNtBa_6traits8iterator8Iterator5unzipddINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEB29_ECsbXLDOPgjE5X_10test_utils.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 5 uses
  %i.ak = load double, ptr %i.ae, align 8, !alias.scope !95, !noalias !96, !noundef !5 ; 3 uses
  %i.al = icmp eq i64 %i.ag, 1
  br i1 %i.al, label %.lr.ph.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %gepdiff.i.i = add i64 %.idx.i.i, -8
  %i.am = lshr exact i64 %gepdiff.i.i, 3          ; 3 uses
  %i.an = add nsw i64 %i.am, -1
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.ao = icmp ult i64 %i.an, 3
  br i1 %i.ao, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.f
  %unroll_iter = and i64 %i.am, 2305843009213693948
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.3, %.new
  %.sroa.04.0.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.bi, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.3 ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i = phi double [ %i.ak, %.new ], [ %i.bh, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.3 ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.3 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.04.0.i.i.i.i.i
  %.val.i.i.i.i.i = load double, ptr %i.ap, align 8, !alias.scope !95, !noalias !92, !noundef !5 ; 3 uses
  %i.aq = fcmp ugt double %.sroa.02.0.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.aq, label %bb.h, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ar = fcmp ult double %.sroa.02.0.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.ar, label %.invoke.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i, !prof !6

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.as = phi double [ %.sroa.02.0.i.i.i.i.i, %bb.h ], [ %.val.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.04.0.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.val.i.i.i.i.i.1 = load double, ptr %i.au, align 8, !alias.scope !95, !noalias !92, !noundef !5 ; 3 uses
  %i.av = fcmp ugt double %i.as, %.val.i.i.i.i.i.1
  br i1 %i.av, label %bb.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.1

bb.i:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i
  %i.aw = fcmp ult double %i.as, %.val.i.i.i.i.i.1
  br i1 %i.aw, label %.invoke.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.1, !prof !6

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.1: ; preds = %bb.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i
  %i.ax = phi double [ %i.as, %bb.i ], [ %.val.i.i.i.i.i.1, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.04.0.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.val.i.i.i.i.i.2 = load double, ptr %i.az, align 8, !alias.scope !95, !noalias !92, !noundef !5 ; 3 uses
  %i.ba = fcmp ugt double %i.ax, %.val.i.i.i.i.i.2
  br i1 %i.ba, label %bb.j, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.2

bb.j:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.1
  %i.bb = fcmp ult double %i.ax, %.val.i.i.i.i.i.2
  br i1 %i.bb, label %.invoke.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.2, !prof !6

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.2: ; preds = %bb.j, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.1
  %i.bc = phi double [ %i.ax, %bb.j ], [ %.val.i.i.i.i.i.2, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.1 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.04.0.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.val.i.i.i.i.i.3 = load double, ptr %i.be, align 8, !alias.scope !95, !noalias !92, !noundef !5 ; 3 uses
  %i.bf = fcmp ugt double %i.bc, %.val.i.i.i.i.i.3
  br i1 %i.bf, label %bb.k, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.3

bb.k:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.2
  %i.bg = fcmp ult double %i.bc, %.val.i.i.i.i.i.3
  br i1 %i.bg, label %.invoke.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.3, !prof !6

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.3: ; preds = %bb.k, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.2
  %i.bh = phi double [ %i.bc, %bb.k ], [ %.val.i.i.i.i.i.3, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.2 ] ; 3 uses
  %i.bi = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i.i.i.loopexit.unr-lcssa, label %bb.g

.lr.ph.i.i.i.loopexit.unr-lcssa:                  ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i.i.i.loopexit.unr-lcssa, %bb.f
  %.sroa.04.0.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %i.bi, %.lr.ph.i.i.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.epil.init = phi double [ %i.ak, %bb.f ], [ %i.bh, %.lr.ph.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod74)
  br label %bb.l

bb.l:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.epil, %.epil.preheader
  %.sroa.04.0.i.i.i.i.i.epil = phi i64 [ %.sroa.04.0.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.bn, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.epil ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.epil = phi double [ %.sroa.02.0.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.bm, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.epil ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.04.0.i.i.i.i.i.epil
  %.val.i.i.i.i.i.epil = load double, ptr %i.bj, align 8, !alias.scope !95, !noalias !92, !noundef !5 ; 3 uses
  %i.bk = fcmp ugt double %.sroa.02.0.i.i.i.i.i.epil, %.val.i.i.i.i.i.epil
  br i1 %i.bk, label %bb.m, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.epil

bb.m:                                             ; preds = %bb.l
  %i.bl = fcmp ult double %.sroa.02.0.i.i.i.i.i.epil, %.val.i.i.i.i.i.epil
  br i1 %i.bl, label %.invoke.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.epil, !prof !6

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.epil: ; preds = %bb.m, %bb.l
  %i.bm = phi double [ %.sroa.02.0.i.i.i.i.i.epil, %bb.m ], [ %.val.i.i.i.i.i.epil, %bb.l ] ; 2 uses
  %i.bn = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i.i.i, label %bb.l, !llvm.loop !54

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.loopexit.unr-lcssa, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.epil, %bb.e
  %.sroa.3.0.i.ph6.i.i = phi double [ %i.ak, %bb.e ], [ %i.bh, %.lr.ph.i.i.i.loopexit.unr-lcssa ], [ %i.bm, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied9copy_foldddNCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4folddNCNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB22_5Round6finish9normalize0E0E0B24_.exit.i.i.i.i.i.epil ] ; 2 uses
  %i.bo = add i64 %.idx.i.i, -8                   ; 2 uses
  %i.bp = lshr exact i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.bo, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %i.bq, 4611686018427387902     ; 3 uses
  %i.br = shl i64 %n.vec, 3
  %i.bs = getelementptr i8, ptr %i.ae, i64 %i.br
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.sroa.3.0.i.ph6.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.bt ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !97, !noalias !98
  %i.bu = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.bu, ptr %next.gep, align 8, !alias.scope !97, !noalias !98
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_RNvNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB7_5Round6finish9normalize.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.sroa.0.02.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.bs, %middle.block ]
  br label %scalar.ph
end_hunk_0
begin_hunk_1_@_RNvMNtCsbXLDOPgjE5X_10test_utils13assert_linearNtB2_12AssertLinear10next_round:bb.a
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !92
  %i.iu = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.iu, align 8, !noalias !92
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !92
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @6, ptr noundef nonnull %i.i)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbXLDOPgjE5X_10test_utils.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !92

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbXLDOPgjE5X_10test_utils.exit.i: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !92
  %i.iv = getelementptr i8, ptr %i.u, i64 -32     ; 7 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbXLDOPgjE5X_10test_utils.exit.i.i unwind label %bb.w

bb.w:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbXLDOPgjE5X_10test_utils.exit.i
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %.body.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbXLDOPgjE5X_10test_utils.exit.i.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbXLDOPgjE5X_10test_utils.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit.i unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbXLDOPgjE5X_10test_utils.exit.i.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.y, %bb.w
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.iy, %bb.y ], [ %i.iw, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br label %.loopexit.split-lp.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsbXLDOPgjE5X_10test_utils.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !92
  store double 0.000000e+00, ptr %i.h, align 8, !noalias !92
  br i1 %i.gx, label %.lr.ph140.i, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit91.i

.lr.ph140.i:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit.i
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.z

bb.z:                                             ; preds = %bb.ah, %.lr.ph140.i
  %i.jb = phi double [ 0.000000e+00, %.lr.ph140.i ], [ %i.jm, %bb.ah ]
  %.sroa.05.0139.i = phi double [ 0.000000e+00, %.lr.ph140.i ], [ %i.kj, %bb.ah ]
  %.sroa.5109.0138.i = phi i64 [ %i.gu, %.lr.ph140.i ], [ %i.kk, %bb.ah ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i, i64 %.sroa.5109.0138.i
  %i.jd = load double, ptr %i.jc, align 8, !noalias !109, !noundef !5 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.sroa.5109.0138.i
  %i.jf = load double, ptr %i.je, align 8, !noalias !109, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !92
  store double %i.jd, ptr %i.g, align 8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !92
  store double %i.jf, ptr %i.f, align 8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !92
  %i.jg = load double, ptr %i.l, align 8, !noalias !92, !noundef !5
  %i.jh = fmul double %i.jd, %i.jg
  %i.ji = load double, ptr %i.k, align 8, !noalias !92, !noundef !5
  %i.jj = fadd double %i.ji, %i.jh                ; 3 uses
  store double %i.jj, ptr %i.e, align 8, !noalias !92
  %i.jk = fsub double %i.jj, %i.jf
  %i.jl = call double @llvm.fabs.f64(double %i.jk)
  %i.jm = call nsz double @llvm.maximumnum.f64(double %i.jb, double %i.jl) ; 2 uses
  store double %i.jm, ptr %i.h, align 8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !92
  store ptr %i.g, ptr %i.d, align 8, !noalias !92
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !92
  store ptr %i.f, ptr %i.iz, align 8, !noalias !92
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !92
  store ptr %i.e, ptr %i.ja, align 8, !noalias !92
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !92
  %i.jn = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.iv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @8, ptr noundef nonnull @9, ptr noundef nonnull %i.d)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit91.i: ; preds = %bb.ah, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit.i
  %.sroa.05.0.lcssa.i = phi double [ 0.000000e+00, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsbXLDOPgjE5X_10test_utils.exit.i ], [ %i.kj, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !92
  %i.jo = load i64, ptr %i.af, align 8, !noalias !92, !noundef !5 ; 2 uses
  %i.jp = icmp ult i64 %i.jo, 1152921504606846976
  call void @llvm.assume(i1 %i.jp)
  %i.jq = uitofp nneg i64 %i.jo to double
  %i.jr = fdiv double %.sroa.05.0.lcssa.i, %i.jq
  %i.js = call double @llvm.sqrt.f64(double %i.jr)
  store double %i.js, ptr %i.c, align 8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92
  store ptr %i.c, ptr %i.b, align 8, !noalias !92
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !92
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %i.jt, align 8, !noalias !92
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !92
  %i.ju = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.iv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @8, ptr noundef nonnull @7, ptr noundef nonnull %i.b)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aa:                                            ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92
  %i.jv = load double, ptr %i.c, align 8, !noalias !92, !noundef !5
  %i.jw = fcmp olt double %i.jv, 5.000000e-02
  %i.jx = load double, ptr %i.h, align 8, !noalias !92
  %i.jy = fcmp olt double %i.jx, 1.000000e-01
  %or.cond.i = select i1 %i.jw, i1 %i.jy, i1 false
  %i.jz = load double, ptr %i.k, align 8, !noalias !92
  %i.ka = fcmp ogt double %i.jz, -1.000000e-01
  %narrow.i = select i1 %or.cond.i, i1 %i.ka, i1 false
  %.sroa.07.0.i = zext i1 %narrow.i to i8
  %i.kb = getelementptr i8, ptr %i.u, i64 -8
  store i8 %.sroa.07.0.i, ptr %i.kb, align 8, !alias.scope !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !92
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body93.i unwind label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEECsbXLDOPgjE5X_10test_utils.exit.i unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

.body93.i:                                        ; preds = %bb.ae, %bb.ab, %.loopexit.split-lp.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.loopexit.split-lp.i ], [ %i.ke, %bb.ae ], [ %i.kc, %bb.ab ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEECsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #19
          to label %common.resume unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEECsbXLDOPgjE5X_10test_utils.exit.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !92
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB5_5Round6finish.exit unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEECsbXLDOPgjE5X_10test_utils.exit.i
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ah:                                            ; preds = %bb.z
  %i.kh = fsub double %i.jf, %i.jj                ; 2 uses
  %i.ki = fmul double %i.kh, %i.kh
  %i.kj = fadd double %.sroa.05.0139.i, %i.ki     ; 2 uses
  %i.kk = add nuw i64 %.sroa.5109.0138.i, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !92
  %exitcond149.not.i = icmp eq i64 %i.kk, %i.gw
  br i1 %exitcond149.not.i, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCsbXLDOPgjE5X_10test_utils.exit91.i, label %bb.z

bb.ai:                                            ; preds = %.body93.i, %.loopexit.split-lp.i
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB5_5Round6finish.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecdEECsbXLDOPgjE5X_10test_utils.exit.i
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %_RNvMs0_NtCsbXLDOPgjE5X_10test_utils13assert_linearNtB5_5Round6finish.exit
  %.idx = mul nuw nsw i64 %i.t, 56
  %i.km = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %.not.not.not.i.not51 = icmp eq i64 %i.t, 0
  br i1 %.not.not.not.i.not51, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBS_12AssertLinear10next_round0EBU_.exit, label %.lr.ph

bb.ak:                                            ; preds = %.lr.ph
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ko, i64 56 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.kn, %i.km
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBS_12AssertLinear10next_round0EBU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aj, %bb.ak
  %i.ko = phi ptr [ %i.kn, %bb.ak ], [ %.pre, %bb.aj ] ; 2 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 48
  %.val.i = load i8, ptr %i.kp, align 8, !range !8, !noalias !110, !noundef !5
  %i.kq = trunc nuw i8 %.val.i to i1
  br i1 %i.kq, label %.loopexit, label %bb.ak

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBS_12AssertLinear10next_round0EBU_.exit: ; preds = %bb.ak, %bb.aj
  %i.kr = icmp ult i64 %i.t, 164703072086692426
  call void @llvm.assume(i1 %i.kr)
  %i.ks = icmp eq i64 %i.t, 4
  br i1 %i.ks, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBS_12AssertLinear10next_round0EBU_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i8 0, ptr %i.kt, align 8
  %i.ku = load i64, ptr %0, align 8, !range !9, !alias.scope !111, !noundef !5
  %i.kv = icmp eq i64 %i.t, %i.ku
  br i1 %i.kv, label %bb.am, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundE8push_mutBJ_.exit

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %._RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundE8push_mutBJ_.exit_crit_edge unwind label %bb.an, !noalias !112

._RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundE8push_mutBJ_.exit_crit_edge: ; preds = %bb.am
  %.pre24 = load ptr, ptr %i.r, align 8, !alias.scope !111
  br label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundE8push_mutBJ_.exit

bb.an:                                            ; preds = %bb.am
  %i.kw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q) #19
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundE8push_mutBJ_.exit: ; preds = %._RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundE8push_mutBJ_.exit_crit_edge, %bb.al
  %i.ky = phi ptr [ %.pre24, %._RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundE8push_mutBJ_.exit_crit_edge ], [ %.pre, %bb.al ]
  %i.kz = getelementptr inbounds nuw [56 x i8], ptr %i.ky, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kz, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  %i.la = add nuw nsw i64 %i.t, 1
  store i64 %i.la, ptr %i.s, align 8, !alias.scope !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBS_12AssertLinear10next_round0EBU_.exit, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundE8push_mutBJ_.exit
  %.sroa.0.0 = phi i1 [ true, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundE8push_mutBJ_.exit ], [ false, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsbXLDOPgjE5X_10test_utils13assert_linear5RoundENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBS_12AssertLinear10next_round0EBU_.exit ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsbXLDOPgjE5X_10test_utils13assert_linearNtB2_12AssertLinear6sample(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, double noundef %1, double noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !115 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr [56 x i8], ptr %i.d, i64 %i.b ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -56      ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 -40      ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !116, !noundef !5 ; 3 uses
  %i.i = load i64, ptr %i.f, align 8, !range !9, !alias.scope !116, !noundef !5
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTddEE8push_mutCsbXLDOPgjE5X_10test_utils.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTddEE8grow_oneCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #20
  br label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTddEE8push_mutCsbXLDOPgjE5X_10test_utils.exit

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTddEE8push_mutCsbXLDOPgjE5X_10test_utils.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr i8, ptr %i.e, i64 -48
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !116, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.h ; 2 uses
  store double %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store double %2, ptr %i.n, align 8
  %i.o = add i64 %i.h, 1
  store i64 %i.o, ptr %i.g, align 8, !alias.scope !116
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsuAhG64lL82_9text_size4size8TextSizeB1J_E10take_frontCsbXLDOPgjE5X_10test_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #2 !guid !118 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  store i64 0, ptr %1, align 8
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.022.025.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.020.024.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !117

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.022.025.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.024.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.5.sroa.6.0.copyload, 8
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ]
  store ptr %.sroa.022.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.022.025 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.022.025.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.024 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.020.024.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCsuAhG64lL82_9text_size4size8TextSizeB1J_E10init_frontCsbXLDOPgjE5X_10test_utils(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #3 !guid !120 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !121, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !5
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
end_hunk_1
