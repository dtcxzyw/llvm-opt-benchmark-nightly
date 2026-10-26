Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group:bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221) #44
  unreachable

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit
  %i.bf = phi ptr [ %i.cn, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.ab, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 3 uses
  %i.bg = phi ptr [ %i.co, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.ac, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 3 uses
  %i.bh = phi i64 [ %i.cp, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.ad, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 7 uses
  %i.bi = phi ptr [ %i.cq, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.ae, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 4 uses
  %i.bj = phi ptr [ %i.cr, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.af, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 2 uses
  %.sroa.01.022 = phi ptr [ %i.bk, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.ba, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.022, i64 16 ; 2 uses
  %.sroa.01.0.val = load ptr, ptr %.sroa.01.022, align 8 ; 3 uses
  %i.bl = getelementptr i8, ptr %.sroa.01.022, i64 8
  %.sroa.01.0.val9 = load i64, ptr %i.bl, align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6263)
  %.idx.i = shl nuw nsw i64 %i.bh, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %.loopexit17, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i
  %i.bn = phi ptr [ %i.bo, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i ], [ %i.bi, %.lr.ph ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 8
  %.val3.i.i = load i64, ptr %i.bp, align 8, !alias.scope !6263, !noalias !6264, !noundef !10
  %i.bq = icmp eq i64 %.val3.i.i, %.sroa.01.0.val9
  br i1 %i.bq, label %.split.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val2.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !6263, !noalias !6264, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i, ptr nonnull readonly %.sroa.01.0.val, i64 %.sroa.01.0.val9), !noalias !6265
  %i.br = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.br, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %.not7.i.i = icmp eq ptr %i.bo, %i.bm
  br i1 %.not7.i.i, label %.loopexit17, label %.lr.ph.i.i

.loopexit17:                                      ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i, %.lr.ph
  br i1 %i.r, label %.loopexit, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.loopexit17, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i
  %i.bs = phi ptr [ %i.bt, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i ], [ %.val7, %.loopexit17 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 600 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 544
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !6266, !noundef !10
  %i.bw = icmp eq i64 %i.bv, %.sroa.01.0.val9
  br i1 %i.bw, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i: ; preds = %.lr.ph.i.i11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 536
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !6266, !nonnull !10, !noundef !10
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.by, ptr nonnull %.sroa.01.0.val, i64 %.sroa.01.0.val9), !noalias !6266
  %i.bz = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bz, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, %.lr.ph.i.i11
  %i.ca = icmp eq ptr %i.bt, %i.q
  br i1 %i.ca, label %.loopexit, label %.lr.ph.i.i11

.loopexit:                                        ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i, %.loopexit17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6267)
  %i.cb = load i64, ptr %i.f, align 8, !alias.scope !6267, !noundef !10 ; 3 uses
  %i.cc = load i64, ptr %i.b, align 8, !range !11, !alias.scope !6267, !noundef !10
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.e, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit

bb.e:                                             ; preds = %.loopexit
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !6268
  %.pre26 = load ptr, ptr %i.e, align 8, !alias.scope !6267
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit: ; preds = %.loopexit, %bb.e
  %i.ce = phi ptr [ %i.bf, %.loopexit ], [ %.pre26, %bb.e ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cb
  store ptr %.sroa.01.022, ptr %i.cf, align 8, !noalias !6269, !captures !21
  %i.cg = add i64 %i.cb, 1
  store i64 %i.cg, ptr %i.f, align 8, !alias.scope !6267
  br label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6270)
  %i.ch = load i64, ptr %i.a, align 8, !range !11, !alias.scope !6270, !noundef !10
  %i.ci = icmp eq i64 %i.bh, %i.ch
  br i1 %i.ci, label %bb.f, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit

bb.f:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #42, !noalias !6271
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !6270
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit, %bb.f
  %i.cj = phi ptr [ %i.bg, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit ], [ %.pre, %bb.f ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.bh ; 2 uses
  store ptr %.sroa.01.0.val, ptr %i.ck, align 8, !noalias !6272
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %.sroa.01.0.val9, ptr %i.cl, align 8, !noalias !6270
  %i.cm = add i64 %i.bh, 1                        ; 2 uses
  store i64 %i.cm, ptr %i.h, align 8, !alias.scope !6270
  br label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit: ; preds = %.split.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit
  %i.cn = phi ptr [ %i.bf, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit ], [ %i.ce, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit ], [ %i.bf, %.split.i.i ] ; 2 uses
  %i.co = phi ptr [ %i.cj, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit ], [ %i.bg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit ], [ %i.bg, %.split.i.i ] ; 2 uses
  %i.cp = phi i64 [ %i.cm, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit ], [ %i.bh, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit ], [ %i.bh, %.split.i.i ] ; 2 uses
  %i.cq = phi ptr [ %i.cj, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit ], [ %i.bi, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit ], [ %i.bi, %.split.i.i ] ; 2 uses
  %i.cr = phi ptr [ %i.bj, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit ], [ %i.ce, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit ], [ %i.bj, %.split.i.i ] ; 2 uses
  %i.cs = icmp eq ptr %i.bk, %i.bd
  br i1 %i.cs, label %.loopexit18.loopexit, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB4_12HelpTemplate20write_templated_help(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
.lr.ph.split.preheader.i.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [712 x i8], align 8               ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [1 x i8], align 1                 ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [14 x i8], align 2               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [72 x i8], align 8               ; 25 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.c, %.lr.ph.split.preheader.i.i
  %i.ag = phi i64 [ %i.au, %bb.c ], [ 0, %.lr.ph.split.preheader.i.i ] ; 6 uses
  %i.ah = sub nuw i64 %2, %i.ag                   ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ah, 16
  br i1 %i.aj, label %.preheader.i.i.i, label %bb.a

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %2, %i.ag
  br i1 %.not.i.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.i.i.i

bb.a:                                             ; preds = %.lr.ph.split.i.i
  %i.ak = tail call { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 123, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef range(i64 0, -9223372036854775808) %i.ah) #43, !noalias !6697 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0
  %i.am = extractvalue { i64, i64 } %i.ak, 1
  %i.an = trunc nuw i64 %i.al to i1
  br i1 %i.an, label %.loopexit.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.b
  %.sroa.04.011.i.i.i = phi i64 [ %i.ar, %bb.b ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.04.011.i.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !6698, !noalias !6697, !noundef !10
  %i.aq = icmp eq i8 %i.ap, 123
  br i1 %i.aq, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ar, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.5.0.i.i.i = phi i64 [ %i.am, %bb.a ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.as = icmp ult i64 %.sroa.5.0.i.i.i, %i.ah
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add i64 %i.ag, 1
  %i.au = add i64 %i.at, %.sroa.5.0.i.i.i         ; 5 uses
  %.not12.i.i = icmp ugt i64 %i.au, %2
  %i.av = add i64 %i.ag, %.sroa.5.0.i.i.i
  %or.cond.i.i.not = icmp ult i64 %i.av, %2
  br i1 %or.cond.i.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %.loopexit.i.i
  br i1 %.not12.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.split.i.i

bb.d:                                             ; preds = %.loopexit.i.i
  %i.aw = add i64 %i.ag, %.sroa.5.0.i.i.i         ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %lhsc = load i8, ptr %i.ax, align 1
  %i.ay = icmp eq i8 %lhsc, 123
  br i1 %i.ay, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.c

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.b, %bb.a, %.preheader.i.i.i, %bb.c, %bb.d
  %3 = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %.preheader.i.i.i ], [ true, %bb.a ], [ true, %bb.b ]
  %.sroa.16.0 = phi i8 [ 0, %bb.d ], [ 1, %bb.c ], [ 1, %.preheader.i.i.i ], [ 1, %bb.a ], [ 1, %bb.b ]
  %.sroa.8.0 = phi i64 [ %i.au, %bb.d ], [ %2, %bb.b ], [ %2, %.preheader.i.i.i ], [ %2, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.0.0 = phi i64 [ %i.au, %bb.d ], [ 0, %bb.c ], [ 0, %.preheader.i.i.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.4.1.i = phi i64 [ %i.aw, %bb.d ], [ %2, %bb.c ], [ %2, %.preheader.i.i.i ], [ %2, %bb.a ], [ %2, %bb.b ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !10, !align !16, !noundef !10 ; 37 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6700)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 41 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !6701, !noundef !10 ; 5 uses
  %i.bd = load i64, ptr %i.ba, align 8, !range !11, !alias.scope !6701, !noundef !10
  %i.be = sub i64 %i.bd, %i.bc
  %i.bf = icmp ugt i64 %.sroa.4.1.i, %i.be
  br i1 %i.bf, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, !prof !18

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bc, i64 noundef %.sroa.4.1.i, i64 noundef 1, i64 noundef 1) #43, !noalias !6702
  %i.bg = load i64, ptr %i.bb, align 8, !alias.scope !6703, !noundef !10 ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  tail call void @llvm.assume(i1 %i.bh)
  br label %bb.e

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.bi = icmp sgt i64 %i.bc, -1
  tail call void @llvm.assume(i1 %i.bi)
  %.not.i.i84 = icmp eq i64 %.sroa.4.1.i, 0
  br i1 %.not.i.i84, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i
  %i.bj = phi i64 [ %i.bg, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.bc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !6703, !nonnull !10, !noundef !10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %1, i64 %.sroa.4.1.i, i1 false), !noalias !6703
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i
  %i.bn = phi i64 [ %i.bj, %bb.e ], [ %i.bc, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.bo = add i64 %i.bn, %.sroa.4.1.i
  store i64 %i.bo, ptr %i.bb, align 8, !alias.scope !6703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %.sroa.0.0, ptr %i.af, align 8
  %.sroa.5.0..sroa_idx936 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx936, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx937 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %2, ptr %.sroa.7.0..sroa_idx937, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 %2, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i32 123, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  store i32 123, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i8 1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i8 1, ptr %.sroa.15939.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 65
  store i8 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 65 ; 2 uses
  br i1 %3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.phi.trans.insert.i.i96 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bz = load i8, ptr %i.by, align 1, !range !33
  %.fr299.i = freeze i8 %i.bz                     ; 2 uses
  %i.ca = trunc nuw i8 %.fr299.i to i1            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !10, !align !16 ; 24 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 416 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 440 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 13 uses
  %.sroa.6.0..sroa_idx.i180 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 368 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 392 ; 2 uses
  %.sroa.6.0..sroa_idx.i188 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx11.i194 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.0..sroa_idx13.i196 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ci = getelementptr i8, ptr %i.cc, i64 184    ; 3 uses
  %i.cj = getelementptr i8, ptr %i.cc, i64 192    ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cc, i64 136    ; 6 uses
  %i.cl = getelementptr i8, ptr %i.cc, i64 144    ; 6 uses
  %.sroa.4.0..sroa_idx.i167 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !10, !align !37 ; 5 uses
  %i.co = trunc i8 %.fr299.i to i1                ; 9 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i139.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i140.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i161.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cc, i64 700
  %i.cq = getelementptr i8, ptr %i.cc, i64 672
  %i.cr = getelementptr i8, ptr %i.cc, i64 680
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i175.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %.sroa.6.0..sroa_idx.i176.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 28 ; 2 uses
  %.sroa.7224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %.sroa.11226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 36
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !10, !align !16
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 608
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cc, i64 616
  %i.dh = getelementptr i8, ptr %i.cc, i64 624
  %i.di = getelementptr i8, ptr %i.cc, i64 632
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 296
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cc, i64 304
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 312
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cc, i64 560 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cc, i64 568 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cc, i64 272
  %i.dt = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !6704)
  %.val.i85 = load ptr, ptr %i.bq, align 8, !alias.scope !6704, !nonnull !10, !noundef !10 ; 3 uses
  %.val1.i86 = load i64, ptr %i.br, align 8, !alias.scope !6704, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6705)
  %i.dv = load i64, ptr %i.bt, align 8, !alias.scope !6706, !noundef !10 ; 8 uses
  %.not.i.i87 = icmp ugt i64 %i.dv, %.val1.i86
  %.promoted.i.i88 = load i64, ptr %i.bs, align 8, !alias.scope !6706 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %.promoted.i.i88
  %or.cond27.i.i89 = or i1 %.not.i.i87, %i.dw
  br i1 %or.cond27.i.i89, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94, label %.lr.ph.split.preheader.i.i90

.lr.ph.split.preheader.i.i90:                     ; preds = %bb.g
  %i.dx = load i8, ptr %i.bv, align 8, !alias.scope !6706, !noundef !10 ; 2 uses
  %i.dy = zext nneg i8 %i.dx to i64               ; 4 uses
  %i.dz = icmp ult i8 %i.dx, 5
  call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr i8, ptr %i.bu, i64 %i.dy
  %i.eb = getelementptr i8, ptr %i.ea, i64 -1
  %.pre.i.i91 = load i8, ptr %i.eb, align 1, !alias.scope !6706 ; 2 uses
  br label %.lr.ph.split.i.i92

.lr.ph.split.i.i92:                               ; preds = %bb.j, %.lr.ph.split.preheader.i.i90
  %i.ec = phi i64 [ %i.eq, %bb.j ], [ %.promoted.i.i88, %.lr.ph.split.preheader.i.i90 ] ; 4 uses
  %i.ed = sub nuw i64 %i.dv, %i.ec                ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i85, i64 %i.ec ; 2 uses
  %i.ef = icmp samesign ult i64 %i.ed, 16
  br i1 %i.ef, label %.preheader.i.i.i111, label %bb.h

.preheader.i.i.i111:                              ; preds = %.lr.ph.split.i.i92
  %.not.i.i.i112 = icmp eq i64 %i.dv, %i.ec
  br i1 %.not.i.i.i112, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94.sink.split, label %.lr.ph.i.i.i113

bb.h:                                             ; preds = %.lr.ph.split.i.i92
  %i.eg = call { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i91, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ed) #43, !noalias !6707 ; 2 uses
  %i.eh = extractvalue { i64, i64 } %i.eg, 0
  %i.ei = extractvalue { i64, i64 } %i.eg, 1
  %i.ej = trunc nuw i64 %i.eh to i1
  br i1 %i.ej, label %.loopexit.i.i104, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94.sink.split

.lr.ph.i.i.i113:                                  ; preds = %.preheader.i.i.i111, %bb.i
  %.sroa.04.011.i.i.i114 = phi i64 [ %i.en, %bb.i ], [ 0, %.preheader.i.i.i111 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.sroa.04.011.i.i.i114
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !6708, !noalias !6707, !noundef !10
  %i.em = icmp eq i8 %i.el, %.pre.i.i91
  br i1 %i.em, label %.loopexit.i.i104, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i113
  %i.en = add nuw nsw i64 %.sroa.04.011.i.i.i114, 1 ; 2 uses
  %exitcond.not.i.i.i115 = icmp eq i64 %i.en, %i.ed
  br i1 %exitcond.not.i.i.i115, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94.sink.split, label %.lr.ph.i.i.i113

.loopexit.i.i104:                                 ; preds = %.lr.ph.i.i.i113, %bb.h
  %.sroa.5.0.i.i.i105 = phi i64 [ %i.ei, %bb.h ], [ %.sroa.04.011.i.i.i114, %.lr.ph.i.i.i113 ] ; 2 uses
  %i.eo = icmp ult i64 %.sroa.5.0.i.i.i105, %i.ed
  call void @llvm.assume(i1 %i.eo)
  %i.ep = add i64 %i.ec, 1
  %i.eq = add i64 %i.ep, %.sroa.5.0.i.i.i105      ; 8 uses
  %.not11.i.i106 = icmp ult i64 %i.eq, %i.dy
  %.not12.i.i107 = icmp ugt i64 %i.eq, %.val1.i86
  %or.cond.i.i108 = or i1 %.not11.i.i106, %.not12.i.i107
  br i1 %or.cond.i.i108, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %.loopexit.i.i104
  %i.er = icmp ult i64 %i.dv, %i.eq
  br i1 %i.er, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94.sink.split, label %.lr.ph.split.i.i92

bb.k:                                             ; preds = %.loopexit.i.i104
  %i.es = sub nuw i64 %i.eq, %i.dy                ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i85, i64 %i.es
  %bcmp.i.i109 = call i32 @bcmp(ptr nonnull %i.et, ptr nonnull %i.bu, i64 %i.dy), !noalias !6709
  %i.eu = icmp eq i32 %bcmp.i.i109, 0
  br i1 %i.eu, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i110, label %bb.j

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i110: ; preds = %bb.k
  store i64 %i.eq, ptr %i.bs, align 8
  %i.ev = load i64, ptr %i.af, align 8, !alias.scope !6704, !noundef !10 ; 2 uses
  %i.ew = sub nuw i64 %i.es, %i.ev
  store i64 %i.eq, ptr %i.af, align 8, !alias.scope !6704
  br label %select.unfold

_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94.sink.split: ; preds = %bb.j, %.preheader.i.i.i111, %bb.h, %bb.i
  %.sink = phi i64 [ %i.dv, %bb.i ], [ %i.dv, %.preheader.i.i.i111 ], [ %i.dv, %bb.h ], [ %i.eq, %bb.j ]
  store i64 %.sink, ptr %i.bs, align 8
  br label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94

_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94: ; preds = %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94.sink.split, %bb.g
  store i8 1, ptr %i.bp, align 1, !alias.scope !6710
  %i.ex = load i8, ptr %i.bw, align 8, !range !33, !alias.scope !6710, !noundef !10
  %i.ey = trunc nuw i8 %i.ex to i1
  %.pre.i2.i95 = load i64, ptr %i.af, align 8, !alias.scope !6710 ; 3 uses
  %.pre2.i.i97 = load i64, ptr %.phi.trans.insert.i.i96, align 8, !alias.scope !6710 ; 2 uses
  %.not.i3.i98 = icmp ne i64 %.pre2.i.i97, %.pre.i2.i95
  %or.cond.not.i.i99 = select i1 %i.ey, i1 true, i1 %.not.i3.i98
  %i.ez = sub nuw i64 %.pre2.i.i97, %.pre.i2.i95
  br i1 %or.cond.not.i.i99, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i110
  %i.fa = phi i8 [ 0, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i110 ], [ 1, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94 ] ; 4 uses
  %.sroa.4.1.i102 = phi i64 [ %i.ew, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i110 ], [ %i.ez, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsfu0rQaTkGUu_12clap_builder.exit.i94 ] ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB4_12HelpTemplate20write_templated_help:.lr.ph.split.preheader.i.i
  %.val103.pre.i = load i64, ptr %i.cl, align 8, !noalias !6766 ; 2 uses
  %.pre518 = mul nuw nsw i64 %.val103.pre.i, 600
  %i.qb = icmp eq i64 %.val103.pre.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6767
  %i.qc = getelementptr inbounds nuw i8, ptr %.val102.pre.i, i64 %.pre518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6768
  br i1 %i.qb, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i, label %.lr.ph.i.i.i.i.i.i127.i.preheader

.lr.ph.i.i.i.i.i.i127.i.preheader:                ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i.thread, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i
  %i.qd = phi ptr [ %i.ok, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i.thread ], [ %i.qc, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ] ; 5 uses
  %.sroa.0.0.i150610 = phi i64 [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i.thread ], [ %.sroa.0.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ] ; 2 uses
  %.sroa.5.0.i609 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i.thread ], [ %.sroa.5.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ] ; 2 uses
  %.sroa.8.0.i149608 = phi i64 [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i.thread ], [ %.sroa.8.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ] ; 2 uses
  %.val102.i607 = phi ptr [ %.val100.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i.thread ], [ %.val102.pre.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ]
  br label %.lr.ph.i.i.i.i.i.i127.i

.lr.ph.i.i.i.i.i.i127.i:                          ; preds = %.lr.ph.i.i.i.i.i.i127.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i
  %i.qe = phi ptr [ %i.qf, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ], [ %.val102.i607, %.lr.ph.i.i.i.i.i.i127.i.preheader ] ; 7 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 600 ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 552
  %i.qh = load ptr, ptr %i.qg, align 8, !alias.scope !6784, !noalias !6785, !noundef !10
  %.not.i.i.i.i.i.i.i.i128.i = icmp ne ptr %i.qh, null
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 584
  %i.qj = load i32, ptr %i.qi, align 8, !range !44, !alias.scope !6784, !noalias !6785
  %.not1.i.i.i.i.i.i.i.i129.i = icmp ne i32 %i.qj, -1
  %or.cond.i.i.i.i.i.i.i130.i = select i1 %.not.i.i.i.i.i.i.i.i128.i, i1 true, i1 %.not1.i.i.i.i.i.i.i.i129.i
  br i1 %or.cond.i.i.i.i.i.i.i130.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i127.i
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 56
  %i.ql = load i64, ptr %i.qk, align 8, !range !13, !alias.scope !6786, !noalias !6785, !noundef !10
  %i.qm = trunc nuw i64 %i.ql to i1
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qe, i64 64
  %i.qo = load ptr, ptr %i.qn, align 8, !alias.scope !6786, !noalias !6785
  %.not.not.i.i.i.i.i.i.i.i.i131.i = icmp ne ptr %i.qo, null
  %or.cond.not.i.i.i.i.i.i.i.i132.i = select i1 %i.qm, i1 %.not.not.i.i.i.i.i.i.i.i.i131.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i132.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qe, i64 592
  %.val.i.i.i.i.i.i.i.i.i.i.i133.i = load i32, ptr %i.qp, align 8, !alias.scope !6787, !noalias !6785, !noundef !10 ; 4 uses
  %i.qq = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i133.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i134.i = icmp eq i32 %i.qq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i134.i, label %bb.bt, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i
  %i.qr = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i133.i, 8192
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i135.i = icmp eq i32 %i.qr, 0
  %i.qs = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i133.i, 4096 ; 2 uses
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i135.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %.not8.i.i.i.i.i.i.i.i.i.i.i.i159.i = icmp eq i32 %i.qs, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i160.i = or i1 %.not8.i.i.i.i.i.i.i.i.i.i.i.i159.i, %i.co
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i160.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss1_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.qt = icmp ne i32 %i.qs, 0
  %brmerge.i.i.i.i.i.i.i.i.i.i.i.i136.i = or i1 %i.qt, %i.co
  br i1 %brmerge.i.i.i.i.i.i.i.i.i.i.i.i136.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss1_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss1_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %i.qu = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i133.i, 8
  %.not.i.i.i.i.i.i.i.i.i158.i = icmp eq i32 %i.qu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i158.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss1_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i.i, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i127.i
  %i.qv = icmp eq ptr %i.qf, %i.qd
  br i1 %i.qv, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i, label %.lr.ph.i.i.i.i.i.i127.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss1_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i.i.i, %bb.bv, %bb.bu
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !6788
  %i.qw = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #43, !noalias !6788 ; 4 uses
  %i.qx = icmp eq ptr %i.qw, null
  br i1 %i.qx, label %bb.bw, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i

bb.bw:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #46, !noalias !6768
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i137.i
  store ptr %i.qe, ptr %i.qw, align 8, !noalias !6768, !captures !21
  store i64 4, ptr %i.i, align 8, !noalias !6768
  store ptr %i.qw, ptr %.sroa.4.0..sroa_idx.i139.i, align 8, !noalias !6768
  store i64 1, ptr %.sroa.6.0..sroa_idx.i140.i, align 8, !noalias !6768
  call void @llvm.experimental.noalias.scope.decl(metadata !6789)
  call void @llvm.experimental.noalias.scope.decl(metadata !6790)
  %i.qy = icmp eq ptr %i.qf, %i.qd
  br i1 %i.qy, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i

.lr.ph.i.i.i.i.i.preheader.i.i.i141.i:            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i, %bb.bx
  %i.qz = phi ptr [ %i.si, %bb.bx ], [ %i.qw, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i ]
  %i.ra = phi i64 [ %i.sk, %bb.bx ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i ] ; 7 uses
  %.lcssa1314.i.i.i142.i = phi ptr [ %.us-phi287.i, %bb.bx ], [ %i.qf, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i ] ; 2 uses
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i.i.i143.us.i, label %.lr.ph.i.i.i.i.i.i.i.i143.i

.lr.ph.i.i.i.i.i.i.i.i143.us.i:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i
  %i.rb = phi ptr [ %i.rc, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i ], [ %.lcssa1314.i.i.i142.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i ] ; 7 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 600 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 552
  %i.re = load ptr, ptr %i.rd, align 8, !alias.scope !6791, !noalias !6792, !noundef !10
  %.not.i.i.i.i.i.i.i.i.i.i144.us.i = icmp ne ptr %i.re, null
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 584
  %i.rg = load i32, ptr %i.rf, align 8, !range !44, !alias.scope !6791, !noalias !6792
  %.not1.i.i.i.i.i.i.i.i.i.i145.us.i = icmp ne i32 %i.rg, -1
  %or.cond.i.i.i.i.i.i.i.i.i146.us.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i144.us.i, i1 true, i1 %.not1.i.i.i.i.i.i.i.i.i.i145.us.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i146.us.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.us.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i143.us.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rb, i64 56
  %i.ri = load i64, ptr %i.rh, align 8, !range !13, !alias.scope !6793, !noalias !6792, !noundef !10
  %i.rj = trunc nuw i64 %i.ri to i1
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rb, i64 64
  %i.rl = load ptr, ptr %i.rk, align 8, !alias.scope !6793, !noalias !6792
  %.not.not.i.i.i.i.i.i.i.i.i.i.i147.us.i = icmp ne ptr %i.rl, null
  %or.cond.not.i.i.i.i.i.i.i.i.i.i148.us.i = select i1 %i.rj, i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i147.us.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i148.us.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.us.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rb, i64 592
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.us.i = load i32, ptr %i.rm, align 8, !alias.scope !6794, !noalias !6792, !noundef !10 ; 2 uses
  %i.rn = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.us.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i150.us.i = icmp ne i32 %i.rn, 0
  %i.ro = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.us.i, 8200
  %or.cond297.i = icmp eq i32 %i.ro, 8192
  %or.cond485.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i150.us.i, %or.cond297.i
  br i1 %or.cond485.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i, label %.split285.us.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i: ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.us.i, %.lr.ph.i.i.i.i.i.i.i.i143.us.i
  %i.rp = icmp eq ptr %i.rc, %i.qd
  br i1 %i.rp, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i143.us.i

.lr.ph.i.i.i.i.i.i.i.i143.i:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i
  %i.rq = phi ptr [ %i.rr, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i ], [ %.lcssa1314.i.i.i142.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i ] ; 7 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 600 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 552
  %i.rt = load ptr, ptr %i.rs, align 8, !alias.scope !6791, !noalias !6792, !noundef !10
  %.not.i.i.i.i.i.i.i.i.i.i144.i = icmp ne ptr %i.rt, null
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 584
  %i.rv = load i32, ptr %i.ru, align 8, !range !44, !alias.scope !6791, !noalias !6792
  %.not1.i.i.i.i.i.i.i.i.i.i145.i = icmp ne i32 %i.rv, -1
  %or.cond.i.i.i.i.i.i.i.i.i146.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i144.i, i1 true, i1 %.not1.i.i.i.i.i.i.i.i.i.i145.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i146.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i143.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rq, i64 56
  %i.rx = load i64, ptr %i.rw, align 8, !range !13, !alias.scope !6793, !noalias !6792, !noundef !10
  %i.ry = trunc nuw i64 %i.rx to i1
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rq, i64 64
  %i.sa = load ptr, ptr %i.rz, align 8, !alias.scope !6793, !noalias !6792
  %.not.not.i.i.i.i.i.i.i.i.i.i.i147.i = icmp ne ptr %i.sa, null
  %or.cond.not.i.i.i.i.i.i.i.i.i.i148.i = select i1 %i.ry, i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i147.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i148.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rq, i64 592
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.i = load i32, ptr %i.sb, align 8, !alias.scope !6794, !noalias !6792, !noundef !10 ; 2 uses
  %i.sc = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i150.i = icmp ne i32 %i.sc, 0
  %i.sd = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i149.i, 4104
  %or.cond486.i = icmp eq i32 %i.sd, 4096
  %or.cond299 = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i150.i, %or.cond486.i
  br i1 %or.cond299, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i, label %.split285.us.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command19get_non_positionals0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i143.i
  %i.se = icmp eq ptr %i.rr, %i.qd
  br i1 %i.se, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i143.i

.split285.us.i:                                   ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i
  %.us-phi286.i = phi ptr [ %i.rb, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i ], [ %i.rq, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi287.i = phi ptr [ %i.rc, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.us.i ], [ %i.rr, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss0_0Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sf = icmp samesign ult i64 %i.ra, 1152921504606846976
  call void @llvm.assume(i1 %i.sf)
  %i.sg = load i64, ptr %i.i, align 8, !range !11, !alias.scope !6795, !noalias !6768, !noundef !10
  %i.sh = icmp eq i64 %i.ra, %i.sg
  br i1 %i.sh, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i153.i, label %bb.bx

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i153.i: ; preds = %.split285.us.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ra, i64 noundef 1, i64 noundef 8, i64 noundef 8) #43, !noalias !6796
  %.pre.i154.i = load ptr, ptr %.sroa.4.0..sroa_idx.i139.i, align 8, !alias.scope !6795, !noalias !6768
  br label %bb.bx

bb.bx:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i153.i, %.split285.us.i
  %i.si = phi ptr [ %.pre.i154.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i153.i ], [ %i.qz, %.split285.us.i ] ; 2 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.ra
  store ptr %.us-phi286.i, ptr %i.sj, align 8, !noalias !6797, !captures !21
  %i.sk = add nuw nsw i64 %i.ra, 1                ; 3 uses
  store i64 %i.sk, ptr %.sroa.6.0..sroa_idx.i140.i, align 8, !alias.scope !6795, !noalias !6768
  %i.sl = icmp eq ptr %.us-phi287.i, %i.qd
  br i1 %i.sl, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i.i141.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i: ; preds = %bb.bx, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i
  %.sroa.8196.0.copyload.i = phi i64 [ %i.ra, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ra, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i.i.us.i ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i138.i ], [ %i.sk, %bb.bx ]
  %.sroa.0194.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !6798
  %.sroa.5195.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i139.i, align 8, !noalias !6798
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i
  %.sroa.0.0417.i = phi i64 [ %.sroa.0.0.i150610, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ %.sroa.0.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ %.sroa.0.0.i150610, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0416.i = phi ptr [ %.sroa.5.0.i609, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ %.sroa.5.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ %.sroa.5.0.i609, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.8.0415.i = phi i64 [ %.sroa.8.0.i149608, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ %.sroa.8.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ %.sroa.8.0.i149608, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.8196.0.i = phi i64 [ %.sroa.8196.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ 0, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.5195.0.i = phi ptr [ %.sroa.5195.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ inttoptr (i64 8 to ptr), %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0194.0.i = phi i64 [ %.sroa.0194.0.copyload.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB23_IB23_INtNtNtB2b_5slice4iter4IterBS_ENCNvMs5_NtBW_7commandNtB3J_7Command19get_non_positionals0ENCNvMs1_NtNtBY_6output13help_templateNtB4F_12HelpTemplate14write_all_argss0_0ENCB4z_s1_0EE11spec_extendBY_.exit.i.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.i ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs2_NtB16_7commandNtB43_7Command15get_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB4W_12HelpTemplate14write_all_args0ENCB4Q_s_0EE9from_iterB18_.exit.thread.i ], [ 0, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs5_NtB1a_7commandNtB2N_7Command19get_non_positionals0NCIB2_B15_uB1V_NCNvMs1_NtNtB1c_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3S_s1_0E0E0E0B1c_.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6768
  %.val.i151 = load ptr, ptr %i.ci, align 8, !noalias !6766, !nonnull !10, !noundef !10 ; 2 uses
  %.val97.i = load i64, ptr %i.cj, align 8, !noalias !6766, !noundef !10 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val97.i, 712
  %i.sm = getelementptr inbounds nuw i8, ptr %.val.i151, i64 %.idx.i.i
  %.not.i.i.i152 = icmp eq i64 %.val97.i, 0
  br i1 %.not.i.i.i152, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i, label %.lr.ph.i.i.i153

.lr.ph.i.i.i153:                                  ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i
  %i.sn = phi ptr [ %i.so, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i ], [ %.val.i151, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i ] ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 712 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6799)
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 568
  %i.sq = load i64, ptr %i.sp, align 8, !alias.scope !6799, !noalias !6800, !noundef !10
  %i.sr = icmp eq i64 %i.sq, 4
  br i1 %i.sr, label %bb.by, label %.split.i.i.i

bb.by:                                            ; preds = %.lr.ph.i.i.i153
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 560
  %i.st = load ptr, ptr %i.ss, align 8, !alias.scope !6799, !noalias !6800, !nonnull !10, !noundef !10
  %i.su = load i32, ptr %i.st, align 1
  %i.sv = icmp ne i32 %i.su, 1886152040
  %i.sw = zext i1 %i.sv to i32
  %.not.i.i.i.i157 = icmp eq i32 %i.sw, 0
  br i1 %.not.i.i.i.i157, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.by, %.lr.ph.i.i.i153
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sn, i64 700
  %i.sy = load <2 x i32>, ptr %i.sx, align 4, !alias.scope !6799, !noalias !6800
  %i.sz = and <2 x i32> %i.sy, splat (i32 8388608)
  %i.ta = icmp eq <2 x i32> %i.sz, zeroinitializer ; 2 uses
  %i.tb = extractelement <2 x i1> %i.ta, i64 0
  %i.tc = extractelement <2 x i1> %i.ta, i64 1
  %.sroa.01.0.i.i.i.i = select i1 %i.tb, i1 %i.tc, i1 false
  br i1 %.sroa.01.0.i.i.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %bb.by
  %.not5.i.i.i = icmp eq ptr %i.so, %i.sm
  br i1 %.not5.i.i.i, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i, label %.lr.ph.i.i.i153

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i, %.split.i.i.i, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i
  %.lcssa.i.i.i = phi i1 [ false, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_IB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs5_NtB16_7commandNtB43_7Command19get_non_positionals0ENCNvMs1_NtNtB18_6output13help_templateNtB50_12HelpTemplate14write_all_argss0_0ENCB4U_s1_0EE9from_iterB18_.exit.i ], [ false, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command23has_visible_subcommands0Bb_.exit.backedge.i.i.i ], [ true, %.split.i.i.i ] ; 2 uses
  %.val106.i = load ptr, ptr %i.ck, align 8, !noalias !6766, !nonnull !10, !noundef !10 ; 2 uses
  %.val107.i = load i64, ptr %i.cl, align 8, !noalias !6766, !noundef !10 ; 2 uses
  %.idx302.i = mul nuw nsw i64 %.val107.i, 600
  %i.td = getelementptr inbounds nuw i8, ptr %.val106.i, i64 %.idx302.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6801
  store i64 0, ptr %i.h, align 8, !noalias !6801
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i161.i, align 8, !noalias !6801
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !6801
  %i.te = icmp eq i64 %.val107.i, 0
  br i1 %i.te, label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i
  %.sroa.0.0.i289.i = phi ptr [ %i.tj, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i ], [ %.val106.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ]
  %i.tf = phi ptr [ %i.ug, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ] ; 4 uses
  %i.tg = phi i64 [ %i.uf, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i ], [ 0, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ] ; 7 uses
  br label %.lr.ph.i.i.i.i154

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i154
  %i.th = icmp eq ptr %i.tj, %i.td
  br i1 %i.th, label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split, label %.lr.ph.i.i.i.i154

.lr.ph.i.i.i.i154:                                ; preds = %bb.bz, %.lr.ph.i.i.i.preheader.i
  %i.ti = phi ptr [ %i.tj, %bb.bz ], [ %.sroa.0.0.i289.i, %.lr.ph.i.i.i.preheader.i ] ; 4 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 600 ; 4 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 56
  %i.tl = load i64, ptr %i.tk, align 8, !range !13, !alias.scope !6802, !noalias !6803, !noundef !10
  %i.tm = trunc nuw i64 %i.tl to i1
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ti, i64 64
  %i.to = load ptr, ptr %i.tn, align 8, !alias.scope !6802, !noalias !6803 ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne ptr %i.to, null
  %i.tp = select i1 %i.tm, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %i.tp, label %bb.ca, label %bb.bz

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i154
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ti, i64 72
  %i.tr = load i64, ptr %i.tq, align 8, !alias.scope !6802, !noalias !6803 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6804)
  %.idx.i.i.i = shl nuw nsw i64 %i.tg, 4
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.idx.i.i.i
  %i.tt = icmp eq i64 %i.tg, 0
  br i1 %i.tt, label %._crit_edge.i.i.i, label %.lr.ph.i.i162.i

.lr.ph.i.i162.i:                                  ; preds = %bb.ca, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i
  %.sroa.03.09.i.i.i = phi ptr [ %i.tx, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i ], [ %i.tf, %bb.ca ] ; 3 uses
  %i.tu = getelementptr i8, ptr %.sroa.03.09.i.i.i, i64 8
  %.sroa.03.0.val5.i.i.i = load i64, ptr %i.tu, align 8, !noalias !6805, !noundef !10
  %i.tv = icmp eq i64 %.sroa.03.0.val5.i.i.i, %i.tr
  br i1 %i.tv, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i

_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %.lr.ph.i.i162.i
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.09.i.i.i, align 8, !noalias !6805, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.03.0.val.i.i.i, ptr nonnull readonly %i.to, i64 %i.tr), !alias.scope !6806, !noalias !6807
  %i.tw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.tw, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i, label %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i

_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i: ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %.lr.ph.i.i162.i
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 16 ; 2 uses
  %i.ty = icmp eq ptr %i.tx, %i.ts
  br i1 %i.ty, label %._crit_edge.i.i.i, label %.lr.ph.i.i162.i

._crit_edge.i.i.i:                                ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i, %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !6808)
  %i.tz = load i64, ptr %i.h, align 8, !range !11, !alias.scope !6809, !noalias !6801, !noundef !10
  %i.ua = icmp eq i64 %i.tg, %i.tz
  br i1 %i.ua, label %bb.cb, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

bb.cb:                                            ; preds = %._crit_edge.i.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #42, !noalias !6810
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i161.i, align 8, !alias.scope !6809, !noalias !6801
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.cb, %._crit_edge.i.i.i
  %i.ub = phi ptr [ %i.tf, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %bb.cb ] ; 2 uses
  %i.uc = getelementptr inbounds nuw [16 x i8], ptr %i.ub, i64 %i.tg ; 2 uses
  store ptr %i.to, ptr %i.uc, align 8, !noalias !6811, !captures !21
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  store i64 %i.tr, ptr %i.ud, align 8, !noalias !6812
  %i.ue = add i64 %i.tg, 1                        ; 2 uses
  store i64 %i.ue, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !6809, !noalias !6801
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i: ; preds = %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.uf = phi i64 [ %i.ue, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.tg, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ] ; 2 uses
  %i.ug = phi ptr [ %i.ub, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE8push_mutCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ %i.tf, %_RNvXs7_NtNtCsj6eKBz9Db1c_4core3cmp5implsReNtB7_9PartialEq2eqCsfu0rQaTkGUu_12clap_builder.exit.i.i.i ]
  %i.uh = icmp eq ptr %i.tj, %i.td
  br i1 %i.uh, label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split, label %.lr.ph.i.i.i.preheader.i

_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i, %bb.bz
  %.sroa.6206.0.copyload208.i.ph = phi i64 [ %i.tg, %bb.bz ], [ %i.uf, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB2_7FlatSetReE6insertB6_.exit.i.i ]
  %.sroa.0201.0.copyload202.i.pr = load i64, ptr %i.h, align 8, !noalias !6766
  br label %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.i

_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.i: ; preds = %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i
  %.sroa.0201.0.copyload202.i = phi i64 [ %.sroa.0201.0.copyload202.i.pr, %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split ], [ 0, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ] ; 4 uses
  %.sroa.6206.0.copyload208.i = phi i64 [ %.sroa.6206.0.copyload208.i.ph, %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.ithread-pre-split ], [ 0, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command23has_visible_subcommands.exit.i ] ; 3 uses
  %.sroa.5203.0.copyload205.i = load ptr, ptr %.sroa.4.0..sroa_idx.i161.i, align 8, !noalias !6766 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6801
  %i.ui = load <2 x i32>, ptr %i.cp, align 4, !noalias !6766
  %i.uj = and <2 x i32> %i.ui, splat (i32 32768)
  %i.uk = icmp ne <2 x i32> %i.uj, zeroinitializer ; 2 uses
  %i.ul = extractelement <2 x i1> %i.uk, i64 0
  %i.um = extractelement <2 x i1> %i.uk, i64 1
  %.sroa.0.0.i.i.i = select i1 %i.ul, i1 true, i1 %i.um ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6766
  store i8 1, ptr %i.t, align 1, !noalias !6766
  %.not.i155 = xor i1 %.lcssa.i.i.i, true
  %brmerge.i = or i1 %.sroa.0.0.i.i.i, %.not.i155
  br i1 %brmerge.i, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.i
  %i.un = icmp ult i64 %.sroa.8.0415.i, 1152921504606846976
  call void @llvm.assume(i1 %i.un)
  %i.uo = icmp eq i64 %.sroa.8.0415.i, 0
  br i1 %i.uo, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156.a, label %._crit_edge364.i

bb.cd:                                            ; preds = %bb.cf, %bb.ce
  %.val110.sink.i = phi ptr [ %.val110.i, %bb.cf ], [ @167, %bb.ce ]
  %.val111.sink.i = phi i64 [ %i.ur, %bb.cf ], [ 8, %bb.ce ]
  store ptr %.val110.sink.i, ptr %i.s, align 8, !noalias !6766, !captures !21
  store i64 %.val111.sink.i, ptr %i.cs, align 8, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6766
  store ptr %i.v, ptr %i.r, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !6766
  store ptr %i.s, ptr %i.ct, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !6766
  %i.up = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @168, ptr noundef nonnull %i.r) #43, !noalias !6766 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6766
  %.val112.i = load ptr, ptr %i.ci, align 8, !noalias !6766, !nonnull !10, !noundef !10
  %.val113.i = load i64, ptr %i.cj, align 8, !noalias !6766, !noundef !10
  call fastcc void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate17write_subcommands(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %0, ptr nonnull %.val112.i, i64 %.val113.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6766
  %4 = icmp ult i64 %.sroa.8.0415.i, 1152921504606846976
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %.sroa.8.0415.i, 0
  br i1 %5, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i.a, label %bb.cg

bb.ce:                                            ; preds = %_RINvXs3_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetReEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtNtB1g_5slice4iter4IterNtNtNtBa_7builder3arg3ArgENCNvMs1_NtNtBa_6output13help_templateNtB41_12HelpTemplate14write_all_argss2_0EEBa_.exit.i
  store i8 0, ptr %i.t, align 1, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6766
  %.val110.i = load ptr, ptr %i.cq, align 8, !noalias !6766, !noundef !10 ; 2 uses
  %i.uq = icmp eq ptr %.val110.i, null
  br i1 %i.uq, label %bb.cd, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ur = load i64, ptr %i.cr, align 8, !noalias !6766
  br label %bb.cd

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156.a: ; preds = %bb.cc
  %6 = icmp ult i64 %.sroa.8196.0.i, 1152921504606846976
  call void @llvm.assume(i1 %6)
  %7 = icmp eq i64 %.sroa.8196.0.i, 0
  br i1 %7, label %bb.ch, label %._crit_edge367.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i.a: ; preds = %bb.cd
  %8 = icmp ult i64 %.sroa.8196.0.i, 1152921504606846976
  call void @llvm.assume(i1 %8)
  %9 = icmp eq i64 %.sroa.8196.0.i, 0
  br i1 %9, label %bb.ch, label %bb.ci

._crit_edge364.i:                                 ; preds = %bb.cc, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i
  store i8 0, ptr %i.t, align 1, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6766
  store ptr @169, ptr %i.q, align 8, !noalias !6766, !captures !21
  store i64 9, ptr %i.cu, align 8, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6766
  store ptr %i.v, ptr %i.p, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !6766
  store ptr %i.q, ptr %i.cv, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !6766
  %i.us = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @168, ptr noundef nonnull %i.p) #43, !noalias !6766 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6766
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.0416.i, i64 noundef %.sroa.8.0415.i, ptr noundef nonnull @_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output13help_template19positional_sort_key) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6766
  %10 = icmp ult i64 %.sroa.8196.0.i, 1152921504606846976
  call void @llvm.assume(i1 %10)
  %11 = icmp eq i64 %.sroa.8196.0.i, 0
  br i1 %11, label %bb.ch, label %bb.ci

bb.cg:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !6813)
  call void @llvm.experimental.noalias.scope.decl(metadata !6814)
  %12 = load i64, ptr %i.bb, align 8, !alias.scope !6815, !noalias !6766, !noundef !10 ; 3 uses
  %13 = load i64, ptr %i.ba, align 8, !range !11, !alias.scope !6815, !noalias !6766, !noundef !10
  %14 = sub i64 %13, %12
  %15 = icmp ult i64 %14, 2
  br i1 %15, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i, !prof !18

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156: ; preds = %bb.cg
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %12, i64 noundef 2, i64 noundef 1, i64 noundef 1) #43, !noalias !6816
  %16 = load i64, ptr %i.bb, align 8, !alias.scope !6817, !noalias !6766, !noundef !10
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156, %bb.cg
  %.sink491.i = phi i64 [ %16, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156 ], [ %12, %bb.cg ] ; 3 uses
  %17 = icmp sgt i64 %.sink491.i, -1
  call void @llvm.assume(i1 %17)
  %18 = load ptr, ptr %i.cf, align 8, !alias.scope !6817, !noalias !6766, !nonnull !10, !noundef !10
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %.sink491.i
  store i16 2570, ptr %19, align 1, !noalias !6818
  %20 = add nuw i64 %.sink491.i, 2
  store i64 %20, ptr %i.bb, align 8, !alias.scope !6817, !noalias !6766
  br label %._crit_edge364.i

bb.ch:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i.a, %._crit_edge367.i, %._crit_edge364.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156.a
  %.promoted413 = phi i8 [ 0, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i.a ], [ 0, %._crit_edge367.i ], [ 0, %._crit_edge364.i ], [ 1, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156.a ]
  %i.ut = icmp ult i64 %.sroa.6206.0.copyload208.i, 576460752303423488
  call void @llvm.assume(i1 %i.ut)
  %i.uu = icmp ne i64 %.sroa.6206.0.copyload208.i, 0 ; 2 uses
  br i1 %i.uu, label %.lr.ph.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECsfu0rQaTkGUu_12clap_builder.exit.i

bb.ci:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit.i.a, %._crit_edge364.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6819)
  call void @llvm.experimental.noalias.scope.decl(metadata !6820)
  %i.uv = load i64, ptr %i.bb, align 8, !alias.scope !6821, !noalias !6766, !noundef !10 ; 3 uses
  %i.uw = load i64, ptr %i.ba, align 8, !range !11, !alias.scope !6821, !noalias !6766, !noundef !10
  %i.ux = sub i64 %i.uw, %i.uv
  %i.uy = icmp ult i64 %i.ux, 2
  br i1 %i.uy, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i166.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit167.i, !prof !18

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i166.i: ; preds = %bb.ci
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.uv, i64 noundef 2, i64 noundef 1, i64 noundef 1) #43, !noalias !6822
  %i.uz = load i64, ptr %i.bb, align 8, !alias.scope !6823, !noalias !6766, !noundef !10
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit167.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit167.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i166.i, %bb.ci
  %.sink488.i = phi i64 [ %i.uz, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i166.i ], [ %i.uv, %bb.ci ] ; 3 uses
  %i.va = icmp sgt i64 %.sink488.i, -1
  call void @llvm.assume(i1 %i.va)
  %i.vb = load ptr, ptr %i.cf, align 8, !alias.scope !6823, !noalias !6766, !nonnull !10, !noundef !10
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.sink488.i
  store i16 2570, ptr %i.vc, align 1, !noalias !6824
  %i.vd = add nuw i64 %.sink488.i, 2
  store i64 %i.vd, ptr %i.bb, align 8, !alias.scope !6823, !noalias !6766
  br label %._crit_edge367.i

._crit_edge367.i:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i156.a, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit167.i
  store i8 0, ptr %i.t, align 1, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6766
  store ptr @170, ptr %i.o, align 8, !noalias !6766, !captures !21
  store i64 7, ptr %i.cw, align 8, !noalias !6766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6766
  store ptr %i.v, ptr %i.n, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !6766
  store ptr %i.o, ptr %i.cx, align 8, !noalias !6766
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !6766
  %i.ve = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @168, ptr noundef nonnull %i.n) #43, !noalias !6766 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6766
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5195.0.i, i64 noundef %.sroa.8196.0.i, ptr noundef nonnull @_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output13help_template15option_sort_key) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6766
  br label %bb.ch

.lr.ph.i:                                         ; preds = %bb.ch
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5203.0.copyload205.i) ]
  %.idx303.i = shl nuw nsw i64 %.sroa.6206.0.copyload208.i, 4
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.5203.0.copyload205.i, i64 %.idx303.i
  br label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEB1f_.exit.i, %.lr.ph.i
  %i.vg = phi i8 [ %.promoted413, %.lr.ph.i ], [ %i.yn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEB1f_.exit.i ] ; 2 uses
  %.sroa.4219.0295.i = phi ptr [ %.sroa.5203.0.copyload205.i, %.lr.ph.i ], [ %i.vh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEB1f_.exit.i ] ; 3 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.4219.0295.i, i64 16 ; 2 uses
  %i.vi = load ptr, ptr %.sroa.4219.0295.i, align 8, !noalias !6825, !nonnull !10, !noundef !10 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.4219.0295.i, i64 8
  %i.vk = load i64, ptr %i.vj, align 8, !noalias !6825, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6766
  store ptr %i.vi, ptr %i.m, align 8, !noalias !6766, !captures !21
  store i64 %i.vk, ptr %i.cy, align 8, !noalias !6766
  %.val104.i = load ptr, ptr %i.ck, align 8, !noalias !6766, !nonnull !10, !noundef !10 ; 2 uses
  %.val105.i = load i64, ptr %i.cl, align 8, !noalias !6766, !noundef !10 ; 2 uses
  %.idx249.i = mul nuw nsw i64 %.val105.i, 600
  %i.vl = getelementptr inbounds nuw i8, ptr %.val104.i, i64 %.idx249.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6826
  %i.vm = icmp eq i64 %.val105.i, 0
  br i1 %i.vm, label %.thread.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cj, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i
  %i.vn = phi ptr [ %i.vo, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i ], [ %.val104.i, %bb.cj ] ; 6 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 600 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6827)
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 56
  %i.vq = load i64, ptr %i.vp, align 8, !range !13, !alias.scope !6827, !noalias !6828, !noundef !10
  %i.vr = trunc nuw i64 %i.vq to i1
  br i1 %i.vr, label %bb.ck, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 64
  %i.vt = load ptr, ptr %i.vs, align 8, !alias.scope !6827, !noalias !6828, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.vt, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vn, i64 72
  %i.vv = load i64, ptr %i.vu, align 8, !alias.scope !6827, !noalias !6828, !noundef !10
  %i.vw = icmp eq i64 %i.vv, %i.vk
  br i1 %i.vw, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i: ; preds = %bb.cl
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.vt, ptr nonnull %i.vi, i64 %i.vk), !noalias !6829
  %i.vx = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.vx, label %bb.cm, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i

bb.cm:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vn, i64 592
  %.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.vy, align 8, !alias.scope !6830, !noalias !6828, !noundef !10 ; 4 uses
  %i.vz = and i32 %.val.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i172.i = icmp eq i32 %i.vz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i172.i, label %bb.cn, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.wa = and i32 %.val.i.i.i.i.i.i.i.i.i.i, 8192
  %.not7.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.wa, 0
  %i.wb = and i32 %.val.i.i.i.i.i.i.i.i.i.i, 4096 ; 2 uses
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %.not8.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.wb, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = or i1 %.not8.i.i.i.i.i.i.i.i.i.i.i, %i.co
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i173.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss4_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.wc = icmp ne i32 %i.wb, 0
  %brmerge.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.wc, %i.co
  br i1 %brmerge.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss4_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i173.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss4_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cp, %bb.co
  %i.wd = and i32 %.val.i.i.i.i.i.i.i.i.i.i, 8
  %.not.i5.i.i.i.i.i.i.i = icmp eq i32 %i.wd, 0
  br i1 %.not.i5.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i173.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss4_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i, %bb.cm, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i, %bb.cl, %bb.ck, %.lr.ph.i.i.i.i.i.i
  %i.we = icmp eq ptr %i.vo, %i.vl
  br i1 %i.we, label %.thread.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i173.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate14write_all_argss4_0INtB7_5FnMutTRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.i.i.i.i.i.i.i.i, %bb.cp, %bb.co
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !6831
  %i.wf = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #43, !noalias !6831 ; 6 uses
  %i.wg = icmp eq ptr %i.wf, null
  br i1 %i.wg, label %bb.cq, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i174.i

bb.cq:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i173.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #46, !noalias !6826
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i174.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i173.i
  store ptr %i.vn, ptr %i.wf, align 8, !noalias !6826, !captures !21
  store i64 4, ptr %i.g, align 8, !noalias !6826
  store ptr %i.wf, ptr %.sroa.4.0..sroa_idx.i175.i, align 8, !noalias !6826
  store i64 1, ptr %.sroa.6.0..sroa_idx.i176.i, align 8, !noalias !6826
  call void @llvm.experimental.noalias.scope.decl(metadata !6832)
  call void @llvm.experimental.noalias.scope.decl(metadata !6833)
  %i.wh = icmp eq ptr %i.vo, %i.vl
  br i1 %i.wh, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs1_NtNtB18_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss3_0ENCB3S_s4_0EE9from_iterB18_.exit.thread238.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfu0rQaTkGUu_12clap_builder.exit.i174.i
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.us:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.cu
  %i.wi = phi ptr [ %i.xa, %bb.cu ], [ %i.wf, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.8222.0.copyload.pr.i.us = phi i64 [ %i.xc, %bb.cu ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %.lcssa1314.i.i.i177.i.us = phi ptr [ %i.wm, %bb.cu ], [ %i.vo, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.wj = load i64, ptr %i.cy, align 8, !noalias !6766 ; 2 uses
  %i.wk = load ptr, ptr %i.m, align 8, !noalias !6766, !nonnull !10
  br label %.lr.ph.i.i.i.i.i.i.i.split.us.i.us

.lr.ph.i.i.i.i.i.i.i.split.us.i.us:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.us.i.us
  %i.wl = phi ptr [ %i.wm, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.us.i.us ], [ %.lcssa1314.i.i.i177.i.us, %.lr.ph.i.i.i.i.i.i.i.i.us ] ; 6 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 600 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6834)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 56
  %i.wo = load i64, ptr %i.wn, align 8, !range !13, !alias.scope !6834, !noalias !6835, !noundef !10
  %i.wp = trunc nuw i64 %i.wo to i1
  br i1 %i.wp, label %bb.cr, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.us.i.us

bb.cr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.split.us.i.us
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wl, i64 64
  %i.wr = load ptr, ptr %i.wq, align 8, !alias.scope !6834, !noalias !6835, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i178.us.i.us = icmp eq ptr %i.wr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i178.us.i.us, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.us.i.us, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wl, i64 72
  %i.wt = load i64, ptr %i.ws, align 8, !alias.scope !6834, !noalias !6835, !noundef !10
  %i.wu = icmp eq i64 %i.wt, %i.wj
  br i1 %i.wu, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i.i.us.i.us, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.us.i.us

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i.i.us.i.us: ; preds = %bb.cs
  %bcmp.i.i.i.i.i.i.i.i.i.us.i.us = call i32 @bcmp(ptr nonnull %i.wr, ptr nonnull %i.wk, i64 %i.wj), !noalias !6836
  %i.wv = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.us.i.us, 0
  br i1 %i.wv, label %bb.ct, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.us.i.us

bb.ct:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i.i.us.i.us
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wl, i64 592
  %.val.i.i.i.i.i.i.i.i.i.i.i179.us.i.us = load i32, ptr %i.ww, align 8, !alias.scope !6837, !noalias !6835, !noundef !10 ; 2 uses
  %i.wx = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i179.us.i.us, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i180.us.i.us = icmp ne i32 %i.wx, 0
  %i.wy = and i32 %.val.i.i.i.i.i.i.i.i.i.i.i179.us.i.us, 8200
  %or.cond298.i.us = icmp eq i32 %i.wy, 8192
  %or.cond489.i.us = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i180.us.i.us, %or.cond298.i.us
  br i1 %or.cond489.i.us, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.us.i.us, label %.split291.us.i.loopexit.us

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.us.i.us: ; preds = %bb.ct, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i.i.us.i.us, %bb.cs, %bb.cr, %.lr.ph.i.i.i.i.i.i.i.split.us.i.us
  %i.wz = icmp eq ptr %i.wm, %i.vl
  br i1 %i.wz, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs1_NtNtB18_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss3_0ENCB3S_s4_0EE9from_iterB18_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.split.us.i.us

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i183.i.us: ; preds = %.split291.us.i.loopexit.us
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.sroa.8222.0.copyload.pr.i.us, i64 noundef 1, i64 noundef 8, i64 noundef 8) #43, !noalias !6838
  %.pre.i184.i.us = load ptr, ptr %.sroa.4.0..sroa_idx.i175.i, align 8, !alias.scope !6839, !noalias !6826
  br label %bb.cu

bb.cu:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i183.i.us, %.split291.us.i.loopexit.us
  %i.xa = phi ptr [ %.pre.i184.i.us, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i183.i.us ], [ %i.wi, %.split291.us.i.loopexit.us ] ; 2 uses
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %.sroa.8222.0.copyload.pr.i.us
  store ptr %i.wl, ptr %i.xb, align 8, !noalias !6840, !captures !21
  %i.xc = add nuw nsw i64 %.sroa.8222.0.copyload.pr.i.us, 1 ; 3 uses
  store i64 %i.xc, ptr %.sroa.6.0..sroa_idx.i176.i, align 8, !alias.scope !6839, !noalias !6826
  %i.xd = icmp eq ptr %i.wm, %i.vl
  br i1 %i.xd, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterIB2m_INtNtNtB2u_5slice4iter4IterB12_ENCNvMs1_NtNtB18_6output13help_templateNtB3Y_12HelpTemplate14write_all_argss3_0ENCB3S_s4_0EE9from_iterB18_.exit.thread238.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.us

.split291.us.i.loopexit.us:                       ; preds = %bb.ct
  %i.xe = icmp samesign ult i64 %.sroa.8222.0.copyload.pr.i.us, 1152921504606846976
  call void @llvm.assume(i1 %i.xe)
  %i.xf = load i64, ptr %i.g, align 8, !range !11, !alias.scope !6839, !noalias !6826, !noundef !10
  %i.xg = icmp eq i64 %.sroa.8222.0.copyload.pr.i.us, %i.xf
  br i1 %i.xg, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE7reserveBL_.exit.i.i.i183.i.us, label %bb.cu

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.cy
  %i.xh = phi ptr [ %i.yc, %bb.cy ], [ %i.wf, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.8222.0.copyload.pr.i = phi i64 [ %i.ye, %bb.cy ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %.lcssa1314.i.i.i177.i = phi ptr [ %i.xl, %bb.cy ], [ %i.vo, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.xi = load i64, ptr %i.cy, align 8, !noalias !6766 ; 2 uses
  %i.xj = load ptr, ptr %i.m, align 8, !noalias !6766, !nonnull !10
  br label %.lr.ph.i.i.i.i.i.i.i.split.i

.lr.ph.i.i.i.i.i.i.i.split.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.i
  %i.xk = phi ptr [ %i.xl, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.i ], [ %.lcssa1314.i.i.i177.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 600 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6834)
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 56
  %i.xn = load i64, ptr %i.xm, align 8, !range !13, !alias.scope !6834, !noalias !6835, !noundef !10
  %i.xo = trunc nuw i64 %i.xn to i1
  br i1 %i.xo, label %bb.cv, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.split.i
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xk, i64 64
  %i.xq = load ptr, ptr %i.xp, align 8, !alias.scope !6834, !noalias !6835, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i178.i = icmp eq ptr %i.xq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i178.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xk, i64 72
  %i.xs = load i64, ptr %i.xr, align 8, !alias.scope !6834, !noalias !6835, !noundef !10
  %i.xt = icmp eq i64 %i.xs, %i.xi
  br i1 %i.xt, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14write_all_argss3_0Bb_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cw
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.xq, ptr nonnull %i.xj, i64 %i.xi), !noalias !6836
  %i.xu = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.xu, label %bb.cx, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_NtNtB1c_6output13help_templateNtB2N_12HelpTemplate14write_all_argss3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2H_s4_0E0E0B1c_.exit.i.i.i.i.i.i.i.i

end_hunk_1
