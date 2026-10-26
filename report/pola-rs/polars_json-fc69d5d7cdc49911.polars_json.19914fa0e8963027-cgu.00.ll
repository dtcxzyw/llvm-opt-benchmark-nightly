Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_json-fc69d5d7cdc49911.polars_json.19914fa0e8963027-cgu.00?download=true
inline.NumInlined: 1646
inline.NumDeleted: 576
begin_hunk_0_@_RINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize12__deserializeNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEB6_:bb.a
.noexc54.i:                                       ; preds = %bb.mv
  %.pre16.i.i.i.i.i = load i64, ptr %i.aav, align 8, !dbg !7342, !alias.scope !6246, !noalias !6240
  %.pre17.i.i.i.i.i = add i64 %.pre16.i.i.i.i.i, 1, !dbg !7343
  br label %bb.mw, !dbg !7341

bb.mw:                                            ; preds = %.noexc54.i, %bb.mu
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.aci, %bb.mu ], [ %.pre17.i.i.i.i.i, %.noexc54.i ], !dbg !7343 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6246), !dbg !7344
  %i.acl = load i64, ptr %i.aax, align 8, !dbg !7345, !alias.scope !6246, !noalias !6240, !noundef !1325 ; 2 uses
  store i64 %.pre-phi.i.i.i.i.i, ptr %i.aav, align 8, !dbg !7343, !alias.scope !6246, !noalias !6240
  %i.acm = and i64 %.pre-phi.i.i.i.i.i, 63, !dbg !7346
  %i.acn = icmp eq i64 %i.acm, 0, !dbg !7346
  br i1 %i.acn, label %bb.mx, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i.i, !dbg !7347

bb.mx:                                            ; preds = %bb.mw
  %i.aco = load i64, ptr %i.aay, align 8, !dbg !7348, !alias.scope !6246, !noalias !6240, !noundef !1325 ; 3 uses
  %i.acp = icmp sgt i64 %i.aco, -1, !dbg !7349
  call void @llvm.assume(i1 %i.acp), !dbg !7350
  %i.acq = load ptr, ptr %i.aaz, align 8, !dbg !7351, !alias.scope !6246, !noalias !6240, !nonnull !1325, !noundef !1325
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 %i.aco, !dbg !7352
  store i64 %i.acl, ptr %i.acr, align 1, !dbg !7353, !noalias !6247
  %i.acs = add nuw i64 %i.aco, 8, !dbg !7354
  store i64 %i.acs, ptr %i.aay, align 8, !dbg !7355, !alias.scope !6246, !noalias !6240
  %i.act = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.acl), !dbg !7356
  %i.acu = load i64, ptr %i.aba, align 8, !dbg !7357, !alias.scope !6246, !noalias !6240, !noundef !1325
  %i.acv = add i64 %i.acu, %i.act, !dbg !7357
  store i64 %i.acv, ptr %i.aba, align 8, !dbg !7357, !alias.scope !6246, !noalias !6240
  store i64 0, ptr %i.aax, align 8, !dbg !7358, !alias.scope !6246, !noalias !6240
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i.i, !dbg !7359

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i.i: ; preds = %bb.mx, %bb.mw
  call void @llvm.experimental.noalias.scope.decl(metadata !6248), !dbg !7360
  %i.acw = load i64, ptr %i.abb, align 8, !dbg !7361, !alias.scope !6248, !noalias !6240, !noundef !1325 ; 4 uses
  %i.acx = load ptr, ptr %i.abc, align 8, !dbg !7362, !alias.scope !6248, !noalias !6240, !nonnull !1325 ; 2 uses
  %i.acy = getelementptr [8 x i8], ptr %i.acx, i64 %i.acw, !dbg !7362
  %i.acz = getelementptr i8, ptr %i.acy, i64 -8, !dbg !7362
  %i.ada = load i64, ptr %i.acz, align 8, !dbg !7363, !noalias !6249, !noundef !1325
  %i.adb = load i64, ptr %i.bp, align 8, !dbg !7364, !range !1442, !alias.scope !6250, !noalias !6240, !noundef !1325
  %i.adc = icmp eq i64 %i.acw, %i.adb, !dbg !7365
  br i1 %i.adc, label %bb.my, label %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, !dbg !7365

bb.my:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.noexc55.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7366, !noalias !6233

.noexc55.i:                                       ; preds = %bb.my
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.abc, align 8, !dbg !7367, !alias.scope !6250, !noalias !6240
  br label %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, !dbg !7366

_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %.noexc55.i, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i.i
  %i.add = phi ptr [ %i.acx, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %.noexc55.i ], !dbg !7367
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %i.acw, !dbg !7368
  store i64 %i.ada, ptr %i.ade, align 8, !dbg !7369, !noalias !6244
  %i.adf = add i64 %i.acw, 1, !dbg !7370
  store i64 %i.adf, ptr %i.abb, align 8, !dbg !7370, !alias.scope !6250, !noalias !6240
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listB22_E0E0E0B3x_.exit.i.i, !dbg !7360

bb.mz:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE8push_mutCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bq, i64 noundef 1) #30
          to label %.noexc56.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7371, !noalias !6233

.noexc56.i:                                       ; preds = %bb.mz
  %.pre15.i.i.i.i.i = load i64, ptr %i.aav, align 8, !dbg !7372, !alias.scope !6251, !noalias !6242 ; 2 uses
  %.pre18.i.i.i.i.i = add i64 %.pre15.i.i.i.i.i, 1, !dbg !7373
  br label %bb.na, !dbg !7371

bb.na:                                            ; preds = %.noexc56.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE8push_mutCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i
  %.pre-phi19.i.i.i.i.i = phi i64 [ %i.abs, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE8push_mutCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], [ %.pre18.i.i.i.i.i, %.noexc56.i ], !dbg !7373 ; 2 uses
  %i.adg = phi i64 [ %i.abr, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE8push_mutCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], [ %.pre15.i.i.i.i.i, %.noexc56.i ], !dbg !7372
  call void @llvm.experimental.noalias.scope.decl(metadata !6251), !dbg !7374
  %i.adh = and i64 %i.adg, 63, !dbg !7375
  %i.adi = shl nuw i64 1, %i.adh, !dbg !7376
  %i.adj = load i64, ptr %i.aax, align 8, !dbg !7377, !alias.scope !6251, !noalias !6242, !noundef !1325
  %i.adk = or i64 %i.adi, %i.adj, !dbg !7377      ; 3 uses
  store i64 %i.adk, ptr %i.aax, align 8, !dbg !7377, !alias.scope !6251, !noalias !6242
  store i64 %.pre-phi19.i.i.i.i.i, ptr %i.aav, align 8, !dbg !7373, !alias.scope !6251, !noalias !6242
  %i.adl = and i64 %.pre-phi19.i.i.i.i.i, 63, !dbg !7378
  %i.adm = icmp eq i64 %i.adl, 0, !dbg !7378
  br i1 %i.adm, label %bb.nb, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i.i, !dbg !7379

bb.nb:                                            ; preds = %bb.na
  %i.adn = load i64, ptr %i.aay, align 8, !dbg !7380, !alias.scope !6251, !noalias !6242, !noundef !1325 ; 3 uses
  %i.ado = icmp sgt i64 %i.adn, -1, !dbg !7381
  call void @llvm.assume(i1 %i.ado), !dbg !7382
  %i.adp = load ptr, ptr %i.aaz, align 8, !dbg !7383, !alias.scope !6251, !noalias !6242, !nonnull !1325, !noundef !1325
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.adn, !dbg !7384
  store i64 %i.adk, ptr %i.adq, align 1, !dbg !7385, !noalias !6252
  %i.adr = add nuw i64 %i.adn, 8, !dbg !7386
  store i64 %i.adr, ptr %i.aay, align 8, !dbg !7387, !alias.scope !6251, !noalias !6242
  %i.ads = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.adk), !dbg !7388
  %i.adt = load i64, ptr %i.aba, align 8, !dbg !7389, !alias.scope !6251, !noalias !6242, !noundef !1325
  %i.adu = add i64 %i.adt, %i.ads, !dbg !7389
  store i64 %i.adu, ptr %i.aba, align 8, !dbg !7389, !alias.scope !6251, !noalias !6242
  store i64 0, ptr %i.aax, align 8, !dbg !7390, !alias.scope !6251, !noalias !6242
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i.i, !dbg !7391

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i.i: ; preds = %bb.nb, %bb.na
  call void @llvm.experimental.noalias.scope.decl(metadata !6253), !dbg !7392
  %i.adv = load i64, ptr %i.abb, align 8, !dbg !7393, !alias.scope !6253, !noalias !6242, !noundef !1325 ; 4 uses
  %i.adw = load ptr, ptr %i.abc, align 8, !dbg !7394, !alias.scope !6253, !noalias !6242, !nonnull !1325 ; 2 uses
  %i.adx = getelementptr [8 x i8], ptr %i.adw, i64 %i.adv, !dbg !7394
  %i.ady = getelementptr i8, ptr %i.adx, i64 -8, !dbg !7394
  %i.adz = load i64, ptr %i.ady, align 8, !dbg !7395, !noalias !6254, !noundef !1325
  %i.aea = load i64, ptr %i.bp, align 8, !dbg !7396, !range !1442, !alias.scope !6255, !noalias !6242, !noundef !1325
  %i.aeb = icmp eq i64 %i.adv, %i.aea, !dbg !7397
  br i1 %i.aeb, label %bb.nc, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, !dbg !7397

bb.nc:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.noexc57.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7398, !noalias !6233

.noexc57.i:                                       ; preds = %bb.nc
  %.pre.i5.i.i.i.i.i = load ptr, ptr %i.abc, align 8, !dbg !7399, !alias.scope !6255, !noalias !6242
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, !dbg !7398

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %.noexc57.i, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i.i
  %i.aec = phi ptr [ %i.adw, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i.i ], [ %.pre.i5.i.i.i.i.i, %.noexc57.i ], !dbg !7399
  %i.aed = add i64 %i.adz, 1, !dbg !7400
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.aec, i64 %i.adv, !dbg !7401
  store i64 %i.aed, ptr %i.aee, align 8, !dbg !7402, !noalias !6256
  %i.aef = add i64 %i.adv, 1, !dbg !7403
  store i64 %i.aef, ptr %i.abb, align 8, !dbg !7403, !alias.scope !6255, !noalias !6242
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listB22_E0E0E0B3x_.exit.i.i, !dbg !7404

bb.nd:                                            ; preds = %.noexc53.i
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bq, i64 noundef 1) #30
          to label %.noexc58.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7405, !noalias !6233

.noexc58.i:                                       ; preds = %bb.nd
  %.pre.i.i.i.i.i = load i64, ptr %i.aav, align 8, !dbg !7406, !alias.scope !6257, !noalias !6240 ; 2 uses
  %.pre20.i.i.i.i.i = add i64 %.pre.i.i.i.i.i, 1, !dbg !7407
  br label %bb.ne, !dbg !7405

bb.ne:                                            ; preds = %.noexc58.i, %.noexc53.i
  %.pre-phi21.i.i.i.i.i = phi i64 [ %i.acd, %.noexc53.i ], [ %.pre20.i.i.i.i.i, %.noexc58.i ], !dbg !7407 ; 2 uses
  %i.aeg = phi i64 [ %i.acc, %.noexc53.i ], [ %.pre.i.i.i.i.i, %.noexc58.i ], !dbg !7406
  call void @llvm.experimental.noalias.scope.decl(metadata !6257), !dbg !7408
  %i.aeh = and i64 %i.aeg, 63, !dbg !7409
  %i.aei = shl nuw i64 1, %i.aeh, !dbg !7410
  %i.aej = load i64, ptr %i.aax, align 8, !dbg !7411, !alias.scope !6257, !noalias !6240, !noundef !1325
  %i.aek = or i64 %i.aei, %i.aej, !dbg !7411      ; 3 uses
  store i64 %i.aek, ptr %i.aax, align 8, !dbg !7411, !alias.scope !6257, !noalias !6240
  store i64 %.pre-phi21.i.i.i.i.i, ptr %i.aav, align 8, !dbg !7407, !alias.scope !6257, !noalias !6240
  %i.ael = and i64 %.pre-phi21.i.i.i.i.i, 63, !dbg !7412
  %i.aem = icmp eq i64 %i.ael, 0, !dbg !7412
  br i1 %i.aem, label %bb.nf, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i.i, !dbg !7413

bb.nf:                                            ; preds = %bb.ne
  %i.aen = load i64, ptr %i.aay, align 8, !dbg !7414, !alias.scope !6257, !noalias !6240, !noundef !1325 ; 3 uses
  %i.aeo = icmp sgt i64 %i.aen, -1, !dbg !7415
  call void @llvm.assume(i1 %i.aeo), !dbg !7416
  %i.aep = load ptr, ptr %i.aaz, align 8, !dbg !7417, !alias.scope !6257, !noalias !6240, !nonnull !1325, !noundef !1325
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aen, !dbg !7418
  store i64 %i.aek, ptr %i.aeq, align 1, !dbg !7419, !noalias !6258
  %i.aer = add nuw i64 %i.aen, 8, !dbg !7420
  store i64 %i.aer, ptr %i.aay, align 8, !dbg !7421, !alias.scope !6257, !noalias !6240
  %i.aes = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.aek), !dbg !7422
  %i.aet = load i64, ptr %i.aba, align 8, !dbg !7423, !alias.scope !6257, !noalias !6240, !noundef !1325
  %i.aeu = add i64 %i.aet, %i.aes, !dbg !7423
  store i64 %i.aeu, ptr %i.aba, align 8, !dbg !7423, !alias.scope !6257, !noalias !6240
  store i64 0, ptr %i.aax, align 8, !dbg !7424, !alias.scope !6257, !noalias !6240
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i.i, !dbg !7425

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i.i: ; preds = %bb.nf, %bb.ne
  %i.aev = load i64, ptr %i.abz, align 8, !dbg !7426, !noalias !6244, !noundef !1325 ; 2 uses
  %i.aew = icmp ult i64 %i.aev, 288230376151711744, !dbg !7427
  call void @llvm.assume(i1 %i.aew), !dbg !7428
  call void @llvm.experimental.noalias.scope.decl(metadata !6259), !dbg !7429
  %i.aex = load i64, ptr %i.abb, align 8, !dbg !7430, !alias.scope !6259, !noalias !6240, !noundef !1325 ; 4 uses
  %i.aey = load ptr, ptr %i.abc, align 8, !dbg !7431, !alias.scope !6259, !noalias !6240, !nonnull !1325 ; 2 uses
  %i.aez = getelementptr [8 x i8], ptr %i.aey, i64 %i.aex, !dbg !7431
  %i.afa = getelementptr i8, ptr %i.aez, i64 -8, !dbg !7431
  %i.afb = load i64, ptr %i.afa, align 8, !dbg !7432, !noalias !6260, !noundef !1325
  %i.afc = load i64, ptr %i.bp, align 8, !dbg !7433, !range !1442, !alias.scope !6261, !noalias !6240, !noundef !1325
  %i.afd = icmp eq i64 %i.aex, %i.afc, !dbg !7434
  br i1 %i.afd, label %bb.ng, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit12.i.i.i.i.i, !dbg !7434

bb.ng:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.noexc59.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7435, !noalias !6233

.noexc59.i:                                       ; preds = %bb.ng
  %.pre.i9.i.i.i.i.i = load ptr, ptr %i.abc, align 8, !dbg !7436, !alias.scope !6261, !noalias !6240
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit12.i.i.i.i.i, !dbg !7435

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit12.i.i.i.i.i: ; preds = %.noexc59.i, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i.i
  %i.afe = phi ptr [ %i.aey, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i.i ], [ %.pre.i9.i.i.i.i.i, %.noexc59.i ], !dbg !7436
  %i.aff = add i64 %i.afb, %i.aev, !dbg !7437
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %i.aex, !dbg !7438
  store i64 %i.aff, ptr %i.afg, align 8, !dbg !7439, !noalias !6262
  %i.afh = add i64 %i.aex, 1, !dbg !7440
  store i64 %i.afh, ptr %i.abb, align 8, !dbg !7440, !alias.scope !6261, !noalias !6240
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listB22_E0E0E0B3x_.exit.i.i, !dbg !7441

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listB22_E0E0E0B3x_.exit.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit12.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %bb.mt
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i387, %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], [ %.sroa.0.0.i387, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], [ %.sroa.0.0.i387, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit12.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %bb.mt ], !dbg !7442 ; 5 uses
  %i.afi = add nuw nsw i64 %i.abd, 1, !dbg !7443  ; 2 uses
  %i.afj = icmp eq i64 %i.afi, %2, !dbg !7444
  br i1 %i.afj, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit.i, label %bb.mn, !dbg !7444

.body.thread.thread.i:                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.oh, %.body.thread.i393, %bb.nv, %.body.thread112.i
  %.sroa.017.1.i = phi i8 [ 1, %bb.oh ], [ 0, %.body.thread.i393 ], [ 0, %bb.nv ], [ 0, %.body.thread112.i ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !7445
  %.sroa.016.0.i = phi i8 [ 0, %bb.oh ], [ 0, %.body.thread.i393 ], [ 0, %bb.nv ], [ 0, %.body.thread112.i ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !7446
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.oh ], [ %.pn.ph.i, %.body.thread.i393 ], [ %i.aga, %bb.nv ], [ %5, %.body.thread112.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(24) %i.bo) #31
          to label %.body65.i unwind label %bb.oe, !dbg !7447, !noalias !6233

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ng, %bb.nd, %bb.nc, %bb.mz, %bb.my, %bb.mv, %bb.ms, %bb.mr, %bb.nl, %bb.nk, %bb.ni, %.noexc61.i, %.split.i.i388
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.thread.i

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listB22_E0E0E0B3x_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !dbg !7309, !noalias !6228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !6228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !6228
  store ptr @35, ptr %i.ba, align 8, !noalias !6263
  %i.afk = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 4, ptr %i.afk, align 8, !noalias !6263
  %.not.i60.i = icmp eq i64 %.sroa.0.1.i, %2, !dbg !7310
  br i1 %.not.i60.i, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit._crit_edge.i, label %bb.nh, !dbg !7310, !prof !1572

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit._crit_edge.i: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit.i
  %.pre.i = load ptr, ptr %i.aas, align 8, !dbg !7448, !noalias !6228
  %.pre134.i = load i64, ptr %i.aat, align 8, !dbg !7449, !noalias !6228
  br label %bb.nk, !dbg !7310

bb.nh:                                            ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !7450, !noalias !6263
  %i.afl = icmp ult i64 %.sroa.0.1.i, %2, !dbg !7450
  br i1 %i.afl, label %.split.i.i388, label %bb.ni, !dbg !7450

.split.i.i388:                                    ; preds = %bb.nh
  %i.afm = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.0.1.i, !dbg !7450
  store ptr %i.afm, ptr %i.ay, align 8, !dbg !7451, !noalias !6263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !7452, !noalias !6263
  store ptr %i.ay, ptr %i.ax, align 8, !dbg !7452, !noalias !6263
  %.sroa.42.0..sroa_idx.i.i389 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !7452
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueNtB6_5Debug3fmtCs2c5WrizoNH7_11polars_json, ptr %.sroa.42.0..sroa_idx.i.i389, align 8, !dbg !7452, !noalias !6263
  %i.afn = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !7452
  store ptr %i.ba, ptr %i.afn, align 8, !dbg !7452, !noalias !6263
  %.sroa.46.0..sroa_idx.i.i390 = getelementptr inbounds nuw i8, ptr %i.ax, i64 24, !dbg !7452
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCs2c5WrizoNH7_11polars_json, ptr %.sroa.46.0..sroa_idx.i.i390, align 8, !dbg !7452, !noalias !6263
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noundef nonnull @20, ptr noundef nonnull %i.ax)
          to label %.noexc61.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7453, !noalias !6233

.noexc61.i:                                       ; preds = %.split.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !7454, !noalias !6263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !7454, !noalias !6263
  %.sroa.413.0..sroa_idx.i.i391 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !7454 ; 2 uses
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.413.0..sroa_idx.i.i391, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %bb.nj unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7455, !noalias !6233

bb.ni:                                            ; preds = %bb.nh
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1.i, i64 noundef range(i64 0, 288230376151711744) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #33
          to label %.noexc63.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7450, !noalias !6233

.noexc63.i:                                       ; preds = %bb.ni
  unreachable, !dbg !7450

bb.nj:                                            ; preds = %.noexc61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !7456, !noalias !6228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !7456, !noalias !6228
  %.sroa.10462.8.copyload464 = load ptr, ptr %.sroa.413.0..sroa_idx.i.i391, align 8, !dbg !7457, !noalias !6264
  %.sroa.11.8..sroa_idx465 = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !7457
  %.sroa.11.8.copyload466 = load ptr, ptr %.sroa.11.8..sroa_idx465, align 8, !dbg !7457, !noalias !6264
  %.sroa.12.8..sroa_idx467 = getelementptr inbounds nuw i8, ptr %i.bn, i64 24, !dbg !7457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.8..sroa_idx467, i64 48, i1 false), !dbg !7457, !noalias !6264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !dbg !7458, !noalias !6228
  br label %bb.oi, !dbg !7459

bb.nk:                                            ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit._crit_edge.i, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit.thread.i
  %i.afo = phi i64 [ %.pre134.i, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit._crit_edge.i ], [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit.thread.i ], !dbg !7449
  %i.afp = phi ptr [ %.pre.i, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit._crit_edge.i ], [ inttoptr (i64 8 to ptr), %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1M_8adapters9enumerateINtB2B_9EnumeratepEB1G_4fold9enumerateRBQ_uNCINvNvB1G_8for_each4callTjB3E_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4o_.exit.thread.i ], !dbg !7448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !7456, !noalias !6228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !7456, !noalias !6228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !dbg !7458, !noalias !6228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !dbg !7460, !noalias !6228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !dbg !7461, !noalias !6228
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aap)
          to label %bb.nl unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7462, !noalias !6233

bb.nl:                                            ; preds = %bb.nk
  invoke void @_RINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize12__deserializeRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.afp, i64 noundef %i.afo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bl, i1 noundef zeroext %4)
          to label %bb.nm unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7460, !noalias !6233

bb.nm:                                            ; preds = %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !7463, !noalias !6228
  %i.afq = load i64, ptr %i.bm, align 8, !dbg !7464, !range !1486, !noalias !6228, !noundef !1325 ; 2 uses
  %.not39.i = icmp eq i64 %i.afq, 18, !dbg !7464
  %i.afr = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !7465
  %i.afs = load ptr, ptr %i.afr, align 8, !dbg !7465, !noalias !6228 ; 4 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.bm, i64 16, !dbg !7465
  %i.afu = load ptr, ptr %i.aft, align 8, !dbg !7465, !noalias !6228 ; 4 uses
  br i1 %.not39.i, label %bb.no, label %bb.nn, !dbg !7466

bb.nn:                                            ; preds = %bb.nm
  %.sroa.733.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24, !dbg !7467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.733.0..sroa_idx.i, i64 48, i1 false), !dbg !7467, !noalias !6264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !7468, !noalias !6228
  br label %bb.oi, !dbg !7459

bb.no:                                            ; preds = %bb.nm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !7468, !noalias !6228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !7469, !noalias !6228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.kl, i64 32, i1 false), !dbg !7469, !noalias !6229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !7470, !noalias !6228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !dbg !7470, !noalias !6228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !7471, !noalias !6228
  %i.afv = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexE8from_vecCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bd)
          to label %bb.nq unwind label %bb.np, !dbg !7472, !noalias !6233

bb.np:                                            ; preds = %bb.nq, %bb.no
  %i.afw = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

bb.nq:                                            ; preds = %bb.no
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE12from_storageCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bf, ptr noundef nonnull %i.afv)
          to label %bb.nr unwind label %bb.np, !dbg !7473, !noalias !6233

bb.nr:                                            ; preds = %bb.nq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !dbg !7474, !noalias !6228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !7475, !noalias !6228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !7476, !noalias !6228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !7476, !noalias !6228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %i.bq, i64 56, i1 false), !dbg !7476, !noalias !6228
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder17into_opt_validity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.bh)
          to label %bb.ns unwind label %bb.od, !dbg !7477, !noalias !6233

bb.ns:                                            ; preds = %bb.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !7478, !noalias !6228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !7479, !noalias !6228
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array4listINtB2_9ListArrayxE7try_newCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.be, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bj, ptr noundef nonnull %i.afs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.afu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bi)
          to label %bb.nt unwind label %.body.thread112.i, !dbg !7479, !noalias !6233

.body.thread112.i:                                ; preds = %bb.ns
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.thread.i, !dbg !7480

bb.nt:                                            ; preds = %bb.ns
  call void @llvm.experimental.noalias.scope.decl(metadata !6267), !dbg !7481
  %i.afx = load i8, ptr %i.be, align 8, !dbg !7482, !range !1580, !alias.scope !6267, !noalias !6228, !noundef !1325 ; 2 uses
  %i.afy = icmp eq i8 %i.afx, 42, !dbg !7482
  br i1 %i.afy, label %bb.nu, label %bb.ny, !dbg !7483, !prof !1389

bb.nu:                                            ; preds = %bb.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !7484, !noalias !6268
  %i.afz = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !7484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.afz, i64 72, i1 false), !dbg !7484, !noalias !6269
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %bb.nw unwind label %bb.nv, !dbg !7485, !noalias !6270

bb.nv:                                            ; preds = %bb.nu
  %i.aga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bc) #31
          to label %.body.thread.thread.i unwind label %bb.nx, !dbg !7486, !noalias !6270

bb.nw:                                            ; preds = %bb.nu
  unreachable

bb.nx:                                            ; preds = %bb.nv
  %i.agb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !7487, !noalias !6270
  unreachable, !dbg !7487

bb.ny:                                            ; preds = %bb.nt
  %.sroa.6459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 1, !dbg !7488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6459, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6459.0..sroa_idx, i64 7, i1 false), !dbg !7488, !noalias !6264
  %.sroa.7460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !7488
  %.sroa.7460.0.copyload = load i64, ptr %.sroa.7460.0..sroa_idx, align 8, !dbg !7488, !noalias !6264
  %.sroa.10462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !7488
  %i.agc = load <2 x ptr>, ptr %.sroa.10462.0..sroa_idx, align 8, !dbg !7488, !noalias !6264
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 32, !dbg !7488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.0..sroa_idx, i64 48, i1 false), !dbg !7488, !noalias !6264
  %.sroa.13468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 80, !dbg !7488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13468, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13468.0..sroa_idx, i64 24, i1 false), !dbg !7488, !noalias !6264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !7489, !noalias !6228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !7480, !noalias !6228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !7480, !noalias !6228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !7480, !noalias !6228
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.oa unwind label %bb.nz, !dbg !7490, !noalias !6233

bb.nz:                                            ; preds = %bb.ny
  %i.agd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.thread510 unwind label %bb.ob, !dbg !7491, !noalias !6233

bb.oa:                                            ; preds = %bb.ny
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.un unwind label %bb.oc, !dbg !7492, !noalias !6233

bb.ob:                                            ; preds = %bb.nz
  %i.age = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !7490, !noalias !6233
  unreachable, !dbg !7490

.body65.i:                                        ; preds = %bb.oc, %.body.thread.thread.i
  %.sroa.017.3.i = phi i8 [ %.sroa.017.1.i, %.body.thread.thread.i ], [ %.sroa.016.2.i, %bb.oc ], !dbg !7445 ; 2 uses
  %.sroa.016.1.i = phi i8 [ %.sroa.016.0.i, %.body.thread.thread.i ], [ %.sroa.016.2.i, %bb.oc ], !dbg !7446
  %.pn42.i = phi { ptr, i32 } [ %.pn.pn.i, %.body.thread.thread.i ], [ %i.agg, %bb.oc ] ; 2 uses
  %i.agf = trunc nuw i8 %.sroa.016.1.i to i1, !dbg !7493
  br i1 %i.agf, label %.body65.thread.i, label %bb.mj, !dbg !7493

bb.oc:                                            ; preds = %bb.ok, %bb.oa
  %.sroa.016.2.i = phi i8 [ 1, %bb.ok ], [ 0, %bb.oa ], !dbg !7446 ; 2 uses
  %i.agg = landingpad { ptr, i32 }
          cleanup
  br label %.body65.i

bb.od:                                            ; preds = %bb.nr
  %i.agh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json(ptr nonnull %i.afs, ptr nonnull %i.afu) #31
          to label %bb.of unwind label %bb.oe, !dbg !7480, !noalias !6233

bb.oe:                                            ; preds = %.thread.i385, %.thread89.i, %.body65.thread.i, %bb.oh, %bb.og, %bb.of, %bb.od, %.body.thread.thread.i
  %i.agi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !7494, !noalias !6233
  unreachable, !dbg !7494

bb.of:                                            ; preds = %bb.od
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.og unwind label %bb.oe, !dbg !7495, !noalias !6233

.body.thread.i393:                                ; preds = %bb.og
  br i1 %.sroa.015.0.ph.i.a, label %bb.oh, label %.body.thread.thread.i, !dbg !7496

bb.og:                                            ; preds = %bb.of, %bb.np
  %.sroa.015.0.ph.i.a = phi i1 [ true, %bb.np ], [ false, %bb.of ]
  %.pn.ph.i = phi { ptr, i32 } [ %i.afw, %bb.np ], [ %i.agh, %bb.of ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(32) %i.bk) #31
          to label %.body.thread.i393 unwind label %bb.oe, !dbg !7480, !noalias !6233

bb.oh:                                            ; preds = %.body.thread.i393
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json(ptr nonnull %i.afs, ptr nonnull %i.afu) #31
          to label %.body.thread.thread.i unwind label %bb.oe, !dbg !7496, !noalias !6233

bb.oi:                                            ; preds = %bb.nn, %bb.nj
  %.sroa.11.0 = phi ptr [ %i.afu, %bb.nn ], [ %.sroa.11.8.copyload466, %bb.nj ], !dbg !7497
  %.sroa.10462.0 = phi ptr [ %i.afs, %bb.nn ], [ %.sroa.10462.8.copyload464, %bb.nj ], !dbg !7497
  %.sroa.7460.0 = phi i64 [ %i.afq, %bb.nn ], [ 2, %bb.nj ], !dbg !7497
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.ok unwind label %bb.oj, !dbg !7498, !noalias !6233

bb.oj:                                            ; preds = %bb.oi
  %i.agj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body65.thread.i unwind label %bb.ol, !dbg !7499, !noalias !6233

bb.ok:                                            ; preds = %bb.oi
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit73.i unwind label %bb.oc, !dbg !7500, !noalias !6233

bb.ol:                                            ; preds = %bb.oj
  %i.agk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !7498, !noalias !6233
  unreachable, !dbg !7498

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit73.i: ; preds = %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !7447, !noalias !6228
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2c5WrizoNH7_11polars_json.exit.i.i unwind label %bb.om, !dbg !7501, !noalias !6233

bb.om:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit73.i
  %i.agl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.thread89.i unwind label %bb.on, !dbg !7502, !noalias !6233

bb.on:                                            ; preds = %bb.om
  %i.agm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !7501, !noalias !6233
  unreachable, !dbg !7501

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit73.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.mk, !dbg !7503, !noalias !6233

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2c5WrizoNH7_11polars_json.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !7493, !noalias !6228
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit.i.i392 unwind label %bb.oo, !dbg !7504, !noalias !6233

bb.oo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECs2c5WrizoNH7_11polars_json.exit.i
  %i.agn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bq)
          to label %.thread.i385 unwind label %bb.op, !dbg !7505, !noalias !6233

bb.op:                                            ; preds = %bb.oo
  %i.ago = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !7504, !noalias !6233
  unreachable, !dbg !7504

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit.i.i392: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECs2c5WrizoNH7_11polars_json.exit.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.mb, !dbg !7506, !noalias !6233

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit.i.i392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !7304, !noalias !6228
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kl), !dbg !7289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !7507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl), !dbg !7508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.643.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12, i64 48, i1 false), !dbg !7509
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6459), !dbg !7510
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12), !dbg !7510
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13468), !dbg !7510
  %.sroa.4493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4493.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.643.sroa.10, i64 48, i1 false), !dbg !7510
  store i64 %.sroa.7460.0, ptr %0, align 8, !dbg !7511
  %.sroa.2491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7511
  store ptr %.sroa.10462.0, ptr %.sroa.2491.0..sroa_idx, align 8, !dbg !7511
  %.sroa.3492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7511
  store ptr %.sroa.11.0, ptr %.sroa.3492.0..sroa_idx, align 8, !dbg !7511
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.643.sroa.10), !dbg !7512
  br label %bb.um, !dbg !7513

.body65.thread.i:                                 ; preds = %bb.oj, %.body65.i
  %.pn42122.i = phi { ptr, i32 } [ %.pn42.i, %.body65.i ], [ %i.agj, %bb.oj ]
  %.sroa.017.3120.i = phi i8 [ %.sroa.017.3.i, %.body65.i ], [ 1, %bb.oj ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(24) %i.bp) #31
          to label %bb.mj unwind label %bb.oe, !dbg !7493, !noalias !6233

.thread89.i:                                      ; preds = %bb.om, %bb.mk, %bb.mj
  %.pn4494.i = phi { ptr, i32 } [ %.pn44.i, %bb.mj ], [ %i.aar, %bb.mk ], [ %i.agl, %bb.om ]
  %.sroa.018.193.i = phi i1 [ %.sroa.018.1.i, %bb.mj ], [ true, %bb.mk ], [ true, %bb.om ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(56) %i.bq) #31
          to label %.thread127.i unwind label %bb.oe, !dbg !7304, !noalias !6233

.thread.i385:                                     ; preds = %bb.oo, %bb.me, %bb.mb, %.thread127.i
  %.pn4688.i = phi { ptr, i32 } [ %.pn46.i, %.thread127.i ], [ %i.aam, %bb.me ], [ %i.aak, %bb.mb ], [ %i.agn, %bb.oo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kl) #31
          to label %.thread510 unwind label %bb.oe, !dbg !7289, !noalias !6233

bb.oq:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.657), !dbg !6333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ki), !dbg !6333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kh), !dbg !7514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kh, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !7514
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6275), !dbg !6333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6276), !dbg !6333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.agp = zext i1 %4 to i8
  store i8 %i.agp, ptr %i.aw, align 1, !noalias !6277
  %i.agq = invoke { ptr, i64 } @_RNvMs1_NtNtCs8774dFTUdNv_12polars_arrow5array7struct_NtB5_11StructArray10get_fields(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kh)
          to label %bb.os unwind label %bb.or, !dbg !7515, !noalias !6278 ; 2 uses

.body.i.a:                                        ; preds = %.body61.i, %bb.ou, %bb.or
  %.pn41.i = phi { ptr, i32 } [ %i.agz, %bb.ou ], [ %i.agr, %bb.or ], [ %.pn39.i, %.body61.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kh) #31
          to label %.thread510 unwind label %bb.rb, !dbg !7516, !noalias !6275

bb.or:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs2c5WrizoNH7_11polars_json.exit.invoke.i, %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i.i, %bb.ot, %bb.os, %bb.oq
  %i.agr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.a

bb.os:                                            ; preds = %bb.oq
  %i.ags = extractvalue { ptr, i64 } %i.agq, 0, !dbg !7515 ; 4 uses
  %i.agt = extractvalue { ptr, i64 } %i.agq, 1, !dbg !7515 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !7517, !noalias !6277
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ags) ], !dbg !7518
  %i.agu = getelementptr inbounds nuw [72 x i8], ptr %i.ags, i64 %i.agt, !dbg !7519 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !7520, !noalias !6279
  %i.agv = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i398 unwind label %bb.or, !dbg !7521, !noalias !6278

.noexc.i398:                                      ; preds = %bb.os
  %i.agw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !7522, !noalias !6279
  %i.agx = icmp eq i8 %i.agw, 2, !dbg !7523
  br i1 %i.agx, label %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i.i, label %bb.ot, !dbg !7523, !prof !1514

bb.ot:                                            ; preds = %.noexc.i398
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #30
          to label %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i.i unwind label %bb.or, !dbg !7524, !noalias !6278

_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i.i: ; preds = %bb.ot, %.noexc.i398
  invoke void @_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE16with_capacity_inCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.ah, i64 noundef %i.agt)
          to label %.noexc45.i unwind label %bb.or, !dbg !7525, !noalias !6278

.noexc45.i:                                       ; preds = %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i.i
  %i.agy = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !7526 ; 2 uses
  store i64 %i.agv, ptr %i.agy, align 8, !dbg !7526, !alias.scope !6280, !noalias !6279
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4callTReTRNtB1r_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRB3u_EEENCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB6E_7HashMapB5q_B5s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB4q_7collect12FromIteratorB5p_E9from_iterBN_E0E0EB2r_(ptr noundef nonnull %i.ags, ptr noundef nonnull %i.agu, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ah)
          to label %bb.ow unwind label %bb.ou, !dbg !7527, !noalias !6281

bb.ou:                                            ; preds = %.noexc45.i
  %i.agz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.agy, i64 noundef 48, i64 noundef 16)
          to label %.body.i.a unwind label %bb.ov, !dbg !7528, !noalias !6281

bb.ov:                                            ; preds = %bb.ou
  %i.aha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !7529, !noalias !6281
  unreachable, !dbg !7529

bb.ow:                                            ; preds = %.noexc45.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !dbg !7530, !noalias !6277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !7531, !noalias !6279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !7532, !noalias !6277
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.au, i64 noundef range(i64 0, 288230376151711744) %2)
          to label %bb.ox unwind label %bb.qx, !dbg !7533, !noalias !6278

.body61.i:                                        ; preds = %.loopexit.split-lp.i, %bb.rc, %bb.qx, %bb.qp
  %.pn39.i = phi { ptr, i32 } [ %i.aqg, %bb.qp ], [ %.pn.pn.ph.i, %.loopexit.split-lp.i ], [ %i.aqt, %bb.rc ], [ %i.aqp, %bb.qx ]
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.av, i64 32, !dbg !7534
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.av, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ahb, i64 noundef 48, i64 noundef 16)
          to label %.body.i.a unwind label %bb.rb, !dbg !7535, !noalias !6275

bb.ox:                                            ; preds = %bb.ow
  %i.ahc = icmp eq i64 %2, 0, !dbg !7536
  br i1 %i.ahc, label %.thread87.i, label %bb.oy, !dbg !7537

.thread87.i:                                      ; preds = %bb.ox
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !7538, !noalias !6277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !6277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !6277
  br label %bb.qs, !dbg !7539

bb.oy:                                            ; preds = %bb.ox
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 3 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 6 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize12__deserializeRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEB6_:bb.a
.noexc470.a:                                      ; preds = %bb.vb
  %.pre4.i.i.i.i = load i64, ptr %i.bgk, align 8, !dbg !14636, !alias.scope !12426, !noalias !12421
  %.pre5.i.i.i.i = add i64 %.pre4.i.i.i.i, 1, !dbg !14637
  br label %bb.vc, !dbg !14635

bb.vc:                                            ; preds = %.noexc470.a, %bb.va
  %.pre-phi.i.i.i.i = phi i64 [ %i.bhx, %bb.va ], [ %.pre5.i.i.i.i, %.noexc470.a ], !dbg !14637 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12426), !dbg !14638, !noalias !12419
  %i.bia = load i64, ptr %i.bgm, align 8, !dbg !14639, !alias.scope !12426, !noalias !12421, !noundef !1325 ; 2 uses
  store i64 %.pre-phi.i.i.i.i, ptr %i.bgk, align 8, !dbg !14637, !alias.scope !12426, !noalias !12421
  %i.bib = and i64 %.pre-phi.i.i.i.i, 63, !dbg !14640
  %i.bic = icmp eq i64 %i.bib, 0, !dbg !14640
  br i1 %i.bic, label %bb.vd, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i, !dbg !14641

bb.vd:                                            ; preds = %bb.vc
  %i.bid = load i64, ptr %i.bgn, align 8, !dbg !14642, !alias.scope !12426, !noalias !12421, !noundef !1325 ; 3 uses
  %i.bie = icmp sgt i64 %i.bid, -1, !dbg !14643
  call void @llvm.assume(i1 %i.bie), !dbg !14644, !noalias !12419
  %i.bif = load ptr, ptr %i.bgo, align 8, !dbg !14645, !alias.scope !12426, !noalias !12421, !nonnull !1325, !noundef !1325
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 %i.bid, !dbg !14646
  store i64 %i.bia, ptr %i.big, align 1, !dbg !14647, !noalias !12427
  %i.bih = add nuw i64 %i.bid, 8, !dbg !14648
  store i64 %i.bih, ptr %i.bgn, align 8, !dbg !14649, !alias.scope !12426, !noalias !12421
  %i.bii = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bia), !dbg !14650
  %i.bij = load i64, ptr %i.bgp, align 8, !dbg !14651, !alias.scope !12426, !noalias !12421, !noundef !1325
  %i.bik = add i64 %i.bij, %i.bii, !dbg !14651
  store i64 %i.bik, ptr %i.bgp, align 8, !dbg !14651, !alias.scope !12426, !noalias !12421
  store i64 0, ptr %i.bgm, align 8, !dbg !14652, !alias.scope !12426, !noalias !12421
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i, !dbg !14653

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i: ; preds = %bb.vd, %bb.vc
  call void @llvm.experimental.noalias.scope.decl(metadata !12428), !dbg !14654, !noalias !12419
  %i.bil = load i64, ptr %i.bgq, align 8, !dbg !14655, !alias.scope !12428, !noalias !12421, !noundef !1325 ; 4 uses
  %i.bim = load ptr, ptr %i.bgr, align 8, !dbg !14656, !alias.scope !12428, !noalias !12421, !nonnull !1325 ; 2 uses
  %i.bin = getelementptr [8 x i8], ptr %i.bim, i64 %i.bil, !dbg !14656
  %i.bio = getelementptr i8, ptr %i.bin, i64 -8, !dbg !14656
  %i.bip = load i64, ptr %i.bio, align 8, !dbg !14657, !noalias !12429, !noundef !1325
  %i.biq = load i64, ptr %i.hb, align 8, !dbg !14658, !range !1442, !alias.scope !12430, !noalias !12421, !noundef !1325
  %i.bir = icmp eq i64 %i.bil, %i.biq, !dbg !14659
  br i1 %i.bir, label %bb.ve, label %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, !dbg !14659

bb.ve:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %.noexc471.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14660

.noexc471.a:                                      ; preds = %bb.ve
  %.pre.i.i.i.i.i467 = load ptr, ptr %i.bgr, align 8, !dbg !14661, !alias.scope !12430, !noalias !12421
  br label %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, !dbg !14660

_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantCs2c5WrizoNH7_11polars_json.exit.i.i.i.i: ; preds = %.noexc471.a, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i
  %i.bis = phi ptr [ %i.bim, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit2.i.i.i.i ], [ %.pre.i.i.i.i.i467, %.noexc471.a ], !dbg !14661
  %i.bit = getelementptr inbounds nuw [8 x i8], ptr %i.bis, i64 %i.bil, !dbg !14662
  store i64 %i.bip, ptr %i.bit, align 8, !dbg !14663, !noalias !12421
  %i.biu = add i64 %i.bil, 1, !dbg !14664
  store i64 %i.biu, ptr %i.bgq, align 8, !dbg !14664, !alias.scope !12430, !noalias !12421
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listB22_E0E0E0B3y_.exit.i, !dbg !14654

bb.vf:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE8push_mutCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.hc, i64 noundef 1) #30
          to label %.noexc472.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14665

.noexc472.a:                                      ; preds = %bb.vf
  %.pre3.i.i.i.i = load i64, ptr %i.bgk, align 8, !dbg !14666, !alias.scope !12431, !noalias !12421 ; 2 uses
  %.pre6.i.i.i.i = add i64 %.pre3.i.i.i.i, 1, !dbg !14667
  br label %bb.vg, !dbg !14665

bb.vg:                                            ; preds = %.noexc472.a, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE8push_mutCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %.pre-phi7.i.i.i.i = phi i64 [ %i.bhh, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE8push_mutCs2c5WrizoNH7_11polars_json.exit.i.i.i.i ], [ %.pre6.i.i.i.i, %.noexc472.a ], !dbg !14667 ; 2 uses
  %i.biv = phi i64 [ %i.bhg, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE8push_mutCs2c5WrizoNH7_11polars_json.exit.i.i.i.i ], [ %.pre3.i.i.i.i, %.noexc472.a ], !dbg !14666
  call void @llvm.experimental.noalias.scope.decl(metadata !12431), !dbg !14668, !noalias !12419
  %i.biw = and i64 %i.biv, 63, !dbg !14669
  %i.bix = shl nuw i64 1, %i.biw, !dbg !14670
  %i.biy = load i64, ptr %i.bgm, align 8, !dbg !14671, !alias.scope !12431, !noalias !12421, !noundef !1325
  %i.biz = or i64 %i.bix, %i.biy, !dbg !14671     ; 3 uses
  store i64 %i.biz, ptr %i.bgm, align 8, !dbg !14671, !alias.scope !12431, !noalias !12421
  store i64 %.pre-phi7.i.i.i.i, ptr %i.bgk, align 8, !dbg !14667, !alias.scope !12431, !noalias !12421
  %i.bja = and i64 %.pre-phi7.i.i.i.i, 63, !dbg !14672
  %i.bjb = icmp eq i64 %i.bja, 0, !dbg !14672
  br i1 %i.bjb, label %bb.vh, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i, !dbg !14673

bb.vh:                                            ; preds = %bb.vg
  %i.bjc = load i64, ptr %i.bgn, align 8, !dbg !14674, !alias.scope !12431, !noalias !12421, !noundef !1325 ; 3 uses
  %i.bjd = icmp sgt i64 %i.bjc, -1, !dbg !14675
  call void @llvm.assume(i1 %i.bjd), !dbg !14676, !noalias !12419
  %i.bje = load ptr, ptr %i.bgo, align 8, !dbg !14677, !alias.scope !12431, !noalias !12421, !nonnull !1325, !noundef !1325
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 %i.bjc, !dbg !14678
  store i64 %i.biz, ptr %i.bjf, align 1, !dbg !14679, !noalias !12432
  %i.bjg = add nuw i64 %i.bjc, 8, !dbg !14680
  store i64 %i.bjg, ptr %i.bgn, align 8, !dbg !14681, !alias.scope !12431, !noalias !12421
  %i.bjh = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.biz), !dbg !14682
  %i.bji = load i64, ptr %i.bgp, align 8, !dbg !14683, !alias.scope !12431, !noalias !12421, !noundef !1325
  %i.bjj = add i64 %i.bji, %i.bjh, !dbg !14683
  store i64 %i.bjj, ptr %i.bgp, align 8, !dbg !14683, !alias.scope !12431, !noalias !12421
  store i64 0, ptr %i.bgm, align 8, !dbg !14684, !alias.scope !12431, !noalias !12421
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i, !dbg !14685

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i: ; preds = %bb.vh, %bb.vg
  call void @llvm.experimental.noalias.scope.decl(metadata !12433), !dbg !14686, !noalias !12419
  %i.bjk = load i64, ptr %i.bgq, align 8, !dbg !14687, !alias.scope !12433, !noalias !12421, !noundef !1325 ; 4 uses
  %i.bjl = load ptr, ptr %i.bgr, align 8, !dbg !14688, !alias.scope !12433, !noalias !12421, !nonnull !1325 ; 2 uses
  %i.bjm = getelementptr [8 x i8], ptr %i.bjl, i64 %i.bjk, !dbg !14688
  %i.bjn = getelementptr i8, ptr %i.bjm, i64 -8, !dbg !14688
  %i.bjo = load i64, ptr %i.bjn, align 8, !dbg !14689, !noalias !12434, !noundef !1325
  %i.bjp = load i64, ptr %i.hb, align 8, !dbg !14690, !range !1442, !alias.scope !12435, !noalias !12421, !noundef !1325
  %i.bjq = icmp eq i64 %i.bjk, %i.bjp, !dbg !14691
  br i1 %i.bjq, label %bb.vi, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, !dbg !14691

bb.vi:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %.noexc473.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14692

.noexc473.a:                                      ; preds = %bb.vi
  %.pre.i5.i.i.i.i = load ptr, ptr %i.bgr, align 8, !dbg !14693, !alias.scope !12435, !noalias !12421
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, !dbg !14692

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit.i.i.i.i: ; preds = %.noexc473.a, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i
  %i.bjr = phi ptr [ %i.bjl, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit1.i.i.i.i ], [ %.pre.i5.i.i.i.i, %.noexc473.a ], !dbg !14693
  %i.bjs = add i64 %i.bjo, 1, !dbg !14694
  %i.bjt = getelementptr inbounds nuw [8 x i8], ptr %i.bjr, i64 %i.bjk, !dbg !14695
  store i64 %i.bjs, ptr %i.bjt, align 8, !dbg !14696, !noalias !12436
  %i.bju = add i64 %i.bjk, 1, !dbg !14697
  store i64 %i.bju, ptr %i.bgq, align 8, !dbg !14697, !alias.scope !12435, !noalias !12421
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listB22_E0E0E0B3y_.exit.i, !dbg !14698

bb.vj:                                            ; preds = %.noexc469.a
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.hc, i64 noundef 1) #30
          to label %.noexc474.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14699

.noexc474.a:                                      ; preds = %bb.vj
  %.pre.i.i.i.i = load i64, ptr %i.bgk, align 8, !dbg !14700, !alias.scope !12437, !noalias !12421 ; 2 uses
  %.pre8.i.i.i.i = add i64 %.pre.i.i.i.i, 1, !dbg !14701
  br label %bb.vk, !dbg !14699

bb.vk:                                            ; preds = %.noexc474.a, %.noexc469.a
  %.pre-phi9.i.i.i.i = phi i64 [ %i.bhs, %.noexc469.a ], [ %.pre8.i.i.i.i, %.noexc474.a ], !dbg !14701 ; 2 uses
  %i.bjv = phi i64 [ %i.bhr, %.noexc469.a ], [ %.pre.i.i.i.i, %.noexc474.a ], !dbg !14700
  call void @llvm.experimental.noalias.scope.decl(metadata !12437), !dbg !14702, !noalias !12419
  %i.bjw = and i64 %i.bjv, 63, !dbg !14703
  %i.bjx = shl nuw i64 1, %i.bjw, !dbg !14704
  %i.bjy = load i64, ptr %i.bgm, align 8, !dbg !14705, !alias.scope !12437, !noalias !12421, !noundef !1325
  %i.bjz = or i64 %i.bjx, %i.bjy, !dbg !14705     ; 3 uses
  store i64 %i.bjz, ptr %i.bgm, align 8, !dbg !14705, !alias.scope !12437, !noalias !12421
  store i64 %.pre-phi9.i.i.i.i, ptr %i.bgk, align 8, !dbg !14701, !alias.scope !12437, !noalias !12421
  %i.bka = and i64 %.pre-phi9.i.i.i.i, 63, !dbg !14706
  %i.bkb = icmp eq i64 %i.bka, 0, !dbg !14706
  br i1 %i.bkb, label %bb.vl, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i, !dbg !14707

bb.vl:                                            ; preds = %bb.vk
  %i.bkc = load i64, ptr %i.bgn, align 8, !dbg !14708, !alias.scope !12437, !noalias !12421, !noundef !1325 ; 3 uses
  %i.bkd = icmp sgt i64 %i.bkc, -1, !dbg !14709
  call void @llvm.assume(i1 %i.bkd), !dbg !14710, !noalias !12419
  %i.bke = load ptr, ptr %i.bgo, align 8, !dbg !14711, !alias.scope !12437, !noalias !12421, !nonnull !1325, !noundef !1325
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 %i.bkc, !dbg !14712
  store i64 %i.bjz, ptr %i.bkf, align 1, !dbg !14713, !noalias !12438
  %i.bkg = add nuw i64 %i.bkc, 8, !dbg !14714
  store i64 %i.bkg, ptr %i.bgn, align 8, !dbg !14715, !alias.scope !12437, !noalias !12421
  %i.bkh = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.bjz), !dbg !14716
  %i.bki = load i64, ptr %i.bgp, align 8, !dbg !14717, !alias.scope !12437, !noalias !12421, !noundef !1325
  %i.bkj = add i64 %i.bki, %i.bkh, !dbg !14717
  store i64 %i.bkj, ptr %i.bgp, align 8, !dbg !14717, !alias.scope !12437, !noalias !12421
  store i64 0, ptr %i.bgm, align 8, !dbg !14718, !alias.scope !12437, !noalias !12421
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i, !dbg !14719

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i: ; preds = %bb.vl, %bb.vk
  %i.bkk = load i64, ptr %i.bho, align 8, !dbg !14720, !noalias !12421, !noundef !1325 ; 2 uses
  %i.bkl = icmp ult i64 %i.bkk, 288230376151711744, !dbg !14721
  call void @llvm.assume(i1 %i.bkl), !dbg !14722, !noalias !12419
  call void @llvm.experimental.noalias.scope.decl(metadata !12439), !dbg !14723, !noalias !12419
  %i.bkm = load i64, ptr %i.bgq, align 8, !dbg !14724, !alias.scope !12439, !noalias !12421, !noundef !1325 ; 4 uses
  %i.bkn = load ptr, ptr %i.bgr, align 8, !dbg !14725, !alias.scope !12439, !noalias !12421, !nonnull !1325 ; 2 uses
  %i.bko = getelementptr [8 x i8], ptr %i.bkn, i64 %i.bkm, !dbg !14725
  %i.bkp = getelementptr i8, ptr %i.bko, i64 -8, !dbg !14725
  %i.bkq = load i64, ptr %i.bkp, align 8, !dbg !14726, !noalias !12440, !noundef !1325
  %i.bkr = load i64, ptr %i.hb, align 8, !dbg !14727, !range !1442, !alias.scope !12441, !noalias !12421, !noundef !1325
  %i.bks = icmp eq i64 %i.bkm, %i.bkr, !dbg !14728
  br i1 %i.bks, label %bb.vm, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit12.i.i.i.i, !dbg !14728

bb.vm:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %.noexc475 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14729

.noexc475:                                        ; preds = %bb.vm
  %.pre.i9.i.i.i.i = load ptr, ptr %i.bgr, align 8, !dbg !14730, !alias.scope !12441, !noalias !12421
  br label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit12.i.i.i.i, !dbg !14729

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit12.i.i.i.i: ; preds = %.noexc475, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i
  %i.bkt = phi ptr [ %i.bkn, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i.i ], [ %.pre.i9.i.i.i.i, %.noexc475 ], !dbg !14730
  %i.bku = add i64 %i.bkq, %i.bkk, !dbg !14731
  %i.bkv = getelementptr inbounds nuw [8 x i8], ptr %i.bkt, i64 %i.bkm, !dbg !14732
  store i64 %i.bku, ptr %i.bkv, align 8, !dbg !14733, !noalias !12442
  %i.bkw = add i64 %i.bkm, 1, !dbg !14734
  store i64 %i.bkw, ptr %i.bgq, align 8, !dbg !14734, !alias.scope !12441, !noalias !12421
  br label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listB22_E0E0E0B3y_.exit.i, !dbg !14735

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listB22_E0E0E0B3y_.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit12.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, %bb.uz
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE15extend_constantCs2c5WrizoNH7_11polars_json.exit.i.i.i.i ], [ %.sroa.0.0, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit.i.i.i.i ], [ %.sroa.0.0, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6expectCs2c5WrizoNH7_11polars_json.exit12.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.uz ], !dbg !14736 ; 5 uses
  %i.bkx = add nuw nsw i64 %i.bgs, 1, !dbg !14737 ; 2 uses
  %i.bky = icmp eq i64 %i.bkx, %2, !dbg !14738
  br i1 %i.bky, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit, label %bb.ut, !dbg !14738

.body.i.thread.thread:                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.wb, %.body.i.thread581, %bb.wj, %.body.i.thread
  %.sroa.017.1.i = phi i8 [ 1, %bb.wj ], [ 0, %.body.i.thread ], [ 0, %bb.wb ], [ 0, %.body.i.thread581 ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !14739
  %.sroa.016.0.i = phi i8 [ 0, %bb.wj ], [ 0, %.body.i.thread ], [ 0, %bb.wb ], [ 0, %.body.i.thread581 ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !14740
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i.ph, %bb.wj ], [ %.pn.i.ph, %.body.i.thread ], [ %i.blp, %bb.wb ], [ %5, %.body.i.thread581 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(24) %i.ha) #31
          to label %.body450 unwind label %bb.wg, !dbg !14741, !noalias !12419, !inline_history !10464

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.vm, %bb.vj, %bb.vi, %bb.vf, %bb.ve, %bb.vb, %bb.uy, %bb.ux, %bb.vo, %.noexc460, %.split.i454, %bb.vr, %bb.vq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.thread.thread

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listB22_E0E0E0B3y_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz), !dbg !14605, !noalias !12414
  call void @llvm.experimental.noalias.scope.decl(metadata !12443), !dbg !14605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store ptr @35, ptr %i.eq, align 8, !noalias !12444
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 4, ptr %i.bkz, align 8, !noalias !12444
  %.not.i453 = icmp eq i64 %.sroa.0.1, %2, !dbg !14606
  br i1 %.not.i453, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit._crit_edge, label %bb.vn, !dbg !14606, !prof !1572

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit._crit_edge: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit
  %.pre786 = load ptr, ptr %i.bgh, align 8, !dbg !14742, !noalias !12414
  %.pre787 = load i64, ptr %i.bgi, align 8, !dbg !14743, !noalias !12414
  br label %bb.vq, !dbg !14606

bb.vn:                                            ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !dbg !14744, !noalias !12444
  %i.bla = icmp ult i64 %.sroa.0.1, %2, !dbg !14744
  br i1 %i.bla, label %.split.i454, label %bb.vo, !dbg !14744

.split.i454:                                      ; preds = %bb.vn
  %i.blb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.1, !dbg !14744
  %.val12.i455 = load ptr, ptr %i.blb, align 8, !dbg !14745, !alias.scope !12443, !noalias !12419, !nonnull !1325, !align !1630, !noundef !1325
  store ptr %.val12.i455, ptr %i.eo, align 8, !dbg !14745, !noalias !12444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !dbg !14746, !noalias !12444
  store ptr %i.eo, ptr %i.en, align 8, !dbg !14746, !noalias !12444
  %.sroa.42.0..sroa_idx.i456 = getelementptr inbounds nuw i8, ptr %i.en, i64 8, !dbg !14746
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueNtB6_5Debug3fmtCs2c5WrizoNH7_11polars_json, ptr %.sroa.42.0..sroa_idx.i456, align 8, !dbg !14746, !noalias !12444
  %i.blc = getelementptr inbounds nuw i8, ptr %i.en, i64 16, !dbg !14746
  store ptr %i.eq, ptr %i.blc, align 8, !dbg !14746, !noalias !12444
  %.sroa.46.0..sroa_idx.i457 = getelementptr inbounds nuw i8, ptr %i.en, i64 24, !dbg !14746
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCs2c5WrizoNH7_11polars_json, ptr %.sroa.46.0..sroa_idx.i457, align 8, !dbg !14746, !noalias !12444
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ep, ptr noundef nonnull @20, ptr noundef nonnull %i.en)
          to label %.noexc460 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14747

.noexc460:                                        ; preds = %.split.i454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !dbg !14748, !noalias !12444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !dbg !14748, !noalias !12444
  %.sroa.414.0..sroa_idx.i458 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8, !dbg !14748 ; 2 uses
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.414.0..sroa_idx.i458, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %bb.vp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14749

bb.vo:                                            ; preds = %bb.vn
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #33
          to label %.noexc462 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14744

.noexc462:                                        ; preds = %bb.vo
  unreachable, !dbg !14744

bb.vp:                                            ; preds = %.noexc460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !dbg !14750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !dbg !14750
  %.sroa.5550.0.copyload = load ptr, ptr %.sroa.414.0..sroa_idx.i458, align 8, !dbg !14751, !noalias !12414
  %.sroa.6551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 16, !dbg !14751
  %.sroa.6551.0.copyload = load ptr, ptr %.sroa.6551.0..sroa_idx, align 8, !dbg !14751, !noalias !12414
  %.sroa.7552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 24, !dbg !14751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13488, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7552.0..sroa_idx, i64 48, i1 false), !dbg !14751, !noalias !12445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !dbg !14752, !noalias !12414
  br label %bb.wk, !dbg !14753

bb.vq:                                            ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit._crit_edge, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit.thread
  %i.bld = phi i64 [ %.pre787, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit._crit_edge ], [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit.thread ], !dbg !14743
  %i.ble = phi ptr [ %.pre786, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit._crit_edge ], [ inttoptr (i64 8 to ptr), %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1N_8adapters9enumerateINtB2C_9EnumeratepEB1H_4fold9enumerateRBQ_uNCINvNvB1H_8for_each4callTjB3F_ENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize16deserialize_listBQ_E0E0E0EB4p_.exit.thread ], !dbg !14742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !dbg !14750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !dbg !14750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !dbg !14752, !noalias !12414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy), !dbg !14754, !noalias !12414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx), !dbg !14755, !noalias !12414
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.gx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bge)
          to label %bb.vr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14756, !noalias !12419, !inline_history !10464

bb.vr:                                            ; preds = %bb.vq
  invoke void @_RINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize12__deserializeRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.gy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ble, i64 noundef %i.bld, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.gx, i1 noundef zeroext %4)
          to label %bb.vs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !14754, !noalias !12419, !inline_history !10464

bb.vs:                                            ; preds = %bb.vr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !dbg !14757, !noalias !12414
  %i.blf = load i64, ptr %i.gy, align 8, !dbg !14758, !range !1486, !noalias !12414, !noundef !1325 ; 2 uses
  %.not39.i = icmp eq i64 %i.blf, 18, !dbg !14758
  %i.blg = getelementptr inbounds nuw i8, ptr %i.gy, i64 8, !dbg !14759
  %i.blh = load ptr, ptr %i.blg, align 8, !dbg !14759, !noalias !12414 ; 4 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.gy, i64 16, !dbg !14759
  %i.blj = load ptr, ptr %i.bli, align 8, !dbg !14759, !noalias !12414 ; 4 uses
  br i1 %.not39.i, label %bb.vu, label %bb.vt, !dbg !14760

bb.vt:                                            ; preds = %bb.vs
  %.sroa.733.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 24, !dbg !14761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13488, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.733.0..sroa_idx.i, i64 48, i1 false), !dbg !14761, !noalias !12445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !dbg !14762, !noalias !12414
  br label %bb.wk, !dbg !14753

bb.vu:                                            ; preds = %bb.vs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !dbg !14762, !noalias !12414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw), !dbg !14763, !noalias !12414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %i.px, i64 32, i1 false), !dbg !14763, !noalias !12415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv), !dbg !14764, !noalias !12414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(24) %i.hb, i64 24, i1 false), !dbg !14764, !noalias !12414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr), !dbg !14765, !noalias !12414
  %i.blk = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexE8from_vecCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.gp)
          to label %bb.vw unwind label %bb.vv, !dbg !14766, !noalias !12419, !inline_history !10464

bb.vv:                                            ; preds = %bb.vw, %bb.vu
  %i.bll = landingpad { ptr, i32 }
          cleanup
  br label %bb.wi

bb.vw:                                            ; preds = %bb.vu
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE12from_storageCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gr, ptr noundef nonnull %i.blk)
          to label %bb.vx unwind label %bb.vv, !dbg !14767, !noalias !12419, !inline_history !10464

bb.vx:                                            ; preds = %bb.vw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %i.gr, i64 24, i1 false), !dbg !14768, !noalias !12414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr), !dbg !14769, !noalias !12414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu), !dbg !14770, !noalias !12414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt), !dbg !14770, !noalias !12414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gt, ptr noundef nonnull align 8 dereferenceable(56) %i.hc, i64 56, i1 false), !dbg !14770, !noalias !12414
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder17into_opt_validity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.gt)
          to label %bb.vy unwind label %bb.wf, !dbg !14771, !noalias !12419, !inline_history !10464

bb.vy:                                            ; preds = %bb.vx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt), !dbg !14772, !noalias !12414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq), !dbg !14773, !noalias !12414
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array4listINtB2_9ListArrayxE7try_newCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.gq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.gw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.gv, ptr noundef nonnull %i.blh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.blj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.gu)
          to label %bb.vz unwind label %.body.i.thread581, !dbg !14773, !noalias !12419, !inline_history !10464

.body.i.thread581:                                ; preds = %bb.vy
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.thread.thread, !dbg !14774

bb.vz:                                            ; preds = %bb.vy
  call void @llvm.experimental.noalias.scope.decl(metadata !12448), !dbg !14775
  call void @llvm.experimental.noalias.scope.decl(metadata !12449), !dbg !14775
  %i.blm = load i8, ptr %i.gq, align 8, !dbg !14776, !range !1580, !alias.scope !12449, !noalias !12414, !noundef !1325 ; 2 uses
  %i.bln = icmp eq i8 %i.blm, 42, !dbg !14776
  br i1 %i.bln, label %bb.wa, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i, !dbg !14777, !prof !1389

bb.wa:                                            ; preds = %bb.vz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go), !dbg !14778, !noalias !12450
  %i.blo = getelementptr inbounds nuw i8, ptr %i.gq, i64 8, !dbg !14778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.go, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.blo, i64 72, i1 false), !dbg !14778, !noalias !12451
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %i.go, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %bb.wc unwind label %bb.wb, !dbg !14779, !noalias !12452, !inline_history !10464

bb.wb:                                            ; preds = %bb.wa
  %i.blp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.go) #31
          to label %.body.i.thread.thread unwind label %bb.wd, !dbg !14780, !noalias !12452, !inline_history !10464

bb.wc:                                            ; preds = %bb.wa
  unreachable

bb.wd:                                            ; preds = %bb.wb
  %i.blq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !14781, !noalias !12452, !inline_history !10464
  unreachable, !dbg !14781

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i: ; preds = %bb.vz
  %.sroa.4518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 1, !dbg !14782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7481, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4518.0..sroa_idx, i64 7, i1 false), !dbg !14782, !noalias !12445
  %.sroa.5519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 8, !dbg !14782
  %.sroa.5519.0.copyload = load i64, ptr %.sroa.5519.0..sroa_idx, align 8, !dbg !14782, !alias.scope !12453, !noalias !12414
  %.sroa.6520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 16, !dbg !14782
  %i.blr = load <2 x ptr>, ptr %.sroa.6520.0..sroa_idx, align 8, !dbg !14782, !alias.scope !12453, !noalias !12414
  %.sroa.8522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 32, !dbg !14782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13488, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8522.0..sroa_idx, i64 48, i1 false), !dbg !14782, !noalias !12445
  %.sroa.9523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 80, !dbg !14782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9523.0..sroa_idx, i64 24, i1 false), !dbg !14782, !noalias !12445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !dbg !14783, !noalias !12414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu), !dbg !14774, !noalias !12414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !dbg !14774, !noalias !12414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !dbg !14774, !noalias !12414
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(24) %i.ha)
          to label %bb.aeb unwind label %bb.we, !dbg !14741, !noalias !12419, !inline_history !10464

.body450:                                         ; preds = %bb.we, %.body.i.thread.thread
  %.sroa.017.3.i = phi i8 [ %.sroa.017.1.i, %.body.i.thread.thread ], [ %.sroa.016.2.i, %bb.we ], !dbg !14739 ; 2 uses
  %.sroa.016.1.i = phi i8 [ %.sroa.016.0.i, %.body.i.thread.thread ], [ %.sroa.016.2.i, %bb.we ], !dbg !14740
  %.pn42.i = phi { ptr, i32 } [ %.pn.pn.i, %.body.i.thread.thread ], [ %i.blt, %bb.we ] ; 2 uses
  %i.bls = trunc nuw i8 %.sroa.016.1.i to i1, !dbg !14784
  br i1 %i.bls, label %.body450.thread, label %bb.up, !dbg !14784

bb.we:                                            ; preds = %bb.wm, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i
  %.sroa.016.2.i = phi i8 [ 1, %bb.wm ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtCsgjwxzEoLG5s_12polars_error11PolarsErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i ], !dbg !14740 ; 2 uses
  %i.blt = landingpad { ptr, i32 }
          cleanup
  br label %.body450

bb.wf:                                            ; preds = %bb.vx
  %i.blu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json(ptr nonnull %i.blh, ptr nonnull %i.blj) #31
          to label %bb.wh unwind label %bb.wg, !dbg !14774, !noalias !12419, !inline_history !10464

bb.wg:                                            ; preds = %bb.wh, %.thread, %.thread558, %.body450.thread, %bb.wj, %bb.wi, %bb.wf, %.body.i.thread.thread
  %i.blv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !14785, !noalias !12419, !inline_history !10464
  unreachable, !dbg !14785

bb.wh:                                            ; preds = %bb.wf
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gv)
          to label %bb.wi unwind label %bb.wg, !dbg !14786

.body.i.thread:                                   ; preds = %bb.wi
  br i1 %.sroa.015.0.i.ph.a, label %bb.wj, label %.body.i.thread.thread, !dbg !14787

bb.wi:                                            ; preds = %bb.vv, %bb.wh
  %.sroa.015.0.i.ph.a = phi i1 [ true, %bb.vv ], [ false, %bb.wh ]
  %.pn.i.ph = phi { ptr, i32 } [ %i.bll, %bb.vv ], [ %i.blu, %bb.wh ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(32) %i.gw) #31
          to label %.body.i.thread unwind label %bb.wg, !dbg !14774, !noalias !12419, !inline_history !10464

bb.wj:                                            ; preds = %.body.i.thread
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs2c5WrizoNH7_11polars_json(ptr nonnull %i.blh, ptr nonnull %i.blj) #31
          to label %.body.i.thread.thread unwind label %bb.wg, !dbg !14787, !noalias !12419, !inline_history !10464

bb.wk:                                            ; preds = %bb.vt, %bb.vp
  %.sroa.12.0 = phi ptr [ %i.blj, %bb.vt ], [ %.sroa.6551.0.copyload, %bb.vp ], !dbg !14788
  %.sroa.11.0 = phi ptr [ %i.blh, %bb.vt ], [ %.sroa.5550.0.copyload, %bb.vp ], !dbg !14788
  %.sroa.8482.0 = phi i64 [ %i.blf, %bb.vt ], [ 2, %bb.vp ], !dbg !14788
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ha)
          to label %bb.wm unwind label %bb.wl, !dbg !14789, !noalias !12419

bb.wl:                                            ; preds = %bb.wk
  %i.blw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ha)
          to label %.body450.thread unwind label %bb.wn, !dbg !14790, !noalias !12419

bb.wm:                                            ; preds = %bb.wk
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ha)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit unwind label %bb.we, !dbg !14791

bb.wn:                                            ; preds = %bb.wl
  %i.blx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !14789, !noalias !12419
  unreachable, !dbg !14789

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !dbg !14741, !noalias !12414
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.wo, !dbg !14792, !noalias !12419

bb.wo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit
  %i.bly = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %.thread558 unwind label %bb.wp, !dbg !14793, !noalias !12419

bb.wp:                                            ; preds = %bb.wo
  %i.blz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !14792, !noalias !12419
  unreachable, !dbg !14792

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEECs2c5WrizoNH7_11polars_json.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECs2c5WrizoNH7_11polars_json.exit unwind label %bb.uq, !dbg !14794

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECs2c5WrizoNH7_11polars_json.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2c5WrizoNH7_11polars_json.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !dbg !14784, !noalias !12414
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.hc)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit.i unwind label %bb.wq, !dbg !14795, !noalias !12419

bb.wq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECs2c5WrizoNH7_11polars_json.exit
  %i.bma = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.hc)
          to label %.thread unwind label %bb.wr, !dbg !14796, !noalias !12419

bb.wr:                                            ; preds = %bb.wq
  %i.bmb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !14795, !noalias !12419
  unreachable, !dbg !14795

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECs2c5WrizoNH7_11polars_json.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.hc)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs2c5WrizoNH7_11polars_json.exit unwind label %bb.ui, !dbg !14797

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs2c5WrizoNH7_11polars_json.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !dbg !14600, !noalias !12414
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.px), !dbg !14585, !inline_history !10464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp), !dbg !14798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.px), !dbg !14799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.643.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13488, i64 48, i1 false), !dbg !14800
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7481), !dbg !14801
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13488), !dbg !14801
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !14801
  %.sroa.4514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.643.sroa.10, i64 48, i1 false), !dbg !14801
  store i64 %.sroa.8482.0, ptr %0, align 8, !dbg !14802
  %.sroa.2512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14802
  store ptr %.sroa.11.0, ptr %.sroa.2512.0..sroa_idx, align 8, !dbg !14802
  %.sroa.3513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14802
  store ptr %.sroa.12.0, ptr %.sroa.3513.0..sroa_idx, align 8, !dbg !14802
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.643.sroa.10), !dbg !14803
  br label %bb.aea, !dbg !14804

.body450.thread:                                  ; preds = %bb.wl, %.body450
  %.pn42.i732 = phi { ptr, i32 } [ %.pn42.i, %.body450 ], [ %i.blw, %bb.wl ]
  %.sroa.017.3.i730 = phi i8 [ %.sroa.017.3.i, %.body450 ], [ 1, %bb.wl ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(24) %i.hb) #31
          to label %bb.up unwind label %bb.wg, !dbg !14784, !noalias !12419, !inline_history !10464

.thread558:                                       ; preds = %bb.wo, %bb.uq, %bb.up
  %.pn44.i563 = phi { ptr, i32 } [ %.pn44.i, %bb.up ], [ %i.bgg, %bb.uq ], [ %i.bly, %bb.wo ]
  %.sroa.018.1.i562 = phi i1 [ %.sroa.018.1.i, %bb.up ], [ true, %bb.uq ], [ true, %bb.wo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs2c5WrizoNH7_11polars_json(ptr noalias noundef align 8 dereferenceable(56) %i.hc) #31
          to label %bb.uh unwind label %bb.wg, !dbg !14600, !noalias !12419, !inline_history !10464

.thread:                                          ; preds = %bb.wq, %bb.ul, %bb.ui, %bb.uh
  %.pn46.i557 = phi { ptr, i32 } [ %.pn46.i, %bb.uh ], [ %i.bgb, %bb.ul ], [ %i.bfz, %bb.ui ], [ %i.bma, %bb.wq ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.px) #31
          to label %.thread603 unwind label %bb.wg, !dbg !14585, !noalias !12419, !inline_history !10464

bb.ws:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.657), !dbg !12519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pu), !dbg !12519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pt), !dbg !14805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pt, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !14805
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12459), !dbg !12519
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12460), !dbg !12519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm)
  %i.bmc = zext i1 %4 to i8
  store i8 %i.bmc, ptr %i.gm, align 1, !noalias !12461
  %i.bmd = invoke { ptr, i64 } @_RNvMs1_NtNtCs8774dFTUdNv_12polars_arrow5array7struct_NtB5_11StructArray10get_fields(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.pt)
          to label %bb.wu unwind label %bb.wt, !dbg !14806, !noalias !12462 ; 2 uses

.body.i395:                                       ; preds = %.body61.i, %bb.ww, %bb.wt
  %.pn41.i = phi { ptr, i32 } [ %i.bmm, %bb.ww ], [ %i.bme, %bb.wt ], [ %.pn39.i, %.body61.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.pt) #31
          to label %.thread603 unwind label %bb.zd, !dbg !14807, !noalias !12462

bb.wt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs2c5WrizoNH7_11polars_json.exit.invoke.i, %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i.i, %bb.wv, %bb.wu, %bb.ws
  %i.bme = landingpad { ptr, i32 }
          cleanup
  br label %.body.i395

bb.wu:                                            ; preds = %bb.ws
  %i.bmf = extractvalue { ptr, i64 } %i.bmd, 0, !dbg !14806 ; 4 uses
  %i.bmg = extractvalue { ptr, i64 } %i.bmd, 1, !dbg !14806 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !dbg !14808, !noalias !12461
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bmf) ], !dbg !14809
  %i.bmh = getelementptr inbounds nuw [72 x i8], ptr %i.bmf, i64 %i.bmg, !dbg !14810 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !dbg !14811, !noalias !12463
  %i.bmi = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i396 unwind label %bb.wt, !dbg !14812, !noalias !12462

.noexc.i396:                                      ; preds = %bb.wu
  %i.bmj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !14813, !noalias !12463
  %i.bmk = icmp eq i8 %i.bmj, 2, !dbg !14814
  br i1 %i.bmk, label %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i.i, label %bb.wv, !dbg !14814, !prof !1514

bb.wv:                                            ; preds = %.noexc.i396
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #30
          to label %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i.i unwind label %bb.wt, !dbg !14815, !noalias !12462

_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i.i: ; preds = %bb.wv, %.noexc.i396
  invoke void @_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEEE16with_capacity_inCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.fx, i64 noundef %i.bmg)
          to label %.noexc45.i unwind label %bb.wt, !dbg !14816, !noalias !12462

.noexc45.i:                                       ; preds = %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i.i
  %i.bml = getelementptr inbounds nuw i8, ptr %i.fx, i64 32, !dbg !14817 ; 2 uses
  store i64 %i.bmi, ptr %i.bml, align 8, !dbg !14817, !alias.scope !12464, !noalias !12463
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvNtNtCs2c5WrizoNH7_11polars_json4json11deserialize18deserialize_structRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4n_8for_each4callTReTRNtB1r_13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3u_EEENCINvXs1k_NtCs7tGzs63DEEy_9hashbrown3mapINtB6E_7HashMapB5r_B5t_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB4r_7collect12FromIteratorB5q_E9from_iterBN_E0E0EB2r_(ptr noundef nonnull %i.bmf, ptr noundef nonnull %i.bmh, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fx)
          to label %bb.wy unwind label %bb.ww, !dbg !14818, !noalias !12465

bb.ww:                                            ; preds = %.noexc45.i
  %i.bmm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bml, i64 noundef 48, i64 noundef 16)
          to label %.body.i395 unwind label %bb.wx, !dbg !14819, !noalias !12465

bb.wx:                                            ; preds = %bb.ww
  %i.bmn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !14820, !noalias !12465
  unreachable, !dbg !14820

bb.wy:                                            ; preds = %.noexc45.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gl, ptr noundef nonnull align 8 dereferenceable(40) %i.fx, i64 40, i1 false), !dbg !14821, !noalias !12461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !dbg !14822, !noalias !12463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk), !dbg !14823, !noalias !12461
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.gk, i64 noundef range(i64 0, 1152921504606846976) %2)
          to label %bb.wz unwind label %bb.yz, !dbg !14824, !noalias !12462

.body61.i:                                        ; preds = %.loopexit.split-lp.i, %bb.ze, %bb.yz, %bb.yr
  %.pn39.i = phi { ptr, i32 } [ %i.bvx, %bb.yr ], [ %.pn.pn.ph.i, %.loopexit.split-lp.i ], [ %i.bwk, %bb.ze ], [ %i.bwg, %bb.yz ]
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.gl, i64 32, !dbg !14825
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReTRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRNtNtNtCshSReUCO0YaO_9simd_json5value8borrowed5ValueEEENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gl, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bmo, i64 noundef 48, i64 noundef 16)
          to label %.body.i395 unwind label %bb.zd, !dbg !14826, !noalias !12462

bb.wz:                                            ; preds = %bb.wy
  %i.bmp = icmp eq i64 %2, 0, !dbg !14827
  br i1 %i.bmp, label %.thread87.i, label %bb.xa, !dbg !14828

.thread87.i:                                      ; preds = %bb.wz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf), !dbg !14829, !noalias !12461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !noalias !12461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !noalias !12461
  br label %bb.yu, !dbg !14830

bb.xa:                                            ; preds = %bb.wz
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.gl, i64 24 ; 3 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.gk, i64 32 ; 6 uses
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.gk, i64 40 ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.umin.i8
!7278 = !DILocation(line: 250, column: 19, scope: !135, inlinedAt: !4958)
!7279 = !DILocation(line: 292, column: 5, scope: !214, inlinedAt: !4957)
!7280 = !DILocation(line: 284, column: 5, scope: !214, inlinedAt: !4957)
!7281 = !DILocation(line: 289, column: 56, scope: !215, inlinedAt: !4957)
!7282 = !DILocation(line: 377, column: 31, scope: !4952, inlinedAt: !4951)
!7283 = !DILocation(line: 377, column: 5, scope: !4952, inlinedAt: !4951)
!7284 = !DILocation(line: 378, column: 2, scope: !4950, inlinedAt: !4951)
!7285 = !DILocation(line: 367, column: 1, scope: !4950, inlinedAt: !4951)
!7286 = !DILocation(line: 526, column: 13, scope: !4169)
!7287 = !DILocation(line: 217, column: 9, scope: !4965, inlinedAt: !4971)
!7288 = !DILocation(line: 175, column: 9, scope: !4967, inlinedAt: !4969)
!7289 = !DILocation(line: 215, column: 1, scope: !4967, inlinedAt: !4969)
!7290 = !DILocation(line: 217, column: 36, scope: !4965, inlinedAt: !4971)
!7291 = !DILocation(line: 1231, column: 15, scope: !216, inlinedAt: !4976)
!7292 = !DILocation(line: 1231, column: 9, scope: !216, inlinedAt: !4976)
!7293 = !DILocation(line: 1233, column: 17, scope: !216, inlinedAt: !4976)
!7294 = !DILocation(line: 1233, column: 23, scope: !217, inlinedAt: !4976)
!7295 = !DILocation(line: 1233, column: 86, scope: !216, inlinedAt: !4976)
!7296 = !DILocation(line: 1227, column: 5, scope: !216, inlinedAt: !4976)
!7297 = !DILocation(line: 1232, column: 16, scope: !216, inlinedAt: !4976)
!7298 = !DILocation(line: 217, column: 43, scope: !4965, inlinedAt: !4971)
!7299 = !DILocation(line: 178, column: 9, scope: !4977, inlinedAt: !4969)
!7300 = !DILocation(line: 178, column: 24, scope: !4977, inlinedAt: !4969)
!7301 = !DILocation(line: 179, column: 9, scope: !4978, inlinedAt: !4969)
!7302 = !DILocation(line: 179, column: 23, scope: !4978, inlinedAt: !4969)
!7303 = !DILocation(line: 178, column: 63, scope: !4977, inlinedAt: !4969)
!7304 = !DILocation(line: 215, column: 1, scope: !4977, inlinedAt: !4969)
!7305 = !DILocation(line: 180, column: 9, scope: !4979, inlinedAt: !4969)
!7306 = !DILocation(line: 464, column: 9, scope: !4980, inlinedAt: !4981)
!7307 = !DILocation(line: 1717, column: 9, scope: !4982, inlinedAt: !4992)
!7308 = !DILocation(line: 25, column: 86, scope: !4984, inlinedAt: !4991)
!7309 = !DILocation(line: 205, column: 5, scope: !4988, inlinedAt: !4969)
!7310 = !DILocation(line: 560, column: 8, scope: !204, inlinedAt: !4993)
!7311 = !DILocation(line: 28, column: 9, scope: !4996, inlinedAt: !4991)
!7312 = !DILocation(line: 175, column: 23, scope: !4967, inlinedAt: !4969)
!7313 = !DILocation(line: 659, column: 28, scope: !4997, inlinedAt: !4999)
!7314 = !DILocation(line: 279, column: 27, scope: !4998, inlinedAt: !4991)
!7315 = !DILocation(line: 140, column: 27, scope: !5004, inlinedAt: !5005)
!7316 = !DILocation(line: 884, column: 29, scope: !5008, inlinedAt: !5009)
!7317 = !DILocation(line: 183, column: 36, scope: !5013, inlinedAt: !5014)
!7318 = !DILocation(line: 183, column: 30, scope: !5013, inlinedAt: !5014)
!7319 = !DILocation(line: 183, column: 19, scope: !5012, inlinedAt: !5014)
!7320 = !DILocation(line: 1037, column: 19, scope: !218, inlinedAt: !5023)
!7321 = !DILocation(line: 619, column: 49, scope: !219, inlinedAt: !5025)
!7322 = !DILocation(line: 1040, column: 12, scope: !221, inlinedAt: !5023)
!7323 = !DILocation(line: 1041, column: 22, scope: !221, inlinedAt: !5023)
!7324 = !DILocation(line: 614, column: 9, scope: !222, inlinedAt: !5029)
!7325 = !DILocation(line: 961, column: 18, scope: !226, inlinedAt: !5030)
!7326 = !DILocation(line: 1921, column: 41, scope: !227, inlinedAt: !5032)
!7327 = !DILocation(line: 1046, column: 13, scope: !228, inlinedAt: !5023)
!7328 = !DILocation(line: 64, column: 12, scope: !5033, inlinedAt: !5036)
!7329 = !DILocation(line: 64, column: 40, scope: !5033, inlinedAt: !5036)
!7330 = !DILocation(line: 185, column: 30, scope: !5037, inlinedAt: !5014)
!7331 = !DILocation(line: 614, column: 9, scope: !5038, inlinedAt: !5049)
!7332 = !DILocation(line: 1841, column: 86, scope: !5042, inlinedAt: !5045)
!7333 = !DILocation(line: 961, column: 18, scope: !5050, inlinedAt: !5057)
!7334 = !DILocation(line: 27, column: 14, scope: !5058, inlinedAt: !5061)
!7335 = !DILocation(line: 64, column: 12, scope: !5033, inlinedAt: !5063)
!7336 = !DILocation(line: 64, column: 40, scope: !5033, inlinedAt: !5063)
!7337 = !DILocation(line: 201, column: 30, scope: !5013, inlinedAt: !5014)
!7338 = !DILocation(line: 200, column: 18, scope: !5013, inlinedAt: !5014)
!7339 = !DILocation(line: 64, column: 12, scope: !5033, inlinedAt: !5065)
!7340 = !DILocation(line: 64, column: 40, scope: !5033, inlinedAt: !5065)
!7341 = !DILocation(line: 65, column: 18, scope: !5033, inlinedAt: !5065)
!7342 = !DILocation(line: 107, column: 36, scope: !229, inlinedAt: !5068)
!7343 = !DILocation(line: 108, column: 9, scope: !229, inlinedAt: !5068)
!7344 = !DILocation(line: 88, column: 23, scope: !5034, inlinedAt: !5064)
!7345 = !DILocation(line: 107, column: 9, scope: !229, inlinedAt: !5068)
!7346 = !DILocation(line: 3799, column: 22, scope: !230, inlinedAt: !5069)
!7347 = !DILocation(line: 109, column: 12, scope: !229, inlinedAt: !5068)
!7348 = !DILocation(line: 3024, column: 19, scope: !231, inlinedAt: !5071)
!7349 = !DILocation(line: 3029, column: 37, scope: !233, inlinedAt: !5071)
!7350 = !DILocation(line: 3029, column: 18, scope: !233, inlinedAt: !5071)
!7351 = !DILocation(line: 614, column: 9, scope: !234, inlinedAt: !5075)
!7352 = !DILocation(line: 961, column: 18, scope: !239, inlinedAt: !5076)
!7353 = !DILocation(line: 552, column: 14, scope: !240, inlinedAt: !5079)
!7354 = !DILocation(line: 99, column: 28, scope: !243, inlinedAt: !5070)
!7355 = !DILocation(line: 2195, column: 9, scope: !244, inlinedAt: !5080)
!7356 = !DILocation(line: 85, column: 20, scope: !245, inlinedAt: !5081)
!7357 = !DILocation(line: 111, column: 13, scope: !229, inlinedAt: !5068)
!7358 = !DILocation(line: 112, column: 13, scope: !229, inlinedAt: !5068)
!7359 = !DILocation(line: 109, column: 9, scope: !229, inlinedAt: !5068)
!7360 = !DILocation(line: 193, column: 25, scope: !5013, inlinedAt: !5014)
!7361 = !DILocation(line: 1841, column: 86, scope: !246, inlinedAt: !5087)
!7362 = !DILocation(line: 282, column: 16, scope: !251, inlinedAt: !5088)
!7363 = !DILocation(line: 234, column: 22, scope: !249, inlinedAt: !5084)
!7364 = !DILocation(line: 619, column: 49, scope: !252, inlinedAt: !5094)
!7365 = !DILocation(line: 1040, column: 12, scope: !255, inlinedAt: !5092)
!7366 = !DILocation(line: 1041, column: 22, scope: !255, inlinedAt: !5092)
!7367 = !DILocation(line: 614, column: 9, scope: !258, inlinedAt: !5098)
!7368 = !DILocation(line: 961, column: 18, scope: !262, inlinedAt: !5099)
!7369 = !DILocation(line: 1921, column: 41, scope: !263, inlinedAt: !5100)
!7370 = !DILocation(line: 1046, column: 13, scope: !264, inlinedAt: !5092)
!7371 = !DILocation(line: 65, column: 18, scope: !5033, inlinedAt: !5036)
!7372 = !DILocation(line: 107, column: 36, scope: !229, inlinedAt: !5103)
!7373 = !DILocation(line: 108, column: 9, scope: !229, inlinedAt: !5103)
!7374 = !DILocation(line: 88, column: 23, scope: !5034, inlinedAt: !5035)
!7375 = !DILocation(line: 107, column: 35, scope: !229, inlinedAt: !5103)
!7376 = !DILocation(line: 107, column: 21, scope: !229, inlinedAt: !5103)
!7377 = !DILocation(line: 107, column: 9, scope: !229, inlinedAt: !5103)
!7378 = !DILocation(line: 3799, column: 22, scope: !230, inlinedAt: !5104)
!7379 = !DILocation(line: 109, column: 12, scope: !229, inlinedAt: !5103)
!7380 = !DILocation(line: 3024, column: 19, scope: !231, inlinedAt: !5106)
!7381 = !DILocation(line: 3029, column: 37, scope: !233, inlinedAt: !5106)
!7382 = !DILocation(line: 3029, column: 18, scope: !233, inlinedAt: !5106)
!7383 = !DILocation(line: 614, column: 9, scope: !234, inlinedAt: !5110)
!7384 = !DILocation(line: 961, column: 18, scope: !239, inlinedAt: !5111)
!7385 = !DILocation(line: 552, column: 14, scope: !240, inlinedAt: !5114)
!7386 = !DILocation(line: 99, column: 28, scope: !243, inlinedAt: !5105)
!7387 = !DILocation(line: 2195, column: 9, scope: !244, inlinedAt: !5115)
!7388 = !DILocation(line: 85, column: 20, scope: !245, inlinedAt: !5116)
!7389 = !DILocation(line: 111, column: 13, scope: !229, inlinedAt: !5103)
!7390 = !DILocation(line: 112, column: 13, scope: !229, inlinedAt: !5103)
!7391 = !DILocation(line: 109, column: 9, scope: !229, inlinedAt: !5103)
!7392 = !DILocation(line: 198, column: 25, scope: !5021, inlinedAt: !5014)
!7393 = !DILocation(line: 1841, column: 86, scope: !265, inlinedAt: !5122)
!7394 = !DILocation(line: 282, column: 16, scope: !271, inlinedAt: !5123)
!7395 = !DILocation(line: 129, column: 30, scope: !272, inlinedAt: !5119)
!7396 = !DILocation(line: 619, column: 49, scope: !252, inlinedAt: !5130)
!7397 = !DILocation(line: 1040, column: 12, scope: !255, inlinedAt: !5128)
!7398 = !DILocation(line: 1041, column: 22, scope: !255, inlinedAt: !5128)
!7399 = !DILocation(line: 614, column: 9, scope: !258, inlinedAt: !5134)
!7400 = !DILocation(line: 105, column: 45, scope: !275, inlinedAt: !5135)
!7401 = !DILocation(line: 961, column: 18, scope: !262, inlinedAt: !5136)
!7402 = !DILocation(line: 1921, column: 41, scope: !263, inlinedAt: !5137)
!7403 = !DILocation(line: 1046, column: 13, scope: !264, inlinedAt: !5128)
!7404 = !DILocation(line: 199, column: 13, scope: !5013, inlinedAt: !5014)
!7405 = !DILocation(line: 65, column: 18, scope: !5033, inlinedAt: !5063)
!7406 = !DILocation(line: 107, column: 36, scope: !229, inlinedAt: !5140)
!7407 = !DILocation(line: 108, column: 9, scope: !229, inlinedAt: !5140)
!7408 = !DILocation(line: 88, column: 23, scope: !5034, inlinedAt: !5062)
!7409 = !DILocation(line: 107, column: 35, scope: !229, inlinedAt: !5140)
!7410 = !DILocation(line: 107, column: 21, scope: !229, inlinedAt: !5140)
!7411 = !DILocation(line: 107, column: 9, scope: !229, inlinedAt: !5140)
!7412 = !DILocation(line: 3799, column: 22, scope: !230, inlinedAt: !5141)
!7413 = !DILocation(line: 109, column: 12, scope: !229, inlinedAt: !5140)
!7414 = !DILocation(line: 3024, column: 19, scope: !231, inlinedAt: !5143)
!7415 = !DILocation(line: 3029, column: 37, scope: !233, inlinedAt: !5143)
!7416 = !DILocation(line: 3029, column: 18, scope: !233, inlinedAt: !5143)
!7417 = !DILocation(line: 614, column: 9, scope: !234, inlinedAt: !5147)
!7418 = !DILocation(line: 961, column: 18, scope: !239, inlinedAt: !5148)
!7419 = !DILocation(line: 552, column: 14, scope: !240, inlinedAt: !5151)
!7420 = !DILocation(line: 99, column: 28, scope: !243, inlinedAt: !5142)
!7421 = !DILocation(line: 2195, column: 9, scope: !244, inlinedAt: !5152)
!7422 = !DILocation(line: 85, column: 20, scope: !245, inlinedAt: !5153)
!7423 = !DILocation(line: 111, column: 13, scope: !229, inlinedAt: !5140)
!7424 = !DILocation(line: 112, column: 13, scope: !229, inlinedAt: !5140)
!7425 = !DILocation(line: 109, column: 9, scope: !229, inlinedAt: !5140)
!7426 = !DILocation(line: 3024, column: 19, scope: !5154, inlinedAt: !5155)
!7427 = !DILocation(line: 3029, column: 37, scope: !5156, inlinedAt: !5155)
!7428 = !DILocation(line: 3029, column: 18, scope: !5156, inlinedAt: !5155)
!7429 = !DILocation(line: 188, column: 22, scope: !5037, inlinedAt: !5014)
!7430 = !DILocation(line: 1841, column: 86, scope: !265, inlinedAt: !5162)
!7431 = !DILocation(line: 282, column: 16, scope: !271, inlinedAt: !5163)
!7432 = !DILocation(line: 129, column: 30, scope: !272, inlinedAt: !5159)
!7433 = !DILocation(line: 619, column: 49, scope: !252, inlinedAt: !5170)
!7434 = !DILocation(line: 1040, column: 12, scope: !255, inlinedAt: !5168)
!7435 = !DILocation(line: 1041, column: 22, scope: !255, inlinedAt: !5168)
!7436 = !DILocation(line: 614, column: 9, scope: !258, inlinedAt: !5174)
!7437 = !DILocation(line: 105, column: 45, scope: !275, inlinedAt: !5175)
!7438 = !DILocation(line: 961, column: 18, scope: !262, inlinedAt: !5176)
!7439 = !DILocation(line: 1921, column: 41, scope: !263, inlinedAt: !5177)
!7440 = !DILocation(line: 1046, column: 13, scope: !264, inlinedAt: !5168)
!7441 = !DILocation(line: 190, column: 13, scope: !5013, inlinedAt: !5014)
!7442 = !DILocation(line: 0, scope: !4967, inlinedAt: !4969)
!7443 = !DILocation(line: 141, column: 17, scope: !5178, inlinedAt: !5005)
!7444 = !DILocation(line: 284, column: 24, scope: !4998, inlinedAt: !4991)
!7445 = !DILocation(line: 0, scope: !4977, inlinedAt: !4969)
!7446 = !DILocation(line: 0, scope: !4978, inlinedAt: !4969)
!7447 = !DILocation(line: 215, column: 1, scope: !4979, inlinedAt: !4969)
!7448 = !DILocation(line: 614, column: 9, scope: !5183, inlinedAt: !5194)
!7449 = !DILocation(line: 1841, column: 86, scope: !5187, inlinedAt: !5190)
!7450 = !DILocation(line: 566, column: 13, scope: !204, inlinedAt: !4993)
!7451 = !DILocation(line: 566, column: 27, scope: !204, inlinedAt: !4993)
!7452 = !DILocation(line: 561, column: 9, scope: !1515, inlinedAt: !4993)
!7453 = !DILocation(line: 659, column: 34, scope: !206, inlinedAt: !5197)
!7454 = !DILocation(line: 561, column: 9, scope: !204, inlinedAt: !4993)
!7455 = !DILocation(line: 778, column: 9, scope: !209, inlinedAt: !5198)
!7456 = !DILocation(line: 571, column: 2, scope: !204, inlinedAt: !4993)
!7457 = !DILocation(line: 2175, column: 17, scope: !5199, inlinedAt: !5200)
!7458 = !DILocation(line: 205, column: 41, scope: !4988, inlinedAt: !4969)
!7459 = !DILocation(line: 0, scope: !6265, inlinedAt: !4969)
!7460 = !DILocation(line: 207, column: 18, scope: !4988, inlinedAt: !4969)
!7461 = !DILocation(line: 207, column: 39, scope: !4988, inlinedAt: !4969)
!7462 = !DILocation(line: 207, column: 45, scope: !4988, inlinedAt: !4969)
!7463 = !DILocation(line: 207, column: 82, scope: !4988, inlinedAt: !4969)
!7464 = !DILocation(line: 2173, column: 15, scope: !5201, inlinedAt: !5202)
!7465 = !DILocation(line: 0, scope: !5201, inlinedAt: !5202)
!7466 = !DILocation(line: 2173, column: 9, scope: !5201, inlinedAt: !5202)
!7467 = !DILocation(line: 2175, column: 17, scope: !5201, inlinedAt: !5202)
!7468 = !DILocation(line: 207, column: 83, scope: !4988, inlinedAt: !4969)
!7469 = !DILocation(line: 210, column: 9, scope: !5203, inlinedAt: !4969)
!7470 = !DILocation(line: 211, column: 9, scope: !5203, inlinedAt: !4969)
!7471 = !DILocation(line: 67, column: 14, scope: !5204, inlinedAt: !5207)
!7472 = !DILocation(line: 117, column: 28, scope: !5208, inlinedAt: !5213)
!7473 = !DILocation(line: 117, column: 9, scope: !5208, inlinedAt: !5213)
!7474 = !DILocation(line: 67, column: 9, scope: !5204, inlinedAt: !5207)
!7475 = !DILocation(line: 67, column: 30, scope: !5204, inlinedAt: !5207)
!7476 = !DILocation(line: 213, column: 9, scope: !5203, inlinedAt: !4969)
!7477 = !DILocation(line: 213, column: 18, scope: !5203, inlinedAt: !4969)
!7478 = !DILocation(line: 213, column: 36, scope: !5203, inlinedAt: !4969)
!7479 = !DILocation(line: 88, column: 9, scope: !5214, inlinedAt: !5215)
!7480 = !DILocation(line: 214, column: 5, scope: !5203, inlinedAt: !4969)
!7481 = !DILocation(line: 88, column: 57, scope: !5214, inlinedAt: !5215)
!7482 = !DILocation(line: 1231, column: 15, scope: !276, inlinedAt: !5218)
!7483 = !DILocation(line: 1231, column: 9, scope: !276, inlinedAt: !5218)
!7484 = !DILocation(line: 1233, column: 17, scope: !276, inlinedAt: !5218)
!7485 = !DILocation(line: 1233, column: 23, scope: !277, inlinedAt: !5218)
!7486 = !DILocation(line: 1233, column: 86, scope: !276, inlinedAt: !5218)
!7487 = !DILocation(line: 1227, column: 5, scope: !276, inlinedAt: !5218)
!7488 = !DILocation(line: 1232, column: 16, scope: !276, inlinedAt: !5218)
!7489 = !DILocation(line: 88, column: 64, scope: !5214, inlinedAt: !5215)
!7490 = !DILocation(line: 810, column: 1, scope: !47, inlinedAt: !5220)
!7491 = !DILocation(line: 810, column: 1, scope: !48, inlinedAt: !5221)
!7492 = !DILocation(line: 810, column: 1, scope: !48, inlinedAt: !5222)
!7493 = !DILocation(line: 215, column: 1, scope: !4978, inlinedAt: !4969)
!7494 = !DILocation(line: 170, column: 1, scope: !4967, inlinedAt: !4969)
!7495 = !DILocation(line: 810, column: 1, scope: !93, inlinedAt: !5225)
!7496 = !DILocation(line: 215, column: 1, scope: !4988, inlinedAt: !4969)
!7497 = !DILocation(line: 0, scope: !4988, inlinedAt: !4969)
!7498 = !DILocation(line: 810, column: 1, scope: !47, inlinedAt: !5226)
!7499 = !DILocation(line: 810, column: 1, scope: !48, inlinedAt: !5227)
!7500 = !DILocation(line: 810, column: 1, scope: !48, inlinedAt: !5228)
!7501 = !DILocation(line: 810, column: 1, scope: !26, inlinedAt: !5230)
!7502 = !DILocation(line: 810, column: 1, scope: !27, inlinedAt: !5231)
!7503 = !DILocation(line: 810, column: 1, scope: !27, inlinedAt: !5232)
!7504 = !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !5234)
!7505 = !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !5235)
!7506 = !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !5236)
!7507 = !DILocation(line: 215, column: 2, scope: !4967, inlinedAt: !4969)
!7508 = !DILocation(line: 528, column: 9, scope: !4169)
!7509 = !DILocation(line: 2175, column: 17, scope: !5237, inlinedAt: !6271)
!7510 = !DILocation(line: 528, column: 10, scope: !4169)
!7511 = !DILocation(line: 2189, column: 23, scope: !5239, inlinedAt: !6273)
!7512 = !DILocation(line: 528, column: 12, scope: !4169)
!7513 = !DILocation(line: 0, scope: !6274)
!7514 = !DILocation(line: 532, column: 13, scope: !4169)
!7515 = !DILocation(line: 223, column: 18, scope: !5247, inlinedAt: !5248)
!7516 = !DILocation(line: 297, column: 1, scope: !5246, inlinedAt: !5248)
!7517 = !DILocation(line: 225, column: 9, scope: !5249, inlinedAt: !5248)
!7518 = !DILocation(line: 407, column: 18, scope: !5250, inlinedAt: !5257)
!7519 = !DILocation(line: 961, column: 18, scope: !5258, inlinedAt: !5259)
!7520 = !DILocation(line: 4814, column: 13, scope: !5263, inlinedAt: !5266)
!7521 = !DILocation(line: 136, column: 30, scope: !278, inlinedAt: !5268)
!7522 = !DILocation(line: 3905, column: 24, scope: !280, inlinedAt: !5271)
!7523 = !DILocation(line: 213, column: 16, scope: !282, inlinedAt: !5269)
!7524 = !DILocation(line: 214, column: 17, scope: !282, inlinedAt: !5269)
!7525 = !DILocation(line: 562, column: 20, scope: !283, inlinedAt: !5272)
!7526 = !DILocation(line: 560, column: 9, scope: !283, inlinedAt: !5272)
!7527 = !DILocation(line: 887, column: 14, scope: !5275, inlinedAt: !5277)
!7528 = !DILocation(line: 3513, column: 18, scope: !284, inlinedAt: !5280)
!7529 = !DILocation(line: 4812, column: 5, scope: !5262, inlinedAt: !5266)
!7530 = !DILocation(line: 4819, column: 9, scope: !5276, inlinedAt: !5266)
!7531 = !DILocation(line: 4820, column: 5, scope: !5263, inlinedAt: !5266)
!7532 = !DILocation(line: 230, column: 9, scope: !5281, inlinedAt: !5248)
!7533 = !DILocation(line: 230, column: 24, scope: !5281, inlinedAt: !5248)
!7534 = !DILocation(line: 3513, column: 43, scope: !284, inlinedAt: !5284)
!7535 = !DILocation(line: 3513, column: 18, scope: !284, inlinedAt: !5284)
!7536 = !DILocation(line: 1717, column: 9, scope: !5285, inlinedAt: !5296)
!7537 = !DILocation(line: 25, column: 86, scope: !5287, inlinedAt: !5295)
!7538 = !DILocation(line: 280, column: 5, scope: !5292, inlinedAt: !5248)
!7539 = !DILocation(line: 560, column: 8, scope: !204, inlinedAt: !5297)
!7540 = !DILocation(line: 28, column: 9, scope: !5300, inlinedAt: !5295)
!7541 = !DILocation(line: 232, column: 9, scope: !5291, inlinedAt: !5248)
!7542 = !DILocation(line: 232, column: 27, scope: !5291, inlinedAt: !5248)
!7543 = !DILocation(line: 0, scope: !5246, inlinedAt: !5248)
!7544 = !DILocation(line: 140, column: 38, scope: !5301, inlinedAt: !5303)
!7545 = !DILocation(line: 659, column: 28, scope: !5304, inlinedAt: !5305)
!7546 = !DILocation(line: 279, column: 27, scope: !5302, inlinedAt: !5295)
!7547 = !DILocation(line: 235, column: 15, scope: !5309, inlinedAt: !5312)
!7548 = !DILocation(line: 235, column: 9, scope: !5309, inlinedAt: !5312)
!7549 = !DILocation(line: 264, column: 30, scope: !5309, inlinedAt: !5312)
!7550 = !DILocation(line: 263, column: 18, scope: !5309, inlinedAt: !5312)
!7551 = !DILocation(line: 1366, column: 29, scope: !5315, inlinedAt: !5320)
!7552 = !DILocation(line: 2171, column: 24, scope: !288, inlinedAt: !5327)
!7553 = !DILocation(line: 3853, column: 12, scope: !5328, inlinedAt: !5332)
!7554 = !DILocation(line: 2439, column: 9, scope: !289, inlinedAt: !5333)
!7555 = !DILocation(line: 57, column: 24, scope: !290, inlinedAt: !5336)
!7556 = !DILocation(line: 1615, column: 9, scope: !7, inlinedAt: !5339)
!7557 = !DILocation(line: 2168, column: 13, scope: !288, inlinedAt: !5327)
!7558 = !DILocation(line: 863, column: 18, scope: !296, inlinedAt: !5340)
!7559 = !DILocation(line: 1366, column: 29, scope: !5315, inlinedAt: !5344)
!7560 = !DILocation(line: 2439, column: 9, scope: !289, inlinedAt: !5346)
!7561 = !DILocation(line: 57, column: 24, scope: !290, inlinedAt: !5349)
!7562 = !DILocation(line: 1615, column: 9, scope: !7, inlinedAt: !5352)
!7563 = !DILocation(line: 863, column: 18, scope: !296, inlinedAt: !5353)
!7564 = !DILocation(line: 2171, column: 24, scope: !288, inlinedAt: !5345)
!7565 = !DILocation(line: 2168, column: 13, scope: !288, inlinedAt: !5345)
!7566 = !DILocation(line: 3703, column: 9, scope: !5354, inlinedAt: !5361)
!7567 = !DILocation(line: 3213, scope: !5356, inlinedAt: !5359)
!7568 = !DILocation(line: 40, column: 32, scope: !5363, inlinedAt: !5367)
!7569 = !DILocation(line: 40, column: 16, scope: !5363, inlinedAt: !5367)
!7570 = !DILocation(line: 3713, column: 16, scope: !5354, inlinedAt: !5361)
!7571 = !DILocation(line: 103, column: 19, scope: !5364, inlinedAt: !5366)
!7572 = !DILocation(line: 500, column: 18, scope: !5368, inlinedAt: !5373)
!7573 = !DILocation(line: 642, column: 21, scope: !5369, inlinedAt: !5372)
!7574 = !DILocation(line: 70, column: 13, scope: !5370, inlinedAt: !5371)
!7575 = !DILocation(line: 28, column: 17, scope: !5374, inlinedAt: !5376)
!7576 = !DILocation(line: 1072, column: 47, scope: !5377, inlinedAt: !5380)
!7577 = !DILocation(line: 1072, column: 22, scope: !5377, inlinedAt: !5380)
!7578 = !DILocation(line: 260, column: 40, scope: !5381, inlinedAt: !5388)
!7579 = !DILocation(line: 1037, column: 19, scope: !218, inlinedAt: !5392)
!7580 = !DILocation(line: 619, column: 49, scope: !219, inlinedAt: !5404)
!7581 = !DILocation(line: 1040, column: 12, scope: !221, inlinedAt: !5392)
!7582 = !DILocation(line: 1041, column: 22, scope: !221, inlinedAt: !5392)
!7583 = !DILocation(line: 614, column: 9, scope: !222, inlinedAt: !5408)
!7584 = !DILocation(line: 961, column: 18, scope: !226, inlinedAt: !5409)
!7585 = !DILocation(line: 1921, column: 41, scope: !227, inlinedAt: !5411)
!7586 = !DILocation(line: 1046, column: 13, scope: !228, inlinedAt: !5392)
!7587 = !DILocation(line: 3710, column: 17, scope: !5385, inlinedAt: !5361)
!7588 = !DILocation(line: 3704, column: 13, scope: !5354, inlinedAt: !5361)
!7589 = !DILocation(line: 57, column: 24, scope: !5412, inlinedAt: !5413)
!7590 = !DILocation(line: 1615, column: 9, scope: !7, inlinedAt: !5419)
!7591 = !DILocation(line: 1072, column: 22, scope: !5377, inlinedAt: !5421)
!7592 = !DILocation(line: 863, column: 18, scope: !5422, inlinedAt: !5423)
!7593 = !DILocation(line: 64, column: 12, scope: !5424, inlinedAt: !5427)
!7594 = !DILocation(line: 64, column: 40, scope: !5424, inlinedAt: !5427)
!7595 = !DILocation(line: 65, column: 18, scope: !5424, inlinedAt: !5427)
!7596 = !DILocation(line: 107, column: 36, scope: !229, inlinedAt: !5430)
!7597 = !DILocation(line: 108, column: 9, scope: !229, inlinedAt: !5430)
!7598 = !DILocation(line: 88, column: 23, scope: !5425, inlinedAt: !5426)
!7599 = !DILocation(line: 107, column: 9, scope: !229, inlinedAt: !5430)
!7600 = !DILocation(line: 3799, column: 22, scope: !230, inlinedAt: !5431)
!7601 = !DILocation(line: 109, column: 12, scope: !229, inlinedAt: !5430)
!7602 = !DILocation(line: 3024, column: 19, scope: !231, inlinedAt: !5433)
!7603 = !DILocation(line: 3029, column: 37, scope: !233, inlinedAt: !5433)
!7604 = !DILocation(line: 3029, column: 18, scope: !233, inlinedAt: !5433)
!7605 = !DILocation(line: 614, column: 9, scope: !234, inlinedAt: !5437)
!7606 = !DILocation(line: 961, column: 18, scope: !239, inlinedAt: !5438)
!7607 = !DILocation(line: 552, column: 14, scope: !240, inlinedAt: !5441)
!7608 = !DILocation(line: 99, column: 28, scope: !243, inlinedAt: !5432)
!7609 = !DILocation(line: 2195, column: 9, scope: !244, inlinedAt: !5442)
!7610 = !DILocation(line: 85, column: 20, scope: !245, inlinedAt: !5443)
!7611 = !DILocation(line: 111, column: 13, scope: !229, inlinedAt: !5430)
!7612 = !DILocation(line: 112, column: 13, scope: !229, inlinedAt: !5430)
!7613 = !DILocation(line: 109, column: 9, scope: !229, inlinedAt: !5430)
!7614 = !DILocation(line: 40, column: 32, scope: !298, inlinedAt: !5446)
!7615 = !DILocation(line: 40, column: 16, scope: !298, inlinedAt: !5446)
!7616 = !DILocation(line: 3663, column: 58, scope: !300, inlinedAt: !5444)
!7617 = !DILocation(line: 57, column: 24, scope: !302, inlinedAt: !5449)
!7618 = !DILocation(line: 1615, column: 9, scope: !7, inlinedAt: !5452)
!7619 = !DILocation(line: 1072, column: 22, scope: !306, inlinedAt: !5454)
!7620 = !DILocation(line: 863, column: 18, scope: !308, inlinedAt: !5455)
!7621 = !DILocation(line: 103, column: 19, scope: !299, inlinedAt: !5445)
!7622 = !DILocation(line: 238, column: 56, scope: !5318, inlinedAt: !5312)
!7623 = !DILocation(line: 500, column: 18, scope: !309, inlinedAt: !5458)
!7624 = !DILocation(line: 642, column: 21, scope: !310, inlinedAt: !5457)
!7625 = !DILocation(line: 70, column: 13, scope: !311, inlinedAt: !5456)
!7626 = !DILocation(line: 28, column: 17, scope: !312, inlinedAt: !5459)
!7627 = !DILocation(line: 1072, column: 47, scope: !306, inlinedAt: !5461)
!7628 = !DILocation(line: 1072, column: 22, scope: !306, inlinedAt: !5461)
!7629 = !DILocation(line: 3863, column: 9, scope: !5462, inlinedAt: !5332)
!7630 = !DILocation(line: 1072, column: 22, scope: !5463, inlinedAt: !5469)
!7631 = !DILocation(line: 238, column: 23, scope: !5330, inlinedAt: !5312)
!7632 = !DILocation(line: 238, column: 37, scope: !5330, inlinedAt: !5312)
!7633 = !DILocation(line: 604, column: 15, scope: !5470, inlinedAt: !5473)
!7634 = !DILocation(line: 604, column: 9, scope: !5470, inlinedAt: !5473)
!7635 = !DILocation(line: 0, scope: !5317, inlinedAt: !5312)
!7636 = !DILocation(line: 64, column: 12, scope: !5424, inlinedAt: !5475)
!7637 = !DILocation(line: 64, column: 40, scope: !5424, inlinedAt: !5475)
!7638 = !DILocation(line: 65, column: 18, scope: !5424, inlinedAt: !5475)
!7639 = !DILocation(line: 107, column: 36, scope: !229, inlinedAt: !5478)
!7640 = !DILocation(line: 108, column: 9, scope: !229, inlinedAt: !5478)
!7641 = !DILocation(line: 88, column: 23, scope: !5425, inlinedAt: !5474)
!7642 = !DILocation(line: 107, column: 35, scope: !229, inlinedAt: !5478)
!7643 = !DILocation(line: 107, column: 21, scope: !229, inlinedAt: !5478)
!7644 = !DILocation(line: 107, column: 9, scope: !229, inlinedAt: !5478)
!7645 = !DILocation(line: 3799, column: 22, scope: !230, inlinedAt: !5479)
!7646 = !DILocation(line: 109, column: 12, scope: !229, inlinedAt: !5478)
!7647 = !DILocation(line: 3024, column: 19, scope: !231, inlinedAt: !5481)
!7648 = !DILocation(line: 3029, column: 37, scope: !233, inlinedAt: !5481)
!7649 = !DILocation(line: 3029, column: 18, scope: !233, inlinedAt: !5481)
!7650 = !DILocation(line: 614, column: 9, scope: !234, inlinedAt: !5485)
!7651 = !DILocation(line: 961, column: 18, scope: !239, inlinedAt: !5486)
!7652 = !DILocation(line: 552, column: 14, scope: !240, inlinedAt: !5489)
!7653 = !DILocation(line: 99, column: 28, scope: !243, inlinedAt: !5480)
!7654 = !DILocation(line: 2195, column: 9, scope: !244, inlinedAt: !5490)
!7655 = !DILocation(line: 85, column: 20, scope: !245, inlinedAt: !5491)
!7656 = !DILocation(line: 111, column: 13, scope: !229, inlinedAt: !5478)
!7657 = !DILocation(line: 112, column: 13, scope: !229, inlinedAt: !5478)
!7658 = !DILocation(line: 109, column: 9, scope: !229, inlinedAt: !5478)
!7659 = !DILocation(line: 392, column: 15, scope: !5492, inlinedAt: !5493)
!7660 = !DILocation(line: 0, scope: !5492, inlinedAt: !5493)
!7661 = !DILocation(line: 392, column: 9, scope: !5492, inlinedAt: !5493)
!7662 = !DILocation(line: 3029, column: 37, scope: !5495, inlinedAt: !5499)
!7663 = !DILocation(line: 3029, column: 18, scope: !5495, inlinedAt: !5499)
!7664 = !DILocation(line: 394, column: 41, scope: !5492, inlinedAt: !5493)
!7665 = !DILocation(line: 249, column: 20, scope: !5318, inlinedAt: !5312)
!7666 = !DILocation(line: 272, column: 23, scope: !5500, inlinedAt: !5501)
!7667 = !DILocation(line: 272, column: 28, scope: !5500, inlinedAt: !5501)
!7668 = !DILocation(line: 272, column: 9, scope: !5500, inlinedAt: !5501)
!7669 = !DILocation(line: 272, column: 35, scope: !5500, inlinedAt: !5501)
!7670 = !DILocation(line: 250, column: 21, scope: !5502, inlinedAt: !5312)
!7671 = !DILocation(line: 43, column: 9, scope: !314, inlinedAt: !5505)
!7672 = !DILocation(line: 43, column: 15, scope: !314, inlinedAt: !5505)
!7673 = !DILocation(line: 250, column: 30, scope: !5318, inlinedAt: !5312)
!7674 = !DILocation(line: 1717, column: 9, scope: !315, inlinedAt: !5507)
!7675 = !DILocation(line: 180, column: 28, scope: !318, inlinedAt: !5506)
!7676 = !DILocation(line: 3851, column: 12, scope: !321, inlinedAt: !5509)
!7677 = !DILocation(line: 50, column: 32, scope: !325, inlinedAt: !5512)
!7678 = !DILocation(line: 50, column: 16, scope: !325, inlinedAt: !5512)
!7679 = !DILocation(line: 3666, column: 54, scope: !327, inlinedAt: !5510)
!7680 = !DILocation(line: 61, column: 15, scope: !329, inlinedAt: !5517)
end_hunk_2
begin_hunk_3_@llvm.umin.i8
!14572 = !DILocation(line: 248, column: 11, scope: !135, inlinedAt: !10448)
!14573 = !DILocation(line: 248, column: 5, scope: !135, inlinedAt: !10448)
!14574 = !DILocation(line: 250, column: 19, scope: !135, inlinedAt: !10448)
!14575 = !DILocation(line: 292, column: 5, scope: !214, inlinedAt: !10447)
!14576 = !DILocation(line: 284, column: 5, scope: !214, inlinedAt: !10447)
!14577 = !DILocation(line: 289, column: 56, scope: !215, inlinedAt: !10447)
!14578 = !DILocation(line: 377, column: 31, scope: !10113, inlinedAt: !10112)
!14579 = !DILocation(line: 377, column: 5, scope: !10113, inlinedAt: !10112)
!14580 = !DILocation(line: 378, column: 2, scope: !10111, inlinedAt: !10112)
!14581 = !DILocation(line: 367, column: 1, scope: !10111, inlinedAt: !10112)
!14582 = !DILocation(line: 526, column: 13, scope: !8087)
!14583 = !DILocation(line: 175, column: 9, scope: !10453, inlinedAt: !10454)
!14584 = !DILocation(line: 217, column: 9, scope: !10459, inlinedAt: !10463)
!14585 = !DILocation(line: 215, column: 1, scope: !10453, inlinedAt: !10454)
!14586 = !DILocation(line: 217, column: 36, scope: !10459, inlinedAt: !10463)
!14587 = !DILocation(line: 1231, column: 15, scope: !216, inlinedAt: !10467)
!14588 = !DILocation(line: 1231, column: 9, scope: !216, inlinedAt: !10467)
!14589 = !DILocation(line: 1233, column: 17, scope: !216, inlinedAt: !10467)
!14590 = !DILocation(line: 1233, column: 23, scope: !217, inlinedAt: !10467)
!14591 = !DILocation(line: 1233, column: 86, scope: !216, inlinedAt: !10467)
!14592 = !DILocation(line: 1227, column: 5, scope: !216, inlinedAt: !10467)
!14593 = !DILocation(line: 1232, column: 16, scope: !216, inlinedAt: !10467)
!14594 = !DILocation(line: 217, column: 43, scope: !10459, inlinedAt: !10463)
!14595 = !DILocation(line: 178, column: 9, scope: !10468, inlinedAt: !10454)
!14596 = !DILocation(line: 178, column: 24, scope: !10468, inlinedAt: !10454)
!14597 = !DILocation(line: 179, column: 9, scope: !10469, inlinedAt: !10454)
!14598 = !DILocation(line: 179, column: 23, scope: !10469, inlinedAt: !10454)
!14599 = !DILocation(line: 178, column: 63, scope: !10468, inlinedAt: !10454)
!14600 = !DILocation(line: 215, column: 1, scope: !10468, inlinedAt: !10454)
!14601 = !DILocation(line: 180, column: 9, scope: !10470, inlinedAt: !10454)
!14602 = !DILocation(line: 464, column: 9, scope: !10471, inlinedAt: !10472)
!14603 = !DILocation(line: 1717, column: 9, scope: !10473, inlinedAt: !10483)
!14604 = !DILocation(line: 25, column: 86, scope: !10475, inlinedAt: !10482)
!14605 = !DILocation(line: 205, column: 5, scope: !10479, inlinedAt: !10454)
!14606 = !DILocation(line: 560, column: 8, scope: !416, inlinedAt: !10484)
!14607 = !DILocation(line: 28, column: 9, scope: !10487, inlinedAt: !10482)
!14608 = !DILocation(line: 175, column: 23, scope: !10453, inlinedAt: !10454)
!14609 = !DILocation(line: 659, column: 28, scope: !10488, inlinedAt: !10490)
!14610 = !DILocation(line: 279, column: 27, scope: !10489, inlinedAt: !10482)
!14611 = !DILocation(line: 183, column: 36, scope: !10500, inlinedAt: !10505)
!14612 = !DILocation(line: 183, column: 30, scope: !10500, inlinedAt: !10505)
!14613 = !DILocation(line: 183, column: 19, scope: !10499, inlinedAt: !10505)
!14614 = !DILocation(line: 1037, column: 19, scope: !218, inlinedAt: !10511)
!14615 = !DILocation(line: 619, column: 49, scope: !219, inlinedAt: !10513)
!14616 = !DILocation(line: 1040, column: 12, scope: !221, inlinedAt: !10511)
!14617 = !DILocation(line: 1041, column: 22, scope: !221, inlinedAt: !10511)
!14618 = !DILocation(line: 614, column: 9, scope: !222, inlinedAt: !10517)
!14619 = !DILocation(line: 961, column: 18, scope: !226, inlinedAt: !10518)
!14620 = !DILocation(line: 1921, column: 41, scope: !227, inlinedAt: !10520)
!14621 = !DILocation(line: 1046, column: 13, scope: !228, inlinedAt: !10511)
!14622 = !DILocation(line: 64, column: 12, scope: !10521, inlinedAt: !10524)
!14623 = !DILocation(line: 64, column: 40, scope: !10521, inlinedAt: !10524)
!14624 = !DILocation(line: 185, column: 30, scope: !10525, inlinedAt: !10505)
!14625 = !DILocation(line: 614, column: 9, scope: !10526, inlinedAt: !10537)
!14626 = !DILocation(line: 1841, column: 86, scope: !10530, inlinedAt: !10533)
!14627 = !DILocation(line: 961, column: 18, scope: !10538, inlinedAt: !10545)
!14628 = !DILocation(line: 27, column: 14, scope: !10546, inlinedAt: !10549)
!14629 = !DILocation(line: 64, column: 12, scope: !10521, inlinedAt: !10551)
!14630 = !DILocation(line: 64, column: 40, scope: !10521, inlinedAt: !10551)
!14631 = !DILocation(line: 201, column: 30, scope: !10500, inlinedAt: !10505)
!14632 = !DILocation(line: 200, column: 18, scope: !10500, inlinedAt: !10505)
!14633 = !DILocation(line: 64, column: 12, scope: !10521, inlinedAt: !10553)
!14634 = !DILocation(line: 64, column: 40, scope: !10521, inlinedAt: !10553)
!14635 = !DILocation(line: 65, column: 18, scope: !10521, inlinedAt: !10553)
!14636 = !DILocation(line: 107, column: 36, scope: !229, inlinedAt: !10556)
!14637 = !DILocation(line: 108, column: 9, scope: !229, inlinedAt: !10556)
!14638 = !DILocation(line: 88, column: 23, scope: !10522, inlinedAt: !10552)
!14639 = !DILocation(line: 107, column: 9, scope: !229, inlinedAt: !10556)
!14640 = !DILocation(line: 3799, column: 22, scope: !230, inlinedAt: !10557)
!14641 = !DILocation(line: 109, column: 12, scope: !229, inlinedAt: !10556)
!14642 = !DILocation(line: 3024, column: 19, scope: !231, inlinedAt: !10559)
!14643 = !DILocation(line: 3029, column: 37, scope: !233, inlinedAt: !10559)
!14644 = !DILocation(line: 3029, column: 18, scope: !233, inlinedAt: !10559)
!14645 = !DILocation(line: 614, column: 9, scope: !234, inlinedAt: !10563)
!14646 = !DILocation(line: 961, column: 18, scope: !239, inlinedAt: !10564)
!14647 = !DILocation(line: 552, column: 14, scope: !240, inlinedAt: !10567)
!14648 = !DILocation(line: 99, column: 28, scope: !243, inlinedAt: !10558)
!14649 = !DILocation(line: 2195, column: 9, scope: !244, inlinedAt: !10568)
!14650 = !DILocation(line: 85, column: 20, scope: !245, inlinedAt: !10569)
!14651 = !DILocation(line: 111, column: 13, scope: !229, inlinedAt: !10556)
!14652 = !DILocation(line: 112, column: 13, scope: !229, inlinedAt: !10556)
!14653 = !DILocation(line: 109, column: 9, scope: !229, inlinedAt: !10556)
!14654 = !DILocation(line: 193, column: 25, scope: !10500, inlinedAt: !10505)
!14655 = !DILocation(line: 1841, column: 86, scope: !246, inlinedAt: !10575)
!14656 = !DILocation(line: 282, column: 16, scope: !251, inlinedAt: !10576)
!14657 = !DILocation(line: 234, column: 22, scope: !249, inlinedAt: !10572)
!14658 = !DILocation(line: 619, column: 49, scope: !252, inlinedAt: !10582)
!14659 = !DILocation(line: 1040, column: 12, scope: !255, inlinedAt: !10580)
!14660 = !DILocation(line: 1041, column: 22, scope: !255, inlinedAt: !10580)
!14661 = !DILocation(line: 614, column: 9, scope: !258, inlinedAt: !10586)
!14662 = !DILocation(line: 961, column: 18, scope: !262, inlinedAt: !10587)
!14663 = !DILocation(line: 1921, column: 41, scope: !263, inlinedAt: !10588)
!14664 = !DILocation(line: 1046, column: 13, scope: !264, inlinedAt: !10580)
!14665 = !DILocation(line: 65, column: 18, scope: !10521, inlinedAt: !10524)
!14666 = !DILocation(line: 107, column: 36, scope: !229, inlinedAt: !10591)
!14667 = !DILocation(line: 108, column: 9, scope: !229, inlinedAt: !10591)
!14668 = !DILocation(line: 88, column: 23, scope: !10522, inlinedAt: !10523)
!14669 = !DILocation(line: 107, column: 35, scope: !229, inlinedAt: !10591)
!14670 = !DILocation(line: 107, column: 21, scope: !229, inlinedAt: !10591)
!14671 = !DILocation(line: 107, column: 9, scope: !229, inlinedAt: !10591)
!14672 = !DILocation(line: 3799, column: 22, scope: !230, inlinedAt: !10592)
!14673 = !DILocation(line: 109, column: 12, scope: !229, inlinedAt: !10591)
!14674 = !DILocation(line: 3024, column: 19, scope: !231, inlinedAt: !10594)
!14675 = !DILocation(line: 3029, column: 37, scope: !233, inlinedAt: !10594)
!14676 = !DILocation(line: 3029, column: 18, scope: !233, inlinedAt: !10594)
!14677 = !DILocation(line: 614, column: 9, scope: !234, inlinedAt: !10598)
!14678 = !DILocation(line: 961, column: 18, scope: !239, inlinedAt: !10599)
!14679 = !DILocation(line: 552, column: 14, scope: !240, inlinedAt: !10602)
!14680 = !DILocation(line: 99, column: 28, scope: !243, inlinedAt: !10593)
!14681 = !DILocation(line: 2195, column: 9, scope: !244, inlinedAt: !10603)
!14682 = !DILocation(line: 85, column: 20, scope: !245, inlinedAt: !10604)
!14683 = !DILocation(line: 111, column: 13, scope: !229, inlinedAt: !10591)
!14684 = !DILocation(line: 112, column: 13, scope: !229, inlinedAt: !10591)
!14685 = !DILocation(line: 109, column: 9, scope: !229, inlinedAt: !10591)
!14686 = !DILocation(line: 198, column: 25, scope: !10509, inlinedAt: !10505)
!14687 = !DILocation(line: 1841, column: 86, scope: !265, inlinedAt: !10610)
!14688 = !DILocation(line: 282, column: 16, scope: !271, inlinedAt: !10611)
!14689 = !DILocation(line: 129, column: 30, scope: !272, inlinedAt: !10607)
!14690 = !DILocation(line: 619, column: 49, scope: !252, inlinedAt: !10618)
!14691 = !DILocation(line: 1040, column: 12, scope: !255, inlinedAt: !10616)
!14692 = !DILocation(line: 1041, column: 22, scope: !255, inlinedAt: !10616)
!14693 = !DILocation(line: 614, column: 9, scope: !258, inlinedAt: !10622)
!14694 = !DILocation(line: 105, column: 45, scope: !275, inlinedAt: !10623)
!14695 = !DILocation(line: 961, column: 18, scope: !262, inlinedAt: !10624)
!14696 = !DILocation(line: 1921, column: 41, scope: !263, inlinedAt: !10625)
!14697 = !DILocation(line: 1046, column: 13, scope: !264, inlinedAt: !10616)
!14698 = !DILocation(line: 199, column: 13, scope: !10500, inlinedAt: !10505)
!14699 = !DILocation(line: 65, column: 18, scope: !10521, inlinedAt: !10551)
!14700 = !DILocation(line: 107, column: 36, scope: !229, inlinedAt: !10628)
!14701 = !DILocation(line: 108, column: 9, scope: !229, inlinedAt: !10628)
!14702 = !DILocation(line: 88, column: 23, scope: !10522, inlinedAt: !10550)
!14703 = !DILocation(line: 107, column: 35, scope: !229, inlinedAt: !10628)
!14704 = !DILocation(line: 107, column: 21, scope: !229, inlinedAt: !10628)
!14705 = !DILocation(line: 107, column: 9, scope: !229, inlinedAt: !10628)
!14706 = !DILocation(line: 3799, column: 22, scope: !230, inlinedAt: !10629)
!14707 = !DILocation(line: 109, column: 12, scope: !229, inlinedAt: !10628)
!14708 = !DILocation(line: 3024, column: 19, scope: !231, inlinedAt: !10631)
!14709 = !DILocation(line: 3029, column: 37, scope: !233, inlinedAt: !10631)
!14710 = !DILocation(line: 3029, column: 18, scope: !233, inlinedAt: !10631)
!14711 = !DILocation(line: 614, column: 9, scope: !234, inlinedAt: !10635)
!14712 = !DILocation(line: 961, column: 18, scope: !239, inlinedAt: !10636)
!14713 = !DILocation(line: 552, column: 14, scope: !240, inlinedAt: !10639)
!14714 = !DILocation(line: 99, column: 28, scope: !243, inlinedAt: !10630)
!14715 = !DILocation(line: 2195, column: 9, scope: !244, inlinedAt: !10640)
!14716 = !DILocation(line: 85, column: 20, scope: !245, inlinedAt: !10641)
!14717 = !DILocation(line: 111, column: 13, scope: !229, inlinedAt: !10628)
!14718 = !DILocation(line: 112, column: 13, scope: !229, inlinedAt: !10628)
!14719 = !DILocation(line: 109, column: 9, scope: !229, inlinedAt: !10628)
!14720 = !DILocation(line: 3024, column: 19, scope: !10642, inlinedAt: !10643)
!14721 = !DILocation(line: 3029, column: 37, scope: !10644, inlinedAt: !10643)
!14722 = !DILocation(line: 3029, column: 18, scope: !10644, inlinedAt: !10643)
!14723 = !DILocation(line: 188, column: 22, scope: !10525, inlinedAt: !10505)
!14724 = !DILocation(line: 1841, column: 86, scope: !265, inlinedAt: !10650)
!14725 = !DILocation(line: 282, column: 16, scope: !271, inlinedAt: !10651)
!14726 = !DILocation(line: 129, column: 30, scope: !272, inlinedAt: !10647)
!14727 = !DILocation(line: 619, column: 49, scope: !252, inlinedAt: !10658)
!14728 = !DILocation(line: 1040, column: 12, scope: !255, inlinedAt: !10656)
!14729 = !DILocation(line: 1041, column: 22, scope: !255, inlinedAt: !10656)
!14730 = !DILocation(line: 614, column: 9, scope: !258, inlinedAt: !10662)
!14731 = !DILocation(line: 105, column: 45, scope: !275, inlinedAt: !10663)
!14732 = !DILocation(line: 961, column: 18, scope: !262, inlinedAt: !10664)
!14733 = !DILocation(line: 1921, column: 41, scope: !263, inlinedAt: !10665)
!14734 = !DILocation(line: 1046, column: 13, scope: !264, inlinedAt: !10656)
!14735 = !DILocation(line: 190, column: 13, scope: !10500, inlinedAt: !10505)
!14736 = !DILocation(line: 0, scope: !10453, inlinedAt: !10454)
!14737 = !DILocation(line: 141, column: 17, scope: !10666, inlinedAt: !10503)
!14738 = !DILocation(line: 284, column: 24, scope: !10489, inlinedAt: !10482)
!14739 = !DILocation(line: 0, scope: !10468, inlinedAt: !10454)
!14740 = !DILocation(line: 0, scope: !10469, inlinedAt: !10454)
!14741 = !DILocation(line: 215, column: 1, scope: !10470, inlinedAt: !10454)
!14742 = !DILocation(line: 614, column: 9, scope: !10671, inlinedAt: !10682)
!14743 = !DILocation(line: 1841, column: 86, scope: !10675, inlinedAt: !10678)
!14744 = !DILocation(line: 566, column: 13, scope: !416, inlinedAt: !10484)
!14745 = !DILocation(line: 566, column: 27, scope: !416, inlinedAt: !10484)
!14746 = !DILocation(line: 561, column: 9, scope: !1636, inlinedAt: !10484)
!14747 = !DILocation(line: 659, column: 34, scope: !206, inlinedAt: !10685)
!14748 = !DILocation(line: 561, column: 9, scope: !416, inlinedAt: !10484)
!14749 = !DILocation(line: 778, column: 9, scope: !419, inlinedAt: !10686)
!14750 = !DILocation(line: 571, column: 2, scope: !416, inlinedAt: !10484)
!14751 = !DILocation(line: 2175, column: 17, scope: !10687, inlinedAt: !10688)
!14752 = !DILocation(line: 205, column: 41, scope: !10479, inlinedAt: !10454)
!14753 = !DILocation(line: 0, scope: !12446, inlinedAt: !10454)
!14754 = !DILocation(line: 207, column: 18, scope: !10479, inlinedAt: !10454)
!14755 = !DILocation(line: 207, column: 39, scope: !10479, inlinedAt: !10454)
!14756 = !DILocation(line: 207, column: 45, scope: !10479, inlinedAt: !10454)
!14757 = !DILocation(line: 207, column: 82, scope: !10479, inlinedAt: !10454)
!14758 = !DILocation(line: 2173, column: 15, scope: !10689, inlinedAt: !10690)
!14759 = !DILocation(line: 0, scope: !10689, inlinedAt: !10690)
!14760 = !DILocation(line: 2173, column: 9, scope: !10689, inlinedAt: !10690)
!14761 = !DILocation(line: 2175, column: 17, scope: !10689, inlinedAt: !10690)
!14762 = !DILocation(line: 207, column: 83, scope: !10479, inlinedAt: !10454)
!14763 = !DILocation(line: 210, column: 9, scope: !10691, inlinedAt: !10454)
!14764 = !DILocation(line: 211, column: 9, scope: !10691, inlinedAt: !10454)
!14765 = !DILocation(line: 67, column: 14, scope: !10692, inlinedAt: !10695)
!14766 = !DILocation(line: 117, column: 28, scope: !10696, inlinedAt: !10701)
!14767 = !DILocation(line: 117, column: 9, scope: !10696, inlinedAt: !10701)
!14768 = !DILocation(line: 67, column: 9, scope: !10692, inlinedAt: !10695)
!14769 = !DILocation(line: 67, column: 30, scope: !10692, inlinedAt: !10695)
!14770 = !DILocation(line: 213, column: 9, scope: !10691, inlinedAt: !10454)
!14771 = !DILocation(line: 213, column: 18, scope: !10691, inlinedAt: !10454)
!14772 = !DILocation(line: 213, column: 36, scope: !10691, inlinedAt: !10454)
!14773 = !DILocation(line: 88, column: 9, scope: !10702, inlinedAt: !10703)
!14774 = !DILocation(line: 214, column: 5, scope: !10691, inlinedAt: !10454)
!14775 = !DILocation(line: 88, column: 57, scope: !10702, inlinedAt: !10703)
!14776 = !DILocation(line: 1231, column: 15, scope: !276, inlinedAt: !10707)
!14777 = !DILocation(line: 1231, column: 9, scope: !276, inlinedAt: !10707)
!14778 = !DILocation(line: 1233, column: 17, scope: !276, inlinedAt: !10707)
!14779 = !DILocation(line: 1233, column: 23, scope: !277, inlinedAt: !10707)
!14780 = !DILocation(line: 1233, column: 86, scope: !276, inlinedAt: !10707)
!14781 = !DILocation(line: 1227, column: 5, scope: !276, inlinedAt: !10707)
!14782 = !DILocation(line: 1232, column: 16, scope: !276, inlinedAt: !10707)
!14783 = !DILocation(line: 88, column: 64, scope: !10702, inlinedAt: !10703)
!14784 = !DILocation(line: 215, column: 1, scope: !10469, inlinedAt: !10454)
!14785 = !DILocation(line: 170, column: 1, scope: !10453, inlinedAt: !10454)
!14786 = !DILocation(line: 810, column: 1, scope: !93, inlinedAt: !10710)
!14787 = !DILocation(line: 215, column: 1, scope: !10479, inlinedAt: !10454)
!14788 = !DILocation(line: 2189, column: 23, scope: !10711, inlinedAt: !12454)
!14789 = !DILocation(line: 810, column: 1, scope: !47, inlinedAt: !10712)
!14790 = !DILocation(line: 810, column: 1, scope: !48, inlinedAt: !10713)
!14791 = !DILocation(line: 810, column: 1, scope: !48, inlinedAt: !10714)
!14792 = !DILocation(line: 810, column: 1, scope: !26, inlinedAt: !10716)
!14793 = !DILocation(line: 810, column: 1, scope: !27, inlinedAt: !10717)
!14794 = !DILocation(line: 810, column: 1, scope: !27, inlinedAt: !10718)
!14795 = !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !10720)
!14796 = !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !10721)
!14797 = !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !10722)
!14798 = !DILocation(line: 215, column: 2, scope: !10453, inlinedAt: !10454)
!14799 = !DILocation(line: 528, column: 9, scope: !8087)
!14800 = !DILocation(line: 2175, column: 17, scope: !10723, inlinedAt: !12455)
!14801 = !DILocation(line: 528, column: 10, scope: !8087)
!14802 = !DILocation(line: 2189, column: 23, scope: !10725, inlinedAt: !12457)
!14803 = !DILocation(line: 528, column: 12, scope: !8087)
!14804 = !DILocation(line: 0, scope: !12458)
!14805 = !DILocation(line: 532, column: 13, scope: !8087)
!14806 = !DILocation(line: 223, column: 18, scope: !10733, inlinedAt: !10734)
!14807 = !DILocation(line: 297, column: 1, scope: !10732, inlinedAt: !10734)
!14808 = !DILocation(line: 225, column: 9, scope: !10735, inlinedAt: !10734)
!14809 = !DILocation(line: 407, column: 18, scope: !10736, inlinedAt: !10743)
!14810 = !DILocation(line: 961, column: 18, scope: !10744, inlinedAt: !10745)
!14811 = !DILocation(line: 4814, column: 13, scope: !10749, inlinedAt: !10752)
!14812 = !DILocation(line: 136, column: 30, scope: !278, inlinedAt: !10754)
!14813 = !DILocation(line: 3905, column: 24, scope: !280, inlinedAt: !10757)
!14814 = !DILocation(line: 213, column: 16, scope: !282, inlinedAt: !10755)
!14815 = !DILocation(line: 214, column: 17, scope: !282, inlinedAt: !10755)
!14816 = !DILocation(line: 562, column: 20, scope: !283, inlinedAt: !10758)
!14817 = !DILocation(line: 560, column: 9, scope: !283, inlinedAt: !10758)
!14818 = !DILocation(line: 887, column: 14, scope: !10761, inlinedAt: !10763)
!14819 = !DILocation(line: 3513, column: 18, scope: !284, inlinedAt: !10766)
!14820 = !DILocation(line: 4812, column: 5, scope: !10748, inlinedAt: !10752)
!14821 = !DILocation(line: 4819, column: 9, scope: !10762, inlinedAt: !10752)
!14822 = !DILocation(line: 4820, column: 5, scope: !10749, inlinedAt: !10752)
!14823 = !DILocation(line: 230, column: 9, scope: !10767, inlinedAt: !10734)
!14824 = !DILocation(line: 230, column: 24, scope: !10767, inlinedAt: !10734)
!14825 = !DILocation(line: 3513, column: 43, scope: !284, inlinedAt: !10770)
!14826 = !DILocation(line: 3513, column: 18, scope: !284, inlinedAt: !10770)
!14827 = !DILocation(line: 1717, column: 9, scope: !10771, inlinedAt: !10782)
!14828 = !DILocation(line: 25, column: 86, scope: !10773, inlinedAt: !10781)
!14829 = !DILocation(line: 280, column: 5, scope: !10778, inlinedAt: !10734)
!14830 = !DILocation(line: 560, column: 8, scope: !416, inlinedAt: !10783)
!14831 = !DILocation(line: 28, column: 9, scope: !10786, inlinedAt: !10781)
!14832 = !DILocation(line: 232, column: 9, scope: !10777, inlinedAt: !10734)
!14833 = !DILocation(line: 232, column: 27, scope: !10777, inlinedAt: !10734)
!14834 = !DILocation(line: 0, scope: !10732, inlinedAt: !10734)
!14835 = !DILocation(line: 140, column: 38, scope: !10787, inlinedAt: !10789)
!14836 = !DILocation(line: 659, column: 28, scope: !10790, inlinedAt: !10791)
!14837 = !DILocation(line: 279, column: 27, scope: !10788, inlinedAt: !10781)
!14838 = !DILocation(line: 235, column: 15, scope: !10801, inlinedAt: !10804)
!14839 = !DILocation(line: 235, column: 9, scope: !10801, inlinedAt: !10804)
!14840 = !DILocation(line: 264, column: 30, scope: !10801, inlinedAt: !10804)
!14841 = !DILocation(line: 263, column: 18, scope: !10801, inlinedAt: !10804)
!14842 = !DILocation(line: 1366, column: 29, scope: !10807, inlinedAt: !10812)
!14843 = !DILocation(line: 2171, column: 24, scope: !288, inlinedAt: !10813)
!14844 = !DILocation(line: 3853, column: 12, scope: !10814, inlinedAt: !10818)
!14845 = !DILocation(line: 2439, column: 9, scope: !289, inlinedAt: !10819)
!14846 = !DILocation(line: 57, column: 24, scope: !290, inlinedAt: !10822)
!14847 = !DILocation(line: 1615, column: 9, scope: !7, inlinedAt: !10825)
!14848 = !DILocation(line: 2168, column: 13, scope: !288, inlinedAt: !10813)
!14849 = !DILocation(line: 863, column: 18, scope: !296, inlinedAt: !10826)
!14850 = !DILocation(line: 1366, column: 29, scope: !10807, inlinedAt: !10830)
!14851 = !DILocation(line: 2439, column: 9, scope: !289, inlinedAt: !10832)
!14852 = !DILocation(line: 57, column: 24, scope: !290, inlinedAt: !10835)
!14853 = !DILocation(line: 1615, column: 9, scope: !7, inlinedAt: !10838)
!14854 = !DILocation(line: 863, column: 18, scope: !296, inlinedAt: !10839)
!14855 = !DILocation(line: 2171, column: 24, scope: !288, inlinedAt: !10831)
!14856 = !DILocation(line: 2168, column: 13, scope: !288, inlinedAt: !10831)
!14857 = !DILocation(line: 3703, column: 9, scope: !10840, inlinedAt: !10847)
!14858 = !DILocation(line: 3213, scope: !10842, inlinedAt: !10845)
!14859 = !DILocation(line: 40, column: 32, scope: !10849, inlinedAt: !10853)
!14860 = !DILocation(line: 40, column: 16, scope: !10849, inlinedAt: !10853)
!14861 = !DILocation(line: 3713, column: 16, scope: !10840, inlinedAt: !10847)
!14862 = !DILocation(line: 103, column: 19, scope: !10850, inlinedAt: !10852)
!14863 = !DILocation(line: 500, column: 18, scope: !10854, inlinedAt: !10859)
!14864 = !DILocation(line: 642, column: 21, scope: !10855, inlinedAt: !10858)
!14865 = !DILocation(line: 70, column: 13, scope: !10856, inlinedAt: !10857)
!14866 = !DILocation(line: 28, column: 17, scope: !10860, inlinedAt: !10862)
!14867 = !DILocation(line: 1072, column: 47, scope: !10863, inlinedAt: !10866)
!14868 = !DILocation(line: 1072, column: 22, scope: !10863, inlinedAt: !10866)
!14869 = !DILocation(line: 260, column: 40, scope: !10867, inlinedAt: !10874)
!14870 = !DILocation(line: 1037, column: 19, scope: !218, inlinedAt: !10878)
!14871 = !DILocation(line: 619, column: 49, scope: !219, inlinedAt: !10890)
!14872 = !DILocation(line: 1040, column: 12, scope: !221, inlinedAt: !10878)
!14873 = !DILocation(line: 1041, column: 22, scope: !221, inlinedAt: !10878)
!14874 = !DILocation(line: 614, column: 9, scope: !222, inlinedAt: !10894)
!14875 = !DILocation(line: 961, column: 18, scope: !226, inlinedAt: !10895)
!14876 = !DILocation(line: 1921, column: 41, scope: !227, inlinedAt: !10897)
!14877 = !DILocation(line: 1046, column: 13, scope: !228, inlinedAt: !10878)
!14878 = !DILocation(line: 3710, column: 17, scope: !10871, inlinedAt: !10847)
!14879 = !DILocation(line: 3704, column: 13, scope: !10840, inlinedAt: !10847)
!14880 = !DILocation(line: 57, column: 24, scope: !10898, inlinedAt: !10899)
!14881 = !DILocation(line: 1615, column: 9, scope: !7, inlinedAt: !10905)
!14882 = !DILocation(line: 1072, column: 22, scope: !10863, inlinedAt: !10907)
!14883 = !DILocation(line: 863, column: 18, scope: !10908, inlinedAt: !10909)
!14884 = !DILocation(line: 64, column: 12, scope: !10910, inlinedAt: !10913)
!14885 = !DILocation(line: 64, column: 40, scope: !10910, inlinedAt: !10913)
!14886 = !DILocation(line: 65, column: 18, scope: !10910, inlinedAt: !10913)
!14887 = !DILocation(line: 107, column: 36, scope: !229, inlinedAt: !10916)
!14888 = !DILocation(line: 108, column: 9, scope: !229, inlinedAt: !10916)
!14889 = !DILocation(line: 88, column: 23, scope: !10911, inlinedAt: !10912)
!14890 = !DILocation(line: 107, column: 9, scope: !229, inlinedAt: !10916)
!14891 = !DILocation(line: 3799, column: 22, scope: !230, inlinedAt: !10917)
!14892 = !DILocation(line: 109, column: 12, scope: !229, inlinedAt: !10916)
!14893 = !DILocation(line: 3024, column: 19, scope: !231, inlinedAt: !10919)
!14894 = !DILocation(line: 3029, column: 37, scope: !233, inlinedAt: !10919)
!14895 = !DILocation(line: 3029, column: 18, scope: !233, inlinedAt: !10919)
!14896 = !DILocation(line: 614, column: 9, scope: !234, inlinedAt: !10923)
!14897 = !DILocation(line: 961, column: 18, scope: !239, inlinedAt: !10924)
!14898 = !DILocation(line: 552, column: 14, scope: !240, inlinedAt: !10927)
!14899 = !DILocation(line: 99, column: 28, scope: !243, inlinedAt: !10918)
!14900 = !DILocation(line: 2195, column: 9, scope: !244, inlinedAt: !10928)
!14901 = !DILocation(line: 85, column: 20, scope: !245, inlinedAt: !10929)
!14902 = !DILocation(line: 111, column: 13, scope: !229, inlinedAt: !10916)
!14903 = !DILocation(line: 112, column: 13, scope: !229, inlinedAt: !10916)
!14904 = !DILocation(line: 109, column: 9, scope: !229, inlinedAt: !10916)
!14905 = !DILocation(line: 40, column: 32, scope: !298, inlinedAt: !10932)
!14906 = !DILocation(line: 40, column: 16, scope: !298, inlinedAt: !10932)
!14907 = !DILocation(line: 3663, column: 58, scope: !300, inlinedAt: !10930)
!14908 = !DILocation(line: 57, column: 24, scope: !302, inlinedAt: !10935)
!14909 = !DILocation(line: 1615, column: 9, scope: !7, inlinedAt: !10938)
!14910 = !DILocation(line: 1072, column: 22, scope: !306, inlinedAt: !10940)
!14911 = !DILocation(line: 863, column: 18, scope: !308, inlinedAt: !10941)
!14912 = !DILocation(line: 103, column: 19, scope: !299, inlinedAt: !10931)
!14913 = !DILocation(line: 238, column: 56, scope: !10810, inlinedAt: !10804)
!14914 = !DILocation(line: 500, column: 18, scope: !309, inlinedAt: !10944)
!14915 = !DILocation(line: 642, column: 21, scope: !310, inlinedAt: !10943)
!14916 = !DILocation(line: 70, column: 13, scope: !311, inlinedAt: !10942)
!14917 = !DILocation(line: 28, column: 17, scope: !312, inlinedAt: !10945)
!14918 = !DILocation(line: 1072, column: 47, scope: !306, inlinedAt: !10947)
!14919 = !DILocation(line: 1072, column: 22, scope: !306, inlinedAt: !10947)
!14920 = !DILocation(line: 3863, column: 9, scope: !10948, inlinedAt: !10818)
!14921 = !DILocation(line: 1072, column: 22, scope: !10949, inlinedAt: !10955)
!14922 = !DILocation(line: 238, column: 23, scope: !10816, inlinedAt: !10804)
!14923 = !DILocation(line: 238, column: 37, scope: !10816, inlinedAt: !10804)
!14924 = !DILocation(line: 239, column: 38, scope: !10957, inlinedAt: !10804)
!14925 = !DILocation(line: 604, column: 15, scope: !10958, inlinedAt: !10959)
!14926 = !DILocation(line: 604, column: 9, scope: !10958, inlinedAt: !10959)
!14927 = !DILocation(line: 0, scope: !10809, inlinedAt: !10804)
!14928 = !DILocation(line: 64, column: 12, scope: !10910, inlinedAt: !10961)
!14929 = !DILocation(line: 64, column: 40, scope: !10910, inlinedAt: !10961)
!14930 = !DILocation(line: 65, column: 18, scope: !10910, inlinedAt: !10961)
!14931 = !DILocation(line: 107, column: 36, scope: !229, inlinedAt: !10964)
!14932 = !DILocation(line: 108, column: 9, scope: !229, inlinedAt: !10964)
!14933 = !DILocation(line: 88, column: 23, scope: !10911, inlinedAt: !10960)
!14934 = !DILocation(line: 107, column: 35, scope: !229, inlinedAt: !10964)
!14935 = !DILocation(line: 107, column: 21, scope: !229, inlinedAt: !10964)
!14936 = !DILocation(line: 107, column: 9, scope: !229, inlinedAt: !10964)
!14937 = !DILocation(line: 3799, column: 22, scope: !230, inlinedAt: !10965)
!14938 = !DILocation(line: 109, column: 12, scope: !229, inlinedAt: !10964)
!14939 = !DILocation(line: 3024, column: 19, scope: !231, inlinedAt: !10967)
!14940 = !DILocation(line: 3029, column: 37, scope: !233, inlinedAt: !10967)
!14941 = !DILocation(line: 3029, column: 18, scope: !233, inlinedAt: !10967)
!14942 = !DILocation(line: 614, column: 9, scope: !234, inlinedAt: !10971)
!14943 = !DILocation(line: 961, column: 18, scope: !239, inlinedAt: !10972)
!14944 = !DILocation(line: 552, column: 14, scope: !240, inlinedAt: !10975)
!14945 = !DILocation(line: 99, column: 28, scope: !243, inlinedAt: !10966)
!14946 = !DILocation(line: 2195, column: 9, scope: !244, inlinedAt: !10976)
!14947 = !DILocation(line: 85, column: 20, scope: !245, inlinedAt: !10977)
!14948 = !DILocation(line: 111, column: 13, scope: !229, inlinedAt: !10964)
!14949 = !DILocation(line: 112, column: 13, scope: !229, inlinedAt: !10964)
!14950 = !DILocation(line: 109, column: 9, scope: !229, inlinedAt: !10964)
!14951 = !DILocation(line: 249, column: 32, scope: !10810, inlinedAt: !10804)
!14952 = !DILocation(line: 392, column: 15, scope: !10978, inlinedAt: !10979)
!14953 = !DILocation(line: 0, scope: !10978, inlinedAt: !10979)
!14954 = !DILocation(line: 392, column: 9, scope: !10978, inlinedAt: !10979)
!14955 = !DILocation(line: 3029, column: 37, scope: !10981, inlinedAt: !10985)
!14956 = !DILocation(line: 3029, column: 18, scope: !10981, inlinedAt: !10985)
!14957 = !DILocation(line: 394, column: 41, scope: !10978, inlinedAt: !10979)
!14958 = !DILocation(line: 249, column: 20, scope: !10810, inlinedAt: !10804)
!14959 = !DILocation(line: 272, column: 23, scope: !10986, inlinedAt: !10987)
!14960 = !DILocation(line: 272, column: 28, scope: !10986, inlinedAt: !10987)
!14961 = !DILocation(line: 272, column: 9, scope: !10986, inlinedAt: !10987)
!14962 = !DILocation(line: 272, column: 35, scope: !10986, inlinedAt: !10987)
!14963 = !DILocation(line: 250, column: 21, scope: !10988, inlinedAt: !10804)
!14964 = !DILocation(line: 43, column: 9, scope: !314, inlinedAt: !10991)
!14965 = !DILocation(line: 43, column: 15, scope: !314, inlinedAt: !10991)
!14966 = !DILocation(line: 250, column: 30, scope: !10810, inlinedAt: !10804)
!14967 = !DILocation(line: 1717, column: 9, scope: !315, inlinedAt: !10993)
!14968 = !DILocation(line: 180, column: 28, scope: !318, inlinedAt: !10992)
!14969 = !DILocation(line: 3851, column: 12, scope: !321, inlinedAt: !10995)
!14970 = !DILocation(line: 50, column: 32, scope: !325, inlinedAt: !10998)
!14971 = !DILocation(line: 50, column: 16, scope: !325, inlinedAt: !10998)
!14972 = !DILocation(line: 3666, column: 54, scope: !327, inlinedAt: !10996)
!14973 = !DILocation(line: 61, column: 15, scope: !329, inlinedAt: !11003)
!14974 = !DILocation(line: 1615, column: 9, scope: !7, inlinedAt: !11006)
end_hunk_3
