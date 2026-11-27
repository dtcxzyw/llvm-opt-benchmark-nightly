Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_wgetopt-b0c392094217e9af.fish_wgetopt.cf0fde3a08d7cf14-cgu.0?download=true
inline.NumInlined: 125
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter13wgetopt_inner:bb.a

bb.bj:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8push_mutCshMbxjpSxucW_12fish_wgetopt.exit.i7
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14, !noalias !124
  unreachable

bb.bk:                                            ; preds = %.thread.i5
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.ef, ptr %i.he, align 8, !alias.scope !124
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !124, !noundef !4 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, -1
  br i1 %i.hh, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hi = add nuw i64 %i.hg, 1
  store i64 %i.hi, ptr %i.hf, align 8, !alias.scope !124
  br label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter16handle_short_opt.exit

bb.bm:                                            ; preds = %bb.bk
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !noalias !124
  unreachable

bb.bn:                                            ; preds = %bb.ah
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.dy ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !noundef !4 ; 5 uses
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %.thread, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit: ; preds = %bb.bn
  %i.hq = load i32, ptr %i.hm, align 4, !range !111, !alias.scope !133, !noundef !4
  %i.hr = icmp eq i32 %i.hq, 45
  br i1 %i.hr, label %bb.bo, label %bb.cy

bb.bo:                                            ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit
  %i.hs = icmp eq i64 %i.ho, 1
  br i1 %i.hs, label %.thread29, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit13

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit13: ; preds = %bb.bo
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !range !111, !alias.scope !134, !noundef !4
  %i.hv = icmp eq i32 %i.hu, 45
  br i1 %i.hv, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit, label %bb.cy

_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit: ; preds = %bb.dd, %._crit_edge, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !135, !nonnull !4, !align !5, !noundef !4 ; 7 uses
  %i.hy = icmp eq i64 %i.ai, 0                    ; 3 uses
  br i1 %i.hy, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i, label %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncRScBT_E0CshMbxjpSxucW_12fish_wgetopt.exit.i.us.i.i.i.i

_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncRScBT_E0CshMbxjpSxucW_12fish_wgetopt.exit.i.us.i.i.i.i: ; preds = %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncB1g_B1g_E0E0CshMbxjpSxucW_12fish_wgetopt.exit.us.i.i.i.i
  %i.hz = phi i64 [ %i.id, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncB1g_B1g_E0E0CshMbxjpSxucW_12fish_wgetopt.exit.us.i.i.i.i ], [ %i.ai, %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit ]
  %i.ia = phi ptr [ %i.ic, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncB1g_B1g_E0E0CshMbxjpSxucW_12fish_wgetopt.exit.us.i.i.i.i ], [ %i.hx, %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit ] ; 2 uses
  %i.ib = phi i64 [ %i.ie, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncB1g_B1g_E0E0CshMbxjpSxucW_12fish_wgetopt.exit.us.i.i.i.i ], [ 0, %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit ] ; 3 uses
  %lhsv.i.i.i = load i32, ptr %i.ia, align 4, !alias.scope !137, !noalias !138
  %.not.i.i.i = icmp eq i32 %lhsv.i.i.i, 61
  br i1 %.not.i.i.i, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncB1g_B1g_E0E0CshMbxjpSxucW_12fish_wgetopt.exit.us.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncB1g_B1g_E0E0CshMbxjpSxucW_12fish_wgetopt.exit.us.i.i.i.i: ; preds = %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncRScBT_E0CshMbxjpSxucW_12fish_wgetopt.exit.i.us.i.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.id = add nsw i64 %i.hz, -1                   ; 2 uses
  %i.ie = add nuw nsw i64 %i.ib, 1
  %i.if = icmp eq i64 %i.id, 0
  br i1 %i.if, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i, label %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncRScBT_E0CshMbxjpSxucW_12fish_wgetopt.exit.i.us.i.i.i.i

_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncB1g_B1g_E0E0CshMbxjpSxucW_12fish_wgetopt.exit.us.i.i.i.i, %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !139, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %.idx.i111.i = mul nuw nsw i64 %i.aj, 24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx.i111.i
  br label %.outer.split.lr.ph.i.i

_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.i: ; preds = %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positioncRScBT_E0CshMbxjpSxucW_12fish_wgetopt.exit.i.us.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !141, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %.idx.i.i16 = mul nuw nsw i64 %i.aj, 24
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.idx.i.i16
  %.not5.i.i = icmp ugt i64 %i.ib, %i.ai
  br i1 %.not5.i.i, label %.split89.us.i.i, label %.outer.split.lr.ph.i.i, !prof !142

.outer.split.lr.ph.i.i:                           ; preds = %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.i, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i
  %i.im = phi ptr [ %i.ii, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i ], [ %i.il, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.i ] ; 3 uses
  %i.in = phi ptr [ %i.ih, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i ], [ %i.ik, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.i ] ; 2 uses
  %.sroa.0.0.i17.i.i113.i = phi i64 [ %i.ai, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i ], [ %i.ib, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.i ] ; 7 uses
  %.idx267 = shl nuw nsw i64 %.sroa.0.0.i17.i.i113.i, 2
  %i.io = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx267 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.iq = load i8, ptr %i.ip, align 1, !range !108, !alias.scope !141
  %.fr270.i.i = freeze i8 %i.iq
  %i.ir = trunc i8 %.fr270.i.i to i1
  br i1 %i.ir, label %.lr.ph.us.i.i.preheader, label %.lr.ph.preheader.i.i.preheader

.lr.ph.preheader.i.i.preheader:                   ; preds = %.outer.split.lr.ph.i.i
  %i.is = icmp eq i64 %.sroa.0.0.i17.i.i113.i, 0
  br label %.lr.ph.preheader.i.i

.lr.ph.us.i.i.preheader:                          ; preds = %.outer.split.lr.ph.i.i
  %i.it = icmp eq i64 %.sroa.0.0.i17.i.i113.i, 0
  br label %.lr.ph.us.i.i

bb.bp:                                            ; preds = %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.us.us.i.i
  %.not.us116.us.i.i = icmp eq ptr %i.iv, %i.im
  br i1 %.not.us116.us.i.i, label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iu = icmp eq i64 %i.iw, -1
  br i1 %i.iu, label %.split.us.i.i, label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph.us.i.i, %bb.bq
  %.sroa.7.0.us114137.us.i.i258 = phi i64 [ %i.iw, %bb.bq ], [ %.sroa.7.0.ph157.us262.i.i, %.lr.ph.us.i.i ] ; 2 uses
  %.sroa.0.0.us115138.us.i.i257 = phi ptr [ %i.iv, %bb.bq ], [ %.sroa.0.0.ph158.us261.i.i, %.lr.ph.us.i.i ] ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us115138.us.i.i257, i64 24 ; 4 uses
  %i.iw = add nuw i64 %.sroa.7.0.us114137.us.i.i258, 1 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us115138.us.i.i257, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !noalias !143, !noundef !4 ; 2 uses
  %i.iz = load ptr, ptr %.sroa.0.0.us115138.us.i.i257, align 8, !noalias !143, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.iy
  br i1 %i.it, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.us.us.i.i, label %.lr.ph256

bb.br:                                            ; preds = %bb.bt
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.us.us.i.i254, i64 4
  %i.jc = icmp eq ptr %i.jd, %i.io
  br i1 %i.jc, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.us.us.i.i, label %.lr.ph256

.lr.ph256:                                        ; preds = %.lr.ph259, %bb.br
  %.sroa.0.0.i.i.us.us.i.i254 = phi ptr [ %i.jb, %bb.br ], [ %i.iz, %.lr.ph259 ] ; 3 uses
  %.sroa.07.0.i.i.us.us.i.i253 = phi ptr [ %i.jd, %bb.br ], [ %i.hx, %.lr.ph259 ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.us.us.i.i253, i64 4 ; 2 uses
  %i.je = load i32, ptr %.sroa.07.0.i.i.us.us.i.i253, align 4, !alias.scope !145, !noalias !146, !noundef !4 ; 4 uses
  %i.jf = xor i32 %i.je, 55296
  %i.jg = add i32 %i.jf, -1114112
  %i.jh = icmp ult i32 %i.jg, -1112064
  br i1 %i.jh, label %.split.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph256
  %i.ji = icmp ult i32 %i.je, 1114112
  tail call void @llvm.assume(i1 %i.ji)
  %i.jj = icmp eq ptr %.sroa.0.0.i.i.us.us.i.i254, %i.ja
  br i1 %i.jj, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.loopexit.split.us.us.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jk = load i32, ptr %.sroa.0.0.i.i.us.us.i.i254, align 4, !range !111, !alias.scope !144, !noalias !147, !noundef !4
  %i.jl = icmp eq i32 %i.je, %i.jk
  br i1 %i.jl, label %bb.br, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.loopexit.split.us.us.i.i

_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.us.us.i.i: ; preds = %bb.br, %.lr.ph259
  %i.jm = icmp eq i64 %.sroa.0.0.i17.i.i113.i, %i.iy
  br i1 %i.jm, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.thread.i, label %bb.bp

_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.loopexit.split.us.us.i.i: ; preds = %bb.bt, %bb.bs
  %.not.us116136.us.i.i = icmp eq ptr %i.iv, %i.im
  br i1 %.not.us116136.us.i.i, label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph.us.i.i.preheader, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.loopexit.split.us.us.i.i
  %.sroa.7.0.ph157.us262.i.i = phi i64 [ %i.iw, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.loopexit.split.us.us.i.i ], [ 0, %.lr.ph.us.i.i.preheader ] ; 2 uses
  %.sroa.0.0.ph158.us261.i.i = phi ptr [ %i.iv, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.loopexit.split.us.us.i.i ], [ %i.in, %.lr.ph.us.i.i.preheader ]
  %i.jn = icmp eq i64 %.sroa.7.0.ph157.us262.i.i, -1
  br i1 %i.jn, label %.split.us.i.i, label %.lr.ph259

.split89.us.i.i:                                  ; preds = %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findAcj1_ECshMbxjpSxucW_12fish_wgetopt.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14, !noalias !143
  unreachable

.split.us.i.i:                                    ; preds = %.lr.ph.us.i.i, %bb.bq
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #14, !noalias !148
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.preheader, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i
  %.sroa.027.0.ph149233.i.i = phi i64 [ %.sroa.027.2.i.i, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i ], [ 0, %.lr.ph.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.029.ph151232.i.i = phi i1 [ %.sroa.0.130.i.i, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i ], [ false, %.lr.ph.preheader.i.i.preheader ] ; 3 uses
  %.sroa.6.0.ph153231.i.i = phi i32 [ %.sroa.6.2.i.i, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i ], [ undef, %.lr.ph.preheader.i.i.preheader ] ; 3 uses
  %.sroa.3.0.ph155230.i.i = phi i32 [ %.sroa.3.2.i.i, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i ], [ -1, %.lr.ph.preheader.i.i.preheader ] ; 4 uses
  %.sroa.7.0.ph157229.i.i = phi i64 [ %i.jp, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i ], [ 0, %.lr.ph.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.0.ph158228.i.i = phi ptr [ %i.jo, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i ], [ %i.in, %.lr.ph.preheader.i.i.preheader ] ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph158228.i.i, i64 24 ; 2 uses
  %i.jp = add nuw nsw i64 %.sroa.7.0.ph157229.i.i, 1
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph158228.i.i, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !143, !noundef !4 ; 2 uses
  %i.js = load ptr, ptr %.sroa.0.0.ph158228.i.i, align 8, !noalias !143, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jr
  br i1 %i.is, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.i.i, label %.lr.ph252

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.i: ; preds = %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i
  %.not.i.i16.i = icmp eq i32 %.sroa.3.2.i.i, -1
  br i1 %.not.i.i16.i, label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread.i, label %bb.bu

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.thread.i: ; preds = %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.i.i, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.us.us.i.i
  %.us-phi133.i.i = phi i64 [ %.sroa.7.0.us114137.us.i.i258, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.us.us.i.i ], [ %.sroa.7.0.ph157229.i.i, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.i.i ]
  %.us-phi134.i.i = phi ptr [ %.sroa.0.0.us115138.us.i.i257, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.us.us.i.i ], [ %.sroa.0.0.ph158228.i.i, %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi134.i.i, i64 16
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !143
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi134.i.i, i64 20
  %.sroa.518.0.copyload.i.i = load i32, ptr %.sroa.518.0..sroa_idx.i.i, align 4, !noalias !143
  %2 = freeze i32 %.sroa.4.0.copyload.i.i         ; 2 uses
  %.not.i.i16120.i = icmp eq i32 %2, -1
  br i1 %.not.i.i16120.i, label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread.i, label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.i

bb.bu:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.i
  br i1 %.sroa.0.130.i.i, label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread35.i, label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.i

_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread35.i: ; preds = %bb.bu
  store ptr inttoptr (i64 4 to ptr), ptr %i.hw, align 8, !alias.scope !135, !captures !110
  store i64 0, ptr %i.ag, align 8, !alias.scope !135
  %i.ju = icmp eq i64 %i.dy, -1
  br i1 %i.ju, label %bb.cp, label %bb.co

bb.bv:                                            ; preds = %bb.bx
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i251, i64 4
  %i.jw = icmp eq ptr %i.jx, %i.io
  br i1 %i.jw, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.i.i, label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph.preheader.i.i, %bb.bv
  %.sroa.0.0.i.i.i.i251 = phi ptr [ %i.jv, %bb.bv ], [ %i.js, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.07.0.i.i.i.i250 = phi ptr [ %i.jx, %bb.bv ], [ %i.hx, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i250, i64 4 ; 2 uses
  %i.jy = load i32, ptr %.sroa.07.0.i.i.i.i250, align 4, !alias.scope !145, !noalias !146, !noundef !4 ; 4 uses
  %i.jz = xor i32 %i.jy, 55296
  %i.ka = add i32 %i.jz, -1114112
  %i.kb = icmp ult i32 %i.ka, -1112064
  br i1 %i.kb, label %.split.i.i.i.i.i, label %bb.bw

.split.i.i.i.i.i:                                 ; preds = %.lr.ph252, %.lr.ph256
  %.us-phi127.i.i = phi i32 [ %i.je, %.lr.ph256 ], [ %i.jy, %.lr.ph252 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !149
  store i32 %.us-phi127.i.i, ptr %i.d, align 4, !noalias !149
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #14, !noalias !149
  unreachable

bb.bw:                                            ; preds = %.lr.ph252
  %i.kc = icmp ult i32 %i.jy, 1114112
  tail call void @llvm.assume(i1 %i.kc)
  %i.kd = icmp eq ptr %.sroa.0.0.i.i.i.i251, %i.jt
  br i1 %i.kd, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ke = load i32, ptr %.sroa.0.0.i.i.i.i251, align 4, !range !111, !alias.scope !144, !noalias !147, !noundef !4
  %i.kf = icmp eq i32 %i.jy, %i.ke
  br i1 %i.kf, label %bb.bv, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i

_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i: ; preds = %bb.bx, %bb.bw, %bb.bz, %bb.by
  %.sroa.027.2.i.i = phi i64 [ %.sroa.7.0.ph157229.i.i, %bb.bz ], [ %.sroa.027.0.ph149233.i.i, %bb.by ], [ %.sroa.027.0.ph149233.i.i, %bb.bw ], [ %.sroa.027.0.ph149233.i.i, %bb.bx ] ; 2 uses
  %.sroa.0.130.i.i = phi i1 [ %.sroa.0.029.ph151232.i.i, %bb.bz ], [ true, %bb.by ], [ %.sroa.0.029.ph151232.i.i, %bb.bw ], [ %.sroa.0.029.ph151232.i.i, %bb.bx ] ; 2 uses
  %.sroa.6.2.i.i = phi i32 [ %.sroa.521.0.copyload.i.i, %bb.bz ], [ %.sroa.6.0.ph153231.i.i, %bb.by ], [ %.sroa.6.0.ph153231.i.i, %bb.bw ], [ %.sroa.6.0.ph153231.i.i, %bb.bx ] ; 2 uses
  %.sroa.3.2.i.i = phi i32 [ %3, %bb.bz ], [ %.sroa.3.0.ph155230.i.i, %bb.by ], [ %.sroa.3.0.ph155230.i.i, %bb.bw ], [ %.sroa.3.0.ph155230.i.i, %bb.bx ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.jo, %i.im
  br i1 %.not.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.i, label %.lr.ph.preheader.i.i

_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.i.i: ; preds = %bb.bv, %.lr.ph.preheader.i.i
  %i.kg = icmp eq i64 %.sroa.0.0.i17.i.i113.i, %i.jr
  br i1 %i.kg, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.thread.i, label %bb.by

bb.by:                                            ; preds = %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.i.i
  %.not6.i.i = icmp eq i32 %.sroa.3.0.ph155230.i.i, -1
  br i1 %.not6.i.i, label %bb.bz, label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i

bb.bz:                                            ; preds = %bb.by
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph158228.i.i, i64 16
  %.sroa.420.0.copyload.i.i = load i32, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !143
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph158228.i.i, i64 20
  %.sroa.521.0.copyload.i.i = load i32, ptr %.sroa.521.0..sroa_idx.i.i, align 4, !noalias !143
  %3 = freeze i32 %.sroa.420.0.copyload.i.i
  br label %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.i.i

_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.i: ; preds = %bb.bu, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.thread.i
  %.sroa.027.1.i123132.i = phi i64 [ %.sroa.027.2.i.i, %bb.bu ], [ %.us-phi133.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.thread.i ]
  %.sroa.6.1.i124131.i = phi i32 [ %.sroa.6.2.i.i, %bb.bu ], [ %.sroa.518.0.copyload.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.thread.i ]
  %.sroa.3.1.i125130.i = phi i32 [ %.sroa.3.2.i.i, %bb.bu ], [ %2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.thread.i ]
  %4 = freeze i32 %.sroa.6.1.i124131.i
  %.sroa.829.20.extract.trunc.i = trunc i32 %4 to i8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.kh = icmp eq i64 %i.dy, -1
  br i1 %i.kh, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.i
  %i.ki = add nuw i64 %i.dy, 1                    ; 4 uses
  store i64 %i.ki, ptr %i.dx, align 8, !alias.scope !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !153
  %i.kj = icmp eq i64 %.sroa.0.0.i17.i.i113.i, %i.ai
  br i1 %i.kj, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit11.thread.i.i, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.i.i

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit11.thread.i.i: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !153
  br label %bb.ce

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.i.i: ; preds = %bb.ca
  %i.kk = load i32, ptr %i.io, align 4, !range !111, !alias.scope !154, !noalias !153, !noundef !4 ; 3 uses
  store i32 %i.kk, ptr %i.c, align 4, !noalias !153
  switch i32 %i.kk, label %bb.cc [
    i32 0, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit11.i.i
    i32 61, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit11.i.i
  ], !prof !155

bb.cb:                                            ; preds = %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !noalias !153
  unreachable

bb.cc:                                            ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !153
  store ptr %i.c, ptr %i.b, align 8, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !153
  store ptr %i.b, ptr %i.a, align 8, !noalias !153
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRcNtB6_5Debug3fmtCshMbxjpSxucW_12fish_wgetopt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !153
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14, !noalias !153
  unreachable

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit11.i.i: ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.i.i, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !153
  %i.kl = icmp eq i32 %i.kk, 61
  br i1 %i.kl, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit11.i.i
  %i.km = icmp eq i8 %.sroa.829.20.extract.trunc.i, 0
  br i1 %i.km, label %bb.cf, label %bb.cg

bb.ce:                                            ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit11.i.i, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit11.thread.i.i
  %i.kn = icmp eq i8 %.sroa.829.20.extract.trunc.i, 1
  br i1 %i.kn, label %bb.ci, label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  store ptr inttoptr (i64 4 to ptr), ptr %i.hw, align 8, !alias.scope !152, !captures !110
  store i64 0, ptr %i.ag, align 8, !alias.scope !152
  br label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter16handle_short_opt.exit

bb.cg:                                            ; preds = %bb.cd
  %i.ko = add nuw i64 %.sroa.0.0.i17.i.i113.i, 1  ; 2 uses
  %i.kp = sub nuw i64 %i.ai, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ko
  store ptr %i.kq, ptr %i.ah, align 8, !alias.scope !152
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.kp, ptr %i.kr, align 8, !alias.scope !152
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cm, %bb.cg, %bb.ce
  store ptr inttoptr (i64 4 to ptr), ptr %i.hw, align 8, !alias.scope !152, !captures !110
  store i64 0, ptr %i.ag, align 8, !alias.scope !152
  store i64 %.sroa.027.1.i123132.i, ptr %1, align 8, !alias.scope !156
  br label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter16handle_short_opt.exit

bb.ci:                                            ; preds = %bb.ce
  %i.ks = icmp ult i64 %i.ki, %i.ea
  br i1 %i.ks, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store ptr inttoptr (i64 4 to ptr), ptr %i.hw, align 8, !alias.scope !152, !captures !110
  store i64 0, ptr %i.ag, align 8, !alias.scope !152
  br label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter16handle_short_opt.exit

bb.ck:                                            ; preds = %bb.ci
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.ki ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !153, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !noalias !153, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !alias.scope !158, !noundef !4 ; 3 uses
  %i.kz = load i64, ptr %0, align 8, !range !7, !alias.scope !158, !noundef !4
  %i.la = icmp eq i64 %i.ky, %i.kz
  br i1 %i.la, label %bb.cl, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8push_mutCshMbxjpSxucW_12fish_wgetopt.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8grow_oneCshMbxjpSxucW_12fish_wgetopt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0), !noalias !159
  %.pre.i.i = load i64, ptr %i.dx, align 8, !alias.scope !152
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8push_mutCshMbxjpSxucW_12fish_wgetopt.exit.i.i

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8push_mutCshMbxjpSxucW_12fish_wgetopt.exit.i.i: ; preds = %bb.cl, %bb.ck
  %i.lb = phi i64 [ %.pre.i.i, %bb.cl ], [ %i.ki, %bb.ck ] ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !alias.scope !158, !nonnull !4, !noundef !4
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ld, i64 %i.ky ; 3 uses
  store i64 -1, ptr %i.le, align 8, !noalias !160
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %i.ku, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !160
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store i64 %i.kw, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !160
  %i.lf = add i64 %i.ky, 1
  store i64 %i.lf, ptr %i.kx, align 8, !alias.scope !158
  store ptr %i.ku, ptr %i.ah, align 8, !alias.scope !152
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.kw, ptr %i.lg, align 8, !alias.scope !152
  %i.lh = icmp eq i64 %i.lb, -1
  br i1 %i.lh, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8push_mutCshMbxjpSxucW_12fish_wgetopt.exit.i.i
  %i.li = add nuw i64 %i.lb, 1
  store i64 %i.li, ptr %i.dx, align 8, !alias.scope !152
  br label %bb.ch

bb.cn:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8push_mutCshMbxjpSxucW_12fish_wgetopt.exit.i.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !noalias !153
  unreachable

bb.co:                                            ; preds = %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread35.i
  %i.lj = add nuw i64 %i.dy, 1
  store i64 %i.lj, ptr %i.dx, align 8, !alias.scope !135
  br label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter16handle_short_opt.exit

bb.cp:                                            ; preds = %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread35.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !noalias !138
  unreachable

_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread.i: ; preds = %_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECshMbxjpSxucW_12fish_wgetopt.exit.thread.loopexit.split.us.us.i.i, %bb.bp, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCshMbxjpSxucW_12fish_wgetopt7WOptionEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.thread.i.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  switch i64 %i.ho, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.i15 [
    i64 1, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.thread.i14
    i64 0, label %bb.cq
  ]

bb.cq:                                            ; preds = %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #14, !noalias !162
  unreachable

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.i15: ; preds = %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !range !111, !alias.scope !161, !noalias !138, !noundef !4
  %i.lm = icmp eq i32 %i.ll, 45
  br i1 %i.lm, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.i, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.thread.i14

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.thread.i14: ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.i15, %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter22find_matching_long_opt.exit.thread.i
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lo = load ptr, ptr %i.ln, align 8, !alias.scope !135, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lq = load i64, ptr %i.lp, align 8, !alias.scope !135, !noundef !4 ; 2 uses
  br i1 %i.hy, label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit19.i, label %bb.cr

bb.cr:                                            ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.thread.i14
  %i.lr = load i32, ptr %i.hx, align 4, !range !111, !alias.scope !163, !noalias !138, !noundef !4
  br label %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit19.i

_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit19.i: ; preds = %bb.cr, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.thread.i14
  %.sroa.0.0.i18.i = phi i32 [ %i.lr, %bb.cr ], [ 0, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit.thread.i14 ] ; 2 uses
  %i.ls = and i64 %i.lq, 2305843009213693936      ; 3 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.ls ; 2 uses
  %.not.i20.i260 = icmp eq i64 %i.ls, 0
  br i1 %.not.i20.i260, label %._crit_edge263, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECshMbxjpSxucW_12fish_wgetopt.exit.i.i.preheader

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECshMbxjpSxucW_12fish_wgetopt.exit.i.i.preheader: ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit19.i
  %i.lu = insertelement <16 x i32> poison, i32 %.sroa.0.0.i18.i, i64 0
  %i.lv = shufflevector <16 x i32> %i.lu, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECshMbxjpSxucW_12fish_wgetopt.exit.i.i

bb.cs:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECshMbxjpSxucW_12fish_wgetopt.exit.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i262, i64 64
  %i.lx = add nsw i64 %.sroa.5.0.i.i261, -16      ; 2 uses
  %.not.i20.i = icmp eq i64 %i.lx, 0
  br i1 %.not.i20.i, label %._crit_edge263, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECshMbxjpSxucW_12fish_wgetopt.exit.i.i

._crit_edge263:                                   ; preds = %bb.cs, %_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCshMbxjpSxucW_12fish_wgetopt.exit19.i
  %i.ly = shl i64 %i.lq, 2
  %.idx268 = and i64 %i.ly, 60                    ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 %.idx268
  %.not.not.not.i.not.not.i.i264 = icmp samesign eq i64 %.idx268, 0
  br i1 %.not.not.not.i.not.not.i.i264, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph266

bb.ct:                                            ; preds = %.lr.ph266
  %i.ma = getelementptr inbounds nuw i8, ptr %i.mb, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i = icmp eq ptr %i.ma, %i.lz
  br i1 %.not.not.not.i.not.not.i.i, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph266

.lr.ph266:                                        ; preds = %._crit_edge263, %bb.ct
  %i.mb = phi ptr [ %i.ma, %bb.ct ], [ %i.lt, %._crit_edge263 ] ; 2 uses
  %.val2.i.i.i = load i32, ptr %i.mb, align 4, !range !111, !alias.scope !164, !noalias !165, !noundef !4
  %i.mc = icmp eq i32 %.val2.i.i.i, %.sroa.0.0.i18.i
  br i1 %i.mc, label %_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter15handle_long_opt.exit, label %bb.ct

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECshMbxjpSxucW_12fish_wgetopt.exit.i.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECshMbxjpSxucW_12fish_wgetopt.exit.i.i.preheader, %bb.cs
  %.sroa.0.05.i.i262 = phi ptr [ %i.lw, %bb.cs ], [ %i.lo, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECshMbxjpSxucW_12fish_wgetopt.exit.i.i.preheader ] ; 2 uses
  %.sroa.5.0.i.i261 = phi i64 [ %i.lx, %bb.cs ], [ %i.ls, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECshMbxjpSxucW_12fish_wgetopt.exit.i.i.preheader ]
end_hunk_0
