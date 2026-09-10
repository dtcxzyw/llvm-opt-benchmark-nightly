Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB5_17LineBreakIteratorNtNtB7_14rule_segmenter4Utf8ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout:bb.a
bb.bc:                                            ; preds = %bb.aw, %bb.aw
  switch i8 %.sroa.070.0, label %bb.at [
    i8 53, label %bb.bd
    i8 47, label %bb.bd
    i8 33, label %bb.bd
    i8 32, label %bb.bd
    i8 16, label %bb.bd
    i8 10, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.aw
  %.not173.le = icmp ugt i8 %.sroa.092.1.ph, %i.hi
  %i.if = load ptr, ptr %i.m, align 8, !nonnull !41, !align !46, !noundef !41 ; 3 uses
  %i.ig = zext i8 %.sroa.092.1.ph to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 120
  %i.ii = load i8, ptr %i.ih, align 8, !noundef !41
  %i.ij = zext i8 %i.ii to i64
  %i.ik = mul nuw nsw i64 %i.ij, %i.ig
  %i.il = zext i8 %i.hj to i64
  %i.im = add nuw nsw i64 %i.ik, %i.il            ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.io = load i64, ptr %i.in, align 8, !noundef !41
  %i.ip = icmp ult i64 %i.im, %i.io
  br i1 %i.ip, label %bb.be, label %.backedgethread-pre-split

bb.be:                                            ; preds = %bb.bd
  %i.iq = load ptr, ptr %i.if, align 8, !nonnull !41, !noundef !41
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.im
  %i.is = load i8, ptr %i.ir, align 1, !noundef !41
  %i.it = tail call { i8, i8 } @_RNvXs0_NtCselBS6QMlFOX_13icu_segmenter8providerNtB5_10BreakStateNtNtCscNnlIRywYVk_7zerovec3ule5AsULE14from_unaligned(i8 noundef %i.is) ; 2 uses
  %i.iu = extractvalue { i8, i8 } %i.it, 0
  %i.iv = extractvalue { i8, i8 } %i.it, 1        ; 2 uses
  switch i8 %i.iu, label %.loopexit267 [
    i8 0, label %bb.bf
    i8 1, label %.backedgethread-pre-split
    i8 2, label %bb.bg
    i8 3, label %bb.bh
    i8 4, label %bb.bi
  ]

bb.bf:                                            ; preds = %bb.be
  %i.iw = icmp eq i8 %.sroa.070.0, 54
  br i1 %i.iw, label %.backedgethread-pre-split, label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.ix = icmp eq i8 %.sroa.070.0, 54
  store <2 x ptr> %.ph, ptr %i.g, align 8
  store i64 %.sroa.9.0.ph.ph, ptr %i.i, align 8
  store i64 %.sroa.096.0.ph.ph, ptr %i.a, align 8
  store i32 %.sroa.598.0.ph.ph, ptr %i.b, align 8
  br i1 %i.ix, label %bb.bl, label %bb.bk

bb.bh:                                            ; preds = %bb.be
  %i.iy = icmp eq i8 %.sroa.070.0, 54
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.bh, %bb.bo
  %i.iz = phi i1 [ %i.iy, %bb.bh ], [ %i.jc, %bb.bo ]
  br label %.outer.outer

bb.bi:                                            ; preds = %bb.be
  br i1 %.not173.le, label %.outer, label %bb.bo

bb.bj:                                            ; preds = %bb.bf
  %i.ja = load i32, ptr %i.b, align 8, !range !122, !noundef !41
  %.not178 = icmp ne i32 %i.ja, -1                ; 2 uses
  %i.jb = load i64, ptr %i.a, align 8
  %.sroa.27.7 = select i1 %.not178, i64 %i.jb, i64 undef
  br label %.loopexit268

bb.bk:                                            ; preds = %bb.bg
  br i1 %.sroa.063.1.ph.ph.in, label %.backedge, label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %or.cond6 = select i1 %i.fn, i1 true, i1 %.sroa.063.1.ph.ph.in
  br i1 %or.cond6, label %.backedge, label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %.not176 = icmp ne i32 %.sroa.598.0.ph.ph, -1   ; 2 uses
  %.sroa.27.9 = select i1 %.not176, i64 %.sroa.096.0.ph.ph, i64 undef
  br label %.loopexit268

bb.bn:                                            ; preds = %bb.bl
  %.not177 = icmp ne i32 %.sroa.598.0.ph.ph, -1   ; 2 uses
  %.sroa.27.10 = select i1 %.not177, i64 %.sroa.096.0.ph.ph, i64 undef
  br label %.loopexit268

bb.bo:                                            ; preds = %bb.bi
  %i.jc = icmp eq i8 %.sroa.070.0, 54
  br label %.outer.outer.backedge

.loopexit268.split.loop.exit315:                  ; preds = %bb.ao
  %i.jd = extractvalue { i64, i64 } %i.ez, 1
  br label %.loopexit268

.loopexit268:                                     ; preds = %.backedge, %.loopexit268.split.loop.exit315, %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit, %bb.bb, %bb.bn, %bb.bm, %bb.bj, %bb.az, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit, %bb.bz, %bb.ca, %bb.ar, %bb.m, %bb.ah, %bb.ak, %bb.ai
  %.sroa.27.11 = phi i64 [ undef, %bb.bz ], [ 0, %bb.ca ], [ %i.ie, %bb.az ], [ %.sroa.27.13, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit ], [ %.sroa.27.1, %bb.ai ], [ %i.mw, %bb.by ], [ %.sroa.27.2, %bb.ak ], [ %.sroa.27.3, %bb.ah ], [ %i.do, %bb.m ], [ %.sroa.27.4, %bb.ar ], [ 0, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.sroa.27.7, %bb.bj ], [ %.sroa.27.10, %bb.bn ], [ %.sroa.27.9, %bb.bm ], [ %.sroa.27.6, %bb.bb ], [ %i.jd, %.loopexit268.split.loop.exit315 ], [ undef, %.backedge ]
  %.sroa.0.11.shrunk = phi i1 [ false, %bb.bz ], [ true, %bb.ca ], [ true, %bb.az ], [ %.not183, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit ], [ %.not180, %bb.ai ], [ true, %bb.by ], [ %.not170, %bb.ak ], [ %.not169, %bb.ah ], [ true, %bb.m ], [ %.not179, %bb.ar ], [ true, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.not178, %bb.bj ], [ %.not177, %bb.bn ], [ %.not176, %bb.bm ], [ %.not175, %bb.bb ], [ true, %.loopexit268.split.loop.exit315 ], [ false, %.backedge ]
  %.sroa.0.11 = zext i1 %.sroa.0.11.shrunk to i64
  %i.je = insertvalue { i64, i64 } poison, i64 %.sroa.0.11, 0
  %i.jf = insertvalue { i64, i64 } %i.je, i64 %.sroa.27.11, 1
  ret { i64, i64 } %i.jf

bb.bp:                                            ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209, %.lr.ph
  %i.jg = phi i64 [ %.promoted313, %.lr.ph ], [ %i.lb, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 2 uses
  %i.jh = phi ptr [ %.promoted312, %.lr.ph ], [ %i.kx, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 7 uses
  %.sroa.0.0311 = phi i64 [ 0, %.lr.ph ], [ %i.jm, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ]
  %i.ji = phi i32 [ %i.c, %.lr.ph ], [ %.sroa.4.0.i.ph.i204, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 3 uses
  %i.jj = icmp samesign ult i32 %i.ji, 128
  br i1 %i.jj, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jk = icmp samesign ult i32 %i.ji, 2048
  br i1 %i.jk, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jl = icmp samesign ult i32 %i.ji, 65536
  %..i.i.i = select i1 %i.jl, i64 3, i64 4
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bp, %bb.bq, %bb.br
  %.sroa.02.0.i = phi i64 [ 1, %bb.bp ], [ 2, %bb.bq ], [ %..i.i.i, %bb.br ]
  %i.jm = add i64 %.sroa.02.0.i, %.sroa.0.0311    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49942)
  %i.jn = ptrtoint ptr %i.jh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49959)
  %i.jo = icmp eq ptr %i.jh, %i.bp
  br i1 %i.jo, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jh, i64 1 ; 4 uses
  store ptr %i.jp, ptr %i.bn, align 8, !alias.scope !49960
  %i.jq = load i8, ptr %i.jh, align 1, !noalias !49961, !noundef !41 ; 5 uses
  %i.jr = icmp sgt i8 %i.jq, -1
  br i1 %i.jr, label %bb.bt, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203: ; preds = %bb.bs
  %i.js = and i8 %i.jq, 31
  %i.jt = zext nneg i8 %i.js to i32               ; 3 uses
  %i.ju = icmp ne ptr %i.jp, %i.bp
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jh, i64 2 ; 4 uses
  store ptr %i.jv, ptr %i.bn, align 8, !alias.scope !49962
  %i.jw = load i8, ptr %i.jp, align 1, !noalias !49961, !noundef !41
  %i.jx = shl nuw nsw i32 %i.jt, 6
  %i.jy = and i8 %i.jw, 63
  %i.jz = zext nneg i8 %i.jy to i32               ; 2 uses
  %i.ka = or disjoint i32 %i.jx, %i.jz
  %i.kb = icmp samesign ugt i8 %i.jq, -33
  br i1 %i.kb, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

bb.bt:                                            ; preds = %bb.bs
  %i.kc = zext nneg i8 %i.jq to i32
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203
  %i.kd = icmp ne ptr %i.jv, %i.bp
  tail call void @llvm.assume(i1 %i.kd)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jh, i64 3 ; 4 uses
  store ptr %i.ke, ptr %i.bn, align 8, !alias.scope !49963
  %i.kf = load i8, ptr %i.jv, align 1, !noalias !49961, !noundef !41
  %i.kg = shl nuw nsw i32 %i.jz, 6
  %i.kh = and i8 %i.kf, 63
  %i.ki = zext nneg i8 %i.kh to i32
  %i.kj = or disjoint i32 %i.kg, %i.ki            ; 2 uses
  %i.kk = shl nuw nsw i32 %i.jt, 12
  %i.kl = or disjoint i32 %i.kj, %i.kk
  %i.km = icmp samesign ugt i8 %i.jq, -17
  br i1 %i.km, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207
  %i.kn = icmp ne ptr %i.ke, %i.bp
  tail call void @llvm.assume(i1 %i.kn)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 2 uses
  store ptr %i.ko, ptr %i.bn, align 8, !alias.scope !49964
  %i.kp = load i8, ptr %i.ke, align 1, !noalias !49961, !noundef !41
  %i.kq = shl nuw nsw i32 %i.jt, 18
  %i.kr = and i32 %i.kq, 1835008
  %i.ks = shl nuw nsw i32 %i.kj, 6
  %i.kt = and i8 %i.kp, 63
  %i.ku = zext nneg i8 %i.kt to i32
  %i.kv = or disjoint i32 %i.ks, %i.ku
  %i.kw = or disjoint i32 %i.kv, %i.kr
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203, %bb.bt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208
  %i.kx = phi ptr [ %i.ke, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207 ], [ %i.ko, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208 ], [ %i.jv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203 ], [ %i.jp, %bb.bt ] ; 2 uses
  %.sroa.4.0.i.ph.i204 = phi i32 [ %i.kl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207 ], [ %i.kw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208 ], [ %i.ka, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203 ], [ %i.kc, %bb.bt ] ; 3 uses
  %i.ky = icmp samesign ult i32 %.sroa.4.0.i.ph.i204, 1114112
  tail call void @llvm.assume(i1 %i.ky)
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = sub i64 %i.kz, %i.jn
  %i.lb = add i64 %i.la, %i.jg                    ; 2 uses
  store i64 %i.lb, ptr %i.bq, align 8, !alias.scope !49942
  store i64 %i.jg, ptr %i.a, align 8
  store i32 %.sroa.4.0.i.ph.i204, ptr %i.b, align 8
  %i.lc = icmp eq i64 %i.jm, %i.bl
  br i1 %i.lc, label %._crit_edge, label %bb.bp

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209, %bb.f
  %i.ld = add i64 %i.f, -1                        ; 6 uses
  %i.le = shl nuw i64 %i.ld, 3                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %i.ld, 1152921504606846975
  br i1 %.not.i.i.i.i, label %bb.bv, label %bb.bu, !prof !61

bb.bu:                                            ; preds = %._crit_edge
  %.not.i.i.not = icmp eq i64 %i.f, 1
  br i1 %.not.i.i.not, label %.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

.thread:                                          ; preds = %bb.bu
  %1 = icmp eq i64 %i.ld, 0
  tail call void @llvm.assume(i1 %1)
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.bu
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !49965
  %i.lf = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.le, i64 noundef range(i64 1, 17) 8) #56, !noalias !49965 ; 11 uses
  %i.lg = ptrtoaddr ptr %i.lf to i64
  %i.lh = icmp eq ptr %i.lf, null
  br i1 %i.lh, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, %._crit_edge
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.le, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ undef, %._crit_edge ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %._crit_edge ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #57, !noalias !49966
  unreachable

bb.bw:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 6 uses
  %i.lj = add nuw nsw i64 %i.f, 2305843009213693951 ; 3 uses
  %i.lk = and i64 %i.lj, 2305843009213693951      ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.lk, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bw
  %i.ll = sub i64 %i.lg, %i.bk
  %i.lm = add i64 %i.ll, -9
  %diff.check = icmp ult i64 %i.lm, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lj, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %index ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %wide.load = load <2 x i64>, ptr %i.ln, align 8, !noalias !49967
  %wide.load483 = load <2 x i64>, ptr %i.lo, align 8, !noalias !49967
  %i.lp = sub <2 x i64> %wide.load, %broadcast.splat
  %i.lq = sub <2 x i64> %wide.load483, %broadcast.splat
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %index ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store <2 x i64> %i.lp, ptr %i.lr, align 8, !noalias !49968
  store <2 x i64> %i.lq, ptr %i.ls, align 8, !noalias !49968
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lt = icmp eq i64 %index.next, %n.vec
  br i1 %i.lt, label %middle.block, label %vector.body, !llvm.loop !49930

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lk, %n.vec
  br i1 %cmp.n, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.bw, %middle.block
  %.ph535 = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.bw ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.lj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.lu = phi i64 [ %i.ly, %scalar.ph.prol ], [ %.ph535, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lu
  %.val15.i.i.i.i.i.i.i.i.prol = load i64, ptr %i.lv, align 8, !noalias !49967, !noundef !41
  %i.lw = sub i64 %.val15.i.i.i.i.i.i.i.i.prol, %i.bl
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lu
  store i64 %i.lw, ptr %i.lx, align 8, !noalias !49968
  %i.ly = add nuw i64 %i.lu, 1                    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !49931

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph535, %scalar.ph.preheader ], [ %i.ly, %scalar.ph.prol ]
  %i.lz = sub nsw i64 %.ph535, %i.lk
  %i.ma = icmp ugt i64 %i.lz, -4
  br i1 %i.ma, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.mb = phi i64 [ %i.mr, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.mb
  %.val15.i.i.i.i.i.i.i.i = load i64, ptr %i.mc, align 8, !noalias !49967, !noundef !41
  %i.md = sub i64 %.val15.i.i.i.i.i.i.i.i, %i.bl
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.mb
  store i64 %i.md, ptr %i.me, align 8, !noalias !49968
  %i.mf = add nuw i64 %i.mb, 1                    ; 2 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.mf
  %.val15.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.mg, align 8, !noalias !49967, !noundef !41
  %i.mh = sub i64 %.val15.i.i.i.i.i.i.i.i.1, %i.bl
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.mf
  store i64 %i.mh, ptr %i.mi, align 8, !noalias !49968
  %i.mj = add nuw i64 %i.mb, 2                    ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.mj
  %.val15.i.i.i.i.i.i.i.i.2 = load i64, ptr %i.mk, align 8, !noalias !49967, !noundef !41
  %i.ml = sub i64 %.val15.i.i.i.i.i.i.i.i.2, %i.bl
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.mj
  store i64 %i.ml, ptr %i.mm, align 8, !noalias !49968
  %i.mn = add nuw i64 %i.mb, 3                    ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.mn
  %.val15.i.i.i.i.i.i.i.i.3 = load i64, ptr %i.mo, align 8, !noalias !49967, !noundef !41
  %i.mp = sub i64 %.val15.i.i.i.i.i.i.i.i.3, %i.bl
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.mn
  store i64 %i.mp, ptr %i.mq, align 8, !noalias !49968
  %i.mr = add nuw i64 %i.mb, 4                    ; 2 uses
  %i.ms = icmp eq i64 %i.mr, %i.lk
  br i1 %i.ms, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph, !llvm.loop !49932

_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.thread
  %.sroa.4.0.i.i.i402 = phi i64 [ 0, %.thread ], [ %i.ld, %middle.block ], [ %i.ld, %scalar.ph ], [ %i.ld, %scalar.ph.prol.loopexit ]
  %.sroa.10.0.i.i.i401 = phi ptr [ inttoptr (i64 8 to ptr), %.thread ], [ %i.lf, %middle.block ], [ %i.lf, %scalar.ph ], [ %i.lf, %scalar.ph.prol.loopexit ]
  %.sroa.5.0.copyload.sink.i.i.i.i.i.i = phi i64 [ 0, %.thread ], [ %i.lk, %middle.block ], [ %i.lk, %scalar.ph ], [ %i.lk, %scalar.ph.prol.loopexit ]
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.mt = icmp eq i64 %.val, 0
  br i1 %i.mt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.bx

bb.bx:                                            ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit
  %.val185 = load ptr, ptr %i.bi, align 8, !nonnull !41, !noundef !41
  %i.mu = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val185, i64 noundef %i.mu, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit

bb.by:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit
  store i32 -1, ptr %i.b, align 8
  store i64 0, ptr %i.e, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.mw = load i64, ptr %i.mv, align 8, !noundef !41
  br label %.loopexit268

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bx, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit
  store i64 %.sroa.4.0.i.i.i402, ptr %i.d, align 8
  store ptr %.sroa.10.0.i.i.i401, ptr %i.bi, align 8
  store i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, ptr %i.e, align 8
  %i.mx = load i32, ptr %i.b, align 8, !range !122, !noundef !41
  %.not183 = icmp ne i32 %i.mx, -1                ; 2 uses
  %i.my = load i64, ptr %i.a, align 8
  %.sroa.27.13 = select i1 %.not183, i64 %i.my, i64 undef
  br label %.loopexit268

bb.bz:                                            ; preds = %bb.c
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !noundef !41
  %i.nb = icmp eq i64 %i.na, 0
  br i1 %i.nb, label %bb.ca, label %.loopexit268

bb.ca:                                            ; preds = %bb.bz
  store i64 1, ptr %i.mz, align 8
  br label %.loopexit268
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !41, !noundef !41 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 48
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.f) ; 5 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %..i
  store ptr %i.g, ptr %i.a, align 8
  %i.h = icmp eq ptr %.val3, %.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.09.i
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49983)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49985)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !49986, !nonnull !41, !noundef !41
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !49987
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.o = icmp eq i64 %i.j, %..i
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.j, %..i
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.110.i
  %i.s = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49988)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49990)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !49991, !nonnull !41, !noundef !41
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !49992
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.x = icmp eq i64 %i.s, %..i
  br i1 %i.x, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i, %bb.c
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.a
  %i.z = sub nuw i64 %1, %..i
  ret i64 %i.z
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB9_9visualize6stroke11FixedStrokeEENtNtB16_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c) #59
  br i1 %i.d, label %bb.b, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e) #59
  br i1 %i.f, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread

_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g) #59
  br i1 %i.h, label %bb.c, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread

_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %bb.a, %bb.b, %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 5)
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @768, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @767)
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @769, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @767)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @770, i64 noundef 5, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @767)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @771, i64 noundef 6, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @767)
  %i.o = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @772, i64 noundef 13)
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49996)
  %i.q = load i64, ptr %0, align 8, !range !60, !alias.scope !49996, !noalias !49997, !noundef !41
  %.not.i = icmp eq i64 %i.q, -2
  br i1 %.not.i, label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit, label %.split

.split:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49998
  store ptr %0, ptr %i.a, align 8, !noalias !49998
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @842, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @849)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49998
  br i1 %i.r, label %bb.f, label %bb.e

_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @840, i64 noundef 4), !noalias !49996
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split, %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @727, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %.split, %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit, %bb.c, %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread ], [ true, %bb.c ], [ %i.t, %bb.e ], [ true, %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit ], [ true, %.split ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs5_NtCs4vtCw9T9d1A_20unicode_segmentation4wordNtB5_11UWordBoundsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 28 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !41 ; 18 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.cj, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %.promoted378 = load i8, ptr %i.h, align 8      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.lr.ph, %bb.ar
end_hunk_0
begin_hunk_1_@_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout:bb.a
          cleanup
  %i.z = icmp eq i64 %i.n, %i.k
  br i1 %i.z, label %.body2, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i48 = phi i64 [ %i.w, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [144 x i8], ptr %i.i, i64 %.sroa.0.1.i.i48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(144) %i.aa) #54
          to label %bb.e unwind label %bb.g, !noalias !52772, !inline_history !52766

bb.g:                                             ; preds = %.lr.ph49
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !52772, !inline_history !52766
  unreachable

.body2:                                           ; preds = %bb.e, %bb.f
  %.val2.i.i = load i64, ptr %i.f, align 8, !range !45, !alias.scope !52775, !noundef !41 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ac, label %.body, label %bb.h

bb.h:                                             ; preds = %.body2
  %.val3.i.i = load ptr, ptr %i.h, align 8, !alias.scope !52775, !nonnull !41, !noundef !41
  %i.ad = mul nuw i64 %.val2.i.i, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #56
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemECs7tN9tvpkfrg_12typst_layout.exit.i, %.lr.ph11
  %.val.i.i = load i64, ptr %i.f, align 8, !range !45, !alias.scope !52775, !noundef !41 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i, 0
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowECs7tN9tvpkfrg_12typst_layout.exit
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !52775, !nonnull !41, !noundef !41
  %i.af = mul nuw i64 %.val.i.i, 144
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemEECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowECs7tN9tvpkfrg_12typst_layout.exit, %bb.i
  %i.ag = icmp eq i64 %i.g, %i.d
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph11

bb.j:                                             ; preds = %.lr.ph51
  %i.ah = add i64 %.sroa.0.1.i50, 1               ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.d
  br i1 %i.ai, label %._crit_edge, label %.lr.ph51

.body:                                            ; preds = %.body2, %bb.h
  %i.aj = icmp eq i64 %i.g, %i.d
  br i1 %i.aj, label %._crit_edge, label %.lr.ph51

.lr.ph51:                                         ; preds = %.body, %bb.j
  %.sroa.0.1.i50 = phi i64 [ %i.ah, %bb.j ], [ %i.g, %.body ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i50
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #54
          to label %bb.j unwind label %bb.k, !inline_history !52771

._crit_edge:                                      ; preds = %bb.j, %.body
  resume { ptr, i32 } %i.y

bb.k:                                             ; preds = %.lr.ph51
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !inline_history !52771
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemEECs7tN9tvpkfrg_12typst_layout.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtBM_6layout3abs3AbsEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52781
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !52782
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtBC_6layout3abs3AbsENtB5_5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52783
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !52783, !captures !65
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52783
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtBC_6layout3abs3AbsENtB5_5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i.i

_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtBC_6layout3abs3AbsENtB5_5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52781
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52789
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !52790
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB5_5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52791
  store ptr %.sroa.0.05.i.i, ptr %i.a, align 8, !noalias !52791, !captures !65
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52791
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB5_5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i.i

_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB5_5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52789
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52818)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52819
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52820)
  store i64 0, ptr %i.b, align 8, !alias.scope !52821, !noalias !52822
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !52821, !noalias !52822
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !alias.scope !52823, !noalias !52818
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1)
          to label %bb.b unwind label %bb.i, !noalias !52824

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !52819
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !52825, !noalias !52826, !noundef !41 ; 4 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !52825, !noalias !52826 ; 3 uses
  %.not.i.i22.i = icmp eq i64 %i.f, %.promoted.i
  br i1 %.not.i.i22.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.5.0.copyload8.i = load i8, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !52827, !noalias !52819 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.5.0.copyload8.i, 2
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.split.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.split.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !52818, !noalias !52824, !nonnull !41
  %.promoted26.i = load i64, ptr %i.d, align 8, !alias.scope !52818, !noalias !52824 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 1
  tail call void @llvm.assume(i1 %.not.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52829)
  %i.h = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.promoted26.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 64, i1 false), !noalias !52818
  %.sroa.4.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %.sroa.5.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.us.i, align 8, !noalias !52819
  %.sroa.511.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx.us.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %i.i, i64 7, i1 false), !noalias !52818
  %i.k = add i64 %.promoted26.i, 1
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !52818, !noalias !52824
  br label %.loopexit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52829)
  %i.l = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.l)
  store i64 1, ptr %i.a, align 8, !noalias !52819
  %i.m = icmp eq i64 %i.f, 1
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread.i
  %i.n = add i64 %i.f, -1                         ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %1 = icmp eq i64 %i.n, 0
  br i1 %1, label %.loopexit, label %.lr.ph.a

bb.d:                                             ; preds = %.lr.ph.a
  %i.p = icmp eq i64 %i.r, %i.n
  br i1 %i.p, label %.loopexit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i4.i5 = phi i64 [ %i.r, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5
  %i.r = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.q)
          to label %bb.d unwind label %bb.f, !noalias !52819

bb.e:                                             ; preds = %.lr.ph7
  %i.s = add i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6, 1  ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.n
  br i1 %i.t, label %.body, label %.lr.ph7

bb.f:                                             ; preds = %.lr.ph.a
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = icmp eq i64 %i.r, %i.n
  br i1 %i.v, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i.i.i5.i6 = phi i64 [ %i.s, %bb.e ], [ %i.r, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.w) #54
          to label %bb.e unwind label %bb.g, !noalias !52819

bb.g:                                             ; preds = %.lr.ph7
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !52830
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !52819
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #54
          to label %.body unwind label %bb.h, !noalias !52819

.body:                                            ; preds = %bb.e, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.u, %bb.f ], [ %i.u, %bb.e ]
  %.val = load ptr, ptr %i.c, align 8, !nonnull !41, !noundef !41
  %.val3 = load i64, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs7tN9tvpkfrg_12typst_layout(ptr nonnull %.val, i64 %.val3) #54
          to label %bb.k unwind label %bb.j

.loopexit:                                        ; preds = %bb.d, %bb.c, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.split.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52819
  %i.aa = load ptr, ptr %i.c, align 8, !nonnull !41, !noundef !41
  %i.ab = load i64, ptr %i.d, align 8, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %i.ab, 1
  ret { ptr, i64 } %i.ad

bb.j:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !range !53, !noundef !41
  store i64 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !52834, !noalias !52835, !noundef !41 ; 2 uses
  %i.e = and i32 %i.d, 33554432
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 67108864
  %.not1.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.h = call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library4text4deco10Decorationj1_ENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !52841, !noalias !52842, !noundef !41 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1                     ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !alias.scope !52841, !noalias !52842, !nonnull !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !52841, !noalias !52842
  %.sink11.i = select i1 %i.e, ptr %i.f, ptr %0   ; 2 uses
  %.sink10.i = select i1 %i.e, i64 %i.h, i64 %i.d ; 2 uses
  %.idx = mul nuw nsw i64 %.sink10.i, 464
  %i.i = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 %.idx
  %i.j = icmp eq i64 %.sink10.i, 0
  br i1 %i.j, label %_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationINtNtNtBa_5slice4iter4IterB14_EECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.05.i = phi ptr [ %i.k, %.lr.ph.i ], [ %.sink11.i, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 464 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52843
  store ptr %.sroa.0.05.i, ptr %i.a, align 8, !noalias !52843, !captures !65
  %i.l = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52843
  %i.m = icmp eq ptr %i.k, %i.i
  br i1 %i.m, label %_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationINtNtNtBa_5slice4iter4IterB14_EECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationINtNtNtBa_5slice4iter4IterB14_EECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.lr.ph.i, %bb.a
  %i.n = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.n
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAyj4_ENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !52849, !noalias !52850, !noundef !41 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 4                     ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !alias.scope !52849, !noalias !52850, !nonnull !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !52849, !noalias !52850
  %.sink11.i = select i1 %i.e, ptr %i.f, ptr %0   ; 2 uses
  %.sink10.i = select i1 %i.e, i64 %i.h, i64 %i.d ; 2 uses
  %.idx = shl nuw nsw i64 %.sink10.i, 3
  %i.i = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 %.idx
  %i.j = icmp eq i64 %.sink10.i, 0
  br i1 %i.j, label %_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRyINtNtNtBa_5slice4iter4IteryEECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.05.i = phi ptr [ %i.k, %.lr.ph.i ], [ %.sink11.i, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52851
  store ptr %.sroa.0.05.i, ptr %i.a, align 8, !noalias !52851, !captures !65
  %i.l = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52851
  %i.m = icmp eq ptr %i.k, %i.i
  br i1 %i.m, label %_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRyINtNtNtBa_5slice4iter4IteryEECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRyINtNtNtBa_5slice4iter4IteryEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.lr.ph.i, %bb.a
  %i.n = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB9_9visualize6stroke6StrokeENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(112) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  %i.c = load i64, ptr %i.a, align 8, !range !52, !noundef !41
  %.not = icmp eq i64 %i.c, 2
  %i.d = load i64, ptr %i.b, align 8, !range !52
  %.not1 = icmp eq i64 %i.d, 2                    ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %.not1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  br i1 %.not1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeECs7tN9tvpkfrg_12typst_layout.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_6StrokeNtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %2)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !range !71, !alias.scope !52856, !noundef !41
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.val2.i = load i64, ptr %i.i, align 8, !range !60, !alias.scope !52857, !noundef !41 ; 2 uses
  %i.j = icmp sgt i64 %.val2.i, 0
  br i1 %i.j, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtNtBI_9visualize6stroke11DashPatternEEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %.val3.i = load ptr, ptr %i.k, align 8, !alias.scope !52857, !nonnull !41, !noundef !41
  %i.l = mul nuw i64 %.val2.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtNtBI_9visualize6stroke11DashPatternEEECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.val.i = load i64, ptr %i.m, align 8, !range !60, !alias.scope !52857, !noundef !41 ; 2 uses
  %i.n = icmp sgt i64 %.val.i, 0
  br i1 %i.n, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeECs7tN9tvpkfrg_12typst_layout.exit

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !52857, !nonnull !41, !noundef !41
  %i.p = mul nuw i64 %.val.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtNtBI_9visualize6stroke11DashPatternEEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXsw_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library4text4deco10Decorationj1_ENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([472 x i8]) align 8 captures(none) dereferenceable(472) initializes((464, 472)) %0) unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
end_hunk_1
