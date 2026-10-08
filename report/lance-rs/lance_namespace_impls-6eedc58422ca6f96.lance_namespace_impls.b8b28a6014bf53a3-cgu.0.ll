Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags0B9_:bb.a
  store i64 %.sroa.02.0.copyload3.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !198926
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  store i64 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  store ptr %.sroa.519.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  store i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  store <2 x i64> %i.is, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  call void @llvm.experimental.noalias.scope.decl(metadata !198928)
  %.val.i.i.i.i.i.i.i.i.i.i.i57 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !198929, !noalias !198930, !noundef !416
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !198929, !noalias !198930, !noundef !416
  %i.it = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls(i64 %.val.i.i.i.i.i.i.i.i.i.i.i57, i64 %.val6.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b), !noalias !198931 ; 2 uses
  %i.iu = load i64, ptr %i.ht, align 8, !alias.scope !198932, !noalias !198933, !noundef !416
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.cb, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !426

bb.cb:                                            ; preds = %bb.ca
  %i.iw = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1y_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cj, !noalias !198930 ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  %.val.i.i.i.i.i.i.i.i.i.i.i.i58 = load ptr, ptr %i.e, align 8, !alias.scope !198934, !noalias !198935, !nonnull !416, !noundef !416 ; 8 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ic, align 8, !alias.scope !198934, !noalias !198935, !noundef !416 ; 4 uses
  %i.ix = lshr i64 %i.it, 57
  %i.iy = trunc nuw nsw i64 %i.ix to i8           ; 3 uses
  %i.iz = insertelement <16 x i8> poison, i8 %i.iy, i64 0
  %i.ja = shufflevector <16 x i8> %i.iz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.it, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kb, %bb.ce ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ce ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.122.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ce ]
  %i.jb = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ka, %bb.ce ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i58, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.jc, align 1, !noalias !198936 ; 3 uses
  %i.jd = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ja
  %i.je = bitcast <16 x i1> %i.jd to i16          ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.je, 0
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cc, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB3q_11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.jq, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB3q_11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.je, %bb.cc ] ; 3 uses
  %i.jf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.jg = zext nneg i16 %i.jf to i64
  %i.jh = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.jg
  %i.ji = and i64 %i.jh, %.val7.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jj = sub nsw i64 0, %i.ji
  %i.jk = getelementptr inbounds [64 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i58, i64 %i.jj ; 5 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 -48
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jl, align 8, !noalias !198937, !noundef !416
  %i.jm = icmp eq i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.jm, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB3q_11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB3q_11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, !prof !424

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB3q_11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jn = getelementptr i8, ptr %i.jk, i64 -56
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i60 = load ptr, ptr %i.jn, align 8, !noalias !198937, !nonnull !416, !noundef !416
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i60, i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i), !noalias !198937
  %i.jo = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jo, label %bb.ch, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB3q_11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, !prof !425

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB3q_11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cc
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cd, !prof !426

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB3q_11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB3q_11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jp = add i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.jq = and i16 %i.jp, %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i59 = icmp eq i16 %i.jq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i59, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jr = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.js = bitcast <16 x i1> %i.jr to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.js, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ce, label %.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !426

.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.cd
  %i.jt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.js, i1 true)
  %i.ju = zext nneg i16 %i.jt to i64
  %i.jv = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ju
  %i.jw = and i64 %i.jv, %.val7.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jw, %.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jx = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.jy = bitcast <16 x i1> %i.jx to i16
  %i.jz = icmp eq i16 %i.jy, 0
  br i1 %i.jz, label %bb.ce, label %bb.cf, !prof !426

bb.ce:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cd
  %.sroa.04.122.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cd ]
  %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.cd ]
  %i.ka = add i64 %i.jb, 16                       ; 2 uses
  %i.kb = add i64 %i.ka, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.cc

bb.cf:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i58, i64 %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kd = load i8, ptr %i.kc, align 1, !noalias !198938, !noundef !416 ; 2 uses
  %i.ke = icmp sgt i8 %i.kd, -1
  br i1 %i.ke, label %bb.cg, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i, !prof !426

bb.cg:                                            ; preds = %bb.cf
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i58, align 16, !noalias !198938
  %i.kf = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.kg = bitcast <16 x i1> %i.kf to i16          ; 2 uses
  %.not.i24.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.kg, 0
  %i.kh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.kg, i1 true)
  %i.ki = zext nneg i16 %i.kh to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i24.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i58, i64 %i.ki
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !198939
  br label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB3q_11make_hasherBS_B1u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kj = getelementptr inbounds i8, ptr %i.jk, i64 -40 ; 2 uses
  %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kj, align 8, !noalias !198940 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.jk, i64 -32 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !198940 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.jk, i64 -24
  store i64 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.kj, align 8, !noalias !198941
  store ptr %.sroa.519.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !198941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !198942
  %i.kk = icmp eq i64 %.sroa.02.0.copyload3.i.i.i.i.i.i.i, 0
  br i1 %i.kk, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.02.0.copyload3.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !198943
  br label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.cf
  %i.kl = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.cg ], [ %i.kd, %bb.cf ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ki, %bb.cg ], [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cf ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !198944)
  %i.km = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i58, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kn = and i8 %i.kl, 1
  %i.ko = zext nneg i8 %i.kn to i64
  %i.kp = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.kq = and i64 %i.kp, %.val7.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.iy, ptr %i.km, align 1, !noalias !198939
  %i.kr = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i58, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.kr, i64 16
  store i8 %i.iy, ptr %i.ks, align 1, !noalias !198939
  %i.kt = load <2 x i64>, ptr %i.ht, align 8, !alias.scope !198945, !noalias !198946
  %i.ku = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ko, i64 0
  %i.kv = sub <2 x i64> %i.kt, %i.ku
  store <2 x i64> %i.kv, ptr %i.ht, align 8, !alias.scope !198945, !noalias !198946
  %i.kw = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kx = getelementptr inbounds [64 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i58, i64 %i.kw ; 4 uses
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.b, i64 24, i1 false), !noalias !198947
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.kx, i64 -40
  store i64 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !198948
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.kx, i64 -32
  store ptr %.sroa.519.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !198948
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.kx, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !198942
  br label %bb.co

bb.cj:                                            ; preds = %bb.cb
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i16 %i.in, ptr %i.hy, align 8, !alias.scope !198918, !noalias !198917
  store i64 %i.iq, ptr %i.hv, align 8, !alias.scope !198916, !noalias !198917
  %i.la = icmp sgt i64 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.la, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.519.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.519.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !198949
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.lb = icmp eq i64 %.sroa.02.0.copyload3.i.i.i.i.i.i.i, 0
  br i1 %i.lb, label %.body.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.02.0.copyload3.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !198950
  br label %.body.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ci, %bb.ch
  %.0.val.off.i.i.i.i.i.i.i.i.i.i.i = add i64 %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i.i.i.i.i.i.i.i, -3
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.09.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !198951
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !198926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.6.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.6.i.i.i.i.i.i.i)
  %i.lc = icmp eq i64 %i.iq, 0
  br i1 %i.lc, label %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2o_8adapters3map8map_foldBN_TBO_NtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEuNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5z_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags0s_0NCINvNvB2i_8for_each4callB3V_NCINvXs1i_NtB8_3mapINtB8D_7HashMapBO_B3Z_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2m_7collect6ExtendB3V_E6extendINtB3o_3MapINtNtNtNtB9e_11collections4hash3map8IntoIterBO_B1q_EB5p_EE0E0E0EB5B_.exit.loopexit.i.i.i.i.i.i, label %bb.bz

_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2o_8adapters3map8map_foldBN_TBO_NtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEuNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5z_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags0s_0NCINvNvB2i_8for_each4callB3V_NCINvXs1i_NtB8_3mapINtB8D_7HashMapBO_B3Z_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2m_7collect6ExtendB3V_E6extendINtB3o_3MapINtNtNtNtB9e_11collections4hash3map8IntoIterBO_B1q_EB5p_EE0E0E0EB5B_.exit.loopexit.i.i.i.i.i.i: ; preds = %bb.co, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.lcssa15.i.i.i.i.i.i = phi i64 [ 0, %bb.co ], [ %i.iq, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ]
  store i16 %i.in, ptr %i.hy, align 8, !alias.scope !198918, !noalias !198917
  store i64 %.lcssa15.i.i.i.i.i.i, ptr %i.hv, align 8, !alias.scope !198916, !noalias !198917
  br label %bb.cr

.body.i.i.i:                                      ; preds = %bb.cp, %bb.cm, %bb.cl
  %.sink.i.i.i = phi ptr [ %i.d, %bb.cp ], [ %i.c, %bb.cl ], [ %i.c, %bb.cm ]
  %eh.lpad-body9.i.i.i = phi { ptr, i32 } [ %i.ld, %bb.cp ], [ %i.kz, %bb.cl ], [ %i.kz, %bb.cm ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %.sink.i.i.i), !noalias !198909
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.e) #73, !noalias !198902
  br label %.body61

bb.cp:                                            ; preds = %bb.by
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.cq:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.le = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.t), !noalias !198908
  br label %.body61

.body61:                                          ; preds = %bb.cq, %.body.i.i.i
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body9.i.i.i, %.body.i.i.i ], [ %i.le, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cy

bb.cr:                                            ; preds = %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2o_8adapters3map8map_foldBN_TBO_NtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEuNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5z_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags0s_0NCINvNvB2i_8for_each4callB3V_NCINvXs1i_NtB8_3mapINtB8D_7HashMapBO_B3Z_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2m_7collect6ExtendB3V_E6extendINtB3o_3MapINtNtNtNtB9e_11collections4hash3map8IntoIterBO_B1q_EB5p_EE0E0E0EB5B_.exit.loopexit.i.i.i.i.i.i, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.6.i.i.i.i.i.i.i)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c), !noalias !198952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !198910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !198907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !198902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.lf = load i8, ptr %i.hk, align 8, !range !428, !noalias !198953, !noundef !416
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, !prof !439

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i: ; preds = %bb.cr
  %.pre.i.i.i = load i64, ptr %i.hj, align 8, !noalias !198954
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !198954
  br label %bb.cs

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.cr
  %i.lh = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc64 unwind label %bb.cx  ; 2 uses

.noexc64:                                         ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.li = extractvalue { i64, i64 } %i.lh, 0
  %i.lj = extractvalue { i64, i64 } %i.lh, 1      ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i64 %i.lj, ptr %i.lk, align 8, !noalias !198955
  store i8 1, ptr %i.hk, align 8, !noalias !198955
  br label %bb.cs

bb.cs:                                            ; preds = %.noexc64, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i
  %.pre-phi9.i = phi i64 [ %i.lj, %.noexc64 ], [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i ]
  %.pre-phi.i = phi i64 [ %i.li, %.noexc64 ], [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i ] ; 2 uses
  %i.ll = add i64 %.pre-phi.i, 1
  store i64 %i.ll, ptr %i.hj, align 8, !noalias !198954
  %i.lm = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr null, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ln, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false)
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 %.pre-phi.i, ptr %.sroa.44.0..sroa_idx.i, align 8
  %.sroa.55.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i64 %.pre-phi9.i, ptr %.sroa.55.0..sroa_idx.i63, align 8
  store i64 -1, ptr %i.r, align 8
  %.sroa.8224.24.copyload = load ptr, ptr %i.s, align 8
  %.sroa.10225.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.10225.24.copyload = load i64, ptr %.sroa.10225.24..sroa_idx, align 8
  %.sroa.11226.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.11226.24.copyload = load i64, ptr %.sroa.11226.24..sroa_idx, align 8
  %.sroa.12.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.6.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.24..sroa_idx, i64 16, i1 false)
  %.sroa.13227.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.lo = load i64, ptr %.sroa.13227.24..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.ln)
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 272
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshkPeWWG1flk_5lance7dataset7DatasetECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.lp)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cz, %bb.cs
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %.body31

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !198956)
  call void @llvm.experimental.noalias.scope.decl(metadata !198957)
  %.val.i.i69 = load i64, ptr %i.gl, align 16, !range !419, !alias.scope !198958, !noundef !416 ; 2 uses
  %i.lr = icmp eq i64 %.val.i.i69, 0
  br i1 %i.lr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val1.i.i70 = load ptr, ptr %i.ls, align 8, !alias.scope !198958, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i70, i64 noundef %.val.i.i69, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !198958
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71: ; preds = %bb.cv, %bb.cu
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %.sink.split

.sink.split:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71
  %.sink335 = phi ptr [ %i.lt, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71 ], [ %1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.8.sroa.0.0.ph = phi i64 [ %i.lo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71 ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.5.sroa.6.sroa.0.2.ph = phi i64 [ %.sroa.11226.24.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71 ], [ %.sroa.5.sroa.6.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.5.sroa.5.sroa.0.sroa.0.2.ph = phi i56 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71 ], [ %.sroa.5.sroa.5.sroa.0.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.5.sroa.5.sroa.7.2.ph = phi i64 [ %.sroa.10225.24.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71 ], [ %.sroa.5.sroa.5.sroa.7.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.5.sroa.5.sroa.6.2.ph = phi ptr [ %.sroa.8224.24.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71 ], [ %.sroa.5.sroa.5.sroa.6.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.5.sroa.5.sroa.5.2.ph = phi i64 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71 ], [ %.sroa.5.sroa.5.sroa.5.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.5.sroa.0.2.ph = phi i8 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71 ], [ %.sroa.5.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.sroa.0.2.ph = phi i64 [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit71 ], [ -2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models23list_table_tags_request20ListTableTagsRequestECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(112) %.sink335)
  br label %bb.cw

bb.cw:                                            ; preds = %.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.8.sroa.0.0 = phi i64 [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.8.sroa.0.0.ph, %.sink.split ]
  %.sroa.5.sroa.6.sroa.0.2 = phi i64 [ %.sroa.5.sroa.6.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.5.sroa.6.sroa.0.2.ph, %.sink.split ]
  %.sroa.5.sroa.5.sroa.0.sroa.0.2 = phi i56 [ %.sroa.5.sroa.5.sroa.0.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.5.sroa.5.sroa.0.sroa.0.2.ph, %.sink.split ]
  %.sroa.5.sroa.5.sroa.7.2 = phi i64 [ %.sroa.5.sroa.5.sroa.7.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.5.sroa.5.sroa.7.2.ph, %.sink.split ]
  %.sroa.5.sroa.5.sroa.6.2 = phi ptr [ %.sroa.5.sroa.5.sroa.6.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.5.sroa.5.sroa.6.2.ph, %.sink.split ]
  %.sroa.5.sroa.5.sroa.5.2 = phi i64 [ %.sroa.5.sroa.5.sroa.5.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.5.sroa.5.sroa.5.2.ph, %.sink.split ]
  %.sroa.5.sroa.0.2 = phi i8 [ %.sroa.5.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.5.sroa.0.2.ph, %.sink.split ]
  %.sroa.0.2 = phi i64 [ -2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.0.2.ph, %.sink.split ]
  store i64 %.sroa.0.2, ptr %0, align 8
  %.sroa.5.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.sroa.0.2, ptr %.sroa.5.0..sroa_idx73, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx73.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.5.sroa.5.sroa.0.sroa.0.2, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx73.sroa_idx, align 1
  %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx73.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.5.sroa.5.2, ptr %.sroa.5.sroa.5.sroa.5.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx73.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx73.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.5.sroa.5.sroa.6.2, ptr %.sroa.5.sroa.5.sroa.6.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx73.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.sroa.7.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx73.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.sroa.5.sroa.7.2, ptr %.sroa.5.sroa.5.sroa.7.0..sroa.5.sroa.5.0..sroa.5.0..sroa_idx73.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx73.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.sroa.6.sroa.0.2, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx73.sroa_idx, align 8
  %.sroa.5.sroa.6.sroa.5.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx73.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.6.sroa.5.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx73.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.6.sroa.5, i64 16, i1 false)
  %.sroa.8.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.8.sroa.0.0, ptr %.sroa.8.0..sroa_idx74, align 8
  %.sroa.8.sroa.2.0..sroa.8.0..sroa_idx74.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.sroa.2.0..sroa.8.0..sroa_idx74.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  br label %common.ret

bb.cx:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.s) #73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.cy

bb.cy:                                            ; preds = %.body61, %bb.cx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_4Tags4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.pn14.pn = phi { ptr, i32 } [ %.pn4, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_4Tags4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.lu, %bb.cx ], [ %.pn9, %.body61 ]
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 272
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshkPeWWG1flk_5lance7dataset7DatasetECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.lv) #73
          to label %.body31 unwind label %bb.r

bb.cz:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10136.sroa.15.sroa.10, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10140.sroa.12.sroa.10, i64 16, i1 false), !alias.scope !198959
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10140.sroa.12.sroa.10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.6.sroa.5, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10136.sroa.15.sroa.10, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10136.sroa.15.sroa.10)
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 272
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshkPeWWG1flk_5lance7dataset7DatasetECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.lw)
          to label %bb.ae unwind label %bb.ct

bb.da:                                            ; preds = %bb.db, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit36
  store i8 2, ptr %i.x, align 8
  resume { ptr, i32 } %.pn20.pn

bb.db:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit36
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models23list_table_tags_request20ListTableTagsRequestECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(112) %1) #73
  br label %bb.da
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace16count_table_rows0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.3151 = alloca [7 x i8], align 1          ; 2 uses
  %.sroa.4156 = alloca [40 x i8], align 8         ; 2 uses
  %i.e = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.13138 = alloca [16 x i8], align 8        ; 8 uses
  %.sroa.3123 = alloca [56 x i8], align 8         ; 3 uses
  %.sroa.5124 = alloca [280 x i8], align 8        ; 2 uses
  %i.f = alloca [344 x i8], align 8               ; 8 uses
  %.sroa.3 = alloca [31 x i8], align 1            ; 3 uses
  %.sroa.596 = alloca [24 x i8], align 8          ; 2 uses
  %i.g = alloca [56 x i8], align 8                ; 8 uses
  %i.h = alloca [56 x i8], align 8                ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
end_hunk_0
